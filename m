Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ5G-0008IC-3R
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:30 +0100
Message-Id: <1418151816-24593-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/13] ARM: mxs: Add lowlevel setup from U-Boot
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

U-Boot has code to replace the infamous Freescale bootlet code.
This patch adds this for barebox with some changes:
- Separate it more into mx23/mx28 functions instead of mxs functions
  with #ifdefs for the actual SoC
- Add mx2x_power_init_battery_input() power entry point for boards
  which have a regulated input on the battery pin to supply the board.
- Export more functions to be more flexible when boards need non standard
  setup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile                         |    1 +
 arch/arm/mach-mxs/include/mach/init.h              |   30 +
 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h |  208 ++++
 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h |  283 +++++
 arch/arm/mach-mxs/include/mach/regs-common.h       |   69 ++
 arch/arm/mach-mxs/include/mach/regs-lradc.h        |  387 ++++++
 arch/arm/mach-mxs/include/mach/regs-power-mx28.h   |  408 +++++++
 arch/arm/mach-mxs/include/mach/regs-rtc.h          |  134 ++
 arch/arm/mach-mxs/lradc-init.c                     |   70 ++
 arch/arm/mach-mxs/mem-init.c                       |  292 +++++
 arch/arm/mach-mxs/power-init.c                     | 1274 ++++++++++++++++++++
 11 files changed, 3156 insertions(+)
 create mode 100644 arch/arm/mach-mxs/include/mach/init.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-common.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-lradc.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-power-mx28.h
 create mode 100644 arch/arm/mach-mxs/include/mach/regs-rtc.h
 create mode 100644 arch/arm/mach-mxs/lradc-init.c
 create mode 100644 arch/arm/mach-mxs/mem-init.c
 create mode 100644 arch/arm/mach-mxs/power-init.c

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index bd6892e..bf949bc 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_ARCH_IMX23) += clocksource-imx23.o usb-imx23.o soc-imx23.o
 obj-$(CONFIG_ARCH_IMX28) += clocksource-imx28.o usb-imx28.o soc-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
 obj-$(CONFIG_MXS_CMD_BCB) += bcb.o
