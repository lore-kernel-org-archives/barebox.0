Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000Ve-J2
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:35 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:15 +0200
Message-Id: <1280915957-2910-12-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 11/13] ehci: add omap support
To: barebox@lists.infradead.org

with cm-regbits-34xx.h and codebase from linux kernel

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/cm-regbits-34xx.h |  799 +++++++++++++++++++++
 arch/arm/mach-omap/include/mach/ehci.h            |  109 +++
 arch/arm/mach-omap/include/mach/omap3-clock.h     |   11 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h   |    6 +
 drivers/usb/host/Kconfig                          |    4 +
 drivers/usb/host/Makefile                         |    1 +
 drivers/usb/host/ehci-omap.c                      |  260 +++++++
 7 files changed, 1190 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/cm-regbits-34xx.h
 create mode 100644 arch/arm/mach-omap/include/mach/ehci.h
 create mode 100644 drivers/usb/host/ehci-omap.c

diff --git a/arch/arm/mach-omap/include/mach/cm-regbits-34xx.h b/arch/arm/mach-omap/include/mach/cm-regbits-34xx.h
new file mode 100644
index 0000000..16a0201
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/cm-regbits-34xx.h
@@ -0,0 +1,799 @@
+#ifndef __ARCH_ARM_MACH_OMAP2_CM_REGBITS_34XX_H
+#define __ARCH_ARM_MACH_OMAP2_CM_REGBITS_34XX_H
+
+/*
+ * OMAP3430 Clock Management register bits
+ *
+ * Copyright (C) 2007-2008 Texas Instruments, Inc.
+ * Copyright (C) 2007-2008 Nokia Corporation
+ *
+ * Written by Paul Walmsley
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/* Bits shared between registers */
+
+/* CM_FCLKEN1_CORE and CM_ICLKEN1_CORE shared bits */
+#define OMAP3430ES2_EN_MMC3_MASK			(1 << 30)
+#define OMAP3430ES2_EN_MMC3_SHIFT			30
+#define OMAP3430_EN_MSPRO_MASK				(1 << 23)
+#define OMAP3430_EN_MSPRO_SHIFT				23
+#define OMAP3430_EN_HDQ_MASK				(1 << 22)
+#define OMAP3430_EN_HDQ_SHIFT				22
+#define OMAP3430ES1_EN_FSHOSTUSB_MASK			(1 << 5)
+#define OMAP3430ES1_EN_FSHOSTUSB_SHIFT			5
+#define OMAP3430ES1_EN_D2D_MASK				(1 << 3)
+#define OMAP3430ES1_EN_D2D_SHIFT			3
+#define OMAP3430_EN_SSI_MASK				(1 << 0)
+#define OMAP3430_EN_SSI_SHIFT				0
+
+/* CM_FCLKEN3_CORE and CM_ICLKEN3_CORE shared bits */
+#define OMAP3430ES2_EN_USBTLL_SHIFT			2
+#define OMAP3430ES2_EN_USBTLL_MASK			(1 << 2)
+
+/* CM_FCLKEN_WKUP and CM_ICLKEN_WKUP shared bits */
+#define OMAP3430_EN_WDT2_MASK				(1 << 5)
+#define OMAP3430_EN_WDT2_SHIFT				5
+
+/* CM_ICLKEN_CAM, CM_FCLKEN_CAM shared bits */
+#define OMAP3430_EN_CAM_MASK				(1 << 0)
+#define OMAP3430_EN_CAM_SHIFT				0
+
+/* CM_FCLKEN_PER, CM_ICLKEN_PER shared bits */
+#define OMAP3430_EN_WDT3_MASK				(1 << 12)
+#define OMAP3430_EN_WDT3_SHIFT				12
+
+/* CM_CLKSEL2_EMU, CM_CLKSEL3_EMU shared bits */
+#define OMAP3430_OVERRIDE_ENABLE_MASK			(1 << 19)
+
+
+/* Bits specific to each register */
+
+/* CM_FCLKEN_IVA2 */
+#define OMAP3430_CM_FCLKEN_IVA2_EN_IVA2_MASK		(1 << 0)
+#define OMAP3430_CM_FCLKEN_IVA2_EN_IVA2_SHIFT		0
+
+/* CM_CLKEN_PLL_IVA2 */
+#define OMAP3430_IVA2_DPLL_RAMPTIME_SHIFT		8
+#define OMAP3430_IVA2_DPLL_RAMPTIME_MASK		(0x3 << 8)
+#define OMAP3430_IVA2_DPLL_FREQSEL_SHIFT		4
+#define OMAP3430_IVA2_DPLL_FREQSEL_MASK			(0xf << 4)
+#define OMAP3430_EN_IVA2_DPLL_DRIFTGUARD_SHIFT		3
+#define OMAP3430_EN_IVA2_DPLL_DRIFTGUARD_MASK		(1 << 3)
+#define OMAP3430_EN_IVA2_DPLL_SHIFT			0
+#define OMAP3430_EN_IVA2_DPLL_MASK			(0x7 << 0)
+
+/* CM_IDLEST_IVA2 */
+#define OMAP3430_ST_IVA2_MASK				(1 << 0)
+
+/* CM_IDLEST_PLL_IVA2 */
+#define OMAP3430_ST_IVA2_CLK_SHIFT			0
+#define OMAP3430_ST_IVA2_CLK_MASK			(1 << 0)
+
+/* CM_AUTOIDLE_PLL_IVA2 */
+#define OMAP3430_AUTO_IVA2_DPLL_SHIFT			0
+#define OMAP3430_AUTO_IVA2_DPLL_MASK			(0x7 << 0)
+
+/* CM_CLKSEL1_PLL_IVA2 */
+#define OMAP3430_IVA2_CLK_SRC_SHIFT			19
+#define OMAP3430_IVA2_CLK_SRC_MASK			(0x3 << 19)
+#define OMAP3430_IVA2_DPLL_MULT_SHIFT			8
+#define OMAP3430_IVA2_DPLL_MULT_MASK			(0x7ff << 8)
+#define OMAP3430_IVA2_DPLL_DIV_SHIFT			0
+#define OMAP3430_IVA2_DPLL_DIV_MASK			(0x7f << 0)
+
+/* CM_CLKSEL2_PLL_IVA2 */
+#define OMAP3430_IVA2_DPLL_CLKOUT_DIV_SHIFT		0
+#define OMAP3430_IVA2_DPLL_CLKOUT_DIV_MASK		(0x1f << 0)
+
+/* CM_CLKSTCTRL_IVA2 */
+#define OMAP3430_CLKTRCTRL_IVA2_SHIFT			0
+#define OMAP3430_CLKTRCTRL_IVA2_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_IVA2 */
+#define OMAP3430_CLKACTIVITY_IVA2_SHIFT			0
+#define OMAP3430_CLKACTIVITY_IVA2_MASK			(1 << 0)
+
+/* CM_REVISION specific bits */
+
+/* CM_SYSCONFIG specific bits */
+
+/* CM_CLKEN_PLL_MPU */
+#define OMAP3430_MPU_DPLL_RAMPTIME_SHIFT		8
+#define OMAP3430_MPU_DPLL_RAMPTIME_MASK			(0x3 << 8)
+#define OMAP3430_MPU_DPLL_FREQSEL_SHIFT			4
+#define OMAP3430_MPU_DPLL_FREQSEL_MASK			(0xf << 4)
+#define OMAP3430_EN_MPU_DPLL_DRIFTGUARD_SHIFT		3
+#define OMAP3430_EN_MPU_DPLL_DRIFTGUARD_MASK		(1 << 3)
+#define OMAP3430_EN_MPU_DPLL_SHIFT			0
+#define OMAP3430_EN_MPU_DPLL_MASK			(0x7 << 0)
+
+/* CM_IDLEST_MPU */
+#define OMAP3430_ST_MPU_MASK				(1 << 0)
+
+/* CM_IDLEST_PLL_MPU */
+#define OMAP3430_ST_MPU_CLK_SHIFT			0
+#define OMAP3430_ST_MPU_CLK_MASK			(1 << 0)
+
+/* CM_AUTOIDLE_PLL_MPU */
+#define OMAP3430_AUTO_MPU_DPLL_SHIFT			0
+#define OMAP3430_AUTO_MPU_DPLL_MASK			(0x7 << 0)
+
+/* CM_CLKSEL1_PLL_MPU */
+#define OMAP3430_MPU_CLK_SRC_SHIFT			19
+#define OMAP3430_MPU_CLK_SRC_MASK			(0x3 << 19)
+#define OMAP3430_MPU_DPLL_MULT_SHIFT			8
+#define OMAP3430_MPU_DPLL_MULT_MASK			(0x7ff << 8)
+#define OMAP3430_MPU_DPLL_DIV_SHIFT			0
+#define OMAP3430_MPU_DPLL_DIV_MASK			(0x7f << 0)
+
+/* CM_CLKSEL2_PLL_MPU */
+#define OMAP3430_MPU_DPLL_CLKOUT_DIV_SHIFT		0
+#define OMAP3430_MPU_DPLL_CLKOUT_DIV_MASK		(0x1f << 0)
+
+/* CM_CLKSTCTRL_MPU */
+#define OMAP3430_CLKTRCTRL_MPU_SHIFT			0
+#define OMAP3430_CLKTRCTRL_MPU_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_MPU */
+#define OMAP3430_CLKACTIVITY_MPU_SHIFT			0
+#define OMAP3430_CLKACTIVITY_MPU_MASK			(1 << 0)
+
+/* CM_FCLKEN1_CORE specific bits */
+#define OMAP3430_EN_MODEM_MASK				(1 << 31)
+#define OMAP3430_EN_MODEM_SHIFT				31
+
+/* CM_ICLKEN1_CORE specific bits */
+#define OMAP3430_EN_ICR_MASK				(1 << 29)
+#define OMAP3430_EN_ICR_SHIFT				29
+#define OMAP3430_EN_AES2_MASK				(1 << 28)
+#define OMAP3430_EN_AES2_SHIFT				28
+#define OMAP3430_EN_SHA12_MASK				(1 << 27)
+#define OMAP3430_EN_SHA12_SHIFT				27
+#define OMAP3430_EN_DES2_MASK				(1 << 26)
+#define OMAP3430_EN_DES2_SHIFT				26
+#define OMAP3430ES1_EN_FAC_MASK				(1 << 8)
+#define OMAP3430ES1_EN_FAC_SHIFT			8
+#define OMAP3430_EN_MAILBOXES_MASK			(1 << 7)
+#define OMAP3430_EN_MAILBOXES_SHIFT			7
+#define OMAP3430_EN_OMAPCTRL_MASK			(1 << 6)
+#define OMAP3430_EN_OMAPCTRL_SHIFT			6
+#define OMAP3430_EN_SAD2D_MASK				(1 << 3)
+#define OMAP3430_EN_SAD2D_SHIFT				3
+#define OMAP3430_EN_SDRC_MASK				(1 << 1)
+#define OMAP3430_EN_SDRC_SHIFT				1
+
+/* AM35XX specific CM_ICLKEN1_CORE bits */
+#define AM35XX_EN_IPSS_MASK				(1 << 4)
+#define AM35XX_EN_IPSS_SHIFT				4
+#define AM35XX_EN_UART4_MASK				(1 << 23)
+#define AM35XX_EN_UART4_SHIFT				23
+
+/* CM_ICLKEN2_CORE */
+#define OMAP3430_EN_PKA_MASK				(1 << 4)
+#define OMAP3430_EN_PKA_SHIFT				4
+#define OMAP3430_EN_AES1_MASK				(1 << 3)
+#define OMAP3430_EN_AES1_SHIFT				3
+#define OMAP3430_EN_RNG_MASK				(1 << 2)
+#define OMAP3430_EN_RNG_SHIFT				2
+#define OMAP3430_EN_SHA11_MASK				(1 << 1)
+#define OMAP3430_EN_SHA11_SHIFT				1
+#define OMAP3430_EN_DES1_MASK				(1 << 0)
+#define OMAP3430_EN_DES1_SHIFT				0
+
+/* CM_ICLKEN3_CORE */
+#define OMAP3430_EN_MAD2D_SHIFT				3
+#define OMAP3430_EN_MAD2D_MASK				(1 << 3)
+
+/* CM_FCLKEN3_CORE specific bits */
+#define OMAP3430ES2_EN_TS_SHIFT				1
+#define OMAP3430ES2_EN_TS_MASK				(1 << 1)
+#define OMAP3430ES2_EN_CPEFUSE_SHIFT			0
+#define OMAP3430ES2_EN_CPEFUSE_MASK			(1 << 0)
+
+/* CM_IDLEST1_CORE specific bits */
+#define OMAP3430ES2_ST_MMC3_SHIFT			30
+#define OMAP3430ES2_ST_MMC3_MASK			(1 << 30)
+#define OMAP3430_ST_ICR_SHIFT				29
+#define OMAP3430_ST_ICR_MASK				(1 << 29)
+#define OMAP3430_ST_AES2_SHIFT				28
+#define OMAP3430_ST_AES2_MASK				(1 << 28)
+#define OMAP3430_ST_SHA12_SHIFT				27
+#define OMAP3430_ST_SHA12_MASK				(1 << 27)
+#define OMAP3430_ST_DES2_SHIFT				26
+#define OMAP3430_ST_DES2_MASK				(1 << 26)
+#define OMAP3430_ST_MSPRO_SHIFT				23
+#define OMAP3430_ST_MSPRO_MASK				(1 << 23)
+#define OMAP3430_ST_HDQ_SHIFT				22
+#define OMAP3430_ST_HDQ_MASK				(1 << 22)
+#define OMAP3430ES1_ST_FAC_SHIFT			8
+#define OMAP3430ES1_ST_FAC_MASK				(1 << 8)
+#define OMAP3430ES2_ST_SSI_IDLE_SHIFT			8
+#define OMAP3430ES2_ST_SSI_IDLE_MASK			(1 << 8)
+#define OMAP3430_ST_MAILBOXES_SHIFT			7
+#define OMAP3430_ST_MAILBOXES_MASK			(1 << 7)
+#define OMAP3430_ST_OMAPCTRL_SHIFT			6
+#define OMAP3430_ST_OMAPCTRL_MASK			(1 << 6)
+#define OMAP3430_ST_SDMA_SHIFT				2
+#define OMAP3430_ST_SDMA_MASK				(1 << 2)
+#define OMAP3430_ST_SDRC_SHIFT				1
+#define OMAP3430_ST_SDRC_MASK				(1 << 1)
+#define OMAP3430_ST_SSI_STDBY_SHIFT			0
+#define OMAP3430_ST_SSI_STDBY_MASK			(1 << 0)
+
+/* AM35xx specific CM_IDLEST1_CORE bits */
+#define AM35XX_ST_IPSS_SHIFT				5
+#define AM35XX_ST_IPSS_MASK 				(1 << 5)
+
+/* CM_IDLEST2_CORE */
+#define OMAP3430_ST_PKA_SHIFT				4
+#define OMAP3430_ST_PKA_MASK				(1 << 4)
+#define OMAP3430_ST_AES1_SHIFT				3
+#define OMAP3430_ST_AES1_MASK				(1 << 3)
+#define OMAP3430_ST_RNG_SHIFT				2
+#define OMAP3430_ST_RNG_MASK				(1 << 2)
+#define OMAP3430_ST_SHA11_SHIFT				1
+#define OMAP3430_ST_SHA11_MASK				(1 << 1)
+#define OMAP3430_ST_DES1_SHIFT				0
+#define OMAP3430_ST_DES1_MASK				(1 << 0)
+
+/* CM_IDLEST3_CORE */
+#define OMAP3430ES2_ST_USBTLL_SHIFT			2
+#define OMAP3430ES2_ST_USBTLL_MASK			(1 << 2)
+#define OMAP3430ES2_ST_CPEFUSE_SHIFT			0
+#define OMAP3430ES2_ST_CPEFUSE_MASK			(1 << 0)
+
+/* CM_AUTOIDLE1_CORE */
+#define OMAP3430_AUTO_MODEM_MASK			(1 << 31)
+#define OMAP3430_AUTO_MODEM_SHIFT			31
+#define OMAP3430ES2_AUTO_MMC3_MASK			(1 << 30)
+#define OMAP3430ES2_AUTO_MMC3_SHIFT			30
+#define OMAP3430ES2_AUTO_ICR_MASK			(1 << 29)
+#define OMAP3430ES2_AUTO_ICR_SHIFT			29
+#define OMAP3430_AUTO_AES2_MASK				(1 << 28)
+#define OMAP3430_AUTO_AES2_SHIFT			28
+#define OMAP3430_AUTO_SHA12_MASK			(1 << 27)
+#define OMAP3430_AUTO_SHA12_SHIFT			27
+#define OMAP3430_AUTO_DES2_MASK				(1 << 26)
+#define OMAP3430_AUTO_DES2_SHIFT			26
+#define OMAP3430_AUTO_MMC2_MASK				(1 << 25)
+#define OMAP3430_AUTO_MMC2_SHIFT			25
+#define OMAP3430_AUTO_MMC1_MASK				(1 << 24)
+#define OMAP3430_AUTO_MMC1_SHIFT			24
+#define OMAP3430_AUTO_MSPRO_MASK			(1 << 23)
+#define OMAP3430_AUTO_MSPRO_SHIFT			23
+#define OMAP3430_AUTO_HDQ_MASK				(1 << 22)
+#define OMAP3430_AUTO_HDQ_SHIFT				22
+#define OMAP3430_AUTO_MCSPI4_MASK			(1 << 21)
+#define OMAP3430_AUTO_MCSPI4_SHIFT			21
+#define OMAP3430_AUTO_MCSPI3_MASK			(1 << 20)
+#define OMAP3430_AUTO_MCSPI3_SHIFT			20
+#define OMAP3430_AUTO_MCSPI2_MASK			(1 << 19)
+#define OMAP3430_AUTO_MCSPI2_SHIFT			19
+#define OMAP3430_AUTO_MCSPI1_MASK			(1 << 18)
+#define OMAP3430_AUTO_MCSPI1_SHIFT			18
+#define OMAP3430_AUTO_I2C3_MASK				(1 << 17)
+#define OMAP3430_AUTO_I2C3_SHIFT			17
+#define OMAP3430_AUTO_I2C2_MASK				(1 << 16)
+#define OMAP3430_AUTO_I2C2_SHIFT			16
+#define OMAP3430_AUTO_I2C1_MASK				(1 << 15)
+#define OMAP3430_AUTO_I2C1_SHIFT			15
+#define OMAP3430_AUTO_UART2_MASK			(1 << 14)
+#define OMAP3430_AUTO_UART2_SHIFT			14
+#define OMAP3430_AUTO_UART1_MASK			(1 << 13)
+#define OMAP3430_AUTO_UART1_SHIFT			13
+#define OMAP3430_AUTO_GPT11_MASK			(1 << 12)
+#define OMAP3430_AUTO_GPT11_SHIFT			12
+#define OMAP3430_AUTO_GPT10_MASK			(1 << 11)
+#define OMAP3430_AUTO_GPT10_SHIFT			11
+#define OMAP3430_AUTO_MCBSP5_MASK			(1 << 10)
+#define OMAP3430_AUTO_MCBSP5_SHIFT			10
+#define OMAP3430_AUTO_MCBSP1_MASK			(1 << 9)
+#define OMAP3430_AUTO_MCBSP1_SHIFT			9
+#define OMAP3430ES1_AUTO_FAC_MASK			(1 << 8)
+#define OMAP3430ES1_AUTO_FAC_SHIFT			8
+#define OMAP3430_AUTO_MAILBOXES_MASK			(1 << 7)
+#define OMAP3430_AUTO_MAILBOXES_SHIFT			7
+#define OMAP3430_AUTO_OMAPCTRL_MASK			(1 << 6)
+#define OMAP3430_AUTO_OMAPCTRL_SHIFT			6
+#define OMAP3430ES1_AUTO_FSHOSTUSB_MASK			(1 << 5)
+#define OMAP3430ES1_AUTO_FSHOSTUSB_SHIFT		5
+#define OMAP3430_AUTO_HSOTGUSB_MASK			(1 << 4)
+#define OMAP3430_AUTO_HSOTGUSB_SHIFT			4
+#define OMAP3430ES1_AUTO_D2D_MASK			(1 << 3)
+#define OMAP3430ES1_AUTO_D2D_SHIFT			3
+#define OMAP3430_AUTO_SAD2D_MASK			(1 << 3)
+#define OMAP3430_AUTO_SAD2D_SHIFT			3
+#define OMAP3430_AUTO_SSI_MASK				(1 << 0)
+#define OMAP3430_AUTO_SSI_SHIFT				0
+
+/* CM_AUTOIDLE2_CORE */
+#define OMAP3430_AUTO_PKA_MASK				(1 << 4)
+#define OMAP3430_AUTO_PKA_SHIFT				4
+#define OMAP3430_AUTO_AES1_MASK				(1 << 3)
+#define OMAP3430_AUTO_AES1_SHIFT			3
+#define OMAP3430_AUTO_RNG_MASK				(1 << 2)
+#define OMAP3430_AUTO_RNG_SHIFT				2
+#define OMAP3430_AUTO_SHA11_MASK			(1 << 1)
+#define OMAP3430_AUTO_SHA11_SHIFT			1
+#define OMAP3430_AUTO_DES1_MASK				(1 << 0)
+#define OMAP3430_AUTO_DES1_SHIFT			0
+
+/* CM_AUTOIDLE3_CORE */
+#define	OMAP3430ES2_AUTO_USBHOST			(1 << 0)
+#define	OMAP3430ES2_AUTO_USBHOST_SHIFT			0
+#define	OMAP3430ES2_AUTO_USBTLL				(1 << 2)
+#define OMAP3430ES2_AUTO_USBTLL_SHIFT			2
+#define OMAP3430ES2_AUTO_USBTLL_MASK			(1 << 2)
+#define OMAP3430_AUTO_MAD2D_SHIFT			3
+#define OMAP3430_AUTO_MAD2D_MASK			(1 << 3)
+
+/* CM_CLKSEL_CORE */
+#define OMAP3430_CLKSEL_SSI_SHIFT			8
+#define OMAP3430_CLKSEL_SSI_MASK			(0xf << 8)
+#define OMAP3430_CLKSEL_GPT11_MASK			(1 << 7)
+#define OMAP3430_CLKSEL_GPT11_SHIFT			7
+#define OMAP3430_CLKSEL_GPT10_MASK			(1 << 6)
+#define OMAP3430_CLKSEL_GPT10_SHIFT			6
+#define OMAP3430ES1_CLKSEL_FSHOSTUSB_SHIFT		4
+#define OMAP3430ES1_CLKSEL_FSHOSTUSB_MASK		(0x3 << 4)
+#define OMAP3430_CLKSEL_L4_SHIFT			2
+#define OMAP3430_CLKSEL_L4_MASK				(0x3 << 2)
+#define OMAP3430_CLKSEL_L3_SHIFT			0
+#define OMAP3430_CLKSEL_L3_MASK				(0x3 << 0)
+#define OMAP3630_CLKSEL_96M_SHIFT			12
+#define OMAP3630_CLKSEL_96M_MASK			(0x3 << 12)
+
+/* CM_CLKSTCTRL_CORE */
+#define OMAP3430ES1_CLKTRCTRL_D2D_SHIFT			4
+#define OMAP3430ES1_CLKTRCTRL_D2D_MASK			(0x3 << 4)
+#define OMAP3430_CLKTRCTRL_L4_SHIFT			2
+#define OMAP3430_CLKTRCTRL_L4_MASK			(0x3 << 2)
+#define OMAP3430_CLKTRCTRL_L3_SHIFT			0
+#define OMAP3430_CLKTRCTRL_L3_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_CORE */
+#define OMAP3430ES1_CLKACTIVITY_D2D_SHIFT		2
+#define OMAP3430ES1_CLKACTIVITY_D2D_MASK		(1 << 2)
+#define OMAP3430_CLKACTIVITY_L4_SHIFT			1
+#define OMAP3430_CLKACTIVITY_L4_MASK			(1 << 1)
+#define OMAP3430_CLKACTIVITY_L3_SHIFT			0
+#define OMAP3430_CLKACTIVITY_L3_MASK			(1 << 0)
+
+/* CM_FCLKEN_GFX */
+#define OMAP3430ES1_EN_3D_MASK				(1 << 2)
+#define OMAP3430ES1_EN_3D_SHIFT				2
+#define OMAP3430ES1_EN_2D_MASK				(1 << 1)
+#define OMAP3430ES1_EN_2D_SHIFT				1
+
+/* CM_ICLKEN_GFX specific bits */
+
+/* CM_IDLEST_GFX specific bits */
+
+/* CM_CLKSEL_GFX specific bits */
+
+/* CM_SLEEPDEP_GFX specific bits */
+
+/* CM_CLKSTCTRL_GFX */
+#define OMAP3430ES1_CLKTRCTRL_GFX_SHIFT			0
+#define OMAP3430ES1_CLKTRCTRL_GFX_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_GFX */
+#define OMAP3430ES1_CLKACTIVITY_GFX_SHIFT		0
+#define OMAP3430ES1_CLKACTIVITY_GFX_MASK		(1 << 0)
+
+/* CM_FCLKEN_SGX */
+#define OMAP3430ES2_CM_FCLKEN_SGX_EN_SGX_SHIFT		1
+#define OMAP3430ES2_CM_FCLKEN_SGX_EN_SGX_MASK		(1 << 1)
+
+/* CM_IDLEST_SGX */
+#define OMAP3430ES2_ST_SGX_SHIFT			1
+#define OMAP3430ES2_ST_SGX_MASK				(1 << 1)
+
+/* CM_ICLKEN_SGX */
+#define OMAP3430ES2_CM_ICLKEN_SGX_EN_SGX_SHIFT		0
+#define OMAP3430ES2_CM_ICLKEN_SGX_EN_SGX_MASK		(1 << 0)
+
+/* CM_CLKSEL_SGX */
+#define OMAP3430ES2_CLKSEL_SGX_SHIFT			0
+#define OMAP3430ES2_CLKSEL_SGX_MASK			(0x7 << 0)
+
+/* CM_CLKSTCTRL_SGX */
+#define OMAP3430ES2_CLKTRCTRL_SGX_SHIFT			0
+#define OMAP3430ES2_CLKTRCTRL_SGX_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_SGX */
+#define OMAP3430ES2_CLKACTIVITY_SGX_SHIFT		0
+#define OMAP3430ES2_CLKACTIVITY_SGX_MASK		(1 << 0)
+
+/* CM_FCLKEN_WKUP specific bits */
+#define OMAP3430ES2_EN_USIMOCP_SHIFT			9
+#define OMAP3430ES2_EN_USIMOCP_MASK			(1 << 9)
+
+/* CM_ICLKEN_WKUP specific bits */
+#define OMAP3430_EN_WDT1_MASK				(1 << 4)
+#define OMAP3430_EN_WDT1_SHIFT				4
+#define OMAP3430_EN_32KSYNC_MASK			(1 << 2)
+#define OMAP3430_EN_32KSYNC_SHIFT			2
+
+/* CM_IDLEST_WKUP specific bits */
+#define OMAP3430ES2_ST_USIMOCP_SHIFT			9
+#define OMAP3430ES2_ST_USIMOCP_MASK			(1 << 9)
+#define OMAP3430_ST_WDT2_SHIFT				5
+#define OMAP3430_ST_WDT2_MASK				(1 << 5)
+#define OMAP3430_ST_WDT1_SHIFT				4
+#define OMAP3430_ST_WDT1_MASK				(1 << 4)
+#define OMAP3430_ST_32KSYNC_SHIFT			2
+#define OMAP3430_ST_32KSYNC_MASK			(1 << 2)
+
+/* CM_AUTOIDLE_WKUP */
+#define OMAP3430ES2_AUTO_USIMOCP_MASK			(1 << 9)
+#define OMAP3430ES2_AUTO_USIMOCP_SHIFT			9
+#define OMAP3430_AUTO_WDT2_MASK				(1 << 5)
+#define OMAP3430_AUTO_WDT2_SHIFT			5
+#define OMAP3430_AUTO_WDT1_MASK				(1 << 4)
+#define OMAP3430_AUTO_WDT1_SHIFT			4
+#define OMAP3430_AUTO_GPIO1_MASK			(1 << 3)
+#define OMAP3430_AUTO_GPIO1_SHIFT			3
+#define OMAP3430_AUTO_32KSYNC_MASK			(1 << 2)
+#define OMAP3430_AUTO_32KSYNC_SHIFT			2
+#define OMAP3430_AUTO_GPT12_MASK			(1 << 1)
+#define OMAP3430_AUTO_GPT12_SHIFT			1
+#define OMAP3430_AUTO_GPT1_MASK				(1 << 0)
+#define OMAP3430_AUTO_GPT1_SHIFT			0
+
+/* CM_CLKSEL_WKUP */
+#define OMAP3430ES2_CLKSEL_USIMOCP_MASK			(0xf << 3)
+#define OMAP3430_CLKSEL_RM_SHIFT			1
+#define OMAP3430_CLKSEL_RM_MASK				(0x3 << 1)
+#define OMAP3430_CLKSEL_GPT1_SHIFT			0
+#define OMAP3430_CLKSEL_GPT1_MASK			(1 << 0)
+
+/* CM_CLKEN_PLL */
+#define OMAP3430_PWRDN_EMU_PERIPH_SHIFT			31
+#define OMAP3430_PWRDN_CAM_SHIFT			30
+#define OMAP3430_PWRDN_DSS1_SHIFT			29
+#define OMAP3430_PWRDN_TV_SHIFT				28
+#define OMAP3430_PWRDN_96M_SHIFT			27
+#define OMAP3430_PERIPH_DPLL_RAMPTIME_SHIFT		24
+#define OMAP3430_PERIPH_DPLL_RAMPTIME_MASK		(0x3 << 24)
+#define OMAP3430_PERIPH_DPLL_FREQSEL_SHIFT		20
+#define OMAP3430_PERIPH_DPLL_FREQSEL_MASK		(0xf << 20)
+#define OMAP3430_EN_PERIPH_DPLL_DRIFTGUARD_SHIFT	19
+#define OMAP3430_EN_PERIPH_DPLL_DRIFTGUARD_MASK		(1 << 19)
+#define OMAP3430_EN_PERIPH_DPLL_SHIFT			16
+#define OMAP3430_EN_PERIPH_DPLL_MASK			(0x7 << 16)
+#define OMAP3430_PWRDN_EMU_CORE_SHIFT			12
+#define OMAP3430_CORE_DPLL_RAMPTIME_SHIFT		8
+#define OMAP3430_CORE_DPLL_RAMPTIME_MASK		(0x3 << 8)
+#define OMAP3430_CORE_DPLL_FREQSEL_SHIFT		4
+#define OMAP3430_CORE_DPLL_FREQSEL_MASK			(0xf << 4)
+#define OMAP3430_EN_CORE_DPLL_DRIFTGUARD_SHIFT		3
+#define OMAP3430_EN_CORE_DPLL_DRIFTGUARD_MASK		(1 << 3)
+#define OMAP3430_EN_CORE_DPLL_SHIFT			0
+#define OMAP3430_EN_CORE_DPLL_MASK			(0x7 << 0)
+
+/* CM_CLKEN2_PLL */
+#define OMAP3430ES2_EN_PERIPH2_DPLL_LPMODE_SHIFT	10
+#define OMAP3430ES2_PERIPH2_DPLL_RAMPTIME_MASK		(0x3 << 8)
+#define OMAP3430ES2_PERIPH2_DPLL_FREQSEL_SHIFT		4
+#define OMAP3430ES2_PERIPH2_DPLL_FREQSEL_MASK		(0xf << 4)
+#define OMAP3430ES2_EN_PERIPH2_DPLL_DRIFTGUARD_SHIFT	3
+#define OMAP3430ES2_EN_PERIPH2_DPLL_SHIFT		0
+#define OMAP3430ES2_EN_PERIPH2_DPLL_MASK		(0x7 << 0)
+
+/* CM_IDLEST_CKGEN */
+#define OMAP3430_ST_54M_CLK_MASK			(1 << 5)
+#define OMAP3430_ST_12M_CLK_MASK			(1 << 4)
+#define OMAP3430_ST_48M_CLK_MASK			(1 << 3)
+#define OMAP3430_ST_96M_CLK_MASK			(1 << 2)
+#define OMAP3430_ST_PERIPH_CLK_SHIFT			1
+#define OMAP3430_ST_PERIPH_CLK_MASK			(1 << 1)
+#define OMAP3430_ST_CORE_CLK_SHIFT			0
+#define OMAP3430_ST_CORE_CLK_MASK			(1 << 0)
+
+/* CM_IDLEST2_CKGEN */
+#define OMAP3430ES2_ST_USIM_CLK_SHIFT			2
+#define OMAP3430ES2_ST_USIM_CLK_MASK			(1 << 2)
+#define OMAP3430ES2_ST_120M_CLK_SHIFT			1
+#define OMAP3430ES2_ST_120M_CLK_MASK			(1 << 1)
+#define OMAP3430ES2_ST_PERIPH2_CLK_SHIFT		0
+#define OMAP3430ES2_ST_PERIPH2_CLK_MASK			(1 << 0)
+
+/* CM_AUTOIDLE_PLL */
+#define OMAP3430_AUTO_PERIPH_DPLL_SHIFT			3
+#define OMAP3430_AUTO_PERIPH_DPLL_MASK			(0x7 << 3)
+#define OMAP3430_AUTO_CORE_DPLL_SHIFT			0
+#define OMAP3430_AUTO_CORE_DPLL_MASK			(0x7 << 0)
+
+/* CM_AUTOIDLE2_PLL */
+#define OMAP3430ES2_AUTO_PERIPH2_DPLL_SHIFT		0
+#define OMAP3430ES2_AUTO_PERIPH2_DPLL_MASK		(0x7 << 0)
+
+/* CM_CLKSEL1_PLL */
+/* Note that OMAP3430_CORE_DPLL_CLKOUT_DIV_MASK was (0x3 << 27) on 3430ES1 */
+#define OMAP3430_CORE_DPLL_CLKOUT_DIV_SHIFT		27
+#define OMAP3430_CORE_DPLL_CLKOUT_DIV_MASK		(0x1f << 27)
+#define OMAP3430_CORE_DPLL_MULT_SHIFT			16
+#define OMAP3430_CORE_DPLL_MULT_MASK			(0x7ff << 16)
+#define OMAP3430_CORE_DPLL_DIV_SHIFT			8
+#define OMAP3430_CORE_DPLL_DIV_MASK			(0x7f << 8)
+#define OMAP3430_SOURCE_96M_SHIFT			6
+#define OMAP3430_SOURCE_96M_MASK			(1 << 6)
+#define OMAP3430_SOURCE_54M_SHIFT			5
+#define OMAP3430_SOURCE_54M_MASK			(1 << 5)
+#define OMAP3430_SOURCE_48M_SHIFT			3
+#define OMAP3430_SOURCE_48M_MASK			(1 << 3)
+
+/* CM_CLKSEL2_PLL */
+#define OMAP3430_PERIPH_DPLL_MULT_SHIFT			8
+#define OMAP3430_PERIPH_DPLL_MULT_MASK			(0x7ff << 8)
+#define OMAP3630_PERIPH_DPLL_MULT_MASK			(0xfff << 8)
+#define OMAP3430_PERIPH_DPLL_DIV_SHIFT			0
+#define OMAP3430_PERIPH_DPLL_DIV_MASK			(0x7f << 0)
+#define OMAP3630_PERIPH_DPLL_DCO_SEL_SHIFT		21
+#define OMAP3630_PERIPH_DPLL_DCO_SEL_MASK		(0x7 << 21)
+#define OMAP3630_PERIPH_DPLL_SD_DIV_SHIFT		24
+#define OMAP3630_PERIPH_DPLL_SD_DIV_MASK		(0xff << 24)
+
+/* CM_CLKSEL3_PLL */
+#define OMAP3430_DIV_96M_SHIFT				0
+#define OMAP3430_DIV_96M_MASK				(0x1f << 0)
+#define OMAP3630_DIV_96M_MASK				(0x3f << 0)
+
+/* CM_CLKSEL4_PLL */
+#define OMAP3430ES2_PERIPH2_DPLL_MULT_SHIFT		8
+#define OMAP3430ES2_PERIPH2_DPLL_MULT_MASK		(0x7ff << 8)
+#define OMAP3430ES2_PERIPH2_DPLL_DIV_SHIFT		0
+#define OMAP3430ES2_PERIPH2_DPLL_DIV_MASK		(0x7f << 0)
+
+/* CM_CLKSEL5_PLL */
+#define OMAP3430ES2_DIV_120M_SHIFT			0
+#define OMAP3430ES2_DIV_120M_MASK			(0x1f << 0)
+
+/* CM_CLKOUT_CTRL */
+#define OMAP3430_CLKOUT2_EN_SHIFT			7
+#define OMAP3430_CLKOUT2_EN_MASK			(1 << 7)
+#define OMAP3430_CLKOUT2_DIV_SHIFT			3
+#define OMAP3430_CLKOUT2_DIV_MASK			(0x7 << 3)
+#define OMAP3430_CLKOUT2SOURCE_SHIFT			0
+#define OMAP3430_CLKOUT2SOURCE_MASK			(0x3 << 0)
+
+/* CM_FCLKEN_DSS */
+#define OMAP3430_EN_TV_MASK				(1 << 2)
+#define OMAP3430_EN_TV_SHIFT				2
+#define OMAP3430_EN_DSS2_MASK				(1 << 1)
+#define OMAP3430_EN_DSS2_SHIFT				1
+#define OMAP3430_EN_DSS1_MASK				(1 << 0)
+#define OMAP3430_EN_DSS1_SHIFT				0
+
+/* CM_ICLKEN_DSS */
+#define OMAP3430_CM_ICLKEN_DSS_EN_DSS_MASK		(1 << 0)
+#define OMAP3430_CM_ICLKEN_DSS_EN_DSS_SHIFT		0
+
+/* CM_IDLEST_DSS */
+#define OMAP3430ES2_ST_DSS_IDLE_SHIFT			1
+#define OMAP3430ES2_ST_DSS_IDLE_MASK			(1 << 1)
+#define OMAP3430ES2_ST_DSS_STDBY_SHIFT			0
+#define OMAP3430ES2_ST_DSS_STDBY_MASK			(1 << 0)
+#define OMAP3430ES1_ST_DSS_SHIFT			0
+#define OMAP3430ES1_ST_DSS_MASK				(1 << 0)
+
+/* CM_AUTOIDLE_DSS */
+#define OMAP3430_AUTO_DSS_MASK				(1 << 0)
+#define OMAP3430_AUTO_DSS_SHIFT				0
+
+/* CM_CLKSEL_DSS */
+#define OMAP3430_CLKSEL_TV_SHIFT			8
+#define OMAP3430_CLKSEL_TV_MASK				(0x1f << 8)
+#define OMAP3630_CLKSEL_TV_MASK				(0x3f << 8)
+#define OMAP3430_CLKSEL_DSS1_SHIFT			0
+#define OMAP3430_CLKSEL_DSS1_MASK			(0x1f << 0)
+#define OMAP3630_CLKSEL_DSS1_MASK			(0x3f << 0)
+
+/* CM_SLEEPDEP_DSS specific bits */
+
+/* CM_CLKSTCTRL_DSS */
+#define OMAP3430_CLKTRCTRL_DSS_SHIFT			0
+#define OMAP3430_CLKTRCTRL_DSS_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_DSS */
+#define OMAP3430_CLKACTIVITY_DSS_SHIFT			0
+#define OMAP3430_CLKACTIVITY_DSS_MASK			(1 << 0)
+
+/* CM_FCLKEN_CAM specific bits */
+#define OMAP3430_EN_CSI2_MASK				(1 << 1)
+#define OMAP3430_EN_CSI2_SHIFT				1
+
+/* CM_ICLKEN_CAM specific bits */
+
+/* CM_IDLEST_CAM */
+#define OMAP3430_ST_CAM_MASK				(1 << 0)
+
+/* CM_AUTOIDLE_CAM */
+#define OMAP3430_AUTO_CAM_MASK				(1 << 0)
+#define OMAP3430_AUTO_CAM_SHIFT				0
+
+/* CM_CLKSEL_CAM */
+#define OMAP3430_CLKSEL_CAM_SHIFT			0
+#define OMAP3430_CLKSEL_CAM_MASK			(0x1f << 0)
+#define OMAP3630_CLKSEL_CAM_MASK			(0x3f << 0)
+
+/* CM_SLEEPDEP_CAM specific bits */
+
+/* CM_CLKSTCTRL_CAM */
+#define OMAP3430_CLKTRCTRL_CAM_SHIFT			0
+#define OMAP3430_CLKTRCTRL_CAM_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_CAM */
+#define OMAP3430_CLKACTIVITY_CAM_SHIFT			0
+#define OMAP3430_CLKACTIVITY_CAM_MASK			(1 << 0)
+
+/* CM_FCLKEN_PER specific bits */
+
+/* CM_ICLKEN_PER specific bits */
+
+/* CM_IDLEST_PER */
+#define OMAP3430_ST_WDT3_SHIFT				12
+#define OMAP3430_ST_WDT3_MASK				(1 << 12)
+#define OMAP3430_ST_MCBSP4_SHIFT			2
+#define OMAP3430_ST_MCBSP4_MASK				(1 << 2)
+#define OMAP3430_ST_MCBSP3_SHIFT			1
+#define OMAP3430_ST_MCBSP3_MASK				(1 << 1)
+#define OMAP3430_ST_MCBSP2_SHIFT			0
+#define OMAP3430_ST_MCBSP2_MASK				(1 << 0)
+
+/* CM_AUTOIDLE_PER */
+#define OMAP3430_AUTO_GPIO6_MASK			(1 << 17)
+#define OMAP3430_AUTO_GPIO6_SHIFT			17
+#define OMAP3430_AUTO_GPIO5_MASK			(1 << 16)
+#define OMAP3430_AUTO_GPIO5_SHIFT			16
+#define OMAP3430_AUTO_GPIO4_MASK			(1 << 15)
+#define OMAP3430_AUTO_GPIO4_SHIFT			15
+#define OMAP3430_AUTO_GPIO3_MASK			(1 << 14)
+#define OMAP3430_AUTO_GPIO3_SHIFT			14
+#define OMAP3430_AUTO_GPIO2_MASK			(1 << 13)
+#define OMAP3430_AUTO_GPIO2_SHIFT			13
+#define OMAP3430_AUTO_WDT3_MASK				(1 << 12)
+#define OMAP3430_AUTO_WDT3_SHIFT			12
+#define OMAP3430_AUTO_UART3_MASK			(1 << 11)
+#define OMAP3430_AUTO_UART3_SHIFT			11
+#define OMAP3430_AUTO_GPT9_MASK				(1 << 10)
+#define OMAP3430_AUTO_GPT9_SHIFT			10
+#define OMAP3430_AUTO_GPT8_MASK				(1 << 9)
+#define OMAP3430_AUTO_GPT8_SHIFT			9
+#define OMAP3430_AUTO_GPT7_MASK				(1 << 8)
+#define OMAP3430_AUTO_GPT7_SHIFT			8
+#define OMAP3430_AUTO_GPT6_MASK				(1 << 7)
+#define OMAP3430_AUTO_GPT6_SHIFT			7
+#define OMAP3430_AUTO_GPT5_MASK				(1 << 6)
+#define OMAP3430_AUTO_GPT5_SHIFT			6
+#define OMAP3430_AUTO_GPT4_MASK				(1 << 5)
+#define OMAP3430_AUTO_GPT4_SHIFT			5
+#define OMAP3430_AUTO_GPT3_MASK				(1 << 4)
+#define OMAP3430_AUTO_GPT3_SHIFT			4
+#define OMAP3430_AUTO_GPT2_MASK				(1 << 3)
+#define OMAP3430_AUTO_GPT2_SHIFT			3
+#define OMAP3430_AUTO_MCBSP4_MASK			(1 << 2)
+#define OMAP3430_AUTO_MCBSP4_SHIFT			2
+#define OMAP3430_AUTO_MCBSP3_MASK			(1 << 1)
+#define OMAP3430_AUTO_MCBSP3_SHIFT			1
+#define OMAP3430_AUTO_MCBSP2_MASK			(1 << 0)
+#define OMAP3430_AUTO_MCBSP2_SHIFT			0
+
+/* CM_CLKSEL_PER */
+#define OMAP3430_CLKSEL_GPT9_MASK			(1 << 7)
+#define OMAP3430_CLKSEL_GPT9_SHIFT			7
+#define OMAP3430_CLKSEL_GPT8_MASK			(1 << 6)
+#define OMAP3430_CLKSEL_GPT8_SHIFT			6
+#define OMAP3430_CLKSEL_GPT7_MASK			(1 << 5)
+#define OMAP3430_CLKSEL_GPT7_SHIFT			5
+#define OMAP3430_CLKSEL_GPT6_MASK			(1 << 4)
+#define OMAP3430_CLKSEL_GPT6_SHIFT			4
+#define OMAP3430_CLKSEL_GPT5_MASK			(1 << 3)
+#define OMAP3430_CLKSEL_GPT5_SHIFT			3
+#define OMAP3430_CLKSEL_GPT4_MASK			(1 << 2)
+#define OMAP3430_CLKSEL_GPT4_SHIFT			2
+#define OMAP3430_CLKSEL_GPT3_MASK			(1 << 1)
+#define OMAP3430_CLKSEL_GPT3_SHIFT			1
+#define OMAP3430_CLKSEL_GPT2_MASK			(1 << 0)
+#define OMAP3430_CLKSEL_GPT2_SHIFT			0
+
+/* CM_SLEEPDEP_PER specific bits */
+#define OMAP3430_CM_SLEEPDEP_PER_EN_IVA2_MASK		(1 << 2)
+
+/* CM_CLKSTCTRL_PER */
+#define OMAP3430_CLKTRCTRL_PER_SHIFT			0
+#define OMAP3430_CLKTRCTRL_PER_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_PER */
+#define OMAP3430_CLKACTIVITY_PER_SHIFT			0
+#define OMAP3430_CLKACTIVITY_PER_MASK			(1 << 0)
+
+/* CM_CLKSEL1_EMU */
+#define OMAP3430_DIV_DPLL4_SHIFT			24
+#define OMAP3430_DIV_DPLL4_MASK				(0x1f << 24)
+#define OMAP3630_DIV_DPLL4_MASK				(0x3f << 24)
+#define OMAP3430_DIV_DPLL3_SHIFT			16
+#define OMAP3430_DIV_DPLL3_MASK				(0x1f << 16)
+#define OMAP3430_CLKSEL_TRACECLK_SHIFT			11
+#define OMAP3430_CLKSEL_TRACECLK_MASK			(0x7 << 11)
+#define OMAP3430_CLKSEL_PCLK_SHIFT			8
+#define OMAP3430_CLKSEL_PCLK_MASK			(0x7 << 8)
+#define OMAP3430_CLKSEL_PCLKX2_SHIFT			6
+#define OMAP3430_CLKSEL_PCLKX2_MASK			(0x3 << 6)
+#define OMAP3430_CLKSEL_ATCLK_SHIFT			4
+#define OMAP3430_CLKSEL_ATCLK_MASK			(0x3 << 4)
+#define OMAP3430_TRACE_MUX_CTRL_SHIFT			2
+#define OMAP3430_TRACE_MUX_CTRL_MASK			(0x3 << 2)
+#define OMAP3430_MUX_CTRL_SHIFT				0
+#define OMAP3430_MUX_CTRL_MASK				(0x3 << 0)
+
+/* CM_CLKSTCTRL_EMU */
+#define OMAP3430_CLKTRCTRL_EMU_SHIFT			0
+#define OMAP3430_CLKTRCTRL_EMU_MASK			(0x3 << 0)
+
+/* CM_CLKSTST_EMU */
+#define OMAP3430_CLKACTIVITY_EMU_SHIFT			0
+#define OMAP3430_CLKACTIVITY_EMU_MASK			(1 << 0)
+
+/* CM_CLKSEL2_EMU specific bits */
+#define OMAP3430_CORE_DPLL_EMU_MULT_SHIFT		8
+#define OMAP3430_CORE_DPLL_EMU_MULT_MASK		(0x7ff << 8)
+#define OMAP3430_CORE_DPLL_EMU_DIV_SHIFT		0
+#define OMAP3430_CORE_DPLL_EMU_DIV_MASK			(0x7f << 0)
+
+/* CM_CLKSEL3_EMU specific bits */
+#define OMAP3430_PERIPH_DPLL_EMU_MULT_SHIFT		8
+#define OMAP3430_PERIPH_DPLL_EMU_MULT_MASK		(0x7ff << 8)
+#define OMAP3430_PERIPH_DPLL_EMU_DIV_SHIFT		0
+#define OMAP3430_PERIPH_DPLL_EMU_DIV_MASK		(0x7f << 0)
+
+/* CM_POLCTRL */
+#define OMAP3430_CLKOUT2_POL_MASK			(1 << 0)
+
+/* CM_IDLEST_NEON */
+#define OMAP3430_ST_NEON_MASK				(1 << 0)
+
+/* CM_CLKSTCTRL_NEON */
+#define OMAP3430_CLKTRCTRL_NEON_SHIFT			0
+#define OMAP3430_CLKTRCTRL_NEON_MASK			(0x3 << 0)
+
+/* CM_FCLKEN_USBHOST */
+#define OMAP3430ES2_EN_USBHOST2_SHIFT			1
+#define OMAP3430ES2_EN_USBHOST2_MASK			(1 << 1)
+#define OMAP3430ES2_EN_USBHOST1_SHIFT			0
+#define OMAP3430ES2_EN_USBHOST1_MASK			(1 << 0)
+
+/* CM_ICLKEN_USBHOST */
+#define OMAP3430ES2_EN_USBHOST_SHIFT			0
+#define OMAP3430ES2_EN_USBHOST_MASK			(1 << 0)
+
+/* CM_IDLEST_USBHOST */
+#define OMAP3430ES2_ST_USBHOST_IDLE_SHIFT		1
+#define OMAP3430ES2_ST_USBHOST_IDLE_MASK		(1 << 1)
+#define OMAP3430ES2_ST_USBHOST_STDBY_SHIFT		0
+#define OMAP3430ES2_ST_USBHOST_STDBY_MASK		(1 << 0)
+
+/* CM_AUTOIDLE_USBHOST */
+#define OMAP3430ES2_AUTO_USBHOST_SHIFT			0
+#define OMAP3430ES2_AUTO_USBHOST_MASK			(1 << 0)
+
+/* CM_SLEEPDEP_USBHOST */
+#define OMAP3430ES2_EN_MPU_SHIFT			1
+#define OMAP3430ES2_EN_MPU_MASK				(1 << 1)
+#define OMAP3430ES2_EN_IVA2_SHIFT			2
+#define OMAP3430ES2_EN_IVA2_MASK			(1 << 2)
+
+/* CM_CLKSTCTRL_USBHOST */
+#define OMAP3430ES2_CLKTRCTRL_USBHOST_SHIFT		0
+#define OMAP3430ES2_CLKTRCTRL_USBHOST_MASK		(3 << 0)
+
+/* CM_CLKSTST_USBHOST */
+#define OMAP3430ES2_CLKACTIVITY_USBHOST_SHIFT		0
+#define OMAP3430ES2_CLKACTIVITY_USBHOST_MASK		(1 << 0)
+
+#endif
diff --git a/arch/arm/mach-omap/include/mach/ehci.h b/arch/arm/mach-omap/include/mach/ehci.h
new file mode 100644
index 0000000..cccb9ad
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/ehci.h
@@ -0,0 +1,109 @@
+/*
+ * Copyright (C) 2010 Michael Grzeschik <mgr@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __OMAP_EHCI_H
+#define __OMAP_EHCI_H
+
+/* TLL Register Set */
+#define	OMAP_USBTLL_REVISION				(0x00)
+#define	OMAP_USBTLL_SYSCONFIG				(0x10)
+#define	OMAP_USBTLL_SYSCONFIG_CACTIVITY			(1 << 8)
+#define	OMAP_USBTLL_SYSCONFIG_SIDLEMODE			(1 << 3)
+#define	OMAP_USBTLL_SYSCONFIG_ENAWAKEUP			(1 << 2)
+#define	OMAP_USBTLL_SYSCONFIG_SOFTRESET			(1 << 1)
+#define	OMAP_USBTLL_SYSCONFIG_AUTOIDLE			(1 << 0)
+
+#define	OMAP_USBTLL_SYSSTATUS				(0x14)
+#define	OMAP_USBTLL_SYSSTATUS_RESETDONE			(1 << 0)
+
+#define	OMAP_USBTLL_IRQSTATUS				(0x18)
+#define	OMAP_USBTLL_IRQENABLE				(0x1C)
+
+#define	OMAP_TLL_SHARED_CONF				(0x30)
+#define	OMAP_TLL_SHARED_CONF_USB_90D_DDR_EN		(1 << 6)
+#define	OMAP_TLL_SHARED_CONF_USB_180D_SDR_EN		(1 << 5)
+#define	OMAP_TLL_SHARED_CONF_USB_DIVRATION		(1 << 2)
+#define	OMAP_TLL_SHARED_CONF_FCLK_REQ			(1 << 1)
+#define	OMAP_TLL_SHARED_CONF_FCLK_IS_ON			(1 << 0)
+
+#define	OMAP_TLL_CHANNEL_CONF(num)			(0x040 + 0x004 * num)
+#define	OMAP_TLL_CHANNEL_CONF_ULPINOBITSTUFF		(1 << 11)
+#define	OMAP_TLL_CHANNEL_CONF_ULPI_ULPIAUTOIDLE		(1 << 10)
+#define	OMAP_TLL_CHANNEL_CONF_UTMIAUTOIDLE		(1 << 9)
+#define	OMAP_TLL_CHANNEL_CONF_ULPIDDRMODE		(1 << 8)
+#define	OMAP_TLL_CHANNEL_CONF_CHANEN			(1 << 0)
+
+#define	OMAP_TLL_ULPI_FUNCTION_CTRL(num)		(0x804 + 0x100 * num)
+#define	OMAP_TLL_ULPI_INTERFACE_CTRL(num)		(0x807 + 0x100 * num)
+#define	OMAP_TLL_ULPI_OTG_CTRL(num)			(0x80A + 0x100 * num)
+#define	OMAP_TLL_ULPI_INT_EN_RISE(num)			(0x80D + 0x100 * num)
+#define	OMAP_TLL_ULPI_INT_EN_FALL(num)			(0x810 + 0x100 * num)
+#define	OMAP_TLL_ULPI_INT_STATUS(num)			(0x813 + 0x100 * num)
+#define	OMAP_TLL_ULPI_INT_LATCH(num)			(0x814 + 0x100 * num)
+#define	OMAP_TLL_ULPI_DEBUG(num)			(0x815 + 0x100 * num)
+#define	OMAP_TLL_ULPI_SCRATCH_REGISTER(num)		(0x816 + 0x100 * num)
+
+#define OMAP_TLL_CHANNEL_COUNT				3
+#define OMAP_TLL_CHANNEL_1_EN_MASK			(1 << 1)
+#define OMAP_TLL_CHANNEL_2_EN_MASK			(1 << 2)
+#define OMAP_TLL_CHANNEL_3_EN_MASK			(1 << 4)
+
+/* UHH Register Set */
+#define	OMAP_UHH_REVISION				(0x00)
+#define	OMAP_UHH_SYSCONFIG				(0x10)
+#define	OMAP_UHH_SYSCONFIG_MIDLEMODE			(1 << 12)
+#define	OMAP_UHH_SYSCONFIG_CACTIVITY			(1 << 8)
+#define	OMAP_UHH_SYSCONFIG_SIDLEMODE			(1 << 3)
+#define	OMAP_UHH_SYSCONFIG_ENAWAKEUP			(1 << 2)
+#define	OMAP_UHH_SYSCONFIG_SOFTRESET			(1 << 1)
+#define	OMAP_UHH_SYSCONFIG_AUTOIDLE			(1 << 0)
+
+#define	OMAP_UHH_SYSSTATUS				(0x14)
+#define	OMAP_UHH_HOSTCONFIG				(0x40)
+#define	OMAP_UHH_HOSTCONFIG_ULPI_BYPASS			(1 << 0)
+#define	OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS		(1 << 0)
+#define	OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS		(1 << 11)
+#define	OMAP_UHH_HOSTCONFIG_ULPI_P3_BYPASS		(1 << 12)
+#define OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN		(1 << 2)
+#define OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN		(1 << 3)
+#define OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN		(1 << 4)
+#define OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN		(1 << 5)
+#define OMAP_UHH_HOSTCONFIG_P1_CONNECT_STATUS		(1 << 8)
+#define OMAP_UHH_HOSTCONFIG_P2_CONNECT_STATUS		(1 << 9)
+#define OMAP_UHH_HOSTCONFIG_P3_CONNECT_STATUS		(1 << 10)
+
+#define	OMAP_UHH_DEBUG_CSR				(0x44)
+
+/* EHCI Register Set */
+#define	EHCI_INSNREG05_ULPI				(0xA4)
+#define	EHCI_INSNREG05_ULPI_CONTROL_SHIFT		31
+#define	EHCI_INSNREG05_ULPI_PORTSEL_SHIFT		24
+#define	EHCI_INSNREG05_ULPI_OPSEL_SHIFT			22
+#define	EHCI_INSNREG05_ULPI_REGADD_SHIFT		16
+#define	EHCI_INSNREG05_ULPI_EXTREGADD_SHIFT		8
+#define	EHCI_INSNREG05_ULPI_WRDATA_SHIFT		0
+
+#define OMAP3_HS_USB_PORTS      3
+
+enum ehci_hcd_omap_mode {
+        EHCI_HCD_OMAP_MODE_UNKNOWN,
+        EHCI_HCD_OMAP_MODE_PHY,
+        EHCI_HCD_OMAP_MODE_TLL,
+};
+
+struct omap_hcd {
+        enum ehci_hcd_omap_mode         port_mode[OMAP3_HS_USB_PORTS];
+        unsigned                        phy_reset:1;
+
+        /* have to be valid if phy_reset is true and portx is in phy mode */
+        int     reset_gpio_port[OMAP3_HS_USB_PORTS];
+};
+
+void omap_usb_utmi_init(struct omap_hcd *omap, u8 tll_channel_mask);
+int ehci_omap_init(struct omap_hcd *omap);
+
+#endif /* __OMAP_EHCI_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index 22694f2..b655fe3 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -43,8 +43,11 @@
 #define CM_CLKSEL1_PLL_MPU	0X0940
 #define CM_CLKSEL2_PLL_MPU	0X0944
 #define CM_FCLKEN1_CORE		0X0A00
