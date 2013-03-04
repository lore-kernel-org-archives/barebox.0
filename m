Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCcfR-0003SW-BT
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 21:11:31 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 046A4104DEA6
 for <barebox@lists.infradead.org>; Mon,  4 Mar 2013 22:22:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  4 Mar 2013 22:10:30 +0100
Message-Id: <1362431430-24286-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] highbank: switch to defaultenv-2
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	depends on boot sequence support

Best Regards,
J.
 arch/arm/boards/highbank/env/boot/ahci             |   21 +++++++++++++
 arch/arm/boards/highbank/env/boot/mmc              |   21 +++++++++++++
 arch/arm/boards/highbank/env/boot/net              |   18 +++++++++++
 arch/arm/boards/highbank/env/boot/net-eth1         |   18 +++++++++++
 arch/arm/boards/highbank/env/config                |   33 --------------------
 arch/arm/boards/highbank/env/config-board          |   11 +++++++
 arch/arm/boards/highbank/env/data/oftree           |    4 +++
 .../env/{bin/init_board => init/001-dtb-probe}     |    0
 arch/arm/boards/highbank/env/init/automount        |   27 ++++++++++++++++
 arch/arm/boards/highbank/env/init/bootseq          |    6 ++++
 arch/arm/boards/highbank/env/init/ps1              |    9 ++++++
 arch/arm/mach-highbank/Kconfig                     |    1 +
 12 files changed, 136 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/boards/highbank/env/boot/ahci
 create mode 100644 arch/arm/boards/highbank/env/boot/mmc
 create mode 100644 arch/arm/boards/highbank/env/boot/net
 create mode 100644 arch/arm/boards/highbank/env/boot/net-eth1
 delete mode 100644 arch/arm/boards/highbank/env/config
 create mode 100644 arch/arm/boards/highbank/env/config-board
 create mode 100644 arch/arm/boards/highbank/env/data/oftree
 rename arch/arm/boards/highbank/env/{bin/init_board => init/001-dtb-probe} (100%)
 create mode 100644 arch/arm/boards/highbank/env/init/automount
 create mode 100644 arch/arm/boards/highbank/env/init/bootseq
 create mode 100644 arch/arm/boards/highbank/env/init/ps1

