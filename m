Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUYIF-0002BH-Bo
 for barebox@lists.infradead.org; Wed, 16 May 2012 07:05:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 09:04:55 +0200
Message-Id: <1337151896-5888-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
References: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] Add next generation default environment template
To: barebox@lists.infradead.org

This adds a new environment template which aims to be more flexible
and configurable. Instead of having mainly two scripts (a config script
and a boot script) this template uses initscripts which control the
startup behaviour and configuration. Also we have boot scripts in
/env/boot which configure a single boot configuration. Additional
boot entries can be added by board specific entries or during runtime
by copying and editing a template entry.

Some more helpers handle for example network interfaces which can now
be brought up with 'ifup'. We use the automount feature to configure
mountpoints together with the commands to bring up the devices behind
these mountpoints.

Optionally menu support is available which hides many details behind
a nice looking interface.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                                  |   20 +++++++-
 common/Makefile                                 |    7 +++
 defaultenv-2/base/bin/boot                      |   18 +++++++
 defaultenv-2/base/bin/bootargs-ip               |   11 +++++
 defaultenv-2/base/bin/bootargs-ip-barebox       |    7 +++
 defaultenv-2/base/bin/bootargs-ip-dhcp          |    5 ++
 defaultenv-2/base/bin/bootargs-ip-none          |    5 ++
 defaultenv-2/base/bin/bootargs-root-initrd      |   11 +++++
 defaultenv-2/base/bin/bootargs-root-jffs2       |    9 ++++
 defaultenv-2/base/bin/bootargs-root-nfs         |   15 ++++++
 defaultenv-2/base/bin/bootargs-root-ubi         |   13 +++++
 defaultenv-2/base/bin/ifup                      |   59 +++++++++++++++++++++++
 defaultenv-2/base/bin/init                      |   46 ++++++++++++++++++
 defaultenv-2/base/bin/mtdparts-add              |   49 +++++++++++++++++++
 defaultenv-2/base/boot/nand-ubi                 |   10 ++++
 defaultenv-2/base/boot/net                      |   12 +++++
 defaultenv-2/base/data/ansi-colors              |   26 ++++++++++
 defaultenv-2/base/data/boot-template            |   16 ++++++
 defaultenv-2/base/init/automount                |   27 +++++++++++
 defaultenv-2/base/init/bootargs-base            |    8 +++
 defaultenv-2/base/init/general                  |   18 +++++++
 defaultenv-2/base/init/hostname                 |    8 +++
 defaultenv-2/base/init/prompt                   |    7 +++
 defaultenv-2/base/network/eth0                  |   15 ++++++
 defaultenv-2/menu/menu/boot-entries-collect     |   13 +++++
 defaultenv-2/menu/menu/boot-entries-edit        |   20 ++++++++
 defaultenv-2/menu/menu/boot-entries-remove      |   18 +++++++
 defaultenv-2/menu/menu/boot-menu-add-entry      |    5 ++
 defaultenv-2/menu/menu/boot-menu-new-boot-entry |   21 ++++++++
 defaultenv-2/menu/menu/init-entries-collect     |    9 ++++
 defaultenv-2/menu/menu/init-entries-edit        |   20 ++++++++
 defaultenv-2/menu/menu/init-menu-add-entry      |    3 ++
 defaultenv-2/menu/menu/mainmenu                 |   28 +++++++++++
 33 files changed, 557 insertions(+), 2 deletions(-)
 create mode 100644 defaultenv-2/base/bin/boot
 create mode 100644 defaultenv-2/base/bin/bootargs-ip
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-barebox
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-dhcp
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-none
 create mode 100644 defaultenv-2/base/bin/bootargs-root-initrd
 create mode 100644 defaultenv-2/base/bin/bootargs-root-jffs2
 create mode 100644 defaultenv-2/base/bin/bootargs-root-nfs
 create mode 100644 defaultenv-2/base/bin/bootargs-root-ubi
 create mode 100644 defaultenv-2/base/bin/ifup
 create mode 100644 defaultenv-2/base/bin/init
 create mode 100644 defaultenv-2/base/bin/mtdparts-add
 create mode 100644 defaultenv-2/base/boot/nand-ubi
 create mode 100644 defaultenv-2/base/boot/net
 create mode 100644 defaultenv-2/base/data/ansi-colors
 create mode 100644 defaultenv-2/base/data/boot-template
 create mode 100644 defaultenv-2/base/init/automount
 create mode 100644 defaultenv-2/base/init/bootargs-base
 create mode 100644 defaultenv-2/base/init/general
 create mode 100644 defaultenv-2/base/init/hostname
 create mode 100644 defaultenv-2/base/init/prompt
 create mode 100644 defaultenv-2/base/network/eth0
 create mode 100644 defaultenv-2/menu/menu/boot-entries-collect
 create mode 100644 defaultenv-2/menu/menu/boot-entries-edit
 create mode 100644 defaultenv-2/menu/menu/boot-entries-remove
 create mode 100644 defaultenv-2/menu/menu/boot-menu-add-entry
 create mode 100644 defaultenv-2/menu/menu/boot-menu-new-boot-entry
 create mode 100644 defaultenv-2/menu/menu/init-entries-collect
 create mode 100644 defaultenv-2/menu/menu/init-entries-edit
 create mode 100644 defaultenv-2/menu/menu/init-menu-add-entry
 create mode 100644 defaultenv-2/menu/menu/mainmenu

