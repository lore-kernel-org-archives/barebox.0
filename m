Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueA8-000218-HN
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E031DA00492
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:52 +0100
Message-Id: <1446805318-26691-5-git-send-email-s.christ@phytec.de>
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 04/10] ARM: phytec-som-imx6: update environment
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

Rename sd-ext3 to mmc, remove filesystem type from bootargs and remove
bootargs-ip. Add init script 'bootsource' to set boot source priority
and bootscript 'spi' for SPI NOR.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../phytec-som-imx6/defaultenv-physom-imx6/boot/mmc       |  5 +++++
 .../phytec-som-imx6/defaultenv-physom-imx6/boot/nand      |  1 -
 .../phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3   |  6 ------
 .../phytec-som-imx6/defaultenv-physom-imx6/boot/spi       |  5 +++++
 .../defaultenv-physom-imx6/init/bootsource                | 15 +++++++++++++++
 .../defaultenv-physom-imx6/nv/boot.default                |  1 -
 6 files changed, 25 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
 delete mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource
 delete mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/nv/boot.default

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
new file mode 100644
index 0000000..332fc26
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/mmc/linuximage"
+global.bootm.oftree="/mnt/mmc/oftree"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
index 79dc03c..a23aa21 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
@@ -2,5 +2,4 @@
 
 global.bootm.image="/dev/nand0.kernel.bb"
 global.bootm.oftree="/dev/nand0.oftree.bb"
-bootargs-ip
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3 b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3
deleted file mode 100644
index fd35fe0..0000000
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/mnt/mmc/linuximage"
-global.bootm.oftree="/mnt/mmc/oftree"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
new file mode 100644
index 0000000..2000a16
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/dev/m25p0.kernel"
+global.bootm.oftree="/dev/m25p0.oftree"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource
new file mode 100644
index 0000000..3f2ff4b
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	global.boot.default="mmc nand spi net"
+elif [ $bootsource = nand ]; then
+	global.boot.default="nand spi mmc net"
+elif [ $bootsource = spi ]; then
+	global.boot.default="spi nand mmc net"
+elif [ $bootsource = net ]; then
+	global.boot.default="net nand spi mmc"
+fi
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/nv/boot.default b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/nv/boot.default
deleted file mode 100644
index 026a25c..0000000
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-nand
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
