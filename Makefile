# $Id: Makefile,v 1.325 2003/07/13 13:46:59 marc Exp $
# $NetBSD: Makefile,v 1.325 2003/07/13 13:46:59 marc Exp $

COMMENT=	WIP pkgsrc packages

SUBDIR+=	3ddesktop
SUBDIR+=	4stAttack
SUBDIR+=	PPower4
SUBDIR+=	Radiator
SUBDIR+=	Radiator-all
SUBDIR+=	WEPCrack
SUBDIR+=	abuse_sdl
SUBDIR+=	acid
SUBDIR+=	adodb
SUBDIR+=	allegro
SUBDIR+=	amap
SUBDIR+=	amsn
SUBDIR+=	aolserver
SUBDIR+=	ap-bunzip2
SUBDIR+=	ap-frontpage
SUBDIR+=	ap-ometer
SUBDIR+=	argouml
SUBDIR+=	artwiz-fonts
SUBDIR+=	autoproject
SUBDIR+=	avida2
SUBDIR+=	bastard
SUBDIR+=	bc
SUBDIR+=	billardgl
SUBDIR+=	bin86
SUBDIR+=	boost-base
SUBDIR+=	boost-thread
SUBDIR+=	bub-n-bros
SUBDIR+=	bugzilla
SUBDIR+=	busybox
SUBDIR+=	byacc
SUBDIR+=	cawf
SUBDIR+=	cdpr
SUBDIR+=	cgdb
SUBDIR+=	cherokee
SUBDIR+=	chksniff
SUBDIR+=	cjk-latex
SUBDIR+=	cjk-latex-chinese
SUBDIR+=	cjk-latex-japanese
SUBDIR+=	cjk-latex-korean
SUBDIR+=	cvsd
SUBDIR+=	dancer-ircd
SUBDIR+=	darkice
SUBDIR+=	devhelp
SUBDIR+=	dfbpoint
SUBDIR+=	dfbsee
SUBDIR+=	dfm
SUBDIR+=	directfb
SUBDIR+=	directory-administrator
SUBDIR+=	dpkg
SUBDIR+=	drweb
SUBDIR+=	drwright
SUBDIR+=	dzt
SUBDIR+=	ed
SUBDIR+=	eic
SUBDIR+=	elvis
SUBDIR+=	elvis-x11
SUBDIR+=	emirror
SUBDIR+=	entropy
SUBDIR+=	ezbounce
SUBDIR+=	festival-gaim
SUBDIR+=	fluxconf
SUBDIR+=	freenet-tools
SUBDIR+=	frontpage
SUBDIR+=	fuse
SUBDIR+=	fuse-utils
SUBDIR+=	fwbuilder
SUBDIR+=	galib
SUBDIR+=	gdrdao
SUBDIR+=	geeklog
SUBDIR+=	gimp-current
SUBDIR+=	gkrellm2
SUBDIR+=	gkrellm2-flynn
SUBDIR+=	gkrellm2-launch
SUBDIR+=	gkrellm2-leds
SUBDIR+=	gkrellm2-multiping
SUBDIR+=	gkrellm2-server
SUBDIR+=	gkrellm2-share
SUBDIR+=	gkrellm2-snmp
SUBDIR+=	gkrellm2-volume
SUBDIR+=	gkrellm2-xmms
SUBDIR+=	gmencoder
SUBDIR+=	gnome2-extras
SUBDIR+=	gnome2-pkgview
SUBDIR+=	gnome2-system-monitor
SUBDIR+=	gnome2-themes
SUBDIR+=	gnome2-themes-extra
SUBDIR+=	gnome2-userdocs
SUBDIR+=	gnomeicu
SUBDIR+=	gnucash-docs
SUBDIR+=	gossip
SUBDIR+=	gotmail
SUBDIR+=	gov2
SUBDIR+=	grip
SUBDIR+=	gstreamer-player
SUBDIR+=	gtick
SUBDIR+=	gtk-sharp
SUBDIR+=	gtk2-engines-mist
SUBDIR+=	gtk2-thinice-engine
SUBDIR+=	gtranslator
SUBDIR+=	gurlchecker
SUBDIR+=	hasciicam
SUBDIR+=	honeyd-arpd
SUBDIR+=	ht
SUBDIR+=	ht2html
SUBDIR+=	httrack
SUBDIR+=	ices
SUBDIR+=	icmpchat
SUBDIR+=	idesk
SUBDIR+=	idled
SUBDIR+=	iisemulator
SUBDIR+=	ike-scan
SUBDIR+=	ilohamail
SUBDIR+=	ion-devel
SUBDIR+=	ion-dock
SUBDIR+=	ish
SUBDIR+=	jabberd
SUBDIR+=	jabberd2
SUBDIR+=	jakarta-log4j
SUBDIR+=	jazz
SUBDIR+=	jdk12
SUBDIR+=	jdk12-openjit
SUBDIR+=	jdk13
SUBDIR+=	jdk13-openjit
SUBDIR+=	jigdo
SUBDIR+=	kapital
SUBDIR+=	kgpg
SUBDIR+=	korelib
SUBDIR+=	lash
SUBDIR+=	lbdb
SUBDIR+=	ldapdns
SUBDIR+=	lde
SUBDIR+=	libcroco
SUBDIR+=	libdialog
SUBDIR+=	libdisasm
SUBDIR+=	libfwbuilder
SUBDIR+=	libogg-nightly
SUBDIR+=	libshout
SUBDIR+=	libspectrum
SUBDIR+=	libvorbis-nightly
SUBDIR+=	libwpd
SUBDIR+=	libxfce4gui
SUBDIR+=	libxfce4mcs
SUBDIR+=	libxfce4util
SUBDIR+=	linux-modutils
SUBDIR+=	linux-nfs-utils
SUBDIR+=	liquidwar
SUBDIR+=	lmarbles
SUBDIR+=	loudmouth
SUBDIR+=	mailfilter
SUBDIR+=	mailman21
SUBDIR+=	maradns
SUBDIR+=	mcats
SUBDIR+=	mcats-iodbc
SUBDIR+=	mhonarc
SUBDIR+=	mixer.tk
SUBDIR+=	mopac
SUBDIR+=	mtf
SUBDIR+=	muse
SUBDIR+=	mutella
SUBDIR+=	mutt-devel
SUBDIR+=	mysql3-client
SUBDIR+=	mysql3-server
SUBDIR+=	mysql4-client
SUBDIR+=	mysql4-server
SUBDIR+=	nagios-base
SUBDIR+=	nagios-plugin-ldap
SUBDIR+=	nagios-plugin-mysql
SUBDIR+=	nagios-plugin-pgsql
SUBDIR+=	nagios-plugin-snmp
SUBDIR+=	nagios-plugins
SUBDIR+=	nautilus-media
SUBDIR+=	navigatrix
SUBDIR+=	ncps
SUBDIR+=	nemesis
SUBDIR+=	net-tools
SUBDIR+=	netbeans-ide
SUBDIR+=	netkit-base
SUBDIR+=	newsx
SUBDIR+=	nikto
SUBDIR+=	nvtv
SUBDIR+=	nvtv-gtk2
SUBDIR+=	opax
SUBDIR+=	openvpn
SUBDIR+=	p5-Authen-SASL
SUBDIR+=	p5-Authen-SASL-Cyrus
SUBDIR+=	p5-CDDB
SUBDIR+=	p5-Chart
SUBDIR+=	p5-Class-Factory-Util
SUBDIR+=	p5-Class-Singleton
SUBDIR+=	p5-Compress-Bzip2
SUBDIR+=	p5-DBI-Shell
SUBDIR+=	p5-Data-TemporaryBag
SUBDIR+=	p5-DateTime
SUBDIR+=	p5-DateTime-Event-Cron
SUBDIR+=	p5-DateTime-LeapSecond
SUBDIR+=	p5-DateTime-Set
SUBDIR+=	p5-DateTime-TimeZone
SUBDIR+=	p5-File-Tail
SUBDIR+=	p5-GeoIP
SUBDIR+=	p5-HTTP-GHTTP
SUBDIR+=	p5-IO-Tee
SUBDIR+=	p5-Net-Gnats
SUBDIR+=	p5-Net-Jabber
SUBDIR+=	p5-SWF-File
SUBDIR+=	p5-Set-Crontab
SUBDIR+=	p5-Set-Infinite
SUBDIR+=	p5-Text-Reform
SUBDIR+=	p5-Unicode-String
SUBDIR+=	p5-XML-Stream
SUBDIR+=	p5-gtk2
SUBDIR+=	pdns
SUBDIR+=	perltidy
SUBDIR+=	php-jpgraph
SUBDIR+=	picasm
SUBDIR+=	picprog
SUBDIR+=	pinball
SUBDIR+=	pixieplus
SUBDIR+=	plugger
SUBDIR+=	poedit
SUBDIR+=	portmap
SUBDIR+=	postgresql-autodoc
SUBDIR+=	ppp
SUBDIR+=	procps
SUBDIR+=	psh
SUBDIR+=	pts
SUBDIR+=	py-OpenGL
SUBDIR+=	py-OpenSSL
SUBDIR+=	py-PgSQL
SUBDIR+=	py-SimpleParse
SUBDIR+=	py-adns
SUBDIR+=	py-albatross
SUBDIR+=	py-egenix-mx-base
SUBDIR+=	py-elementtree
SUBDIR+=	py-game
SUBDIR+=	py-generateDS
SUBDIR+=	py-gnome2
SUBDIR+=	py-gnosis-utils
SUBDIR+=	py-libpcap
SUBDIR+=	py-spark
SUBDIR+=	py-spreadmodule
SUBDIR+=	py-twisted
SUBDIR+=	qinx
SUBDIR+=	qn-x11
SUBDIR+=	raptor
SUBDIR+=	rcorder
SUBDIR+=	regexxer
SUBDIR+=	rlpr
SUBDIR+=	rosegarden-current
SUBDIR+=	scm
SUBDIR+=	scons
SUBDIR+=	scponly
SUBDIR+=	shoutcast
SUBDIR+=	slocate
SUBDIR+=	slrn-pl
SUBDIR+=	smtpscan
SUBDIR+=	socat
SUBDIR+=	speedx
SUBDIR+=	srvx
SUBDIR+=	stickynotes-applet
SUBDIR+=	strace
SUBDIR+=	streamripper
SUBDIR+=	sysklogd
SUBDIR+=	sysvinit
SUBDIR+=	tendra
SUBDIR+=	tex-foiltex
SUBDIR+=	theora-nightly
SUBDIR+=	tinylogin
SUBDIR+=	toppler
SUBDIR+=	totem
SUBDIR+=	trickle
SUBDIR+=	tsclient
SUBDIR+=	tsm
SUBDIR+=	tutos
SUBDIR+=	tuxtype2
SUBDIR+=	typhoon
SUBDIR+=	uclibc
SUBDIR+=	udhcp
SUBDIR+=	umix
SUBDIR+=	vba
SUBDIR+=	vcdgear
SUBDIR+=	vixie-cron
SUBDIR+=	vmac
SUBDIR+=	vmsbackup
SUBDIR+=	vte
SUBDIR+=	weewm
SUBDIR+=	windowlab
SUBDIR+=	words
SUBDIR+=	xawtv
SUBDIR+=	xcircuit3
SUBDIR+=	xevil
SUBDIR+=	xfce4
SUBDIR+=	xfce4-desktop
SUBDIR+=	xfce4-fm
SUBDIR+=	xfce4-fm-icons
SUBDIR+=	xfce4-gtk2-engines
SUBDIR+=	xfce4-iconbox
SUBDIR+=	xfce4-mcs-manager
SUBDIR+=	xfce4-mcs-plugins
SUBDIR+=	xfce4-mixer
SUBDIR+=	xfce4-panel
SUBDIR+=	xfce4-print
SUBDIR+=	xfce4-systemload-plugin
SUBDIR+=	xfce4-systray
SUBDIR+=	xfce4-themes
SUBDIR+=	xfce4-toys
SUBDIR+=	xfce4-trigger-launcher
SUBDIR+=	xfce4-utils
SUBDIR+=	xfce4-wm
SUBDIR+=	xfce4-wm-themes
SUBDIR+=	xmail
SUBDIR+=	xml2doc
SUBDIR+=	xmms-modplug
SUBDIR+=	xplore
SUBDIR+=	xsh
SUBDIR+=	yafray
SUBDIR+=	yelp
SUBDIR+=	zebra-pj
SUBDIR+=	zenity
SUBDIR+=	zinf

.include "../mk/bsd.pkg.subdir.mk"