+#define CM_FCLKEN3_CORE		0X0A08
 #define CM_ICLKEN1_CORE		0X0A10
 #define CM_ICLKEN2_CORE		0X0A14
+#define CM_ICLKEN3_CORE		0X0A18
+#define CM_AIDLE3_CORE		0X0A38
 #define CM_CLKSEL_CORE		0X0A40
 #define CM_FCLKEN_GFX		0X0B00
 #define CM_ICLKEN_GFX		0X0B10
@@ -54,10 +57,13 @@
 #define CM_CLKSEL_WKUP		0X0C40
 #define CM_IDLEST_WKUP		0X0C20
 #define CM_CLKEN_PLL		0X0D00
+#define CM_CLKEN2_PLL		0X0D04
 #define CM_IDLEST_CKGEN		0X0D20
 #define CM_CLKSEL1_PLL		0X0D40
 #define CM_CLKSEL2_PLL		0X0D44
 #define CM_CLKSEL3_PLL		0X0D48
+#define CM_CLKSEL4_PLL		0X0D4C
+#define CM_CLKSEL5_PLL		0X0D50
 #define CM_FCLKEN_DSS		0X0E00
 #define CM_ICLKEN_DSS		0X0E10
 #define CM_CLKSEL_DSS		0X0E40
@@ -68,6 +74,11 @@
 #define CM_ICLKEN_PER		0X1010
 #define CM_CLKSEL_PER		0X1040
 #define CM_CLKSEL1_EMU		0X1140
