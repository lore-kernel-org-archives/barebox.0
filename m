Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRD27-0000f4-1S
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:18:35 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Nov 2018 10:18:05 +0100
Message-Id: <20181126091807.19398-9-o.rempel@pengutronix.de>
In-Reply-To: <20181126091807.19398-1-o.rempel@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 08/10] MIPS: port all mach* to multiimage
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/Kconfig                             |  7 ++
 arch/mips/Makefile                            | 28 +-----
 arch/mips/boards/8devices-lima/Makefile       |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 27 ++----
 arch/mips/boards/Makefile                     | 11 +++
 arch/mips/boards/black-swift/Makefile         |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 17 ++--
 .../boards/dptechnics-dpt-module/Makefile     |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 14 +--
 arch/mips/boards/img-ci20/Makefile            |  1 +
 .../boards/img-ci20/include/board/debug_ll.h  | 23 -----
 .../board/board_pbl_start.h => lowlevel.S}    | 14 ++-
 arch/mips/boards/loongson-ls1b/Makefile       |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 14 ++-
 arch/mips/boards/netgear-wg102/Makefile       |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 20 +++--
 arch/mips/boards/qemu-malta/Makefile          |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 16 ++--
 arch/mips/boards/ritmix-rzx50/Makefile        |  1 +
 .../ritmix-rzx50/include/board/debug_ll.h     | 23 -----
 .../board/board_pbl_start.h => lowlevel.S}    | 14 ++-
 arch/mips/boards/tplink-mr3020/Makefile       |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 17 ++--
 arch/mips/boards/tplink-wdr4300/Makefile      |  1 +
 .../board/board_pbl_start.h => lowlevel.S}    | 27 ++----
 arch/mips/boot/Makefile                       |  2 +-
 arch/mips/boot/start-pbl.S                    |  1 -
 arch/mips/configs/8devices-lima_defconfig     | 83 -----------------
 ...plink-mr3020_defconfig => ath79_defconfig} |  9 +-
 arch/mips/configs/black-swift_defconfig       | 54 -----------
 .../configs/dptechnics-dpt-module_defconfig   | 89 -------------------
 arch/mips/configs/img-ci20_defconfig          | 45 ----------
 arch/mips/configs/qemu-malta_defconfig        | 12 +--
 arch/mips/configs/tplink-wdr4300_defconfig    | 82 -----------------
 ...itmix-rzx50_defconfig => xburst_defconfig} |  8 +-
 arch/mips/dts/Makefile                        | 15 +++-
 arch/mips/mach-ar231x/include/mach/debug_ll.h |  2 +-
 arch/mips/mach-ath79/Kconfig                  | 20 ++++-
 arch/mips/mach-ath79/include/mach/debug_ll.h  | 12 ++-
 .../mach-ath79/include/mach/debug_ll_ar9331.h |  2 +-
 .../mach-ath79/include/mach/debug_ll_ar9344.h |  4 +-
 .../mips/mach-ath79/include/mach/pbl_macros.h |  5 +-
 arch/mips/mach-loongson/Kconfig               |  1 +
 .../mach-loongson/include/mach/debug_ll.h     |  2 +-
 arch/mips/mach-malta/Kconfig                  |  9 +-
 arch/mips/mach-malta/include/mach/debug_ll.h  | 10 ++-
 arch/mips/mach-xburst/Kconfig                 | 14 ++-
 arch/mips/mach-xburst/include/mach/debug_ll.h | 14 ++-
 images/Makefile                               |  7 +-
 images/Makefile.ar231x                        |  3 +
 images/Makefile.ath79                         | 20 +++++
 images/Makefile.loongson                      |  3 +
 images/Makefile.malta                         |  3 +
 images/Makefile.xburst                        |  7 ++
 54 files changed, 253 insertions(+), 567 deletions(-)
 create mode 100644 arch/mips/boards/8devices-lima/Makefile
 rename arch/mips/boards/8devices-lima/{include/board/board_pbl_start.h => lowlevel.S} (78%)
 create mode 100644 arch/mips/boards/Makefile
 rename arch/mips/boards/black-swift/{include/board/board_pbl_start.h => lowlevel.S} (84%)
 create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
 rename arch/mips/boards/dptechnics-dpt-module/{include/board/board_pbl_start.h => lowlevel.S} (55%)
 delete mode 100644 arch/mips/boards/img-ci20/include/board/debug_ll.h
 rename arch/mips/boards/img-ci20/{include/board/board_pbl_start.h => lowlevel.S} (85%)
 rename arch/mips/boards/loongson-ls1b/{include/board/board_pbl_start.h => lowlevel.S} (83%)
 rename arch/mips/boards/netgear-wg102/{include/board/board_pbl_start.h => lowlevel.S} (87%)
 rename arch/mips/boards/qemu-malta/{include/board/board_pbl_start.h => lowlevel.S} (92%)
 delete mode 100644 arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
 rename arch/mips/boards/ritmix-rzx50/{include/board/board_pbl_start.h => lowlevel.S} (85%)
 rename arch/mips/boards/tplink-mr3020/{include/board/board_pbl_start.h => lowlevel.S} (84%)
 rename arch/mips/boards/tplink-wdr4300/{include/board/board_pbl_start.h => lowlevel.S} (77%)
 delete mode 100644 arch/mips/configs/8devices-lima_defconfig
 rename arch/mips/configs/{tplink-mr3020_defconfig => ath79_defconfig} (90%)
 delete mode 100644 arch/mips/configs/black-swift_defconfig
 delete mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
 delete mode 100644 arch/mips/configs/img-ci20_defconfig
 delete mode 100644 arch/mips/configs/tplink-wdr4300_defconfig
 rename arch/mips/configs/{ritmix-rzx50_defconfig => xburst_defconfig} (89%)
 create mode 100644 images/Makefile.ar231x
 create mode 100644 images/Makefile.ath79
 create mode 100644 images/Makefile.loongson
 create mode 100644 images/Makefile.malta
 create mode 100644 images/Makefile.xburst

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 524375a81a..3934b803a5 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -58,6 +58,9 @@ config MACH_MIPS_MALTA
 	select HAS_DEBUG_LL
 	select GPIOLIB
 	select HW_HAS_PCI
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAVE_PBL_MULTI_IMAGES
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
@@ -67,6 +70,8 @@ config MACH_MIPS_AR231X
 	select CSRC_R4K_LIB
 	select DRIVER_SERIAL_NS16550
 	select HAS_DEBUG_LL
