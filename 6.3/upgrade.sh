#! /bin/ksh

HOST=cloudflare.cdn.openbsd.org
VERSION=6.3

ARCH=$(uname -m)
VERS=$(echo $VERSION | sed -e "s/\.//g")

UPDATE_DIR=/tmp/update
REMOTE_DIR=https://$HOST/pub/OpenBSD/$VERSION/$ARCH

export TMPDIR=$UPDATE_DIR/tar
function download {
	if ! [[ -e ${UPDATE_DIR}/$1 ]]; then
		ftp -Vo _$1 ${REMOTE_DIR}/$1
		mv _$1 $1
	else
		echo "$1: Cached"
	fi
}

function install {
	echo "- Installing $1"
	tar -C / -xzephmf $1${VERS}.tgz

	if [[ $? -ne 0 ]]; then
		echo "x Failed Installing $1${VERS}.tgz"
		exit 1
	fi
}

if [ $(id -u) != 0 ]; then
	echo "Requires Root"
	exit 1
fi

mkdir -p ${UPDATE_DIR}
cp after_boot.sh ${UPDATE_DIR}/after_boot.sh
cp cleanup.sh ${UPDATE_DIR}/cleanup.sh

CWD=$(pwd)

cd ${UPDATE_DIR}

echo "Fetching Components:"
download "bsd.mp"
download "bsd"
download "bsd.rd"

download "base${VERS}.tgz"
download "man${VERS}.tgz"
download "comp${VERS}.tgz"
#download "game${VERS}.tgz"

download "xbase${VERS}.tgz"
download "xshare${VERS}.tgz"
#download "xserv${VERS}.tgz"
#download "xfont${VERS}.tgz"

download "SHA256"
download "SHA256.sig"

echo ""
signify -Cp /etc/signify/openbsd-${VERS}-base.pub -x SHA256.sig bsd bsd.mp bsd.rd *${VERS}.tgz

if [[ $? -ne 0 ]]; then
	echo "Signify failed"
	exit 1
fi


echo "\nPrepare Userland:"

echo "- Removing old man pages"
rm -rf /usr/share/man
rm -rf /usr/X11R6/man

echo "- Removing old linking files"
rm -rf /usr/share/compile

echo "- Removing optional directories"
rm -rf /usr/X11R6/*
rm -rf /usr/share/games
rm -rf /usr/games
rm -rf /var/games

# 6.1 -> 6.2
echo "- Changing group on atjobs"
chgrp -R crontab /var/cron/atjobs

echo "- Backing up reboot as oreboot"
cp /sbin/reboot /sbin/oreboot


echo "\nInstall New Kernel:"
mv bsd bsd.sp

echo "- Installing boot blocks"
installboot sd0
ln -f /bsd /obsd

if [[ `sysctl -n hw.ncpu` > 1 ]]; then
	echo "- Installing Multi-Processor Kernel"
	cp bsd.mp /nbsd
else
	echo "- Installing Single-Processor Kernel"
	cp bsd.sp /nbsd
fi
mv /nbsd /bsd

cp bsd.rd /
cp bsd.sp /bsd.sp
cp bsd.mp /bsd.mp


echo "\nEnable KARL:"
sha256 -h /var/db/kernel.SHA256 /bsd
if [[ $? == 0 ]]; then
	echo " - Success"
else
	echo " - Failed"
fi

echo "\nInstall Userland:"

install "xbase"
install "xshare"
#install "xserve"
#install "xfont"

install "man"
install "comp"
#install "game"

install "base"			# Must be last

echo "Removing Old Kernel:"
rm /obsd

echo "Updating Devices:"
cd /dev
./MAKEDEV all

cd $CWD
cp after_boot.sh /etc/rc.firsttime
oreboot
