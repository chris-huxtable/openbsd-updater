#! /bin/sh

function clean {
	if [ -f "$1" ] ; then
		echo "Deleting File:      $1"
		rm "$1"
	elif [ -d "$1" ]; then
		echo "Deleting Directory: $1"
		rm -r "$1"
	else
		echo "Missing:            $1"
	fi
}

echo
echo "Directories:"
clean "/usr/include/g++/amd64-unknown-openbsd6.0/"
clean "/usr/include/g++/amd64-unknown-openbsd6.1/"
clean "/usr/include/g++/amd64-unknown-openbsd6.2/"
clean "/usr/lib/clang/4.0.0/"
clean "/usr/lib/gcc-lib/amd64-unknown-openbsd6.0/"
clean "/usr/lib/gcc-lib/amd64-unknown-openbsd6.1/"
clean "/usr/lib/gcc-lib/amd64-unknown-openbsd6.2/"
clean "/usr/libdata/perl5/CGI"
clean "/usr/libdata/perl5/Module/Build/"
clean "/usr/libdata/perl5/amd64-openbsd/5.20.3/"
clean "/usr/libdata/perl5/site_perl/"
clean "/usr/share/compile/"

echo
echo "Paths:"
clean "/bsd.syspatch61"
clean "/usr/X11R6/bin/koi8rxterm"
clean "/usr/X11R6/bin/uxterm"
clean "/usr/X11R6/bin/xdm"
clean "/usr/X11R6/include/GL/wglext.h"
clean "/usr/X11R6/lib/libEGL.so.1.0"
clean "/usr/X11R6/lib/libGL.so.17.0"
clean "/usr/X11R6/lib/libGLESv2.so.1.1"
clean "/usr/X11R6/lib/libOSMesa.so.10.0"
clean "/usr/X11R6/lib/libOSMesa.so.10.1"
clean "/usr/X11R6/lib/libXRes.so.5.0"
clean "/usr/X11R6/lib/libdrm.so.7.1"
clean "/usr/X11R6/lib/libdrm.so.7.4"
clean "/usr/X11R6/lib/libdrm.so.7.5"
clean "/usr/X11R6/lib/libdrm_amdgpu.so.1.1"
clean "/usr/X11R6/lib/libdrm_amdgpu.so.1.2"
clean "/usr/X11R6/lib/libdrm_amdgpu.so.1.4"
clean "/usr/X11R6/lib/libdrm_intel.so.5.1"
clean "/usr/X11R6/lib/libfontconfig.so.10.0"
clean "/usr/X11R6/lib/libfreetype.so.25.0"
clean "/usr/X11R6/lib/libfreetype.so.28.0"
clean "/usr/X11R6/lib/libfreetype.so.28.1"
clean "/usr/X11R6/lib/libgbm.so.0.0"
clean "/usr/X11R6/lib/libgbm.so.0.1"
clean "/usr/X11R6/lib/libpthread-stubs.a"
clean "/usr/X11R6/lib/libpthread-stubs.so.2.0"
clean "/usr/X11R6/lib/libxcb-glx.so.1.0"
clean "/usr/X11R6/lib/libxcb-present.so.0.0"
clean "/usr/X11R6/lib/libxcb-randr.so.2.1"
clean "/usr/X11R6/lib/libxcb-record.so.1.0"
clean "/usr/X11R6/lib/libxcb-render.so.1.0"
clean "/usr/X11R6/lib/libxcb-screensaver.so.1.0"
clean "/usr/X11R6/lib/libxcb-shape.so.1.0"
clean "/usr/X11R6/lib/libxcb-sync.so.1.1"
clean "/usr/X11R6/lib/libxcb-xfixes.so.1.1"
clean "/usr/X11R6/lib/libxcb-xkb.so.0.0"
clean "/usr/X11R6/lib/libxcb-xprint.so.2.0"
clean "/usr/X11R6/lib/libxcb-xv.so.1.0"
clean "/usr/X11R6/lib/libxcb.so.3.2"
clean "/usr/X11R6/lib/pkgconfig/pthread-stubs.pc"
clean "/usr/X11R6/share/X11/app-defaults/KOI8RXTerm"
clean "/usr/X11R6/share/X11/app-defaults/UXTerm"
clean "/usr/X11R6/share/X11/xorg.conf.d/50-synaptics.conf"
clean "/usr/X11R6/share/mk/automake.dep"
clean "/usr/bin/a2p"
clean "/usr/bin/config_data"
clean "/usr/bin/find2perl"
clean "/usr/bin/perl5.20.3"
clean "/usr/bin/psed"
clean "/usr/bin/s2p"
clean "/usr/bin/sqlite3"
clean "/usr/include/dev/i2c/wm8750reg.h"
clean "/usr/include/dev/ic/bhareg.h"
clean "/usr/include/dev/ic/bhavar.h"
clean "/usr/include/dev/ic/mc68681reg.h"
clean "/usr/include/dev/ic/mc68681var.h"
clean "/usr/include/dev/ic/z8536reg.h"
clean "/usr/include/dev/isa/ahareg.h"
clean "/usr/include/dev/isa/wssreg.h"
clean "/usr/include/dev/isa/wssvar.h"
clean "/usr/include/dev/isa/ymvar.h"
clean "/usr/include/dev/pci/vioblkreg.h"
clean "/usr/include/dev/pci/vioscsireg.h"
clean "/usr/include/dev/pci/virtioreg.h"
clean "/usr/include/dev/pci/virtiovar.h"
clean "/usr/include/dev/pcmcia/if_cnwreg.h"
clean "/usr/include/dev/pv/rndisreg.h"
clean "/usr/include/dev/usb/usbf.h"
clean "/usr/include/dev/usb/usbfvar.h"
clean "/usr/include/dev/wsfont/lucida16x29.h"
clean "/usr/include/dev/wsfont/omron12x20.h"
clean "/usr/include/dev/wsfont/qvss8x15.h"
clean "/usr/include/dev/wsfont/sony12x24.h"
clean "/usr/include/dev/wsfont/sony8x16.h"
clean "/usr/include/dev/wsfont/vt220l8x10.h"
clean "/usr/include/dev/wsfont/vt220l8x8.h"
clean "/usr/include/g++/FlexLexer.h"
clean "/usr/include/net/radix_mpath.h"
clean "/usr/include/net/slip.h"
clean "/usr/include/netinet/pim.h"
clean "/usr/include/netinet/pim_var.h"
clean "/usr/include/netinet/tcpip.h"
clean "/usr/include/netinet6/pim6.h"
clean "/usr/include/netinet6/pim6_var.h"
clean "/usr/include/netinet6/tcpipv6.h"
clean "/usr/include/openssl/cms.h"
clean "/usr/include/openssl/krb5_asn.h"
clean "/usr/include/sqlite3.h"
clean "/usr/include/sqlite3ext.h"
clean "/usr/include/struct.h"
clean "/usr/include/sys/dkbad.h"
clean "/usr/include/sys/kgdb.h"
clean "/usr/include/sys/scanio.h"
clean "/usr/lib/libc.so.88.0"
clean "/usr/lib/libc.so.88.0.a"
clean "/usr/lib/libc.so.89.2"
clean "/usr/lib/libc.so.89.2.a"
clean "/usr/lib/libc.so.89.3"
clean "/usr/lib/libc.so.89.3.a"
clean "/usr/lib/libc.so.90.0"
clean "/usr/lib/libc.so.90.0.a"
clean "/usr/lib/libcrypto.so.38.0"
clean "/usr/lib/libcrypto.so.41.1"
clean "/usr/lib/libcrypto.so.42.0"
clean "/usr/lib/libcrypto.so.42.0.a"
clean "/usr/lib/libexpat.so.11.0"
clean "/usr/lib/libfuse.so.1.1"
clean "/usr/lib/libkvm.so.16.1"
clean "/usr/lib/libkvm.so.16.2"
clean "/usr/lib/libm.so.10.0"
clean "/usr/lib/libm.so.9.0"
clean "/usr/lib/libobjc.a"
clean "/usr/lib/libobjc.so.6.0"
clean "/usr/lib/libobjc_p.a"
clean "/usr/lib/libpcap.so.8.1"
clean "/usr/lib/libperl.so.17.1"
clean "/usr/lib/libperl.so.18.0"
clean "/usr/lib/libpthread.so.22.0"
clean "/usr/lib/libpthread.so.23.0"
clean "/usr/lib/libpthread.so.24.0"
clean "/usr/lib/libsndio.so.6.1"
clean "/usr/lib/libsqlite3.a"
clean "/usr/lib/libsqlite3.so.32.0"
clean "/usr/lib/libsqlite3_p.a"
clean "/usr/lib/libssl.so.39.0"
clean "/usr/lib/libssl.so.43.2"
clean "/usr/lib/libssl.so.44.1"
clean "/usr/lib/libtls.so.11.0"
clean "/usr/lib/libtls.so.15.4"
clean "/usr/lib/libtls.so.16.1"
clean "/usr/lib/libutil.so.12.1"
clean "/usr/lib/libutil.so.12.2"
clean "/usr/lib/pkgconfig/sqlite3.pc"
clean "/usr/libdata/ld.so.a"
clean "/usr/libdata/perl5/Locale/Codes/Constants.pod"
clean "/usr/libdata/perl5/Module/Build.pm"
clean "/usr/libdata/perl5/OpenBSD/signify.pm"
clean "/usr/libdata/perl5/OpenBSD/x509.pm"
clean "/usr/libdata/perl5/Package/Constants.pm"
clean "/usr/libdata/perl5/inc/latest.pm"
clean "/usr/libdata/perl5/inc/latest/private.pm"
clean "/usr/libdata/perl5/pod/a2p.pod"
clean "/usr/libdata/perl5/unicore/lib/Gc/Lt.pl"
clean "/usr/libdata/perl5/unicore/lib/Hyphen/Y.pl"
clean "/usr/libdata/perl5/unicore/lib/LOE/Y.pl"
clean "/usr/libdata/perl5/unicore/lib/NChar/Y.pl"
clean "/usr/libdata/perl5/unicore/lib/PatWS/Y.pl"
clean "/usr/libdata/perl5/unicore/lib/Perl/_XExtend.pl"
clean "/usr/libdata/perl5/unicore/lib/Perl/_XRegula.pl"
clean "/usr/libdata/perl5/unicore/lib/Perl/_XSpecia.pl"
clean "/usr/libdata/perl5/unicore/lib/Space/Y.pl"
clean "/usr/libdata/perl5/version/vpp.pm"
clean "/usr/libexec/locate.concatdb"
clean "/usr/share/misc/ascii"
clean "/usr/share/misc/eqnchar"
clean "/usr/share/misc/getopt"
clean "/usr/share/misc/operator"
clean "/usr/share/zoneinfo/Asia/Riyadh87"
clean "/usr/share/zoneinfo/Asia/Riyadh88"
clean "/usr/share/zoneinfo/Asia/Riyadh89"
clean "/usr/share/zoneinfo/Canada/East-Saskatchewan"
clean "/usr/share/zoneinfo/Mideast/Riyadh87"
clean "/usr/share/zoneinfo/Mideast/Riyadh88"
clean "/usr/share/zoneinfo/Mideast/Riyadh89"
clean "/usr/share/zoneinfo/posix/Asia/Riyadh87"
clean "/usr/share/zoneinfo/posix/Asia/Riyadh88"
clean "/usr/share/zoneinfo/posix/Asia/Riyadh89"
clean "/usr/share/zoneinfo/posix/Canada/East-Saskatchewan"
clean "/usr/share/zoneinfo/posix/Mideast/Riyadh87"
clean "/usr/share/zoneinfo/posix/Mideast/Riyadh88"
clean "/usr/share/zoneinfo/posix/Mideast/Riyadh89"
clean "/usr/share/zoneinfo/right/Asia/Riyadh87"
clean "/usr/share/zoneinfo/right/Asia/Riyadh88"
clean "/usr/share/zoneinfo/right/Asia/Riyadh89"
clean "/usr/share/zoneinfo/right/Canada/East-Saskatchewan"
clean "/usr/share/zoneinfo/right/Mideast/Riyadh87"
clean "/usr/share/zoneinfo/right/Mideast/Riyadh88"
clean "/usr/share/zoneinfo/right/Mideast/Riyadh89"
clean "/var/syspatch/61-001_dhcpd/001_dhcpd.patch.sig"
clean "/var/syspatch/61-001_dhcpd/rollback.tgz"
clean "/var/syspatch/61-002_vmmfpu/002_vmmfpu.patch.sig"
clean "/var/syspatch/61-002_vmmfpu/rollback.tgz"
clean "/var/syspatch/61-003_libressl/003_libressl.patch.sig"
clean "/var/syspatch/61-003_libressl/rollback.tgz"
clean "/var/syspatch/61-004_softraid_concat/004_softraid_concat.patch.sig"
clean "/var/syspatch/61-004_softraid_concat/rollback.tgz"
clean "/var/syspatch/61-005_pf_src_tracking/005_pf_src_tracking.patch.sig"
clean "/var/syspatch/61-005_pf_src_tracking/rollback.tgz"
clean "/var/syspatch/61-006_libssl/006_libssl.patch.sig"
clean "/var/syspatch/61-006_libssl/rollback.tgz"
clean "/var/syspatch/61-007_freetype/007_freetype.patch.sig"
clean "/var/syspatch/61-007_freetype/rollback.tgz"
clean "/var/syspatch/61-008_exec_subr/008_exec_subr.patch.sig"
clean "/var/syspatch/61-008_exec_subr/rollback.tgz"
clean "/var/syspatch/61-009_icmp_opts/009_icmp_opts.patch.sig"
clean "/var/syspatch/61-009_icmp_opts/rollback.tgz"
clean "/var/syspatch/61-010_perl/010_perl.patch.sig"
clean "/var/syspatch/61-010_perl/rollback.tgz"
clean "/var/syspatch/61-012_wsmux/012_wsmux.patch.sig"
clean "/var/syspatch/61-012_wsmux/rollback.tgz"
clean "/var/syspatch/61-013_icmp6_linklocal/013_icmp6_linklocal.patch.sig"
clean "/var/syspatch/61-013_icmp6_linklocal/rollback.tgz"
clean "/var/syspatch/61-014_libcrypto/014_libcrypto.patch.sig"
clean "/var/syspatch/61-014_libcrypto/rollback.tgz"
clean "/var/syspatch/61-015_sigio/015_sigio.patch.sig"
clean "/var/syspatch/61-015_sigio/rollback.tgz"
clean "/var/syspatch/61-016_sendsyslog/016_sendsyslog.patch.sig"
clean "/var/syspatch/61-016_sendsyslog/rollback.tgz"
clean "/var/syspatch/61-017_fuse/017_fuse.patch.sig"
clean "/var/syspatch/61-017_fuse/rollback.tgz"
clean "/var/syspatch/61-018_recv/018_recv.patch.sig"
clean "/var/syspatch/61-018_recv/rollback.tgz"
clean "/var/syspatch/61-019_tcp_usrreq/019_tcp_usrreq.patch.sig"
clean "/var/syspatch/61-019_tcp_usrreq/rollback.tgz"
clean "/var/syspatch/61-020_sockaddr/020_sockaddr.patch.sig"
clean "/var/syspatch/61-020_sockaddr/rollback.tgz"
clean "/var/syspatch/61-021_ptrace/021_ptrace.patch.sig"
clean "/var/syspatch/61-021_ptrace/rollback.tgz"
clean "/var/syspatch/61-022_fcntl/022_fcntl.patch.sig"
clean "/var/syspatch/61-022_fcntl/rollback.tgz"
clean "/var/syspatch/61-023_wsdisplay/023_wsdisplay.patch.sig"
clean "/var/syspatch/61-023_wsdisplay/rollback.tgz"
clean "/var/syspatch/61-024_sosplice/024_sosplice.patch.sig"
clean "/var/syspatch/61-024_sosplice/rollback.tgz"
clean "/var/syspatch/61-025_ieee80211/025_ieee80211.patch.sig"
clean "/var/syspatch/61-025_ieee80211/rollback.tgz"
clean "/var/syspatch/61-026_smap/026_smap.patch.sig"
clean "/var/syspatch/61-026_smap/rollback.tgz"
clean "/var/syspatch/61-027_net80211_replay/027_net80211_replay.patch.sig"
clean "/var/syspatch/61-027_net80211_replay/rollback.tgz"
clean "/var/syspatch/61-028_perl/028_perl.patch.sig"
clean "/var/syspatch/61-028_perl/rollback.tgz"
clean "/var/syspatch/61-029_tcb/029_tcb.patch.sig"
clean "/var/syspatch/61-029_tcb/rollback.tgz"
clean "/var/syspatch/61-030_xrstor/030_xrstor.patch.sig"
clean "/var/syspatch/61-030_xrstor/rollback.tgz"
clean "/var/syspatch/61-031_xrstor_resume/031_xrstor_resume.patch.sig"
clean "/var/syspatch/61-031_xrstor_resume/rollback.tgz"
clean "/var/syspatch/62-001_tcb_invalid/001_tcb_invalid.patch.sig"
clean "/var/syspatch/62-001_tcb_invalid/rollback.tgz"
clean "/var/syspatch/62-002_fktrace/002_fktrace.patch.sig"
clean "/var/syspatch/62-002_fktrace/rollback.tgz"
clean "/var/syspatch/62-003_mpls/003_mpls.patch.sig"
clean "/var/syspatch/62-003_mpls/rollback.tgz"
clean "/var/syspatch/62-004_libssl/004_libssl.patch.sig"
clean "/var/syspatch/62-004_libssl/rollback.tgz"
clean "/var/syspatch/62-005_ahopts/005_ahopts.patch.sig"
clean "/var/syspatch/62-005_ahopts/rollback.tgz"
clean "/var/syspatch/62-006_prevhdr/006_prevhdr.patch.sig"
clean "/var/syspatch/62-006_prevhdr/rollback.tgz"
clean "/var/syspatch/62-007_etherip/007_etherip.patch.sig"
clean "/var/syspatch/62-007_etherip/rollback.tgz"
clean "/var/syspatch/62-008_unbound/008_unbound.patch.sig"
clean "/var/syspatch/62-008_unbound/rollback.tgz"
clean "/var/syspatch/62-009_meltdown/009_meltdown.patch.sig"
clean "/var/syspatch/62-009_meltdown/rollback.tgz"
clean "/var/syspatch/62-010_ahauth/010_ahauth.patch.sig"
clean "/var/syspatch/62-010_ahauth/rollback.tgz"

echo "Please restart"