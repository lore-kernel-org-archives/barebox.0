Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje5-0008AA-Vm
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:13 +0100
Message-Id: <1326709100-24106-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] ARM omap3: move board_init to pure_initcall
To: barebox@lists.infradead.org

board_init initializes the mux and sdram. For both there is no
need to configure this so early. Move the code to a pure_initcall
and remove the surrounding unneeded code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/board.c          |    6 ++-
 arch/arm/boards/omap343xdsp/board.c     |    5 ++-
 arch/arm/boards/omap3evm/board.c        |    6 ++-
 arch/arm/mach-omap/Kconfig              |    3 -
 arch/arm/mach-omap/Makefile             |    1 -
 arch/arm/mach-omap/include/mach/board.h |   35 ----------------
 arch/arm/mach-omap/omap3_platform.S     |   65 -------------------------------
 7 files changed, 13 insertions(+), 108 deletions(-)
 delete mode 100644 arch/arm/mach-omap/include/mach/board.h
 delete mode 100644 arch/arm/mach-omap/omap3_platform.S

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 0be3ff2..bd663ad 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -74,7 +74,6 @@
 #include <linux/err.h>
 #include <usb/ehci.h>
 #include <mach/xload.h>
-#include <mach/board.h>
 
 /******************** Board Boot Time *******************/
 
@@ -221,7 +220,7 @@ static void mux_config(void)
  *
  * @return void
  */
-void omap3_board_init(void)
+static int beagle_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
@@ -229,7 +228,10 @@ void omap3_board_init(void)
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
 		sdrc_init();
+
+	return 0;
 }
+pure_initcall(beagle_board_init);
 
 /******************** Board Run Time *******************/
 
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index e9fc36d..2cbb987 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -77,13 +77,16 @@ static void mux_config(void);
  *
  * @return void
  */
-void omap3_board_init(void)
+static int sdp343x_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 	mux_config();
 	if (!in_sdram)
 		sdrc_init();
+
+	return 0;
 }
+pure_initcall(sdp343x_board_init);
 
 /**
  * @brief Do the SDRC initialization for 128Meg Infenion DDR for CS0
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index e286209..ec2ed2c 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -196,15 +196,19 @@ static void mux_config(void)
  *
  * @return void
  */
-void omap3_board_init(void)
+static int omap3_evm_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
 	mux_config();
+
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
 		sdrc_init();
+
+	return 0;
 }
+pure_initcall(omap3_evm_board_init);
 
 /*
  * Run-time initialization(s)
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index baffdff..970c899 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -108,7 +108,6 @@ choice
 
 config MACH_OMAP343xSDP
 	bool "Texas Instrument's SDP343x"
-	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
 	depends on ARCH_OMAP3
@@ -117,7 +116,6 @@ config MACH_OMAP343xSDP
 
 config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
-	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAVE_NOSHELL
 	select HAS_OMAP_NAND
@@ -127,7 +125,6 @@ config MACH_BEAGLE
 
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
-	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAVE_NOSHELL
 	select HAS_OMAP_NAND
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index f8d9abd..9bd2b62 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -20,7 +20,6 @@
 # MA 02111-1307 USA
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o
-obj-$(CONFIG_OMAP3_LOWLEVEL_INIT) += omap3_platform.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
diff --git a/arch/arm/mach-omap/include/mach/board.h b/arch/arm/mach-omap/include/mach/board.h
deleted file mode 100644
index 2216bb8..0000000
--- a/arch/arm/mach-omap/include/mach/board.h
+++ /dev/null
@@ -1,35 +0,0 @@
-/**
- * @file
- * @brief exported generic APIs which various board files implement
- *
- * FileName: arch/arm/boards/omap/board.h
- *
- * This file will not contain any board specific implementations.
- */
-/*
- * (C) Copyright 2008
- * Texas Instruments, <www.ti.com>
- * Raghavendra KH <r-khandenahally@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-#ifndef __BOARD_OMAP_H_
-#define __BOARD_OMAP_H_
-
-/** Generic Board initialization called from platform.S */
-void omap3_board_init(void);
-
-#endif         /* __BOARD_OMAP_H_ */
diff --git a/arch/arm/mach-omap/omap3_platform.S b/arch/arm/mach-omap/omap3_platform.S
deleted file mode 100644
index 2b8b51b..0000000
--- a/arch/arm/mach-omap/omap3_platform.S
+++ /dev/null
@@ -1,65 +0,0 @@
-/**
- * @file
- * @brief Wrapper to call board level initialization routine
- *
- * FileName: arch/arm/boards/omap/platform.S
- *
- * board_init_lowlevel is defined here. This calls board_init which
- * is linked to the binary - the board_init only has a SRAM stack.
- * so it needs to be careful about the usage of global variables
- * and the likes. Enabled only if CONFIG_MACH_DO_LOWLEVEL_INIT is
- * defined
- */
-/*
- * (C) Copyright 2006-2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <config.h>
-#include <mach/silicon.h>
-
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-/**
- * @fn void board_init_lowlevel(void)
- *
- * @brief This provides a assembly wrapper setting up SRAM before calling
- * board_init
- *
- * @return void
- */
-.globl board_init_lowlevel
-board_init_lowlevel:
-	/* Setup a temporary stack so that we can call C functions
-	 * Yes. this might have been already done by arch code.
-	 * No harm in being a bit redundant to avoid future complications
-	 */
-	ldr	sp,	SRAM_STACK
-        str     ip,	[sp]    /* stash old link register */
-        str     lr,	[sp]    /* stash current link register */
-	mov	ip,	lr	/* save link reg across call */
-	/* Do the pin muxes, sdram init etc..board-xxx.c */
-	bl	omap3_board_init
-        ldr     lr,	[sp]    /* restore current link register */
-        ldr     ip,	[sp]    /* restore save ip */
-	/* back to arch calling code */
-	mov	pc,	lr
-SRAM_STACK:
-	.word	OMAP_SRAM_STACK
-
-#endif /* CONFIG_MACH_DO_LOWLEVEL_INIT */
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
