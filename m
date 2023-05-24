Delivery-date: Thu, 25 May 2023 01:45:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yB6-00Crlp-B1
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAu-0007d7-Q8
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d+rpXtiln+DR086qxkdIpxx4Pwe7/DZWHjsEKZjGed4=; b=NR53pd/65j5haV0xdgSy3JDE09
	4eSd8qM4hSnJS3ubi5voZhv430kaSu6536kp8OyLKvNuEAVP0iXPT0bxGX7QlkkNDo0zV8yUyQ/xp
	tGpbYk/4Q7ftchUonKzvgGQ1F6xuX8F3035TsbMIn58ep8egNYBPNXekHS+Re0tL01jvAJNt6n+sH
	BGyrOoAkKa6RO5xwR3JzyhK1kXJgzwlYY2/lR4k0yxAD8rqd2V/bL973GebuAczErxayaq1qtgdnO
	zXO9oxKU1vWZMtk05EziokGJ1XL2b2Vsr8WknVaEytKXsvMqMm7owHvfiwF+TejLmfV51JUybLJ0/
	HWdp7rhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y9D-00EzUU-0J;
	Wed, 24 May 2023 23:44:03 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8x-00EzKS-1v
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:55 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 8ABAE1C000E;
	Wed, 24 May 2023 23:43:40 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:25 +0200
Message-Id: <20230524234328.82741-11-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 10/13] ARM: sunxi: Add sun50i SDRAM init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adapted from u-boot.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/arm/mach-sunxi/Makefile                 |    2 +
 arch/arm/mach-sunxi/clock_sun6i.h            |  540 ++++++++++
 arch/arm/mach-sunxi/ddr3_1333.c              |   85 ++
 arch/arm/mach-sunxi/dram_sunxi_dw.h          |  241 +++++
 arch/arm/mach-sunxi/lpddr3_stock.c           |   81 ++
 arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c   |    9 +
 arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c |    9 +
 arch/arm/mach-sunxi/sun50i-sdram.c           |  903 ++++++++++++++++
 arch/arm/mach-sunxi/sunxi-sdram.c            | 1007 ++++++++++++++++++
 include/mach/sunxi/init.h                    |    3 +
 10 files changed, 2880 insertions(+)
 create mode 100644 arch/arm/mach-sunxi/clock_sun6i.h
 create mode 100644 arch/arm/mach-sunxi/ddr3_1333.c
 create mode 100644 arch/arm/mach-sunxi/dram_sunxi_dw.h
 create mode 100644 arch/arm/mach-sunxi/lpddr3_stock.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-sdram.c
 create mode 100644 arch/arm/mach-sunxi/sunxi-sdram.c

diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
index d678973ca2..0808a21605 100644
--- a/arch/arm/mach-sunxi/Makefile
+++ b/arch/arm/mach-sunxi/Makefile
@@ -1,2 +1,4 @@
 obj-y += sunxi.o
 lwl-y += cpu_init.o