+	select HAVE_IMAGE_COMPRESSION
+	select HAVE_PBL_MULTI_IMAGES
 
 config MACH_MIPS_ATH79
 	bool "Atheros AR71XX/AR724X/AR913X/AR933X based boards"
@@ -80,6 +85,7 @@ config MACH_MIPS_ATH79
 	select CLKDEV_LOOKUP
 	select OFTREE
 	select GPIOLIB
+	select HAVE_PBL_MULTI_IMAGES
 
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
@@ -101,6 +107,7 @@ config MACH_MIPS_XBURST
 	select HAS_DEBUG_LL
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
+	select HAVE_PBL_MULTI_IMAGES
 	select HAS_NMON
 	select GPIOLIB
 endchoice
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 6338dc174d..422e844d9f 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -73,28 +73,11 @@ endif
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
-board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
-
 machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
-board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
-
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
-board-$(CONFIG_BOARD_8DEVICES_LIMA)	:= 8devices-lima
-board-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE)	:= dptechnics-dpt-module
-board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
-board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
-board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
-
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
-board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
-
 machine-$(CONFIG_MACH_MIPS_LOONGSON)	:= loongson
-board-$(CONFIG_BOARD_LOONGSON_TECH_LS1B)	:= loongson-ls1b
-
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
-board-$(CONFIG_BOARD_RZX50)	:= ritmix-rzx50
-board-$(CONFIG_BOARD_CI20)	:= img-ci20
-
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
@@ -108,12 +91,6 @@ incdir-y := $(machine-y)
 endif
 INCDIR   := arch-$(incdir-y)
 
-ifneq ($(board-y),)
-BOARD := arch/mips/boards/$(board-y)/
-else
-BOARD :=
-endif
-
 ifeq ($(KBUILD_SRC),)
 CPPFLAGS += -I$(BOARD)/include
 else
@@ -133,8 +110,7 @@ endif
 common-y += $(MACH)
 common-y += arch/mips/lib/
 common-y += arch/mips/boot/
-
-common-$(CONFIG_BUILTIN_DTB) += arch/mips/dts/
+common-y += arch/mips/boards/
 
 CPPFLAGS += $(cflags-y)
 CFLAGS += $(cflags-y)
@@ -155,4 +131,6 @@ dts := arch/mips/dts
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
 
+common-$(CONFIG_OFTREE) += arch/mips/dts/
+
 KBUILD_IMAGE ?= $(KBUILD_BINARY)
diff --git a/arch/mips/boards/8devices-lima/Makefile b/arch/mips/boards/8devices-lima/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/mips/boards/8devices-lima/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h b/arch/mips/boards/8devices-lima/lowlevel.S
similarity index 78%
rename from arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
rename to arch/mips/boards/8devices-lima/lowlevel.S
index e95aa49256..0ee1ea4628 100644
--- a/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
+++ b/arch/mips/boards/8devices-lima/lowlevel.S
@@ -15,51 +15,40 @@
  *
  */
 
-#include <mach/debug_ll_ar9344.h>
+#define BOARD_PBL_START start_8devices_lima
+
+#include <mach/debug_ll.h>
+#include <asm/asm.h>
 #include <asm/pbl_macros.h>
 #include <mach/pbl_macros.h>
 #include <mach/pbl_ll_init_qca4531.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
-	debug_ll_ar9344_init
-
-	debug_ll_outc '1'
+	debug_ll_ath79_init
 
 	hornet_mips24k_cp0_setup
-	debug_ll_outc '2'
 
 	/* test if we are in the SRAM */
 	pbl_blt 0xbd000000 1f t8
-	debug_ll_outc '3'
 	b skip_flash_test
 	nop
 1:
 	/* test if we are in the flash */
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
-	debug_ll_outc '4'
 skip_flash_test:
 
 	pbl_qca4531_ddr2_550_550_init
 
-	debug_ll_outc '5'
 	/* Initialize caches... */
 	mips_cache_reset
 
 	/* ... and enable them */
 	dcache_enable
 skip_pll_ram_config:
