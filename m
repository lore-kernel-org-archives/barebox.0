Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkuII-00049T-GW
 for barebox@lists.infradead.org; Thu, 15 May 2014 11:57:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 13:57:20 +0200
Message-Id: <1400155042-30101-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: AM335x: phycore: change to
 defaultenv_append_directory
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-am335x/Makefile                |  1 +
 arch/arm/boards/phytec-phycore-am335x/board.c                 |  2 ++
 .../phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc  | 10 ++++++++++
 .../phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand | 10 ++++++++++
 .../phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi  | 11 +++++++++++
 .../defaultenv-phycore-am335x/config-board                    |  7 +++++++
 arch/arm/boards/phytec-phycore-am335x/env/boot/mmc            | 10 ----------
 arch/arm/boards/phytec-phycore-am335x/env/boot/nand           | 10 ----------
 arch/arm/boards/phytec-phycore-am335x/env/boot/spi            | 11 -----------
 arch/arm/boards/phytec-phycore-am335x/env/config-board        |  7 -------
 arch/arm/configs/phytec-phycore-am335x_defconfig              |  1 -
 11 files changed, 41 insertions(+), 39 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board
 delete mode 100644 arch/arm/boards/phytec-phycore-am335x/env/boot/mmc
 delete mode 100644 arch/arm/boards/phytec-phycore-am335x/env/boot/nand
 delete mode 100644 arch/arm/boards/phytec-phycore-am335x/env/boot/spi
 delete mode 100644 arch/arm/boards/phytec-phycore-am335x/env/config-board

diff --git a/arch/arm/boards/phytec-phycore-am335x/Makefile b/arch/arm/boards/phytec-phycore-am335x/Makefile
index 092c31d..173a6b6 100644
--- a/arch/arm/boards/phytec-phycore-am335x/Makefile
+++ b/arch/arm/boards/phytec-phycore-am335x/Makefile
@@ -1,2 +1,3 @@
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-y += defaultenv-phycore-am335x
diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
index 59de42b..5ff6511 100644
--- a/arch/arm/boards/phytec-phycore-am335x/board.c
+++ b/arch/arm/boards/phytec-phycore-am335x/board.c
@@ -23,6 +23,7 @@
 #include <init.h>
 #include <io.h>
 #include <sizes.h>
+#include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
@@ -67,6 +68,7 @@ static int pcm051_devices_init(void)
 
 	omap_set_barebox_part(&pcm051_barebox_part);
 	armlinux_set_architecture(MACH_TYPE_PCM051);
+	defaultenv_append_directory(defaultenv_phycore_am335x);
 
 	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
 
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc
new file mode 100644
index 0000000..93a2357
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
+	exit
+fi
+
+global.bootm.image=/boot/uImage
+#global.bootm.oftree=/boot/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand
new file mode 100644
index 0000000..22d657e
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand
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
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root,2048 rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi
new file mode 100644
index 0000000..2d10184
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+        boot-menu-add-entry "$0" "SPI NOR Flash"
+        exit
+fi
+
+global.bootm.image="/dev/m25p0.kernel"
+
+# Use rootfs form NAND for now as rootfs partition < 4MB
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root,2048 rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board
new file mode 100644
index 0000000..7f0b2b7
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=pcm051
+global.linux.bootargs.base="console=ttyO0,115200"
diff --git a/arch/arm/boards/phytec-phycore-am335x/env/boot/mmc b/arch/arm/boards/phytec-phycore-am335x/env/boot/mmc
deleted file mode 100644
index 93a2357..0000000
--- a/arch/arm/boards/phytec-phycore-am335x/env/boot/mmc
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
-	exit
-fi
-
-global.bootm.image=/boot/uImage
-#global.bootm.oftree=/boot/oftree
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/phytec-phycore-am335x/env/boot/nand b/arch/arm/boards/phytec-phycore-am335x/env/boot/nand
deleted file mode 100644
index 22d657e..0000000
--- a/arch/arm/boards/phytec-phycore-am335x/env/boot/nand
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root,2048 rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-am335x/env/boot/spi b/arch/arm/boards/phytec-phycore-am335x/env/boot/spi
deleted file mode 100644
index 2d10184..0000000
--- a/arch/arm/boards/phytec-phycore-am335x/env/boot/spi
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "SPI NOR Flash"
-        exit
-fi
-
-global.bootm.image="/dev/m25p0.kernel"
-
-# Use rootfs form NAND for now as rootfs partition < 4MB
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root,2048 rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-am335x/env/config-board b/arch/arm/boards/phytec-phycore-am335x/env/config-board
deleted file mode 100644
index 7f0b2b7..0000000
--- a/arch/arm/boards/phytec-phycore-am335x/env/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=pcm051
-global.linux.bootargs.base="console=ttyO0,115200"
diff --git a/arch/arm/configs/phytec-phycore-am335x_defconfig b/arch/arm/configs/phytec-phycore-am335x_defconfig
index c74116b..cb06183 100644
--- a/arch/arm/configs/phytec-phycore-am335x_defconfig
+++ b/arch/arm/configs/phytec-phycore-am335x_defconfig
@@ -22,7 +22,6 @@ CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-am335x/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