+lwl-y += sun50i-a64-ddr3-init.o
+lwl-y += sun50i-a64-lpddr3-init.o
diff --git a/arch/arm/mach-sunxi/clock_sun6i.h b/arch/arm/mach-sunxi/clock_sun6i.h
new file mode 100644
index 0000000000..b9893f5a77
--- /dev/null
+++ b/arch/arm/mach-sunxi/clock_sun6i.h
@@ -0,0 +1,540 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * sun6i clock register definitions
+ *
+ * (C) Copyright 2007-2011
+ * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
+ * Tom Cubie <tangliang@allwinnertech.com>
+ */
+
+#ifndef _SUNXI_CLOCK_SUN6I_H
+#define _SUNXI_CLOCK_SUN6I_H
+
+struct sunxi_ccm_reg {
+	u32 pll1_cfg;		/* 0x00 pll1 control */
+	u32 reserved0;
+	u32 pll2_cfg;		/* 0x08 pll2 control */
+	u32 reserved1;
+	u32 pll3_cfg;		/* 0x10 pll3 control */
+	u32 reserved2;
+	u32 pll4_cfg;		/* 0x18 pll4 control */
+	u32 reserved3;
+	u32 pll5_cfg;		/* 0x20 pll5 control */
+	u32 reserved4;
+	u32 pll6_cfg;		/* 0x28 pll6 control */
+	u32 reserved5;
+	u32 pll7_cfg;		/* 0x30 pll7 control */
+	u32 sata_pll_cfg;	/* 0x34 SATA pll control (R40 only) */
+	u32 pll8_cfg;		/* 0x38 pll8 control */
+	u32 reserved7;
+	u32 mipi_pll_cfg;	/* 0x40 MIPI pll control */
+	u32 pll9_cfg;		/* 0x44 pll9 control */
+	u32 pll10_cfg;		/* 0x48 pll10 control */
+	u32 pll11_cfg;		/* 0x4c pll11 (ddr1) control (A33 only) */
+	u32 cpu_axi_cfg;	/* 0x50 CPU/AXI divide ratio */
+	u32 ahb1_apb1_div;	/* 0x54 AHB1/APB1 divide ratio */
+	u32 apb2_div;		/* 0x58 APB2 divide ratio */
+	u32 axi_gate;		/* 0x5c axi module clock gating */
+	u32 ahb_gate0;		/* 0x60 ahb module clock gating 0 */
+	u32 ahb_gate1;		/* 0x64 ahb module clock gating 1 */
+	u32 apb1_gate;		/* 0x68 apb1 module clock gating */
+	u32 apb2_gate;		/* 0x6c apb2 module clock gating */
+	u32 bus_gate4;          /* 0x70 gate 4 module clock gating */
+	u8 res3[0xc];
+	u32 nand0_clk_cfg;	/* 0x80 nand0 clock control */
+	u32 nand1_clk_cfg;	/* 0x84 nand1 clock control */
+	u32 sd0_clk_cfg;	/* 0x88 sd0 clock control */
+	u32 sd1_clk_cfg;	/* 0x8c sd1 clock control */
+	u32 sd2_clk_cfg;	/* 0x90 sd2 clock control */
+	u32 sd3_clk_cfg;	/* 0x94 sd3 clock control */
+	u32 ts_clk_cfg;		/* 0x98 transport stream clock control */
+	u32 ss_clk_cfg;		/* 0x9c security system clock control */
+	u32 spi0_clk_cfg;	/* 0xa0 spi0 clock control */
+	u32 spi1_clk_cfg;	/* 0xa4 spi1 clock control */
+	u32 spi2_clk_cfg;	/* 0xa8 spi2 clock control */
+	u32 spi3_clk_cfg;	/* 0xac spi3 clock control */
+	u32 i2s0_clk_cfg;	/* 0xb0 I2S0 clock control*/
+	u32 i2s1_clk_cfg;	/* 0xb4 I2S1 clock control */
+	u32 reserved10[2];
+	u32 spdif_clk_cfg;	/* 0xc0 SPDIF clock control */
+	u32 reserved11;
+	u32 sata_clk_cfg;	/* 0xc8 SATA clock control (R40 only) */
+	u32 usb_clk_cfg;	/* 0xcc USB clock control */
+#ifdef CONFIG_MACH_SUN8I_R40
+	u32 cir0_clk_cfg;	/* 0xd0 CIR0 clock control (R40 only) */
+#else
+	u32 gmac_clk_cfg;	/* 0xd0 GMAC clock control (not for R40) */
+#endif
+	u32 reserved12[7];
+	u32 mdfs_clk_cfg;	/* 0xf0 MDFS clock control */
+	u32 dram_clk_cfg;	/* 0xf4 DRAM configuration clock control */
+	u32 dram_pll_cfg;	/* 0xf8 PLL_DDR cfg register, A33 only */
+	u32 mbus_reset;		/* 0xfc MBUS reset control, A33 only */
+	u32 dram_clk_gate;	/* 0x100 DRAM module gating */
+#ifdef CONFIG_SUNXI_DE2
+	u32 de_clk_cfg;		/* 0x104 DE module clock */
+#else
+	u32 be0_clk_cfg;	/* 0x104 BE0 module clock */
+#endif
+	u32 be1_clk_cfg;	/* 0x108 BE1 module clock */
+	u32 fe0_clk_cfg;	/* 0x10c FE0 module clock */
+	u32 fe1_clk_cfg;	/* 0x110 FE1 module clock */
+	u32 mp_clk_cfg;		/* 0x114 MP module clock */
+#ifdef CONFIG_SUNXI_DE2
+	u32 lcd0_clk_cfg;	/* 0x118 LCD0 module clock */
+	u32 lcd1_clk_cfg;	/* 0x11c LCD1 module clock */
+#else
+	u32 lcd0_ch0_clk_cfg;	/* 0x118 LCD0 CH0 module clock */
+	u32 lcd1_ch0_clk_cfg;	/* 0x11c LCD1 CH0 module clock */
+#endif
+	u32 tve_clk_cfg;	/* 0x120 H3/H5 TVE module clock */
+	u32 reserved14[2];
+	u32 lcd0_ch1_clk_cfg;	/* 0x12c LCD0 CH1 module clock */
+	u32 lcd1_ch1_clk_cfg;	/* 0x130 LCD1 CH1 module clock */
+	u32 csi0_clk_cfg;	/* 0x134 CSI0 module clock */
+	u32 csi1_clk_cfg;	/* 0x138 CSI1 module clock */
+	u32 ve_clk_cfg;		/* 0x13c VE module clock */
+	u32 adda_clk_cfg;	/* 0x140 ADDA module clock */
+	u32 avs_clk_cfg;	/* 0x144 AVS module clock */
+	u32 dmic_clk_cfg;	/* 0x148 Digital Mic module clock*/
+	u32 reserved15;
+	u32 hdmi_clk_cfg;	/* 0x150 HDMI module clock */
+#ifdef CONFIG_SUNXI_DE2
+	u32 hdmi_slow_clk_cfg;	/* 0x154 HDMI slow module clock */
+#else
+	u32 ps_clk_cfg;		/* 0x154 PS module clock */
+#endif
+	u32 mtc_clk_cfg;	/* 0x158 MTC module clock */
+	u32 mbus0_clk_cfg;	/* 0x15c MBUS0 module clock */
+	u32 mbus1_clk_cfg;	/* 0x160 MBUS1 module clock */
+#ifdef CONFIG_MACH_SUN8I_R40
+	u32 gmac_clk_cfg;	/* 0x164 GMAC clock control (R40 only) */
+#else
+	u32 reserved16;
+#endif
+	u32 mipi_dsi_clk_cfg;	/* 0x168 MIPI DSI clock control */
+	u32 mipi_csi_clk_cfg;	/* 0x16c MIPI CSI clock control */
+	u32 reserved17[4];
+	u32 iep_drc0_clk_cfg;	/* 0x180 IEP DRC0 module clock */
+	u32 iep_drc1_clk_cfg;	/* 0x184 IEP DRC1 module clock */
+	u32 iep_deu0_clk_cfg;	/* 0x188 IEP DEU0 module clock */
+	u32 iep_deu1_clk_cfg;	/* 0x18c IEP DEU1 module clock */
+	u32 reserved18[4];
+	u32 gpu_core_clk_cfg;	/* 0x1a0 GPU core clock config */
+	u32 gpu_mem_clk_cfg;	/* 0x1a4 GPU memory clock config */
+	u32 gpu_hyd_clk_cfg;	/* 0x1a0 GPU HYD clock config */
+	u32 reserved19[21];
+	u32 pll_lock;		/* 0x200 PLL Lock Time */
+	u32 pll1_lock;		/* 0x204 PLL1 Lock Time */
+	u32 reserved20[6];
+	u32 pll1_bias_cfg;	/* 0x220 PLL1 Bias config */
+	u32 pll2_bias_cfg;	/* 0x224 PLL2 Bias config */
+	u32 pll3_bias_cfg;	/* 0x228 PLL3 Bias config */
+	u32 pll4_bias_cfg;	/* 0x22c PLL4 Bias config */
+	u32 pll5_bias_cfg;	/* 0x230 PLL5 Bias config */
+	u32 pll6_bias_cfg;	/* 0x234 PLL6 Bias config */
+	u32 pll7_bias_cfg;	/* 0x238 PLL7 Bias config */
+	u32 pll8_bias_cfg;	/* 0x23c PLL8 Bias config */
+	u32 mipi_bias_cfg;	/* 0x240 MIPI Bias config */
+	u32 pll9_bias_cfg;	/* 0x244 PLL9 Bias config */
+	u32 pll10_bias_cfg;	/* 0x248 PLL10 Bias config */
+	u32 reserved21[5];
+	u32 pll5_tuning_cfg;	/* 0x260 PLL5 Tuning config */
+	u32 reserved21_5[7];
+	u32 pll1_pattern_cfg;	/* 0x280 PLL1 Pattern config */
+	u32 pll2_pattern_cfg;	/* 0x284 PLL2 Pattern config */
+	u32 pll3_pattern_cfg;	/* 0x288 PLL3 Pattern config */
+	u32 pll4_pattern_cfg;	/* 0x28c PLL4 Pattern config */
+	u32 pll5_pattern_cfg;	/* 0x290 PLL5 Pattern config */
+	u32 pll6_pattern_cfg;	/* 0x294 PLL6 Pattern config */
+	u32 pll7_pattern_cfg;	/* 0x298 PLL7 Pattern config */
+	u32 pll8_pattern_cfg;	/* 0x29c PLL8 Pattern config */
+	u32 mipi_pattern_cfg;	/* 0x2a0 MIPI Pattern config */
+	u32 pll9_pattern_cfg;	/* 0x2a4 PLL9 Pattern config */
+	u32 pll10_pattern_cfg;	/* 0x2a8 PLL10 Pattern config */
+	u32 pll11_pattern_cfg0; /* 0x2ac PLL11 Pattern config0, A33 only */
+	u32 pll11_pattern_cfg1; /* 0x2b0 PLL11 Pattern config0, A33 only */
+	u32 reserved22[3];
+	u32 ahb_reset0_cfg;	/* 0x2c0 AHB1 Reset 0 config */
+	u32 ahb_reset1_cfg;	/* 0x2c4 AHB1 Reset 1 config */
+	u32 ahb_reset2_cfg;	/* 0x2c8 AHB1 Reset 2 config */
+	u32 reserved23;
+	u32 apb1_reset_cfg;	/* 0x2d0 APB1 Reset config */
+	u32 reserved24;
+	u32 apb2_reset_cfg;	/* 0x2d8 APB2 Reset config */
+	u32 reserved25[5];
+	u32 ccu_sec_switch;	/* 0x2f0 CCU Security Switch, H3 only */
+	u32 reserved26[11];
+	u32 pll_lock_ctrl;	/* 0x320 PLL lock control, R40 only */
+};
+
+/* apb2 bit field */
+#define APB2_CLK_SRC_LOSC		(0x0 << 24)
+#define APB2_CLK_SRC_OSC24M		(0x1 << 24)
+#define APB2_CLK_SRC_PLL6		(0x2 << 24)
+#define APB2_CLK_SRC_MASK		(0x3 << 24)
+#define APB2_CLK_RATE_N_1		(0x0 << 16)
+#define APB2_CLK_RATE_N_2		(0x1 << 16)
+#define APB2_CLK_RATE_N_4		(0x2 << 16)
+#define APB2_CLK_RATE_N_8		(0x3 << 16)
+#define APB2_CLK_RATE_N_MASK		(3 << 16)
+#define APB2_CLK_RATE_M(m)		(((m)-1) << 0)
+#define APB2_CLK_RATE_M_MASK            (0x1f << 0)
+
+/* apb2 gate field */
+#define APB2_GATE_UART_SHIFT	(16)
+#define APB2_GATE_UART_MASK		(0xff << APB2_GATE_UART_SHIFT)
+#define APB2_GATE_TWI_SHIFT	(0)
+#define APB2_GATE_TWI_MASK		(0xf << APB2_GATE_TWI_SHIFT)
+
+/* cpu_axi_cfg bits */
+#define AXI_DIV_SHIFT			0
+#define ATB_DIV_SHIFT			8
+#define CPU_CLK_SRC_SHIFT		16
+
+#define AXI_DIV_1			0
+#define AXI_DIV_2			1
+#define AXI_DIV_3			2
+#define AXI_DIV_4			3
+#define ATB_DIV_1			0
+#define ATB_DIV_2			1
+#define ATB_DIV_4			2
+#define AHB_DIV_1			0
+#define CPU_CLK_SRC_OSC24M		1
+#define CPU_CLK_SRC_PLL1		2
+
+#define CCM_PLL1_CTRL_M(n)		((((n) - 1) & 0x3) << 0)
+#define CCM_PLL1_CTRL_K(n)		((((n) - 1) & 0x3) << 4)
+#define CCM_PLL1_CTRL_N(n)		((((n) - 1) & 0x1f) << 8)
+#define CCM_PLL1_CTRL_P(n)		(((n) & 0x3) << 16)
+#define CCM_PLL1_CTRL_EN		(0x1 << 31)
+#define CCM_PLL1_CTRL_LOCK		(0x1 << 28)
+
+#define CCM_PLL3_CTRL_M_SHIFT		0
+#define CCM_PLL3_CTRL_M_MASK		(0xf << CCM_PLL3_CTRL_M_SHIFT)
+#define CCM_PLL3_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_PLL3_CTRL_N_SHIFT		8
+#define CCM_PLL3_CTRL_N_MASK		(0x7f << CCM_PLL3_CTRL_N_SHIFT)
+#define CCM_PLL3_CTRL_N(n)		((((n) - 1) & 0x7f) << 8)
+#define CCM_PLL3_CTRL_INTEGER_MODE	(0x1 << 24)
+#define CCM_PLL3_CTRL_LOCK		(0x1 << 28)
+#define CCM_PLL3_CTRL_EN		(0x1 << 31)
+
+#define CCM_PLL5_CTRL_M(n)		((((n) - 1) & 0x3) << 0)
+#define CCM_PLL5_CTRL_K(n)		((((n) - 1) & 0x3) << 4)
+#define CCM_PLL5_CTRL_N(n)		((((n) - 1) & 0x1f) << 8)
+#define CCM_PLL5_CTRL_UPD		(0x1 << 20)
+#define CCM_PLL5_CTRL_SIGMA_DELTA_EN	(0x1 << 24)
+#define CCM_PLL5_CTRL_EN		(0x1 << 31)
+
+#define PLL6_CFG_DEFAULT		0x90041811 /* 600 MHz */
+
+#define CCM_PLL6_CTRL_N_SHIFT		8
+#define CCM_PLL6_CTRL_N_MASK		(0x1f << CCM_PLL6_CTRL_N_SHIFT)
+#define CCM_PLL6_CTRL_K_SHIFT		4
+#define CCM_PLL6_CTRL_K_MASK		(0x3 << CCM_PLL6_CTRL_K_SHIFT)
+#define CCM_PLL6_CTRL_LOCK		(1 << 28)
+
+#define CCM_SATA_PLL_DEFAULT		0x90005811 /* 100 MHz */
+
+#define CCM_MIPI_PLL_CTRL_M_SHIFT	0
+#define CCM_MIPI_PLL_CTRL_M_MASK	(0xf << CCM_MIPI_PLL_CTRL_M_SHIFT)
+#define CCM_MIPI_PLL_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_MIPI_PLL_CTRL_K_SHIFT	4
+#define CCM_MIPI_PLL_CTRL_K_MASK	(0x3 << CCM_MIPI_PLL_CTRL_K_SHIFT)
+#define CCM_MIPI_PLL_CTRL_K(n)		((((n) - 1) & 0x3) << 4)
+#define CCM_MIPI_PLL_CTRL_N_SHIFT	8
+#define CCM_MIPI_PLL_CTRL_N_MASK	(0xf << CCM_MIPI_PLL_CTRL_N_SHIFT)
+#define CCM_MIPI_PLL_CTRL_N(n)		((((n) - 1) & 0xf) << 8)
+#define CCM_MIPI_PLL_CTRL_LDO_EN	(0x3 << 22)
+#define CCM_MIPI_PLL_CTRL_EN		(0x1 << 31)
+
+#define CCM_PLL10_CTRL_M_SHIFT		0
+#define CCM_PLL10_CTRL_M_MASK		(0xf << CCM_PLL10_CTRL_M_SHIFT)
+#define CCM_PLL10_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_PLL10_CTRL_N_SHIFT		8
+#define CCM_PLL10_CTRL_N_MASK		(0x7f << CCM_PLL10_CTRL_N_SHIFT)
+#define CCM_PLL10_CTRL_N(n)		((((n) - 1) & 0x7f) << 8)
+#define CCM_PLL10_CTRL_INTEGER_MODE	(0x1 << 24)
+#define CCM_PLL10_CTRL_LOCK		(0x1 << 28)
+#define CCM_PLL10_CTRL_EN		(0x1 << 31)
+
+#define CCM_PLL11_CTRL_N(n)		((((n) - 1) & 0x3f) << 8)
+#define CCM_PLL11_CTRL_SIGMA_DELTA_EN	(0x1 << 24)
+#define CCM_PLL11_CTRL_UPD		(0x1 << 30)
+#define CCM_PLL11_CTRL_EN		(0x1 << 31)
+
+#define CCM_PLL5_TUN_LOCK_TIME(x)	(((x) & 0x7) << 24)
+#define CCM_PLL5_TUN_LOCK_TIME_MASK	CCM_PLL5_TUN_LOCK_TIME(0x7)
+#define CCM_PLL5_TUN_INIT_FREQ(x)	(((x) & 0x7f) << 16)
+#define CCM_PLL5_TUN_INIT_FREQ_MASK	CCM_PLL5_TUN_INIT_FREQ(0x7f)
+
+#if defined(CONFIG_MACH_SUN50I)
+/* AHB1=100MHz failsafe setup from the FEL mode, usable with PMIC defaults */
+#define AHB1_ABP1_DIV_DEFAULT		0x00003190 /* AHB1=PLL6/6,APB1=AHB1/2 */
+#else
+#define AHB1_ABP1_DIV_DEFAULT		0x00003180 /* AHB1=PLL6/3,APB1=AHB1/2 */
+#endif
+
+#define AXI_GATE_OFFSET_DRAM		0
+
+/* ahb_gate0 offsets */
+#ifdef CONFIG_MACH_SUNXI_H3_H5
+/*
+ * These are EHCI1 - EHCI3 in the datasheet (EHCI0 is for the OTG) we call
+ * them 0 - 2 like they were called on older SoCs.
+ */
+#define AHB_GATE_OFFSET_USB_OHCI3	31
+#define AHB_GATE_OFFSET_USB_OHCI2	30
+#define AHB_GATE_OFFSET_USB_OHCI1	29
+#define AHB_GATE_OFFSET_USB_OHCI0	28
+#define AHB_GATE_OFFSET_USB_EHCI3	27
+#define AHB_GATE_OFFSET_USB_EHCI2	26
+#define AHB_GATE_OFFSET_USB_EHCI1	25
+#define AHB_GATE_OFFSET_USB_EHCI0	24
+#elif defined(CONFIG_MACH_SUN50I)
+#define AHB_GATE_OFFSET_USB_OHCI0	28
+#define AHB_GATE_OFFSET_USB_OHCI1	29
+#define AHB_GATE_OFFSET_USB_EHCI0	24
+#define AHB_GATE_OFFSET_USB_EHCI1	25
+#else
+#define AHB_GATE_OFFSET_USB_OHCI1	30
+#define AHB_GATE_OFFSET_USB_OHCI0	29
+#define AHB_GATE_OFFSET_USB_EHCI1	27
+#define AHB_GATE_OFFSET_USB_EHCI0	26
+#endif
+#if defined(CONFIG_MACH_SUN50I) || defined(CONFIG_MACH_SUNXI_H3_H5)
+#define AHB_GATE_OFFSET_USB0		23
+#elif !defined(CONFIG_MACH_SUN8I_R40)
+#define AHB_GATE_OFFSET_USB0		24
+#else
+#define AHB_GATE_OFFSET_USB0		25
+#define AHB_GATE_OFFSET_SATA		24
+#endif
+#define AHB_GATE_OFFSET_MCTL		14
+#define AHB_GATE_OFFSET_GMAC		17
+#define AHB_GATE_OFFSET_NAND0		13
+#define AHB_GATE_OFFSET_NAND1		12
+#define AHB_GATE_OFFSET_MMC3		11
+#define AHB_GATE_OFFSET_MMC2		10
+#define AHB_GATE_OFFSET_MMC1		9
+#define AHB_GATE_OFFSET_MMC0		8
+#define AHB_GATE_OFFSET_MMC(n)		(AHB_GATE_OFFSET_MMC0 + (n))
+#define AHB_GATE_OFFSET_DMA		6
+#define AHB_GATE_OFFSET_SS		5
+
+/* ahb_gate1 offsets */
+#define AHB_GATE_OFFSET_DRC0		25
+#define AHB_GATE_OFFSET_DE_FE0		14
+#define AHB_GATE_OFFSET_DE_BE0		12
+#define AHB_GATE_OFFSET_DE		12
+#define AHB_GATE_OFFSET_HDMI		11
+#define AHB_GATE_OFFSET_TVE		9
+#ifndef CONFIG_SUNXI_DE2
+#define AHB_GATE_OFFSET_LCD1		5
+#define AHB_GATE_OFFSET_LCD0		4
+#else
+#define AHB_GATE_OFFSET_LCD1		4
+#define AHB_GATE_OFFSET_LCD0		3
+#endif
+
+#define CCM_NAND_CTRL_M(x)		((x) - 1)
+#define CCM_NAND_CTRL_N(x)		((x) << 16)
+#define CCM_NAND_CTRL_PLL6		(0x1 << 24)
+#define CCM_NAND_CTRL_ENABLE		(0x1 << 31)
+
+#define CCM_MMC_CTRL_M(x)		((x) - 1)
+#define CCM_MMC_CTRL_OCLK_DLY(x)	((x) << 8)
+#define CCM_MMC_CTRL_N(x)		((x) << 16)
+#define CCM_MMC_CTRL_SCLK_DLY(x)	((x) << 20)
+#define CCM_MMC_CTRL_OSCM24		(0x0 << 24)
+#define CCM_MMC_CTRL_PLL6		(0x1 << 24)
+#define CCM_MMC_CTRL_PLL6X2		(0x1 << 24) // A64 has PLL_PERIPH0(2X)
+#define CCM_MMC_CTRL_ENABLE		(0x1 << 31)
+
+#define CCM_SATA_CTRL_ENABLE		(0x1 << 31)
+#define CCM_SATA_CTRL_USE_EXTCLK	(0x1 << 24)
+
+#define CCM_USB_CTRL_PHY0_RST (0x1 << 0)
+#define CCM_USB_CTRL_PHY1_RST (0x1 << 1)
+#define CCM_USB_CTRL_PHY2_RST (0x1 << 2)
+#define CCM_USB_CTRL_PHY3_RST (0x1 << 3)
+/* There is no global phy clk gate on sun6i, define as 0 */
+#define CCM_USB_CTRL_PHYGATE 0
+#define CCM_USB_CTRL_PHY0_CLK (0x1 << 8)
+#define CCM_USB_CTRL_PHY1_CLK (0x1 << 9)
+#define CCM_USB_CTRL_PHY2_CLK (0x1 << 10)
+#define CCM_USB_CTRL_PHY3_CLK (0x1 << 11)
+#ifdef CONFIG_MACH_SUNXI_H3_H5
+#define CCM_USB_CTRL_OHCI0_CLK (0x1 << 16)
+#define CCM_USB_CTRL_OHCI1_CLK (0x1 << 17)
+#define CCM_USB_CTRL_OHCI2_CLK (0x1 << 18)
+#define CCM_USB_CTRL_OHCI3_CLK (0x1 << 19)
+#else
+#define CCM_USB_CTRL_OHCI0_CLK (0x1 << 16)
+#define CCM_USB_CTRL_OHCI1_CLK (0x1 << 17)
+#endif
+
+#define CCM_GMAC_CTRL_TX_CLK_SRC_MII	0x0
+#define CCM_GMAC_CTRL_TX_CLK_SRC_EXT_RGMII 0x1
+#define CCM_GMAC_CTRL_TX_CLK_SRC_INT_RGMII 0x2
+#define CCM_GMAC_CTRL_GPIT_MII		(0x0 << 2)
+#define CCM_GMAC_CTRL_GPIT_RGMII	(0x1 << 2)
+#define CCM_GMAC_CTRL_RX_CLK_DELAY(x)	((x) << 5)
+#define CCM_GMAC_CTRL_TX_CLK_DELAY(x)	((x) << 10)
+
+#define MDFS_CLK_DEFAULT		0x81000002 /* PLL6 / 3 */
+
+#define CCM_DRAMCLK_CFG_DIV(x)		((x - 1) << 0)
+#define CCM_DRAMCLK_CFG_DIV_MASK	(0xf << 0)
+#define CCM_DRAMCLK_CFG_DIV0(x)		((x - 1) << 8)
+#define CCM_DRAMCLK_CFG_DIV0_MASK	(0xf << 8)
+#define CCM_DRAMCLK_CFG_SRC_PLL5	(0x0 << 20)
+#define CCM_DRAMCLK_CFG_SRC_PLL6x2	(0x1 << 20)
+#define CCM_DRAMCLK_CFG_SRC_PLL11	(0x1 << 20) /* A64 only */
+#define CCM_DRAMCLK_CFG_SRC_MASK	(0x3 << 20)
+#define CCM_DRAMCLK_CFG_UPD		(0x1 << 16)
+#define CCM_DRAMCLK_CFG_RST		(0x1 << 31)
+
+#define CCM_DRAMPLL_CFG_SRC_PLL5	(0x0 << 16) /* Select PLL5 (DDR0) */
+#define CCM_DRAMPLL_CFG_SRC_PLL11	(0x1 << 16) /* Select PLL11 (DDR1) */
+#define CCM_DRAMPLL_CFG_SRC_MASK	(0x1 << 16)
+
+#define CCM_MBUS_RESET_RESET		(0x1 << 31)
+
+#define CCM_DRAM_GATE_OFFSET_DE_FE0	24
+#define CCM_DRAM_GATE_OFFSET_DE_FE1	25
+#define CCM_DRAM_GATE_OFFSET_DE_BE0	26
+#define CCM_DRAM_GATE_OFFSET_DE_BE1	27
+
+#ifdef CONFIG_MACH_SUN50I
+#define CCM_LCD_CH0_CTRL_PLL3_2X	(2 << 24)
+#define CCM_LCD_CH0_CTRL_MIPI_PLL	(0 << 24)
+#else
+#define CCM_LCD_CH0_CTRL_PLL3		(0 << 24)
+#define CCM_LCD_CH0_CTRL_PLL7		(1 << 24)
+#define CCM_LCD_CH0_CTRL_PLL3_2X	(2 << 24)
+#define CCM_LCD_CH0_CTRL_PLL7_2X	(3 << 24)
+#define CCM_LCD_CH0_CTRL_MIPI_PLL	(4 << 24)
+#endif
+/* No reset bit in ch0_clk_cfg (reset is controlled through ahb_reset1) */
+#define CCM_LCD_CH0_CTRL_RST		0
+#define CCM_LCD_CH0_CTRL_GATE		(0x1 << 31)
+
+#define CCM_LCD_CH1_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_LCD_CH1_CTRL_HALF_SCLK1	0 /* no seperate sclk1 & 2 on sun6i */
+#define CCM_LCD_CH1_CTRL_PLL3		(0 << 24)
+#define CCM_LCD_CH1_CTRL_PLL7		(1 << 24)
+#define CCM_LCD_CH1_CTRL_PLL3_2X	(2 << 24)
+#define CCM_LCD_CH1_CTRL_PLL7_2X	(3 << 24)
+#define CCM_LCD_CH1_CTRL_GATE		(0x1 << 31)
+
+#define CCM_LCD0_CTRL_GATE		(0x1 << 31)
+#define CCM_LCD0_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+
+#define CCM_LCD1_CTRL_GATE		(0x1 << 31)
+#define CCM_LCD1_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+
+#define CCM_HDMI_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_HDMI_CTRL_PLL_MASK		(3 << 24)
+#define CCM_HDMI_CTRL_PLL3		(0 << 24)
+#define CCM_HDMI_CTRL_PLL7		(1 << 24)
+#define CCM_HDMI_CTRL_PLL3_2X		(2 << 24)
+#define CCM_HDMI_CTRL_PLL7_2X		(3 << 24)
+#define CCM_HDMI_CTRL_DDC_GATE		(0x1 << 30)
+#define CCM_HDMI_CTRL_GATE		(0x1 << 31)
+
+#define CCM_HDMI_SLOW_CTRL_DDC_GATE	(1 << 31)
+
+#define CCM_TVE_CTRL_GATE		(0x1 << 31)
+#define CCM_TVE_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+
+#if defined(CONFIG_MACH_SUN50I)
+#define MBUS_CLK_DEFAULT		0x81000002 /* PLL6x2 / 3 */
+#elif defined(CONFIG_MACH_SUN8I)
+#define MBUS_CLK_DEFAULT		0x81000003 /* PLL6 / 4 */
+#else
+#define MBUS_CLK_DEFAULT		0x81000001 /* PLL6 / 2 */
+#endif
+#define MBUS_CLK_GATE			(0x1 << 31)
+
+#define CCM_PLL5_PATTERN		0xd1303333
+#define CCM_PLL11_PATTERN		0xf5860000
+
+/* ahb_reset0 offsets */
+#ifdef CONFIG_MACH_SUN8I_R40
+#define AHB_RESET_OFFSET_SATA		24
+#endif
+#define AHB_RESET_OFFSET_GMAC		17
+#define AHB_RESET_OFFSET_MCTL		14
+#define AHB_RESET_OFFSET_MMC3		11
+#define AHB_RESET_OFFSET_MMC2		10
+#define AHB_RESET_OFFSET_MMC1		9
+#define AHB_RESET_OFFSET_MMC0		8
+#define AHB_RESET_OFFSET_MMC(n)		(AHB_RESET_OFFSET_MMC0 + (n))
+#define AHB_RESET_OFFSET_SS		5
+
+/* ahb_reset1 offsets */
+#define AHB_RESET_OFFSET_SAT		26
+#define AHB_RESET_OFFSET_DRC0		25
+#define AHB_RESET_OFFSET_DE_FE0		14
+#define AHB_RESET_OFFSET_DE_BE0		12
+#define AHB_RESET_OFFSET_DE		12
+#define AHB_RESET_OFFSET_HDMI		11
+#define AHB_RESET_OFFSET_HDMI2		10
+#define AHB_RESET_OFFSET_TVE		9
+#ifndef CONFIG_SUNXI_DE2
+#define AHB_RESET_OFFSET_LCD1		5
+#define AHB_RESET_OFFSET_LCD0		4
+#else
+#define AHB_RESET_OFFSET_LCD1		4
+#define AHB_RESET_OFFSET_LCD0		3
+#endif
+
+/* ahb_reset2 offsets */
+#define AHB_RESET_OFFSET_EPHY		2
+#define AHB_RESET_OFFSET_LVDS		0
+
+/* apb2 reset */
+#define APB2_RESET_UART_SHIFT		(16)
+#define APB2_RESET_UART_MASK		(0xff << APB2_RESET_UART_SHIFT)
+#define APB2_RESET_TWI_SHIFT		(0)
+#define APB2_RESET_TWI_MASK		(0xf << APB2_RESET_TWI_SHIFT)
+
+/* CCM bits common to all Display Engine (and IEP) clock ctrl regs */
+#define CCM_DE_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_DE_CTRL_PLL_MASK		(0xf << 24)
+#define CCM_DE_CTRL_PLL3		(0 << 24)
+#define CCM_DE_CTRL_PLL7		(1 << 24)
+#define CCM_DE_CTRL_PLL6_2X		(2 << 24)
+#define CCM_DE_CTRL_PLL8		(3 << 24)
+#define CCM_DE_CTRL_PLL9		(4 << 24)
+#define CCM_DE_CTRL_PLL10		(5 << 24)
+#define CCM_DE_CTRL_GATE		(1 << 31)
+
+/* CCM bits common to all Display Engine 2.0 clock ctrl regs */
+#define CCM_DE2_CTRL_M(n)		((((n) - 1) & 0xf) << 0)
+#define CCM_DE2_CTRL_PLL_MASK		(3 << 24)
+#define CCM_DE2_CTRL_PLL6_2X		(0 << 24)
+#define CCM_DE2_CTRL_PLL10		(1 << 24)
+#define CCM_DE2_CTRL_GATE		(0x1 << 31)
+
+/* CCU security switch, H3 only */
+#define CCM_SEC_SWITCH_MBUS_NONSEC	(1 << 2)
+#define CCM_SEC_SWITCH_BUS_NONSEC	(1 << 1)
+#define CCM_SEC_SWITCH_PLL_NONSEC	(1 << 0)
+
+#if 0
+void clock_set_pll1(unsigned int hz);
+void clock_set_pll3(unsigned int hz);
+void clock_set_pll3_factors(int m, int n);
+void clock_set_pll5(unsigned int clk, bool sigma_delta_enable);
+void clock_set_pll_de(unsigned int hz);
+void clock_set_pll11(unsigned int clk, bool sigma_delta_enable);
+void clock_set_mipi_pll(unsigned int hz);
+unsigned int clock_get_pll3(void);
+unsigned int clock_get_pll6(void);
+unsigned int clock_get_mipi_pll(void);
+#endif
+
+#endif /* _SUNXI_CLOCK_SUN6I_H */
diff --git a/arch/arm/mach-sunxi/ddr3_1333.c b/arch/arm/mach-sunxi/ddr3_1333.c
new file mode 100644
index 0000000000..2693b263e2
--- /dev/null
+++ b/arch/arm/mach-sunxi/ddr3_1333.c
@@ -0,0 +1,85 @@
+#include <common.h>
+
+static void mctl_set_timing_params(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	u8 tccd		= 2;
+	u8 tfaw		= ns_to_t(50);
+	u8 trrd		= max(ns_to_t(10), 4);
+	u8 trcd		= ns_to_t(15);
+	u8 trc		= ns_to_t(53);
+	u8 txp		= max(ns_to_t(8), 3);
+	u8 twtr		= max(ns_to_t(8), 4);
+	u8 trtp		= max(ns_to_t(8), 4);
+	u8 twr		= max(ns_to_t(15), 3);
+	u8 trp		= ns_to_t(15);
+	u8 tras		= ns_to_t(38);
+	u16 trefi	= ns_to_t(7800) / 32;
+	u16 trfc	= ns_to_t(350);
+
+	u8 tmrw		= 0;
+	u8 tmrd		= 4;
+	u8 tmod		= 12;
+	u8 tcke		= 3;
+	u8 tcksrx	= 5;
+	u8 tcksre	= 5;
+	u8 tckesr	= 4;
+	u8 trasmax	= 24;
+
+	u8 tcl		= 6; /* CL 12 */
+	u8 tcwl		= 4; /* CWL 8 */
+	u8 t_rdata_en	= 4;
+	u8 wr_latency	= 2;
+
+	u32 tdinit0	= (500 * CONFIG_DRAM_CLK) + 1;		/* 500us */
+	u32 tdinit1	= (360 * CONFIG_DRAM_CLK) / 1000 + 1;	/* 360ns */
+	u32 tdinit2	= (200 * CONFIG_DRAM_CLK) + 1;		/* 200us */
+	u32 tdinit3	= (1 * CONFIG_DRAM_CLK) + 1;		/* 1us */
+
+	u8 twtp		= tcwl + 2 + twr;	/* WL + BL / 2 + tWR */
+	u8 twr2rd	= tcwl + 2 + twtr;	/* WL + BL / 2 + tWTR */
+	u8 trd2wr	= tcl + 2 + 1 - tcwl;	/* RL + BL / 2 + 2 - WL */
+
+	/* set mode register */
+	writel(0x1c70, &mctl_ctl->mr[0]);	/* CL=11, WR=12 */
+	writel(0x40, &mctl_ctl->mr[1]);
+	writel(0x18, &mctl_ctl->mr[2]);		/* CWL=8 */
+	writel(0x0, &mctl_ctl->mr[3]);
+
+	if (socid == SOCID_R40)
+		writel(0x3, &mctl_ctl->lp3mr11);	/* odt_en[7:4] */
+
+	/* set DRAM timing */
+	writel(DRAMTMG0_TWTP(twtp) | DRAMTMG0_TFAW(tfaw) |
+	       DRAMTMG0_TRAS_MAX(trasmax) | DRAMTMG0_TRAS(tras),
+	       &mctl_ctl->dramtmg[0]);
+	writel(DRAMTMG1_TXP(txp) | DRAMTMG1_TRTP(trtp) | DRAMTMG1_TRC(trc),
+	       &mctl_ctl->dramtmg[1]);
+	writel(DRAMTMG2_TCWL(tcwl) | DRAMTMG2_TCL(tcl) |
+	       DRAMTMG2_TRD2WR(trd2wr) | DRAMTMG2_TWR2RD(twr2rd),
+	       &mctl_ctl->dramtmg[2]);
+	writel(DRAMTMG3_TMRW(tmrw) | DRAMTMG3_TMRD(tmrd) | DRAMTMG3_TMOD(tmod),
+	       &mctl_ctl->dramtmg[3]);
+	writel(DRAMTMG4_TRCD(trcd) | DRAMTMG4_TCCD(tccd) | DRAMTMG4_TRRD(trrd) |
+	       DRAMTMG4_TRP(trp), &mctl_ctl->dramtmg[4]);
+	writel(DRAMTMG5_TCKSRX(tcksrx) | DRAMTMG5_TCKSRE(tcksre) |
+	       DRAMTMG5_TCKESR(tckesr) | DRAMTMG5_TCKE(tcke),
+	       &mctl_ctl->dramtmg[5]);
+
+	/* set two rank timing */
+	clrsetbits_le32(&mctl_ctl->dramtmg[8], (0xff << 8) | (0xff << 0),
+			((socid == SOCID_H5 ? 0x33 : 0x66) << 8) | (0x10 << 0));
+
+	/* set PHY interface timing, write latency and read latency configure */
+	writel((0x2 << 24) | (t_rdata_en << 16) | (0x1 << 8) |
+	       (wr_latency << 0), &mctl_ctl->pitmg[0]);
+
+	/* set PHY timing, PTR0-2 use default */
+	writel(PTR3_TDINIT0(tdinit0) | PTR3_TDINIT1(tdinit1), &mctl_ctl->ptr[3]);
+	writel(PTR4_TDINIT2(tdinit2) | PTR4_TDINIT3(tdinit3), &mctl_ctl->ptr[4]);
+
+	/* set refresh timing */
+	writel(RFSHTMG_TREFI(trefi) | RFSHTMG_TRFC(trfc), &mctl_ctl->rfshtmg);
+}
diff --git a/arch/arm/mach-sunxi/dram_sunxi_dw.h b/arch/arm/mach-sunxi/dram_sunxi_dw.h
new file mode 100644
index 0000000000..146938460e
--- /dev/null
+++ b/arch/arm/mach-sunxi/dram_sunxi_dw.h
@@ -0,0 +1,241 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * sun8i H3 platform dram controller register and constant defines
+ *
+ * (C) Copyright 2007-2015 Allwinner Technology Co.
+ *                         Jerry Wang <wangflord@allwinnertech.com>
+ * (C) Copyright 2015      Vishnu Patekar <vishnupatekar0510@gmail.com>
+ * (C) Copyright 2014-2015 Hans de Goede <hdegoede@redhat.com>
+ * (C) Copyright 2015      Jens Kuske <jenskuske@gmail.com>
+ */
+
+#ifndef _SUNXI_DRAM_SUN8I_H3_H
+#define _SUNXI_DRAM_SUN8I_H3_H
+
+#include <linux/bitops.h>
+
+struct sunxi_mctl_com_reg {
+	u32 cr;			/* 0x00 control register */
+	u32 cr_r1;		/* 0x04 rank 1 control register (R40 only) */
+	u8 res0[0x4];		/* 0x08 */
+	u32 tmr;		/* 0x0c (unused on H3) */
+	u32 mcr[16][2];		/* 0x10 */
+	u32 bwcr;		/* 0x90 bandwidth control register */
+	u32 maer;		/* 0x94 master enable register */
+	u32 mapr;		/* 0x98 master priority register */
+	u32 mcgcr;		/* 0x9c */
+	u32 cpu_bwcr;		/* 0xa0 */
+	u32 gpu_bwcr;		/* 0xa4 */
+	u32 ve_bwcr;		/* 0xa8 */
+	u32 disp_bwcr;		/* 0xac */
+	u32 other_bwcr;		/* 0xb0 */
+	u32 total_bwcr;		/* 0xb4 */
+	u8 res1[0x8];		/* 0xb8 */
+	u32 swonr;		/* 0xc0 */
+	u32 swoffr;		/* 0xc4 */
+	u8 res2[0x8];		/* 0xc8 */
+	u32 cccr;		/* 0xd0 */
+	u8 res3[0x54];		/* 0xd4 */
+	u32 mdfs_bwlr[3];	/* 0x128 (unused on H3) */
+	u8 res4[0x6cc];		/* 0x134 */
+	u32 protect;		/* 0x800 */
+};
+
+#define MCTL_CR_BL8		(0x4 << 20)
+
+#define MCTL_CR_1T		(0x1 << 19)
+#define MCTL_CR_2T		(0x0 << 19)
+
+#define MCTL_CR_LPDDR3		(0x7 << 16)
+#define MCTL_CR_LPDDR2		(0x6 << 16)
+#define MCTL_CR_DDR3		(0x3 << 16)
+#define MCTL_CR_DDR2		(0x2 << 16)
+
+#define MCTL_CR_SEQUENTIAL	(0x1 << 15)
+#define MCTL_CR_INTERLEAVED	(0x0 << 15)
+
+#define MCTL_CR_FULL_WIDTH	(0x1 << 12)
+#define MCTL_CR_HALF_WIDTH	(0x0 << 12)
+#define MCTL_CR_BUS_FULL_WIDTH(x)	((x) << 12)
+
+#define MCTL_CR_PAGE_SIZE(x)	((fls(x) - 4) << 8)
+#define MCTL_CR_ROW_BITS(x)	(((x) - 1) << 4)
+#define MCTL_CR_EIGHT_BANKS	(0x1 << 2)
+#define MCTL_CR_FOUR_BANKS	(0x0 << 2)
+#define MCTL_CR_DUAL_RANK	(0x1 << 0)
+#define MCTL_CR_SINGLE_RANK	(0x0 << 0)
+
+/*
+ * CR_R1 is a register found in the R40's DRAM controller. It sets various
+ * parameters for rank 1. Bits [11:0] have the same meaning as the bits in
+ * MCTL_CR, but they apply to rank 1 only. This implies we can have
+ * different chips for rank 1 than rank 0.
+ *
+ * As address line A15 and CS1 chip select for rank 1 are muxed on the same
+ * pin, if single rank is used, A15 must be muxed in.
+ */
+#define MCTL_CR_R1_MUX_A15	(0x1 << 21)
+
+#define PROTECT_MAGIC		(0x94be6fa3)
+
+struct sunxi_mctl_ctl_reg {
+	u32 pir;		/* 0x00 PHY initialization register */
+	u32 pwrctl;		/* 0x04 */
+	u32 mrctrl;		/* 0x08 */
+	u32 clken;		/* 0x0c */
+	u32 pgsr[2];		/* 0x10 PHY general status registers */
+	u32 statr;		/* 0x18 */
+	u8 res1[0x10];		/* 0x1c */
+	u32 lp3mr11;		/* 0x2c */
+	u32 mr[4];		/* 0x30 mode registers */
+	u32 pllgcr;		/* 0x40 */
+	u32 ptr[5];		/* 0x44 PHY timing registers */
+	u32 dramtmg[9];		/* 0x58 DRAM timing registers */
+	u32 odtcfg;		/* 0x7c */
+	u32 pitmg[2];		/* 0x80 PHY interface timing registers */
+	u8 res2[0x4];		/* 0x88 */
+	u32 rfshctl0;		/* 0x8c */
+	u32 rfshtmg;		/* 0x90 refresh timing */
+	u32 rfshctl1;		/* 0x94 */
+	u32 pwrtmg;		/* 0x98 */
+	u8 res3[0x1c];		/* 0x9c */
+	u32 vtfcr;		/* 0xb8 (unused on H3) */
+	u32 dqsgmr;		/* 0xbc */
+	u32 dtcr;		/* 0xc0 */
+	u32 dtar[4];		/* 0xc4 */
+	u32 dtdr[2];		/* 0xd4 */
+	u32 dtmr[2];		/* 0xdc */
+	u32 dtbmr;		/* 0xe4 */
+	u32 catr[2];		/* 0xe8 */
+	u32 dtedr[2];		/* 0xf0 */
+	u8 res4[0x8];		/* 0xf8 */
+	u32 pgcr[4];		/* 0x100 PHY general configuration registers */
+	u32 iovcr[2];		/* 0x110 */
+	u32 dqsdr;		/* 0x118 */
+	u32 dxccr;		/* 0x11c */
+	u32 odtmap;		/* 0x120 */
+	u32 zqctl[2];		/* 0x124 */
+	u8 res6[0x14];		/* 0x12c */
+	u32 zqcr;		/* 0x140 ZQ control register */
+	u32 zqsr;		/* 0x144 ZQ status register */
+	u32 zqdr[3];		/* 0x148 ZQ data registers */
+	u8 res7[0x6c];		/* 0x154 */
+	u32 sched;		/* 0x1c0 */
+	u32 perfhpr[2];		/* 0x1c4 */
+	u32 perflpr[2];		/* 0x1cc */
+	u32 perfwr[2];		/* 0x1d4 */
+	u8 res8[0x24];		/* 0x1dc */
+	u32 acmdlr;		/* 0x200 AC master delay line register */
+	u32 aclcdlr;		/* 0x204 AC local calibrated delay line register */
+	u32 aciocr;		/* 0x208 AC I/O configuration register */
+	u8 res9[0x4];		/* 0x20c */
+	u32 acbdlr[31];		/* 0x210 AC bit delay line registers */
+	u8 res10[0x74];		/* 0x28c */
+	struct {		/* 0x300 DATX8 modules*/
+		u32 mdlr;		/* 0x00 master delay line register */
+		u32 lcdlr[3];		/* 0x04 local calibrated delay line registers */
+		u32 bdlr[11];		/* 0x10 bit delay line registers */
+		u32 sdlr;		/* 0x3c output enable bit delay registers */
+		u32 gtr;		/* 0x40 general timing register */
+		u32 gcr;		/* 0x44 general configuration register */
+		u32 gsr[3];		/* 0x48 general status registers */
+		u8 res0[0x2c];		/* 0x54 */
+	} dx[4];
+	u8 res11[0x388];	/* 0x500 */
+	u32 upd2;		/* 0x888 */
+};
+
+#define PTR3_TDINIT1(x)		((x) << 20)
+#define PTR3_TDINIT0(x)		((x) <<  0)
+
+#define PTR4_TDINIT3(x)		((x) << 20)
+#define PTR4_TDINIT2(x)		((x) <<  0)
+
+#define DRAMTMG0_TWTP(x)	((x) << 24)
+#define DRAMTMG0_TFAW(x)	((x) << 16)
+#define DRAMTMG0_TRAS_MAX(x)	((x) <<  8)
+#define DRAMTMG0_TRAS(x)	((x) <<  0)
+
+#define DRAMTMG1_TXP(x)		((x) << 16)
+#define DRAMTMG1_TRTP(x)	((x) <<  8)
+#define DRAMTMG1_TRC(x)		((x) <<  0)
+
+#define DRAMTMG2_TCWL(x)	((x) << 24)
+#define DRAMTMG2_TCL(x)		((x) << 16)
+#define DRAMTMG2_TRD2WR(x)	((x) <<  8)
+#define DRAMTMG2_TWR2RD(x)	((x) <<  0)
+
+#define DRAMTMG3_TMRW(x)	((x) << 16)
+#define DRAMTMG3_TMRD(x)	((x) << 12)
+#define DRAMTMG3_TMOD(x)	((x) <<  0)
+
+#define DRAMTMG4_TRCD(x)	((x) << 24)
+#define DRAMTMG4_TCCD(x)	((x) << 16)
+#define DRAMTMG4_TRRD(x)	((x) <<  8)
+#define DRAMTMG4_TRP(x)		((x) <<  0)
+
+#define DRAMTMG5_TCKSRX(x)	((x) << 24)
+#define DRAMTMG5_TCKSRE(x)	((x) << 16)
+#define DRAMTMG5_TCKESR(x)	((x) <<  8)
+#define DRAMTMG5_TCKE(x)	((x) <<  0)
+
+#define RFSHTMG_TREFI(x)	((x) << 16)
+#define RFSHTMG_TRFC(x)		((x) <<  0)
+
+#define PIR_CLRSR	(0x1 << 27)	/* clear status registers */
+#define PIR_QSGATE	(0x1 << 10)	/* Read DQS gate training */
+#define PIR_DRAMINIT	(0x1 << 8)	/* DRAM initialization */
+#define PIR_DRAMRST	(0x1 << 7)	/* DRAM reset */
+#define PIR_PHYRST	(0x1 << 6)	/* PHY reset */
+#define PIR_DCAL	(0x1 << 5)	/* DDL calibration */
+#define PIR_PLLINIT	(0x1 << 4)	/* PLL initialization */
+#define PIR_ZCAL	(0x1 << 1)	/* ZQ calibration */
+#define PIR_INIT	(0x1 << 0)	/* PHY initialization trigger */
+
+#define PGSR_INIT_DONE	(0x1 << 0)	/* PHY init done */
+
+#define ZQCR_PWRDOWN	(1U << 31)	/* ZQ power down */
+
+#define ACBDLR_WRITE_DELAY(x)	((x) << 8)
+
+#define DXBDLR_DQ(x)	(x)		/* DQ0-7 BDLR index */
+#define DXBDLR_DM	8		/* DM BDLR index */
+#define DXBDLR_DQS	9		/* DQS BDLR index */
+#define DXBDLR_DQSN	10		/* DQSN BDLR index */
+
+#define DXBDLR_WRITE_DELAY(x)	((x) << 8)
+#define DXBDLR_READ_DELAY(x)	((x) << 0)
+
+/*
+ * The delay parameters below allow to allegedly specify delay times of some
+ * unknown unit for each individual bit trace in each of the four data bytes
+ * the 32-bit wide access consists of. Also three control signals can be
+ * adjusted individually.
+ */
+#define NR_OF_BYTE_LANES	(32 / BITS_PER_BYTE)
+/* The eight data lines (DQn) plus DM, DQS and DQSN */
+#define LINES_PER_BYTE_LANE	(BITS_PER_BYTE + 3)
+
+struct rank_para {
+	u16 page_size;
+	u8 row_bits;
+	u8 bank_bits;
+};
+
+struct dram_para {
+	u8 dual_rank;
+	u8 bus_full_width;
+	struct rank_para ranks[2];
+	const u8 dx_read_delays[NR_OF_BYTE_LANES][LINES_PER_BYTE_LANE];
+	const u8 dx_write_delays[NR_OF_BYTE_LANES][LINES_PER_BYTE_LANE];
+	const u8 ac_delays[31];
+};
+
+static inline int ns_to_t(int nanoseconds)
+{
+	const unsigned int ctrl_freq = CONFIG_DRAM_CLK / 2;
+
+	return DIV_ROUND_UP(ctrl_freq * nanoseconds, 1000);
+}
+
+#endif /* _SUNXI_DRAM_SUN8I_H3_H */
diff --git a/arch/arm/mach-sunxi/lpddr3_stock.c b/arch/arm/mach-sunxi/lpddr3_stock.c
new file mode 100644
index 0000000000..4767eb516d
--- /dev/null
+++ b/arch/arm/mach-sunxi/lpddr3_stock.c
@@ -0,0 +1,81 @@
+#include <common.h>
+
+static void mctl_set_timing_params(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	u8 tccd		= 2;
+	u8 tfaw		= max(ns_to_t(50), 4);
+	u8 trrd		= max(ns_to_t(10), 2);
+	u8 trcd		= max(ns_to_t(24), 2);
+	u8 trc		= ns_to_t(70);
+	u8 txp		= max(ns_to_t(8), 2);
+	u8 twtr		= max(ns_to_t(8), 2);
+	u8 trtp		= max(ns_to_t(8), 2);
+	u8 twr		= max(ns_to_t(15), 3);
+	u8 trp		= max(ns_to_t(27), 2);
+	u8 tras		= ns_to_t(42);
+	u16 trefi	= ns_to_t(3900) / 32;
+	u16 trfc	= ns_to_t(210);
+
+	u8 tmrw		= 5;
+	u8 tmrd		= 5;
+	u8 tmod		= 12;
+	u8 tcke		= 3;
+	u8 tcksrx	= 5;
+	u8 tcksre	= 5;
+	u8 tckesr	= 5;
+	u8 trasmax	= 24;
+
+	u8 tcl		= 6; /* CL 12 */
+	u8 tcwl		= 3; /* CWL 6 */
+	u8 t_rdata_en	= 5;
+	u8 wr_latency	= 2;
+
+	u32 tdinit0	= (200 * CONFIG_DRAM_CLK) + 1;		/* 200us */
+	u32 tdinit1	= (100 * CONFIG_DRAM_CLK) / 1000 + 1;	/* 100ns */
+	u32 tdinit2	= (11 * CONFIG_DRAM_CLK) + 1;		/* 11us */
+	u32 tdinit3	= (1 * CONFIG_DRAM_CLK) + 1;		/* 1us */
+
+	u8 twtp		= tcwl + 4 + twr + 1;
+	u8 twr2rd	= tcwl + 4 + 1 + twtr;
+	u8 trd2wr	= tcl + 4 + 5 - tcwl + 1;
+
+	/* set mode register */
+	writel(0xc3, &mctl_ctl->mr[1]);		/* nWR=8, BL8 */
+	writel(0xa, &mctl_ctl->mr[2]);		/* RL=12, WL=6 */
+	writel(0x2, &mctl_ctl->mr[3]);		/* 40 0hms PD/PU */
+
+	/* set DRAM timing */
+	writel(DRAMTMG0_TWTP(twtp) | DRAMTMG0_TFAW(tfaw) |
+	       DRAMTMG0_TRAS_MAX(trasmax) | DRAMTMG0_TRAS(tras),
+	       &mctl_ctl->dramtmg[0]);
+	writel(DRAMTMG1_TXP(txp) | DRAMTMG1_TRTP(trtp) | DRAMTMG1_TRC(trc),
+	       &mctl_ctl->dramtmg[1]);
+	writel(DRAMTMG2_TCWL(tcwl) | DRAMTMG2_TCL(tcl) |
+	       DRAMTMG2_TRD2WR(trd2wr) | DRAMTMG2_TWR2RD(twr2rd),
+	       &mctl_ctl->dramtmg[2]);
+	writel(DRAMTMG3_TMRW(tmrw) | DRAMTMG3_TMRD(tmrd) | DRAMTMG3_TMOD(tmod),
+	       &mctl_ctl->dramtmg[3]);
+	writel(DRAMTMG4_TRCD(trcd) | DRAMTMG4_TCCD(tccd) | DRAMTMG4_TRRD(trrd) |
+	       DRAMTMG4_TRP(trp), &mctl_ctl->dramtmg[4]);
+	writel(DRAMTMG5_TCKSRX(tcksrx) | DRAMTMG5_TCKSRE(tcksre) |
+	       DRAMTMG5_TCKESR(tckesr) | DRAMTMG5_TCKE(tcke),
+	       &mctl_ctl->dramtmg[5]);
+
+	/* set two rank timing */
+	clrsetbits_le32(&mctl_ctl->dramtmg[8], (0xff << 8) | (0xff << 0),
+			(0x66 << 8) | (0x10 << 0));
+
+	/* set PHY interface timing, write latency and read latency configure */
+	writel((0x2 << 24) | (t_rdata_en << 16) | (0x1 << 8) |
+	       (wr_latency << 0), &mctl_ctl->pitmg[0]);
+
+	/* set PHY timing, PTR0-2 use default */
+	writel(PTR3_TDINIT0(tdinit0) | PTR3_TDINIT1(tdinit1), &mctl_ctl->ptr[3]);
+	writel(PTR4_TDINIT2(tdinit2) | PTR4_TDINIT3(tdinit3), &mctl_ctl->ptr[4]);
+
+	/* set refresh timing */
+	writel(RFSHTMG_TREFI(trefi) | RFSHTMG_TRFC(trfc), &mctl_ctl->rfshtmg);
+}
diff --git a/arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c b/arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
new file mode 100644
index 0000000000..4c54588556
--- /dev/null
+++ b/arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
@@ -0,0 +1,9 @@
+#define CONFIG_MACH_SUN50I y
+#define CONFIG_SUNXI_DRAM_DW y
+#define CONFIG_SUNXI_DRAM_DW_32BIT y
+#define CONFIG_SUNXI_DRAM_DDR3 y
+#define CONFIG_SYS_SDRAM_BASE 0x40000000
+
+#define sunxi_dram_init sun50i_a64_ddr3_dram_init
+
+#include "sun50i-sdram.c"
diff --git a/arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c b/arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c
new file mode 100644
index 0000000000..e5ba206661
--- /dev/null
+++ b/arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c
@@ -0,0 +1,9 @@
+#define CONFIG_MACH_SUN50I y
+#define CONFIG_SUNXI_DRAM_DW y
+#define CONFIG_SUNXI_DRAM_DW_32BIT y
+#define CONFIG_SUNXI_DRAM_LPDDR3 y
+#define CONFIG_SYS_SDRAM_BASE 0x40000000
+
+#define sunxi_dram_init sun50i_a64_lpddr3_dram_init
+
+#include "sun50i-sdram.c"
diff --git a/arch/arm/mach-sunxi/sun50i-sdram.c b/arch/arm/mach-sunxi/sun50i-sdram.c
new file mode 100644
index 0000000000..d9dc1cf5fd
--- /dev/null
+++ b/arch/arm/mach-sunxi/sun50i-sdram.c
@@ -0,0 +1,903 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * sun8i H3 platform dram controller init
+ *
+ * (C) Copyright 2007-2015 Allwinner Technology Co.
+ *                         Jerry Wang <wangflord@allwinnertech.com>
+ * (C) Copyright 2015      Vishnu Patekar <vishnupatekar0510@gmail.com>
+ * (C) Copyright 2015      Hans de Goede <hdegoede@redhat.com>
+ * (C) Copyright 2015      Jens Kuske <jenskuske@gmail.com>
+ */
+#include <common.h>
+#include <asm/io.h>
+#include <asm/system.h> /* dsb */
+#include <debug_ll.h>
+
+#include <mach/sunxi/init.h>
+
+#define REPEAT_BYTE(x)((~0ul / 0xff) * (x))
+
+#define CONFIG_DRAM_CLK 552
+#define CONFIG_DRAM_ZQ 3881949
+
+#define SUNXI_CCM_BASE                    0x01c20000
+#define SUNXI_DRAM_COM_BASE               0x01c62000
+#define SUNXI_DRAM_CTL0_BASE              0x01c63000
+#define SUNXI_DRAM_CTL1_BASE              0x01c64000
+#define SUNXI_DRAM_PHY0_BASE              0x01c65000
+#define SUNXI_DRAM_PHY1_BASE              0x01c66000
+#define SUNXI_SRAMC_BASE          0x01c00000
+
+#define SOCID_A64	0x1689
+#define SOCID_H3	0x1680
+#define SOCID_H5	0x1718
+#define SOCID_R40	0x1701
+
+/* dram regs definition */
+#include "dram_sunxi_dw.h"
+
+/* clock regs definition */
+#include "clock_sun6i.h"
+
+#if defined CONFIG_SUNXI_DRAM_DDR3
+#include "ddr3_1333.c"
+#elif defined CONFIG_SUNXI_DRAM_LPDDR3
+#include "lpddr3_stock.c"
+#else
+#error Unsupported DRAM type!
+#endif
+
+static void clock_set_pll11(unsigned int clk, bool sigma_delta_enable)
+{
+	struct sunxi_ccm_reg * const ccm = (void *)SUNXI_CCM_BASE;
+
+	if (sigma_delta_enable)
+		writel(CCM_PLL11_PATTERN, &ccm->pll11_pattern_cfg0);
+
+	writel(CCM_PLL11_CTRL_EN | CCM_PLL11_CTRL_UPD |
+	       (sigma_delta_enable ? CCM_PLL11_CTRL_SIGMA_DELTA_EN : 0) |
+	       CCM_PLL11_CTRL_N(clk / 24000000), &ccm->pll11_cfg);
+
+	while (readl(&ccm->pll11_cfg) & CCM_PLL11_CTRL_UPD)
+		;
+}
+
+static void clock_set_pll5(unsigned int clk, bool sigma_delta_enable)
+{
+	struct sunxi_ccm_reg * const ccm = (void *)SUNXI_CCM_BASE;
+
+	if (sigma_delta_enable)
+		writel(CCM_PLL5_PATTERN, &ccm->pll5_pattern_cfg);
+
+	writel(CCM_PLL5_CTRL_EN | CCM_PLL5_CTRL_UPD |
+	       (sigma_delta_enable ? CCM_PLL5_CTRL_SIGMA_DELTA_EN : 0) |
+	       CCM_PLL5_CTRL_N(clk / 24000000), &ccm->pll5_cfg);
+
+	while (readl(&ccm->pll5_cfg) & CCM_PLL5_CTRL_UPD)
+		;
+}
+
+/*
+ * Wait up to 1s for value to be set in given part of reg.
+ */
+static void mctl_await_completion(u32 *reg, u32 mask, u32 val)
+{
+	int ms = 1000;
+
+	while ((readl(reg) & mask) != val) {
+		mdelay(1);
+		if (ms-- <= 0) {
+			putc_ll('!');
+			panic("Timeout initialising DRAM\n");
+		}
+	}
+}
+
+static void mctl_phy_init(u32 val)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	writel(val | PIR_INIT, &mctl_ctl->pir);
+	mctl_await_completion(&mctl_ctl->pgsr[0], PGSR_INIT_DONE, 0x1);
+}
+
+static void mctl_set_bit_delays(struct dram_para *para)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+	int i, j;
+
+	clrbits_le32(&mctl_ctl->pgcr[0], 1 << 26);
+
+	for (i = 0; i < NR_OF_BYTE_LANES; i++)
+		for (j = 0; j < LINES_PER_BYTE_LANE; j++)
+			writel(DXBDLR_WRITE_DELAY(para->dx_write_delays[i][j]) |
+			       DXBDLR_READ_DELAY(para->dx_read_delays[i][j]),
+			       &mctl_ctl->dx[i].bdlr[j]);
+
+	for (i = 0; i < 31; i++)
+		writel(ACBDLR_WRITE_DELAY(para->ac_delays[i]),
+		       &mctl_ctl->acbdlr[i]);
+
+#ifdef CONFIG_MACH_SUN8I_R40
+	/* DQSn, DMn, DQn output enable bit delay */
+	for (i = 0; i < 4; i++)
+		writel(0x6 << 24, &mctl_ctl->dx[i].sdlr);
+#endif
+
+	setbits_le32(&mctl_ctl->pgcr[0], 1 << 26);
+}
+
+enum {
+	MBUS_PORT_CPU           = 0,
+	MBUS_PORT_GPU           = 1,
+	MBUS_PORT_UNUSED	= 2,
+	MBUS_PORT_DMA           = 3,
+	MBUS_PORT_VE            = 4,
+	MBUS_PORT_CSI           = 5,
+	MBUS_PORT_NAND          = 6,
+	MBUS_PORT_SS            = 7,
+	MBUS_PORT_TS            = 8,
+	MBUS_PORT_DI            = 9,
+	MBUS_PORT_DE            = 10,
+	MBUS_PORT_DE_CFD        = 11,
+	MBUS_PORT_UNKNOWN1	= 12,
+	MBUS_PORT_UNKNOWN2	= 13,
+	MBUS_PORT_UNKNOWN3	= 14,
+};
+
+enum {
+	MBUS_QOS_LOWEST = 0,
+	MBUS_QOS_LOW,
+	MBUS_QOS_HIGH,
+	MBUS_QOS_HIGHEST
+};
+
+static inline void mbus_configure_port(u8 port,
+				       bool bwlimit,
+				       bool priority,
+				       u8 qos,         /* MBUS_QOS_LOWEST .. MBUS_QOS_HIGEST */
+				       u8 waittime,    /* 0 .. 0xf */
+				       u8 acs,         /* 0 .. 0xff */
+				       u16 bwl0,       /* 0 .. 0xffff, bandwidth limit in MB/s */
+				       u16 bwl1,
+				       u16 bwl2)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	const u32 cfg0 = ( (bwlimit ? (1 << 0) : 0)
+			   | (priority ? (1 << 1) : 0)
+			   | ((qos & 0x3) << 2)
+			   | ((waittime & 0xf) << 4)
+			   | ((acs & 0xff) << 8)
+			   | (bwl0 << 16) );
+	const u32 cfg1 = ((u32)bwl2 << 16) | (bwl1 & 0xffff);
+
+	//debug("MBUS port %d cfg0 %08x cfg1 %08x\n", port, cfg0, cfg1);
+	writel(cfg0, &mctl_com->mcr[port][0]);
+	writel(cfg1, &mctl_com->mcr[port][1]);
+}
+
+#define MBUS_CONF(port, bwlimit, qos, acs, bwl0, bwl1, bwl2)	\
+	mbus_configure_port(MBUS_PORT_ ## port, bwlimit, false, \
+			    MBUS_QOS_ ## qos, 0, acs, bwl0, bwl1, bwl2)
+
+static void mctl_set_master_priority_h3(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel((1 << 16) | (400 << 0), &mctl_com->bwcr);
+
+	/* set cpu high priority */
+	writel(0x00000001, &mctl_com->mapr);
+
+	MBUS_CONF(   CPU,  true, HIGHEST, 0,  512,  256,  128);
+	MBUS_CONF(   GPU,  true,    HIGH, 0, 1536, 1024,  256);
+	MBUS_CONF(UNUSED,  true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(   DMA,  true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(    VE,  true,    HIGH, 0, 1792, 1600,  256);
+	MBUS_CONF(   CSI,  true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(  NAND,  true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(    SS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    TS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    DI,  true,    HIGH, 0, 1024,  256,   64);
+	MBUS_CONF(    DE,  true, HIGHEST, 3, 8192, 6120, 1024);
+	MBUS_CONF(DE_CFD,  true,    HIGH, 0, 1024,  288,   64);
+}
+
+static void mctl_set_master_priority_a64(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel(399, &mctl_com->tmr);
+	writel((1 << 16), &mctl_com->bwcr);
+
+	/* Port 2 is reserved per Allwinner's linux-3.10 source, yet they
+	 * initialise it */
+	MBUS_CONF(   CPU,  true, HIGHEST, 0,  160,  100,   80);
+	MBUS_CONF(   GPU, false,    HIGH, 0, 1536, 1400,  256);
+	MBUS_CONF(UNUSED,  true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(   DMA,  true,    HIGH, 0,  256,   80,  100);
+	MBUS_CONF(    VE,  true,    HIGH, 0, 1792, 1600,  256);
+	MBUS_CONF(   CSI,  true,    HIGH, 0,  256,  128,    0);
+	MBUS_CONF(  NAND,  true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(    SS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    TS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    DI,  true,    HIGH, 0, 1024,  256,   64);
+	MBUS_CONF(    DE,  true,    HIGH, 2, 8192, 6144, 2048);
+	MBUS_CONF(DE_CFD,  true,    HIGH, 0, 1280,  144,   64);
+
+	writel(0x81000004, &mctl_com->mdfs_bwlr[2]);
+}
+
+static void mctl_set_master_priority_h5(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel(399, &mctl_com->tmr);
+	writel((1 << 16), &mctl_com->bwcr);
+
+	/* set cpu high priority */
+	writel(0x00000001, &mctl_com->mapr);
+
+	/* Port 2 is reserved per Allwinner's linux-3.10 source, yet
+	 * they initialise it */
+	MBUS_CONF(   CPU, true, HIGHEST, 0,  300,  260,  150);
+	MBUS_CONF(   GPU, true, HIGHEST, 0,  600,  400,  200);
+	MBUS_CONF(UNUSED, true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(   DMA, true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(    VE, true, HIGHEST, 0, 1900, 1500, 1000);
+	MBUS_CONF(   CSI, true, HIGHEST, 0,  150,  120,  100);
+	MBUS_CONF(  NAND, true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(    SS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    TS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    DI, true,    HIGH, 0, 1024,  256,   64);
+	MBUS_CONF(    DE, true, HIGHEST, 3, 3400, 2400, 1024);
+	MBUS_CONF(DE_CFD, true, HIGHEST, 0,  600,  400,  200);
+}
+
+static void mctl_set_master_priority_r40(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel(399, &mctl_com->tmr);
+	writel((1 << 16), &mctl_com->bwcr);
+
+	/* set cpu high priority */
+	writel(0x00000001, &mctl_com->mapr);
+
+	/* Port 2 is reserved per Allwinner's linux-3.10 source, yet
+	 * they initialise it */
+	MBUS_CONF(     CPU, true, HIGHEST, 0,  300,  260,  150);
+	MBUS_CONF(     GPU, true, HIGHEST, 0,  600,  400,  200);
+	MBUS_CONF(  UNUSED, true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(     DMA, true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(      VE, true, HIGHEST, 0, 1900, 1500, 1000);
+	MBUS_CONF(     CSI, true, HIGHEST, 0,  150,  120,  100);
+	MBUS_CONF(    NAND, true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(      SS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(      TS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(      DI, true,    HIGH, 0, 1024,  256,   64);
+
+	/*
+	 * The port names are probably wrong, but no correct sources
+	 * are available.
+	 */
+	MBUS_CONF(      DE, true,    HIGH, 0,  128,   48,    0);
+	MBUS_CONF(  DE_CFD, true,    HIGH, 0,  384,  256,    0);
+	MBUS_CONF(UNKNOWN1, true, HIGHEST, 0,  512,  384,  256);
+	MBUS_CONF(UNKNOWN2, true, HIGHEST, 2, 8192, 6144, 1024);
+	MBUS_CONF(UNKNOWN3, true,    HIGH, 0, 1280,  144,   64);
+}
+
+static void mctl_set_master_priority(uint16_t socid)
+{
+	switch (socid) {
+	case SOCID_H3:
+		mctl_set_master_priority_h3();
+		return;
+	case SOCID_A64:
+		mctl_set_master_priority_a64();
+		return;
+	case SOCID_H5:
+		mctl_set_master_priority_h5();
+		return;
+	case SOCID_R40:
+		mctl_set_master_priority_r40();
+		return;
+	}
+}
+
+static u32 bin_to_mgray(int val)
+{
+	static const u8 lookup_table[32] = {
+		0x00, 0x01, 0x02, 0x03, 0x06, 0x07, 0x04, 0x05,
+		0x0c, 0x0d, 0x0e, 0x0f, 0x0a, 0x0b, 0x08, 0x09,
+		0x18, 0x19, 0x1a, 0x1b, 0x1e, 0x1f, 0x1c, 0x1d,
+		0x14, 0x15, 0x16, 0x17, 0x12, 0x13, 0x10, 0x11,
+	};
+
+	return lookup_table[clamp(val, 0, 31)];
+}
+
+static int mgray_to_bin(u32 val)
+{
+	static const u8 lookup_table[32] = {
+		0x00, 0x01, 0x02, 0x03, 0x06, 0x07, 0x04, 0x05,
+		0x0e, 0x0f, 0x0c, 0x0d, 0x08, 0x09, 0x0a, 0x0b,
+		0x1e, 0x1f, 0x1c, 0x1d, 0x18, 0x19, 0x1a, 0x1b,
+		0x10, 0x11, 0x12, 0x13, 0x16, 0x17, 0x14, 0x15,
+	};
+
+	return lookup_table[val & 0x1f];
+}
+
+static void mctl_h3_zq_calibration_quirk(struct dram_para *para)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+	int zq_count;
+
+#if defined CONFIG_SUNXI_DRAM_DW_16BIT
+	zq_count = 4;
+#else
+	zq_count = 6;
+#endif
+
+	if ((readl(SUNXI_SRAMC_BASE + 0x24) & 0xff) == 0 &&
+	    (readl(SUNXI_SRAMC_BASE + 0xf0) & 0x1) == 0) {
+		u32 reg_val;
+
+		clrsetbits_le32(&mctl_ctl->zqcr, 0xffff,
+				CONFIG_DRAM_ZQ & 0xffff);
+
+		writel(PIR_CLRSR, &mctl_ctl->pir);
+		mctl_phy_init(PIR_ZCAL);
+
+		reg_val = readl(&mctl_ctl->zqdr[0]);
+		reg_val &= (0x1f << 16) | (0x1f << 0);
+		reg_val |= reg_val << 8;
+		writel(reg_val, &mctl_ctl->zqdr[0]);
+
+		reg_val = readl(&mctl_ctl->zqdr[1]);
+		reg_val &= (0x1f << 16) | (0x1f << 0);
+		reg_val |= reg_val << 8;
+		writel(reg_val, &mctl_ctl->zqdr[1]);
+		writel(reg_val, &mctl_ctl->zqdr[2]);
+	} else {
+		int i;
+		u16 zq_val[6];
+		u8 val;
+
+		writel(0x0a0a0a0a, &mctl_ctl->zqdr[2]);
+
+		for (i = 0; i < zq_count; i++) {
+			u8 zq = (CONFIG_DRAM_ZQ >> (i * 4)) & 0xf;
+
+			writel((zq << 20) | (zq << 16) | (zq << 12) |
+					(zq << 8) | (zq << 4) | (zq << 0),
+					&mctl_ctl->zqcr);
+
+			writel(PIR_CLRSR, &mctl_ctl->pir);
+			mctl_phy_init(PIR_ZCAL);
+
+			zq_val[i] = readl(&mctl_ctl->zqdr[0]) & 0xff;
+			writel(REPEAT_BYTE(zq_val[i]), &mctl_ctl->zqdr[2]);
+
+			writel(PIR_CLRSR, &mctl_ctl->pir);
+			mctl_phy_init(PIR_ZCAL);
+
+			val = readl(&mctl_ctl->zqdr[0]) >> 24;
+			zq_val[i] |= bin_to_mgray(mgray_to_bin(val) - 1) << 8;
+		}
+
+		writel((zq_val[1] << 16) | zq_val[0], &mctl_ctl->zqdr[0]);
+		writel((zq_val[3] << 16) | zq_val[2], &mctl_ctl->zqdr[1]);
+		if (zq_count > 4)
+			writel((zq_val[5] << 16) | zq_val[4],
+			       &mctl_ctl->zqdr[2]);
+	}
+}
+
+static void mctl_set_cr(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	writel(MCTL_CR_BL8 | MCTL_CR_INTERLEAVED |
+#if defined CONFIG_SUNXI_DRAM_DDR3
+	       MCTL_CR_DDR3 | MCTL_CR_2T |
+#elif defined CONFIG_SUNXI_DRAM_DDR2
+	       MCTL_CR_DDR2 | MCTL_CR_2T |
+#elif defined CONFIG_SUNXI_DRAM_LPDDR3
+	       MCTL_CR_LPDDR3 | MCTL_CR_1T |
+#else
+#error Unsupported DRAM type!
+#endif
+	       (para->ranks[0].bank_bits == 3 ? MCTL_CR_EIGHT_BANKS : MCTL_CR_FOUR_BANKS) |
+	       MCTL_CR_BUS_FULL_WIDTH(para->bus_full_width) |
+	       (para->dual_rank ? MCTL_CR_DUAL_RANK : MCTL_CR_SINGLE_RANK) |
+	       MCTL_CR_PAGE_SIZE(para->ranks[0].page_size) |
+	       MCTL_CR_ROW_BITS(para->ranks[0].row_bits), &mctl_com->cr);
+
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		writel((para->ranks[1].bank_bits == 3 ? MCTL_CR_EIGHT_BANKS : MCTL_CR_FOUR_BANKS) |
+		       MCTL_CR_BUS_FULL_WIDTH(para->bus_full_width) |
+		       (para->dual_rank ? MCTL_CR_DUAL_RANK : MCTL_CR_SINGLE_RANK) |
+		       MCTL_CR_PAGE_SIZE(para->ranks[1].page_size) |
+		       MCTL_CR_ROW_BITS(para->ranks[1].row_bits), &mctl_com->cr_r1);
+	}
+
+	if (socid == SOCID_R40) {
+		/* Mux pin to A15 address line for single rank memory. */
+		if (!para->dual_rank)
+			setbits_le32(&mctl_com->cr_r1, MCTL_CR_R1_MUX_A15);
+	}
+}
+
+static void mctl_sys_init(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_ccm_reg * const ccm =
+			(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	clrbits_le32(&ccm->mbus0_clk_cfg, MBUS_CLK_GATE);
+	clrbits_le32(&ccm->mbus_reset, CCM_MBUS_RESET_RESET);
+	clrbits_le32(&ccm->ahb_gate0, 1 << AHB_GATE_OFFSET_MCTL);
+	clrbits_le32(&ccm->ahb_reset0_cfg, 1 << AHB_RESET_OFFSET_MCTL);
+	clrbits_le32(&ccm->pll5_cfg, CCM_PLL5_CTRL_EN);
+
+	if (socid == SOCID_A64 || socid == SOCID_R40)
+		clrbits_le32(&ccm->pll11_cfg, CCM_PLL11_CTRL_EN);
+	udelay(10);
+
+	clrbits_le32(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_RST);
+	udelay(1000);
+
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		clock_set_pll11(CONFIG_DRAM_CLK * 2 * 1000000, false);
+		clrsetbits_le32(&ccm->dram_clk_cfg,
+				CCM_DRAMCLK_CFG_DIV_MASK |
+				CCM_DRAMCLK_CFG_SRC_MASK,
+				CCM_DRAMCLK_CFG_DIV(1) |
+				CCM_DRAMCLK_CFG_SRC_PLL11 |
+				CCM_DRAMCLK_CFG_UPD);
+	} else if (socid == SOCID_H3 || socid == SOCID_H5) {
+		clock_set_pll5(CONFIG_DRAM_CLK * 2 * 1000000, false);
+		clrsetbits_le32(&ccm->dram_clk_cfg,
+				CCM_DRAMCLK_CFG_DIV_MASK |
+				CCM_DRAMCLK_CFG_SRC_MASK,
+				CCM_DRAMCLK_CFG_DIV(1) |
+				CCM_DRAMCLK_CFG_SRC_PLL5 |
+				CCM_DRAMCLK_CFG_UPD);
+	}
+
+	/* SDRCLK Configuration Update.
+	 * Note: Set this bit will validate Configuration.
+	 * It will be auto cleared after the Configuration is valid.
+	 */
+	mctl_await_completion(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_UPD, 0);
+
+	setbits_le32(&ccm->ahb_reset0_cfg, 1 << AHB_RESET_OFFSET_MCTL);
+	setbits_le32(&ccm->ahb_gate0, 1 << AHB_GATE_OFFSET_MCTL);
+	setbits_le32(&ccm->mbus_reset, CCM_MBUS_RESET_RESET);
+	setbits_le32(&ccm->mbus0_clk_cfg, MBUS_CLK_GATE);
+
+	setbits_le32(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_RST);
+	udelay(10);
+
+	writel(socid == SOCID_H5 ? 0x8000 : 0xc00e, &mctl_ctl->clken);
+	udelay(500);
+}
+
+/* These are more guessed based on some Allwinner code. */
+#define DX_GCR_ODT_DYNAMIC	(0x0 << 4)
+#define DX_GCR_ODT_ALWAYS_ON	(0x1 << 4)
+#define DX_GCR_ODT_OFF		(0x2 << 4)
+
+static int mctl_channel_init(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	unsigned int i;
+
+	mctl_set_cr(socid, para);
+	mctl_set_timing_params(socid, para);
+	mctl_set_master_priority(socid);
+
+	/* setting VTC, default disable all VT */
+	clrbits_le32(&mctl_ctl->pgcr[0], (1 << 30) | 0x3f);
+	if (socid == SOCID_H5)
+		setbits_le32(&mctl_ctl->pgcr[1], (1 << 24) | (1 << 26));
+	else
+		clrsetbits_le32(&mctl_ctl->pgcr[1], 1 << 24, 1 << 26);
+
+	/* increase DFI_PHY_UPD clock */
+	writel(PROTECT_MAGIC, &mctl_com->protect);
+	udelay(100);
+	clrsetbits_le32(&mctl_ctl->upd2, 0xfff << 16, 0x50 << 16);
+	writel(0x0, &mctl_com->protect);
+	udelay(100);
+
+	/* set dramc odt */
+	for (i = 0; i < 4; i++) {
+		u32 clearmask = (0x3 << 4) | (0x1 << 1) | (0x3 << 2) |
+				(0x3 << 12) | (0x3 << 14);
+		u32 setmask = IS_ENABLED(CONFIG_DRAM_ODT_EN) ?
+				DX_GCR_ODT_DYNAMIC : DX_GCR_ODT_OFF;
+
+		if (socid == SOCID_H5) {
+			clearmask |= 0x2 << 8;
+			setmask |= 0x4 << 8;
+		}
+		clrsetbits_le32(&mctl_ctl->dx[i].gcr, clearmask, setmask);
+	}
+
+	/* AC PDR should always ON */
+	clrsetbits_le32(&mctl_ctl->aciocr, socid == SOCID_H5 ? (0x1 << 11) : 0,
+			0x1 << 1);
+
+	/* set DQS auto gating PD mode */
+	setbits_le32(&mctl_ctl->pgcr[2], 0x3 << 6);
+
+	if (socid == SOCID_H3) {
+		/* dx ddr_clk & hdr_clk dynamic mode */
+		clrbits_le32(&mctl_ctl->pgcr[0], (0x3 << 14) | (0x3 << 12));
+
+		/* dphy & aphy phase select 270 degree */
+		clrsetbits_le32(&mctl_ctl->pgcr[2], (0x3 << 10) | (0x3 << 8),
+				(0x1 << 10) | (0x2 << 8));
+	} else if (socid == SOCID_A64 || socid == SOCID_H5) {
+		/* dphy & aphy phase select ? */
+		clrsetbits_le32(&mctl_ctl->pgcr[2], (0x3 << 10) | (0x3 << 8),
+				(0x0 << 10) | (0x3 << 8));
+	} else if (socid == SOCID_R40) {
+		/* dx ddr_clk & hdr_clk dynamic mode (tpr13[9] == 0) */
+		clrbits_le32(&mctl_ctl->pgcr[0], (0x3 << 14) | (0x3 << 12));
+
+		/* dphy & aphy phase select ? */
+		clrsetbits_le32(&mctl_ctl->pgcr[2], (0x3 << 10) | (0x3 << 8),
+				(0x0 << 10) | (0x3 << 8));
+	}
+
+	/* set half DQ */
+	if (!para->bus_full_width) {
+#if defined CONFIG_SUNXI_DRAM_DW_32BIT
+		writel(0x0, &mctl_ctl->dx[2].gcr);
+		writel(0x0, &mctl_ctl->dx[3].gcr);
+#elif defined CONFIG_SUNXI_DRAM_DW_16BIT
+		writel(0x0, &mctl_ctl->dx[1].gcr);
+#else
+#error Unsupported DRAM bus width!
+#endif
+	}
+
+	/* data training configuration */
+	clrsetbits_le32(&mctl_ctl->dtcr, 0xf << 24,
+			(para->dual_rank ? 0x3 : 0x1) << 24);
+
+	mctl_set_bit_delays(para);
+	udelay(50);
+
+	if (socid == SOCID_H3) {
+		mctl_h3_zq_calibration_quirk(para);
+
+		mctl_phy_init(PIR_PLLINIT | PIR_DCAL | PIR_PHYRST |
+			      PIR_DRAMRST | PIR_DRAMINIT | PIR_QSGATE);
+	} else if (socid == SOCID_A64 || socid == SOCID_H5) {
+		clrsetbits_le32(&mctl_ctl->zqcr, 0xffffff, CONFIG_DRAM_ZQ);
+
+		mctl_phy_init(PIR_ZCAL | PIR_PLLINIT | PIR_DCAL | PIR_PHYRST |
+			      PIR_DRAMRST | PIR_DRAMINIT | PIR_QSGATE);
+		/* no PIR_QSGATE for H5 ???? */
+	} else if (socid == SOCID_R40) {
+		clrsetbits_le32(&mctl_ctl->zqcr, 0xffffff, CONFIG_DRAM_ZQ);
+
+		mctl_phy_init(PIR_ZCAL | PIR_PLLINIT | PIR_DCAL | PIR_PHYRST |
+			      PIR_DRAMRST | PIR_DRAMINIT);
+	}
+
+	/* detect ranks and bus width */
+	if (readl(&mctl_ctl->pgsr[0]) & (0xfe << 20)) {
+		/* only one rank */
+		if (((readl(&mctl_ctl->dx[0].gsr[0]) >> 24) & 0x2)
+#if defined CONFIG_SUNXI_DRAM_DW_32BIT
+		    || ((readl(&mctl_ctl->dx[1].gsr[0]) >> 24) & 0x2)
+#endif
+		    ) {
+			clrsetbits_le32(&mctl_ctl->dtcr, 0xf << 24, 0x1 << 24);
+			para->dual_rank = 0;
+		}
+
+		/* only half DQ width */
+#if defined CONFIG_SUNXI_DRAM_DW_32BIT
+		if (((readl(&mctl_ctl->dx[2].gsr[0]) >> 24) & 0x1) ||
+		    ((readl(&mctl_ctl->dx[3].gsr[0]) >> 24) & 0x1)) {
+			writel(0x0, &mctl_ctl->dx[2].gcr);
+			writel(0x0, &mctl_ctl->dx[3].gcr);
+			para->bus_full_width = 0;
+		}
+#elif defined CONFIG_SUNXI_DRAM_DW_16BIT
+		if ((readl(&mctl_ctl->dx[1].gsr[0]) >> 24) & 0x1) {
+			writel(0x0, &mctl_ctl->dx[1].gcr);
+			para->bus_full_width = 0;
+		}
+#endif
+
+		mctl_set_cr(socid, para);
+		udelay(20);
+
+		/* re-train */
+		mctl_phy_init(PIR_QSGATE);
+		if (readl(&mctl_ctl->pgsr[0]) & (0xfe << 20))
+			return 1;
+	}
+
+	/* check the dramc status */
+	mctl_await_completion(&mctl_ctl->statr, 0x1, 0x1);
+
+	/* liuke added for refresh debug */
+	setbits_le32(&mctl_ctl->rfshctl0, 0x1 << 31);
+	udelay(10);
+	clrbits_le32(&mctl_ctl->rfshctl0, 0x1 << 31);
+	udelay(10);
+
+	/* set PGCR3, CKE polarity */
+	if (socid == SOCID_H3)
+		writel(0x00aa0060, &mctl_ctl->pgcr[3]);
+	else if (socid == SOCID_A64 || socid == SOCID_H5 || socid == SOCID_R40)
+		writel(0xc0aa0060, &mctl_ctl->pgcr[3]);
+
+	/* power down zq calibration module for power save */
+	setbits_le32(&mctl_ctl->zqcr, ZQCR_PWRDOWN);
+
+	/* enable master access */
+	writel(0xffffffff, &mctl_com->maer);
+
+	return 0;
+}
+
+/*
+ * Test if memory at offset offset matches memory at a certain base
+ */
+static bool mctl_mem_matches_base(u32 offset, ulong base)
+{
+	/* Try to write different values to RAM at two addresses */
+	writel(0, base);
+	writel(0xaa55aa55, base + offset);
+	dsb();
+	/* Check if the same value is actually observed when reading back */
+	return readl(base) ==
+	       readl(base + offset);
+}
+
+static void mctl_auto_detect_dram_size_rank(uint16_t socid, struct dram_para *para, ulong base, struct rank_para *rank)
+{
+	/* detect row address bits */
+	rank->page_size = 512;
+	rank->row_bits = 16;
+	rank->bank_bits = 2;
+	mctl_set_cr(socid, para);
+
+	for (rank->row_bits = 11; rank->row_bits < 16; rank->row_bits++)
+		if (mctl_mem_matches_base((1 << (rank->row_bits + rank->bank_bits)) * rank->page_size, base))
+			break;
+
+	/* detect bank address bits */
+	rank->bank_bits = 3;
+	mctl_set_cr(socid, para);
+
+	for (rank->bank_bits = 2; rank->bank_bits < 3; rank->bank_bits++)
+		if (mctl_mem_matches_base((1 << rank->bank_bits) * rank->page_size, base))
+			break;
+
+	/* detect page size */
+	rank->page_size = 8192;
+	mctl_set_cr(socid, para);
+
+	for (rank->page_size = 512; rank->page_size < 8192; rank->page_size *= 2)
+		if (mctl_mem_matches_base(rank->page_size, base))
+			break;
+}
+
+static unsigned long mctl_calc_rank_size(struct rank_para *rank)
+{
+	return (1UL << (rank->row_bits + rank->bank_bits)) * rank->page_size;
+}
+
+static void mctl_auto_detect_dram_size(uint16_t socid, struct dram_para *para)
+{
+	mctl_auto_detect_dram_size_rank(socid, para, (ulong)CONFIG_SYS_SDRAM_BASE, &para->ranks[0]);
+
+	if ((socid == SOCID_A64 || socid == SOCID_R40) && para->dual_rank) {
+		mctl_auto_detect_dram_size_rank(socid, para, (ulong)CONFIG_SYS_SDRAM_BASE + mctl_calc_rank_size(&para->ranks[0]), &para->ranks[1]);
+	}
+}
+
+/*
+ * The actual values used here are taken from Allwinner provided boot0
+ * binaries, though they are probably board specific, so would likely benefit
+ * from invidual tuning for each board. Apparently a lot of boards copy from
+ * some Allwinner reference design, so we go with those generic values for now
+ * in the hope that they are reasonable for most (all?) boards.
+ */
+#define SUN8I_H3_DX_READ_DELAYS					\
+	{{ 18, 18, 18, 18, 18, 18, 18, 18, 18,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 18, 18, 18, 18, 18, 18, 18, 18, 18,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 }}
+#define SUN8I_H3_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  6 }}
+#define SUN8I_H3_AC_DELAYS					\
+	{  0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0      }
+
+#define SUN8I_R40_DX_READ_DELAYS				\
+	{{ 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 } }
+#define SUN8I_R40_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 } }
+#define SUN8I_R40_AC_DELAYS					\
+	{  0,  0,  3,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0      }
+
+#define SUN50I_A64_DX_READ_DELAYS				\
+	{{ 16, 16, 16, 16, 17, 16, 16, 17, 16,  1,  0 },	\
+	 { 17, 17, 17, 17, 17, 17, 17, 17, 17,  1,  0 },	\
+	 { 16, 17, 17, 16, 16, 16, 16, 16, 16,  0,  0 },	\
+	 { 17, 17, 17, 17, 17, 17, 17, 17, 17,  1,  0 }}
+#define SUN50I_A64_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0, 15, 15 },	\
+	 {  0,  0,  0,  0,  1,  1,  1,  1,  0, 10, 10 },	\
+	 {  1,  0,  1,  1,  1,  1,  1,  1,  0, 11, 11 },	\
+	 {  1,  0,  0,  1,  1,  1,  1,  1,  0, 12, 12 }}
+#define SUN50I_A64_AC_DELAYS					\
+	{  5,  5, 13, 10,  2,  5,  3,  3,			\
+	   0,  3,  3,  3,  1,  0,  0,  0,			\
+	   3,  4,  0,  3,  4,  1,  4,  0,			\
+	   1,  1,  0,  1, 13,  5,  4      }
+
+#define SUN8I_H5_DX_READ_DELAYS					\
+	{{ 14, 15, 17, 17, 17, 17, 17, 18, 17,  3,  3 },	\
+	 { 21, 21, 12, 22, 21, 21, 21, 21, 21,  3,  3 },	\
+	 { 16, 19, 19, 17, 22, 22, 21, 22, 19,  3,  3 },	\
+	 { 21, 21, 22, 22, 20, 21, 19, 19, 19,  3,  3 } }
+#define SUN8I_H5_DX_WRITE_DELAYS				\
+	{{  1,  2,  3,  4,  3,  4,  4,  4,  6,  6,  6 },	\
+	 {  6,  6,  6,  5,  5,  5,  5,  5,  6,  6,  6 },	\
+	 {  0,  2,  4,  2,  6,  5,  5,  5,  6,  6,  6 },	\
+	 {  3,  3,  3,  2,  2,  1,  1,  1,  4,  4,  4 } }
+#define SUN8I_H5_AC_DELAYS					\
+	{  0,  0,  5,  5,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  3,  3,  3,  3,			\
+	   3,  3,  3,  3,  3,  3,  3,  3,			\
+	   3,  3,  3,  3,  2,  0,  0      }
+
+unsigned long sunxi_dram_init(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	unsigned long size;
+
+	struct dram_para para = {
+		.dual_rank = 1,
+		.bus_full_width = 1,
+		.ranks = {
+			{
+				.row_bits = 15,
+				.bank_bits = 3,
+				.page_size = 4096,
+			},
+			{
+				.row_bits = 15,
+				.bank_bits = 3,
+				.page_size = 4096,
+			}
+		},
+
+#if defined(CONFIG_MACH_SUN8I_H3)
+		.dx_read_delays  = SUN8I_H3_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_H3_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_H3_AC_DELAYS,
+#elif defined(CONFIG_MACH_SUN8I_R40)
+		.dx_read_delays  = SUN8I_R40_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_R40_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_R40_AC_DELAYS,
+#elif defined(CONFIG_MACH_SUN50I)
+		.dx_read_delays  = SUN50I_A64_DX_READ_DELAYS,
+		.dx_write_delays = SUN50I_A64_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN50I_A64_AC_DELAYS,
+#elif defined(CONFIG_MACH_SUN50I_H5)
+		.dx_read_delays  = SUN8I_H5_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_H5_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_H5_AC_DELAYS,
+#endif
+	};
+/*
+ * Let the compiler optimize alternatives away by passing this value into
+ * the static functions. This saves us #ifdefs, but still keeps the binary
+ * small.
+ */
+#if defined(CONFIG_MACH_SUN8I_H3)
+	uint16_t socid = SOCID_H3;
+#elif defined(CONFIG_MACH_SUN8I_R40)
+	uint16_t socid = SOCID_R40;
+	/* Currently we cannot support R40 with dual rank memory */
+	para.dual_rank = 0;
+#elif defined(CONFIG_MACH_SUN8I_V3S)
+	/* TODO: set delays and mbus priority for V3s */
+	uint16_t socid = SOCID_H3;
+#elif defined(CONFIG_MACH_SUN50I)
+	uint16_t socid = SOCID_A64;
+#elif defined(CONFIG_MACH_SUN50I_H5)
+	uint16_t socid = SOCID_H5;
+#endif
+
+	mctl_sys_init(socid, &para);
+	if (mctl_channel_init(socid, &para))
+		return 0;
+
+	if (para.dual_rank)
+		writel(0x00000303, &mctl_ctl->odtmap);
+	else
+		writel(0x00000201, &mctl_ctl->odtmap);
+	udelay(1);
+
+	/* odt delay */
+	if (socid == SOCID_H3)
+		writel(0x0c000400, &mctl_ctl->odtcfg);
+
+	if (socid == SOCID_A64 || socid == SOCID_H5 || socid == SOCID_R40) {
+		/* VTF enable (tpr13[8] == 1) */
+		setbits_le32(&mctl_ctl->vtfcr,
+			     (socid != SOCID_A64 ? 3 : 2) << 8);
+		/* DQ hold disable (tpr13[26] == 1) */
+		clrbits_le32(&mctl_ctl->pgcr[2], (1 << 13));
+	}
+
+	/* clear credit value */
+	setbits_le32(&mctl_com->cccr, 1 << 31);
+	udelay(10);
+
+	mctl_auto_detect_dram_size(socid, &para);
+	mctl_set_cr(socid, &para);
+
+	size = mctl_calc_rank_size(&para.ranks[0]);
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		if (para.dual_rank)
+			size += mctl_calc_rank_size(&para.ranks[1]);
+	} else if (para.dual_rank) {
+		size *= 2;
+	}
+
+	return size;
+}
diff --git a/arch/arm/mach-sunxi/sunxi-sdram.c b/arch/arm/mach-sunxi/sunxi-sdram.c
new file mode 100644
index 0000000000..49382e40cd
--- /dev/null
+++ b/arch/arm/mach-sunxi/sunxi-sdram.c
@@ -0,0 +1,1007 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * sun8i H3 platform dram controller init
+ *
+ * (C) Copyright 2007-2015 Allwinner Technology Co.
+ *                         Jerry Wang <wangflord@allwinnertech.com>
+ * (C) Copyright 2015      Vishnu Patekar <vishnupatekar0510@gmail.com>
+ * (C) Copyright 2015      Hans de Goede <hdegoede@redhat.com>
+ * (C) Copyright 2015      Jens Kuske <jenskuske@gmail.com>
+ */
+#include <common.h>
+#include <asm/io.h>
+#include <clock.h>
+
+#include <mach/sunxi/init.h>
+
+#if defined(CONFIG_MACH_SUN50I_A64)
+#define CONFIG_MACH_SUN50I CONFIG_MACH_SUN50I_A64
+#endif
+
+static void mctl_phy_init(u32 val)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	writel(val | PIR_INIT, &mctl_ctl->pir);
+	mctl_await_completion(&mctl_ctl->pgsr[0], PGSR_INIT_DONE, 0x1);
+}
+
+static void mctl_set_bit_delays(struct dram_para *para)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+	int i, j;
+
+	clrbits_le32(&mctl_ctl->pgcr[0], 1 << 26);
+
+	for (i = 0; i < NR_OF_BYTE_LANES; i++)
+		for (j = 0; j < LINES_PER_BYTE_LANE; j++)
+			writel(DXBDLR_WRITE_DELAY(para->dx_write_delays[i][j]) |
+			       DXBDLR_READ_DELAY(para->dx_read_delays[i][j]),
+			       &mctl_ctl->dx[i].bdlr[j]);
+
+	for (i = 0; i < 31; i++)
+		writel(ACBDLR_WRITE_DELAY(para->ac_delays[i]),
+		       &mctl_ctl->acbdlr[i]);
+
+#ifdef CONFIG_MACH_SUN8I_R40
+	/* DQSn, DMn, DQn output enable bit delay */
+	for (i = 0; i < 4; i++)
+		writel(0x6 << 24, &mctl_ctl->dx[i].sdlr);
+#endif
+
+	setbits_le32(&mctl_ctl->pgcr[0], 1 << 26);
+}
+
+enum {
+	MBUS_PORT_CPU           = 0,
+	MBUS_PORT_GPU           = 1,
+	MBUS_PORT_UNUSED	= 2,
+	MBUS_PORT_DMA           = 3,
+	MBUS_PORT_VE            = 4,
+	MBUS_PORT_CSI           = 5,
+	MBUS_PORT_NAND          = 6,
+	MBUS_PORT_SS            = 7,
+	MBUS_PORT_TS            = 8,
+	MBUS_PORT_DI            = 9,
+	MBUS_PORT_DE            = 10,
+	MBUS_PORT_DE_CFD        = 11,
+	MBUS_PORT_UNKNOWN1	= 12,
+	MBUS_PORT_UNKNOWN2	= 13,
+	MBUS_PORT_UNKNOWN3	= 14,
+};
+
+enum {
+	MBUS_QOS_LOWEST = 0,
+	MBUS_QOS_LOW,
+	MBUS_QOS_HIGH,
+	MBUS_QOS_HIGHEST
+};
+
+static inline void mbus_configure_port(u8 port,
+				       bool bwlimit,
+				       bool priority,
+				       u8 qos,         /* MBUS_QOS_LOWEST .. MBUS_QOS_HIGEST */
+				       u8 waittime,    /* 0 .. 0xf */
+				       u8 acs,         /* 0 .. 0xff */
+				       u16 bwl0,       /* 0 .. 0xffff, bandwidth limit in MB/s */
+				       u16 bwl1,
+				       u16 bwl2)
+{
+	struct sunxi_mctl_com_reg *const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	const u32 cfg0 = ( (bwlimit ? (1 << 0) : 0)
+			   | (priority ? (1 << 1) : 0)
+			   | ((qos & 0x3) << 2)
+			   | ((waittime & 0xf) << 4)
+			   | ((acs & 0xff) << 8)
+			   | (bwl0 << 16) );
+	const u32 cfg1 = ((u32)bwl2 << 16) | (bwl1 & 0xffff);
+
+	writel(cfg0, &mctl_com->mcr[port][0]);
+	writel(cfg1, &mctl_com->mcr[port][1]);
+}
+
+#define MBUS_CONF(port, bwlimit, qos, acs, bwl0, bwl1, bwl2)	\
+	mbus_configure_port(MBUS_PORT_ ## port, bwlimit, false, \
+			    MBUS_QOS_ ## qos, 0, acs, bwl0, bwl1, bwl2)
+
+static void mctl_set_master_priority_h3(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel((1 << 16) | (400 << 0), &mctl_com->bwcr);
+
+	/* set cpu high priority */
+	writel(0x00000001, &mctl_com->mapr);
+
+	MBUS_CONF(   CPU,  true, HIGHEST, 0,  512,  256,  128);
+	MBUS_CONF(   GPU,  true,    HIGH, 0, 1536, 1024,  256);
+	MBUS_CONF(UNUSED,  true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(   DMA,  true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(    VE,  true,    HIGH, 0, 1792, 1600,  256);
+	MBUS_CONF(   CSI,  true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(  NAND,  true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(    SS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    TS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    DI,  true,    HIGH, 0, 1024,  256,   64);
+	MBUS_CONF(    DE,  true, HIGHEST, 3, 8192, 6120, 1024);
+	MBUS_CONF(DE_CFD,  true,    HIGH, 0, 1024,  288,   64);
+}
+
+static void mctl_set_master_priority_a64(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel(399, &mctl_com->tmr);
+	writel((1 << 16), &mctl_com->bwcr);
+
+	/* Port 2 is reserved per Allwinner's linux-3.10 source, yet they
+	 * initialise it */
+	MBUS_CONF(   CPU,  true, HIGHEST, 0,  160,  100,   80);
+	MBUS_CONF(   GPU, false,    HIGH, 0, 1536, 1400,  256);
+	MBUS_CONF(UNUSED,  true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(   DMA,  true,    HIGH, 0,  256,   80,  100);
+	MBUS_CONF(    VE,  true,    HIGH, 0, 1792, 1600,  256);
+	MBUS_CONF(   CSI,  true,    HIGH, 0,  256,  128,    0);
+	MBUS_CONF(  NAND,  true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(    SS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    TS,  true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    DI,  true,    HIGH, 0, 1024,  256,   64);
+	MBUS_CONF(    DE,  true,    HIGH, 2, 8192, 6144, 2048);
+	MBUS_CONF(DE_CFD,  true,    HIGH, 0, 1280,  144,   64);
+
+	writel(0x81000004, &mctl_com->mdfs_bwlr[2]);
+}
+
+static void mctl_set_master_priority_h5(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel(399, &mctl_com->tmr);
+	writel((1 << 16), &mctl_com->bwcr);
+
+	/* set cpu high priority */
+	writel(0x00000001, &mctl_com->mapr);
+
+	/* Port 2 is reserved per Allwinner's linux-3.10 source, yet
+	 * they initialise it */
+	MBUS_CONF(   CPU, true, HIGHEST, 0,  300,  260,  150);
+	MBUS_CONF(   GPU, true, HIGHEST, 0,  600,  400,  200);
+	MBUS_CONF(UNUSED, true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(   DMA, true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(    VE, true, HIGHEST, 0, 1900, 1500, 1000);
+	MBUS_CONF(   CSI, true, HIGHEST, 0,  150,  120,  100);
+	MBUS_CONF(  NAND, true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(    SS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    TS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(    DI, true,    HIGH, 0, 1024,  256,   64);
+	MBUS_CONF(    DE, true, HIGHEST, 3, 3400, 2400, 1024);
+	MBUS_CONF(DE_CFD, true, HIGHEST, 0,  600,  400,  200);
+}
+
+static void mctl_set_master_priority_r40(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	/* enable bandwidth limit windows and set windows size 1us */
+	writel(399, &mctl_com->tmr);
+	writel((1 << 16), &mctl_com->bwcr);
+
+	/* set cpu high priority */
+	writel(0x00000001, &mctl_com->mapr);
+
+	/* Port 2 is reserved per Allwinner's linux-3.10 source, yet
+	 * they initialise it */
+	MBUS_CONF(     CPU, true, HIGHEST, 0,  300,  260,  150);
+	MBUS_CONF(     GPU, true, HIGHEST, 0,  600,  400,  200);
+	MBUS_CONF(  UNUSED, true, HIGHEST, 0,  512,  256,   96);
+	MBUS_CONF(     DMA, true, HIGHEST, 0,  256,  128,   32);
+	MBUS_CONF(      VE, true, HIGHEST, 0, 1900, 1500, 1000);
+	MBUS_CONF(     CSI, true, HIGHEST, 0,  150,  120,  100);
+	MBUS_CONF(    NAND, true,    HIGH, 0,  256,  128,   64);
+	MBUS_CONF(      SS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(      TS, true, HIGHEST, 0,  256,  128,   64);
+	MBUS_CONF(      DI, true,    HIGH, 0, 1024,  256,   64);
+
+	/*
+	 * The port names are probably wrong, but no correct sources
+	 * are available.
+	 */
+	MBUS_CONF(      DE, true,    HIGH, 0,  128,   48,    0);
+	MBUS_CONF(  DE_CFD, true,    HIGH, 0,  384,  256,    0);
+	MBUS_CONF(UNKNOWN1, true, HIGHEST, 0,  512,  384,  256);
+	MBUS_CONF(UNKNOWN2, true, HIGHEST, 2, 8192, 6144, 1024);
+	MBUS_CONF(UNKNOWN3, true,    HIGH, 0, 1280,  144,   64);
+}
+
+static void mctl_set_master_priority(uint16_t socid)
+{
+	switch (socid) {
+	case SOCID_H3:
+		mctl_set_master_priority_h3();
+		return;
+	case SOCID_A64:
+		mctl_set_master_priority_a64();
+		return;
+	case SOCID_H5:
+		mctl_set_master_priority_h5();
+		return;
+	case SOCID_R40:
+		mctl_set_master_priority_r40();
+		return;
+	}
+}
+
+static u32 bin_to_mgray(int val)
+{
+	static const u8 lookup_table[32] = {
+		0x00, 0x01, 0x02, 0x03, 0x06, 0x07, 0x04, 0x05,
+		0x0c, 0x0d, 0x0e, 0x0f, 0x0a, 0x0b, 0x08, 0x09,
+		0x18, 0x19, 0x1a, 0x1b, 0x1e, 0x1f, 0x1c, 0x1d,
+		0x14, 0x15, 0x16, 0x17, 0x12, 0x13, 0x10, 0x11,
+	};
+
+	return lookup_table[clamp(val, 0, 31)];
+}
+
+static int mgray_to_bin(u32 val)
+{
+	static const u8 lookup_table[32] = {
+		0x00, 0x01, 0x02, 0x03, 0x06, 0x07, 0x04, 0x05,
+		0x0e, 0x0f, 0x0c, 0x0d, 0x08, 0x09, 0x0a, 0x0b,
+		0x1e, 0x1f, 0x1c, 0x1d, 0x18, 0x19, 0x1a, 0x1b,
+		0x10, 0x11, 0x12, 0x13, 0x16, 0x17, 0x14, 0x15,
+	};
+
+	return lookup_table[val & 0x1f];
+}
+
+static void mctl_h3_zq_calibration_quirk(struct dram_para *para)
+{
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+	int zq_count;
+
+#if defined CONFIG_SUNXI_DRAM_DW_16BIT
+	zq_count = 4;
+#else
+	zq_count = 6;
+#endif
+
+	if ((readl(SUNXI_SRAMC_BASE + 0x24) & 0xff) == 0 &&
+	    (readl(SUNXI_SRAMC_BASE + 0xf0) & 0x1) == 0) {
+		u32 reg_val;
+
+		clrsetbits_le32(&mctl_ctl->zqcr, 0xffff,
+				CONFIG_DRAM_ZQ & 0xffff);
+
+		writel(PIR_CLRSR, &mctl_ctl->pir);
+		mctl_phy_init(PIR_ZCAL);
+
+		reg_val = readl(&mctl_ctl->zqdr[0]);
+		reg_val &= (0x1f << 16) | (0x1f << 0);
+		reg_val |= reg_val << 8;
+		writel(reg_val, &mctl_ctl->zqdr[0]);
+
+		reg_val = readl(&mctl_ctl->zqdr[1]);
+		reg_val &= (0x1f << 16) | (0x1f << 0);
+		reg_val |= reg_val << 8;
+		writel(reg_val, &mctl_ctl->zqdr[1]);
+		writel(reg_val, &mctl_ctl->zqdr[2]);
+	} else {
+		int i;
+		u16 zq_val[6];
+		u8 val;
+
+		writel(0x0a0a0a0a, &mctl_ctl->zqdr[2]);
+
+		for (i = 0; i < zq_count; i++) {
+			u8 zq = (CONFIG_DRAM_ZQ >> (i * 4)) & 0xf;
+
+			writel((zq << 20) | (zq << 16) | (zq << 12) |
+					(zq << 8) | (zq << 4) | (zq << 0),
+					&mctl_ctl->zqcr);
+
+			writel(PIR_CLRSR, &mctl_ctl->pir);
+			mctl_phy_init(PIR_ZCAL);
+
+			zq_val[i] = readl(&mctl_ctl->zqdr[0]) & 0xff;
+			writel(REPEAT_BYTE(zq_val[i]), &mctl_ctl->zqdr[2]);
+
+			writel(PIR_CLRSR, &mctl_ctl->pir);
+			mctl_phy_init(PIR_ZCAL);
+
+			val = readl(&mctl_ctl->zqdr[0]) >> 24;
+			zq_val[i] |= bin_to_mgray(mgray_to_bin(val) - 1) << 8;
+		}
+
+		writel((zq_val[1] << 16) | zq_val[0], &mctl_ctl->zqdr[0]);
+		writel((zq_val[3] << 16) | zq_val[2], &mctl_ctl->zqdr[1]);
+		if (zq_count > 4)
+			writel((zq_val[5] << 16) | zq_val[4],
+			       &mctl_ctl->zqdr[2]);
+	}
+}
+
+static void mctl_set_cr(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+
+	writel(MCTL_CR_BL8 | MCTL_CR_INTERLEAVED |
+#if defined CONFIG_SUNXI_DRAM_DDR3
+	       MCTL_CR_DDR3 | MCTL_CR_2T |
+#elif defined CONFIG_SUNXI_DRAM_DDR2
+	       MCTL_CR_DDR2 | MCTL_CR_2T |
+#elif defined CONFIG_SUNXI_DRAM_LPDDR3
+	       MCTL_CR_LPDDR3 | MCTL_CR_1T |
+#else
+#error Unsupported DRAM type!
+#endif
+	       (para->ranks[0].bank_bits == 3 ? MCTL_CR_EIGHT_BANKS : MCTL_CR_FOUR_BANKS) |
+	       MCTL_CR_BUS_FULL_WIDTH(para->bus_full_width) |
+	       (para->dual_rank ? MCTL_CR_DUAL_RANK : MCTL_CR_SINGLE_RANK) |
+	       MCTL_CR_PAGE_SIZE(para->ranks[0].page_size) |
+	       MCTL_CR_ROW_BITS(para->ranks[0].row_bits), &mctl_com->cr);
+
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		writel((para->ranks[1].bank_bits == 3 ? MCTL_CR_EIGHT_BANKS : MCTL_CR_FOUR_BANKS) |
+		       MCTL_CR_BUS_FULL_WIDTH(para->bus_full_width) |
+		       (para->dual_rank ? MCTL_CR_DUAL_RANK : MCTL_CR_SINGLE_RANK) |
+		       MCTL_CR_PAGE_SIZE(para->ranks[1].page_size) |
+		       MCTL_CR_ROW_BITS(para->ranks[1].row_bits), &mctl_com->cr_r1);
+	}
+
+	if (socid == SOCID_R40) {
+		/* Mux pin to A15 address line for single rank memory. */
+		if (!para->dual_rank)
+			setbits_le32(&mctl_com->cr_r1, MCTL_CR_R1_MUX_A15);
+	}
+}
+
+static void mctl_sys_init(uint16_t socid)
+{
+	struct sunxi_ccm_reg *const ccm =
+			(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
+	struct sunxi_mctl_ctl_reg *const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	clrbits_le32(&ccm->mbus0_clk_cfg, MBUS_CLK_GATE);
+	clrbits_le32(&ccm->mbus_reset, CCM_MBUS_RESET_RESET);
+	clrbits_le32(&ccm->ahb_gate0, 1 << AHB_GATE_OFFSET_MCTL);
+	clrbits_le32(&ccm->ahb_reset0_cfg, 1 << AHB_RESET_OFFSET_MCTL);
+	clrbits_le32(&ccm->pll5_cfg, CCM_PLL5_CTRL_EN);
+	if (socid == SOCID_A64 || socid == SOCID_R40)
+		clrbits_le32(&ccm->pll11_cfg, CCM_PLL11_CTRL_EN);
+	udelay(10);
+
+	clrbits_le32(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_RST);
+	udelay(1000);
+
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		clock_set_pll11(CONFIG_DRAM_CLK * 2 * 1000000, false);
+		clrsetbits_le32(&ccm->dram_clk_cfg,
+				CCM_DRAMCLK_CFG_DIV_MASK |
+				CCM_DRAMCLK_CFG_SRC_MASK,
+				CCM_DRAMCLK_CFG_DIV(1) |
+				CCM_DRAMCLK_CFG_SRC_PLL11 |
+				CCM_DRAMCLK_CFG_UPD);
+	} else if (socid == SOCID_H3 || socid == SOCID_H5) {
+		clock_set_pll5(CONFIG_DRAM_CLK * 2 * 1000000, false);
+		clrsetbits_le32(&ccm->dram_clk_cfg,
+				CCM_DRAMCLK_CFG_DIV_MASK |
+				CCM_DRAMCLK_CFG_SRC_MASK,
+				CCM_DRAMCLK_CFG_DIV(1) |
+				CCM_DRAMCLK_CFG_SRC_PLL5 |
+				CCM_DRAMCLK_CFG_UPD);
+	}
+	mctl_await_completion(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_UPD, 0);
+
+	setbits_le32(&ccm->ahb_reset0_cfg, 1 << AHB_RESET_OFFSET_MCTL);
+	setbits_le32(&ccm->ahb_gate0, 1 << AHB_GATE_OFFSET_MCTL);
+	setbits_le32(&ccm->mbus_reset, CCM_MBUS_RESET_RESET);
+	setbits_le32(&ccm->mbus0_clk_cfg, MBUS_CLK_GATE);
+
+	setbits_le32(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_RST);
+	udelay(10);
+
+	writel(socid == SOCID_H5 ? 0x8000 : 0xc00e, &mctl_ctl->clken);
+	udelay(500);
+}
+
+/* These are more guessed based on some Allwinner code. */
+#define DX_GCR_ODT_DYNAMIC	(0x0 << 4)
+#define DX_GCR_ODT_ALWAYS_ON	(0x1 << 4)
+#define DX_GCR_ODT_OFF		(0x2 << 4)
+
+static int mctl_channel_init(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	unsigned int i;
+
+	mctl_set_cr(socid, para);
+	mctl_set_timing_params(socid, para);
+	mctl_set_master_priority(socid);
+
+	/* setting VTC, default disable all VT */
+	clrbits_le32(&mctl_ctl->pgcr[0], (1 << 30) | 0x3f);
+	if (socid == SOCID_H5)
+		setbits_le32(&mctl_ctl->pgcr[1], (1 << 24) | (1 << 26));
+	else
+		clrsetbits_le32(&mctl_ctl->pgcr[1], 1 << 24, 1 << 26);
+
+	/* increase DFI_PHY_UPD clock */
+	writel(PROTECT_MAGIC, &mctl_com->protect);
+	udelay(100);
+	clrsetbits_le32(&mctl_ctl->upd2, 0xfff << 16, 0x50 << 16);
+	writel(0x0, &mctl_com->protect);
+	udelay(100);
+
+	/* set dramc odt */
+	for (i = 0; i < 4; i++) {
+		u32 clearmask = (0x3 << 4) | (0x1 << 1) | (0x3 << 2) |
+				(0x3 << 12) | (0x3 << 14);
+		u32 setmask = IS_ENABLED(CONFIG_DRAM_ODT_EN) ?
+				DX_GCR_ODT_DYNAMIC : DX_GCR_ODT_OFF;
+
+		if (socid == SOCID_H5) {
+			clearmask |= 0x2 << 8;
+			setmask |= 0x4 << 8;
+		}
+		clrsetbits_le32(&mctl_ctl->dx[i].gcr, clearmask, setmask);
+	}
+
+	/* AC PDR should always ON */
+	clrsetbits_le32(&mctl_ctl->aciocr, socid == SOCID_H5 ? (0x1 << 11) : 0,
+			0x1 << 1);
+
+	/* set DQS auto gating PD mode */
+	setbits_le32(&mctl_ctl->pgcr[2], 0x3 << 6);
+
+	if (socid == SOCID_H3) {
+		/* dx ddr_clk & hdr_clk dynamic mode */
+		clrbits_le32(&mctl_ctl->pgcr[0], (0x3 << 14) | (0x3 << 12));
+
+		/* dphy & aphy phase select 270 degree */
+		clrsetbits_le32(&mctl_ctl->pgcr[2], (0x3 << 10) | (0x3 << 8),
+				(0x1 << 10) | (0x2 << 8));
+	} else if (socid == SOCID_A64 || socid == SOCID_H5) {
+		/* dphy & aphy phase select ? */
+		clrsetbits_le32(&mctl_ctl->pgcr[2], (0x3 << 10) | (0x3 << 8),
+				(0x0 << 10) | (0x3 << 8));
+	} else if (socid == SOCID_R40) {
+		/* dx ddr_clk & hdr_clk dynamic mode (tpr13[9] == 0) */
+		clrbits_le32(&mctl_ctl->pgcr[0], (0x3 << 14) | (0x3 << 12));
+
+		/* dphy & aphy phase select ? */
+		clrsetbits_le32(&mctl_ctl->pgcr[2], (0x3 << 10) | (0x3 << 8),
+				(0x0 << 10) | (0x3 << 8));
+	}
+
+	/* set half DQ */
+	if (!para->bus_full_width) {
+#if defined CONFIG_SUNXI_DRAM_DW_32BIT
+		writel(0x0, &mctl_ctl->dx[2].gcr);
+		writel(0x0, &mctl_ctl->dx[3].gcr);
+#elif defined CONFIG_SUNXI_DRAM_DW_16BIT
+		writel(0x0, &mctl_ctl->dx[1].gcr);
+#else
+#error Unsupported DRAM bus width!
+#endif
+	}
+
+	/* data training configuration */
+	clrsetbits_le32(&mctl_ctl->dtcr, 0xf << 24,
+			(para->dual_rank ? 0x3 : 0x1) << 24);
+
+	mctl_set_bit_delays(para);
+	udelay(50);
+
+	if (socid == SOCID_H3) {
+		mctl_h3_zq_calibration_quirk(para);
+
+		mctl_phy_init(PIR_PLLINIT | PIR_DCAL | PIR_PHYRST |
+			      PIR_DRAMRST | PIR_DRAMINIT | PIR_QSGATE);
+	} else if (socid == SOCID_A64 || socid == SOCID_H5) {
+		clrsetbits_le32(&mctl_ctl->zqcr, 0xffffff, CONFIG_DRAM_ZQ);
+
+		mctl_phy_init(PIR_ZCAL | PIR_PLLINIT | PIR_DCAL | PIR_PHYRST |
+			      PIR_DRAMRST | PIR_DRAMINIT | PIR_QSGATE);
+		/* no PIR_QSGATE for H5 ???? */
+	} else if (socid == SOCID_R40) {
+		clrsetbits_le32(&mctl_ctl->zqcr, 0xffffff, CONFIG_DRAM_ZQ);
+
+		mctl_phy_init(PIR_ZCAL | PIR_PLLINIT | PIR_DCAL | PIR_PHYRST |
+			      PIR_DRAMRST | PIR_DRAMINIT);
+	}
+
+	/* detect ranks and bus width */
+	if (readl(&mctl_ctl->pgsr[0]) & (0xfe << 20)) {
+		/* only one rank */
+		if (((readl(&mctl_ctl->dx[0].gsr[0]) >> 24) & 0x2)
+#if defined CONFIG_SUNXI_DRAM_DW_32BIT
+		    || ((readl(&mctl_ctl->dx[1].gsr[0]) >> 24) & 0x2)
+#endif
+		    ) {
+			clrsetbits_le32(&mctl_ctl->dtcr, 0xf << 24, 0x1 << 24);
+			para->dual_rank = 0;
+		}
+
+		/* only half DQ width */
+#if defined CONFIG_SUNXI_DRAM_DW_32BIT
+		if (((readl(&mctl_ctl->dx[2].gsr[0]) >> 24) & 0x1) ||
+		    ((readl(&mctl_ctl->dx[3].gsr[0]) >> 24) & 0x1)) {
+			writel(0x0, &mctl_ctl->dx[2].gcr);
+			writel(0x0, &mctl_ctl->dx[3].gcr);
+			para->bus_full_width = 0;
+		}
+#elif defined CONFIG_SUNXI_DRAM_DW_16BIT
+		if ((readl(&mctl_ctl->dx[1].gsr[0]) >> 24) & 0x1) {
+			writel(0x0, &mctl_ctl->dx[1].gcr);
+			para->bus_full_width = 0;
+		}
+#endif
+
+		mctl_set_cr(socid, para);
+		udelay(20);
+
+		/* re-train */
+		mctl_phy_init(PIR_QSGATE);
+		if (readl(&mctl_ctl->pgsr[0]) & (0xfe << 20))
+			return 1;
+	}
+
+	/* check the dramc status */
+	mctl_await_completion(&mctl_ctl->statr, 0x1, 0x1);
+
+	/* liuke added for refresh debug */
+	setbits_le32(&mctl_ctl->rfshctl0, 0x1 << 31);
+	udelay(10);
+	clrbits_le32(&mctl_ctl->rfshctl0, 0x1 << 31);
+	udelay(10);
+
+	/* set PGCR3, CKE polarity */
+	if (socid == SOCID_H3)
+		writel(0x00aa0060, &mctl_ctl->pgcr[3]);
+	else if (socid == SOCID_A64 || socid == SOCID_H5 || socid == SOCID_R40)
+		writel(0xc0aa0060, &mctl_ctl->pgcr[3]);
+
+	/* power down zq calibration module for power save */
+	setbits_le32(&mctl_ctl->zqcr, ZQCR_PWRDOWN);
+
+	/* enable master access */
+	writel(0xffffffff, &mctl_com->maer);
+
+	return 0;
+}
+
+/*
+ * The actual values used here are taken from Allwinner provided boot0
+ * binaries, though they are probably board specific, so would likely benefit
+ * from invidual tuning for each board. Apparently a lot of boards copy from
+ * some Allwinner reference design, so we go with those generic values for now
+ * in the hope that they are reasonable for most (all?) boards.
+ */
+#define SUN8I_H3_DX_READ_DELAYS					\
+	{{ 18, 18, 18, 18, 18, 18, 18, 18, 18,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 18, 18, 18, 18, 18, 18, 18, 18, 18,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 }}
+#define SUN8I_H3_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  6 }}
+#define SUN8I_H3_AC_DELAYS					\
+	{  0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0      }
+
+#define SUN8I_R40_DX_READ_DELAYS				\
+	{{ 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 } }
+#define SUN8I_R40_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 } }
+#define SUN8I_R40_AC_DELAYS					\
+	{  0,  0,  3,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0      }
+
+#define SUN50I_A64_DX_READ_DELAYS				\
+	{{ 16, 16, 16, 16, 17, 16, 16, 17, 16,  1,  0 },	\
+	 { 17, 17, 17, 17, 17, 17, 17, 17, 17,  1,  0 },	\
+	 { 16, 17, 17, 16, 16, 16, 16, 16, 16,  0,  0 },	\
+	 { 17, 17, 17, 17, 17, 17, 17, 17, 17,  1,  0 }}
+#define SUN50I_A64_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0, 15, 15 },	\
+	 {  0,  0,  0,  0,  1,  1,  1,  1,  0, 10, 10 },	\
+	 {  1,  0,  1,  1,  1,  1,  1,  1,  0, 11, 11 },	\
+	 {  1,  0,  0,  1,  1,  1,  1,  1,  0, 12, 12 }}
+#define SUN50I_A64_AC_DELAYS					\
+	{  5,  5, 13, 10,  2,  5,  3,  3,			\
+	   0,  3,  3,  3,  1,  0,  0,  0,			\
+	   3,  4,  0,  3,  4,  1,  4,  0,			\
+	   1,  1,  0,  1, 13,  5,  4      }
+
+#define SUN8I_H5_DX_READ_DELAYS					\
+	{{ 14, 15, 17, 17, 17, 17, 17, 18, 17,  3,  3 },	\
+	 { 21, 21, 12, 22, 21, 21, 21, 21, 21,  3,  3 },	\
+	 { 16, 19, 19, 17, 22, 22, 21, 22, 19,  3,  3 },	\
+	 { 21, 21, 22, 22, 20, 21, 19, 19, 19,  3,  3 } }
+#define SUN8I_H5_DX_WRITE_DELAYS				\
+	{{  1,  2,  3,  4,  3,  4,  4,  4,  6,  6,  6 },	\
+	 {  6,  6,  6,  5,  5,  5,  5,  5,  6,  6,  6 },	\
+	 {  0,  2,  4,  2,  6,  5,  5,  5,  6,  6,  6 },	\
+	 {  3,  3,  3,  2,  2,  1,  1,  1,  4,  4,  4 } }
+#define SUN8I_H5_AC_DELAYS					\
+	{  0,  0,  5,  5,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  3,  3,  3,  3,			\
+	   3,  3,  3,  3,  3,  3,  3,  3,			\
+	   3,  3,  3,  3,  2,  0,  0      }
+
+unsigned long sunxi_dram_init(void)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+	unsigned long size;
+	struct dram_para para = {
+		.dual_rank = 1,
+		.bus_full_width = 1,
+		.ranks = {
+			{
+				.row_bits = 15,
+				.bank_bits = 3,
+				.page_size = 4096,
+			},
+			{
+				.row_bits = 15,
+				.bank_bits = 3,
+				.page_size = 4096,
+			}
+		},
+#if defined(CONFIG_MACH_SUN8I_H3)
+		.dx_read_delays  = SUN8I_H3_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_H3_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_H3_AC_DELAYS,
+#elif defined(CONFIG_MACH_SUN8I_R40)
+		.dx_read_delays  = SUN8I_R40_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_R40_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_R40_AC_DELAYS,
+#elif defined(CONFIG_MACH_SUN50I)
+		.dx_read_delays  = SUN50I_A64_DX_READ_DELAYS,
+		.dx_write_delays = SUN50I_A64_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN50I_A64_AC_DELAYS,
+#elif defined(CONFIG_MACH_SUN50I_H5)
+		.dx_read_delays  = SUN8I_H5_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_H5_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_H5_AC_DELAYS,
+#endif
+	};
+/*
+ * Let the compiler optimize alternatives away by passing this value into
+ * the static functions. This saves us #ifdefs, but still keeps the binary
+ * small.
+ */
+#if defined(CONFIG_MACH_SUN8I_H3)
+	uint16_t socid = SOCID_H3;
+#elif defined(CONFIG_MACH_SUN8I_R40)
+	uint16_t socid = SOCID_R40;
+	/* Currently we cannot support R40 with dual rank memory */
+	para.dual_rank = 0;
+#elif defined(CONFIG_MACH_SUN8I_V3S)
+	/* TODO: set delays and mbus priority for V3s */
+	uint16_t socid = SOCID_H3;
+#elif defined(CONFIG_MACH_SUN50I)
+	uint16_t socid = SOCID_A64;
+#elif defined(CONFIG_MACH_SUN50I_H5)
+	uint16_t socid = SOCID_H5;
+#endif
+
+	mctl_sys_init(socid, &para);
+	if (mctl_channel_init(socid, &para))
+		return 0;
+
+	if (para.dual_rank)
+		writel(0x00000303, &mctl_ctl->odtmap);
+	else
+		writel(0x00000201, &mctl_ctl->odtmap);
+	udelay(1);
+
+	/* odt delay */
+	if (socid == SOCID_H3)
+		writel(0x0c000400, &mctl_ctl->odtcfg);
+
+	if (socid == SOCID_A64 || socid == SOCID_H5 || socid == SOCID_R40) {
+		/* VTF enable (tpr13[8] == 1) */
+		setbits_le32(&mctl_ctl->vtfcr,
+			     (socid != SOCID_A64 ? 3 : 2) << 8);
+		/* DQ hold disable (tpr13[26] == 1) */
+		clrbits_le32(&mctl_ctl->pgcr[2], (1 << 13));
+	}
+
+	/* clear credit value */
+	setbits_le32(&mctl_com->cccr, 1 << 31);
+	udelay(10);
+
+	mctl_set_cr(socid, &para);
+
+	return 0;
+}
+
+
+static void mctl_sys_init(uint16_t socid)
+{
+	struct sunxi_ccm_reg *const ccm =
+			(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;
+	struct sunxi_mctl_ctl_reg *const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	clrbits_le32(&ccm->mbus0_clk_cfg, MBUS_CLK_GATE);
+	clrbits_le32(&ccm->mbus_reset, CCM_MBUS_RESET_RESET);
+	clrbits_le32(&ccm->ahb_gate0, 1 << AHB_GATE_OFFSET_MCTL);
+	clrbits_le32(&ccm->ahb_reset0_cfg, 1 << AHB_RESET_OFFSET_MCTL);
+	clrbits_le32(&ccm->pll5_cfg, CCM_PLL5_CTRL_EN);
+	if (socid == SOCID_A64 || socid == SOCID_R40)
+		clrbits_le32(&ccm->pll11_cfg, CCM_PLL11_CTRL_EN);
+	udelay(10);
+
+	clrbits_le32(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_RST);
+	udelay(1000);
+
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		clock_set_pll11(CONFIG_DRAM_CLK * 2 * 1000000, false);
+		clrsetbits_le32(&ccm->dram_clk_cfg,
+				CCM_DRAMCLK_CFG_DIV_MASK |
+				CCM_DRAMCLK_CFG_SRC_MASK,
+				CCM_DRAMCLK_CFG_DIV(1) |
+				CCM_DRAMCLK_CFG_SRC_PLL11 |
+				CCM_DRAMCLK_CFG_UPD);
+	} else if (socid == SOCID_H3 || socid == SOCID_H5) {
+		clock_set_pll5(CONFIG_DRAM_CLK * 2 * 1000000, false);
+		clrsetbits_le32(&ccm->dram_clk_cfg,
+				CCM_DRAMCLK_CFG_DIV_MASK |
+				CCM_DRAMCLK_CFG_SRC_MASK,
+				CCM_DRAMCLK_CFG_DIV(1) |
+				CCM_DRAMCLK_CFG_SRC_PLL5 |
+				CCM_DRAMCLK_CFG_UPD);
+	}
+	mctl_await_completion(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_UPD, 0);
+
+	setbits_le32(&ccm->ahb_reset0_cfg, 1 << AHB_RESET_OFFSET_MCTL);
+	setbits_le32(&ccm->ahb_gate0, 1 << AHB_GATE_OFFSET_MCTL);
+	setbits_le32(&ccm->mbus_reset, CCM_MBUS_RESET_RESET);
+	setbits_le32(&ccm->mbus0_clk_cfg, MBUS_CLK_GATE);
+
+	setbits_le32(&ccm->dram_clk_cfg, CCM_DRAMCLK_CFG_RST);
+	udelay(10);
+
+	writel(socid == SOCID_H5 ? 0x8000 : 0xc00e, &mctl_ctl->clken);
+	udelay(500);
+}
+
+void sunxi_dram_cfg(void)
+{
+	mctl_sys_init(socid);
+	if (mctl_channel_init(socid, &para))
+		return 0;
+
+}
+
+/* ------------------------------------------------------------ */
+
+static inline unsigned long sunxi_dram_init(uint16_t socid, struct dram_para *para)
+{
+	struct sunxi_mctl_com_reg * const mctl_com =
+			(struct sunxi_mctl_com_reg *)SUNXI_DRAM_COM_BASE;
+	struct sunxi_mctl_ctl_reg * const mctl_ctl =
+			(struct sunxi_mctl_ctl_reg *)SUNXI_DRAM_CTL0_BASE;
+
+	unsigned long size;
+
+	mctl_sys_init(socid, para);
+	if (mctl_channel_init(socid, para))
+		return 0;
+
+	if (para->dual_rank)
+		writel(0x00000303, &mctl_ctl->odtmap);
+	else
+		writel(0x00000201, &mctl_ctl->odtmap);
+	udelay(1);
+
+	/* odt delay */
+	if (socid == SOCID_H3)
+		writel(0x0c000400, &mctl_ctl->odtcfg);
+
+	if (socid == SOCID_A64 || socid == SOCID_H5 || socid == SOCID_R40) {
+		/* VTF enable (tpr13[8] == 1) */
+		setbits_le32(&mctl_ctl->vtfcr,
+			     (socid != SOCID_A64 ? 3 : 2) << 8);
+		/* DQ hold disable (tpr13[26] == 1) */
+		clrbits_le32(&mctl_ctl->pgcr[2], (1 << 13));
+	}
+
+	/* clear credit value */
+	setbits_le32(&mctl_com->cccr, 1 << 31);
+	udelay(10);
+
+	mctl_auto_detect_dram_size(socid, para);
+	mctl_set_cr(socid, para);
+
+	size = mctl_calc_rank_size(&para->ranks[0]);
+	if (socid == SOCID_A64 || socid == SOCID_R40) {
+		if (para->dual_rank)
+			size += mctl_calc_rank_size(&para->ranks[1]);
+	} else if (para->dual_rank) {
+		size *= 2;
+	}
+
+	return size;
+}
+
+/*
+ * The actual values used here are taken from Allwinner provided boot0
+ * binaries, though they are probably board specific, so would likely benefit
+ * from invidual tuning for each board. Apparently a lot of boards copy from
+ * some Allwinner reference design, so we go with those generic values for now
+ * in the hope that they are reasonable for most (all?) boards.
+ */
+#define SUN8I_H3_DX_READ_DELAYS					\
+	{{ 18, 18, 18, 18, 18, 18, 18, 18, 18,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 18, 18, 18, 18, 18, 18, 18, 18, 18,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 }}
+#define SUN8I_H3_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0, 10, 10 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  6 }}
+#define SUN8I_H3_AC_DELAYS					\
+	{  0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0      }
+
+#define SUN8I_R40_DX_READ_DELAYS				\
+	{{ 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 },	\
+	 { 14, 14, 14, 14, 14, 14, 14, 14, 14,  0,  0 } }
+#define SUN8I_R40_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 },	\
+	 {  0,  0,  0,  0,  0,  0,  0,  0,  0,  6,  0 } }
+#define SUN8I_R40_AC_DELAYS					\
+	{  0,  0,  3,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  0,  0,  0      }
+
+#define SUN50I_A64_DX_READ_DELAYS				\
+	{{ 16, 16, 16, 16, 17, 16, 16, 17, 16,  1,  0 },	\
+	 { 17, 17, 17, 17, 17, 17, 17, 17, 17,  1,  0 },	\
+	 { 16, 17, 17, 16, 16, 16, 16, 16, 16,  0,  0 },	\
+	 { 17, 17, 17, 17, 17, 17, 17, 17, 17,  1,  0 }}
+#define SUN50I_A64_DX_WRITE_DELAYS				\
+	{{  0,  0,  0,  0,  0,  0,  0,  0,  0, 15, 15 },	\
+	 {  0,  0,  0,  0,  1,  1,  1,  1,  0, 10, 10 },	\
+	 {  1,  0,  1,  1,  1,  1,  1,  1,  0, 11, 11 },	\
+	 {  1,  0,  0,  1,  1,  1,  1,  1,  0, 12, 12 }}
+#define SUN50I_A64_AC_DELAYS					\
+	{  5,  5, 13, 10,  2,  5,  3,  3,			\
+	   0,  3,  3,  3,  1,  0,  0,  0,			\
+	   3,  4,  0,  3,  4,  1,  4,  0,			\
+	   1,  1,  0,  1, 13,  5,  4      }
+
+#define SUN8I_H5_DX_READ_DELAYS					\
+	{{ 14, 15, 17, 17, 17, 17, 17, 18, 17,  3,  3 },	\
+	 { 21, 21, 12, 22, 21, 21, 21, 21, 21,  3,  3 },	\
+	 { 16, 19, 19, 17, 22, 22, 21, 22, 19,  3,  3 },	\
+	 { 21, 21, 22, 22, 20, 21, 19, 19, 19,  3,  3 } }
+#define SUN8I_H5_DX_WRITE_DELAYS				\
+	{{  1,  2,  3,  4,  3,  4,  4,  4,  6,  6,  6 },	\
+	 {  6,  6,  6,  5,  5,  5,  5,  5,  6,  6,  6 },	\
+	 {  0,  2,  4,  2,  6,  5,  5,  5,  6,  6,  6 },	\
+	 {  3,  3,  3,  2,  2,  1,  1,  1,  4,  4,  4 } }
+#define SUN8I_H5_AC_DELAYS					\
+	{  0,  0,  5,  5,  0,  0,  0,  0,			\
+	   0,  0,  0,  0,  3,  3,  3,  3,			\
+	   3,  3,  3,  3,  3,  3,  3,  3,			\
+	   3,  3,  3,  3,  2,  0,  0      }
+
+static struct dram_para sun8i_h3_para = {
+	.dual_rank = 1,
+	.bus_full_width = 1,
+	.ranks = {
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+	},
+	.dx_read_delays  = SUN8I_H3_DX_READ_DELAYS,
+	.dx_write_delays = SUN8I_H3_DX_WRITE_DELAYS,
+	.ac_delays	 = SUN8I_H3_AC_DELAYS,
+};
+
+static struct dram_para sun8i_r40_para = {
+	.dual_rank = 0, /* Currently we cannot support R40 with dual rank memory */
+	.bus_full_width = 1,
+	.ranks = {
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+	},
+		.dx_read_delays  = SUN8I_R40_DX_READ_DELAYS,
+		.dx_write_delays = SUN8I_R40_DX_WRITE_DELAYS,
+		.ac_delays	 = SUN8I_R40_AC_DELAYS,
+};
+
+static struct dram_para sun50i_a64_para = {
+	.dual_rank = 1,
+	.bus_full_width = 1,
+	.ranks = {
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+	},
+	.dx_read_delays  = SUN50I_A64_DX_READ_DELAYS,
+	.dx_write_delays = SUN50I_A64_DX_WRITE_DELAYS,
+	.ac_delays	 = SUN50I_A64_AC_DELAYS,
+};
+
+static struct dram_para sun50i_h5_para = {
+	.dual_rank = 1,
+	.bus_full_width = 1,
+	.ranks = {
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+		{ .row_bits = 15, .bank_bits = 3, .page_size = 4096, },
+	},
+	.dx_read_delays  = SUN8I_H5_DX_READ_DELAYS,
+	.dx_write_delays = SUN8I_H5_DX_WRITE_DELAYS,
+	.ac_delays	 = SUN8I_H5_AC_DELAYS,
+};
+
+unsigned long sun8i_h3_dram_init(void)
+{
+	return sunxi_dram_init(SOCID_H3, &sun8i_h3_para);
+}
+
+unsigned long sun8i_r40_dram_init(void)
+{
+	return sunxi_dram_init(SOCID_R40, &sun8i_r40_para);
+}
+
+unsigned long sun8i_v3s_dram_init(void)
+{
+	/* TODO: set delays and mbus priority for V3s */
+	return sunxi_dram_init(SOCID_H3, &sun8i_h3_para);
+}
+
+unsigned long sun50i_dram_init(void)
+{
+	return sunxi_dram_init(SOCID_A64, &sun50i_a64_para);
+}
+
+unsigned long sun50i_h5_dram_init(void)
+{
+	return sunxi_dram_init(SOCID_H5, &sun50i_h5_para);
+}
diff --git a/include/mach/sunxi/init.h b/include/mach/sunxi/init.h
index fed9afe6ba..626b459533 100644
--- a/include/mach/sunxi/init.h
+++ b/include/mach/sunxi/init.h
@@ -8,4 +8,7 @@ void sun50i_cpu_lowlevel_reset(void);
 
 void sun50i_uart_setup(void);
 
+unsigned long sun50i_a64_ddr3_dram_init(void);
+unsigned long sun50i_a64_lpddr3_dram_init(void);
+
 #endif
-- 
2.40.1