-	debug_ll_outc '6'
-	debug_ll_outnl
-
-	mips_nmon
-
-	copy_to_link_location	pbl_start
 
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_qca4531_8devices_lima_start,
+	__dtb_qca4531_8devices_lima_end)
diff --git a/arch/mips/boards/Makefile b/arch/mips/boards/Makefile
new file mode 100644
index 0000000000..50652f9841
--- /dev/null
+++ b/arch/mips/boards/Makefile
@@ -0,0 +1,11 @@
+obj-$(CONFIG_BOARD_8DEVICES_LIMA) += 8devices-lima/
+obj-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift/
+obj-$(CONFIG_BOARD_CI20) += img-ci20/
+obj-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320/
+obj-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += dptechnics-dpt-module/
+obj-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b/
+obj-$(CONFIG_BOARD_NETGEAR_WG102) += netgear-wg102/
+obj-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta/
+obj-$(CONFIG_BOARD_RZX50) += ritmix-rzx50/
+obj-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020/
+obj-$(CONFIG_BOARD_TPLINK_WDR4300) += tplink-wdr4300/
diff --git a/arch/mips/boards/black-swift/Makefile b/arch/mips/boards/black-swift/Makefile
index dcfc2937d3..092c31d6b2 100644
--- a/arch/mips/boards/black-swift/Makefile
+++ b/arch/mips/boards/black-swift/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/lowlevel.S
similarity index 84%
rename from arch/mips/boards/black-swift/include/board/board_pbl_start.h
rename to arch/mips/boards/black-swift/lowlevel.S
index 4c2ab2ef0f..e3e89ae02d 100644
--- a/arch/mips/boards/black-swift/include/board/board_pbl_start.h
+++ b/arch/mips/boards/black-swift/lowlevel.S
@@ -16,13 +16,15 @@
  *
  */
 
+#define BOARD_PBL_START start_black_swift
+
+#include <mach/debug_ll.h>
 #include <asm/pbl_macros.h>
+#include <asm/asm.h>
 #include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
@@ -45,8 +47,7 @@
 
 skip_pll_ram_config:
 	pbl_ar9331_uart_enable
-	debug_ll_ar9331_init
-	mips_nmon
+	debug_ll_ath79_init
 
 	/*
 	 * It is amazing but we have to enable MDIO on GPIO
@@ -54,7 +55,5 @@ skip_pll_ram_config:
 	 */
 	pbl_ar9331_mdio_gpio_enable
 
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_black_swift_start,
+	__dtb_black_swift_end)
diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/mips/boards/dptechnics-dpt-module/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
similarity index 55%
rename from arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
rename to arch/mips/boards/dptechnics-dpt-module/lowlevel.S
index 9d6b1b86bc..ab6e469492 100644
--- a/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
+++ b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
@@ -6,15 +6,19 @@
  * as published by the Free Software Foundation.
  */
 
+#define BOARD_PBL_START start_dptechnics_dpt_module
+
+#include <mach/debug_ll.h>
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm/asm.h>
 #include <asm/pbl_macros.h>
 #include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	ar9331_pbl_generic_start
 
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_ar9331_dptechnics_dpt_module_start,
+	__dtb_ar9331_dptechnics_dpt_module_end)
diff --git a/arch/mips/boards/img-ci20/Makefile b/arch/mips/boards/img-ci20/Makefile
index dcfc2937d3..092c31d6b2 100644
--- a/arch/mips/boards/img-ci20/Makefile
+++ b/arch/mips/boards/img-ci20/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/mips/boards/img-ci20/include/board/debug_ll.h b/arch/mips/boards/img-ci20/include/board/debug_ll.h
deleted file mode 100644
index 72612cff2b..0000000000
--- a/arch/mips/boards/img-ci20/include/board/debug_ll.h
+++ /dev/null
@@ -1,23 +0,0 @@
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __INCLUDE_CI20_BOARD_DEBUG_LL_H__
-#define __INCLUDE_CI20_BOARD_DEBUG_LL_H__
-
-#include <mach/debug_ll_jz4780.h>
-
-#endif  /* __INCLUDE_CI20_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/boards/img-ci20/include/board/board_pbl_start.h b/arch/mips/boards/img-ci20/lowlevel.S
similarity index 85%
rename from arch/mips/boards/img-ci20/include/board/board_pbl_start.h
rename to arch/mips/boards/img-ci20/lowlevel.S
index 42d23c82a9..ffaf5c81e4 100644
--- a/arch/mips/boards/img-ci20/include/board/board_pbl_start.h
+++ b/arch/mips/boards/img-ci20/lowlevel.S
@@ -17,13 +17,13 @@
  *
  */
 
+#define BOARD_PBL_START start_img_ci20
+
 #include <asm/pbl_macros.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_disable_interrupts
 
@@ -35,9 +35,5 @@
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
-	mips_nmon
-
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_img_ci20_start,
+	__dtb_img_ci20_end)
diff --git a/arch/mips/boards/loongson-ls1b/Makefile b/arch/mips/boards/loongson-ls1b/Makefile
index 31c062987f..ded9867a8e 100644
--- a/arch/mips/boards/loongson-ls1b/Makefile
+++ b/arch/mips/boards/loongson-ls1b/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += serial.o
diff --git a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h b/arch/mips/boards/loongson-ls1b/lowlevel.S
similarity index 83%
rename from arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
rename to arch/mips/boards/loongson-ls1b/lowlevel.S
index a3c585ecba..ba66fc3212 100644
--- a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
+++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
@@ -15,14 +15,14 @@
  *
  */
 
+#define BOARD_PBL_START start_loongson_ls1b
+
 #include <asm/pbl_macros.h>
 #include <mach/loongson1.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
@@ -33,9 +33,5 @@
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
-	mips_nmon
-
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_loongson_ls1b_start,
+	__dtb_loongson_ls1b_end)
diff --git a/arch/mips/boards/netgear-wg102/Makefile b/arch/mips/boards/netgear-wg102/Makefile
index 0899b66c5f..344a6711b2 100644
--- a/arch/mips/boards/netgear-wg102/Makefile
+++ b/arch/mips/boards/netgear-wg102/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += ram.o
diff --git a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h b/arch/mips/boards/netgear-wg102/lowlevel.S
similarity index 87%
rename from arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
rename to arch/mips/boards/netgear-wg102/lowlevel.S
index 9fb220519f..f449d4e051 100644
--- a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
+++ b/arch/mips/boards/netgear-wg102/lowlevel.S
@@ -16,15 +16,15 @@
  *
  */
 
