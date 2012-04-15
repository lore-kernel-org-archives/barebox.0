Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJSDz-0000G2-Jk
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:22:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 18:22:40 +0200
Message-Id: <1334506961-31245-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
References: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] add 2nd generation default env
To: barebox@lists.infradead.org

The current default environment grows in complexity and still is
quite unflexible. The basic mistake we (or better I) made is that
we had a boot script and tried to control its behaviour with
variables passed to this script. This had the consequence that
with every new feature we had to pass another variable to this
script and add another if/else to the script. This environment
set inverts this behaviour. It introduces a set of helper functions
which /env/config can use to do its job.

The helpers are:

/env/bin/ifup

bring up networking. Uses /env/network/$interface to configure the
interface. If something has to be done to discover the interface (for
USB devices), the code can be put into /env/network/${interface}-discover

/env/bin/bootargs-root-*

Add fields to $bootargs relevant for the kernel to find its rootfs. We
currently have helpers for ubi, nfs, initrd and jffs2

/env/bin/bootargs-ip-*

Add fields to $bootargs relevant for the kernel to configure networking.
Currently we have helpers for dhcp, static or ip=none

/env/bin/mtdparts-init
/env/bin/mtdparts-add

Add barebox partitions to mtd like devices and construct the mtdparts
Kernel option.

Additionally the automount feature is used to transparently mount
filesystems. With this only the device/file which contains the kernel
has to be specified in /env/config.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                         |    4 ++
 common/Makefile                        |    4 ++
 defaultenv-2/bin/add-nand-bb           |    7 ++++
 defaultenv-2/bin/boot                  |    5 +++
 defaultenv-2/bin/bootargs-ip-barebox   |    7 ++++
 defaultenv-2/bin/bootargs-ip-dhcp      |    5 +++
 defaultenv-2/bin/bootargs-ip-none      |    5 +++
 defaultenv-2/bin/bootargs-ip-static    |    7 ++++
 defaultenv-2/bin/bootargs-root-initrd  |   11 +++++
 defaultenv-2/bin/bootargs-root-jffs2   |    9 ++++
 defaultenv-2/bin/bootargs-root-nfs     |   15 +++++++
 defaultenv-2/bin/bootargs-root-ubi     |   13 ++++++
 defaultenv-2/bin/ifup                  |   48 +++++++++++++++++++++
 defaultenv-2/bin/init                  |   29 +++++++++++++
 defaultenv-2/bin/mount-tftp-dhcpserver |    5 +++
 defaultenv-2/bin/mtdparts-add          |   46 ++++++++++++++++++++
 defaultenv-2/bin/mtdparts-init         |    3 ++
 defaultenv-2/config                    |   72 ++++++++++++++++++++++++++++++++
 defaultenv-2/network/eth0              |   12 ++++++
 19 files changed, 307 insertions(+)
 create mode 100644 defaultenv-2/bin/add-nand-bb
 create mode 100644 defaultenv-2/bin/boot
 create mode 100644 defaultenv-2/bin/bootargs-ip-barebox
 create mode 100644 defaultenv-2/bin/bootargs-ip-dhcp
 create mode 100644 defaultenv-2/bin/bootargs-ip-none
 create mode 100644 defaultenv-2/bin/bootargs-ip-static
 create mode 100644 defaultenv-2/bin/bootargs-root-initrd
 create mode 100644 defaultenv-2/bin/bootargs-root-jffs2
 create mode 100644 defaultenv-2/bin/bootargs-root-nfs
 create mode 100644 defaultenv-2/bin/bootargs-root-ubi
 create mode 100644 defaultenv-2/bin/ifup
 create mode 100644 defaultenv-2/bin/init
 create mode 100644 defaultenv-2/bin/mount-tftp-dhcpserver
 create mode 100644 defaultenv-2/bin/mtdparts-add
 create mode 100644 defaultenv-2/bin/mtdparts-init
 create mode 100644 defaultenv-2/config
 create mode 100644 defaultenv-2/network/eth0

diff --git a/common/Kconfig b/common/Kconfig
index a997f3d..7098f03 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -488,6 +488,7 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	select HUSH_GETOPT
 	select CMD_CRC
 	select CMD_CRC_CMP
+	select CMD_AUTOMOUNT if HAVE_DEFAULT_ENVIRONMENT_NEW
 	prompt "Default environment generic"
 	help
 	  With this option barebox will use the generic default
@@ -497,6 +498,9 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	  at least contain a /env/config file.
 	  This will be able to overwrite the files from defaultenv.
 
