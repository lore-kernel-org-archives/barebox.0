Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001Lz-BT
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 42F2DA004FC
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:47 +0200
Message-Id: <1461751489-13302-14-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 13/15] ARM: phytec-som-imx6: rename environment folder
To: barebox@lists.infradead.org

The extra environment folder for the phyCORE-i.MX6 had the suffix
'-mira'. That's the name of a baseboard. Since the bootloader is generic
for all baseboards, use a generic suffix for the environment folder.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/Makefile              |  2 +-
 arch/arm/boards/phytec-som-imx6/board.c               |  2 +-
 .../defaultenv-physom-imx6-mira/boot/emmc             |  5 -----
 .../defaultenv-physom-imx6-mira/init/automount        | 17 -----------------
 .../defaultenv-physom-imx6-mira/init/bootsource       | 19 -------------------
 .../defaultenv-physom-imx6-phycore/boot/emmc          |  5 +++++
 .../defaultenv-physom-imx6-phycore/init/automount     | 17 +++++++++++++++++
 .../defaultenv-physom-imx6-phycore/init/bootsource    | 19 +++++++++++++++++++
 8 files changed, 43 insertions(+), 43 deletions(-)
 delete mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
 delete mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
 delete mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource

diff --git a/arch/arm/boards/phytec-som-imx6/Makefile b/arch/arm/boards/phytec-som-imx6/Makefile
index c61e9cd..2f9c4a8 100644
--- a/arch/arm/boards/phytec-som-imx6/Makefile
+++ b/arch/arm/boards/phytec-som-imx6/Makefile
@@ -1,4 +1,4 @@
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-physom-imx6
-bbenv-y += defaultenv-physom-imx6-mira
+bbenv-y += defaultenv-physom-imx6-phycore
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 64f5ff0..4445b07 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -163,7 +163,7 @@ static int physom_imx6_devices_init(void)
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
-		defaultenv_append_directory(defaultenv_physom_imx6_mira);
+		defaultenv_append_directory(defaultenv_physom_imx6_phycore);
 	}
 
 	return 0;
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
deleted file mode 100644
index e3cc9e3..0000000
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/mnt/emmc/linuximage"
-global.bootm.oftree="/mnt/emmc/oftree"
-global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
deleted file mode 100644
index a059e19..0000000
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
+++ /dev/null
@@ -1,17 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
-# automount tftp server based on $eth0.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
-
-mkdir -p /mnt/mmc
-automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
-
-mkdir -p /mnt/emmc
-automount -d /mnt/emmc 'mmc3.probe=1 && [ -e /dev/mmc3.0 ] && mount /dev/mmc3.0 /mnt/emmc'
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource
deleted file mode 100644
index 515613b..0000000
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-if [ -n "$nv.boot.default" ]; then
-	exit
-fi
-
-if [ $bootsource = mmc ]; then
-	if [ $bootsource_instance = 0 ]; then
-		global.boot.default="mmc emmc nand spi net"
-	elif [ $bootsource_instance = 3 ]; then
-		global.boot.default="emmc mmc nand spi net"
-	fi
-elif [ $bootsource = nand ]; then
-	global.boot.default="nand spi emmc mmc net"
-elif [ $bootsource = spi ]; then
-	global.boot.default="spi nand emmc mmc net"
-elif [ $bootsource = net ]; then
-	global.boot.default="net nand spi emmc mmc"
-fi
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/boot/emmc
new file mode 100644
index 0000000..e3cc9e3
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/boot/emmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/emmc/linuximage"
+global.bootm.oftree="/mnt/emmc/oftree"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
new file mode 100644
index 0000000..a059e19
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
@@ -0,0 +1,17 @@
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
+mkdir -p /mnt/mmc
+automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
+
+mkdir -p /mnt/emmc
+automount -d /mnt/emmc 'mmc3.probe=1 && [ -e /dev/mmc3.0 ] && mount /dev/mmc3.0 /mnt/emmc'
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource
new file mode 100644
index 0000000..515613b
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	if [ $bootsource_instance = 0 ]; then
+		global.boot.default="mmc emmc nand spi net"
+	elif [ $bootsource_instance = 3 ]; then
+		global.boot.default="emmc mmc nand spi net"
+	fi
+elif [ $bootsource = nand ]; then
+	global.boot.default="nand spi emmc mmc net"
+elif [ $bootsource = spi ]; then
+	global.boot.default="spi nand emmc mmc net"
+elif [ $bootsource = net ]; then
+	global.boot.default="net nand spi emmc mmc"
+fi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