+#define BOARD_PBL_START start_netgear_wg102
+
 #include <asm/pbl_macros.h>
 #include <mach/pbl_macros.h>
 #include <mach/ar2312_regs.h>
 
 #include <mach/debug_ll.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
@@ -71,7 +71,15 @@ sdram_configured:
 	debug_ll_outc 'b'
 	debug_ll_ns16550_outnl
 
-	copy_to_link_location	pbl_start
+	copy_to_link_location	BOARD_PBL_START;
+	stack_setup;
+
+	lw	a0, 0;
+	la	v0, pbl_main_entry;
+	jal	v0;
+	 nop;
 
-	.set	pop
-	.endm
+	/* No return */
+__error:
+	b	__error;
+	 nop;
diff --git a/arch/mips/boards/qemu-malta/Makefile b/arch/mips/boards/qemu-malta/Makefile
index eb072c0161..237a6a5079 100644
--- a/arch/mips/boards/qemu-malta/Makefile
+++ b/arch/mips/boards/qemu-malta/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += init.o
diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/lowlevel.S
similarity index 92%
rename from arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
rename to arch/mips/boards/qemu-malta/lowlevel.S
index 5c1537262e..038f114f00 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -17,6 +17,9 @@
  *
  */
 
+#define BOARD_PBL_START start_qemu_malta
+
+#include <asm/asm.h>
 #include <asm/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 
@@ -39,10 +42,7 @@
 #define	GT_LD(x)	(GT_CPU_TO_LE32(((x) >> 21) & 0x7fff))
 #define	GT_HD(x)	(GT_CPU_TO_LE32(((x) >> 21) & 0x7f))
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
-
+ENTRY_FUNCTION(BOARD_PBL_START)
 	b	__start
 	 nop
 
@@ -94,9 +94,5 @@ __start:
 	li	t0, GT_LD(0x1bdfffff)
 	sw	t0, GT_PCI0M1HD_OFS(t1)
 
-	mips_nmon
-
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_qemu_malta_start,
+	__dtb_qemu_malta_end)
diff --git a/arch/mips/boards/ritmix-rzx50/Makefile b/arch/mips/boards/ritmix-rzx50/Makefile
index 31c062987f..ded9867a8e 100644
--- a/arch/mips/boards/ritmix-rzx50/Makefile
+++ b/arch/mips/boards/ritmix-rzx50/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += serial.o
diff --git a/arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h b/arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
deleted file mode 100644
index 7ae0e2a4fd..0000000000
--- a/arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
+++ /dev/null
@@ -1,23 +0,0 @@
-/*
- * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
-#define __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
-
-#include <mach/debug_ll_jz4750d.h>
-
-#endif  /* __INCLUDE_RZX50_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h b/arch/mips/boards/ritmix-rzx50/lowlevel.S
similarity index 85%
rename from arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
rename to arch/mips/boards/ritmix-rzx50/lowlevel.S
index 7c2fa0bedc..a932e0871f 100644
--- a/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
+++ b/arch/mips/boards/ritmix-rzx50/lowlevel.S
@@ -17,13 +17,13 @@
  *
  */
 
+#define BOARD_PBL_START start_ritmix_rzx50
+
 #include <asm/pbl_macros.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_disable_interrupts
 
@@ -35,9 +35,5 @@
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
-	mips_nmon
-
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_rzx50_start,
+	__dtb_rzx50_end)
diff --git a/arch/mips/boards/tplink-mr3020/Makefile b/arch/mips/boards/tplink-mr3020/Makefile
index dcfc2937d3..092c31d6b2 100644
--- a/arch/mips/boards/tplink-mr3020/Makefile
+++ b/arch/mips/boards/tplink-mr3020/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/lowlevel.S
similarity index 84%
rename from arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
rename to arch/mips/boards/tplink-mr3020/lowlevel.S
index e70f55e873..e4ab0b5bbc 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/lowlevel.S
@@ -16,13 +16,15 @@
  *
  */
 
+#define BOARD_PBL_START start_tplink_mr3020
+
+#include <mach/debug_ll.h>
 #include <asm/pbl_macros.h>
+#include <asm/asm.h>
 #include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
@@ -45,8 +47,7 @@
 
 skip_pll_ram_config:
 	pbl_ar9331_uart_enable
-	debug_ll_ar9331_init
-	mips_nmon
+	debug_ll_ath79_init
 
 	/*
 	 * It is amazing but we have to enable MDIO on GPIO
@@ -54,7 +55,5 @@ skip_pll_ram_config:
 	 */
 	pbl_ar9331_mdio_gpio_enable
 
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_tplink_mr3020_start,
+	__dtb_tplink_mr3020_end)
diff --git a/arch/mips/boards/tplink-wdr4300/Makefile b/arch/mips/boards/tplink-wdr4300/Makefile
index dcfc2937d3..092c31d6b2 100644
--- a/arch/mips/boards/tplink-wdr4300/Makefile
+++ b/arch/mips/boards/tplink-wdr4300/Makefile
@@ -1 +1,2 @@
+lwl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h b/arch/mips/boards/tplink-wdr4300/lowlevel.S
similarity index 77%
rename from arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
rename to arch/mips/boards/tplink-wdr4300/lowlevel.S
index 7d4ee4baba..5fbe203423 100644
--- a/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-wdr4300/lowlevel.S
@@ -15,48 +15,37 @@
  *
  */
 