+config HAVE_DEFAULT_ENVIRONMENT_NEW
+	bool
+
 config DEFAULT_ENVIRONMENT_PATH
 	string
 	depends on DEFAULT_ENVIRONMENT
diff --git a/common/Makefile b/common/Makefile
index 76fe407..5e9fab3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -40,8 +40,12 @@ $(obj)/startup.o: include/generated/barebox_default_env.h
 $(obj)/env.o: include/generated/barebox_default_env.h
 
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
+ifeq ($(CONFIG_HAVE_DEFAULT_ENVIRONMENT_NEW),y)
+DEFAULT_ENVIRONMENT_PATH = "defaultenv-2"
+else
 DEFAULT_ENVIRONMENT_PATH = "defaultenv"
 endif
+endif
 
 ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
 DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
diff --git a/defaultenv-2/bin/add-nand-bb b/defaultenv-2/bin/add-nand-bb
new file mode 100644
index 0000000..70d7706
--- /dev/null
+++ b/defaultenv-2/bin/add-nand-bb
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# hush expands wildcards when it initially parses a script. The
+# nand partitions do not exist when we enter /env/bin/init, so
+# we must start this script when the partitions exist.
+
+nand -a $1.*
diff --git a/defaultenv-2/bin/boot b/defaultenv-2/bin/boot
new file mode 100644
index 0000000..ab06a07
--- /dev/null
+++ b/defaultenv-2/bin/boot
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+. /env/config
+
+bootm ${bootm_opt} $kernel
diff --git a/defaultenv-2/bin/bootargs-ip-barebox b/defaultenv-2/bin/bootargs-ip-barebox
new file mode 100644
index 0000000..8c48883
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-ip-barebox
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# pass barebox ip settings for eth0 to Linux
+
+ifup eth0
+
+bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
diff --git a/defaultenv-2/bin/bootargs-ip-dhcp b/defaultenv-2/bin/bootargs-ip-dhcp
new file mode 100644
index 0000000..38713a6
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-ip-dhcp
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# Do dhcp in Linux
+
+bootargs="$bootargs ip=dhcp"
diff --git a/defaultenv-2/bin/bootargs-ip-none b/defaultenv-2/bin/bootargs-ip-none
new file mode 100644
index 0000000..579df72
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-ip-none
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# disable ip setup in Linux
+
+bootargs="$bootargs ip=none"
diff --git a/defaultenv-2/bin/bootargs-ip-static b/defaultenv-2/bin/bootargs-ip-static
new file mode 100644
index 0000000..93e9940
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-ip-static
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# static kernel ip setup based on barebox values for eth0
+
+. /env/network/eth0
+
+bootargs="$bootargs ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
diff --git a/defaultenv-2/bin/bootargs-root-initrd b/defaultenv-2/bin/bootargs-root-initrd
new file mode 100644
index 0000000..f826a44
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-root-initrd
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
+bootargs="$bootargs root=/dev/ram0 rdinit=${rdinit}"
diff --git a/defaultenv-2/bin/bootargs-root-jffs2 b/defaultenv-2/bin/bootargs-root-jffs2
new file mode 100644
index 0000000..473e6e5
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-root-jffs2
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+while getopt "m:" opt; do
+	if [ ${opt} = m ]; then
+		mtd=${OPTARG}
+	fi
+done
+
+bootargs="$bootargs root=$mtd rootfstype=jffs2"
diff --git a/defaultenv-2/bin/bootargs-root-nfs b/defaultenv-2/bin/bootargs-root-nfs
new file mode 100644
index 0000000..1ac0264
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-root-nfs
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
+bootargs="$bootargs root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/defaultenv-2/bin/bootargs-root-ubi b/defaultenv-2/bin/bootargs-root-ubi
new file mode 100644
index 0000000..e618779
--- /dev/null
+++ b/defaultenv-2/bin/bootargs-root-ubi
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
+bootargs="$bootargs root=ubi0:$ubiroot ubi.mtd=$mtd rootfstype=ubifs"
diff --git a/defaultenv-2/bin/ifup b/defaultenv-2/bin/ifup
new file mode 100644
index 0000000..6d7ff86
--- /dev/null
+++ b/defaultenv-2/bin/ifup
@@ -0,0 +1,48 @@
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
diff --git a/defaultenv-2/bin/init b/defaultenv-2/bin/init
new file mode 100644
index 0000000..563c268
--- /dev/null
+++ b/defaultenv-2/bin/init
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+# initialize a mountpoint for the serverip sent by the dhcp server
+mkdir -p /mnt/tftp-dhcp
+automount /mnt/tftp-dhcp /env/bin/mount-tftp-dhcpserver
+
+# if the user has specified a tftp server add a mountpoint for it
+if [ -n "$tftpserver" ]; then
+	mkdir -p /mnt/tftp-static
+	automount /mnt/tftp-static /env/bin/mount-tftp-static
+fi
+
+if [ -f /env/bin/init-board ]; then
+	. /env/bin/init-board
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	exit
+fi
+
+boot
diff --git a/defaultenv-2/bin/mount-tftp-dhcpserver b/defaultenv-2/bin/mount-tftp-dhcpserver
new file mode 100644
index 0000000..a89fe71
--- /dev/null
+++ b/defaultenv-2/bin/mount-tftp-dhcpserver
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+ifup eth0
+
+mount $eth0.serverip tftp $automount_path
diff --git a/defaultenv-2/bin/mtdparts-add b/defaultenv-2/bin/mtdparts-add
new file mode 100644
index 0000000..91f750a
--- /dev/null
+++ b/defaultenv-2/bin/mtdparts-add
@@ -0,0 +1,46 @@
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
+if [ ! -e /tmp/mtdparts/${device} ]; then
+	addpart -n $device "$parts" || exit
+	mkdir -p /tmp/mtdparts/${device}
+	if [ -n "${bbdev}" ]; then
+		add-nand-bb $device
+	fi
+fi
+
+if [ -n ${kernelname} ]; then
+	if [ -n "${mtdparts}" ]; then
+		mtdparts="${mtdparts};${kernelname}:${parts}"
+	else
+		mtdparts="${kernelname}:${parts}"
+	fi
+fi
diff --git a/defaultenv-2/bin/mtdparts-init b/defaultenv-2/bin/mtdparts-init
new file mode 100644
index 0000000..4282a89
--- /dev/null
+++ b/defaultenv-2/bin/mtdparts-init
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+mtdparts=
diff --git a/defaultenv-2/config b/defaultenv-2/config
new file mode 100644
index 0000000..af7cee9
--- /dev/null
+++ b/defaultenv-2/config
@@ -0,0 +1,72 @@
+#!/bin/sh
+
+#
+# EXAMPLE FILE
+#
+# This should be overwritten by arch/<yourarch>/<yourboard>/env/config
+#
+# EXAMPLE FILE
+#
+
+#
+# ----- misc variables -----
+#
+
+user=
+hostname=
+autoboot_timeout=3
+tftp_path="/mnt/tftp-dhcp"
+
+#
+# ----- kernel, oftree and nfsroot -----
+#
+
+kernel="${tftp_path}/${user}-linux-${hostname}"
+#kernel="/dev/nand0.kernel.bb"
+#kernel="/dev/nor0.kernel"
+#bootm_opt="-o ${tftp_path}/${user}-oftree-${hostname}"
+nfsroot="/home/${user}/nfsroot/${hostname}"
+
+#
+# ----- mountpoints -----
+#
+
+# FAT on usb disk example
+#automount -d /mnt/fat 'usb; mount /dev/usbdisk0.0 fat $automount_path'
+# static tftp server example
+#automount -d /mnt/tftp 'ifup eth0; mount tftpserver tftp $automount_path'
+
+# initial bootargs
+bootargs="console=ttyS0,115200"
+
+#
+# ----- kernel ip settings -----
+#
+
+. bootargs-ip-dhcp
+#. bootargs-ip-static
+#. bootargs-ip-none
+#. bootargs-ip-barebox
+
+#
+# ----- kernel rootfs settings -----
+#
+
+. bootargs-root-nfs -n "$nfsroot"
+#. bootargs-root-ubi -r root -m nand0.root
+#. bootargs-root-jffs2 -m mtd:nand0.root
+
+#
+# ----- partitions -----
+#
+
+mtdparts_nor="512k(nor0.barebox)ro,128k(nor0.bareboxenv),2M(nor0.kernel),-(nor0.root)"
+mtdparts_nand="512k(nand0.barebox)ro,128k(nand0.bareboxenv),2M(nand0.kernel),-(nand0.root)"
+
+. mtdparts-init
+. mtdparts-add -d /dev/nor0 -k physmap-flash.0 -p ${mtdparts_nor}
+. mtdparts-add -d /dev/nand0 -k mxc_nand -b -p ${mtdparts_nand}
+
+bootargs="$bootargs mtdparts=$mtdparts"
+
+PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
diff --git a/defaultenv-2/network/eth0 b/defaultenv-2/network/eth0
new file mode 100644
index 0000000..14fcec8
--- /dev/null
+++ b/defaultenv-2/network/eth0
@@ -0,0 +1,12 @@
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
+# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