diff --git a/arch/arm/boards/highbank/env/boot/ahci b/arch/arm/boards/highbank/env/boot/ahci
new file mode 100644
index 0000000..9a41366
--- /dev/null
+++ b/arch/arm/boards/highbank/env/boot/ahci
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "AHCI (part 0 or boot if UEFI)"
+	exit
+fi
+
+path="/mnt/ahci"
+
+global.bootm.image="${path}/vmlinuz"
+
+. /env/data/oftree
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+# The rootdevice may actually be mmcblk1p2 if a card
+# is inserted to the back MMC slot
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/highbank/env/boot/mmc b/arch/arm/boards/highbank/env/boot/mmc
new file mode 100644
index 0000000..43a04b5
--- /dev/null
+++ b/arch/arm/boards/highbank/env/boot/mmc
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "MMC slot"
+	exit
+fi
+
+path="/mnt/mmc"
+
+global.bootm.image="${path}/zimage"
+
+. /env/data/oftree
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+# The rootdevice may actually be mmcblk1p2 if a card
+# is inserted to the back MMC slot
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/highbank/env/boot/net b/arch/arm/boards/highbank/env/boot/net
new file mode 100644
index 0000000..80862cd
--- /dev/null
+++ b/arch/arm/boards/highbank/env/boot/net
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (tftp, nfs) (eth0)"
+	exit
+fi
+
+ethact eth0
+
+path="/mnt/tftp"
+
+. /env/data/oftree
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/highbank/env/boot/net-eth1 b/arch/arm/boards/highbank/env/boot/net-eth1
new file mode 100644
index 0000000..d9e9804
--- /dev/null
+++ b/arch/arm/boards/highbank/env/boot/net-eth1
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (tftp, nfs) (eth1)"
+	exit
+fi
+
+ethact eth1
+
+path="/mnt/tftp"
+
+. /env/data/oftree
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/highbank/env/config b/arch/arm/boards/highbank/env/config
deleted file mode 100644
index 1bb2c49..0000000
--- a/arch/arm/boards/highbank/env/config
+++ /dev/null
@@ -1,33 +0,0 @@
-#!/bin/sh
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-global.dhcp.vendor_id=barebox-highbank
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp' or 'nor'
-kernel_loc=tftp
-# can be either 'net', 'nor' or 'initrd'
-rootfs_loc=initrd
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root.$rootfs_type
-
-kernelimage=zImage
-#kernelimage=uImage
-#kernelimage=Image
-#kernelimage=Image.lzo
-
-autoboot_timeout=3
-
-bootargs="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;31m[barebox@\h]:\w\e[0m\n# "
diff --git a/arch/arm/boards/highbank/env/config-board b/arch/arm/boards/highbank/env/config-board
new file mode 100644
index 0000000..a64d9e3
--- /dev/null
+++ b/arch/arm/boards/highbank/env/config-board
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=highbank
+global.allow_color=true
+global.autoboot_timeout=3
+global.bootm.oftree="/dev/dtb"
+global.linux.bootargs.base="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
+global.boot.default=/env/boot.d
diff --git a/arch/arm/boards/highbank/env/data/oftree b/arch/arm/boards/highbank/env/data/oftree
new file mode 100644
index 0000000..9a94b31
--- /dev/null
+++ b/arch/arm/boards/highbank/env/data/oftree
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+#device tree provided by the firmware
+global.bootm.oftree="/dev/dtb"
diff --git a/arch/arm/boards/highbank/env/bin/init_board b/arch/arm/boards/highbank/env/init/001-dtb-probe
similarity index 100%
rename from arch/arm/boards/highbank/env/bin/init_board
rename to arch/arm/boards/highbank/env/init/001-dtb-probe
diff --git a/arch/arm/boards/highbank/env/init/automount b/arch/arm/boards/highbank/env/init/automount
new file mode 100644
index 0000000..2c283c6
--- /dev/null
+++ b/arch/arm/boards/highbank/env/init/automount
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+# SD card slot, boot partition
+mkdir -p /mnt/mmc-boot
+automount -d /mnt/mmc 'mount /dev/disk0.boot /mnt/mmc-boot'
+
+# SD card slot, first partition
+mkdir -p /mnt/mmc
+automount -d /mnt/mmc 'mount /dev/disk0.0 /mnt/mmc'
+
+# AHCI, boot partition
+mkdir -p /mnt/ahci-boot
+automount -d /mnt/ahci 'mount /dev/ata0.boot /mnt/ahci-boot'
+
+# AHCI, first partition
+mkdir -p /mnt/ahci
+automount -d /mnt/ahci 'mount /dev/ata0.0 /mnt/ahci'
diff --git a/arch/arm/boards/highbank/env/init/bootseq b/arch/arm/boards/highbank/env/init/bootseq
new file mode 100644
index 0000000..7a76759
--- /dev/null
+++ b/arch/arm/boards/highbank/env/init/bootseq
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mkdir /env/boot.d
+ln /env/boot/ahci /env/boot.d/010
+ln /env/boot/mmc /env/boot.d/011
+ln /env/boot/net /env/boot.d/012
diff --git a/arch/arm/boards/highbank/env/init/ps1 b/arch/arm/boards/highbank/env/init/ps1
new file mode 100644
index 0000000..a94acc1
--- /dev/null
+++ b/arch/arm/boards/highbank/env/init/ps1
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+/env/config
+
+if [ ${global.allow_color} = "true" ]; then
+	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
+else
+	export PS1="barebox@\h:\w\n# "
+fi
diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
index 47c6405..9cfe539 100644
--- a/arch/arm/mach-highbank/Kconfig
+++ b/arch/arm/mach-highbank/Kconfig
@@ -12,6 +12,7 @@ choice
 
 config MACH_HIGHBANK
 	bool "Calxeda Highbank"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