-#include <mach/debug_ll_ar9344.h>
+#define BOARD_PBL_START start_tplink_wdr4300
+
+#include <mach/debug_ll.h>
+#include <asm/asm.h>
 #include <asm/pbl_macros.h>
 #include <mach/pbl_macros.h>
 #include <mach/pbl_ll_init_ar9344_1.1.h>
 #include <asm/pbl_nmon.h>
 
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
+ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
-	debug_ll_ar9344_init
-
-	debug_ll_outc '1'
+	debug_ll_ath79_init
 
 	hornet_mips24k_cp0_setup
-	debug_ll_outc '2'
 
 	/* test if we are in the SRAM */
 	pbl_blt 0xbd000000 1f t8
-	debug_ll_outc '3'
 	b skip_flash_test
 	nop
 1:
 	/* test if we are in the flash */
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
-	debug_ll_outc '4'
 skip_flash_test:
 
 	pbl_ar9344_v11_pll_config
-	debug_ll_outc '5'
 
 	pbl_ar9344_v11_ddr2_config
 
 skip_pll_ram_config:
-	debug_ll_outc '6'
-	debug_ll_outnl
-
-	mips_nmon
-
-	copy_to_link_location	pbl_start
 
-	.set	pop
-	.endm
+ENTRY_FUNCTION_END(BOARD_PBL_START, __dtb_ar9344_tl_wdr4300_v1.7_start,
+	__dtb_ar9344_tl_wdr4300_v1.7_end)
diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index d59b247910..3d46e836f7 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -3,4 +3,4 @@ obj-y += main_entry.o
 
 obj-$(CONFIG_OFDEVICE) += dtb.o
 
-pbl-y += start-pbl.o main_entry-pbl.o
+pbl-y += main_entry-pbl.o
diff --git a/arch/mips/boot/start-pbl.S b/arch/mips/boot/start-pbl.S
index d6e8231a73..5e09ea4d80 100644
--- a/arch/mips/boot/start-pbl.S
+++ b/arch/mips/boot/start-pbl.S
@@ -22,7 +22,6 @@
 #include <asm/asm.h>
 
 #include <asm/pbl_macros.h>
-#include <board/board_pbl_start.h>
 
 	.set noreorder
 	.section ".text_head_entry"
diff --git a/arch/mips/configs/8devices-lima_defconfig b/arch/mips/configs/8devices-lima_defconfig
deleted file mode 100644
index 446369a544..0000000000
--- a/arch/mips/configs/8devices-lima_defconfig
+++ /dev/null
@@ -1,83 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="qca4531-8devices-lima"
-CONFIG_MACH_MIPS_ATH79=y
-CONFIG_PBL_IMAGE=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x81000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_CONSOLE_RATP=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_HOST=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_SNTP=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_OF_BAREBOX_ENV_IN_FS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_AG71XX=y
-CONFIG_AR8327N_PHY=y
-CONFIG_MDIO_BITBANG=y
-CONFIG_MDIO_GPIO=y
-CONFIG_DRIVER_SPI_ATH79=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_M25P80=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_RATP=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/ath79_defconfig
similarity index 90%
rename from arch/mips/configs/tplink-mr3020_defconfig
rename to arch/mips/configs/ath79_defconfig
index 4193bd628f..781786bc52 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -1,7 +1,10 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="tplink-mr3020"
 CONFIG_MACH_MIPS_ATH79=y
