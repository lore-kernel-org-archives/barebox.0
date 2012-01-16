Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RmjeD-0004bm-D1
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:15 +0100
Message-Id: <1326709100-24106-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] ARM omap3 clock: move pll tables to C code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile                   |    2 +-
 arch/arm/mach-omap/include/mach/omap3-clock.h |   10 -
 arch/arm/mach-omap/omap3_clock.c              |  123 +++++++++++-
 arch/arm/mach-omap/omap3_clock_core.S         |  265 -------------------------
 4 files changed, 116 insertions(+), 284 deletions(-)
 delete mode 100644 arch/arm/mach-omap/omap3_clock_core.S

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 9bd2b62..b219613 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -23,7 +23,7 @@ obj-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
-obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
+obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
 obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index 10566e1..67f2673 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -143,16 +143,6 @@ struct dpll_param_per_36x {
 	unsigned int m2div;
 };
 
-/* External functions see omap3_clock_core.S */
-extern struct dpll_param *get_mpu_dpll_param_34x(u32);
-extern struct dpll_param *get_iva_dpll_param_34x(u32);
-extern struct dpll_param *get_core_dpll_param_34x(u32);
-extern struct dpll_param *get_per_dpll_param_34x(u32);
-
-extern struct dpll_param *get_mpu_dpll_param_36x(u32);
-extern struct dpll_param *get_iva_dpll_param_36x(u32);
-extern struct dpll_param *get_core_dpll_param_36x(u32);
-extern struct dpll_param_per_36x *get_per_dpll_param_36x(u32);
 #endif /* __ASSEMBLY__ */
 
 #endif  /* endif _OMAP343X_CLOCKS_H_ */
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 391aa40..646235e 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -143,6 +143,22 @@ static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel)
 		*sys_clkin_sel = 0;
 }
 