diff --git a/common/Kconfig b/common/Kconfig
index 9f0e0f8..ded34c0 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -495,6 +495,23 @@ endchoice
 
 endif
 
+config HAVE_DEFAULT_ENVIRONMENT_NEW
+	bool
+
+config DEFAULT_ENVIRONMENT_GENERIC_NEW
+	bool
+	depends on DEFAULT_ENVIRONMENT
+	depends on SHELL_HUSH
+	select HUSH_GETOPT
+	select GLOB
+	select GLOB_SORT
+	select CMD_GLOBAL
+	select CMD_AUTOMOUNT
+	select FLEXIBLE_BOOTARGS
+	prompt "Generic environment template"
+
+if !HAVE_DEFAULT_ENVIRONMENT_NEW
+
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on DEFAULT_ENVIRONMENT
@@ -512,8 +529,7 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	  at least contain a /env/config file.
 	  This will be able to overwrite the files from defaultenv.
 
-config HAVE_DEFAULT_ENVIRONMENT_NEW
-	bool
+endif
 
 config DEFAULT_ENVIRONMENT_PATH
 	string
diff --git a/common/Makefile b/common/Makefile
index b49e6e0..a1926d3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -42,6 +42,13 @@ ifdef CONFIG_DEFAULT_ENVIRONMENT
 $(obj)/startup.o: include/generated/barebox_default_env.h
 $(obj)/env.o: include/generated/barebox_default_env.h
 
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW),y)
+DEFAULT_ENVIRONMENT_PATH = "defaultenv-2/base"
+ifeq ($(CONFIG_CMD_MENU_MANAGEMENT),y)
+DEFAULT_ENVIRONMENT_PATH += "defaultenv-2/menu"
+endif
+endif
+
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
 DEFAULT_ENVIRONMENT_PATH = "defaultenv"
 endif
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
new file mode 100644
index 0000000..c5ad73d
--- /dev/null
+++ b/defaultenv-2/base/bin/boot
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+if [ $# = 0 ]; then
+	scr="$global.boot.default"
+else
+	scr="$1"
+fi
+
+if [ -n "$scr" ]; then
+	if [ ! -f /env/boot/$scr ]; then
+		echo -e "/env/boot/$scr does not exist.\nValid choices:"
+		ls /env/boot
+		exit
+	fi
+	/env/boot/$scr
+fi
+
+bootm
diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv-2/base/bin/bootargs-ip
new file mode 100644
index 0000000..15041c6
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-ip
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+# pass either static ip or dhcp to kernel based on barebox settings
+
+. /env/network/eth0
+
+if [ $ip = dhcp ]; then
+	global.linux.bootargs.ip="ip=dhcp"
+else
+	global.linux.bootargs.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
+fi
diff --git a/defaultenv-2/base/bin/bootargs-ip-barebox b/defaultenv-2/base/bin/bootargs-ip-barebox
new file mode 100644
index 0000000..986c142
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-ip-barebox
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# pass barebox ip settings for eth0 to Linux
+
+ifup eth0
+
+global.linux.bootargs.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
diff --git a/defaultenv-2/base/bin/bootargs-ip-dhcp b/defaultenv-2/base/bin/bootargs-ip-dhcp
new file mode 100644
index 0000000..c542b24
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-ip-dhcp
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# Do dhcp in Linux
+
+global.linux.bootargs.ip="ip=dhcp"
diff --git a/defaultenv-2/base/bin/bootargs-ip-none b/defaultenv-2/base/bin/bootargs-ip-none
new file mode 100644
index 0000000..c010154
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-ip-none
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# disable ip setup in Linux
+
+global.linux.bootargs.ip="ip=none"
diff --git a/defaultenv-2/base/bin/bootargs-root-initrd b/defaultenv-2/base/bin/bootargs-root-initrd
new file mode 100644
index 0000000..4c59625
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-root-initrd
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+rdinit="/sbin/init"
+
+while getopt "i:" opt; do
+	if [ ${opt} = i ]; then
+		rdinit=${OPTARG}
+	fi
+done
+
+global.linux.bootargs.root="root=/dev/ram0 rdinit=${rdinit}"
diff --git a/defaultenv-2/base/bin/bootargs-root-jffs2 b/defaultenv-2/base/bin/bootargs-root-jffs2
new file mode 100644
index 0000000..db036da
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-root-jffs2
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+while getopt "m:" opt; do
+	if [ ${opt} = m ]; then
+		mtd=${OPTARG}
+	fi
+done
+
+global.linux.bootargs.root="root=$mtd rootfstype=jffs2"
diff --git a/defaultenv-2/base/bin/bootargs-root-nfs b/defaultenv-2/base/bin/bootargs-root-nfs
new file mode 100644
index 0000000..bf97555
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-root-nfs
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+while getopt "n:s:" opt; do
+	if [ ${opt} = n ]; then
+		nfsroot=${OPTARG}
+	elif [ ${opt} = s ]; then
+		serverip=${OPTARG}
+	fi
+done
+
+if [ -n ${serverip} ]; then
+	nfsroot="$serverip:$nfsroot"
+fi
+
+global.linux.bootargs.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/defaultenv-2/base/bin/bootargs-root-ubi b/defaultenv-2/base/bin/bootargs-root-ubi
new file mode 100644
index 0000000..ef89104
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-root-ubi
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+ubiroot=root
+
+while getopt "m:r:" opt; do
+	if [ ${opt} = r ]; then
+		ubiroot=${OPTARG}
+	elif [ ${opt} = m ]; then
+		mtd=${OPTARG}
+	fi
+done
+
+global.linux.bootargs.root="root=ubi0:$ubiroot ubi.mtd=$mtd rootfstype=ubifs"
diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
new file mode 100644
index 0000000..9f6fd6b
--- /dev/null
+++ b/defaultenv-2/base/bin/ifup
@@ -0,0 +1,59 @@
+#!/bin/sh
+
+mkdir -p /tmp/network
+
+if [ $# != 1 ]; then
+	echo "usage: ifup <interface>"
+	exit 1
+fi
+
+interface="$1"
+
+if [ -f /tmp/network/$interface ]; then
+	exit 0
+fi
+
+cmd=/env/network/$interface
+
+if [ ! -e $cmd ]; then
+	echo "$f: no such file"
+	exit 1
+fi
+
+ip=
+ipaddr=
+netmask=
+gateway=
+serverip=
+ethaddr=
+
+. $cmd
+
+if [ $? != 0 ]; then
+	echo "failed to bring up $interface"
+	exit 1
+fi
+
+if [ -f /env/network/${interface}-discover ]; then
+	/env/network/${interface}-discover
+	if [ $? != 0 ]; then
+		echo "failed to discover eth0"
+		exit 1
+	fi
+fi
+
+if [ -n "$ethaddr" ]; then
+	${interface}.ethaddr=$ethaddr
+fi
+
+if [ "$ip" = static ]; then
+	${interface}.ipaddr=$ipaddr
+	${interface}.netmask=$netmask
+	${interface}.serverip=$serverip
+	${interface}.gateway=$gateway
+elif [ "$ip" = dhcp ]; then
+	dhcp
+	exit $?
+fi
+
+echo -o /tmp/network/$interface up
diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
new file mode 100644
index 0000000..e293c62
--- /dev/null
+++ b/defaultenv-2/base/bin/init
@@ -0,0 +1,46 @@
+#!/bin/sh
+
+export PATH=/env/bin
+
+global hostname=generic
+global user=none
+global tftp.server
+global tftp.path=/mnt/tftp-dhcp
+global autoboot_timeout=3
+global boot.default=net
+global allow_color=true
+global linux.bootargs.base
+global linux.bootargs.ip
+global linux.bootargs.root
+global editcmd=sedit
+
+/env/init/general
+
+if [ -e /env/menu ]; then
+	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
+else
+	echo -e -n "\nHit any key to stop autoboot: "
+fi
+
+timeout -a $global.autoboot_timeout -v key
+autoboot="$?"
+
+if [ "${key}" = "q" ]; then
+	exit
+fi
+
+for i in /env/init/*; do
+	. $i
+done
+
+if [ "$autoboot" = 0 ]; then
+	boot
+fi
+
+if [ -e /env/menu ]; then
+	if [ "${key}" != "m" ]; then
+		echo -e "\ntype exit to get to the menu"
+		sh
+	fi
+	/env/menu/mainmenu
+fi
diff --git a/defaultenv-2/base/bin/mtdparts-add b/defaultenv-2/base/bin/mtdparts-add
new file mode 100644
index 0000000..58c9fa7
--- /dev/null
+++ b/defaultenv-2/base/bin/mtdparts-add
@@ -0,0 +1,49 @@
+#!/bin/sh
+
+mkdir -p /tmp/mtdparts
+
+parts=
+device=
+kernelname=
+bbdev=
+
+while getopt "p:d:k:b" opt; do
+        if [ ${opt} = p ]; then
+                parts=${OPTARG}
+        elif [ ${opt} = d ]; then
+                device=${OPTARG}
+        elif [ ${opt} = k ]; then
+                kernelname=${OPTARG}
+	elif [ ${opt} = b ]; then
+		bbdev=true
+        fi
+done
+
+if [ -z "${device}" ]; then
+	echo "$0: no device given"
+	exit
+fi
+
+if [ -z "${parts}" ]; then
+	echo "$0: no partitions given"
+	exit
+fi
+
+if [ -e /tmp/mtdparts/${device} ]; then
+	if [ -n "/dev/${device}.*.bb" ]; then
+		nand -d /dev/${device}.*.bb
+	fi
+	delpart /dev/${device}.*
+fi
+
+addpart -n /dev/${device} "$parts" || exit
+mkdir -p /tmp/mtdparts/${device}
+
+if [ -n "${bbdev}" ]; then
+	nand -a /dev/${device}.*
+fi
+
+if [ -n ${kernelname} ]; then
+	global linux.mtdparts.${device}
+	global.linux.mtdparts.${device}="${kernelname}:${parts}"
+fi
diff --git a/defaultenv-2/base/boot/nand-ubi b/defaultenv-2/base/boot/nand-ubi
new file mode 100644
index 0000000..a3f748e
--- /dev/null
+++ b/defaultenv-2/base/boot/nand-ubi
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+#global.bootm.oftree="/env/oftree"
+bootargs-root-ubi -r root -m nand0.root
diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
new file mode 100644
index 0000000..2684c20
--- /dev/null
+++ b/defaultenv-2/base/boot/net
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (tftp, nfs)"
+	exit
+fi
+
+global.bootm.image="${global.tftp.path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${global.tftp.path}/${global.user}-oftree-${global.hostname}"
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+bootargs-ip
+bootargs-root-nfs -n "$nfsroot"
diff --git a/defaultenv-2/base/data/ansi-colors b/defaultenv-2/base/data/ansi-colors
new file mode 100644
index 0000000..c71b6b7
--- /dev/null
+++ b/defaultenv-2/base/data/ansi-colors
@@ -0,0 +1,26 @@
+#!/bin/sh
+
+# Colors
+export RED='\e[1;31m'
+export BLUE='\e[1;34m'
+export GREEN='\e[1;32m'
+export CYAN='\e[1;36m'
+export YELLOW='\e[1;33m'
+export PINK='\e[1;35m'
+export WHITE='\e[1;37m'
+
+export DARK_RED='\e[2;31m'
+export DARK_BLUE='\e[2;34m'
+export DARK_GREEN='\e[2;32m'
+export DARK_CYAN='\e[2;36m'
+export DARK_YELLOW='\e[2;33m'
+export DARK_PINK='\e[2;35m'
+export DARK_WHITE='\e[2;37m'
+
+export RED_INV='\e[1;41m'
+export BLUE_INV='\e[1;44m'
+export GREEN_INV='\e[1;42m'
+export CYAN_INV='\e[1;46m'
+export ORANGE_INV='\e[1;43m'
+export PINK_INV='\e[1;45m'
+export NC='\e[0m' # No Color
diff --git a/defaultenv-2/base/data/boot-template b/defaultenv-2/base/data/boot-template
new file mode 100644
index 0000000..1cacf18
--- /dev/null
+++ b/defaultenv-2/base/data/boot-template
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "<menu text here>"
+	exit
+fi
+
+global.bootm.image=<path to image>
+#global.bootm.oftree=<path to oftree>
+#global.bootm.initrd=<path to initrd>
+
+#bootargs-ip
+
+#bootargs-root-nfs -n "<path on server>" -s <serverip>
+#bootargs-root-jffs2 -m <mtdname>
+#bootargs-root-ubi -r <volume> -m <mtdname>
diff --git a/defaultenv-2/base/init/automount b/defaultenv-2/base/init/automount
new file mode 100644
index 0000000..e029222
--- /dev/null
+++ b/defaultenv-2/base/init/automount
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount server returned from dhcp server
+
+mkdir -p /mnt/tftp-dhcp
+automount /mnt/tftp-dhcp 'ifup eth0; mount $eth0.serverip tftp /mnt/tftp-dhcp'
+
+# automount nfs server example
+
+#nfshost=somehost
+#mkdir -p /mnt/${nfshost}
+#automount /mnt/$nfshost "ifup eth0; mount ${nfshost}:/tftpboot nfs /mnt/${nfshost}"
+
+# static tftp server example
+
+#mkdir -p /mnt/tftp
+#automount -d /mnt/tftp 'ifup eth0; mount $serverip tftp /mnt/tftp'
+
+# FAT on usb disk example
+
+#mkdir -p /mnt/fat
+#automount -d /mnt/fat 'usb; mount /dev/usbdisk0.0 fat $automount_path'
diff --git a/defaultenv-2/base/init/bootargs-base b/defaultenv-2/base/init/bootargs-base
new file mode 100644
index 0000000..8e588ad
--- /dev/null
+++ b/defaultenv-2/base/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttyS0,115200"
diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
new file mode 100644
index 0000000..ad6c860
--- /dev/null
+++ b/defaultenv-2/base/init/general
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "general config settings"
+	exit
+fi
+
+# user (used for network filenames)
+global.user=sha
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=3
+
+# default boot entry (one of /env/boot/*)
+global.boot.default=net
+
+# default tftp path
+global.tftp.path=/mnt/tftp-dhcp
diff --git a/defaultenv-2/base/init/hostname b/defaultenv-2/base/init/hostname
new file mode 100644
index 0000000..57a2c94
--- /dev/null
+++ b/defaultenv-2/base/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=generic
diff --git a/defaultenv-2/base/init/prompt b/defaultenv-2/base/init/prompt
new file mode 100644
index 0000000..11dce9f
--- /dev/null
+++ b/defaultenv-2/base/init/prompt
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ ${global.allow_color} = "true" ]; then
+	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
+else
+	export PS1="barebox@\h:\w "
+fi
diff --git a/defaultenv-2/base/network/eth0 b/defaultenv-2/base/network/eth0
new file mode 100644
index 0000000..048a288
--- /dev/null
+++ b/defaultenv-2/base/network/eth0
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+# ip setting (static/dhcp)
+ip=dhcp
+
+# static setup used if ip=static
+ipaddr=
+netmask=
+gateway=
+serverip=
+
+# MAC address if needed
+#ethaddr=xx:xx:xx:xx:xx:xx
+
+# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
diff --git a/defaultenv-2/menu/menu/boot-entries-collect b/defaultenv-2/menu/menu/boot-entries-collect
new file mode 100644
index 0000000..c066c93
--- /dev/null
+++ b/defaultenv-2/menu/menu/boot-entries-collect
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+cd /env/boot
+
+./$global.boot.default menu
+
+for i in *; do
+	if [ "$i" != "$global.boot.default" ]; then
+		./$i menu
+	fi
+done
+
+cd /
diff --git a/defaultenv-2/menu/menu/boot-entries-edit b/defaultenv-2/menu/menu/boot-entries-edit
new file mode 100644
index 0000000..c4e1c3d
--- /dev/null
+++ b/defaultenv-2/menu/menu/boot-entries-edit
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+export menu_exit=false
+
+while true; do
+	menu -a -m boot_entries_edit -d "\e[1;36mEdit boot entries\e[0m"
+
+	boot-entries-collect
+
+	menu -e -a -m boot_entries_edit -c "boot-menu-new-boot-entry" -d "Add a new entry"
+	menu -e -a -m boot_entries_edit -c "boot-entries-remove" -d "Remove an entry"
+	menu -e -a -m boot_entries_edit -c "menu_exit=true" -d "back"
+
+	menu -s -m boot_entries_edit
+	menu -r -m boot_entries_edit
+
+	if [ $menu_exit = true ]; then
+		exit
+	fi
+done
diff --git a/defaultenv-2/menu/menu/boot-entries-remove b/defaultenv-2/menu/menu/boot-entries-remove
new file mode 100644
index 0000000..566be9d
--- /dev/null
+++ b/defaultenv-2/menu/menu/boot-entries-remove
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+export menu_exit=false
+
+while true; do
+	menu -a -m boot_entries_remove -d "\e[1;36mRemove Boot entry\e[0m"
+
+	boot-entries-collect
+
+	menu -e -a -m boot_entries_remove -c "menu_exit=true" -d "back"
+
+	menu -s -m boot_entries_remove
+	menu -r -m boot_entries_remove
+
+	if [ $menu_exit = true ]; then
+		exit
+	fi
+done
diff --git a/defaultenv-2/menu/menu/boot-menu-add-entry b/defaultenv-2/menu/menu/boot-menu-add-entry
new file mode 100644
index 0000000..7e1d9c6
--- /dev/null
+++ b/defaultenv-2/menu/menu/boot-menu-add-entry
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+menu -e -a -m boot -c "boot $1" -d "Boot: ${GREEN}$2${NC}"
+menu -e -a -m boot_entries_edit -c "$global.editcmd /env/boot/$1" -d "${GREEN}$2${NC}"
+menu -e -a -m boot_entries_remove -c "rm /env/boot/$1" -d "${GREEN}$2${NC}"
diff --git a/defaultenv-2/menu/menu/boot-menu-new-boot-entry b/defaultenv-2/menu/menu/boot-menu-new-boot-entry
new file mode 100644
index 0000000..c5e982c
--- /dev/null
+++ b/defaultenv-2/menu/menu/boot-menu-new-boot-entry
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+name=
+
+readline "Name of the new entry: " name
+
+if [ -z "$name" ]; then
+	exit 1
+fi
+
+if [ -e "/env/boot/$name" ]; then
+	echo "entry $name already exists"
+	readline "<enter>" unused
+	exit 1
+fi
+
+cp /env/data/boot-template /env/boot/$name
+
+edit /env/boot/$name
+
+boot-menu-show rebuild
diff --git a/defaultenv-2/menu/menu/init-entries-collect b/defaultenv-2/menu/menu/init-entries-collect
new file mode 100644
index 0000000..dbb7757
--- /dev/null
+++ b/defaultenv-2/menu/menu/init-entries-collect
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+cd /env/init
+
+for i in *; do
+	./$i menu
+done
+
+cd /
diff --git a/defaultenv-2/menu/menu/init-entries-edit b/defaultenv-2/menu/menu/init-entries-edit
new file mode 100644
index 0000000..fc02b32
--- /dev/null
+++ b/defaultenv-2/menu/menu/init-entries-edit
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+export menu_exit=false
+
+while true; do
+	menu -a -m init_entries_edit -d "\e[1;36mEdit init entries\e[0m"
+
+	menu -e -a -m init_entries_edit -R -c "true" -d ">> Reset board to let changes here take effect <<"
+
+	init-entries-collect
+
+	menu -e -a -m init_entries_edit -c "menu_exit=true" -d "back"
+
+	menu -s -m init_entries_edit
+	menu -r -m init_entries_edit
+
+	if [ $menu_exit = true ]; then
+		exit
+	fi
+done
diff --git a/defaultenv-2/menu/menu/init-menu-add-entry b/defaultenv-2/menu/menu/init-menu-add-entry
new file mode 100644
index 0000000..7cb5686
--- /dev/null
+++ b/defaultenv-2/menu/menu/init-menu-add-entry
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+menu -e -a -m init_entries_edit -c "$global.editcmd /env/init/$1" -d "\e[1;32m$2\e[0m"
diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
new file mode 100644
index 0000000..d7b0033
--- /dev/null
+++ b/defaultenv-2/menu/menu/mainmenu
@@ -0,0 +1,28 @@
+#!/bin/sh
+
+savepath=$PATH
+export menupath=$PATH:/env/menu
+
+if [ ${global.allow_color} = "true" ]; then
+	. /env/data/ansi-colors
+fi
+
+while true; do
+	export PATH=${menupath}
+
+	echo $PATH
+
+	menu -a -m boot -d "${CYAN}Welcome to Barebox${NC}"
+
+	boot-entries-collect
+
+	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
+	menu -e -a -m boot -c "boot-entries-edit" -d "Edit boot entries"
+	menu -e -a -m boot -c "init-entries-edit" -d "Edit init entries"
+	menu -e -a -R -m boot -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
+	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
+	menu -e -a -m boot -c reset -d "${RED}Reset${NC}"
+
+	menu -s -m boot
+	menu -r -m boot
+done
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
