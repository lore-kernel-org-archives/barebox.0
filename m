Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZO0Ji-0005BG-0G
 for barebox@lists.infradead.org; Sat, 08 Aug 2015 09:21:27 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat,  8 Aug 2015 11:17:08 +0200
Message-Id: <1439025428-3163-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] ARM: pxa: zylonite: convert to generic default environment
To: barebox@lists.infradead.org

Convert zylonite board to the generic environment, and make consistent
with lubbock and mainstone boards.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/zylonite/board.c                   |  3 +++
 arch/arm/boards/zylonite/env/bin/init              | 25 ----------------------
 arch/arm/boards/zylonite/env/bin/mtd_env_override  |  4 ----
 arch/arm/boards/zylonite/env/boot/nand-ubi         |  5 +++++
 arch/arm/boards/zylonite/env/config                |  6 ------
 arch/arm/boards/zylonite/env/init/mtdparts-nand    | 11 ++++++++++
 arch/arm/boards/zylonite/env/nv/hostname           |  1 +
 .../arm/boards/zylonite/env/nv/linux.bootargs.base |  1 +
 .../boards/zylonite/env/nv/linux.bootargs.console  |  1 +
 arch/arm/configs/zylonite310_defconfig             | 12 ++---------
 10 files changed, 24 insertions(+), 45 deletions(-)
 delete mode 100644 arch/arm/boards/zylonite/env/bin/init
 delete mode 100644 arch/arm/boards/zylonite/env/bin/mtd_env_override
 create mode 100644 arch/arm/boards/zylonite/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/zylonite/env/config
 create mode 100644 arch/arm/boards/zylonite/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/zylonite/env/nv/hostname
 create mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.console

diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index dabc6ff..2caadbc 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -28,6 +28,7 @@
 #include <net/smc91111.h>
 #include <platform_data/mtd-nand-mrvl.h>
 #include <pwm.h>
+#include <linux/sizes.h>
 
 #include <mach/devices.h>
 #include <mach/mfp-pxa3xx.h>
@@ -66,6 +67,8 @@ static int zylonite_devices_init(void)
 			   &smsc91x_pdata);
 	add_generic_device("mrvl_nand", DEVICE_ID_DYNAMIC, NULL,
 			   0x43100000, 0x1000, IORESOURCE_MEM, &nand_pdata);
+	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED,
+			    "env0");
 	return 0;
 }
 device_initcall(zylonite_devices_init);
diff --git a/arch/arm/boards/zylonite/env/bin/init b/arch/arm/boards/zylonite/env/bin/init
deleted file mode 100644
index a6bc087..0000000
--- a/arch/arm/boards/zylonite/env/bin/init
+++ /dev/null
@@ -1,25 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-addpart /dev/nand0 $mtdparts
-usbserial -s "Zylonite usb gadget"
-
-# Phase1: check for MTD override
-mtd_env_override
-if [ $? = 0 ]; then
-    echo "Switching to custom environment"
-    /env/init
-    exit
-fi
-
-# Phase2: initiate network
-dhcp -H zylonite
-
-# Phase3: activate netconsole, broadcast everywhere
-netconsole.ip=255.255.255.255
-netconsole.active=ioe
-netconsole.port=6666
-
diff --git a/arch/arm/boards/zylonite/env/bin/mtd_env_override b/arch/arm/boards/zylonite/env/bin/mtd_env_override
deleted file mode 100644
index 6ea253a..0000000
--- a/arch/arm/boards/zylonite/env/bin/mtd_env_override
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-
-loadenv /dev/nand0.barebox-env
-exit $?
diff --git a/arch/arm/boards/zylonite/env/boot/nand-ubi b/arch/arm/boards/zylonite/env/boot/nand-ubi
new file mode 100644
index 0000000..2231738
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/boot/nand-ubi
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel"
+#global.bootm.oftree="/env/oftree"
+global.linux.bootargs.dyn.root="root=ubi0:linux_root ubi.mtd=nand.root rootfstype=ubifs"
diff --git a/arch/arm/boards/zylonite/env/config b/arch/arm/boards/zylonite/env/config
deleted file mode 100644
index ee66e37..0000000
--- a/arch/arm/boards/zylonite/env/config
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-autoboot_timeout=3
-
-mtdparts="128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)"
-bootargs="$bootargs mtdparts=pxa3xx_nand-0:$mtdparts ubi.mtd=5 rootfstype=ubifs root=ubi0:root ro ram=64M console=ttyS0,115200"
diff --git a/arch/arm/boards/zylonite/env/init/mtdparts-nand b/arch/arm/boards/zylonite/env/init/mtdparts-nand
new file mode 100644
index 0000000..9db4652
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+        init-menu-add-entry "$0" "NAND partitions"
+        exit
+fi
+
+mtdparts="128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)"
+kernelname="pxa3xx_nand-0"
+
+mtdparts-add -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/zylonite/env/nv/hostname b/arch/arm/boards/zylonite/env/nv/hostname
new file mode 100644
index 0000000..6e6d865
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/nv/hostname
@@ -0,0 +1 @@
+zylonite
diff --git a/arch/arm/boards/zylonite/env/nv/linux.bootargs.base b/arch/arm/boards/zylonite/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..317f8b1
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+ram=64M
diff --git a/arch/arm/boards/zylonite/env/nv/linux.bootargs.console b/arch/arm/boards/zylonite/env/nv/linux.bootargs.console
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
index fa6587c..ffe3215 100644
--- a/arch/arm/configs/zylonite310_defconfig
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -8,17 +8,17 @@ CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_SIZE=0x800000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MODULES=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="zylonite-barebox:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/zylonite/env"
 CONFIG_RESET_SOURCE=y
 CONFIG_DEFAULT_LOGLEVEL=8
@@ -27,8 +27,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_FLEXIBLE_BOOTARGS=y
-CONFIG_CMD_BOOT=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
@@ -40,26 +38,20 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_SAVES=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_AUTOMOUNT=y
 CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
-CONFIG_CMD_GLOBAL=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_BASENAME=y
 CONFIG_CMD_CMP=y
-CONFIG_CMD_DIRNAME=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LET=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_HOST=y
-CONFIG_NET_CMD_IFUP=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