+pbl-y += power-init.o mem-init.o lradc-init.o
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
new file mode 100644
index 0000000..d1ac2e4
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -0,0 +1,30 @@
+/*
+ * Freescale i.MX28 SPL functions
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef	__M28_INIT_H__
+#define	__M28_INIT_H__
+
+void mxs_early_delay(int delay);
+
+void mx23_power_init(void);
+void mx23_power_init_battery_input(void);
+void mx28_power_init(void);
+void mx28_power_init_battery_input(void);
+void mxs_power_wait_pswitch(void);
+
+void mx23_mem_init(void);
+void mx28_mem_init(void);
+void mxs_mem_setup_cpu_and_hbus(void);
+void mxs_mem_setup_vdda(void);
+void mxs_mem_init_clock(unsigned char divider);
+
+void mxs_lradc_init(void);
+void mxs_lradc_enable_batt_measurement(void);
+
+#endif	/* __M28_INIT_H__ */
diff --git a/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h b/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h
new file mode 100644
index 0000000..289b159
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx23.h
@@ -0,0 +1,208 @@
+/*
+ * Freescale i.MX23 CLKCTRL Register Definitions
+ *
+ * Copyright (C) 2012 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * Based on code from LTIB:
+ * Copyright 2008-2010 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __MX23_REGS_CLKCTRL_H__
+#define __MX23_REGS_CLKCTRL_H__
+
+#include <mach/regs-common.h>
+
+#ifndef	__ASSEMBLY__
+struct mxs_clkctrl_regs {
+	mxs_reg_32(hw_clkctrl_pll0ctrl0)	/* 0x00 */
+	uint32_t	hw_clkctrl_pll0ctrl1;	/* 0x10 */
+	uint32_t	reserved_pll0ctrl1[3];	/* 0x14-0x1c */
+	mxs_reg_32(hw_clkctrl_cpu)		/* 0x20 */
+	mxs_reg_32(hw_clkctrl_hbus)		/* 0x30 */
+	mxs_reg_32(hw_clkctrl_xbus)		/* 0x40 */
+	mxs_reg_32(hw_clkctrl_xtal)		/* 0x50 */
+	mxs_reg_32(hw_clkctrl_pix)		/* 0x60 */
+	mxs_reg_32(hw_clkctrl_ssp0)		/* 0x70 */
+	mxs_reg_32(hw_clkctrl_gpmi)		/* 0x80 */
+	mxs_reg_32(hw_clkctrl_spdif)		/* 0x90 */
+	mxs_reg_32(hw_clkctrl_emi)		/* 0xa0 */
+
+	uint32_t	reserved1[4];
+
+	mxs_reg_32(hw_clkctrl_saif0)		/* 0xc0 */
+	mxs_reg_32(hw_clkctrl_tv)		/* 0xd0 */
+	mxs_reg_32(hw_clkctrl_etm)		/* 0xe0 */
+	mxs_reg_8(hw_clkctrl_frac0)		/* 0xf0 */
+	mxs_reg_8(hw_clkctrl_frac1)		/* 0x100 */
+	mxs_reg_32(hw_clkctrl_clkseq)		/* 0x110 */
+	mxs_reg_32(hw_clkctrl_reset)		/* 0x120 */
+	mxs_reg_32(hw_clkctrl_status)		/* 0x130 */
+	mxs_reg_32(hw_clkctrl_version)		/* 0x140 */
+};
+#endif
+
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_MASK		(0x3 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_OFFSET	28
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_DEFAULT	(0x0 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_TIMES_2	(0x1 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_TIMES_05	(0x2 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_UNDEFINED	(0x3 << 28)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_MASK		(0x3 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_OFFSET		24
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_DEFAULT	(0x0 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_TIMES_2	(0x1 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_TIMES_05	(0x2 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_UNDEFINED	(0x3 << 24)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_MASK		(0x3 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_OFFSET	20
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_DEFAULT	(0x0 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_LOWER		(0x1 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_LOWEST	(0x2 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_UNDEFINED	(0x3 << 20)
+#define	CLKCTRL_PLL0CTRL0_EN_USB_CLKS		(1 << 18)
+#define	CLKCTRL_PLL0CTRL0_POWER			(1 << 16)
+
+#define	CLKCTRL_PLL0CTRL1_LOCK			(1 << 31)
+#define	CLKCTRL_PLL0CTRL1_FORCE_LOCK		(1 << 30)
+#define	CLKCTRL_PLL0CTRL1_LOCK_COUNT_MASK	0xffff
+#define	CLKCTRL_PLL0CTRL1_LOCK_COUNT_OFFSET	0
+
+#define	CLKCTRL_CPU_BUSY_REF_XTAL		(1 << 29)
+#define	CLKCTRL_CPU_BUSY_REF_CPU		(1 << 28)
+#define	CLKCTRL_CPU_DIV_XTAL_FRAC_EN		(1 << 26)
+#define	CLKCTRL_CPU_DIV_XTAL_MASK		(0x3ff << 16)
+#define	CLKCTRL_CPU_DIV_XTAL_OFFSET		16
+#define	CLKCTRL_CPU_INTERRUPT_WAIT		(1 << 12)
+#define	CLKCTRL_CPU_DIV_CPU_FRAC_EN		(1 << 10)
+#define	CLKCTRL_CPU_DIV_CPU_MASK		0x3f
+#define	CLKCTRL_CPU_DIV_CPU_OFFSET		0
+
+#define	CLKCTRL_HBUS_BUSY			(1 << 29)
+#define	CLKCTRL_HBUS_DCP_AS_ENABLE		(1 << 28)
+#define	CLKCTRL_HBUS_PXP_AS_ENABLE		(1 << 27)
+#define	CLKCTRL_HBUS_APBHDMA_AS_ENABLE		(1 << 26)
+#define	CLKCTRL_HBUS_APBXDMA_AS_ENABLE		(1 << 25)
+#define	CLKCTRL_HBUS_TRAFFIC_JAM_AS_ENABLE	(1 << 24)
+#define	CLKCTRL_HBUS_TRAFFIC_AS_ENABLE		(1 << 23)
+#define	CLKCTRL_HBUS_CPU_DATA_AS_ENABLE		(1 << 22)
+#define	CLKCTRL_HBUS_CPU_INSTR_AS_ENABLE	(1 << 21)
+#define	CLKCTRL_HBUS_AUTO_SLOW_MODE		(1 << 20)
+#define	CLKCTRL_HBUS_SLOW_DIV_MASK		(0x7 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_OFFSET		16
+#define	CLKCTRL_HBUS_SLOW_DIV_BY1		(0x0 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY2		(0x1 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY4		(0x2 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY8		(0x3 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY16		(0x4 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY32		(0x5 << 16)
+#define	CLKCTRL_HBUS_DIV_FRAC_EN		(1 << 5)
+#define	CLKCTRL_HBUS_DIV_MASK			0x1f
+#define	CLKCTRL_HBUS_DIV_OFFSET			0
+
+#define	CLKCTRL_XBUS_BUSY			(1 << 31)
+#define	CLKCTRL_XBUS_DIV_FRAC_EN		(1 << 10)
+#define	CLKCTRL_XBUS_DIV_MASK			0x3ff
+#define	CLKCTRL_XBUS_DIV_OFFSET			0
+
+#define	CLKCTRL_XTAL_UART_CLK_GATE		(1 << 31)
+#define	CLKCTRL_XTAL_FILT_CLK24M_GATE		(1 << 30)
+#define	CLKCTRL_XTAL_PWM_CLK24M_GATE		(1 << 29)
+#define	CLKCTRL_XTAL_DRI_CLK24M_GATE		(1 << 28)
+#define	CLKCTRL_XTAL_DIGCTRL_CLK1M_GATE		(1 << 27)
+#define	CLKCTRL_XTAL_TIMROT_CLK32K_GATE		(1 << 26)
+#define	CLKCTRL_XTAL_DIV_UART_MASK		0x3
+#define	CLKCTRL_XTAL_DIV_UART_OFFSET		0
+
+#define	CLKCTRL_PIX_CLKGATE			(1 << 31)
+#define	CLKCTRL_PIX_BUSY			(1 << 29)
+#define	CLKCTRL_PIX_DIV_FRAC_EN			(1 << 12)
+#define	CLKCTRL_PIX_DIV_MASK			0xfff
+#define	CLKCTRL_PIX_DIV_OFFSET			0
+
+#define	CLKCTRL_SSP_CLKGATE			(1 << 31)
+#define	CLKCTRL_SSP_BUSY			(1 << 29)
+#define	CLKCTRL_SSP_DIV_FRAC_EN			(1 << 9)
+#define	CLKCTRL_SSP_DIV_MASK			0x1ff
+#define	CLKCTRL_SSP_DIV_OFFSET			0
+
+#define	CLKCTRL_GPMI_CLKGATE			(1 << 31)
+#define	CLKCTRL_GPMI_BUSY			(1 << 29)
+#define	CLKCTRL_GPMI_DIV_FRAC_EN		(1 << 10)
+#define	CLKCTRL_GPMI_DIV_MASK			0x3ff
+#define	CLKCTRL_GPMI_DIV_OFFSET			0
+
+#define	CLKCTRL_SPDIF_CLKGATE			(1 << 31)
+
+#define	CLKCTRL_EMI_CLKGATE			(1 << 31)
+#define	CLKCTRL_EMI_SYNC_MODE_EN		(1 << 30)
+#define	CLKCTRL_EMI_BUSY_REF_XTAL		(1 << 29)
+#define	CLKCTRL_EMI_BUSY_REF_EMI		(1 << 28)
+#define	CLKCTRL_EMI_BUSY_REF_CPU		(1 << 27)
+#define	CLKCTRL_EMI_BUSY_SYNC_MODE		(1 << 26)
+#define	CLKCTRL_EMI_BUSY_DCC_RESYNC		(1 << 17)
+#define	CLKCTRL_EMI_DCC_RESYNC_ENABLE		(1 << 16)
+#define	CLKCTRL_EMI_DIV_XTAL_MASK		(0xf << 8)
+#define	CLKCTRL_EMI_DIV_XTAL_OFFSET		8
+#define	CLKCTRL_EMI_DIV_EMI_MASK		0x3f
+#define	CLKCTRL_EMI_DIV_EMI_OFFSET		0
+
+#define	CLKCTRL_IR_CLKGATE			(1 << 31)
+#define	CLKCTRL_IR_AUTO_DIV			(1 << 29)
+#define	CLKCTRL_IR_IR_BUSY			(1 << 28)
+#define	CLKCTRL_IR_IROV_BUSY			(1 << 27)
+#define	CLKCTRL_IR_IROV_DIV_MASK		(0x1ff << 16)
+#define	CLKCTRL_IR_IROV_DIV_OFFSET		16
+#define	CLKCTRL_IR_IR_DIV_MASK			0x3ff
+#define	CLKCTRL_IR_IR_DIV_OFFSET		0
+
+#define	CLKCTRL_SAIF0_CLKGATE			(1 << 31)
+#define	CLKCTRL_SAIF0_BUSY			(1 << 29)
+#define	CLKCTRL_SAIF0_DIV_FRAC_EN		(1 << 16)
+#define	CLKCTRL_SAIF0_DIV_MASK			0xffff
+#define	CLKCTRL_SAIF0_DIV_OFFSET		0
+
+#define	CLKCTRL_TV_CLK_TV108M_GATE		(1 << 31)
+#define	CLKCTRL_TV_CLK_TV_GATE			(1 << 30)
+
+#define	CLKCTRL_ETM_CLKGATE			(1 << 31)
+#define	CLKCTRL_ETM_BUSY			(1 << 29)
+#define	CLKCTRL_ETM_DIV_FRAC_EN			(1 << 6)
+#define	CLKCTRL_ETM_DIV_MASK			0x3f
+#define	CLKCTRL_ETM_DIV_OFFSET			0
+
+#define	CLKCTRL_FRAC_CLKGATE			(1 << 7)
+#define	CLKCTRL_FRAC_STABLE			(1 << 6)
+#define	CLKCTRL_FRAC_FRAC_MASK			0x3f
+#define	CLKCTRL_FRAC_FRAC_OFFSET		0
+#define	CLKCTRL_FRAC0_CPU			0
+#define	CLKCTRL_FRAC0_EMI			1
+#define	CLKCTRL_FRAC0_PIX			2
+#define	CLKCTRL_FRAC0_IO0			3
+#define	CLKCTRL_FRAC1_VID			3
+
+#define	CLKCTRL_CLKSEQ_BYPASS_ETM		(1 << 8)
+#define	CLKCTRL_CLKSEQ_BYPASS_CPU		(1 << 7)
+#define	CLKCTRL_CLKSEQ_BYPASS_EMI		(1 << 6)
+#define	CLKCTRL_CLKSEQ_BYPASS_SSP0		(1 << 5)
+#define	CLKCTRL_CLKSEQ_BYPASS_GPMI		(1 << 4)
+#define	CLKCTRL_CLKSEQ_BYPASS_IR		(1 << 3)
+#define	CLKCTRL_CLKSEQ_BYPASS_PIX		(1 << 1)
+#define	CLKCTRL_CLKSEQ_BYPASS_SAIF		(1 << 0)
+
+#define	CLKCTRL_RESET_CHIP			(1 << 1)
+#define	CLKCTRL_RESET_DIG			(1 << 0)
+
+#define	CLKCTRL_STATUS_CPU_LIMIT_MASK		(0x3 << 30)
+#define	CLKCTRL_STATUS_CPU_LIMIT_OFFSET		30
+
+#define	CLKCTRL_VERSION_MAJOR_MASK		(0xff << 24)
+#define	CLKCTRL_VERSION_MAJOR_OFFSET		24
+#define	CLKCTRL_VERSION_MINOR_MASK		(0xff << 16)
+#define	CLKCTRL_VERSION_MINOR_OFFSET		16
+#define	CLKCTRL_VERSION_STEP_MASK		0xffff
+#define	CLKCTRL_VERSION_STEP_OFFSET		0
+
+#endif /* __MX23_REGS_CLKCTRL_H__ */
diff --git a/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h b/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h
new file mode 100644
index 0000000..aebb489
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/regs-clkctrl-mx28.h
@@ -0,0 +1,283 @@
+/*
+ * Freescale i.MX28 CLKCTRL Register Definitions
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * Based on code from LTIB:
+ * Copyright 2008-2010 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __MX28_REGS_CLKCTRL_H__
+#define __MX28_REGS_CLKCTRL_H__
+
+#include <mach/regs-common.h>
+
+#ifndef	__ASSEMBLY__
+struct mxs_clkctrl_regs {
+	mxs_reg_32(hw_clkctrl_pll0ctrl0)	/* 0x00 */
+	uint32_t	hw_clkctrl_pll0ctrl1;	/* 0x10 */
+	uint32_t	reserved_pll0ctrl1[3];	/* 0x14-0x1c */
+	mxs_reg_32(hw_clkctrl_pll1ctrl0)	/* 0x20 */
+	uint32_t	hw_clkctrl_pll1ctrl1;	/* 0x30 */
+	uint32_t	reserved_pll1ctrl1[3];	/* 0x34-0x3c */
+	mxs_reg_32(hw_clkctrl_pll2ctrl0)	/* 0x40 */
+	mxs_reg_32(hw_clkctrl_cpu)		/* 0x50 */
+	mxs_reg_32(hw_clkctrl_hbus)		/* 0x60 */
+	mxs_reg_32(hw_clkctrl_xbus)		/* 0x70 */
+	mxs_reg_32(hw_clkctrl_xtal)		/* 0x80 */
+	mxs_reg_32(hw_clkctrl_ssp0)		/* 0x90 */
+	mxs_reg_32(hw_clkctrl_ssp1)		/* 0xa0 */
+	mxs_reg_32(hw_clkctrl_ssp2)		/* 0xb0 */
+	mxs_reg_32(hw_clkctrl_ssp3)		/* 0xc0 */
+	mxs_reg_32(hw_clkctrl_gpmi)		/* 0xd0 */
+	mxs_reg_32(hw_clkctrl_spdif)		/* 0xe0 */
+	mxs_reg_32(hw_clkctrl_emi)		/* 0xf0 */
+	mxs_reg_32(hw_clkctrl_saif0)		/* 0x100 */
+	mxs_reg_32(hw_clkctrl_saif1)		/* 0x110 */
+	mxs_reg_32(hw_clkctrl_lcdif)		/* 0x120 */
+	mxs_reg_32(hw_clkctrl_etm)		/* 0x130 */
+	mxs_reg_32(hw_clkctrl_enet)		/* 0x140 */
+	mxs_reg_32(hw_clkctrl_hsadc)		/* 0x150 */
+	mxs_reg_32(hw_clkctrl_flexcan)		/* 0x160 */
+
+	uint32_t	reserved[16];
+
+	mxs_reg_8(hw_clkctrl_frac0)		/* 0x1b0 */
+	mxs_reg_8(hw_clkctrl_frac1)		/* 0x1c0 */
+	mxs_reg_32(hw_clkctrl_clkseq)		/* 0x1d0 */
+	mxs_reg_32(hw_clkctrl_reset)		/* 0x1e0 */
+	mxs_reg_32(hw_clkctrl_status)		/* 0x1f0 */
+	mxs_reg_32(hw_clkctrl_version)		/* 0x200 */
+};
+#endif
+
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_MASK		(0x3 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_OFFSET	28
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_DEFAULT	(0x0 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_TIMES_2	(0x1 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_TIMES_05	(0x2 << 28)
+#define	CLKCTRL_PLL0CTRL0_LFR_SEL_UNDEFINED	(0x3 << 28)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_MASK		(0x3 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_OFFSET		24
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_DEFAULT	(0x0 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_TIMES_2	(0x1 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_TIMES_05	(0x2 << 24)
+#define	CLKCTRL_PLL0CTRL0_CP_SEL_UNDEFINED	(0x3 << 24)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_MASK		(0x3 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_OFFSET	20
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_DEFAULT	(0x0 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_LOWER		(0x1 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_LOWEST	(0x2 << 20)
+#define	CLKCTRL_PLL0CTRL0_DIV_SEL_UNDEFINED	(0x3 << 20)
+#define	CLKCTRL_PLL0CTRL0_EN_USB_CLKS		(1 << 18)
+#define	CLKCTRL_PLL0CTRL0_POWER			(1 << 17)
+
+#define	CLKCTRL_PLL0CTRL1_LOCK			(1 << 31)
+#define	CLKCTRL_PLL0CTRL1_FORCE_LOCK		(1 << 30)
+#define	CLKCTRL_PLL0CTRL1_LOCK_COUNT_MASK	0xffff
+#define	CLKCTRL_PLL0CTRL1_LOCK_COUNT_OFFSET	0
+
+#define	CLKCTRL_PLL1CTRL0_CLKGATEEMI		(1 << 31)
+#define	CLKCTRL_PLL1CTRL0_LFR_SEL_MASK		(0x3 << 28)
+#define	CLKCTRL_PLL1CTRL0_LFR_SEL_OFFSET	28
+#define	CLKCTRL_PLL1CTRL0_LFR_SEL_DEFAULT	(0x0 << 28)
+#define	CLKCTRL_PLL1CTRL0_LFR_SEL_TIMES_2	(0x1 << 28)
+#define	CLKCTRL_PLL1CTRL0_LFR_SEL_TIMES_05	(0x2 << 28)
+#define	CLKCTRL_PLL1CTRL0_LFR_SEL_UNDEFINED	(0x3 << 28)
+#define	CLKCTRL_PLL1CTRL0_CP_SEL_MASK		(0x3 << 24)
+#define	CLKCTRL_PLL1CTRL0_CP_SEL_OFFSET		24
+#define	CLKCTRL_PLL1CTRL0_CP_SEL_DEFAULT	(0x0 << 24)
+#define	CLKCTRL_PLL1CTRL0_CP_SEL_TIMES_2	(0x1 << 24)
+#define	CLKCTRL_PLL1CTRL0_CP_SEL_TIMES_05	(0x2 << 24)
+#define	CLKCTRL_PLL1CTRL0_CP_SEL_UNDEFINED	(0x3 << 24)
+#define	CLKCTRL_PLL1CTRL0_DIV_SEL_MASK		(0x3 << 20)
+#define	CLKCTRL_PLL1CTRL0_DIV_SEL_OFFSET	20
+#define	CLKCTRL_PLL1CTRL0_DIV_SEL_DEFAULT	(0x0 << 20)
+#define	CLKCTRL_PLL1CTRL0_DIV_SEL_LOWER		(0x1 << 20)
+#define	CLKCTRL_PLL1CTRL0_DIV_SEL_LOWEST	(0x2 << 20)
+#define	CLKCTRL_PLL1CTRL0_DIV_SEL_UNDEFINED	(0x3 << 20)
+#define	CLKCTRL_PLL1CTRL0_EN_USB_CLKS		(1 << 18)
+#define	CLKCTRL_PLL1CTRL0_POWER			(1 << 17)
+
+#define	CLKCTRL_PLL1CTRL1_LOCK			(1 << 31)
+#define	CLKCTRL_PLL1CTRL1_FORCE_LOCK		(1 << 30)
+#define	CLKCTRL_PLL1CTRL1_LOCK_COUNT_MASK	0xffff
+#define	CLKCTRL_PLL1CTRL1_LOCK_COUNT_OFFSET	0
+
+#define	CLKCTRL_PLL2CTRL0_CLKGATE		(1 << 31)
+#define	CLKCTRL_PLL2CTRL0_LFR_SEL_MASK		(0x3 << 28)
+#define	CLKCTRL_PLL2CTRL0_LFR_SEL_OFFSET	28
+#define	CLKCTRL_PLL2CTRL0_HOLD_RING_OFF_B	(1 << 26)
+#define	CLKCTRL_PLL2CTRL0_CP_SEL_MASK		(0x3 << 24)
+#define	CLKCTRL_PLL2CTRL0_CP_SEL_OFFSET		24
+#define	CLKCTRL_PLL2CTRL0_POWER			(1 << 23)
+
+#define	CLKCTRL_CPU_BUSY_REF_XTAL		(1 << 29)
+#define	CLKCTRL_CPU_BUSY_REF_CPU		(1 << 28)
+#define	CLKCTRL_CPU_DIV_XTAL_FRAC_EN		(1 << 26)
+#define	CLKCTRL_CPU_DIV_XTAL_MASK		(0x3ff << 16)
+#define	CLKCTRL_CPU_DIV_XTAL_OFFSET		16
+#define	CLKCTRL_CPU_INTERRUPT_WAIT		(1 << 12)
+#define	CLKCTRL_CPU_DIV_CPU_FRAC_EN		(1 << 10)
+#define	CLKCTRL_CPU_DIV_CPU_MASK		0x3f
+#define	CLKCTRL_CPU_DIV_CPU_OFFSET		0
+
+#define	CLKCTRL_HBUS_ASM_BUSY			(1 << 31)
+#define	CLKCTRL_HBUS_DCP_AS_ENABLE		(1 << 30)
+#define	CLKCTRL_HBUS_PXP_AS_ENABLE		(1 << 29)
+#define	CLKCTRL_HBUS_ASM_EMIPORT_AS_ENABLE	(1 << 27)
+#define	CLKCTRL_HBUS_APBHDMA_AS_ENABLE		(1 << 26)
+#define	CLKCTRL_HBUS_APBXDMA_AS_ENABLE		(1 << 25)
+#define	CLKCTRL_HBUS_TRAFFIC_JAM_AS_ENABLE	(1 << 24)
+#define	CLKCTRL_HBUS_TRAFFIC_AS_ENABLE		(1 << 23)
+#define	CLKCTRL_HBUS_CPU_DATA_AS_ENABLE		(1 << 22)
+#define	CLKCTRL_HBUS_CPU_INSTR_AS_ENABLE	(1 << 21)
+#define	CLKCTRL_HBUS_ASM_ENABLE			(1 << 20)
+#define	CLKCTRL_HBUS_AUTO_CLEAR_DIV_ENABLE	(1 << 19)
+#define	CLKCTRL_HBUS_SLOW_DIV_MASK		(0x7 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_OFFSET		16
+#define	CLKCTRL_HBUS_SLOW_DIV_BY1		(0x0 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY2		(0x1 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY4		(0x2 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY8		(0x3 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY16		(0x4 << 16)
+#define	CLKCTRL_HBUS_SLOW_DIV_BY32		(0x5 << 16)
+#define	CLKCTRL_HBUS_DIV_FRAC_EN		(1 << 5)
+#define	CLKCTRL_HBUS_DIV_MASK			0x1f
+#define	CLKCTRL_HBUS_DIV_OFFSET			0
+
+#define	CLKCTRL_XBUS_BUSY			(1 << 31)
+#define	CLKCTRL_XBUS_AUTO_CLEAR_DIV_ENABLE	(1 << 11)
+#define	CLKCTRL_XBUS_DIV_FRAC_EN		(1 << 10)
+#define	CLKCTRL_XBUS_DIV_MASK			0x3ff
+#define	CLKCTRL_XBUS_DIV_OFFSET			0
+
+#define	CLKCTRL_XTAL_UART_CLK_GATE		(1 << 31)
+#define	CLKCTRL_XTAL_PWM_CLK24M_GATE		(1 << 29)
+#define	CLKCTRL_XTAL_TIMROT_CLK32K_GATE		(1 << 26)
+#define	CLKCTRL_XTAL_DIV_UART_MASK		0x3
+#define	CLKCTRL_XTAL_DIV_UART_OFFSET		0
+
+#define	CLKCTRL_SSP_CLKGATE			(1 << 31)
+#define	CLKCTRL_SSP_BUSY			(1 << 29)
+#define	CLKCTRL_SSP_DIV_FRAC_EN			(1 << 9)
+#define	CLKCTRL_SSP_DIV_MASK			0x1ff
+#define	CLKCTRL_SSP_DIV_OFFSET			0
+
+#define	CLKCTRL_GPMI_CLKGATE			(1 << 31)
+#define	CLKCTRL_GPMI_BUSY			(1 << 29)
+#define	CLKCTRL_GPMI_DIV_FRAC_EN		(1 << 10)
+#define	CLKCTRL_GPMI_DIV_MASK			0x3ff
+#define	CLKCTRL_GPMI_DIV_OFFSET			0
+
+#define	CLKCTRL_SPDIF_CLKGATE			(1 << 31)
+
+#define	CLKCTRL_EMI_CLKGATE			(1 << 31)
+#define	CLKCTRL_EMI_SYNC_MODE_EN		(1 << 30)
+#define	CLKCTRL_EMI_BUSY_REF_XTAL		(1 << 29)
+#define	CLKCTRL_EMI_BUSY_REF_EMI		(1 << 28)
+#define	CLKCTRL_EMI_BUSY_REF_CPU		(1 << 27)
+#define	CLKCTRL_EMI_BUSY_SYNC_MODE		(1 << 26)
+#define	CLKCTRL_EMI_BUSY_DCC_RESYNC		(1 << 17)
+#define	CLKCTRL_EMI_DCC_RESYNC_ENABLE		(1 << 16)
+#define	CLKCTRL_EMI_DIV_XTAL_MASK		(0xf << 8)
+#define	CLKCTRL_EMI_DIV_XTAL_OFFSET		8
+#define	CLKCTRL_EMI_DIV_EMI_MASK		0x3f
+#define	CLKCTRL_EMI_DIV_EMI_OFFSET		0
+
+#define	CLKCTRL_SAIF0_CLKGATE			(1 << 31)
+#define	CLKCTRL_SAIF0_BUSY			(1 << 29)
+#define	CLKCTRL_SAIF0_DIV_FRAC_EN		(1 << 16)
+#define	CLKCTRL_SAIF0_DIV_MASK			0xffff
+#define	CLKCTRL_SAIF0_DIV_OFFSET		0
+
+#define	CLKCTRL_SAIF1_CLKGATE			(1 << 31)
+#define	CLKCTRL_SAIF1_BUSY			(1 << 29)
+#define	CLKCTRL_SAIF1_DIV_FRAC_EN		(1 << 16)
+#define	CLKCTRL_SAIF1_DIV_MASK			0xffff
+#define	CLKCTRL_SAIF1_DIV_OFFSET		0
+
+#define	CLKCTRL_DIS_LCDIF_CLKGATE		(1 << 31)
+#define	CLKCTRL_DIS_LCDIF_BUSY			(1 << 29)
+#define	CLKCTRL_DIS_LCDIF_DIV_FRAC_EN		(1 << 13)
+#define	CLKCTRL_DIS_LCDIF_DIV_MASK		0x1fff
+#define	CLKCTRL_DIS_LCDIF_DIV_OFFSET		0
+
+#define	CLKCTRL_ETM_CLKGATE			(1 << 31)
+#define	CLKCTRL_ETM_BUSY			(1 << 29)
+#define	CLKCTRL_ETM_DIV_FRAC_EN			(1 << 7)
+#define	CLKCTRL_ETM_DIV_MASK			0x7f
+#define	CLKCTRL_ETM_DIV_OFFSET			0
+
+#define	CLKCTRL_ENET_SLEEP			(1 << 31)
+#define	CLKCTRL_ENET_DISABLE			(1 << 30)
+#define	CLKCTRL_ENET_STATUS			(1 << 29)
+#define	CLKCTRL_ENET_BUSY_TIME			(1 << 27)
+#define	CLKCTRL_ENET_DIV_TIME_MASK		(0x3f << 21)
+#define	CLKCTRL_ENET_DIV_TIME_OFFSET		21
+#define	CLKCTRL_ENET_TIME_SEL_MASK		(0x3 << 19)
+#define	CLKCTRL_ENET_TIME_SEL_OFFSET		19
+#define	CLKCTRL_ENET_TIME_SEL_XTAL		(0x0 << 19)
+#define	CLKCTRL_ENET_TIME_SEL_PLL		(0x1 << 19)
+#define	CLKCTRL_ENET_TIME_SEL_RMII_CLK		(0x2 << 19)
+#define	CLKCTRL_ENET_TIME_SEL_UNDEFINED		(0x3 << 19)
+#define	CLKCTRL_ENET_CLK_OUT_EN			(1 << 18)
+#define	CLKCTRL_ENET_RESET_BY_SW_CHIP		(1 << 17)
+#define	CLKCTRL_ENET_RESET_BY_SW		(1 << 16)
+
+#define	CLKCTRL_HSADC_RESETB			(1 << 30)
+#define	CLKCTRL_HSADC_FREQDIV_MASK		(0x3 << 28)
+#define	CLKCTRL_HSADC_FREQDIV_OFFSET		28
+
+#define	CLKCTRL_FLEXCAN_STOP_CAN0		(1 << 30)
+#define	CLKCTRL_FLEXCAN_CAN0_STATUS		(1 << 29)
+#define	CLKCTRL_FLEXCAN_STOP_CAN1		(1 << 28)
+#define	CLKCTRL_FLEXCAN_CAN1_STATUS		(1 << 27)
+
+#define	CLKCTRL_FRAC_CLKGATE			(1 << 7)
+#define	CLKCTRL_FRAC_STABLE			(1 << 6)
+#define	CLKCTRL_FRAC_FRAC_MASK			0x3f
+#define	CLKCTRL_FRAC_FRAC_OFFSET		0
+#define	CLKCTRL_FRAC0_CPU			0
+#define	CLKCTRL_FRAC0_EMI			1
+#define	CLKCTRL_FRAC0_IO1			2
+#define	CLKCTRL_FRAC0_IO0			3
+#define	CLKCTRL_FRAC1_PIX			0
+#define	CLKCTRL_FRAC1_HSADC			1
+#define	CLKCTRL_FRAC1_GPMI			2
+
+#define	CLKCTRL_CLKSEQ_BYPASS_CPU		(1 << 18)
+#define	CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF		(1 << 14)
+#define	CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF_BYPASS	(0x1 << 14)
+#define	CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF_PFD	(0x0 << 14)
+#define	CLKCTRL_CLKSEQ_BYPASS_ETM		(1 << 8)
+#define	CLKCTRL_CLKSEQ_BYPASS_EMI		(1 << 7)
+#define	CLKCTRL_CLKSEQ_BYPASS_SSP3		(1 << 6)
+#define	CLKCTRL_CLKSEQ_BYPASS_SSP2		(1 << 5)
+#define	CLKCTRL_CLKSEQ_BYPASS_SSP1		(1 << 4)
+#define	CLKCTRL_CLKSEQ_BYPASS_SSP0		(1 << 3)
+#define	CLKCTRL_CLKSEQ_BYPASS_GPMI		(1 << 2)
+#define	CLKCTRL_CLKSEQ_BYPASS_SAIF1		(1 << 1)
+#define	CLKCTRL_CLKSEQ_BYPASS_SAIF0		(1 << 0)
+
+#define	CLKCTRL_RESET_WDOG_POR_DISABLE		(1 << 5)
+#define	CLKCTRL_RESET_EXTERNAL_RESET_ENABLE	(1 << 4)
+#define	CLKCTRL_RESET_THERMAL_RESET_ENABLE	(1 << 3)
+#define	CLKCTRL_RESET_THERMAL_RESET_DEFAULT	(1 << 2)
+#define	CLKCTRL_RESET_CHIP			(1 << 1)
+#define	CLKCTRL_RESET_DIG			(1 << 0)
+
+#define	CLKCTRL_STATUS_CPU_LIMIT_MASK		(0x3 << 30)
+#define	CLKCTRL_STATUS_CPU_LIMIT_OFFSET		30
+
+#define	CLKCTRL_VERSION_MAJOR_MASK		(0xff << 24)
+#define	CLKCTRL_VERSION_MAJOR_OFFSET		24
+#define	CLKCTRL_VERSION_MINOR_MASK		(0xff << 16)
+#define	CLKCTRL_VERSION_MINOR_OFFSET		16
+#define	CLKCTRL_VERSION_STEP_MASK		0xffff
+#define	CLKCTRL_VERSION_STEP_OFFSET		0
+
+#endif /* __MX28_REGS_CLKCTRL_H__ */
diff --git a/arch/arm/mach-mxs/include/mach/regs-common.h b/arch/arm/mach-mxs/include/mach/regs-common.h
new file mode 100644
index 0000000..e54a220
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/regs-common.h
@@ -0,0 +1,69 @@
+/*
+ * Freescale i.MXS Register Accessors
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __MXS_REGS_COMMON_H__
+#define __MXS_REGS_COMMON_H__
+
+/*
+ * The i.MXS has interesting feature when it comes to register access. There
+ * are four kinds of access to one particular register. Those are:
+ *
+ * 1) Common read/write access. To use this mode, just write to the address of
+ *    the register.
+ * 2) Set bits only access. To set bits, write which bits you want to set to the
+ *    address of the register + 0x4.
+ * 3) Clear bits only access. To clear bits, write which bits you want to clear
+ *    to the address of the register + 0x8.
+ * 4) Toggle bits only access. To toggle bits, write which bits you want to
+ *    toggle to the address of the register + 0xc.
+ *
+ * IMPORTANT NOTE: Not all registers support accesses 2-4! Also, not all bits
+ * can be set/cleared by pure write as in access type 1, some need to be
+ * explicitly set/cleared by using access type 2-3.
+ *
+ * The following macros and structures allow the user to either access the
+ * register in all aforementioned modes (by accessing reg_name, reg_name_set,
+ * reg_name_clr, reg_name_tog) or pass the register structure further into
+ * various functions with correct type information (by accessing reg_name_reg).
+ *
+ */
+
+#define	__mxs_reg_8(name)		\
+	uint8_t	name[4];		\
+	uint8_t	name##_set[4];		\
+	uint8_t	name##_clr[4];		\
+	uint8_t	name##_tog[4];		\
+
+#define	__mxs_reg_32(name)		\
+	uint32_t name;			\
+	uint32_t name##_set;		\
+	uint32_t name##_clr;		\
+	uint32_t name##_tog;
+
+struct mxs_register_8 {
+	__mxs_reg_8(reg)
+};
+
+struct mxs_register_32 {
+	__mxs_reg_32(reg)
+};
+
+#define	mxs_reg_8(name)				\
+	union {						\
+		struct { __mxs_reg_8(name) };		\
+		struct mxs_register_8 name##_reg;	\
+	};
+
+#define	mxs_reg_32(name)				\
+	union {						\
+		struct { __mxs_reg_32(name) };		\
+		struct mxs_register_32 name##_reg;	\
+	};
+
+#endif	/* __MXS_REGS_COMMON_H__ */
diff --git a/arch/arm/mach-mxs/include/mach/regs-lradc.h b/arch/arm/mach-mxs/include/mach/regs-lradc.h
new file mode 100644
index 0000000..7f624be
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/regs-lradc.h
@@ -0,0 +1,387 @@
+/*
+ * Freescale i.MX28 LRADC Register Definitions
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * Based on code from LTIB:
+ * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __MX28_REGS_LRADC_H__
+#define __MX28_REGS_LRADC_H__
+
+#include <mach/regs-common.h>
+
+#ifndef	__ASSEMBLY__
+struct mxs_lradc_regs {
+	mxs_reg_32(hw_lradc_ctrl0);
+	mxs_reg_32(hw_lradc_ctrl1);
+	mxs_reg_32(hw_lradc_ctrl2);
+	mxs_reg_32(hw_lradc_ctrl3);
+	mxs_reg_32(hw_lradc_status);
+	mxs_reg_32(hw_lradc_ch0);
+	mxs_reg_32(hw_lradc_ch1);
+	mxs_reg_32(hw_lradc_ch2);
+	mxs_reg_32(hw_lradc_ch3);
+	mxs_reg_32(hw_lradc_ch4);
+	mxs_reg_32(hw_lradc_ch5);
+	mxs_reg_32(hw_lradc_ch6);
+	mxs_reg_32(hw_lradc_ch7);
+	mxs_reg_32(hw_lradc_delay0);
+	mxs_reg_32(hw_lradc_delay1);
+	mxs_reg_32(hw_lradc_delay2);
+	mxs_reg_32(hw_lradc_delay3);
+	mxs_reg_32(hw_lradc_debug0);
+	mxs_reg_32(hw_lradc_debug1);
+	mxs_reg_32(hw_lradc_conversion);
+	mxs_reg_32(hw_lradc_ctrl4);
+	mxs_reg_32(hw_lradc_treshold0);
+	mxs_reg_32(hw_lradc_treshold1);
+	mxs_reg_32(hw_lradc_version);
+};
+#endif
+
+#define	LRADC_CTRL0_SFTRST					(1 << 31)
+#define	LRADC_CTRL0_CLKGATE					(1 << 30)
+#define	LRADC_CTRL0_ONCHIP_GROUNDREF				(1 << 26)
+#define	LRADC_CTRL0_BUTTON1_DETECT_ENABLE			(1 << 25)
+#define	LRADC_CTRL0_BUTTON0_DETECT_ENABLE			(1 << 24)
+#define	LRADC_CTRL0_TOUCH_DETECT_ENABLE				(1 << 23)
+#define	LRADC_CTRL0_TOUCH_SCREEN_TYPE				(1 << 22)
+#define	LRADC_CTRL0_YNLRSW					(1 << 21)
+#define	LRADC_CTRL0_YPLLSW_MASK					(0x3 << 19)
+#define	LRADC_CTRL0_YPLLSW_OFFSET				19
+#define	LRADC_CTRL0_XNURSW_MASK					(0x3 << 17)
+#define	LRADC_CTRL0_XNURSW_OFFSET				17
+#define	LRADC_CTRL0_XPULSW					(1 << 16)
+#define	LRADC_CTRL0_SCHEDULE_MASK				0xff
+#define	LRADC_CTRL0_SCHEDULE_OFFSET				0
+
+#define	LRADC_CTRL1_BUTTON1_DETECT_IRQ_EN			(1 << 28)
+#define	LRADC_CTRL1_BUTTON0_DETECT_IRQ_EN			(1 << 27)
+#define	LRADC_CTRL1_THRESHOLD1_DETECT_IRQ_EN			(1 << 26)
+#define	LRADC_CTRL1_THRESHOLD0_DETECT_IRQ_EN			(1 << 25)
+#define	LRADC_CTRL1_TOUCH_DETECT_IRQ_EN				(1 << 24)
+#define	LRADC_CTRL1_LRADC7_IRQ_EN				(1 << 23)
+#define	LRADC_CTRL1_LRADC6_IRQ_EN				(1 << 22)
+#define	LRADC_CTRL1_LRADC5_IRQ_EN				(1 << 21)
+#define	LRADC_CTRL1_LRADC4_IRQ_EN				(1 << 20)
+#define	LRADC_CTRL1_LRADC3_IRQ_EN				(1 << 19)
+#define	LRADC_CTRL1_LRADC2_IRQ_EN				(1 << 18)
+#define	LRADC_CTRL1_LRADC1_IRQ_EN				(1 << 17)
+#define	LRADC_CTRL1_LRADC0_IRQ_EN				(1 << 16)
+#define	LRADC_CTRL1_BUTTON1_DETECT_IRQ				(1 << 12)
+#define	LRADC_CTRL1_BUTTON0_DETECT_IRQ				(1 << 11)
+#define	LRADC_CTRL1_THRESHOLD1_DETECT_IRQ			(1 << 10)
+#define	LRADC_CTRL1_THRESHOLD0_DETECT_IRQ			(1 << 9)
+#define	LRADC_CTRL1_TOUCH_DETECT_IRQ				(1 << 8)
+#define	LRADC_CTRL1_LRADC7_IRQ					(1 << 7)
+#define	LRADC_CTRL1_LRADC6_IRQ					(1 << 6)
+#define	LRADC_CTRL1_LRADC5_IRQ					(1 << 5)
+#define	LRADC_CTRL1_LRADC4_IRQ					(1 << 4)
+#define	LRADC_CTRL1_LRADC3_IRQ					(1 << 3)
+#define	LRADC_CTRL1_LRADC2_IRQ					(1 << 2)
+#define	LRADC_CTRL1_LRADC1_IRQ					(1 << 1)
+#define	LRADC_CTRL1_LRADC0_IRQ					(1 << 0)
+
+#define	LRADC_CTRL2_DIVIDE_BY_TWO_MASK				(0xff << 24)
+#define	LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET			24
+#define	LRADC_CTRL2_TEMPSENSE_PWD				(1 << 15)
+#define	LRADC_CTRL2_VTHSENSE_MASK				(0x3 << 13)
+#define	LRADC_CTRL2_VTHSENSE_OFFSET				13
+#define	LRADC_CTRL2_DISABLE_MUXAMP_BYPASS			(1 << 12)
+#define	LRADC_CTRL2_TEMP_SENSOR_IENABLE1			(1 << 9)
+#define	LRADC_CTRL2_TEMP_SENSOR_IENABLE0			(1 << 8)
+#define	LRADC_CTRL2_TEMP_ISRC1_MASK				(0xf << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_OFFSET				4
+#define	LRADC_CTRL2_TEMP_ISRC1_300				(0xf << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_280				(0xe << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_260				(0xd << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_240				(0xc << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_220				(0xb << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_200				(0xa << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_180				(0x9 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_160				(0x8 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_140				(0x7 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_120				(0x6 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_100				(0x5 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_80				(0x4 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_60				(0x3 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_40				(0x2 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_20				(0x1 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC1_ZERO				(0x0 << 4)
+#define	LRADC_CTRL2_TEMP_ISRC0_MASK				(0xf << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_OFFSET				0
+#define	LRADC_CTRL2_TEMP_ISRC0_300				(0xf << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_280				(0xe << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_260				(0xd << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_240				(0xc << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_220				(0xb << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_200				(0xa << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_180				(0x9 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_160				(0x8 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_140				(0x7 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_120				(0x6 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_100				(0x5 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_80				(0x4 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_60				(0x3 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_40				(0x2 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_20				(0x1 << 0)
+#define	LRADC_CTRL2_TEMP_ISRC0_ZERO				(0x0 << 0)
+
+#define	LRADC_CTRL3_DISCARD_MASK				(0x3 << 24)
+#define	LRADC_CTRL3_DISCARD_OFFSET				24
+#define	LRADC_CTRL3_DISCARD_1_SAMPLE				(0x1 << 24)
+#define	LRADC_CTRL3_DISCARD_2_SAMPLES				(0x2 << 24)
+#define	LRADC_CTRL3_DISCARD_3_SAMPLES				(0x3 << 24)
+#define	LRADC_CTRL3_FORCE_ANALOG_PWUP				(1 << 23)
+#define	LRADC_CTRL3_FORCE_ANALOG_PWDN				(1 << 22)
+#define	LRADC_CTRL3_CYCLE_TIME_MASK				(0x3 << 8)
+#define	LRADC_CTRL3_CYCLE_TIME_OFFSET				8
+#define	LRADC_CTRL3_CYCLE_TIME_6MHZ				(0x0 << 8)
+#define	LRADC_CTRL3_CYCLE_TIME_4MHZ				(0x1 << 8)
+#define	LRADC_CTRL3_CYCLE_TIME_3MHZ				(0x2 << 8)
+#define	LRADC_CTRL3_CYCLE_TIME_2MHZ				(0x3 << 8)
+#define	LRADC_CTRL3_HIGH_TIME_MASK				(0x3 << 4)
+#define	LRADC_CTRL3_HIGH_TIME_OFFSET				4
+#define	LRADC_CTRL3_HIGH_TIME_42NS				(0x0 << 4)
+#define	LRADC_CTRL3_HIGH_TIME_83NS				(0x1 << 4)
+#define	LRADC_CTRL3_HIGH_TIME_125NS				(0x2 << 4)
+#define	LRADC_CTRL3_HIGH_TIME_250NS				(0x3 << 4)
+#define	LRADC_CTRL3_DELAY_CLOCK					(1 << 1)
+#define	LRADC_CTRL3_INVERT_CLOCK				(1 << 0)
+
+#define	LRADC_STATUS_BUTTON1_PRESENT				(1 << 28)
+#define	LRADC_STATUS_BUTTON0_PRESENT				(1 << 27)
+#define	LRADC_STATUS_TEMP1_PRESENT				(1 << 26)
+#define	LRADC_STATUS_TEMP0_PRESENT				(1 << 25)
+#define	LRADC_STATUS_TOUCH_PANEL_PRESENT			(1 << 24)
+#define	LRADC_STATUS_CHANNEL7_PRESENT				(1 << 23)
+#define	LRADC_STATUS_CHANNEL6_PRESENT				(1 << 22)
+#define	LRADC_STATUS_CHANNEL5_PRESENT				(1 << 21)
+#define	LRADC_STATUS_CHANNEL4_PRESENT				(1 << 20)
+#define	LRADC_STATUS_CHANNEL3_PRESENT				(1 << 19)
+#define	LRADC_STATUS_CHANNEL2_PRESENT				(1 << 18)
+#define	LRADC_STATUS_CHANNEL1_PRESENT				(1 << 17)
+#define	LRADC_STATUS_CHANNEL0_PRESENT				(1 << 16)
+#define	LRADC_STATUS_BUTTON1_DETECT_RAW				(1 << 2)
+#define	LRADC_STATUS_BUTTON0_DETECT_RAW				(1 << 1)
+#define	LRADC_STATUS_TOUCH_DETECT_RAW				(1 << 0)
+
+#define	LRADC_CH_TOGGLE						(1 << 31)
+#define	LRADC_CH7_TESTMODE_TOGGLE				(1 << 30)
+#define	LRADC_CH_ACCUMULATE					(1 << 29)
+#define	LRADC_CH_NUM_SAMPLES_MASK				(0x1f << 24)
+#define	LRADC_CH_NUM_SAMPLES_OFFSET				24
+#define	LRADC_CH_VALUE_MASK					0x3ffff
+#define	LRADC_CH_VALUE_OFFSET					0
+
+#define	LRADC_DELAY_TRIGGER_LRADCS_MASK				(0xff << 24)
+#define	LRADC_DELAY_TRIGGER_LRADCS_OFFSET			24
+#define	LRADC_DELAY_KICK					(1 << 20)
+#define	LRADC_DELAY_TRIGGER_DELAYS_MASK				(0xf << 16)
+#define	LRADC_DELAY_TRIGGER_DELAYS_OFFSET			16
+#define	LRADC_DELAY_LOOP_COUNT_MASK				(0x1f << 11)
+#define	LRADC_DELAY_LOOP_COUNT_OFFSET				11
+#define	LRADC_DELAY_DELAY_MASK					0x7ff
+#define	LRADC_DELAY_DELAY_OFFSET				0
+
+#define	LRADC_DEBUG0_READONLY_MASK				(0xffff << 16)
+#define	LRADC_DEBUG0_READONLY_OFFSET				16
+#define	LRADC_DEBUG0_STATE_MASK					(0xfff << 0)
+#define	LRADC_DEBUG0_STATE_OFFSET				0
+
+#define	LRADC_DEBUG1_REQUEST_MASK				(0xff << 16)
+#define	LRADC_DEBUG1_REQUEST_OFFSET				16
+#define	LRADC_DEBUG1_TESTMODE_COUNT_MASK			(0x1f << 8)
+#define	LRADC_DEBUG1_TESTMODE_COUNT_OFFSET			8
+#define	LRADC_DEBUG1_TESTMODE6					(1 << 2)
+#define	LRADC_DEBUG1_TESTMODE5					(1 << 1)
+#define	LRADC_DEBUG1_TESTMODE					(1 << 0)
+
+#define	LRADC_CONVERSION_AUTOMATIC				(1 << 20)
+#define	LRADC_CONVERSION_SCALE_FACTOR_MASK			(0x3 << 16)
+#define	LRADC_CONVERSION_SCALE_FACTOR_OFFSET			16
+#define	LRADC_CONVERSION_SCALE_FACTOR_NIMH			(0x0 << 16)
+#define	LRADC_CONVERSION_SCALE_FACTOR_DUAL_NIMH			(0x1 << 16)
+#define	LRADC_CONVERSION_SCALE_FACTOR_LI_ION			(0x2 << 16)
+#define	LRADC_CONVERSION_SCALE_FACTOR_ALT_LI_ION		(0x3 << 16)
+#define	LRADC_CONVERSION_SCALED_BATT_VOLTAGE_MASK		0x3ff
+#define	LRADC_CONVERSION_SCALED_BATT_VOLTAGE_OFFSET		0
+
+#define	LRADC_CTRL4_LRADC7SELECT_MASK				(0xf << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_OFFSET				28
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL0			(0x0 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL1			(0x1 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL2			(0x2 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL3			(0x3 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL4			(0x4 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL5			(0x5 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL6			(0x6 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL7			(0x7 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL8			(0x8 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL9			(0x9 << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL10			(0xa << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL11			(0xb << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL12			(0xc << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL13			(0xd << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL14			(0xe << 28)
+#define	LRADC_CTRL4_LRADC7SELECT_CHANNEL15			(0xf << 28)
+#define	LRADC_CTRL4_LRADC6SELECT_MASK				(0xf << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_OFFSET				24
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL0			(0x0 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL1			(0x1 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL2			(0x2 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL3			(0x3 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL4			(0x4 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL5			(0x5 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL6			(0x6 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL7			(0x7 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL8			(0x8 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL9			(0x9 << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL10			(0xa << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL11			(0xb << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL12			(0xc << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL13			(0xd << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL14			(0xe << 24)
+#define	LRADC_CTRL4_LRADC6SELECT_CHANNEL15			(0xf << 24)
+#define	LRADC_CTRL4_LRADC5SELECT_MASK				(0xf << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_OFFSET				20
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL0			(0x0 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL1			(0x1 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL2			(0x2 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL3			(0x3 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL4			(0x4 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL5			(0x5 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL6			(0x6 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL7			(0x7 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL8			(0x8 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL9			(0x9 << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL10			(0xa << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL11			(0xb << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL12			(0xc << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL13			(0xd << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL14			(0xe << 20)
+#define	LRADC_CTRL4_LRADC5SELECT_CHANNEL15			(0xf << 20)
+#define	LRADC_CTRL4_LRADC4SELECT_MASK				(0xf << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_OFFSET				16
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL0			(0x0 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL1			(0x1 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL2			(0x2 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL3			(0x3 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL4			(0x4 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL5			(0x5 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL6			(0x6 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL7			(0x7 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL8			(0x8 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL9			(0x9 << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL10			(0xa << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL11			(0xb << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL12			(0xc << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL13			(0xd << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL14			(0xe << 16)
+#define	LRADC_CTRL4_LRADC4SELECT_CHANNEL15			(0xf << 16)
+#define	LRADC_CTRL4_LRADC3SELECT_MASK				(0xf << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_OFFSET				12
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL0			(0x0 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL1			(0x1 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL2			(0x2 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL3			(0x3 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL4			(0x4 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL5			(0x5 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL6			(0x6 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL7			(0x7 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL8			(0x8 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL9			(0x9 << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL10			(0xa << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL11			(0xb << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL12			(0xc << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL13			(0xd << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL14			(0xe << 12)
+#define	LRADC_CTRL4_LRADC3SELECT_CHANNEL15			(0xf << 12)
+#define	LRADC_CTRL4_LRADC2SELECT_MASK				(0xf << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_OFFSET				8
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL0			(0x0 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL1			(0x1 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL2			(0x2 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL3			(0x3 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL4			(0x4 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL5			(0x5 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL6			(0x6 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL7			(0x7 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL8			(0x8 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL9			(0x9 << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL10			(0xa << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL11			(0xb << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL12			(0xc << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL13			(0xd << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL14			(0xe << 8)
+#define	LRADC_CTRL4_LRADC2SELECT_CHANNEL15			(0xf << 8)
+#define	LRADC_CTRL4_LRADC1SELECT_MASK				(0xf << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_OFFSET				4
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL0			(0x0 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL1			(0x1 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL2			(0x2 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL3			(0x3 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL4			(0x4 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL5			(0x5 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL6			(0x6 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL7			(0x7 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL8			(0x8 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL9			(0x9 << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL10			(0xa << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL11			(0xb << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL12			(0xc << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL13			(0xd << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL14			(0xe << 4)
+#define	LRADC_CTRL4_LRADC1SELECT_CHANNEL15			(0xf << 4)
+#define	LRADC_CTRL4_LRADC0SELECT_MASK				0xf
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL0			(0x0 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL1			(0x1 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL2			(0x2 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL3			(0x3 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL4			(0x4 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL5			(0x5 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL6			(0x6 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL7			(0x7 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL8			(0x8 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL9			(0x9 << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL10			(0xa << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL11			(0xb << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL12			(0xc << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL13			(0xd << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL14			(0xe << 0)
+#define	LRADC_CTRL4_LRADC0SELECT_CHANNEL15			(0xf << 0)
+
+#define	LRADC_THRESHOLD_ENABLE					(1 << 24)
+#define	LRADC_THRESHOLD_BATTCHRG_DISABLE			(1 << 23)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_MASK			(0x7 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_OFFSET			20
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL0			(0x0 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL1			(0x1 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL2			(0x2 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL3			(0x3 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL4			(0x4 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL5			(0x5 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL6			(0x6 << 20)
+#define	LRADC_THRESHOLD_CHANNEL_SEL_CHANNEL7			(0x7 << 20)
+#define	LRADC_THRESHOLD_SETTING_MASK				(0x3 << 18)
+#define	LRADC_THRESHOLD_SETTING_OFFSET				18
+#define	LRADC_THRESHOLD_SETTING_NO_COMPARE			(0x0 << 18)
+#define	LRADC_THRESHOLD_SETTING_DETECT_LOW			(0x1 << 18)
+#define	LRADC_THRESHOLD_SETTING_DETECT_HIGH			(0x2 << 18)
+#define	LRADC_THRESHOLD_SETTING_RESERVED			(0x3 << 18)
+#define	LRADC_THRESHOLD_VALUE_MASK				0x3ffff
+#define	LRADC_THRESHOLD_VALUE_OFFSET				0
+
+#define	LRADC_VERSION_MAJOR_MASK				(0xff << 24)
+#define	LRADC_VERSION_MAJOR_OFFSET				24
+#define	LRADC_VERSION_MINOR_MASK				(0xff << 16)
+#define	LRADC_VERSION_MINOR_OFFSET				16
+#define	LRADC_VERSION_STEP_MASK					0xffff
+#define	LRADC_VERSION_STEP_OFFSET				0
+
+#endif	/* __MX28_REGS_LRADC_H__ */
diff --git a/arch/arm/mach-mxs/include/mach/regs-power-mx28.h b/arch/arm/mach-mxs/include/mach/regs-power-mx28.h
new file mode 100644
index 0000000..7b73496
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/regs-power-mx28.h
@@ -0,0 +1,408 @@
+/*
+ * Freescale i.MX28 Power Controller Register Definitions
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __MX28_REGS_POWER_H__
+#define __MX28_REGS_POWER_H__
+
+#include <mach/regs-common.h>
+
+#ifndef	__ASSEMBLY__
+struct mxs_power_regs {
+	mxs_reg_32(hw_power_ctrl)
+	mxs_reg_32(hw_power_5vctrl)
+	mxs_reg_32(hw_power_minpwr)
+	mxs_reg_32(hw_power_charge)
+	uint32_t	hw_power_vdddctrl;
+	uint32_t	reserved_vddd[3];
+	uint32_t	hw_power_vddactrl;
+	uint32_t	reserved_vdda[3];
+	uint32_t	hw_power_vddioctrl;
+	uint32_t	reserved_vddio[3];
+	uint32_t	hw_power_vddmemctrl;
+	uint32_t	reserved_vddmem[3];
+	uint32_t	hw_power_dcdc4p2;
+	uint32_t	reserved_dcdc4p2[3];
+	uint32_t	hw_power_misc;
+	uint32_t	reserved_misc[3];
+	uint32_t	hw_power_dclimits;
+	uint32_t	reserved_dclimits[3];
+	mxs_reg_32(hw_power_loopctrl)
+	uint32_t	hw_power_sts;
+	uint32_t	reserved_sts[3];
+	mxs_reg_32(hw_power_speed)
+	uint32_t	hw_power_battmonitor;
+	uint32_t	reserved_battmonitor[3];
+
+	uint32_t	reserved[4];
+
+	mxs_reg_32(hw_power_reset)
+};
+#endif
+
+#define	MX23_POWER_CTRL_CLKGATE				(1 << 30)
+#define	POWER_CTRL_PSWITCH_MID_TRAN			(1 << 27)
+#define	POWER_CTRL_DCDC4P2_BO_IRQ			(1 << 24)
+#define	POWER_CTRL_ENIRQ_DCDC4P2_BO			(1 << 23)
+#define	POWER_CTRL_VDD5V_DROOP_IRQ			(1 << 22)
+#define	POWER_CTRL_ENIRQ_VDD5V_DROOP			(1 << 21)
+#define	POWER_CTRL_PSWITCH_IRQ				(1 << 20)
+#define	POWER_CTRL_PSWITCH_IRQ_SRC			(1 << 19)
+#define	POWER_CTRL_POLARITY_PSWITCH			(1 << 18)
+#define	POWER_CTRL_ENIRQ_PSWITCH			(1 << 17)
+#define	POWER_CTRL_POLARITY_DC_OK			(1 << 16)
+#define	POWER_CTRL_DC_OK_IRQ				(1 << 15)
+#define	POWER_CTRL_ENIRQ_DC_OK				(1 << 14)
+#define	POWER_CTRL_BATT_BO_IRQ				(1 << 13)
+#define	POWER_CTRL_ENIRQ_BATT_BO			(1 << 12)
+#define	POWER_CTRL_VDDIO_BO_IRQ				(1 << 11)
+#define	POWER_CTRL_ENIRQ_VDDIO_BO			(1 << 10)
+#define	POWER_CTRL_VDDA_BO_IRQ				(1 << 9)
+#define	POWER_CTRL_ENIRQ_VDDA_BO			(1 << 8)
+#define	POWER_CTRL_VDDD_BO_IRQ				(1 << 7)
+#define	POWER_CTRL_ENIRQ_VDDD_BO			(1 << 6)
+#define	POWER_CTRL_POLARITY_VBUSVALID			(1 << 5)
+#define	POWER_CTRL_VBUS_VALID_IRQ			(1 << 4)
+#define	POWER_CTRL_ENIRQ_VBUS_VALID			(1 << 3)
+#define	POWER_CTRL_POLARITY_VDD5V_GT_VDDIO		(1 << 2)
+#define	POWER_CTRL_VDD5V_GT_VDDIO_IRQ			(1 << 1)
+#define	POWER_CTRL_ENIRQ_VDD5V_GT_VDDIO			(1 << 0)
+
+#define	MX28_POWER_5VCTRL_VBUSDROOP_TRSH_MASK		(0x3 << 30)
+#define	MX28_POWER_5VCTRL_VBUSDROOP_TRSH_OFFSET		30
+#define	MX28_POWER_5VCTRL_VBUSDROOP_TRSH_4V3		(0x0 << 30)
+#define	MX28_POWER_5VCTRL_VBUSDROOP_TRSH_4V4		(0x1 << 30)
+#define	MX28_POWER_5VCTRL_VBUSDROOP_TRSH_4V5		(0x2 << 30)
+#define	MX28_POWER_5VCTRL_VBUSDROOP_TRSH_4V7		(0x3 << 30)
+
+#define	MX23_POWER_5VCTRL_VBUSDROOP_TRSH_MASK		(0x3 << 28)
+#define	MX23_POWER_5VCTRL_VBUSDROOP_TRSH_OFFSET		28
+#define	MX23_POWER_5VCTRL_VBUSDROOP_TRSH_4V3		(0x0 << 28)
+#define	MX23_POWER_5VCTRL_VBUSDROOP_TRSH_4V4		(0x1 << 28)
+#define	MX23_POWER_5VCTRL_VBUSDROOP_TRSH_4V5		(0x2 << 28)
+#define	MX23_POWER_5VCTRL_VBUSDROOP_TRSH_4V7		(0x3 << 28)
+
+#define	POWER_5VCTRL_HEADROOM_ADJ_MASK			(0x7 << 24)
+#define	POWER_5VCTRL_HEADROOM_ADJ_OFFSET		24
+#define	MX28_POWER_5VCTRL_PWD_CHARGE_4P2_MASK		(0x3 << 20)
+#define MX23_POWER_5VCTRL_PWD_CHARGE_4P2_MASK		(0x1 << 20)
+#define	POWER_5VCTRL_PWD_CHARGE_4P2_OFFSET		20
+#define	POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK		(0x3f << 12)
+#define	POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET		12
+#define	POWER_5VCTRL_VBUSVALID_TRSH_MASK		(0x7 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_OFFSET		8
+#define	POWER_5VCTRL_VBUSVALID_TRSH_2V9			(0x0 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V0			(0x1 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V1			(0x2 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V2			(0x3 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V3			(0x4 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V4			(0x5 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V5			(0x6 << 8)
+#define	POWER_5VCTRL_VBUSVALID_TRSH_4V6			(0x7 << 8)
+#define	POWER_5VCTRL_PWDN_5VBRNOUT			(1 << 7)
+#define	POWER_5VCTRL_ENABLE_LINREG_ILIMIT		(1 << 6)
+#define	POWER_5VCTRL_DCDC_XFER				(1 << 5)
+#define	POWER_5VCTRL_VBUSVALID_5VDETECT			(1 << 4)
+#define	POWER_5VCTRL_VBUSVALID_TO_B			(1 << 3)
+#define	POWER_5VCTRL_ILIMIT_EQ_ZERO			(1 << 2)
+#define	POWER_5VCTRL_PWRUP_VBUS_CMPS			(1 << 1)
+#define	POWER_5VCTRL_ENABLE_DCDC			(1 << 0)
+
+#define	POWER_MINPWR_LOWPWR_4P2				(1 << 14)
+#define	MX23_POWER_MINPWR_VDAC_DUMP_CTRL		(1 << 13)
+#define	POWER_MINPWR_PWD_BO				(1 << 12)
+#define	POWER_MINPWR_USE_VDDXTAL_VBG			(1 << 11)
+#define	POWER_MINPWR_PWD_ANA_CMPS			(1 << 10)
+#define	POWER_MINPWR_ENABLE_OSC				(1 << 9)
+#define	POWER_MINPWR_SELECT_OSC				(1 << 8)
+#define	POWER_MINPWR_VBG_OFF				(1 << 7)
+#define	POWER_MINPWR_DOUBLE_FETS			(1 << 6)
+#define	POWER_MINPWR_HALFFETS				(1 << 5)
+#define	POWER_MINPWR_LESSANA_I				(1 << 4)
+#define	POWER_MINPWR_PWD_XTAL24				(1 << 3)
+#define	POWER_MINPWR_DC_STOPCLK				(1 << 2)
+#define	POWER_MINPWR_EN_DC_PFM				(1 << 1)
+#define	POWER_MINPWR_DC_HALFCLK				(1 << 0)
+
+#define	POWER_CHARGE_ADJ_VOLT_MASK			(0x7 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_OFFSET			24
+#define	POWER_CHARGE_ADJ_VOLT_M025P			(0x1 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_P050P			(0x2 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_M075P			(0x3 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_P025P			(0x4 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_M050P			(0x5 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_P075P			(0x6 << 24)
+#define	POWER_CHARGE_ADJ_VOLT_M100P			(0x7 << 24)
+#define	POWER_CHARGE_ENABLE_LOAD			(1 << 22)
+#define MX23_POWER_CHARGE_ENABLE_CHARGER_RESISTORS	(1 << 21)
+#define	POWER_CHARGE_ENABLE_FAULT_DETECT		(1 << 20)
+#define	POWER_CHARGE_CHRG_STS_OFF			(1 << 19)
+#define	MX28_POWER_CHARGE_LIION_4P1			(1 << 18)
+#define	MX23_POWER_CHARGE_USE_EXTERN_R			(1 << 17)
+#define	POWER_CHARGE_PWD_BATTCHRG			(1 << 16)
+#define	MX28_POWER_CHARGE_ENABLE_CHARGER_USB1		(1 << 13)
+#define	MX28_POWER_CHARGE_ENABLE_CHARGER_USB0		(1 << 12)
+#define	POWER_CHARGE_STOP_ILIMIT_MASK			(0xf << 8)
+#define	POWER_CHARGE_STOP_ILIMIT_OFFSET			8
+#define	POWER_CHARGE_STOP_ILIMIT_10MA			(0x1 << 8)
+#define	POWER_CHARGE_STOP_ILIMIT_20MA			(0x2 << 8)
+#define	POWER_CHARGE_STOP_ILIMIT_50MA			(0x4 << 8)
+#define	POWER_CHARGE_STOP_ILIMIT_100MA			(0x8 << 8)
+#define	POWER_CHARGE_BATTCHRG_I_MASK			0x3f
+#define	POWER_CHARGE_BATTCHRG_I_OFFSET			0
+#define	POWER_CHARGE_BATTCHRG_I_10MA			0x01
+#define	POWER_CHARGE_BATTCHRG_I_20MA			0x02
+#define	POWER_CHARGE_BATTCHRG_I_50MA			0x04
+#define	POWER_CHARGE_BATTCHRG_I_100MA			0x08
+#define	POWER_CHARGE_BATTCHRG_I_200MA			0x10
+#define	POWER_CHARGE_BATTCHRG_I_400MA			0x20
+
+#define	POWER_VDDDCTRL_ADJTN_MASK			(0xf << 28)
+#define	POWER_VDDDCTRL_ADJTN_OFFSET			28
+#define	POWER_VDDDCTRL_PWDN_BRNOUT			(1 << 23)
+#define	POWER_VDDDCTRL_DISABLE_STEPPING			(1 << 22)
+#define	POWER_VDDDCTRL_ENABLE_LINREG			(1 << 21)
+#define	POWER_VDDDCTRL_DISABLE_FET			(1 << 20)
+#define	POWER_VDDDCTRL_LINREG_OFFSET_MASK		(0x3 << 16)
+#define	POWER_VDDDCTRL_LINREG_OFFSET_OFFSET		16
+#define	POWER_VDDDCTRL_LINREG_OFFSET_0STEPS		(0x0 << 16)
+#define	POWER_VDDDCTRL_LINREG_OFFSET_1STEPS_ABOVE	(0x1 << 16)
+#define	POWER_VDDDCTRL_LINREG_OFFSET_1STEPS_BELOW	(0x2 << 16)
+#define	POWER_VDDDCTRL_LINREG_OFFSET_2STEPS_BELOW	(0x3 << 16)
+#define	POWER_VDDDCTRL_BO_OFFSET_MASK			(0x7 << 8)
+#define	POWER_VDDDCTRL_BO_OFFSET_OFFSET			8
+#define	POWER_VDDDCTRL_TRG_MASK				0x1f
+#define	POWER_VDDDCTRL_TRG_OFFSET			0
+
+#define	POWER_VDDACTRL_PWDN_BRNOUT			(1 << 19)
+#define	POWER_VDDACTRL_DISABLE_STEPPING			(1 << 18)
+#define	POWER_VDDACTRL_ENABLE_LINREG			(1 << 17)
+#define	POWER_VDDACTRL_DISABLE_FET			(1 << 16)
+#define	POWER_VDDACTRL_LINREG_OFFSET_MASK		(0x3 << 12)
+#define	POWER_VDDACTRL_LINREG_OFFSET_OFFSET		12
+#define	POWER_VDDACTRL_LINREG_OFFSET_0STEPS		(0x0 << 12)
+#define	POWER_VDDACTRL_LINREG_OFFSET_1STEPS_ABOVE	(0x1 << 12)
+#define	POWER_VDDACTRL_LINREG_OFFSET_1STEPS_BELOW	(0x2 << 12)
+#define	POWER_VDDACTRL_LINREG_OFFSET_2STEPS_BELOW	(0x3 << 12)
+#define	POWER_VDDACTRL_BO_OFFSET_MASK			(0x7 << 8)
+#define	POWER_VDDACTRL_BO_OFFSET_OFFSET			8
+#define	POWER_VDDACTRL_TRG_MASK				0x1f
+#define	POWER_VDDACTRL_TRG_OFFSET			0
+
+#define	POWER_VDDIOCTRL_ADJTN_MASK			(0xf << 20)
+#define	POWER_VDDIOCTRL_ADJTN_OFFSET			20
+#define	POWER_VDDIOCTRL_PWDN_BRNOUT			(1 << 18)
+#define	POWER_VDDIOCTRL_DISABLE_STEPPING		(1 << 17)
+#define	POWER_VDDIOCTRL_DISABLE_FET			(1 << 16)
+#define	POWER_VDDIOCTRL_LINREG_OFFSET_MASK		(0x3 << 12)
+#define	POWER_VDDIOCTRL_LINREG_OFFSET_OFFSET		12
+#define	POWER_VDDIOCTRL_LINREG_OFFSET_0STEPS		(0x0 << 12)
+#define	POWER_VDDIOCTRL_LINREG_OFFSET_1STEPS_ABOVE	(0x1 << 12)
+#define	POWER_VDDIOCTRL_LINREG_OFFSET_1STEPS_BELOW	(0x2 << 12)
+#define	POWER_VDDIOCTRL_LINREG_OFFSET_2STEPS_BELOW	(0x3 << 12)
+#define	POWER_VDDIOCTRL_BO_OFFSET_MASK			(0x7 << 8)
+#define	POWER_VDDIOCTRL_BO_OFFSET_OFFSET		8
+#define	POWER_VDDIOCTRL_TRG_MASK			0x1f
+#define	POWER_VDDIOCTRL_TRG_OFFSET			0
+
+#define	POWER_VDDMEMCTRL_PULLDOWN_ACTIVE		(1 << 10)
+#define	POWER_VDDMEMCTRL_ENABLE_ILIMIT			(1 << 9)
+#define	POWER_VDDMEMCTRL_ENABLE_LINREG			(1 << 8)
+#define	MX28_POWER_VDDMEMCTRL_BO_OFFSET_MASK		(0x7 << 5)
+#define	MX28_POWER_VDDMEMCTRL_BO_OFFSET_OFFSET		5
+#define	POWER_VDDMEMCTRL_TRG_MASK			0x1f
+#define	POWER_VDDMEMCTRL_TRG_OFFSET			0
+
+#define	POWER_DCDC4P2_DROPOUT_CTRL_MASK			(0xf << 28)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_OFFSET		28
+#define	POWER_DCDC4P2_DROPOUT_CTRL_200MV		(0x3 << 30)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_100MV		(0x2 << 30)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_50MV			(0x1 << 30)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_25MV			(0x0 << 30)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_SRC_4P2		(0x0 << 28)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_SRC_4P2_LT_BATT	(0x1 << 28)
+#define	POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL		(0x2 << 28)
+#define	POWER_DCDC4P2_ISTEAL_THRESH_MASK		(0x3 << 24)
+#define	POWER_DCDC4P2_ISTEAL_THRESH_OFFSET		24
+#define	POWER_DCDC4P2_ENABLE_4P2			(1 << 23)
+#define	POWER_DCDC4P2_ENABLE_DCDC			(1 << 22)
+#define	POWER_DCDC4P2_HYST_DIR				(1 << 21)
+#define	POWER_DCDC4P2_HYST_THRESH			(1 << 20)
+#define	POWER_DCDC4P2_TRG_MASK				(0x7 << 16)
+#define	POWER_DCDC4P2_TRG_OFFSET			16
+#define	POWER_DCDC4P2_TRG_4V2				(0x0 << 16)
+#define	POWER_DCDC4P2_TRG_4V1				(0x1 << 16)
+#define	POWER_DCDC4P2_TRG_4V0				(0x2 << 16)
+#define	POWER_DCDC4P2_TRG_3V9				(0x3 << 16)
+#define	POWER_DCDC4P2_TRG_BATT				(0x4 << 16)
+#define	POWER_DCDC4P2_BO_MASK				(0x1f << 8)
+#define	POWER_DCDC4P2_BO_OFFSET				8
+#define	POWER_DCDC4P2_CMPTRIP_MASK			0x1f
+#define	POWER_DCDC4P2_CMPTRIP_OFFSET			0
+
+#define	POWER_MISC_FREQSEL_MASK				(0x7 << 4)
+#define	POWER_MISC_FREQSEL_OFFSET			4
+#define	POWER_MISC_FREQSEL_20MHZ			(0x1 << 4)
+#define	POWER_MISC_FREQSEL_24MHZ			(0x2 << 4)
+#define	POWER_MISC_FREQSEL_19MHZ			(0x3 << 4)
+#define	POWER_MISC_FREQSEL_14MHZ			(0x4 << 4)
+#define	POWER_MISC_FREQSEL_18MHZ			(0x5 << 4)
+#define	POWER_MISC_FREQSEL_21MHZ			(0x6 << 4)
+#define	POWER_MISC_FREQSEL_17MHZ			(0x7 << 4)
+#define	POWER_MISC_DISABLE_FET_BO_LOGIC			(1 << 3)
+#define	POWER_MISC_DELAY_TIMING				(1 << 2)
+#define	POWER_MISC_TEST					(1 << 1)
+#define	POWER_MISC_SEL_PLLCLK				(1 << 0)
+
+#define	POWER_DCLIMITS_POSLIMIT_BUCK_MASK		(0x7f << 8)
+#define	POWER_DCLIMITS_POSLIMIT_BUCK_OFFSET		8
+#define	POWER_DCLIMITS_NEGLIMIT_MASK			0x7f
+#define	POWER_DCLIMITS_NEGLIMIT_OFFSET			0
+
+#define	POWER_LOOPCTRL_TOGGLE_DIF			(1 << 20)
+#define	POWER_LOOPCTRL_HYST_SIGN			(1 << 19)
+#define	POWER_LOOPCTRL_EN_CM_HYST			(1 << 18)
+#define	POWER_LOOPCTRL_EN_DF_HYST			(1 << 17)
+#define	POWER_LOOPCTRL_CM_HYST_THRESH			(1 << 16)
+#define	POWER_LOOPCTRL_DF_HYST_THRESH			(1 << 15)
+#define	POWER_LOOPCTRL_RCSCALE_THRESH			(1 << 14)
+#define	POWER_LOOPCTRL_EN_RCSCALE_MASK			(0x3 << 12)
+#define	POWER_LOOPCTRL_EN_RCSCALE_OFFSET		12
+#define	POWER_LOOPCTRL_EN_RCSCALE_DIS			(0x0 << 12)
+#define	POWER_LOOPCTRL_EN_RCSCALE_2X			(0x1 << 12)
+#define	POWER_LOOPCTRL_EN_RCSCALE_4X			(0x2 << 12)
+#define	POWER_LOOPCTRL_EN_RCSCALE_8X			(0x3 << 12)
+#define	POWER_LOOPCTRL_DC_FF_MASK			(0x7 << 8)
+#define	POWER_LOOPCTRL_DC_FF_OFFSET			8
+#define	POWER_LOOPCTRL_DC_R_MASK			(0xf << 4)
+#define	POWER_LOOPCTRL_DC_R_OFFSET			4
+#define	POWER_LOOPCTRL_DC_C_MASK			0x3
+#define	POWER_LOOPCTRL_DC_C_OFFSET			0
+#define	POWER_LOOPCTRL_DC_C_MAX				0x0
+#define	POWER_LOOPCTRL_DC_C_2X				0x1
+#define	POWER_LOOPCTRL_DC_C_4X				0x2
+#define	POWER_LOOPCTRL_DC_C_MIN				0x3
+
+#define	POWER_STS_PWRUP_SOURCE_MASK			(0x3f << 24)
+#define	POWER_STS_PWRUP_SOURCE_OFFSET			24
+#define	POWER_STS_PWRUP_SOURCE_5V			(0x20 << 24)
+#define	POWER_STS_PWRUP_SOURCE_RTC			(0x10 << 24)
+#define	POWER_STS_PWRUP_SOURCE_PSWITCH_HIGH		(0x02 << 24)
+#define	POWER_STS_PWRUP_SOURCE_PSWITCH_MID		(0x01 << 24)
+#define	POWER_STS_PSWITCH_MASK				(0x3 << 20)
+#define	POWER_STS_PSWITCH_OFFSET			20
+#define	MX28_POWER_STS_THERMAL_WARNING			(1 << 19)
+#define	MX28_POWER_STS_VDDMEM_BO			(1 << 18)
+#define	POWER_STS_AVALID0_STATUS			(1 << 17)
+#define	POWER_STS_BVALID0_STATUS			(1 << 16)
+#define	POWER_STS_VBUSVALID0_STATUS			(1 << 15)
+#define	POWER_STS_SESSEND0_STATUS			(1 << 14)
+#define	POWER_STS_BATT_BO				(1 << 13)
+#define	POWER_STS_VDD5V_FAULT				(1 << 12)
+#define	POWER_STS_CHRGSTS				(1 << 11)
+#define	POWER_STS_DCDC_4P2_BO				(1 << 10)
+#define	POWER_STS_DC_OK					(1 << 9)
+#define	POWER_STS_VDDIO_BO				(1 << 8)
+#define	POWER_STS_VDDA_BO				(1 << 7)
+#define	POWER_STS_VDDD_BO				(1 << 6)
+#define	POWER_STS_VDD5V_GT_VDDIO			(1 << 5)
+#define	POWER_STS_VDD5V_DROOP				(1 << 4)
+#define	POWER_STS_AVALID0				(1 << 3)
+#define	POWER_STS_BVALID0				(1 << 2)
+#define	POWER_STS_VBUSVALID0				(1 << 1)
+#define	POWER_STS_SESSEND0				(1 << 0)
+
+#define	MX23_POWER_SPEED_STATUS_MASK			(0xff << 16)
+#define	MX23_POWER_SPEED_STATUS_OFFSET			16
+#define	MX28_POWER_SPEED_STATUS_MASK			(0xffff << 8)
+#define	MX28_POWER_SPEED_STATUS_OFFSET			8
+#define	MX28_POWER_SPEED_STATUS_SEL_MASK		(0x3 << 6)
+#define	MX28_POWER_SPEED_STATUS_SEL_OFFSET		6
+#define	MX28_POWER_SPEED_STATUS_SEL_DCDC_STAT		(0x0 << 6)
+#define	MX28_POWER_SPEED_STATUS_SEL_CORE_STAT		(0x1 << 6)
+#define	MX28_POWER_SPEED_STATUS_SEL_ARM_STAT		(0x2 << 6)
+#define	POWER_SPEED_CTRL_MASK				0x3
+#define	POWER_SPEED_CTRL_OFFSET				0
+#define	POWER_SPEED_CTRL_SS_OFF				0x0
+#define	POWER_SPEED_CTRL_SS_ON				0x1
+#define	POWER_SPEED_CTRL_SS_ENABLE			0x3
+
+#define	POWER_BATTMONITOR_BATT_VAL_MASK			(0x3ff << 16)
+#define	POWER_BATTMONITOR_BATT_VAL_OFFSET		16
+#define	MX28_POWER_BATTMONITOR_PWDN_BATTBRNOUT_5VDETECT_EN	(1 << 11)
+#define	POWER_BATTMONITOR_EN_BATADJ			(1 << 10)
+#define	POWER_BATTMONITOR_PWDN_BATTBRNOUT		(1 << 9)
+#define	POWER_BATTMONITOR_BRWNOUT_PWD			(1 << 8)
+#define	POWER_BATTMONITOR_BRWNOUT_LVL_MASK		0x1f
+#define	POWER_BATTMONITOR_BRWNOUT_LVL_OFFSET		0
+
+#define	POWER_RESET_UNLOCK_MASK				(0xffff << 16)
+#define	POWER_RESET_UNLOCK_OFFSET			16
+#define	POWER_RESET_UNLOCK_KEY				(0x3e77 << 16)
+#define	MX28_POWER_RESET_FASTFALL_PSWITCH_OFF		(1 << 2)
+#define	POWER_RESET_PWD_OFF				(1 << 1)
+#define	POWER_RESET_PWD					(1 << 0)
+
+#define	POWER_DEBUG_VBUSVALIDPIOLOCK			(1 << 3)
+#define	POWER_DEBUG_AVALIDPIOLOCK			(1 << 2)
+#define	POWER_DEBUG_BVALIDPIOLOCK			(1 << 1)
+#define	POWER_DEBUG_SESSENDPIOLOCK			(1 << 0)
+
+#define	MX28_POWER_THERMAL_TEST				(1 << 8)
+#define	MX28_POWER_THERMAL_PWD				(1 << 7)
+#define	MX28_POWER_THERMAL_LOW_POWER			(1 << 6)
+#define	MX28_POWER_THERMAL_OFFSET_ADJ_MASK		(0x3 << 4)
+#define	MX28_POWER_THERMAL_OFFSET_ADJ_OFFSET		4
+#define	MX28_POWER_THERMAL_OFFSET_ADJ_ENABLE		(1 << 3)
+#define	MX28_POWER_THERMAL_TEMP_THRESHOLD_MASK		0x7
+#define	MX28_POWER_THERMAL_TEMP_THRESHOLD_OFFSET	0
+
+#define	MX28_POWER_USB1CTRL_AVALID1			(1 << 3)
+#define	MX28_POWER_USB1CTRL_BVALID1			(1 << 2)
+#define	MX28_POWER_USB1CTRL_VBUSVALID1			(1 << 1)
+#define	MX28_POWER_USB1CTRL_SESSEND1			(1 << 0)
+
+#define	POWER_SPECIAL_TEST_MASK				0xffffffff
+#define	POWER_SPECIAL_TEST_OFFSET			0
+
+#define	POWER_VERSION_MAJOR_MASK			(0xff << 24)
+#define	POWER_VERSION_MAJOR_OFFSET			24
+#define	POWER_VERSION_MINOR_MASK			(0xff << 16)
+#define	POWER_VERSION_MINOR_OFFSET			16
+#define	POWER_VERSION_STEP_MASK				0xffff
+#define	POWER_VERSION_STEP_OFFSET			0
+
+#define	MX28_POWER_ANACLKCTRL_CLKGATE_0			(1 << 31)
+#define	MX28_POWER_ANACLKCTRL_OUTDIV_MASK		(0x7 << 28)
+#define	MX28_POWER_ANACLKCTRL_OUTDIV_OFFSET		28
+#define	MX28_POWER_ANACLKCTRL_INVERT_OUTCLK		(1 << 27)
+#define	MX28_POWER_ANACLKCTRL_CLKGATE_I			(1 << 26)
+#define	MX28_POWER_ANACLKCTRL_DITHER_OFF		(1 << 10)
+#define	MX28_POWER_ANACLKCTRL_SLOW_DITHER		(1 << 9)
+#define	MX28_POWER_ANACLKCTRL_INVERT_INCLK		(1 << 8)
+#define	MX28_POWER_ANACLKCTRL_INCLK_SHIFT_MASK		(0x3 << 4)
+#define	MX28_POWER_ANACLKCTRL_INCLK_SHIFT_OFFSET	4
+#define	MX28_POWER_ANACLKCTRL_INDIV_MASK		0x7
+#define	MX28_POWER_ANACLKCTRL_INDIV_OFFSET		0
+
+#define	MX28_POWER_REFCTRL_FASTSETTLING			(1 << 26)
+#define	MX28_POWER_REFCTRL_RAISE_REF			(1 << 25)
+#define	MX28_POWER_REFCTRL_XTAL_BGR_BIAS		(1 << 24)
+#define	MX28_POWER_REFCTRL_VBG_ADJ_MASK			(0x7 << 20)
+#define	MX28_POWER_REFCTRL_VBG_ADJ_OFFSET		20
+#define	MX28_POWER_REFCTRL_LOW_PWR			(1 << 19)
+#define	MX28_POWER_REFCTRL_BIAS_CTRL_MASK		(0x3 << 16)
+#define	MX28_POWER_REFCTRL_BIAS_CTRL_OFFSET		16
+#define	MX28_POWER_REFCTRL_VDDXTAL_TO_VDDD		(1 << 14)
+#define	MX28_POWER_REFCTRL_ADJ_ANA			(1 << 13)
+#define	MX28_POWER_REFCTRL_ADJ_VAG			(1 << 12)
+#define	MX28_POWER_REFCTRL_ANA_REFVAL_MASK		(0xf << 8)
+#define	MX28_POWER_REFCTRL_ANA_REFVAL_OFFSET		8
+#define	MX28_POWER_REFCTRL_VAG_VAL_MASK			(0xf << 4)
+#define	MX28_POWER_REFCTRL_VAG_VAL_OFFSET		4
+
+#endif	/* __MX28_REGS_POWER_H__ */
diff --git a/arch/arm/mach-mxs/include/mach/regs-rtc.h b/arch/arm/mach-mxs/include/mach/regs-rtc.h
new file mode 100644
index 0000000..bd8fdad
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/regs-rtc.h
@@ -0,0 +1,134 @@
+/*
+ * Freescale i.MX28 RTC Register Definitions
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef __MX28_REGS_RTC_H__
+#define __MX28_REGS_RTC_H__
+
+#include <mach/regs-common.h>
+
+#ifndef	__ASSEMBLY__
+struct mxs_rtc_regs {
+	mxs_reg_32(hw_rtc_ctrl)
+	mxs_reg_32(hw_rtc_stat)
+	mxs_reg_32(hw_rtc_milliseconds)
+	mxs_reg_32(hw_rtc_seconds)
+	mxs_reg_32(hw_rtc_rtc_alarm)
+	mxs_reg_32(hw_rtc_watchdog)
+	mxs_reg_32(hw_rtc_persistent0)
+	mxs_reg_32(hw_rtc_persistent1)
+	mxs_reg_32(hw_rtc_persistent2)
+	mxs_reg_32(hw_rtc_persistent3)
+	mxs_reg_32(hw_rtc_persistent4)
+	mxs_reg_32(hw_rtc_persistent5)
+	mxs_reg_32(hw_rtc_debug)
+	mxs_reg_32(hw_rtc_version)
+};
+#endif
+
+#define	RTC_CTRL_SFTRST				(1 << 31)
+#define	RTC_CTRL_CLKGATE			(1 << 30)
+#define	RTC_CTRL_SUPPRESS_COPY2ANALOG		(1 << 6)
+#define	RTC_CTRL_FORCE_UPDATE			(1 << 5)
+#define	RTC_CTRL_WATCHDOGEN			(1 << 4)
+#define	RTC_CTRL_ONEMSEC_IRQ			(1 << 3)
+#define	RTC_CTRL_ALARM_IRQ			(1 << 2)
+#define	RTC_CTRL_ONEMSEC_IRQ_EN			(1 << 1)
+#define	RTC_CTRL_ALARM_IRQ_EN			(1 << 0)
+
+#define	RTC_STAT_RTC_PRESENT			(1 << 31)
+#define	RTC_STAT_ALARM_PRESENT			(1 << 30)
+#define	RTC_STAT_WATCHDOG_PRESENT		(1 << 29)
+#define	RTC_STAT_XTAL32000_PRESENT		(1 << 28)
+#define	RTC_STAT_XTAL32768_PRESENT		(1 << 27)
+#define	RTC_STAT_STALE_REGS_MASK		(0xff << 16)
+#define	RTC_STAT_STALE_REGS_OFFSET		16
+#define	RTC_STAT_NEW_REGS_MASK			(0xff << 8)
+#define	RTC_STAT_NEW_REGS_OFFSET		8
+
+#define	RTC_MILLISECONDS_COUNT_MASK		0xffffffff
+#define	RTC_MILLISECONDS_COUNT_OFFSET		0
+
+#define	RTC_SECONDS_COUNT_MASK			0xffffffff
+#define	RTC_SECONDS_COUNT_OFFSET		0
+
+#define	RTC_ALARM_VALUE_MASK			0xffffffff
+#define	RTC_ALARM_VALUE_OFFSET			0
+
+#define	RTC_WATCHDOG_COUNT_MASK			0xffffffff
+#define	RTC_WATCHDOG_COUNT_OFFSET		0
+
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_MASK	(0xf << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_OFFSET	28
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V83	(0x0 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V78	(0x1 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V73	(0x2 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V68	(0x3 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V62	(0x4 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V57	(0x5 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V52	(0x6 << 28)
+#define	RTC_PERSISTENT0_ADJ_POSLIMITBUCK_2V48	(0x7 << 28)
+#define	RTC_PERSISTENT0_EXTERNAL_RESET		(1 << 21)
+#define	RTC_PERSISTENT0_THERMAL_RESET		(1 << 20)
+#define	RTC_PERSISTENT0_ENABLE_LRADC_PWRUP	(1 << 18)
+#define	RTC_PERSISTENT0_AUTO_RESTART		(1 << 17)
+#define	RTC_PERSISTENT0_DISABLE_PSWITCH		(1 << 16)
+#define	RTC_PERSISTENT0_LOWERBIAS_MASK		(0xf << 14)
+#define	RTC_PERSISTENT0_LOWERBIAS_OFFSET	14
+#define	RTC_PERSISTENT0_LOWERBIAS_NOMINAL	(0x0 << 14)
+#define	RTC_PERSISTENT0_LOWERBIAS_M25P		(0x1 << 14)
+#define	RTC_PERSISTENT0_LOWERBIAS_M50P		(0x3 << 14)
+#define	RTC_PERSISTENT0_DISABLE_XTALOK		(1 << 13)
+#define	RTC_PERSISTENT0_MSEC_RES_MASK		(0x1f << 8)
+#define	RTC_PERSISTENT0_MSEC_RES_OFFSET		8
+#define	RTC_PERSISTENT0_MSEC_RES_1MS		(0x01 << 8)
+#define	RTC_PERSISTENT0_MSEC_RES_2MS		(0x02 << 8)
+#define	RTC_PERSISTENT0_MSEC_RES_4MS		(0x04 << 8)
+#define	RTC_PERSISTENT0_MSEC_RES_8MS		(0x08 << 8)
+#define	RTC_PERSISTENT0_MSEC_RES_16MS		(0x10 << 8)
+#define	RTC_PERSISTENT0_ALARM_WAKE		(1 << 7)
+#define	RTC_PERSISTENT0_XTAL32_FREQ		(1 << 6)
+#define	RTC_PERSISTENT0_XTAL32KHZ_PWRUP		(1 << 5)
+#define	RTC_PERSISTENT0_XTAL24KHZ_PWRUP		(1 << 4)
+#define	RTC_PERSISTENT0_LCK_SECS		(1 << 3)
+#define	RTC_PERSISTENT0_ALARM_EN		(1 << 2)
+#define	RTC_PERSISTENT0_ALARM_WAKE_EN		(1 << 1)
+#define	RTC_PERSISTENT0_CLOCKSOURCE		(1 << 0)
+
+#define	RTC_PERSISTENT1_GENERAL_MASK		0xffffffff
+#define	RTC_PERSISTENT1_GENERAL_OFFSET		0
+#define	RTC_PERSISTENT1_GENERAL_OTG_ALT_ROLE	0x0080
+#define	RTC_PERSISTENT1_GENERAL_OTG_HNP		0x0100
+#define	RTC_PERSISTENT1_GENERAL_USB_LPM		0x0200
+#define	RTC_PERSISTENT1_GENERAL_SKIP_CHECKDISK	0x0400
+#define	RTC_PERSISTENT1_GENERAL_USB_BOOT_PLAYER	0x0800
+#define	RTC_PERSISTENT1_GENERAL_ENUM_500MA_2X	0x1000
+
+#define	RTC_PERSISTENT2_GENERAL_MASK		0xffffffff
+#define	RTC_PERSISTENT2_GENERAL_OFFSET		0
+
+#define	RTC_PERSISTENT3_GENERAL_MASK		0xffffffff
+#define	RTC_PERSISTENT3_GENERAL_OFFSET		0
+
+#define	RTC_PERSISTENT4_GENERAL_MASK		0xffffffff
+#define	RTC_PERSISTENT4_GENERAL_OFFSET		0
+
+#define	RTC_PERSISTENT5_GENERAL_MASK		0xffffffff
+#define	RTC_PERSISTENT5_GENERAL_OFFSET		0
+
+#define	RTC_DEBUG_WATCHDOG_RESET_MASK		(1 << 1)
+#define	RTC_DEBUG_WATCHDOG_RESET		(1 << 0)
+
+#define	RTC_VERSION_MAJOR_MASK			(0xff << 24)
+#define	RTC_VERSION_MAJOR_OFFSET		24
+#define	RTC_VERSION_MINOR_MASK			(0xff << 16)
+#define	RTC_VERSION_MINOR_OFFSET		16
+#define	RTC_VERSION_STEP_MASK			0xffff
+#define	RTC_VERSION_STEP_OFFSET			0
+
+#endif	/* __MX28_REGS_RTC_H__ */
diff --git a/arch/arm/mach-mxs/lradc-init.c b/arch/arm/mach-mxs/lradc-init.c
new file mode 100644
index 0000000..682a475
--- /dev/null
+++ b/arch/arm/mach-mxs/lradc-init.c
@@ -0,0 +1,70 @@
+/*
+ * Freescale i.MX28 Battery measurement init
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <common.h>
+#include <config.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/regs-lradc.h>
+#include <mach/init.h>
+
+void mxs_lradc_init(void)
+{
+	struct mxs_lradc_regs *regs = (struct mxs_lradc_regs *)IMX_LRADC_BASE;
+
+	writel(LRADC_CTRL0_SFTRST, &regs->hw_lradc_ctrl0_clr);
+	writel(LRADC_CTRL0_CLKGATE, &regs->hw_lradc_ctrl0_clr);
+	writel(LRADC_CTRL0_ONCHIP_GROUNDREF, &regs->hw_lradc_ctrl0_clr);
+
+	clrsetbits_le32(&regs->hw_lradc_ctrl3,
+			LRADC_CTRL3_CYCLE_TIME_MASK,
+			LRADC_CTRL3_CYCLE_TIME_6MHZ);
+
+	clrsetbits_le32(&regs->hw_lradc_ctrl4,
+			LRADC_CTRL4_LRADC7SELECT_MASK |
+			LRADC_CTRL4_LRADC6SELECT_MASK,
+			LRADC_CTRL4_LRADC7SELECT_CHANNEL7 |
+			LRADC_CTRL4_LRADC6SELECT_CHANNEL10);
+}
+
+void mxs_lradc_enable_batt_measurement(void)
+{
+	struct mxs_lradc_regs *regs = (struct mxs_lradc_regs *)IMX_LRADC_BASE;
+
+	/* Check if the channel is present at all. */
+	if (!(readl(&regs->hw_lradc_status) & LRADC_STATUS_CHANNEL7_PRESENT))
+		return;
+
+	writel(LRADC_CTRL1_LRADC7_IRQ_EN, &regs->hw_lradc_ctrl1_clr);
+	writel(LRADC_CTRL1_LRADC7_IRQ, &regs->hw_lradc_ctrl1_clr);
+
+	clrsetbits_le32(&regs->hw_lradc_conversion,
+			LRADC_CONVERSION_SCALE_FACTOR_MASK,
+			LRADC_CONVERSION_SCALE_FACTOR_LI_ION);
+	writel(LRADC_CONVERSION_AUTOMATIC, &regs->hw_lradc_conversion_set);
+
+	/* Configure the channel. */
+	writel((1 << 7) << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
+		&regs->hw_lradc_ctrl2_clr);
+	writel(0xffffffff, &regs->hw_lradc_ch7_clr);
+	clrbits_le32(&regs->hw_lradc_ch7, LRADC_CH_NUM_SAMPLES_MASK);
+	writel(LRADC_CH_ACCUMULATE, &regs->hw_lradc_ch7_clr);
+
+	/* Schedule the channel. */
+	writel(1 << 7, &regs->hw_lradc_ctrl0_set);
+
+	/* Start the channel sampling. */
+	writel(((1 << 7) << LRADC_DELAY_TRIGGER_LRADCS_OFFSET) |
+		((1 << 3) << LRADC_DELAY_TRIGGER_DELAYS_OFFSET) |
+		100, &regs->hw_lradc_delay3);
+
+	writel(0xffffffff, &regs->hw_lradc_ch7_clr);
+
+	writel(LRADC_DELAY_KICK, &regs->hw_lradc_delay3_set);
+}
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
new file mode 100644
index 0000000..f4328b7
--- /dev/null
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -0,0 +1,292 @@
+/*
+ * Freescale i.MX28 RAM init
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <common.h>
+#include <config.h>
+#include <io.h>
+#include <mach/imx-regs.h>
+#include <linux/compiler.h>
+#include <stmp-device.h>
+
+#include <mach/init.h>
+#include <mach/regs-power-mx28.h>
+#include <mach/regs-clkctrl-mx28.h>
+
+static uint32_t mx28_dram_vals[] = {
+/*
+ * i.MX28 DDR2 at 200MHz
+ */
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000100, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00010101, 0x01010101,
+	0x000f0f01, 0x0f02020a, 0x00000000, 0x00010101,
+	0x00000100, 0x00000100, 0x00000000, 0x00000002,
+	0x01010000, 0x07080403, 0x06005003, 0x0a0000c8,
+	0x02009c40, 0x0002030c, 0x0036a609, 0x031a0612,
+	0x02030202, 0x00c8001c, 0x00000000, 0x00000000,
+	0x00012100, 0xffff0303, 0x00012100, 0xffff0303,
+	0x00012100, 0xffff0303, 0x00012100, 0xffff0303,
+	0x00000003, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000612, 0x01000F02,
+	0x06120612, 0x00000200, 0x00020007, 0xf4004a27,
+	0xf4004a27, 0xf4004a27, 0xf4004a27, 0x07000300,
+	0x07000300, 0x07400300, 0x07400300, 0x00000005,
+	0x00000000, 0x00000000, 0x01000000, 0x01020408,
+	0x08040201, 0x000f1133, 0x00000000, 0x00001f04,
+	0x00001f04, 0x00001f04, 0x00001f04, 0x00001f04,
+	0x00001f04, 0x00001f04, 0x00001f04, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00010000, 0x00030404,
+	0x00000003, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x01010000,
+	0x01000000, 0x03030000, 0x00010303, 0x01020202,
+	0x00000000, 0x02040303, 0x21002103, 0x00061200,
+	0x06120612, 0x04420442, 0x04420442, 0x00040004,
+	0x00040004, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0xffffffff
+};
+
+/*
+ * i.MX23 DDR at 133MHz
+ */
+static uint32_t mx23_dram_vals[] = {
+	0x01010001, 0x00010100, 0x01000101, 0x00000001,
+	0x00000101, 0x00000000, 0x00010000, 0x01000001,
+	0x00000000, 0x00000001, 0x07000200, 0x00070202,
+	0x02020000, 0x04040a01, 0x00000201, 0x02040000,
+	0x02000000, 0x19000f08, 0x0d0d0000, 0x02021313,
+	0x02061521, 0x0000000a, 0x00080008, 0x00200020,
+	0x00200020, 0x00200020, 0x000003f7, 0x00000000,
+	0x00000000, 0x00000020, 0x00000020, 0x00c80000,
+	0x000a23cd, 0x000000c8, 0x00006665, 0x00000000,
+	0x00000101, 0x00040001, 0x00000000, 0x00000000,
+	0x00010000
+};
+
+static void mx28_initialize_dram_values(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(mx28_dram_vals); i++)
+		writel(mx28_dram_vals[i], IMX_SDRAMC_BASE + (4 * i));
+}
+
+static void mx23_initialize_dram_values(void)
+{
+	int i;
+
+	/*
+	 * HW_DRAM_CTL27, HW_DRAM_CTL28 and HW_DRAM_CTL35 are not initialized as
+	 * per FSL bootlets code.
+	 *
+	 * mx23 Reference Manual marks HW_DRAM_CTL27 and HW_DRAM_CTL28 as
+	 * "reserved".
+	 * HW_DRAM_CTL8 is setup as the last element.
+	 * So skip the initialization of these HW_DRAM_CTL registers.
+	 */
+	for (i = 0; i < ARRAY_SIZE(mx23_dram_vals); i++) {
+		if (i == 8 || i == 27 || i == 28 || i == 35)
+			continue;
+		writel(mx23_dram_vals[i], IMX_SDRAMC_BASE + (4 * i));
+	}
+
+	/*
+	 * Enable tRAS lockout in HW_DRAM_CTL08 ; it must be the last
+	 * element to be set
+	 */
+	writel((1 << 24), IMX_SDRAMC_BASE + (4 * 8));
+}
+
+void mxs_mem_init_clock(unsigned char divider)
+{
+	struct mxs_clkctrl_regs *clkctrl_regs =
+		(struct mxs_clkctrl_regs *)IMX_CCM_BASE;
+
+	/* Gate EMI clock */
+	writeb(CLKCTRL_FRAC_CLKGATE,
+		&clkctrl_regs->hw_clkctrl_frac0_set[CLKCTRL_FRAC0_EMI]);
+
+	/* Set fractional divider for ref_emi */
+	writeb(CLKCTRL_FRAC_CLKGATE | (divider & CLKCTRL_FRAC_FRAC_MASK),
+		&clkctrl_regs->hw_clkctrl_frac0[CLKCTRL_FRAC0_EMI]);
+
+	/* Ungate EMI clock */
+	writeb(CLKCTRL_FRAC_CLKGATE,
+		&clkctrl_regs->hw_clkctrl_frac0_clr[CLKCTRL_FRAC0_EMI]);
+
+	mxs_early_delay(11000);
+
+	/* Set EMI clock divider for EMI clock to 411 / 2 = 205MHz */
+	writel((2 << CLKCTRL_EMI_DIV_EMI_OFFSET) |
+		(1 << CLKCTRL_EMI_DIV_XTAL_OFFSET),
+		&clkctrl_regs->hw_clkctrl_emi);
+
+	/* Unbypass EMI */
+	writel(CLKCTRL_CLKSEQ_BYPASS_EMI,
+		&clkctrl_regs->hw_clkctrl_clkseq_clr);
+
+	mxs_early_delay(10000);
+}
+
+void mxs_mem_setup_cpu_and_hbus(void)
+{
+	struct mxs_clkctrl_regs *clkctrl_regs =
+		(struct mxs_clkctrl_regs *)IMX_CCM_BASE;
+
+	/* Set fractional divider for ref_cpu to 480 * 18 / 19 = 454MHz
+	 * and ungate CPU clock */
+	writeb(19 & CLKCTRL_FRAC_FRAC_MASK,
+		(uint8_t *)&clkctrl_regs->hw_clkctrl_frac0[CLKCTRL_FRAC0_CPU]);
+
+	/* Set CPU bypass */
+	writel(CLKCTRL_CLKSEQ_BYPASS_CPU,
+		&clkctrl_regs->hw_clkctrl_clkseq_set);
+
+	/* HBUS = 151MHz */
+	writel(CLKCTRL_HBUS_DIV_MASK, &clkctrl_regs->hw_clkctrl_hbus_set);
+	writel(((~3) << CLKCTRL_HBUS_DIV_OFFSET) & CLKCTRL_HBUS_DIV_MASK,
+		&clkctrl_regs->hw_clkctrl_hbus_clr);
+
+	mxs_early_delay(10000);
+
+	/* CPU clock divider = 1 */
+	clrsetbits_le32(&clkctrl_regs->hw_clkctrl_cpu,
+			CLKCTRL_CPU_DIV_CPU_MASK, 1);
+
+	/* Disable CPU bypass */
+	writel(CLKCTRL_CLKSEQ_BYPASS_CPU,
+		&clkctrl_regs->hw_clkctrl_clkseq_clr);
+
+	mxs_early_delay(15000);
+}
+
+void mxs_mem_setup_vdda(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	writel((0xc << POWER_VDDACTRL_TRG_OFFSET) |
+		(0x7 << POWER_VDDACTRL_BO_OFFSET_OFFSET) |
+		POWER_VDDACTRL_LINREG_OFFSET_1STEPS_BELOW,
+		&power_regs->hw_power_vddactrl);
+}
+
+static void mx23_mem_setup_vddmem(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	clrbits_le32(&power_regs->hw_power_vddmemctrl,
+		POWER_VDDMEMCTRL_ENABLE_ILIMIT);
+
+}
+
+void mx23_mem_init(void)
+{
+	mxs_early_delay(11000);
+
+	/* Fractional divider for ref_emi is 33 ; 480 * 18 / 33 = 266MHz */
+	mxs_mem_init_clock(33);
+
+	mxs_mem_setup_vdda();
+
+	/*
+	 * Reset/ungate the EMI block. This is essential, otherwise the system
+	 * suffers from memory instability. This thing is mx23 specific and is
+	 * no longer present on mx28.
+	 */
+	stmp_reset_block((struct mxs_register_32 *)IMX_EMI_BASE, 0);
+
+	mx23_mem_setup_vddmem();
+
+	/*
+	 * Configure the DRAM registers
+	 */
+
+	/* Clear START and SREFRESH bit from DRAM_CTL8 */
+	clrbits_le32(IMX_SDRAMC_BASE + 0x20, (1 << 16) | (1 << 8));
+
+	mx23_initialize_dram_values();
+
+	/* Set START bit in DRAM_CTL8 */
+	setbits_le32(IMX_SDRAMC_BASE + 0x20, 1 << 16);
+
+	clrbits_le32(IMX_SDRAMC_BASE + 0x40, 1 << 17);
+	mxs_early_delay(20000);
+
+	/* Adjust EMI port priority. */
+	clrsetbits_le32(0x80020000, 0x1f << 16, 0x2);
+	mxs_early_delay(20000);
+
+	setbits_le32(IMX_SDRAMC_BASE + 0x40, 1 << 19);
+	setbits_le32(IMX_SDRAMC_BASE + 0x40, 1 << 11);
+
+	mxs_early_delay(10000);
+
+	mxs_mem_setup_cpu_and_hbus();
+}
+
+#define PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2	(0x3 << 16)
+
+void mx28_mem_init(void)
+{
+	mxs_early_delay(11000);
+
+	/* Fractional divider for ref_emi is 21 ; 480 * 18 / 21 = 411MHz */
+	mxs_mem_init_clock(21);
+
+	mxs_mem_setup_vdda();
+
+	/* Set DDR2 mode */
+	writel(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			IMX_IOMUXC_BASE + 0x1b80);
+
+	/*
+	 * Configure the DRAM registers
+	 */
+
+	/* Clear START bit from DRAM_CTL16 */
+	clrbits_le32(IMX_SDRAMC_BASE + 0x40, 1);
+
+	mx28_initialize_dram_values();
+
+	/* Clear SREFRESH bit from DRAM_CTL17 */
+	clrbits_le32(IMX_SDRAMC_BASE + 0x44, 1);
+
+	/* Set START bit in DRAM_CTL16 */
+	setbits_le32(IMX_SDRAMC_BASE + 0x40, 1);
+
+	/* Wait for bit 20 (DRAM init complete) in DRAM_CTL58 */
+	while (!(readl(IMX_SDRAMC_BASE + 0xe8) & (1 << 20)))
+		;
+
+	mxs_early_delay(10000);
+
+	mxs_mem_setup_cpu_and_hbus();
+}
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
new file mode 100644
index 0000000..b4431c4
--- /dev/null
+++ b/arch/arm/mach-mxs/power-init.c
@@ -0,0 +1,1274 @@
+/*
+ * Freescale i.MX28 Boot PMIC init
+ *
+ * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
+ * on behalf of DENX Software Engineering GmbH
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <common.h>
+#include <config.h>
+#include <io.h>
+#include <mach/imx-regs.h>
+
+#include <mach/generic.h>
+#include <mach/init.h>
+#ifdef CONFIG_ARCH_IMX23
+#include <mach/regs-clkctrl-mx23.h>
+#endif
+#ifdef CONFIG_ARCH_IMX28
+#include <mach/regs-clkctrl-mx28.h>
+#endif
+#include <mach/regs-power-mx28.h>
+#include <mach/regs-rtc.h>
+#include <mach/regs-lradc.h>
+
+/*
+ * This delay function is intended to be used only in early stage of boot, where
+ * clock are not set up yet. The timer used here is reset on every boot and
+ * takes a few seconds to roll. The boot doesn't take that long, so to keep the
+ * code simple, it doesn't take rolling into consideration.
+ */
+void mxs_early_delay(int delay)
+{
+	void __iomem *digctl_regs = IOMEM(IMX_DIGCTL_BASE);
+	uint32_t st = readl(digctl_regs + 0xc0);
+
+	st += delay;
+
+	while (st > readl(digctl_regs + 0xc0));
+}
+
+static inline void charger_4p2_disable(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	if (cpu_is_mx28())
+		writel(MX28_POWER_5VCTRL_PWD_CHARGE_4P2_MASK,
+			&power_regs->hw_power_5vctrl_set);
+	else
+		writel(MX23_POWER_5VCTRL_PWD_CHARGE_4P2_MASK,
+			&power_regs->hw_power_5vctrl_set);
+}
+
+static inline void charger_4p2_enable(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	if (cpu_is_mx28())
+		writel(MX28_POWER_5VCTRL_PWD_CHARGE_4P2_MASK,
+			&power_regs->hw_power_5vctrl_clr);
+	else
+		writel(MX23_POWER_5VCTRL_PWD_CHARGE_4P2_MASK,
+			&power_regs->hw_power_5vctrl_clr);
+}
+
+/**
+ * mxs_power_clock2xtal() - Switch CPU core clock source to 24MHz XTAL
+ *
+ * This function switches the CPU core clock from PLL to 24MHz XTAL
+ * oscilator. This is necessary if the PLL is being reconfigured to
+ * prevent crash of the CPU core.
+ */
+static void mxs_power_clock2xtal(void)
+{
+	struct mxs_clkctrl_regs *clkctrl_regs =
+		(struct mxs_clkctrl_regs *)IMX_CCM_BASE;
+
+	/* Set XTAL as CPU reference clock */
+	writel(CLKCTRL_CLKSEQ_BYPASS_CPU,
+		&clkctrl_regs->hw_clkctrl_clkseq_set);
+}
+
+/**
+ * mxs_power_clock2pll() - Switch CPU core clock source to PLL
+ *
+ * This function switches the CPU core clock from 24MHz XTAL oscilator
+ * to PLL. This can only be called once the PLL has re-locked and once
+ * the PLL is stable after reconfiguration.
+ */
+static void mxs_power_clock2pll(void)
+{
+	struct mxs_clkctrl_regs *clkctrl_regs =
+		(struct mxs_clkctrl_regs *)IMX_CCM_BASE;
+
+	setbits_le32(&clkctrl_regs->hw_clkctrl_pll0ctrl0,
+			CLKCTRL_PLL0CTRL0_POWER);
+	mxs_early_delay(100);
+	setbits_le32(&clkctrl_regs->hw_clkctrl_clkseq,
+			CLKCTRL_CLKSEQ_BYPASS_CPU);
+}
+
+/**
+ * mxs_power_set_auto_restart() - Set the auto-restart bit
+ *
+ * This function ungates the RTC block and sets the AUTO_RESTART
+ * bit to work around a design bug on MX28EVK Rev. A .
+ */
+
+static void mxs_power_set_auto_restart(void)
+{
+	struct mxs_rtc_regs *rtc_regs =
+		(struct mxs_rtc_regs *)IMX_WDT_BASE;
+
+	writel(RTC_CTRL_SFTRST, &rtc_regs->hw_rtc_ctrl_clr);
+	while (readl(&rtc_regs->hw_rtc_ctrl) & RTC_CTRL_SFTRST)
+		;
+
+	writel(RTC_CTRL_CLKGATE, &rtc_regs->hw_rtc_ctrl_clr);
+	while (readl(&rtc_regs->hw_rtc_ctrl) & RTC_CTRL_CLKGATE)
+		;
+
+	/* Do nothing if flag already set */
+	if (readl(&rtc_regs->hw_rtc_persistent0) & RTC_PERSISTENT0_AUTO_RESTART)
+		return;
+
+	while (readl(&rtc_regs->hw_rtc_stat) & RTC_STAT_NEW_REGS_MASK)
+		;
+
+	setbits_le32(&rtc_regs->hw_rtc_persistent0,
+			RTC_PERSISTENT0_AUTO_RESTART);
+	writel(RTC_CTRL_FORCE_UPDATE, &rtc_regs->hw_rtc_ctrl_set);
+	writel(RTC_CTRL_FORCE_UPDATE, &rtc_regs->hw_rtc_ctrl_clr);
+	while (readl(&rtc_regs->hw_rtc_stat) & RTC_STAT_NEW_REGS_MASK)
+		;
+	while (readl(&rtc_regs->hw_rtc_stat) & RTC_STAT_STALE_REGS_MASK)
+		;
+}
+
+/**
+ * mxs_power_set_linreg() - Set linear regulators 25mV below DC-DC converter
+ *
+ * This function configures the VDDIO, VDDA and VDDD linear regulators output
+ * to be 25mV below the VDDIO, VDDA and VDDD output from the DC-DC switching
+ * converter. This is the recommended setting for the case where we use both
+ * linear regulators and DC-DC converter to power the VDDIO rail.
+ */
+static void mxs_power_set_linreg(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/* Set linear regulator 25mV below switching converter */
+	clrsetbits_le32(&power_regs->hw_power_vdddctrl,
+			POWER_VDDDCTRL_LINREG_OFFSET_MASK,
+			POWER_VDDDCTRL_LINREG_OFFSET_1STEPS_BELOW);
+
+	clrsetbits_le32(&power_regs->hw_power_vddactrl,
+			POWER_VDDACTRL_LINREG_OFFSET_MASK,
+			POWER_VDDACTRL_LINREG_OFFSET_1STEPS_BELOW);
+
+	clrsetbits_le32(&power_regs->hw_power_vddioctrl,
+			POWER_VDDIOCTRL_LINREG_OFFSET_MASK,
+			POWER_VDDIOCTRL_LINREG_OFFSET_1STEPS_BELOW);
+}
+
+/**
+ * mxs_get_batt_volt() - Measure battery input voltage
+ *
+ * This function retrieves the battery input voltage and returns it.
+ */
+static int mxs_get_batt_volt(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t volt = readl(&power_regs->hw_power_battmonitor);
+
+	volt &= POWER_BATTMONITOR_BATT_VAL_MASK;
+	volt >>= POWER_BATTMONITOR_BATT_VAL_OFFSET;
+	volt *= 8;
+
+	return volt;
+}
+
+/**
+ * mxs_is_batt_ready() - Test if the battery provides enough voltage to boot
+ *
+ * This function checks if the battery input voltage is higher than 3.6V and
+ * therefore allows the system to successfully boot using this power source.
+ */
+static int mxs_is_batt_ready(void)
+{
+	return (mxs_get_batt_volt() >= 3600);
+}
+
+/**
+ * mxs_is_batt_good() - Test if battery is operational at all
+ *
+ * This function starts recharging the battery and tests if the input current
+ * provided by the 5V input recharging the battery is also sufficient to power
+ * the DC-DC converter.
+ */
+static int mxs_is_batt_good(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t volt = mxs_get_batt_volt();
+
+	if ((volt >= 2400) && (volt <= 4300))
+		return 1;
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
+		0x3 << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
+	charger_4p2_enable();
+
+	clrsetbits_le32(&power_regs->hw_power_charge,
+		POWER_CHARGE_STOP_ILIMIT_MASK | POWER_CHARGE_BATTCHRG_I_MASK,
+		POWER_CHARGE_STOP_ILIMIT_10MA | 0x3);
+
+	writel(POWER_CHARGE_PWD_BATTCHRG, &power_regs->hw_power_charge_clr);
+	charger_4p2_enable();
+
+	mxs_early_delay(500000);
+
+	volt = mxs_get_batt_volt();
+
+	if (volt >= 3500)
+		return 0;
+
+	if (volt >= 2400)
+		return 1;
+
+	writel(POWER_CHARGE_STOP_ILIMIT_MASK | POWER_CHARGE_BATTCHRG_I_MASK,
+		&power_regs->hw_power_charge_clr);
+	writel(POWER_CHARGE_PWD_BATTCHRG, &power_regs->hw_power_charge_set);
+
+	return 0;
+}
+
+/**
+ * mxs_power_setup_5v_detect() - Start the 5V input detection comparator
+ *
+ * This function enables the 5V detection comparator and sets the 5V valid
+ * threshold to 4.4V . We use 4.4V threshold here to make sure that even
+ * under high load, the voltage drop on the 5V input won't be so critical
+ * to cause undervolt on the 4P2 linear regulator supplying the DC-DC
+ * converter and thus making the system crash.
+ */
+static void mxs_power_setup_5v_detect(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/* Start 5V detection */
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+			POWER_5VCTRL_VBUSVALID_TRSH_MASK,
+			POWER_5VCTRL_VBUSVALID_TRSH_4V4 |
+			POWER_5VCTRL_PWRUP_VBUS_CMPS);
+}
+
+/**
+ * mxs_src_power_init() - Preconfigure the power block
+ *
+ * This function configures reasonable values for the DC-DC control loop
+ * and battery monitor.
+ */
+static void mxs_src_power_init(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/* Improve efficieny and reduce transient ripple */
+	writel(POWER_LOOPCTRL_TOGGLE_DIF | POWER_LOOPCTRL_EN_CM_HYST |
+		POWER_LOOPCTRL_EN_DF_HYST, &power_regs->hw_power_loopctrl_set);
+
+	clrsetbits_le32(&power_regs->hw_power_dclimits,
+			POWER_DCLIMITS_POSLIMIT_BUCK_MASK,
+			0x30 << POWER_DCLIMITS_POSLIMIT_BUCK_OFFSET);
+
+	setbits_le32(&power_regs->hw_power_battmonitor,
+			POWER_BATTMONITOR_EN_BATADJ);
+
+	/* Increase the RCSCALE level for quick DCDC response to dynamic load */
+	clrsetbits_le32(&power_regs->hw_power_loopctrl,
+			POWER_LOOPCTRL_EN_RCSCALE_MASK,
+			POWER_LOOPCTRL_RCSCALE_THRESH |
+			POWER_LOOPCTRL_EN_RCSCALE_8X);
+
+	clrsetbits_le32(&power_regs->hw_power_minpwr,
+			POWER_MINPWR_HALFFETS, POWER_MINPWR_DOUBLE_FETS);
+
+	/* 5V to battery handoff ... FIXME */
+	setbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_DCDC_XFER);
+	mxs_early_delay(30);
+	clrbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_DCDC_XFER);
+}
+
+/**
+ * mxs_power_init_4p2_params() - Configure the parameters of the 4P2 regulator
+ *
+ * This function configures the necessary parameters for the 4P2 linear
+ * regulator to supply the DC-DC converter from 5V input.
+ */
+static void mxs_power_init_4p2_params(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/* Setup 4P2 parameters */
+	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
+		POWER_DCDC4P2_CMPTRIP_MASK | POWER_DCDC4P2_TRG_MASK,
+		POWER_DCDC4P2_TRG_4V2 | (31 << POWER_DCDC4P2_CMPTRIP_OFFSET));
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_HEADROOM_ADJ_MASK,
+		0x4 << POWER_5VCTRL_HEADROOM_ADJ_OFFSET);
+
+	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
+		POWER_DCDC4P2_DROPOUT_CTRL_MASK,
+		POWER_DCDC4P2_DROPOUT_CTRL_100MV |
+		POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL);
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
+		0x3f << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
+}
+
+/**
+ * mxs_enable_4p2_dcdc_input() - Enable or disable the DCDC input from 4P2
+ * @xfer:	Select if the input shall be enabled or disabled
+ *
+ * This function enables or disables the 4P2 input into the DC-DC converter.
+ */
+static void mxs_enable_4p2_dcdc_input(int xfer)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t tmp, vbus_thresh, vbus_5vdetect, pwd_bo;
+	uint32_t prev_5v_brnout, prev_5v_droop;
+
+	prev_5v_brnout = readl(&power_regs->hw_power_5vctrl) &
+				POWER_5VCTRL_PWDN_5VBRNOUT;
+	prev_5v_droop = readl(&power_regs->hw_power_ctrl) &
+				POWER_CTRL_ENIRQ_VDD5V_DROOP;
+
+	clrbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_PWDN_5VBRNOUT);
+	writel(POWER_RESET_UNLOCK_KEY | POWER_RESET_PWD_OFF,
+		&power_regs->hw_power_reset);
+
+	clrbits_le32(&power_regs->hw_power_ctrl, POWER_CTRL_ENIRQ_VDD5V_DROOP);
+
+	if (xfer && (readl(&power_regs->hw_power_5vctrl) &
+			POWER_5VCTRL_ENABLE_DCDC)) {
+		return;
+	}
+
+	/*
+	 * Recording orignal values that will be modified temporarlily
+	 * to handle a chip bug. See chip errata for CQ ENGR00115837
+	 */
+	tmp = readl(&power_regs->hw_power_5vctrl);
+	vbus_thresh = tmp & POWER_5VCTRL_VBUSVALID_TRSH_MASK;
+	vbus_5vdetect = tmp & POWER_5VCTRL_VBUSVALID_5VDETECT;
+
+	pwd_bo = readl(&power_regs->hw_power_minpwr) & POWER_MINPWR_PWD_BO;
+
+	/*
+	 * Disable mechanisms that get erroneously tripped by when setting
+	 * the DCDC4P2 EN_DCDC
+	 */
+	clrbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_VBUSVALID_5VDETECT |
+		POWER_5VCTRL_VBUSVALID_TRSH_MASK);
+
+	writel(POWER_MINPWR_PWD_BO, &power_regs->hw_power_minpwr_set);
+
+	if (xfer) {
+		setbits_le32(&power_regs->hw_power_5vctrl,
+				POWER_5VCTRL_DCDC_XFER);
+		mxs_early_delay(20);
+		clrbits_le32(&power_regs->hw_power_5vctrl,
+				POWER_5VCTRL_DCDC_XFER);
+
+		setbits_le32(&power_regs->hw_power_5vctrl,
+				POWER_5VCTRL_ENABLE_DCDC);
+	} else {
+		setbits_le32(&power_regs->hw_power_dcdc4p2,
+				POWER_DCDC4P2_ENABLE_DCDC);
+	}
+
+	mxs_early_delay(25);
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+			POWER_5VCTRL_VBUSVALID_TRSH_MASK, vbus_thresh);
+
+	if (vbus_5vdetect)
+		writel(vbus_5vdetect, &power_regs->hw_power_5vctrl_set);
+
+	if (!pwd_bo)
+		clrbits_le32(&power_regs->hw_power_minpwr, POWER_MINPWR_PWD_BO);
+
+	while (readl(&power_regs->hw_power_ctrl) & POWER_CTRL_VBUS_VALID_IRQ)
+		writel(POWER_CTRL_VBUS_VALID_IRQ,
+			&power_regs->hw_power_ctrl_clr);
+
+	if (prev_5v_brnout) {
+		writel(POWER_5VCTRL_PWDN_5VBRNOUT,
+			&power_regs->hw_power_5vctrl_set);
+		writel(POWER_RESET_UNLOCK_KEY,
+			&power_regs->hw_power_reset);
+	} else {
+		writel(POWER_5VCTRL_PWDN_5VBRNOUT,
+			&power_regs->hw_power_5vctrl_clr);
+		writel(POWER_RESET_UNLOCK_KEY | POWER_RESET_PWD_OFF,
+			&power_regs->hw_power_reset);
+	}
+
+	while (readl(&power_regs->hw_power_ctrl) & POWER_CTRL_VDD5V_DROOP_IRQ)
+		writel(POWER_CTRL_VDD5V_DROOP_IRQ,
+			&power_regs->hw_power_ctrl_clr);
+
+	if (prev_5v_droop)
+		clrbits_le32(&power_regs->hw_power_ctrl,
+				POWER_CTRL_ENIRQ_VDD5V_DROOP);
+	else
+		setbits_le32(&power_regs->hw_power_ctrl,
+				POWER_CTRL_ENIRQ_VDD5V_DROOP);
+}
+
+/**
+ * mxs_power_init_4p2_regulator() - Start the 4P2 regulator
+ *
+ * This function enables the 4P2 regulator and switches the DC-DC converter
+ * to use the 4P2 input.
+ */
+static void mxs_power_init_4p2_regulator(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t tmp, tmp2;
+
+	setbits_le32(&power_regs->hw_power_dcdc4p2, POWER_DCDC4P2_ENABLE_4P2);
+
+	writel(POWER_CHARGE_ENABLE_LOAD, &power_regs->hw_power_charge_set);
+
+	writel(POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
+		&power_regs->hw_power_5vctrl_clr);
+	clrbits_le32(&power_regs->hw_power_dcdc4p2, POWER_DCDC4P2_TRG_MASK);
+
+	/* Power up the 4p2 rail and logic/control */
+	charger_4p2_enable();
+
+	/*
+	 * Start charging up the 4p2 capacitor. We ramp of this charge
+	 * gradually to avoid large inrush current from the 5V cable which can
+	 * cause transients/problems
+	 */
+	mxs_enable_4p2_dcdc_input(0);
+
+	if (readl(&power_regs->hw_power_ctrl) & POWER_CTRL_VBUS_VALID_IRQ) {
+		/*
+		 * If we arrived here, we were unable to recover from mx23 chip
+		 * errata 5837. 4P2 is disabled and sufficient battery power is
+		 * not present. Exiting to not enable DCDC power during 5V
+		 * connected state.
+		 */
+		clrbits_le32(&power_regs->hw_power_dcdc4p2,
+			POWER_DCDC4P2_ENABLE_DCDC);
+		charger_4p2_disable();
+		hang();
+	}
+
+	/*
+	 * Here we set the 4p2 brownout level to something very close to 4.2V.
+	 * We then check the brownout status. If the brownout status is false,
+	 * the voltage is already close to the target voltage of 4.2V so we
+	 * can go ahead and set the 4P2 current limit to our max target limit.
+	 * If the brownout status is true, we need to ramp us the current limit
+	 * so that we don't cause large inrush current issues. We step up the
+	 * current limit until the brownout status is false or until we've
+	 * reached our maximum defined 4p2 current limit.
+	 */
+	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
+			POWER_DCDC4P2_BO_MASK,
+			22 << POWER_DCDC4P2_BO_OFFSET);	/* 4.15V */
+
+	if (!(readl(&power_regs->hw_power_sts) & POWER_STS_DCDC_4P2_BO)) {
+		setbits_le32(&power_regs->hw_power_5vctrl,
+			0x3f << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
+	} else {
+		tmp = (readl(&power_regs->hw_power_5vctrl) &
+			POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK) >>
+			POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET;
+		while (tmp < 0x3f) {
+			if (!(readl(&power_regs->hw_power_sts) &
+					POWER_STS_DCDC_4P2_BO)) {
+				tmp = readl(&power_regs->hw_power_5vctrl);
+				tmp |= POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK;
+				mxs_early_delay(100);
+				writel(tmp, &power_regs->hw_power_5vctrl);
+				break;
+			} else {
+				tmp++;
+				tmp2 = readl(&power_regs->hw_power_5vctrl);
+				tmp2 &= ~POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK;
+				tmp2 |= tmp <<
+					POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET;
+				writel(tmp2, &power_regs->hw_power_5vctrl);
+				mxs_early_delay(100);
+			}
+		}
+	}
+
+	clrbits_le32(&power_regs->hw_power_dcdc4p2, POWER_DCDC4P2_BO_MASK);
+	writel(POWER_CTRL_DCDC4P2_BO_IRQ, &power_regs->hw_power_ctrl_clr);
+}
+
+/**
+ * mxs_power_init_dcdc_4p2_source() - Switch DC-DC converter to 4P2 source
+ *
+ * This function configures the DC-DC converter to be supplied from the 4P2
+ * linear regulator.
+ */
+static void mxs_power_init_dcdc_4p2_source(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	if (!(readl(&power_regs->hw_power_dcdc4p2) &
+		POWER_DCDC4P2_ENABLE_DCDC)) {
+		hang();
+	}
+
+	mxs_enable_4p2_dcdc_input(1);
+
+	if (readl(&power_regs->hw_power_ctrl) & POWER_CTRL_VBUS_VALID_IRQ) {
+		clrbits_le32(&power_regs->hw_power_dcdc4p2,
+			POWER_DCDC4P2_ENABLE_DCDC);
+		writel(POWER_5VCTRL_ENABLE_DCDC,
+			&power_regs->hw_power_5vctrl_clr);
+		charger_4p2_disable();
+	}
+}
+
+/**
+ * mxs_power_enable_4p2() - Power up the 4P2 regulator
+ *
+ * This function drives the process of powering up the 4P2 linear regulator
+ * and switching the DC-DC converter input over to the 4P2 linear regulator.
+ */
+static void mxs_power_enable_4p2(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t vdddctrl, vddactrl, vddioctrl;
+	uint32_t tmp;
+
+	vdddctrl = readl(&power_regs->hw_power_vdddctrl);
+	vddactrl = readl(&power_regs->hw_power_vddactrl);
+	vddioctrl = readl(&power_regs->hw_power_vddioctrl);
+
+	setbits_le32(&power_regs->hw_power_vdddctrl,
+		POWER_VDDDCTRL_DISABLE_FET | POWER_VDDDCTRL_ENABLE_LINREG |
+		POWER_VDDDCTRL_PWDN_BRNOUT);
+
+	setbits_le32(&power_regs->hw_power_vddactrl,
+		POWER_VDDACTRL_DISABLE_FET | POWER_VDDACTRL_ENABLE_LINREG |
+		POWER_VDDACTRL_PWDN_BRNOUT);
+
+	setbits_le32(&power_regs->hw_power_vddioctrl,
+		POWER_VDDIOCTRL_DISABLE_FET | POWER_VDDIOCTRL_PWDN_BRNOUT);
+
+	mxs_power_init_4p2_params();
+	mxs_power_init_4p2_regulator();
+
+	/* Shutdown battery (none present) */
+	if (!mxs_is_batt_ready()) {
+		clrbits_le32(&power_regs->hw_power_dcdc4p2,
+				POWER_DCDC4P2_BO_MASK);
+		writel(POWER_CTRL_DCDC4P2_BO_IRQ,
+				&power_regs->hw_power_ctrl_clr);
+		writel(POWER_CTRL_ENIRQ_DCDC4P2_BO,
+				&power_regs->hw_power_ctrl_clr);
+	}
+
+	mxs_power_init_dcdc_4p2_source();
+
+	writel(vdddctrl, &power_regs->hw_power_vdddctrl);
+	mxs_early_delay(20);
+	writel(vddactrl, &power_regs->hw_power_vddactrl);
+	mxs_early_delay(20);
+	writel(vddioctrl, &power_regs->hw_power_vddioctrl);
+
+	/*
+	 * Check if FET is enabled on either powerout and if so,
+	 * disable load.
+	 */
+	tmp = 0;
+	tmp |= !(readl(&power_regs->hw_power_vdddctrl) &
+			POWER_VDDDCTRL_DISABLE_FET);
+	tmp |= !(readl(&power_regs->hw_power_vddactrl) &
+			POWER_VDDACTRL_DISABLE_FET);
+	tmp |= !(readl(&power_regs->hw_power_vddioctrl) &
+			POWER_VDDIOCTRL_DISABLE_FET);
+	if (tmp)
+		writel(POWER_CHARGE_ENABLE_LOAD,
+			&power_regs->hw_power_charge_clr);
+}
+
+/**
+ * mxs_boot_valid_5v() - Boot from 5V supply
+ *
+ * This function configures the power block to boot from valid 5V input.
+ * This is called only if the 5V is reliable and can properly supply the
+ * CPU. This function proceeds to configure the 4P2 converter to be supplied
+ * from the 5V input.
+ */
+static void mxs_boot_valid_5v(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/*
+	 * Use VBUSVALID level instead of VDD5V_GT_VDDIO level to trigger a 5V
+	 * disconnect event. FIXME
+	 */
+	writel(POWER_5VCTRL_VBUSVALID_5VDETECT,
+		&power_regs->hw_power_5vctrl_set);
+
+	/* Configure polarity to check for 5V disconnection. */
+	writel(POWER_CTRL_POLARITY_VBUSVALID |
+		POWER_CTRL_POLARITY_VDD5V_GT_VDDIO,
+		&power_regs->hw_power_ctrl_clr);
+
+	writel(POWER_CTRL_VBUS_VALID_IRQ | POWER_CTRL_VDD5V_GT_VDDIO_IRQ,
+		&power_regs->hw_power_ctrl_clr);
+
+	mxs_power_enable_4p2();
+}
+
+/**
+ * mxs_powerdown() - Shut down the system
+ *
+ * This function powers down the CPU completely.
+ */
+static void mxs_powerdown(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	writel(POWER_RESET_UNLOCK_KEY, &power_regs->hw_power_reset);
+	writel(POWER_RESET_UNLOCK_KEY | POWER_RESET_PWD_OFF,
+		&power_regs->hw_power_reset);
+}
+
+/**
+ * mxs_enable_battery_input() - Configure the power block to boot from battery input
+ *
+ * This function configures the power block to boot from the battery voltage
+ * supply.
+ */
+static void mxs_enable_battery_input(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	clrbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_PWDN_5VBRNOUT);
+	clrbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_ENABLE_DCDC);
+
+	clrbits_le32(&power_regs->hw_power_dcdc4p2,
+			POWER_DCDC4P2_ENABLE_DCDC | POWER_DCDC4P2_ENABLE_4P2);
+	writel(POWER_CHARGE_ENABLE_LOAD, &power_regs->hw_power_charge_clr);
+
+	/* 5V to battery handoff. */
+	setbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_DCDC_XFER);
+	mxs_early_delay(30);
+	clrbits_le32(&power_regs->hw_power_5vctrl, POWER_5VCTRL_DCDC_XFER);
+
+	writel(POWER_CTRL_ENIRQ_DCDC4P2_BO, &power_regs->hw_power_ctrl_clr);
+
+	clrsetbits_le32(&power_regs->hw_power_minpwr,
+			POWER_MINPWR_HALFFETS, POWER_MINPWR_DOUBLE_FETS);
+
+	mxs_power_set_linreg();
+
+	clrbits_le32(&power_regs->hw_power_vdddctrl,
+		POWER_VDDDCTRL_DISABLE_FET | POWER_VDDDCTRL_ENABLE_LINREG);
+
+	clrbits_le32(&power_regs->hw_power_vddactrl,
+		POWER_VDDACTRL_DISABLE_FET | POWER_VDDACTRL_ENABLE_LINREG);
+
+	clrbits_le32(&power_regs->hw_power_vddioctrl,
+		POWER_VDDIOCTRL_DISABLE_FET);
+
+	charger_4p2_disable();
+
+	setbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_ENABLE_DCDC);
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
+		0x8 << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
+
+	mxs_power_enable_4p2();
+}
+
+/**
+ * mxs_handle_5v_conflict() - Test if the 5V input is reliable
+ *
+ * This function tests if the 5V input can reliably supply the system. If it
+ * can, then proceed to configuring the system to boot from 5V source, otherwise
+ * try booting from battery supply. If we can not boot from battery supply
+ * either, shut down the system.
+ */
+static void mxs_handle_5v_conflict(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t tmp;
+
+	setbits_le32(&power_regs->hw_power_vddioctrl,
+			POWER_VDDIOCTRL_BO_OFFSET_MASK);
+
+	for (;;) {
+		tmp = readl(&power_regs->hw_power_sts);
+
+		if (tmp & POWER_STS_VDDIO_BO) {
+			/*
+			 * VDDIO has a brownout, then the VDD5V_GT_VDDIO becomes
+			 * unreliable
+			 */
+			mxs_powerdown();
+			break;
+		}
+
+		if (tmp & POWER_STS_VDD5V_GT_VDDIO) {
+			mxs_boot_valid_5v();
+			break;
+		} else {
+			mxs_powerdown();
+			break;
+		}
+
+		if (tmp & POWER_STS_PSWITCH_MASK) {
+			mxs_enable_battery_input();
+			break;
+		}
+	}
+}
+
+/**
+ * mxs_5v_boot() - Configure the power block to boot from 5V input
+ *
+ * This function handles configuration of the power block when supplied by
+ * a 5V input.
+ */
+static void mxs_5v_boot(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/*
+	 * NOTE: In original IMX-Bootlets, this also checks for VBUSVALID,
+	 * but their implementation always returns 1 so we omit it here.
+	 */
+	if (readl(&power_regs->hw_power_sts) & POWER_STS_VDD5V_GT_VDDIO) {
+		mxs_boot_valid_5v();
+		return;
+	}
+
+	mxs_early_delay(1000);
+	if (readl(&power_regs->hw_power_sts) & POWER_STS_VDD5V_GT_VDDIO) {
+		mxs_boot_valid_5v();
+		return;
+	}
+
+	mxs_handle_5v_conflict();
+}
+
+/**
+ * mxs_init_batt_bo() - Configure battery brownout threshold
+ *
+ * This function configures the battery input brownout threshold. The value
+ * at which the battery brownout happens is configured to 3.0V in the code.
+ */
+static void mxs_init_batt_bo(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	/* Brownout at 3V */
+	clrsetbits_le32(&power_regs->hw_power_battmonitor,
+		POWER_BATTMONITOR_BRWNOUT_LVL_MASK,
+		15 << POWER_BATTMONITOR_BRWNOUT_LVL_OFFSET);
+
+	writel(POWER_CTRL_BATT_BO_IRQ, &power_regs->hw_power_ctrl_clr);
+	writel(POWER_CTRL_ENIRQ_BATT_BO, &power_regs->hw_power_ctrl_clr);
+}
+
+/**
+ * mxs_switch_vddd_to_dcdc_source() - Switch VDDD rail to DC-DC converter
+ *
+ * This function turns off the VDDD linear regulator and therefore makes
+ * the VDDD rail be supplied only by the DC-DC converter.
+ */
+static void mxs_switch_vddd_to_dcdc_source(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	clrsetbits_le32(&power_regs->hw_power_vdddctrl,
+		POWER_VDDDCTRL_LINREG_OFFSET_MASK,
+		POWER_VDDDCTRL_LINREG_OFFSET_1STEPS_BELOW);
+
+	clrbits_le32(&power_regs->hw_power_vdddctrl,
+		POWER_VDDDCTRL_DISABLE_FET | POWER_VDDDCTRL_ENABLE_LINREG |
+		POWER_VDDDCTRL_DISABLE_STEPPING);
+}
+
+/**
+ * mxs_power_configure_power_source() - Configure power block source
+ *
+ * This function is the core of the power configuration logic. The function
+ * selects the power block input source and configures the whole power block
+ * accordingly. After the configuration is complete and the system is stable
+ * again, the function switches the CPU clock source back to PLL. Finally,
+ * the function switches the voltage rails to DC-DC converter.
+ */
+static void mxs_power_configure_power_source(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	struct mxs_lradc_regs *lradc_regs =
+		(struct mxs_lradc_regs *)IMX_LRADC_BASE;
+
+	if (!(readl(&power_regs->hw_power_sts) & POWER_STS_VDD5V_GT_VDDIO)) {
+		/* 5V not detected, booting from battery. */
+		mxs_enable_battery_input();
+		return;
+	}
+
+	if (mxs_is_batt_ready()) {
+		/* 5V source detected, good battery detected. */
+		mxs_enable_battery_input();
+		return;
+	}
+
+	if (!mxs_is_batt_good()) {
+		/* 5V source detected, bad battery detected. */
+		writel(LRADC_CONVERSION_AUTOMATIC,
+			&lradc_regs->hw_lradc_conversion_clr);
+		clrbits_le32(&power_regs->hw_power_battmonitor,
+			POWER_BATTMONITOR_BATT_VAL_MASK);
+	}
+	mxs_5v_boot();
+}
+
+/**
+ * mxs_enable_output_rail_protection() - Enable power rail protection
+ *
+ * This function enables overload protection on the power rails. This is
+ * triggered if the power rails' voltage drops rapidly due to overload and
+ * in such case, the supply to the powerrail is cut-off, protecting the
+ * CPU from damage. Note that under such condition, the system will likely
+ * crash or misbehave.
+ */
+static void mxs_enable_output_rail_protection(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
+		POWER_CTRL_VDDIO_BO_IRQ, &power_regs->hw_power_ctrl_clr);
+
+	setbits_le32(&power_regs->hw_power_vdddctrl,
+			POWER_VDDDCTRL_PWDN_BRNOUT);
+
+	setbits_le32(&power_regs->hw_power_vddactrl,
+			POWER_VDDACTRL_PWDN_BRNOUT);
+
+	setbits_le32(&power_regs->hw_power_vddioctrl,
+			POWER_VDDIOCTRL_PWDN_BRNOUT);
+}
+
+/**
+ * mxs_get_vddio_power_source_off() - Get VDDIO rail power source
+ *
+ * This function tests if the VDDIO rail is supplied by linear regulator
+ * or by the DC-DC converter. Returns 1 if powered by linear regulator,
+ * returns 0 if powered by the DC-DC converter.
+ */
+static int mxs_get_vddio_power_source_off(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t tmp;
+
+	if (readl(&power_regs->hw_power_sts) & POWER_STS_VDD5V_GT_VDDIO) {
+		tmp = readl(&power_regs->hw_power_vddioctrl);
+		if (tmp & POWER_VDDIOCTRL_DISABLE_FET) {
+			if ((tmp & POWER_VDDIOCTRL_LINREG_OFFSET_MASK) ==
+				POWER_VDDIOCTRL_LINREG_OFFSET_0STEPS) {
+				return 1;
+			}
+		}
+
+		if (!(readl(&power_regs->hw_power_5vctrl) &
+			POWER_5VCTRL_ENABLE_DCDC)) {
+			if ((tmp & POWER_VDDIOCTRL_LINREG_OFFSET_MASK) ==
+				POWER_VDDIOCTRL_LINREG_OFFSET_0STEPS) {
+				return 1;
+			}
+		}
+	}
+
+	return 0;
+
+}
+
+/**
+ * mxs_get_vddd_power_source_off() - Get VDDD rail power source
+ *
+ * This function tests if the VDDD rail is supplied by linear regulator
+ * or by the DC-DC converter. Returns 1 if powered by linear regulator,
+ * returns 0 if powered by the DC-DC converter.
+ */
+static int mxs_get_vddd_power_source_off(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t tmp;
+
+	tmp = readl(&power_regs->hw_power_vdddctrl);
+	if (tmp & POWER_VDDDCTRL_DISABLE_FET) {
+		if ((tmp & POWER_VDDDCTRL_LINREG_OFFSET_MASK) ==
+			POWER_VDDDCTRL_LINREG_OFFSET_0STEPS) {
+			return 1;
+		}
+	}
+
+	if (readl(&power_regs->hw_power_sts) & POWER_STS_VDD5V_GT_VDDIO) {
+		if (!(readl(&power_regs->hw_power_5vctrl) &
+			POWER_5VCTRL_ENABLE_DCDC)) {
+			return 1;
+		}
+	}
+
+	if (!(tmp & POWER_VDDDCTRL_ENABLE_LINREG)) {
+		if ((tmp & POWER_VDDDCTRL_LINREG_OFFSET_MASK) ==
+			POWER_VDDDCTRL_LINREG_OFFSET_1STEPS_BELOW) {
+			return 1;
+		}
+	}
+
+	return 0;
+}
+
+struct mxs_vddx_cfg {
+	uint32_t		*reg;
+	uint8_t			step_mV;
+	uint16_t		lowest_mV;
+	int			(*powered_by_linreg)(void);
+	uint32_t		trg_mask;
+	uint32_t		bo_irq;
+	uint32_t		bo_enirq;
+	uint32_t		bo_offset_mask;
+	uint32_t		bo_offset_offset;
+};
+
+static const struct mxs_vddx_cfg mx23_vddio_cfg = {
+	.reg			= &(((struct mxs_power_regs *)IMX_POWER_BASE)->
+					hw_power_vddioctrl),
+	.step_mV		= 25,
+	.lowest_mV		= 2800,
+	.powered_by_linreg	= mxs_get_vddio_power_source_off,
+	.trg_mask		= POWER_VDDIOCTRL_TRG_MASK,
+	.bo_irq			= POWER_CTRL_VDDIO_BO_IRQ,
+	.bo_enirq		= POWER_CTRL_ENIRQ_VDDIO_BO,
+	.bo_offset_mask		= POWER_VDDIOCTRL_BO_OFFSET_MASK,
+	.bo_offset_offset	= POWER_VDDIOCTRL_BO_OFFSET_OFFSET,
+};
+
+static const struct mxs_vddx_cfg mx28_vddio_cfg = {
+	.reg			= &(((struct mxs_power_regs *)IMX_POWER_BASE)->
+					hw_power_vddioctrl),
+	.step_mV		= 50,
+	.lowest_mV		= 2800,
+	.powered_by_linreg	= mxs_get_vddio_power_source_off,
+	.trg_mask		= POWER_VDDIOCTRL_TRG_MASK,
+	.bo_irq			= POWER_CTRL_VDDIO_BO_IRQ,
+	.bo_enirq		= POWER_CTRL_ENIRQ_VDDIO_BO,
+	.bo_offset_mask		= POWER_VDDIOCTRL_BO_OFFSET_MASK,
+	.bo_offset_offset	= POWER_VDDIOCTRL_BO_OFFSET_OFFSET,
+};
+
+static const struct mxs_vddx_cfg mxs_vddd_cfg = {
+	.reg			= &(((struct mxs_power_regs *)IMX_POWER_BASE)->
+					hw_power_vdddctrl),
+	.step_mV		= 25,
+	.lowest_mV		= 800,
+	.powered_by_linreg	= mxs_get_vddd_power_source_off,
+	.trg_mask		= POWER_VDDDCTRL_TRG_MASK,
+	.bo_irq			= POWER_CTRL_VDDD_BO_IRQ,
+	.bo_enirq		= POWER_CTRL_ENIRQ_VDDD_BO,
+	.bo_offset_mask		= POWER_VDDDCTRL_BO_OFFSET_MASK,
+	.bo_offset_offset	= POWER_VDDDCTRL_BO_OFFSET_OFFSET,
+};
+
+static const struct mxs_vddx_cfg mxs_vddmem_cfg = {
+	.reg			= &(((struct mxs_power_regs *)IMX_POWER_BASE)->
+					hw_power_vddmemctrl),
+	.step_mV		= 50,
+	.lowest_mV		= 1700,
+	.powered_by_linreg	= NULL,
+	.trg_mask		= POWER_VDDMEMCTRL_TRG_MASK,
+	.bo_irq			= 0,
+	.bo_enirq		= 0,
+	.bo_offset_mask		= 0,
+	.bo_offset_offset	= 0,
+};
+
+/**
+ * mxs_power_set_vddx() - Configure voltage on DC-DC converter rail
+ * @cfg:		Configuration data of the DC-DC converter rail
+ * @new_target:		New target voltage of the DC-DC converter rail
+ * @new_brownout:	New brownout trigger voltage
+ *
+ * This function configures the output voltage on the DC-DC converter rail.
+ * The rail is selected by the @cfg argument. The new voltage target is
+ * selected by the @new_target and the voltage is specified in mV. The
+ * new brownout value is selected by the @new_brownout argument and the
+ * value is also in mV.
+ */
+static void mxs_power_set_vddx(const struct mxs_vddx_cfg *cfg,
+				uint32_t new_target, uint32_t new_brownout)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t cur_target, diff, bo_int = 0;
+	uint32_t powered_by_linreg = 0;
+	int adjust_up, tmp;
+
+	new_brownout = DIV_ROUND_CLOSEST(new_target - new_brownout, cfg->step_mV);
+
+	cur_target = readl(cfg->reg);
+	cur_target &= cfg->trg_mask;
+	cur_target *= cfg->step_mV;
+	cur_target += cfg->lowest_mV;
+
+	adjust_up = new_target > cur_target;
+	if (cfg->powered_by_linreg)
+		powered_by_linreg = cfg->powered_by_linreg();
+
+	if (adjust_up && cfg->bo_irq) {
+		if (powered_by_linreg) {
+			bo_int = readl(cfg->reg);
+			clrbits_le32(cfg->reg, cfg->bo_enirq);
+		}
+		setbits_le32(cfg->reg, cfg->bo_offset_mask);
+	}
+
+	do {
+		if (abs(new_target - cur_target) > 100) {
+			if (adjust_up)
+				diff = cur_target + 100;
+			else
+				diff = cur_target - 100;
+		} else {
+			diff = new_target;
+		}
+
+		diff -= cfg->lowest_mV;
+		diff /= cfg->step_mV;
+
+		clrsetbits_le32(cfg->reg, cfg->trg_mask, diff);
+
+		if (powered_by_linreg ||
+			(readl(&power_regs->hw_power_sts) &
+				POWER_STS_VDD5V_GT_VDDIO))
+			mxs_early_delay(500);
+		else {
+			for (;;) {
+				tmp = readl(&power_regs->hw_power_sts);
+				if (tmp & POWER_STS_DC_OK)
+					break;
+			}
+		}
+
+		cur_target = readl(cfg->reg);
+		cur_target &= cfg->trg_mask;
+		cur_target *= cfg->step_mV;
+		cur_target += cfg->lowest_mV;
+	} while (new_target > cur_target);
+
+	if (cfg->bo_irq) {
+		if (adjust_up && powered_by_linreg) {
+			writel(cfg->bo_irq, &power_regs->hw_power_ctrl_clr);
+			if (bo_int & cfg->bo_enirq)
+				setbits_le32(cfg->reg, cfg->bo_enirq);
+		}
+
+		clrsetbits_le32(cfg->reg, cfg->bo_offset_mask,
+				new_brownout << cfg->bo_offset_offset);
+	}
+}
+
+/**
+ * mxs_setup_batt_detect() - Start the battery voltage measurement logic
+ *
+ * This function starts and configures the LRADC block. This allows the
+ * power initialization code to measure battery voltage and based on this
+ * knowledge, decide whether to boot at all, boot from battery or boot
+ * from 5V input.
+ */
+static void mxs_setup_batt_detect(void)
+{
+	mxs_lradc_init();
+	mxs_lradc_enable_batt_measurement();
+	mxs_early_delay(10);
+}
+
+/**
+ * mx23_ungate_power() - Ungate the POWER block
+ *
+ * This function ungates clock to the power block. In case the power block
+ * was still gated at this point, it will not be possible to configure the
+ * block and therefore the power initialization would fail. This function
+ * is only needed on i.MX233, on i.MX28 the power block is always ungated.
+ */
+static void mx23_ungate_power(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	writel(MX23_POWER_CTRL_CLKGATE, &power_regs->hw_power_ctrl_clr);
+}
+
+/**
+ * mx23_power_init() - The power block init main function
+ *
+ * This function calls all the power block initialization functions in
+ * proper sequence to start the power block.
+ */
+static void __mx23_power_init(int has_battery)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	mx23_ungate_power();
+
+	mxs_power_clock2xtal();
+	mxs_power_set_auto_restart();
+	mxs_power_set_linreg();
+	mxs_power_setup_5v_detect();
+
+	mxs_setup_batt_detect();
+
+	mxs_src_power_init();
+
+	if (has_battery)
+		mxs_power_configure_power_source();
+	else
+		mxs_enable_battery_input();
+
+	mxs_power_clock2pll();
+
+	mxs_init_batt_bo();
+
+	mxs_switch_vddd_to_dcdc_source();
+
+	/* Fire up the VDDMEM LinReg now that we're all set. */
+	writel(POWER_VDDMEMCTRL_ENABLE_LINREG | POWER_VDDMEMCTRL_ENABLE_ILIMIT,
+		&power_regs->hw_power_vddmemctrl);
+
+	mxs_enable_output_rail_protection();
+
+	mxs_power_set_vddx(&mx23_vddio_cfg, 3300, 3150);
+	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1000);
+	mxs_power_set_vddx(&mxs_vddd_cfg, 1350, 1200);
+	mxs_power_set_vddx(&mxs_vddmem_cfg, 2500, 1700);
+
+	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
+		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
+		POWER_CTRL_VBUS_VALID_IRQ | POWER_CTRL_BATT_BO_IRQ |
+		POWER_CTRL_DCDC4P2_BO_IRQ, &power_regs->hw_power_ctrl_clr);
+
+	writel(POWER_5VCTRL_PWDN_5VBRNOUT, &power_regs->hw_power_5vctrl_set);
+
+	mxs_early_delay(1000);
+}
+
+void mx23_power_init(void)
+{
+	__mx23_power_init(1);
+}
+
+void mx23_power_init_battery_input(void)
+{
+	__mx23_power_init(0);
+}
+
+/**
+ * mx28_power_init() - The power block init main function
+ *
+ * This function calls all the power block initialization functions in
+ * proper sequence to start the power block.
+ */
+static void __mx28_power_init(int has_battery)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	mxs_power_clock2xtal();
+	mxs_power_set_auto_restart();
+	mxs_power_set_linreg();
+	mxs_power_setup_5v_detect();
+
+	mxs_setup_batt_detect();
+
+	mxs_src_power_init();
+
+	if (has_battery)
+		mxs_power_configure_power_source();
+	else
+		mxs_enable_battery_input();
+
+	mxs_power_clock2pll();
+
+	mxs_init_batt_bo();
+
+	mxs_switch_vddd_to_dcdc_source();
+
+	mxs_enable_output_rail_protection();
+
+	mxs_power_set_vddx(&mx28_vddio_cfg, 3300, 3150);
+	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1000);
+	mxs_power_set_vddx(&mxs_vddd_cfg, 1350, 1200);
+
+	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
+		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
+		POWER_CTRL_VBUS_VALID_IRQ | POWER_CTRL_BATT_BO_IRQ |
+		POWER_CTRL_DCDC4P2_BO_IRQ, &power_regs->hw_power_ctrl_clr);
+
+	writel(POWER_5VCTRL_PWDN_5VBRNOUT, &power_regs->hw_power_5vctrl_set);
+
+	mxs_early_delay(1000);
+}
+
+void mx28_power_init(void)
+{
+	__mx28_power_init(1);
+}
+
+void mx28_power_init_battery_input(void)
+{
+	__mx28_power_init(0);
+}
+
+/**
+ * mxs_power_wait_pswitch() - Wait for power switch to be pressed
+ *
+ * This function waits until the power-switch was pressed to start booting
+ * the board.
+ */
+void mxs_power_wait_pswitch(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	while (!(readl(&power_regs->hw_power_sts) & POWER_STS_PSWITCH_MASK))
+		;
+}
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