-CONFIG_PBL_IMAGE=y
+CONFIG_MIPS_ATH79_MULTI_BOARDS=y
+CONFIG_BOARD_8DEVICES_LIMA=y
+CONFIG_BOARD_DPTECHNICS_DPT_MODULE=y
+CONFIG_BOARD_TPLINK_MR3020=y
+CONFIG_BOARD_TPLINK_WDR4300=y
+CONFIG_BOARD_BLACK_SWIFT=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x81000000
diff --git a/arch/mips/configs/black-swift_defconfig b/arch/mips/configs/black-swift_defconfig
deleted file mode 100644
index 1a72cfbd77..0000000000
--- a/arch/mips/configs/black-swift_defconfig
+++ /dev/null
@@ -1,54 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="black-swift"
-CONFIG_MACH_MIPS_ATH79=y
-CONFIG_BOARD_BLACK_SWIFT=y
-CONFIG_NMON=y
-CONFIG_NMON_USER_START=y
-CONFIG_NMON_1S_DELAY=0x100000
-CONFIG_NMON_USER_START_DELAY=0x5
-CONFIG_NMON_HELP=y
-CONFIG_PBL_IMAGE=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x82000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_IMD=y
-CONFIG_PARTITION=y
-CONFIG_DEBUG_LL=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GLOBAL=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_SERIAL_AR933X=y
-CONFIG_DRIVER_SPI_ATH79=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_M25P80=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mips/configs/dptechnics-dpt-module_defconfig
deleted file mode 100644
index c01b22b987..0000000000
--- a/arch/mips/configs/dptechnics-dpt-module_defconfig
+++ /dev/null
@@ -1,89 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="ar9331-dptechnics-dpt-module"
-CONFIG_MACH_MIPS_ATH79=y
-CONFIG_BOARD_DPTECHNICS_DPT_MODULE=y
-CONFIG_PBL_IMAGE=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x82000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_CONSOLE_RATP=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_RESET_SOURCE=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_HOST=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_WD=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_SNTP=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_OF_BAREBOX_ENV_IN_FS=y
-CONFIG_DRIVER_SERIAL_AR933X=y
-CONFIG_DRIVER_NET_AG71XX=y
-CONFIG_AR8327N_PHY=y
-CONFIG_AT803X_PHY=y
-CONFIG_MDIO_BITBANG=y
-CONFIG_MDIO_GPIO=y
-CONFIG_DRIVER_SPI_ATH79=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_M25P80=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_WATCHDOG=y
-CONFIG_WATCHDOG_AR9344=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_RATP=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/img-ci20_defconfig b/arch/mips/configs/img-ci20_defconfig
deleted file mode 100644
index ada82c6431..0000000000
--- a/arch/mips/configs/img-ci20_defconfig
+++ /dev/null
@@ -1,45 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="img-ci20"
-CONFIG_MACH_MIPS_XBURST=y
-CONFIG_BOARD_CI20=y
-CONFIG_PBL_IMAGE=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_POLLER=y
-CONFIG_DEBUG_LL=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_GETOPT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_NET_DM9K=y
-# CONFIG_SPI is not set
-CONFIG_CLOCKSOURCE_DUMMY_RATE=3500
-CONFIG_FS_TFTP=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 9671e93dc0..1314783e02 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,6 +1,6 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="qemu-malta"
-CONFIG_PBL_IMAGE=y
+CONFIG_MIPS_MALTA_MULTI_BOARDS=y
+CONFIG_BOARD_QEMU_MALTA=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
@@ -10,10 +10,12 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_POLLER=y
 CONFIG_DEBUG_INFO=y
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
@@ -24,6 +26,7 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
@@ -31,7 +34,6 @@ CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
diff --git a/arch/mips/configs/tplink-wdr4300_defconfig b/arch/mips/configs/tplink-wdr4300_defconfig
deleted file mode 100644
index 46093d243b..0000000000
--- a/arch/mips/configs/tplink-wdr4300_defconfig
+++ /dev/null
@@ -1,82 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="ar9344-tl-wdr4300-v1.7"
-CONFIG_MACH_MIPS_ATH79=y
-CONFIG_BOARD_TPLINK_WDR4300=y
-CONFIG_PBL_IMAGE=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x81000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_HOST=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_SNTP=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_OF_BAREBOX_ENV_IN_FS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_AG71XX=y
-CONFIG_AR8327N_PHY=y
-CONFIG_MDIO_BITBANG=y
-CONFIG_MDIO_GPIO=y
-CONFIG_DRIVER_SPI_ATH79=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_M25P80=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/xburst_defconfig
similarity index 89%
rename from arch/mips/configs/ritmix-rzx50_defconfig
rename to arch/mips/configs/xburst_defconfig
index 3fb978a813..4305afc586 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/xburst_defconfig
@@ -1,8 +1,7 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="rzx50"
 CONFIG_MACH_MIPS_XBURST=y
-CONFIG_JZ47XX_DEBUG_LL_UART1=y
-CONFIG_PBL_IMAGE=y
+CONFIG_BOARD_RZX50=y
+CONFIG_BOARD_CI20=y
+CONFIG_CPU_MIPS32_R1=y
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -14,7 +13,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index ddd9039985..fa0062fcf9 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -1,5 +1,16 @@
-
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
-obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+ifneq ($(BUILTIN_DTB),)
+obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+endif
+
+pbl-dtb-$(CONFIG_BOARD_8DEVICES_LIMA) += qca4531-8devices-lima.dtb.o 
+pbl-dtb-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o 
+pbl-dtb-$(CONFIG_BOARD_CI20) += img-ci20.dtb.o
+pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o 
+pbl-dtb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
+pbl-dtb-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
+pbl-dtb-$(CONFIG_BOARD_RZX50) += rzx50.dtb.o
+pbl-dtb-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020.dtb.o 
+pbl-dtb-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o 
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/mips/mach-ar231x/include/mach/debug_ll.h b/arch/mips/mach-ar231x/include/mach/debug_ll.h
index 5ab7f9a26a..3d35e58ba2 100644
--- a/arch/mips/mach-ar231x/include/mach/debug_ll.h
+++ b/arch/mips/mach-ar231x/include/mach/debug_ll.h
@@ -21,7 +21,7 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#include <board/debug_ll.h>
+//#include <board/debug_ll.h>
 #include <asm/debug_ll_ns16550.h>
 
 #endif /* __MACH_AR231X_DEBUG_LL__ */
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index e4e10a2f65..e992af2824 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -10,8 +10,24 @@ config SOC_QCA_AR9331
 config SOC_QCA_AR9344
 	bool
 
+if DEBUG_LL
 choice
-	prompt "Board type"
+	prompt "DEBUG_LL driver"
+
+config DEBUG_AR9331_UART
+	bool "AR9331 Debug UART"
+
+config DEBUG_AR9344_UART
+	bool "AR9344 Debug UART"
+
+endchoice
+endif # DEBUG_LL
+
+config MIPS_ATH79_MULTI_BOARDS
+	bool "Allow multiple boards to be selected"
+	select HAVE_PBL_MULTI_IMAGES
+
+if MIPS_ATH79_MULTI_BOARDS
 
 config BOARD_8DEVICES_LIMA
 	bool "8devices LIMA"
@@ -50,6 +66,6 @@ config BOARD_BLACK_SWIFT
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
-endchoice
+endif # MIPS_ATH79_MULTI_BOARDS
 
 endif
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
index 73d064a3a0..a49b6cf4ab 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -18,10 +18,18 @@
 #ifndef __MACH_ATH79_DEBUG_LL__
 #define __MACH_ATH79_DEBUG_LL__
 