+#define CM_FCLKEN_USBH		0x1400
+#define CM_ICLKEN_USBH		0x1410
+#define CM_AIDLE_USBH		0x1430
+#define CM_SLEEPD_USBH		0x1444
+#define CM_CLKSTCTRL_USBH	0x1448
 
 /** PRM Clock Regs */
 #define PRM_REG(REGNAME)	(OMAP_PRM_BASE + PRM_##REGNAME)
diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index dde2412..62e612b 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -100,6 +100,12 @@
 /** MPU WDT Definition */
 #define OMAP_MPU_WDTIMER_BASE	OMAP_WDTIMER2_BASE
 
+#define OMAP_HSUSB_OTG_BASE    (OMAP_L4_CORE_BASE + 0xAB000)
+#define OMAP_USBTLL_BASE       (OMAP_L4_CORE_BASE + 0x62000)
+#define OMAP_UHH_CONFIG_BASE   (OMAP_L4_CORE_BASE + 0x64000)
+#define OMAP_OHCI_BASE         (OMAP_L4_CORE_BASE + 0x64400)
+#define OMAP_EHCI_BASE         (OMAP_L4_CORE_BASE + 0x64800)
+
 /** Interrupt Vector base address */
 #define OMAP_SRAM_INTVECT	0x4020F800
 #define OMAP_SRAM_INTVECT_COPYSIZE	0x64
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index e1549e8..145f7d1 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -1,2 +1,6 @@
 config USB_EHCI
 	bool "EHCI driver"
