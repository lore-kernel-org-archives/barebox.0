Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkuID-00049P-KK
 for barebox@lists.infradead.org; Thu, 15 May 2014 11:57:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 13:57:21 +0200
Message-Id: <1400155042-30101-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400155042-30101-1-git-send-email-s.hauer@pengutronix.de>
References: <1400155042-30101-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: AM335x: beaglebone: change to
 defaultenv_append_directory
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/Makefile                   |  1 +
 arch/arm/boards/beaglebone/board.c                    |  3 +++
 .../boards/beaglebone/defaultenv-beaglebone/boot/sd   | 11 +++++++++++
 .../boards/beaglebone/defaultenv-beaglebone/config    | 19 +++++++++++++++++++
 arch/arm/boards/beaglebone/env/boot/sd                | 11 -----------
 arch/arm/boards/beaglebone/env/config                 | 19 -------------------
 arch/arm/configs/am335x_beaglebone_defconfig          |  1 -
 7 files changed, 34 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/config
 delete mode 100644 arch/arm/boards/beaglebone/env/boot/sd
 delete mode 100644 arch/arm/boards/beaglebone/env/config

diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
index 092c31d..21a1a29 100644
--- a/arch/arm/boards/beaglebone/Makefile
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -1,2 +1,3 @@
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-y += defaultenv-beaglebone
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index ad0d3b3..993d05b 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -29,6 +29,7 @@
 #include <globalvar.h>
 #include <sizes.h>
 #include <net.h>
+#include <envfs.h>
 #include <bootsource.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -66,6 +67,8 @@ static int beaglebone_devices_init(void)
 
 	black = is_beaglebone_black();
 
+	defaultenv_append_directory(defaultenv_beaglebone);
+
 	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
 
 	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
new file mode 100644
index 0000000..dce0605
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
+	exit
+fi
+
+global.bootm.image=/boot/uImage
+global.bootm.oftree=/boot/oftree
+#global.bootm.initrd=<path to initrd>
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/config b/arch/arm/boards/beaglebone/defaultenv-beaglebone/config
new file mode 100644
index 0000000..fbfa7d5
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/config
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+# change network settings in /env/network/eth0
+# change mtd partition settings and automountpoints in /env/init/*
+
+# set to false if you do not want to have colors
+global.allow_color=true
+
+# user (used for network filenames)
+global.user=none
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=3
+
+# default boot entry (one of /env/boot/*)
+global.boot.default=sd
+
+# base bootargs
+global.linux.bootargs.base="console=ttyO0,115200n8"
diff --git a/arch/arm/boards/beaglebone/env/boot/sd b/arch/arm/boards/beaglebone/env/boot/sd
deleted file mode 100644
index dce0605..0000000
--- a/arch/arm/boards/beaglebone/env/boot/sd
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
-	exit
-fi
-
-global.bootm.image=/boot/uImage
-global.bootm.oftree=/boot/oftree
-#global.bootm.initrd=<path to initrd>
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
diff --git a/arch/arm/boards/beaglebone/env/config b/arch/arm/boards/beaglebone/env/config
deleted file mode 100644
index fbfa7d5..0000000
--- a/arch/arm/boards/beaglebone/env/config
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-# change network settings in /env/network/eth0
-# change mtd partition settings and automountpoints in /env/init/*
-
-# set to false if you do not want to have colors
-global.allow_color=true
-
-# user (used for network filenames)
-global.user=none
-
-# timeout in seconds before the default boot entry is started
-global.autoboot_timeout=3
-
-# default boot entry (one of /env/boot/*)
-global.boot.default=sd
-
-# base bootargs
-global.linux.bootargs.base="console=ttyO0,115200n8"
diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index 857b89c..d9b9e39 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -19,7 +19,6 @@ CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/beaglebone/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_MSLEEP=y
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