-#if defined(CONFIG_SOC_QCA_AR9331)
+#ifdef CONFIG_DEBUG_LL
+
+#ifdef CONFIG_DEBUG_AR9331_UART
 #include <mach/debug_ll_ar9331.h>
-#elif defined(CONFIG_SOC_QCA_AR9344)
+#elif defined CONFIG_DEBUG_AR9344_UART
 #include <mach/debug_ll_ar9344.h>
+#else
+#error "unknown ath79 debug uart soc type"
 #endif
 
+#else
+#define debug_ll_ath79_init
+#endif  /* CONFIG_DEBUG_LL */
+
 #endif /* __MACH_AR9344_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
index 04bd3ea72b..11088490d1 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
@@ -81,7 +81,7 @@ static inline void PUTC_LL(int ch)
 #define AR933X_UART_CLOCK_REG		0x08
 #define CLOCK_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CLOCK_REG)
 
-.macro debug_ll_ar9331_init
+.macro debug_ll_ath79_init
 #ifdef CONFIG_DEBUG_LL
 
 	pbl_reg_writel ((AR933X_UART_CS_IF_MODE_DCE << AR933X_UART_CS_IF_MODE_S) \
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
index d156ce9f39..359cf0d42b 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
@@ -19,8 +19,10 @@
 #ifndef __AR9344_DEBUG_LL__
 #define __AR9344_DEBUG_LL__
 
+#include <asm/asm.h>
 #include <asm/addrspace.h>
 #include <mach/ar71xx_regs.h>
+#include <asm/regdef.h>
 
 #define DEBUG_LL_UART_ADDR		KSEG1ADDR(AR934X_UART0_BASE)
 #define DEBUG_LL_UART_SHIFT		AR934X_UART0_SHIFT
@@ -66,7 +68,7 @@ static inline void PUTC_LL(char ch)
  * Macros for use in assembly language code
  */
 
-.macro	debug_ll_ar9344_init
+.macro	debug_ll_ath79_init
 #ifdef CONFIG_DEBUG_LL
 
 	/* find out the ref clock */
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 906d73e8c7..70736b3680 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -393,13 +393,10 @@ skip_pll_ram_config:
 	dcache_enable
 
 	pbl_ar9331_uart_enable
-	debug_ll_ar9331_init
-	mips_nmon
+	debug_ll_ath79_init
 
 	pbl_ar9331_mdio_gpio_enable
 
-	copy_to_link_location	pbl_start
-
 	.set	pop
 	.endm
 
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index c9f19025eb..3ce5b87289 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -18,6 +18,7 @@ config BOARD_LOONGSON_TECH_LS1B
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
+	select HAVE_PBL_MULTI_IMAGES
 
 endchoice
 
diff --git a/arch/mips/mach-loongson/include/mach/debug_ll.h b/arch/mips/mach-loongson/include/mach/debug_ll.h
index b999f5e019..5473d9216f 100644
--- a/arch/mips/mach-loongson/include/mach/debug_ll.h
+++ b/arch/mips/mach-loongson/include/mach/debug_ll.h
@@ -21,7 +21,7 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#include <board/debug_ll.h>
+//#include <board/debug_ll.h>
 #include <asm/debug_ll_ns16550.h>
 
 #endif /* __MACH_LOONGSON_DEBUG_LL__ */
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 1bf2b0e68a..ceea937e30 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -4,8 +4,11 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
-choice
-	prompt "Board type"
+config MIPS_MALTA_MULTI_BOARDS
+	bool "Allow multiple boards to be selected"
+	select HAVE_PBL_MULTI_IMAGE
+
+if MIPS_MALTA_MULTI_BOARDS
 
 config BOARD_QEMU_MALTA
 	bool "qemu malta"
@@ -13,6 +16,6 @@ config BOARD_QEMU_MALTA
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
-endchoice
+endif # MIPS_MALTA_MULTI_BOARDS
 
 endif
diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
index c9e89bcc9d..a9cf8b3c19 100644
--- a/arch/mips/mach-malta/include/mach/debug_ll.h
+++ b/arch/mips/mach-malta/include/mach/debug_ll.h
@@ -21,7 +21,15 @@
 #ifndef __MACH_MALTA_DEBUG_LL_H__
 #define __MACH_MALTA_DEBUG_LL_H__
 
-#include <board/debug_ll.h>
+#include <mach/hardware.h>
+
+#define DEBUG_LL_UART_ADDR	MALTA_PIIX4_UART0
+#define DEBUG_LL_UART_SHIFT	0
+
+#define DEBUG_LL_UART_CLK       1843200
+#define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
 #include <asm/debug_ll_ns16550.h>
 
 #endif /* __MACH_MALTA_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index ee79ff6167..b3790210dd 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -16,9 +16,6 @@ config CPU_JZ4780
 	select WATCHDOG
 	select WATCHDOG_JZ4740
 
-choice
-	prompt "Board type"
-
 config BOARD_RZX50
 	bool "Ritmix RZX-50"
 	select CPU_JZ4755
@@ -28,9 +25,18 @@ config BOARD_CI20
 	select CPU_JZ4780
 	select HAS_DM9000
 
+if DEBUG_LL
+choice
+	prompt "DEBUG_LL driver"
+
+config DEBUG_JZ4750D_UART
+	bool "JZ4750D Debug UART"
+
+config DEBUG_JZ4780_UART
+	bool "JZ4780 Debug UART"
+
 endchoice
 
-if DEBUG_LL
 choice
 	prompt "DEBUG_LL port"
 
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/mach-xburst/include/mach/debug_ll.h
index 6c3c9804b5..a1ce17efdf 100644
--- a/arch/mips/mach-xburst/include/mach/debug_ll.h
+++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
@@ -21,7 +21,19 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#include <board/debug_ll.h>
+
+#ifdef CONFIG_DEBUG_LL
+
+#ifdef CONFIG_DEBUG_JZ4750D_UART
+#include <mach/debug_ll_jz4750d.h>
+#elif defined CONFIG_DEBUG_JZ4780_UART
+#include <mach/debug_ll_jz4780.h>
+#else
+#error "unknown xburst debug uart soc type"
+#endif
+
+#endif  /* CONFIG_DEBUG_LL */
+
 #include <asm/debug_ll_ns16550.h>
 
 #endif  /* __MACH_XBURST_DEBUG_LL__ */
diff --git a/images/Makefile b/images/Makefile
index 7fdafb1239..97d09d1cec 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -53,7 +53,7 @@ $(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 quiet_cmd_elf__ ?= LD      $@
-      cmd_elf__ ?= $(LD) $(LDFLAGS_barebox) --gc-sections -pie			\
+      cmd_elf__ ?= $(LD) $(LDFLAGS_barebox) --gc-sections		\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
 		--start-group $(barebox-pbl-common) $(obj)/piggy.o --end-group
@@ -95,8 +95,12 @@ board = $(srctree)/arch/$(ARCH)/boards
 objboard = $(objtree)/arch/$(ARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
+include $(srctree)/images/Makefile.ar231x
+include $(srctree)/images/Makefile.ath79
 include $(srctree)/images/Makefile.bcm283x
 include $(srctree)/images/Makefile.imx
+include $(srctree)/images/Makefile.loongson
+include $(srctree)/images/Makefile.malta
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
@@ -104,6 +108,7 @@ include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
+include $(srctree)/images/Makefile.xburst
 include $(srctree)/images/Makefile.at91
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
diff --git a/images/Makefile.ar231x b/images/Makefile.ar231x
new file mode 100644
index 0000000000..31b9704866
--- /dev/null
+++ b/images/Makefile.ar231x
@@ -0,0 +1,3 @@
+pblb-$(CONFIG_BOARD_NETGEAR_WG102) += start_netgear_wg102
+FILE_barebox-netgear-wg102.img = start_netgear_wg102.pblb
+image-$(CONFIG_BOARD_NETGEAR_WG102) += barebox-netgear-wg102.img
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
new file mode 100644
index 0000000000..c7e97f0ac3
--- /dev/null
+++ b/images/Makefile.ath79
@@ -0,0 +1,20 @@
+pblb-$(CONFIG_BOARD_8DEVICES_LIMA) += start_8devices_lima
+FILE_barebox-8devices-lima.img = start_8devices_lima.pblb
+image-$(CONFIG_BOARD_8DEVICES_LIMA) += barebox-8devices-lima.img
+
+pblb-$(CONFIG_BLACK_SWIFT) += start_black_swift
+FILE_barebox-black-swift.img = start_black_swift.pblb
+image-$(CONFIG_BOARD_BLACK_SWIFT) += barebox-black-swift.img
+
+pblb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += start_dptechnics_dpt_module
+FILE_barebox-dptechnics-dpt-module.img = start_dptechnics_dpt_module.pblb
+image-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += barebox-dptechnics-dpt-module.img
+
+pblb-$(CONFIG_BOARD_TPLINK_MR3020) += start_tplink_mr3020
+FILE_barebox-tplink-mr3020.img = start_tplink_mr3020.pblb
+image-$(CONFIG_BOARD_TPLINK_MR3020) += barebox-tplink-mr3020.img
+
+pblb-$(CONFIG_BOARD_TPLINK_WDR4300) += start_tplink_wdr4300
+FILE_barebox-tplink-wdr4300.img = start_tplink_wdr4300.pblb
+image-$(CONFIG_BOARD_TPLINK_WDR4300) += barebox-tplink-wdr4300.img
+
diff --git a/images/Makefile.loongson b/images/Makefile.loongson
new file mode 100644
index 0000000000..f5918b5407
--- /dev/null
+++ b/images/Makefile.loongson
@@ -0,0 +1,3 @@
+pblb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += start_loongson_ls1b
+FILE_barebox-loongson-ls1b.img = start_loongson_ls1b.pblb
+image-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += barebox-loongson-ls1b.img
diff --git a/images/Makefile.malta b/images/Makefile.malta
new file mode 100644
index 0000000000..5739ec4640
--- /dev/null
+++ b/images/Makefile.malta
@@ -0,0 +1,3 @@
+pblb-$(CONFIG_BOARD_QEMU_MALTA) += start_qemu_malta
+FILE_barebox-qemu-malta.img = start_qemu_malta.pblb
+image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img
diff --git a/images/Makefile.xburst b/images/Makefile.xburst
new file mode 100644
index 0000000000..6c63a5657b
--- /dev/null
+++ b/images/Makefile.xburst
@@ -0,0 +1,7 @@
+pblb-$(CONFIG_BOARD_CI20) += start_img_ci20
+FILE_barebox-img-ci20.img = start_img_ci20.pblb
+image-$(CONFIG_BOARD_CI20) += barebox-img-ci20.img
+
+pblb-$(CONFIG_BOARD_RZX50) += start_ritmix_rzx50
+FILE_barebox-ritmix-rzx50.img = start_ritmix_rzx50.pblb
+image-$(CONFIG_BOARD_RZX50) += barebox-ritmix-rzx50.img
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