+
+config USB_EHCI_OMAP
+	depends on ARCH_OMAP3
+	bool "OMAP EHCI driver"
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 6c48e3a..a334b08 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
+obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
diff --git a/drivers/usb/host/ehci-omap.c b/drivers/usb/host/ehci-omap.c
new file mode 100644
index 0000000..0c30c52
--- /dev/null
+++ b/drivers/usb/host/ehci-omap.c
@@ -0,0 +1,260 @@
+/*
+ * Copyright (C) 2010 Michael Grzeschik <mgr@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+/*
+ * OMAP USBHOST Register addresses: VIRTUAL ADDRESSES
+ */
+
+/*-------------------------------------------------------------------------*/
+
+#include <i2c/twl4030.h>
+#include <usb/twl4030.h>
+#include <mach/ehci.h>
+#include <common.h>
+#include <asm/io.h>
+#include <clock.h>
+#include <gpio.h>
+#include <mach/omap3-silicon.h>
+#include <mach/omap3-clock.h>
+#include <mach/cm-regbits-34xx.h>
+#include <mach/sys_info.h>
+
+void omap_usb_utmi_init(struct omap_hcd *omap, u8 tll_channel_mask)
+{
+	unsigned reg;
+	int i;
+
+	/* Program the 3 TLL channels upfront */
+	for (i = 0; i < OMAP_TLL_CHANNEL_COUNT; i++) {
+		reg = __raw_readl(OMAP_USBTLL_BASE + OMAP_TLL_CHANNEL_CONF(i));
+
+		/* Disable AutoIdle, BitStuffing and use SDR Mode */
+		reg &= ~(OMAP_TLL_CHANNEL_CONF_UTMIAUTOIDLE
+				| OMAP_TLL_CHANNEL_CONF_ULPINOBITSTUFF
+				| OMAP_TLL_CHANNEL_CONF_ULPIDDRMODE);
+		__raw_writel(reg, OMAP_USBTLL_BASE + OMAP_TLL_CHANNEL_CONF(i));
+	}
+
+	/* Program Common TLL register */
+	reg = __raw_readl(OMAP_USBTLL_BASE + OMAP_TLL_SHARED_CONF);
+	reg |= (OMAP_TLL_SHARED_CONF_FCLK_IS_ON
+			| OMAP_TLL_SHARED_CONF_USB_DIVRATION
+			| OMAP_TLL_SHARED_CONF_USB_180D_SDR_EN);
+	reg &= ~OMAP_TLL_SHARED_CONF_USB_90D_DDR_EN;
+
+	__raw_writel(reg, OMAP_USBTLL_BASE + OMAP_TLL_SHARED_CONF);
+
+	/* Enable channels now */
+	for (i = 0; i < OMAP_TLL_CHANNEL_COUNT; i++) {
+		reg = __raw_readl(OMAP_USBTLL_BASE + OMAP_TLL_CHANNEL_CONF(i));
+
+		/* Enable only the reg that is needed */
+		if (!(tll_channel_mask & 1<<i))
+			continue;
+
+		reg |= OMAP_TLL_CHANNEL_CONF_CHANEN;
+		__raw_writel(reg, OMAP_USBTLL_BASE + OMAP_TLL_CHANNEL_CONF(i));
+
+		__raw_writeb(0xbe,
+			OMAP_USBTLL_BASE + OMAP_TLL_ULPI_SCRATCH_REGISTER(i));
+	}
+}
+
+int ehci_omap_init(struct omap_hcd *omap)
+{
+	uint64_t start;
+	int timeout = 1000;
+	u8 tll_ch_mask = 0;
+	u32 v = 0;
+
+	if (twl4030_usb_ulpi_init()) {
+		printf("ERROR: %s Could not initialize PHY\n",
+			__PRETTY_FUNCTION__);
+		return -EINVAL;
+	}
+
+
+	v = __raw_readl(CM_REG(CLKSEL4_PLL));
+	v |= (12 << OMAP3430ES2_PERIPH2_DPLL_DIV_SHIFT);
+	v |= (120 << OMAP3430ES2_PERIPH2_DPLL_MULT_SHIFT);
+	__raw_writel(v, CM_REG(CLKSEL4_PLL));
+
+	v = __raw_readl(CM_REG(CLKSEL5_PLL));
+	v |= (1 << OMAP3430ES2_DIV_120M_SHIFT);
+	__raw_writel(v, CM_REG(CLKSEL5_PLL));
+
+	v = __raw_readl(CM_REG(CLKEN2_PLL));
+	v |= (7 << OMAP3430ES2_PERIPH2_DPLL_FREQSEL_SHIFT);
+	v |= (7 << OMAP3430ES2_EN_PERIPH2_DPLL_SHIFT);
+	__raw_writel(v, CM_REG(CLKEN2_PLL));
+
+	/* PRCM settings for USBHOST:
+	* Interface clk un-related to domain transition
+	*/
+
+	v = __raw_readl(CM_REG(AIDLE_USBH));
+	v |= (0 << OMAP3430ES2_AUTO_USBHOST_SHIFT);
+	__raw_writel(v, CM_REG(AIDLE_USBH));
+
+        /* Disable sleep dependency with MPU and IVA */
+
+	v = __raw_readl(CM_REG(SLEEPD_USBH));
+	v |= (0 << OMAP3430ES2_EN_MPU_SHIFT);
+	v |= (0 << OMAP3430ES2_EN_IVA2_SHIFT);
+	__raw_writel(v, CM_REG(SLEEPD_USBH));
+
+	/* Disable Automatic transition of clock */
+	v = __raw_readl(CM_REG(CLKSTCTRL_USBH));
+	v |= (0 << OMAP3430ES2_CLKTRCTRL_USBHOST_SHIFT);
+	__raw_writel(v, CM_REG(CLKSTCTRL_USBH));
+
+	/* Enable Clocks for USBHOST */
+
+	/* enable usbhost_ick */
+	v = __raw_readl(CM_REG(ICLKEN_USBH));
+	v |= (1 << OMAP3430ES2_EN_USBHOST_SHIFT);
+	__raw_writel(v, CM_REG(ICLKEN_USBH));
+
+	/* enable usbhost_120m_fck */
+	v = __raw_readl(CM_REG(FCLKEN_USBH));
+	v |= (1 << OMAP3430ES2_EN_USBHOST2_SHIFT);
+	__raw_writel(v, CM_REG(FCLKEN_USBH));
+
+	/* enable usbhost_48m_fck */
+	v = __raw_readl(CM_REG(FCLKEN_USBH));
+	v |= (1 << OMAP3430ES2_EN_USBHOST1_SHIFT);
+	__raw_writel(v, CM_REG(FCLKEN_USBH));
+
+	if (omap->phy_reset) {
+		/* Refer: ISSUE1 */
+		if (omap->reset_gpio_port[0] != -EINVAL) {
+			gpio_direction_output(omap->reset_gpio_port[0], 0);
+		}
+
+		if (omap->reset_gpio_port[1] != -EINVAL) {
+			gpio_direction_output(omap->reset_gpio_port[1], 0);
+		}
+
+		/* Hold the PHY in RESET for enough time till DIR is high */
+		mdelay(10);
+	}
+
+	/* enable usbtll_fck  */
+	v = __raw_readl(CM_REG(FCLKEN3_CORE));
+	v |= (1 << OMAP3430ES2_EN_USBTLL_SHIFT);
+	__raw_writel(v, CM_REG(FCLKEN3_CORE));
+
+	/* Configure TLL for 60Mhz clk for ULPI */
+	/* enable usbtll_ick */
+	v = __raw_readl(CM_REG(ICLKEN3_CORE));
+	v |= (1 << OMAP3430ES2_EN_USBTLL_SHIFT);
+	__raw_writel(v, CM_REG(ICLKEN3_CORE));
+
+	v = __raw_readl(CM_REG(AIDLE3_CORE));
+	v |= (0 << OMAP3430ES2_AUTO_USBTLL_SHIFT);
+	__raw_writel(v, CM_REG(AIDLE3_CORE));
+
+	/* perform TLL soft reset, and wait until reset is complete */
+	__raw_writel(OMAP_USBTLL_SYSCONFIG_SOFTRESET,
+				OMAP_USBTLL_BASE + OMAP_USBTLL_SYSCONFIG);
+
+	/* Wait for TLL reset to complete */
+	start = get_time_ns();
+
+	while (!(__raw_readl(OMAP_USBTLL_BASE + OMAP_USBTLL_SYSSTATUS)
+			& OMAP_USBTLL_SYSSTATUS_RESETDONE)) {
+		if (is_timeout(start, timeout * USECOND)) {
+			return -ETIMEDOUT;
+		}
+	}
+
+	/* (1<<3) = no idle mode only for initial debugging */
+	__raw_writel(OMAP_USBTLL_SYSCONFIG_ENAWAKEUP |
+			OMAP_USBTLL_SYSCONFIG_SIDLEMODE |
+			OMAP_USBTLL_SYSCONFIG_CACTIVITY, OMAP_USBTLL_BASE + OMAP_USBTLL_SYSCONFIG);
+
+	/* Put UHH in NoIdle/NoStandby mode */
+	v = __raw_readl(OMAP_UHH_CONFIG_BASE + OMAP_UHH_SYSCONFIG);
+	v |= (OMAP_UHH_SYSCONFIG_ENAWAKEUP
+			| OMAP_UHH_SYSCONFIG_SIDLEMODE
+			| OMAP_UHH_SYSCONFIG_CACTIVITY
+			| OMAP_UHH_SYSCONFIG_MIDLEMODE);
+	v &= ~OMAP_UHH_SYSCONFIG_AUTOIDLE;
+	__raw_writel(v, OMAP_UHH_CONFIG_BASE + OMAP_UHH_SYSCONFIG);
+
+	v = __raw_readl(OMAP_UHH_CONFIG_BASE + OMAP_UHH_HOSTCONFIG);
+	/* setup ULPI bypass and burst configurations */
+	v |= (OMAP_UHH_HOSTCONFIG_INCR4_BURST_EN
+			| OMAP_UHH_HOSTCONFIG_INCR8_BURST_EN
+			| OMAP_UHH_HOSTCONFIG_INCR16_BURST_EN);
+	v &= ~OMAP_UHH_HOSTCONFIG_INCRX_ALIGN_EN;
+
+	if (omap->port_mode[0] == EHCI_HCD_OMAP_MODE_UNKNOWN)
+		v &= ~OMAP_UHH_HOSTCONFIG_P1_CONNECT_STATUS;
+	if (omap->port_mode[1] == EHCI_HCD_OMAP_MODE_UNKNOWN)
+		v &= ~OMAP_UHH_HOSTCONFIG_P2_CONNECT_STATUS;
+	if (omap->port_mode[2] == EHCI_HCD_OMAP_MODE_UNKNOWN)
+		v &= ~OMAP_UHH_HOSTCONFIG_P3_CONNECT_STATUS;
+
+	/* Bypass the TLL module for PHY mode operation */
+	 if (get_cpu_rev() <= CPU_ES2P1) {
+		if ((omap->port_mode[0] == EHCI_HCD_OMAP_MODE_PHY) ||
+			(omap->port_mode[1] == EHCI_HCD_OMAP_MODE_PHY) ||
+				(omap->port_mode[2] == EHCI_HCD_OMAP_MODE_PHY))
+			v &= ~OMAP_UHH_HOSTCONFIG_ULPI_BYPASS;
+		else
+			v |= OMAP_UHH_HOSTCONFIG_ULPI_BYPASS;
+	} else {
+		if (omap->port_mode[0] == EHCI_HCD_OMAP_MODE_PHY)
+			v &= ~OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS;
+		else if (omap->port_mode[0] == EHCI_HCD_OMAP_MODE_TLL)
+			v |= OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS;
+
+		if (omap->port_mode[1] == EHCI_HCD_OMAP_MODE_PHY)
+			v &= ~OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS;
+		else if (omap->port_mode[1] == EHCI_HCD_OMAP_MODE_TLL)
+			v |= OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS;
+
+		if (omap->port_mode[2] == EHCI_HCD_OMAP_MODE_PHY)
+			v &= ~OMAP_UHH_HOSTCONFIG_ULPI_P3_BYPASS;
+		else if (omap->port_mode[2] == EHCI_HCD_OMAP_MODE_TLL)
+			v |= OMAP_UHH_HOSTCONFIG_ULPI_P3_BYPASS;
+
+	}
+	__raw_writel(v, OMAP_UHH_CONFIG_BASE + OMAP_UHH_HOSTCONFIG);
+
+	if ((omap->port_mode[0] == EHCI_HCD_OMAP_MODE_TLL) ||
+		(omap->port_mode[1] == EHCI_HCD_OMAP_MODE_TLL) ||
+			(omap->port_mode[2] == EHCI_HCD_OMAP_MODE_TLL)) {
+
+		if (omap->port_mode[0] == EHCI_HCD_OMAP_MODE_TLL)
+			tll_ch_mask |= OMAP_TLL_CHANNEL_1_EN_MASK;
+		if (omap->port_mode[1] == EHCI_HCD_OMAP_MODE_TLL)
+			tll_ch_mask |= OMAP_TLL_CHANNEL_2_EN_MASK;
+		if (omap->port_mode[2] == EHCI_HCD_OMAP_MODE_TLL)
+			tll_ch_mask |= OMAP_TLL_CHANNEL_3_EN_MASK;
+
+		/* Enable UTMI mode for required TLL channels */
+		omap_usb_utmi_init(omap, tll_ch_mask);
+	}
+
+	if (omap->phy_reset) {
+		/* Refer ISSUE1:
+		 * Hold the PHY in RESET for enough time till
+		 * PHY is settled and ready
+		 */
+		udelay(10);
+
+		if (omap->reset_gpio_port[0] != -EINVAL)
+			gpio_direction_output(omap->reset_gpio_port[0], 1);
+
+		if (omap->reset_gpio_port[1] != -EINVAL)
+			gpio_direction_output(omap->reset_gpio_port[1], 1);
+	}
+
+	return 0;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
