#! /bin/ksh

if [ $(id -u) != 0 ]; then
	echo "Requires Root"
	exit 1
fi

CWD=$(pwd)

echo "Install Bootloader"
installboot sd0

echo "Patching System:"
echo " - syspatch"
syspatch
echo " - fw_update"
fw_update

echo "Updating Packages:"
pkg_add -u
pkg_delete -aa
pkg_delete -a

echo "Cleanup"
rm -f /sbin/oreboot
rm -rf /tmp/update
rm -f /etc/signify/mtier-60-pkg.pub

echo "\nPlease run the \`cleanup.sh\` script and then restart."
cd $CWD
