Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYqfD-00032Y-0k
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 11:02:22 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Dec 2018 12:02:06 +0100
Message-Id: <20181217110206.16269-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1] MIPS: bcm47xx: migrate to multiimage
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

dlink-dir-320 has no meaning full lowlevel init, so add
a generic one. This should be enough to use it as second stage
loader with multiimage support.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/Kconfig                             |  3 +++
 arch/mips/boards/dlink-dir-320/Makefile       |  1 +
 arch/mips/boards/dlink-dir-320/lowlevel.S     | 22 +++++++++++++++++++
 ...nk-dir-320_defconfig => bcm47xx_defconfig} |  4 ++--
 arch/mips/dts/Makefile                        |  1 +
 .../mips/mach-bcm47xx/include/mach/debug_ll.h |  1 -
 images/Makefile                               |  1 +
 images/Makefile.bcm47xx                       |  4 ++++
 8 files changed, 34 insertions(+), 3 deletions(-)
 create mode 100644 arch/mips/boards/dlink-dir-320/lowlevel.S
 rename arch/mips/configs/{dlink-dir-320_defconfig => bcm47xx_defconfig} (94%)
 create mode 100644 images/Makefile.bcm47xx

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 305e5cd278..606b5959f6 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -90,6 +90,9 @@ config MACH_MIPS_BCM47XX
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select HAS_DEBUG_LL
+	select HAVE_IMAGE_COMPRESSION
+	select HAVE_PBL_IMAGE
+	select HAS_NMON
 
 config MACH_MIPS_LOONGSON
 	bool "Loongson-based boards"
diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
index dcfc2937d3..01c7a259e9 100644
--- a/arch/mips/boards/dlink-dir-320/Makefile
+++ b/arch/mips/boards/dlink-dir-320/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/mips/boards/dlink-dir-320/lowlevel.S b/arch/mips/boards/dlink-dir-320/lowlevel.S
new file mode 100644
index 0000000000..9f3bd5dead
--- /dev/null
+++ b/arch/mips/boards/dlink-dir-320/lowlevel.S
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright 2018 Oleksij Rempel <o.rempel@pengutronix.de>, Pengutronix
+ */
+
+#define BOARD_PBL_START start_dlink_dir_320
+
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <mach/debug_ll.h>
+#include <asm/pbl_nmon.h>
+
+ENTRY_FUNCTION(BOARD_PBL_START)
+
+	mips_barebox_10h
+
+	mips_disable_interrupts
+
+	/* CPU/SoC specific setup ... */
+	/* ... absent */
+
+ENTRY_FUNCTION_END(BOARD_PBL_START, dlink_dir_320)
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/bcm47xx_defconfig
similarity index 94%
rename from arch/mips/configs/dlink-dir-320_defconfig
rename to arch/mips/configs/bcm47xx_defconfig
index ff0638a8c6..04833ef2e0 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/bcm47xx_defconfig
@@ -1,6 +1,5 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="dlink-dir-320"
 CONFIG_MACH_MIPS_BCM47XX=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -10,6 +9,7 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_POLLER=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index 83309ba73c..7485f85a14 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -6,6 +6,7 @@ endif
 pbl-dtb-$(CONFIG_BOARD_8DEVICES_LIMA) += qca4531-8devices-lima.dtb.o
 pbl-dtb-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
 pbl-dtb-$(CONFIG_BOARD_CI20) += img-ci20.dtb.o
+pbl-dtb-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320.dtb.o
 pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
 pbl-dtb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
 pbl-dtb-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
index 3e74e0f670..1e474e2d3b 100644
--- a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
+++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
@@ -21,7 +21,6 @@
 #ifndef __INCLUDE_ARCH_DEBUG_LL_H__
 #define   __INCLUDE_ARCH_DEBUG_LL_H__
 
-#include <io.h>
 #include <mach/hardware.h>
 
 #define DEBUG_LL_UART_SHIFT	0
diff --git a/images/Makefile b/images/Makefile
index 1cf166b060..82ca02df66 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -98,6 +98,7 @@ include $(srctree)/images/Makefile.am35xx
 include $(srctree)/images/Makefile.ar231x
 include $(srctree)/images/Makefile.ath79
 include $(srctree)/images/Makefile.bcm283x
+include $(srctree)/images/Makefile.bcm47xx
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.loongson
 include $(srctree)/images/Makefile.malta
diff --git a/images/Makefile.bcm47xx b/images/Makefile.bcm47xx
new file mode 100644
index 0000000000..65a31fc71a
--- /dev/null
+++ b/images/Makefile.bcm47xx
@@ -0,0 +1,4 @@
+pblb-$(CONFIG_BOARD_DLINK_DIR320) += start_dlink_dir_320
+FILE_barebox-dlink-dir-320.img = start_dlink_dir_320.pblb
+image-$(CONFIG_BOARD_DLINK_DIR320) += barebox-dlink-dir-320.img
+
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