+static struct dpll_param core_dpll_param_34x_es1[] = {
+	{ .m = 0x19F, .n = 0x0E, .fsel = 0x03, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x1B2, .n = 0x10, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x19F, .n = 0x17, .fsel = 0x03, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x1B2, .n = 0x21, .fsel = 0x03, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x19F, .n = 0x2F, .fsel = 0x03, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
+static struct dpll_param core_dpll_param_34x_es2[] = {
+	{ .m = 0x0A6, .n = 0x05, .fsel = 0x07, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x14C, .n = 0x0C, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x19F, .n = 0x17, .fsel = 0x03, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x0A6, .n = 0x0C, .fsel = 0x07, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x19F, .n = 0x2F, .fsel = 0x03, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize CORE DPLL for OMAP34x
  *
@@ -151,7 +167,11 @@ static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel)
  */
 static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_core_dpll_param_34x(cpu_rev);
+	struct dpll_param *dp;
+	if (cpu_rev == OMAP34XX_ES1)
+		dp = core_dpll_param_34x_es1;
+	else
+		dp = core_dpll_param_34x_es2;
 
 	dp += clk_sel;
 
@@ -200,6 +220,15 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 	}
 }
 
+/* PER DPLL values are same for both ES1 and ES2 */
+static struct dpll_param per_dpll_param_34x[] = {
+	{ .m = 0x0D8, .n = 0x05, .fsel = 0x07, .m2 = 0x09, }, /* 12   MHz */
+	{ .m = 0x1B0, .n = 0x0C, .fsel = 0x03, .m2 = 0x09, }, /* 13   MHz */
+	{ .m = 0x0E1, .n = 0x09, .fsel = 0x07, .m2 = 0x09, }, /* 19.2 MHz */
+	{ .m = 0x0D8, .n = 0x0C, .fsel = 0x07, .m2 = 0x09, }, /* 26   MHz */
+	{ .m = 0x0E1, .n = 0x13, .fsel = 0x07, .m2 = 0x09, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize PER DPLL for OMAP34x
  *
@@ -208,7 +237,7 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_per_dpll_param_34x(cpu_rev);
+	struct dpll_param *dp = per_dpll_param_34x;
 
 	dp += clk_sel;
 
@@ -255,6 +284,22 @@ static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
 	wait_on_value((0x1 << 1), 2, CM_REG(IDLEST_CKGEN), LDELAY);
 }
 
+static struct dpll_param mpu_dpll_param_34x_es1[] = {
+	{ .m = 0x0FE, .n = 0x07, .fsel = 0x05, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x17D, .n = 0x0C, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x179, .n = 0x12, .fsel = 0x04, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x17D, .n = 0x19, .fsel = 0x03, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x1FA, .n = 0x32, .fsel = 0x03, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
+static struct dpll_param mpu_dpll_param_34x_es2[] = {
+	{.m = 0x0FA, .n = 0x05, .fsel = 0x07, .m2 = 0x01, }, /* 12   MHz */
+	{.m = 0x1F4, .n = 0x0C, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
+	{.m = 0x271, .n = 0x17, .fsel = 0x03, .m2 = 0x01, }, /* 19.2 MHz */
+	{.m = 0x0FA, .n = 0x0C, .fsel = 0x07, .m2 = 0x01, }, /* 26   MHz */
+	{.m = 0x271, .n = 0x2F, .fsel = 0x03, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize MPU DPLL for OMAP34x
  *
@@ -266,7 +311,12 @@ static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_mpu_dpll_param_34x(cpu_rev);
+	struct dpll_param *dp;
+
+	if (cpu_rev == OMAP34XX_ES1)
+		dp = mpu_dpll_param_34x_es1;
+	else
+		dp = mpu_dpll_param_34x_es2;
 
 	dp += clk_sel;
 
@@ -283,6 +333,22 @@ static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
 	sr32(CM_REG(CLKEN_PLL_MPU), 4, 4, dp->fsel);
 }
 
+static struct dpll_param iva_dpll_param_34x_es1[] = {
+	{ .m = 	0x07D, .n = 0x05, .fsel = 0x07,	.m2 = 0x01, }, /* 12   MHz */
+	{ .m = 	0x0FA, .n = 0x0C, .fsel = 0x03,	.m2 = 0x01, }, /* 13   MHz */
+	{ .m = 	0x082, .n = 0x09, .fsel = 0x07,	.m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 	0x07D, .n = 0x0C, .fsel = 0x07,	.m2 = 0x01, }, /* 26   MHz */
+	{ .m = 	0x13F, .n = 0x30, .fsel = 0x03,	.m2 = 0x01, }, /* 38.4 MHz */
+};
+
+static struct dpll_param iva_dpll_param_34x_es2[] = {
+	{ .m = 0x0B4, .n = 0x05, .fsel = 0x07, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x168, .n = 0x0C, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x0E1, .n = 0x0B, .fsel = 0x06, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x0B4, .n = 0x0C, .fsel = 0x07, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x0E1, .n = 0x17, .fsel = 0x06, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize IVA DPLL for OMAP34x
  *
@@ -291,7 +357,12 @@ static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_iva_dpll_param_34x(cpu_rev);
+	struct dpll_param *dp;
+
+	if (cpu_rev == OMAP34XX_ES1)
+		dp = iva_dpll_param_34x_es1;
+	else
+		dp = iva_dpll_param_34x_es2;
 
 	dp += clk_sel;
 
@@ -316,6 +387,15 @@ static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
 	wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_PLL_IVA2), LDELAY);
 }
 
+/* FIXME: All values correspond to 26MHz only */
+static struct dpll_param core_dpll_param_36x[] = {
+	{ .m = 0x0C8, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x0C8, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x0C8, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x0C8, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x0C8, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize CORE DPLL for OMAP36x
  *
@@ -324,7 +404,7 @@ static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_core_dpll_param_36x(cpu_rev);
+	struct dpll_param *dp = core_dpll_param_36x;
 
 	dp += clk_sel;
 
@@ -366,6 +446,15 @@ static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
 	}
 }
 
+/* FIXME: All values correspond to 26MHz only */
+static struct dpll_param_per_36x per_dpll_param_36x[] = {
+	{ .m = 0x1B0, .n = 0x0C, .m2 = 9, .m3 = 0x10, .m4 = 9, .m5 = 4,	.m6 = 3, .m2div = 1, },  /* 12   MHz */
+	{ .m = 0x1B0, .n = 0x0C, .m2 = 9, .m3 = 0x10, .m4 = 9, .m5 = 4,	.m6 = 3, .m2div = 1, },  /* 13   MHz */
+	{ .m = 0x1B0, .n = 0x0C, .m2 = 9, .m3 = 0x10, .m4 = 9, .m5 = 4,	.m6 = 3, .m2div = 1, },  /* 19.2 MHz */
+	{ .m = 0x1B0, .n = 0x0C, .m2 = 9, .m3 = 0x10, .m4 = 9, .m5 = 4,	.m6 = 3, .m2div = 1, },  /* 26   MHz */
+	{ .m = 0x1B0, .n = 0x0C, .m2 = 9, .m3 = 0x10, .m4 = 9, .m5 = 4,	.m6 = 3, .m2div = 1, },  /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize PER DPLL for OMAP36x
  *
@@ -374,7 +463,7 @@ static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_per_dpll_36x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param_per_36x *dp = get_per_dpll_param_36x(cpu_rev);
+	struct dpll_param_per_36x *dp = per_dpll_param_36x;
 
 	dp += clk_sel;
 
@@ -410,6 +499,15 @@ static void init_per_dpll_36x(u32 cpu_rev, u32 clk_sel)
 	wait_on_value((0x1 << 1), 2, CM_REG(IDLEST_CKGEN), LDELAY);
 }
 
+/* FIXME: All values correspond to 26MHz only */
+static struct dpll_param mpu_dpll_param_36x[] = {
+	{ .m = 0x12C, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x12C, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x12C, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x12C, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x12C, .n = 0x0C, .fsel = 0x00, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize MPU DPLL for OMAP36x
  *
@@ -418,7 +516,7 @@ static void init_per_dpll_36x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_mpu_dpll_36x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_mpu_dpll_param_36x(cpu_rev);
+	struct dpll_param *dp = mpu_dpll_param_36x;
 
 	dp += clk_sel;
 
@@ -435,6 +533,15 @@ static void init_mpu_dpll_36x(u32 cpu_rev, u32 clk_sel)
 	sr32(CM_REG(CLKEN_PLL_MPU), 4, 4, dp->fsel);
 }
 
+/* FIXME: All values correspond to 26MHz only */
+static struct dpll_param iva_dpll_param_36x[] = {
+	{ .m = 0x00A, .n = 0x00, .fsel = 0x00, .m2 = 0x01, }, /* 12   MHz */
+	{ .m = 0x00A, .n = 0x00, .fsel = 0x00, .m2 = 0x01, }, /* 13   MHz */
+	{ .m = 0x00A, .n = 0x00, .fsel = 0x00, .m2 = 0x01, }, /* 19.2 MHz */
+	{ .m = 0x00A, .n = 0x00, .fsel = 0x00, .m2 = 0x01, }, /* 26   MHz */
+	{ .m = 0x00A, .n = 0x00, .fsel = 0x00, .m2 = 0x01, }, /* 38.4 MHz */
+};
+
 /**
  * @brief Initialize IVA DPLL for OMAP36x
  *
@@ -443,7 +550,7 @@ static void init_mpu_dpll_36x(u32 cpu_rev, u32 clk_sel)
  */
 static void init_iva_dpll_36x(u32 cpu_rev, u32 clk_sel)
 {
-	struct dpll_param *dp = get_iva_dpll_param_36x(cpu_rev);
+	struct dpll_param *dp = iva_dpll_param_36x;
 
 	dp += clk_sel;
 
diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
deleted file mode 100644
index b31ed80..0000000
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ /dev/null
@@ -1,265 +0,0 @@
-/**
- * @file
- * @brief Provides PRCM divisors and SRAM execution code.
- *
- * FileName: arch/arm/mach-omap/omap3_clock_core.S
- *
- * This provides two things:
- * @li @ref omap3_clock.c cannot have switch or global variables.
- * This file provides the constant data for the file to use.
- *
- * @li @ref prcm_init cannot execute certain critical clock
- * configurations while running in SDRAM/Flash. This provides
- * relocation and execution capability for the same.
- *
- * Orignally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
- * (C) Copyright 2006-2008
- * Texas Instruments, <www.ti.com>
- * Richard Woodruff <r-woodruff2@ti.com>
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
-#include <mach/clocks.h>
-#include <mach/gpmc.h>
-
-	/* the literal pools origin */
-	.ltorg
-
-/* MPU DPLL Parameter table
- *
- * This table defines the DPLL parameter table for the MPU as defined by
- * "struct dpll_param defined" in "omap3-clock.h"
- *
- * The tables are defined for separately each silicon revision.
- */
-.globl mpu_dpll_param_34x_es1
-mpu_dpll_param_34x_es1:
-/*    	M	N	FREQSEL	M2	*/
-.word	0x0FE,	0x07,	0x05,	0x01		/* 12   MHz	*/
-.word	0x17D,	0x0C,	0x03,	0x01		/* 13   MHz	*/
-.word	0x179,	0x12,	0x04,	0x01		/* 19.2 MHz	*/
-.word	0x17D,	0x19,	0x03,	0x01		/* 26   MHz	*/
-.word	0x1FA,	0x32,	0x03,	0x01		/* 38.4 MHz	*/
-
-.globl mpu_dpll_param_34x_es2
-mpu_dpll_param_34x_es2:
-/*    	M	N	FREQSEL	M2	*/
-.word	0x0FA,	0x05,	0x07,	0x01		/* 12   MHz	*/
-.word	0x1F4,	0x0C,	0x03,	0x01		/* 13   MHz	*/
-.word	0x271,	0x17,	0x03,	0x01		/* 19.2 MHz	*/
-.word	0x0FA,	0x0C,	0x07,	0x01		/* 26   MHz	*/
-.word	0x271,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of MPU DPLL param table (OMAP34XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_mpu_dpll_param_34x
-get_mpu_dpll_param_34x:
-	mov	r3, r0
-	lsl	r3, r3, #16		/* Isolate silicon revision */
-	lsr	r3, r3, #16
-	cmp	r3, #0			/* Revision 1 ? */
-	adr	r0, mpu_dpll_param_34x_es1
-	bxeq	lr
-	adr	r0, mpu_dpll_param_34x_es2
-	mov	pc, lr
-
-iva_dpll_param_34x_es1:
-/*    	M	N	FREQSEL	M2				*/
-.word	0x07D,	0x05,	0x07,	0x01		/* 12   MHz	*/
-.word	0x0FA,	0x0C,	0x03,	0x01		/* 13   MHz	*/
-.word	0x082,	0x09,	0x07,	0x01		/* 19.2 MHz	*/
-.word	0x07D,	0x0C,	0x07,	0x01		/* 26   MHz	*/
-.word	0x13F,	0x30,	0x03,	0x01		/* 38.4 MHz	*/
-
-iva_dpll_param_34x_es2:
-/*    	M	N	FREQSEL	M2				*/
-.word	0x0B4,	0x05,	0x07,	0x01		/* 12   MHz	*/
-.word	0x168,	0x0C,	0x03,	0x01		/* 13   MHz	*/
-.word	0x0E1,	0x0B,	0x06,	0x01		/* 19.2 MHz	*/
-.word	0x0B4,	0x0C,	0x07,	0x01		/* 26   MHz	*/
-.word	0x0E1,	0x17,	0x06,	0x01		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of IVA DPLL param table (OMAP34XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_iva_dpll_param_34x
-get_iva_dpll_param_34x:
-	mov	r3, r0
-	lsl	r3, r3, #16		/* Isolate silicon revision */
-	lsr	r3, r3, #16
-	cmp	r3, #0			/* Revision 1 ? */
-	adr	r0, iva_dpll_param_34x_es1
-	bxeq	lr
-	adr	r0, iva_dpll_param_34x_es2
-	mov	pc, lr
-
-core_dpll_param_34x_es1:
-/*    	M	N	FREQSEL	M2				*/
-.word	0x19F,	0x0E,	0x03,	0x01		/* 12   MHz	*/
-.word	0x1B2,	0x10,	0x03,	0x01		/* 13   MHz	*/
-.word	0x19F,	0x17,	0x03,	0x01		/* 19.2 MHz	*/
-.word	0x1B2,	0x21,	0x03,	0x01		/* 26   MHz	*/
-.word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
-
-core_dpll_param_34x_es2:
-/*    	M	N	FREQSEL	M2				*/
-.word	0x0A6,	0x05,	0x07,	0x01		/* 12   MHz	*/
-.word	0x14C,	0x0C,	0x03,	0x01		/* 13   MHz	*/
-.word	0x19F,	0x17,	0x03,	0x01		/* 19.2 MHz	*/
-.word	0x0A6,	0x0C,	0x07,	0x01		/* 26   MHz	*/
-.word	0x19F,	0x2F,	0x03,	0x01		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of CORE DPLL param table (OMAP34XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_core_dpll_param_34x
-get_core_dpll_param_34x:
-	mov	r3, r0
-	lsl	r3, r3, #16		/* Isolate silicon revision */
-	lsr	r3, r3, #16
-	cmp	r3, #0			/* Revision 1 ? */
-	adr	r0, core_dpll_param_34x_es1
-	bxeq	lr
-	adr	r0, core_dpll_param_34x_es2
-	mov	pc, lr
-
-/* PER DPLL values are same for both ES1 and ES2 */
-per_dpll_param_34x:
-/*    	M	N	FREQSEL	M2				*/
-.word	0x0D8,	0x05,	0x07,	0x09		/* 12   MHz	*/
-.word	0x1B0,	0x0C,	0x03,	0x09		/* 13   MHz	*/
-.word	0x0E1,	0x09,	0x07,	0x09		/* 19.2 MHz	*/
-.word	0x0D8,	0x0C,	0x07,	0x09		/* 26   MHz	*/
-.word	0x0E1,	0x13,	0x07,	0x09		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of PER DPLL param table (OMAP34XX).
- *
- * @param rev Silicon revision (not used).
- *
- * @return Address of the param table
- */
-.globl get_per_dpll_param_34x
-get_per_dpll_param_34x:
-	adr r0, per_dpll_param_34x
-	mov pc, lr
-
-.globl mpu_dpll_param_36x
-mpu_dpll_param_36x:
-/* FIXME: All values correspond to 26MHz only */
-/*    	M	N	FREQSEL	M2	*/
-.word	0x12C,	0x0C,	0x00,	0x01		/* 12   MHz	*/
-.word	0x12C,	0x0C,	0x00,	0x01		/* 13   MHz	*/
-.word	0x12C,	0x0C,	0x00,	0x01		/* 19.2 MHz	*/
-.word	0x12C,	0x0C,	0x00,	0x01		/* 26   MHz	*/
-.word	0x12C,	0x0C,	0x00,	0x01		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of MPU DPLL param table (OMAP36XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_mpu_dpll_param_36x
-get_mpu_dpll_param_36x:
-	adr r0, mpu_dpll_param_36x
-	mov pc, lr
-
-.globl iva_dpll_param_36x
-iva_dpll_param_36x:
-/* FIXME: All values correspond to 26MHz only */
-/*    	M	N	FREQSEL	M2	*/
-.word	0x00A,	0x00,	0x00,	0x01		/* 12   MHz	*/
-.word	0x00A,	0x00,	0x00,	0x01		/* 13   MHz	*/
-.word	0x00A,	0x00,	0x00,	0x01		/* 19.2 MHz	*/
-.word	0x00A,	0x00,	0x00,	0x01		/* 26   MHz	*/
-.word	0x00A,	0x00,	0x00,	0x01		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of IVA DPLL param table (OMAP36XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_iva_dpll_param_36x
-get_iva_dpll_param_36x:
-	adr r0, iva_dpll_param_36x
-	mov pc, lr
-
-.globl core_dpll_param_36x
-core_dpll_param_36x:
-/* FIXME: All values correspond to 26MHz only */
-/*    	M	N	FREQSEL	M2	*/
-.word	0x0C8,	0x0C,	0x00,	0x01		/* 12   MHz	*/
-.word	0x0C8,	0x0C,	0x00,	0x01		/* 13   MHz	*/
-.word	0x0C8,	0x0C,	0x00,	0x01		/* 19.2 MHz	*/
-.word	0x0C8,	0x0C,	0x00,	0x01		/* 26   MHz	*/
-.word	0x0C8,	0x0C,	0x00,	0x01		/* 38.4 MHz	*/
-
-/**
- * @brief Get address of IVA DPLL param table (OMAP36XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_core_dpll_param_36x
-get_core_dpll_param_36x:
-	adr r0, core_dpll_param_36x
-	mov pc, lr
-
-.globl per_dpll_param_36x
-per_dpll_param_36x:
-/* FIXME: All values correspond to 26MHz only */
-/*	M	N	M2	M3	M4	M5	M6	m2DIV */
-.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 12   MHz */
-.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 13   MHz */
-.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 19.2 MHz */
-.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 26   MHz */
-.word	0x1B0,	0x0C,	9,	0x10,	9,	4,	3,	1 /* 38.4 MHz */
-
-/**
- * @brief Get address of PER DPLL param table (OMAP36XX).
- *
- * @param rev Silicon revision.
- *
- * @return Address of the param table
- */
-.globl get_per_dpll_param_36x
-get_per_dpll_param_36x:
-	adr r0, per_dpll_param_36x
-	mov pc, lr
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
