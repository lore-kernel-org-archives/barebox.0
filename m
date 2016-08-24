Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcXer-0005Eb-HH
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 12:52:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3E0A1A0022B
 for <barebox@lists.infradead.org>; Wed, 24 Aug 2016 14:51:37 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 24 Aug 2016 14:49:23 +0200
Message-Id: <1472042970-35151-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v2 1/8] ARM: rockchip: Add basic RK3288 support
To: barebox@lists.infradead.org

The RK3288 SoC is a low power, high performance processor for mobile phones,
personal mobile internet devices and other digital multimedia applications.
It has an integrated quad-core cortex-A17 with separate NEON coprocessor.

Prepare mach-rockchip infrastructure for Rockchip RK3288 support.
Let's seperate the RK3188 and RK3288 SoCs. Later we will have two different
configs.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/boards/radxa-rock/board.c                 |   2 +-
 .../{rockchip_defconfig => rk3188_defconfig}       |   1 +
 arch/arm/mach-rockchip/Kconfig                     |  20 +-
 arch/arm/mach-rockchip/Makefile                    |   3 +-
 arch/arm/mach-rockchip/include/mach/cru_rk3288.h   | 184 +++++
 arch/arm/mach-rockchip/include/mach/grf_rk3288.h   | 768 +++++++++++++++++++++
 arch/arm/mach-rockchip/include/mach/hardware.h     |  18 +
 .../mach/{rockchip-regs.h => rk3188-regs.h}        |  12 +-
 arch/arm/mach-rockchip/include/mach/rk3288-regs.h  |  28 +
 arch/arm/mach-rockchip/{core.c => rk3188.c}        |   2 +-
 arch/arm/mach-rockchip/rk3288.c                    |  92 +++
 11 files changed, 1121 insertions(+), 9 deletions(-)
 rename arch/arm/configs/{rockchip_defconfig => rk3188_defconfig} (99%)
 create mode 100644 arch/arm/mach-rockchip/include/mach/cru_rk3288.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/grf_rk3288.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/hardware.h
 rename arch/arm/mach-rockchip/include/mach/{rockchip-regs.h => rk3188-regs.h} (72%)
 create mode 100644 arch/arm/mach-rockchip/include/mach/rk3288-regs.h
 rename arch/arm/mach-rockchip/{core.c => rk3188.c} (96%)
 create mode 100644 arch/arm/mach-rockchip/rk3288.c

diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index ec053f9..d45e8a9 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -16,7 +16,7 @@
 #include <io.h>
 #include <i2c/i2c.h>
 #include <i2c/i2c-gpio.h>
-#include <mach/rockchip-regs.h>
+#include <mach/rk3188-regs.h>
 #include <mfd/act8846.h>
 #include <asm/armlinux.h>
 
diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rk3188_defconfig
similarity index 99%
rename from arch/arm/configs/rockchip_defconfig
rename to arch/arm/configs/rk3188_defconfig
index c9bf874..1b6d4ff 100644
--- a/arch/arm/configs/rockchip_defconfig
+++ b/arch/arm/configs/rk3188_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_RK3188=y
 CONFIG_CACHE_L2X0=y
 CONFIG_MACH_RADXA_ROCK=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ea4361d..e027fae 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -1,14 +1,28 @@
-if ARCH_ROCKCHIP
+
+menu "Rockchip Features"
+	depends on ARCH_ROCKCHIP
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x68000000
+	default 0x68000000 if ARCH_RK3188
+	default 0x0 if ARCH_RK3288
+
+choice
+	prompt "Select Rockchip SoC"
+
+config ARCH_RK3188
+	bool "Rockchip RK3188 SoCs"
+
+config ARCH_RK3288
+	bool "Rockchip RK3288 SoCs"
+endchoice
 
 comment "select Rockchip boards:"
 
 config MACH_RADXA_ROCK
+	depends on ARCH_RK3188
 	select I2C
 	select MFD_ACT8846
 	bool "Radxa rock board"
 
-endif
+endmenu
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 820eb10..4ca7f17 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1 +1,2 @@
-obj-y += core.o
+obj-$(CONFIG_ARCH_RK3188) += rk3188.o
+obj-$(CONFIG_ARCH_RK3288) += rk3288.o
diff --git a/arch/arm/mach-rockchip/include/mach/cru_rk3288.h b/arch/arm/mach-rockchip/include/mach/cru_rk3288.h
new file mode 100644
index 0000000..c898514
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/cru_rk3288.h
@@ -0,0 +1,184 @@
+/*
+ * (C) Copyright 2015 Google, Inc
+ *
+ * (C) Copyright 2008-2014 Rockchip Electronics
+ * Peter, Software Engineering, <superpeter.cai@gmail.com>.
+ *
+ * SPDX-License-Identifier:     GPL-2.0+
+ */
+#ifndef _ASM_ARCH_CRU_RK3288_H
+#define _ASM_ARCH_CRU_RK3288_H
+
+#define OSC_HZ		(24 * 1000 * 1000)
+
+#define APLL_HZ		(1800 * 1000000)
+#define GPLL_HZ		(594 * 1000000)
+#define CPLL_HZ		(384 * 1000000)
+#define NPLL_HZ		(384 * 1000000)
+
+/* The SRAM is clocked off aclk_bus, so we want to max it out for boot speed */
+#define PD_BUS_ACLK_HZ	297000000
+#define PD_BUS_HCLK_HZ	148500000
+#define PD_BUS_PCLK_HZ	74250000
+
+#define PERI_ACLK_HZ	148500000
+#define PERI_HCLK_HZ	148500000
+#define PERI_PCLK_HZ	74250000
+
+struct rk3288_cru {
+	struct rk3288_pll {
+		u32 con0;
+		u32 con1;
+		u32 con2;
+		u32 con3;
+	} pll[5];
+	u32 cru_mode_con;
+	u32 reserved0[3];
+	u32 cru_clksel_con[43];
+	u32 reserved1[21];
+	u32 cru_clkgate_con[19];
+	u32 reserved2;
+	u32 cru_glb_srst_fst_value;
+	u32 cru_glb_srst_snd_value;
+	u32 cru_softrst_con[12];
+	u32 cru_misc_con;
+	u32 cru_glb_cnt_th;
+	u32 cru_glb_rst_con;
+	u32 reserved3;
+	u32 cru_glb_rst_st;
+	u32 reserved4;
+	u32 cru_sdmmc_con[2];
+	u32 cru_sdio0_con[2];
+	u32 cru_sdio1_con[2];
+	u32 cru_emmc_con[2];
+};
+
+/* CRU_CLKSEL11_CON */
+enum {
+	HSICPHY_DIV_SHIFT	= 8,
+	HSICPHY_DIV_MASK	= 0x3f,
+
+	MMC0_PLL_SHIFT		= 6,
+	MMC0_PLL_MASK		= 3,
+	MMC0_PLL_SELECT_CODEC	= 0,
+	MMC0_PLL_SELECT_GENERAL,
+	MMC0_PLL_SELECT_24MHZ,
+
+	MMC0_DIV_SHIFT		= 0,
+	MMC0_DIV_MASK		= 0x3f,
+};
+
+/* CRU_CLKSEL12_CON */
+enum {
+	EMMC_PLL_SHIFT		= 0xe,
+	EMMC_PLL_MASK		= 3,
+	EMMC_PLL_SELECT_CODEC	= 0,
+	EMMC_PLL_SELECT_GENERAL,
+	EMMC_PLL_SELECT_24MHZ,
+
+	EMMC_DIV_SHIFT		= 8,
+	EMMC_DIV_MASK		= 0x3f,
+
+	SDIO0_PLL_SHIFT		= 6,
+	SDIO0_PLL_MASK		= 3,
+	SDIO0_PLL_SELECT_CODEC	= 0,
+	SDIO0_PLL_SELECT_GENERAL,
+	SDIO0_PLL_SELECT_24MHZ,
+
+	SDIO0_DIV_SHIFT		= 0,
+	SDIO0_DIV_MASK		= 0x3f,
+};
+
+/* CRU_CLKSEL25_CON */
+enum {
+	SPI1_PLL_SHIFT		= 0xf,
+	SPI1_PLL_MASK		= 1,
+	SPI1_PLL_SELECT_CODEC	= 0,
+	SPI1_PLL_SELECT_GENERAL,
+
+	SPI1_DIV_SHIFT		= 8,
+	SPI1_DIV_MASK		= 0x7f,
+
+	SPI0_PLL_SHIFT		= 7,
+	SPI0_PLL_MASK		= 1,
+	SPI0_PLL_SELECT_CODEC	= 0,
+	SPI0_PLL_SELECT_GENERAL,
+
+	SPI0_DIV_SHIFT		= 0,
+	SPI0_DIV_MASK		= 0x7f,
+};
+
+/* CRU_CLKSEL39_CON */
+enum {
+	ACLK_HEVC_PLL_SHIFT	= 0xe,
+	ACLK_HEVC_PLL_MASK	= 3,
+	ACLK_HEVC_PLL_SELECT_CODEC = 0,
+	ACLK_HEVC_PLL_SELECT_GENERAL,
+	ACLK_HEVC_PLL_SELECT_NEW,
+
+	ACLK_HEVC_DIV_SHIFT	= 8,
+	ACLK_HEVC_DIV_MASK	= 0x1f,
+
+	SPI2_PLL_SHIFT		= 7,
+	SPI2_PLL_MASK		= 1,
+	SPI2_PLL_SELECT_CODEC	= 0,
+	SPI2_PLL_SELECT_GENERAL,
+
+	SPI2_DIV_SHIFT		= 0,
+	SPI2_DIV_MASK		= 0x7f,
+};
+
+/* CRU_MODE_CON */
+enum {
+	NPLL_WORK_SHIFT		= 0xe,
+	NPLL_WORK_MASK		= 3,
+	NPLL_WORK_SLOW		= 0,
+	NPLL_WORK_NORMAL,
+	NPLL_WORK_DEEP,
+
+	GPLL_WORK_SHIFT		= 0xc,
+	GPLL_WORK_MASK		= 3,
+	GPLL_WORK_SLOW		= 0,
+	GPLL_WORK_NORMAL,
+	GPLL_WORK_DEEP,
+
+	CPLL_WORK_SHIFT		= 8,
+	CPLL_WORK_MASK		= 3,
+	CPLL_WORK_SLOW		= 0,
+	CPLL_WORK_NORMAL,
+	CPLL_WORK_DEEP,
+
+	DPLL_WORK_SHIFT		= 4,
+	DPLL_WORK_MASK		= 3,
+	DPLL_WORK_SLOW		= 0,
+	DPLL_WORK_NORMAL,
+	DPLL_WORK_DEEP,
+
+	APLL_WORK_SHIFT		= 0,
+	APLL_WORK_MASK		= 3,
+	APLL_WORK_SLOW		= 0,
+	APLL_WORK_NORMAL,
+	APLL_WORK_DEEP,
+};
+
+/* CRU_APLL_CON0 */
+enum {
+	CLKR_SHIFT		= 8,
+	CLKR_MASK		= 0x3f,
+
+	CLKOD_SHIFT		= 0,
+	CLKOD_MASK		= 0xf,
+};
+
+/* CRU_APLL_CON1 */
+enum {
+	LOCK_SHIFT		= 0x1f,
+	LOCK_MASK		= 1,
+	LOCK_UNLOCK		= 0,
+	LOCK_LOCK,
+
+	CLKF_SHIFT		= 0,
+	CLKF_MASK		= 0x1fff,
+};
+
+#endif
diff --git a/arch/arm/mach-rockchip/include/mach/grf_rk3288.h b/arch/arm/mach-rockchip/include/mach/grf_rk3288.h
new file mode 100644
index 0000000..0117a17
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/grf_rk3288.h
@@ -0,0 +1,768 @@
+/*
+ * (C) Copyright 2015 Google, Inc
+ * Copyright 2014 Rockchip Inc.
+ *
+ * SPDX-License-Identifier:	GPL-2.0
+ */
+
+#ifndef _ASM_ARCH_GRF_RK3288_H
+#define _ASM_ARCH_GRF_RK3288_H
+
+struct rk3288_grf_gpio_lh {
+	u32 l;
+	u32 h;
+};
+
+struct rk3288_grf {
+	u32 reserved[3];
+	u32 gpio1d_iomux;
+	u32 gpio2a_iomux;
+	u32 gpio2b_iomux;
+
+	u32 gpio2c_iomux;
+	u32 reserved2;
+	u32 gpio3a_iomux;
+	u32 gpio3b_iomux;
+
+	u32 gpio3c_iomux;
+	u32 gpio3dl_iomux;
+	u32 gpio3dh_iomux;
+	u32 gpio4al_iomux;
+
+	u32 gpio4ah_iomux;
+	u32 gpio4bl_iomux;
+	u32 reserved3;
+	u32 gpio4c_iomux;
+
+	u32 gpio4d_iomux;
+	u32 reserved4;
+	u32 gpio5b_iomux;
+	u32 gpio5c_iomux;
+
+	u32 reserved5;
+	u32 gpio6a_iomux;
+	u32 gpio6b_iomux;
+	u32 gpio6c_iomux;
+	u32 reserved6;
+	u32 gpio7a_iomux;
+	u32 gpio7b_iomux;
+	u32 gpio7cl_iomux;
+	u32 gpio7ch_iomux;
+	u32 reserved7;
+	u32 gpio8a_iomux;
+	u32 gpio8b_iomux;
+	u32 reserved8[30];
+	struct rk3288_grf_gpio_lh gpio_sr[8];
+	u32 gpio1_p[8][4];
+	u32 gpio1_e[8][4];
+	u32 gpio_smt;
+	u32 soc_con0;
+	u32 soc_con1;
+	u32 soc_con2;
+	u32 soc_con3;
+	u32 soc_con4;
+	u32 soc_con5;
+	u32 soc_con6;
+	u32 soc_con7;
+	u32 soc_con8;
+	u32 soc_con9;
+	u32 soc_con10;
+	u32 soc_con11;
+	u32 soc_con12;
+	u32 soc_con13;
+	u32 soc_con14;
+	u32 soc_status[22];
+	u32 reserved9[2];
+	u32 peridmac_con[4];
+	u32 ddrc0_con0;
+	u32 ddrc1_con0;
+	u32 cpu_con[5];
+	u32 reserved10[3];
+	u32 cpu_status0;
+	u32 reserved11;
+	u32 uoc0_con[5];
+	u32 uoc1_con[5];
+	u32 uoc2_con[4];
+	u32 uoc3_con[2];
+	u32 uoc4_con[2];
+	u32 pvtm_con[3];
+	u32 pvtm_status[3];
+	u32 io_vsel;
+	u32 saradc_testbit;
+	u32 tsadc_testbit_l;
+	u32 tsadc_testbit_h;
+	u32 os_reg[4];
+	u32 reserved12;
+	u32 soc_con15;
+	u32 soc_con16;
+};
+
+struct rk3288_sgrf {
+	u32 soc_con0;
+	u32 soc_con1;
+	u32 soc_con2;
+	u32 soc_con3;
+	u32 soc_con4;
+	u32 soc_con5;
+	u32 reserved1[(0x20-0x18)/4];
+	u32 busdmac_con[2];
+	u32 reserved2[(0x40-0x28)/4];
+	u32 cpu_con[3];
+	u32 reserved3[(0x50-0x4c)/4];
+	u32 soc_con6;
+	u32 soc_con7;
+	u32 soc_con8;
+	u32 soc_con9;
+	u32 soc_con10;
+	u32 soc_con11;
+	u32 soc_con12;
+	u32 soc_con13;
+	u32 soc_con14;
+	u32 soc_con15;
+	u32 soc_con16;
+	u32 soc_con17;
+	u32 soc_con18;
+	u32 soc_con19;
+	u32 soc_con20;
+	u32 soc_con21;
+	u32 reserved4[(0x100-0x90)/4];
+	u32 soc_status[2];
+	u32 reserved5[(0x120-0x108)/4];
+	u32 fast_boot_addr;
+};
+
+/* GRF_GPIO1D_IOMUX */
+enum {
+	GPIO1D3_SHIFT		= 6,
+	GPIO1D3_MASK		= 1,
+	GPIO1D3_GPIO		= 0,
+	GPIO1D3_LCDC0_DCLK,
+
+	GPIO1D2_SHIFT		= 4,
+	GPIO1D2_MASK		= 1,
+	GPIO1D2_GPIO		= 0,
+	GPIO1D2_LCDC0_DEN,
+
+	GPIO1D1_SHIFT		= 2,
+	GPIO1D1_MASK		= 1,
+	GPIO1D1_GPIO		= 0,
+	GPIO1D1_LCDC0_VSYNC,
+
+	GPIO1D0_SHIFT		= 0,
+	GPIO1D0_MASK		= 1,
+	GPIO1D0_GPIO		= 0,
+	GPIO1D0_LCDC0_HSYNC,
+};
+
+/* GRF_GPIO2C_IOMUX */
+enum {
+	GPIO2C1_SHIFT		= 2,
+	GPIO2C1_MASK		= 1,
+	GPIO2C1_GPIO		= 0,
+	GPIO2C1_I2C3CAM_SDA,
+
+	GPIO2C0_SHIFT		= 0,
+	GPIO2C0_MASK		= 1,
+	GPIO2C0_GPIO		= 0,
+	GPIO2C0_I2C3CAM_SCL,
+};
+
+/* GRF_GPIO3A_IOMUX */
+enum {
+	GPIO3A7_SHIFT		= 14,
+	GPIO3A7_MASK		= 3,
+	GPIO3A7_GPIO		= 0,
+	GPIO3A7_FLASH0_DATA7,
+	GPIO3A7_EMMC_DATA7,
+
+	GPIO3A6_SHIFT		= 12,
+	GPIO3A6_MASK		= 3,
+	GPIO3A6_GPIO		= 0,
+	GPIO3A6_FLASH0_DATA6,
+	GPIO3A6_EMMC_DATA6,
+
+	GPIO3A5_SHIFT		= 10,
+	GPIO3A5_MASK		= 3,
+	GPIO3A5_GPIO		= 0,
+	GPIO3A5_FLASH0_DATA5,
+	GPIO3A5_EMMC_DATA5,
+
+	GPIO3A4_SHIFT		= 8,
+	GPIO3A4_MASK		= 3,
+	GPIO3A4_GPIO		= 0,
+	GPIO3A4_FLASH0_DATA4,
+	GPIO3A4_EMMC_DATA4,
+
+	GPIO3A3_SHIFT		= 6,
+	GPIO3A3_MASK		= 3,
+	GPIO3A3_GPIO		= 0,
+	GPIO3A3_FLASH0_DATA3,
+	GPIO3A3_EMMC_DATA3,
+
+	GPIO3A2_SHIFT		= 4,
+	GPIO3A2_MASK		= 3,
+	GPIO3A2_GPIO		= 0,
+	GPIO3A2_FLASH0_DATA2,
+	GPIO3A2_EMMC_DATA2,
+
+	GPIO3A1_SHIFT		= 2,
+	GPIO3A1_MASK		= 3,
+	GPIO3A1_GPIO		= 0,
+	GPIO3A1_FLASH0_DATA1,
+	GPIO3A1_EMMC_DATA1,
+
+	GPIO3A0_SHIFT		= 0,
+	GPIO3A0_MASK		= 3,
+	GPIO3A0_GPIO		= 0,
+	GPIO3A0_FLASH0_DATA0,
+	GPIO3A0_EMMC_DATA0,
+};
+
+/* GRF_GPIO3B_IOMUX */
+enum {
+	GPIO3B7_SHIFT		= 14,
+	GPIO3B7_MASK		= 1,
+	GPIO3B7_GPIO		= 0,
+	GPIO3B7_FLASH0_CSN1,
+
+	GPIO3B6_SHIFT		= 12,
+	GPIO3B6_MASK		= 1,
+	GPIO3B6_GPIO		= 0,
+	GPIO3B6_FLASH0_CSN0,
+
+	GPIO3B5_SHIFT		= 10,
+	GPIO3B5_MASK		= 1,
+	GPIO3B5_GPIO		= 0,
+	GPIO3B5_FLASH0_WRN,
+
+	GPIO3B4_SHIFT		= 8,
+	GPIO3B4_MASK		= 1,
+	GPIO3B4_GPIO		= 0,
+	GPIO3B4_FLASH0_CLE,
+
+	GPIO3B3_SHIFT		= 6,
+	GPIO3B3_MASK		= 1,
+	GPIO3B3_GPIO		= 0,
+	GPIO3B3_FLASH0_ALE,
+
+	GPIO3B2_SHIFT		= 4,
+	GPIO3B2_MASK		= 1,
+	GPIO3B2_GPIO		= 0,
+	GPIO3B2_FLASH0_RDN,
+
+	GPIO3B1_SHIFT		= 2,
+	GPIO3B1_MASK		= 3,
+	GPIO3B1_GPIO		= 0,
+	GPIO3B1_FLASH0_WP,
+	GPIO3B1_EMMC_PWREN,
+
+	GPIO3B0_SHIFT		= 0,
+	GPIO3B0_MASK		= 1,
+	GPIO3B0_GPIO		= 0,
+	GPIO3B0_FLASH0_RDY,
+};
+
+/* GRF_GPIO3C_IOMUX */
+enum {
+	GPIO3C2_SHIFT		= 4,
+	GPIO3C2_MASK		= 3,
+	GPIO3C2_GPIO		= 0,
+	GPIO3C2_FLASH0_DQS,
+	GPIO3C2_EMMC_CLKOUT,
+
+	GPIO3C1_SHIFT		= 2,
+	GPIO3C1_MASK		= 3,
+	GPIO3C1_GPIO		= 0,
+	GPIO3C1_FLASH0_CSN3,
+	GPIO3C1_EMMC_RSTNOUT,
+
+	GPIO3C0_SHIFT		= 0,
+	GPIO3C0_MASK		= 3,
+	GPIO3C0_GPIO		= 0,
+	GPIO3C0_FLASH0_CSN2,
+	GPIO3C0_EMMC_CMD,
+};
+
+/* GRF_GPIO4C_IOMUX */
+enum {
+	GPIO4C7_SHIFT		= 14,
+	GPIO4C7_MASK		= 1,
+	GPIO4C7_GPIO		= 0,
+	GPIO4C7_SDIO0_DATA3,
+
+	GPIO4C6_SHIFT		= 12,
+	GPIO4C6_MASK		= 1,
+	GPIO4C6_GPIO		= 0,
+	GPIO4C6_SDIO0_DATA2,
+
+	GPIO4C5_SHIFT		= 10,
+	GPIO4C5_MASK		= 1,
+	GPIO4C5_GPIO		= 0,
+	GPIO4C5_SDIO0_DATA1,
+
+	GPIO4C4_SHIFT		= 8,
+	GPIO4C4_MASK		= 1,
+	GPIO4C4_GPIO		= 0,
+	GPIO4C4_SDIO0_DATA0,
+
+	GPIO4C3_SHIFT		= 6,
+	GPIO4C3_MASK		= 1,
+	GPIO4C3_GPIO		= 0,
+	GPIO4C3_UART0BT_RTSN,
+
+	GPIO4C2_SHIFT		= 4,
+	GPIO4C2_MASK		= 1,
+	GPIO4C2_GPIO		= 0,
+	GPIO4C2_UART0BT_CTSN,
+
+	GPIO4C1_SHIFT		= 2,
+	GPIO4C1_MASK		= 1,
+	GPIO4C1_GPIO		= 0,
+	GPIO4C1_UART0BT_SOUT,
+
+	GPIO4C0_SHIFT		= 0,
+	GPIO4C0_MASK		= 1,
+	GPIO4C0_GPIO		= 0,
+	GPIO4C0_UART0BT_SIN,
+};
+
+/* GRF_GPIO5B_IOMUX */
+enum {
+	GPIO5B7_SHIFT		= 14,
+	GPIO5B7_MASK		= 3,
+	GPIO5B7_GPIO		= 0,
+	GPIO5B7_SPI0_RXD,
+	GPIO5B7_TS0_DATA7,
+	GPIO5B7_UART4EXP_SIN,
+
+	GPIO5B6_SHIFT		= 12,
+	GPIO5B6_MASK		= 3,
+	GPIO5B6_GPIO		= 0,
+	GPIO5B6_SPI0_TXD,
+	GPIO5B6_TS0_DATA6,
+	GPIO5B6_UART4EXP_SOUT,
+
+	GPIO5B5_SHIFT		= 10,
+	GPIO5B5_MASK		= 3,
+	GPIO5B5_GPIO		= 0,
+	GPIO5B5_SPI0_CSN0,
+	GPIO5B5_TS0_DATA5,
+	GPIO5B5_UART4EXP_RTSN,
+
+	GPIO5B4_SHIFT		= 8,
+	GPIO5B4_MASK		= 3,
+	GPIO5B4_GPIO		= 0,
+	GPIO5B4_SPI0_CLK,
+	GPIO5B4_TS0_DATA4,
+	GPIO5B4_UART4EXP_CTSN,
+
+	GPIO5B3_SHIFT		= 6,
+	GPIO5B3_MASK		= 3,
+	GPIO5B3_GPIO		= 0,
+	GPIO5B3_UART1BB_RTSN,
+	GPIO5B3_TS0_DATA3,
+
+	GPIO5B2_SHIFT		= 4,
+	GPIO5B2_MASK		= 3,
+	GPIO5B2_GPIO		= 0,
+	GPIO5B2_UART1BB_CTSN,
+	GPIO5B2_TS0_DATA2,
+
+	GPIO5B1_SHIFT		= 2,
+	GPIO5B1_MASK		= 3,
+	GPIO5B1_GPIO		= 0,
+	GPIO5B1_UART1BB_SOUT,
+	GPIO5B1_TS0_DATA1,
+
+	GPIO5B0_SHIFT		= 0,
+	GPIO5B0_MASK		= 3,
+	GPIO5B0_GPIO		= 0,
+	GPIO5B0_UART1BB_SIN,
+	GPIO5B0_TS0_DATA0,
+};
+
+/* GRF_GPIO5C_IOMUX */
+enum {
+	GPIO5C3_SHIFT		= 6,
+	GPIO5C3_MASK		= 1,
+	GPIO5C3_GPIO		= 0,
+	GPIO5C3_TS0_ERR,
+
+	GPIO5C2_SHIFT		= 4,
+	GPIO5C2_MASK		= 1,
+	GPIO5C2_GPIO		= 0,
+	GPIO5C2_TS0_CLK,
+
+	GPIO5C1_SHIFT		= 2,
+	GPIO5C1_MASK		= 1,
+	GPIO5C1_GPIO		= 0,
+	GPIO5C1_TS0_VALID,
+
+	GPIO5C0_SHIFT		= 0,
+	GPIO5C0_MASK		= 3,
+	GPIO5C0_GPIO		= 0,
+	GPIO5C0_SPI0_CSN1,
+	GPIO5C0_TS0_SYNC,
+};
+
+/* GRF_GPIO6B_IOMUX */
+enum {
+	GPIO6B3_SHIFT		= 6,
+	GPIO6B3_MASK		= 1,
+	GPIO6B3_GPIO		= 0,
+	GPIO6B3_SPDIF_TX,
+
+	GPIO6B2_SHIFT		= 4,
+	GPIO6B2_MASK		= 1,
+	GPIO6B2_GPIO		= 0,
+	GPIO6B2_I2C1AUDIO_SCL,
+
+	GPIO6B1_SHIFT		= 2,
+	GPIO6B1_MASK		= 1,
+	GPIO6B1_GPIO		= 0,
+	GPIO6B1_I2C1AUDIO_SDA,
+
+	GPIO6B0_SHIFT		= 0,
+	GPIO6B0_MASK		= 1,
+	GPIO6B0_GPIO		= 0,
+	GPIO6B0_I2S_CLK,
+};
+
+/* GRF_GPIO6C_IOMUX */
+enum {
+	GPIO6C6_SHIFT		= 12,
+	GPIO6C6_MASK		= 1,
+	GPIO6C6_GPIO		= 0,
+	GPIO6C6_SDMMC0_DECTN,
+
+	GPIO6C5_SHIFT		= 10,
+	GPIO6C5_MASK		= 1,
+	GPIO6C5_GPIO		= 0,
+	GPIO6C5_SDMMC0_CMD,
+
+	GPIO6C4_SHIFT		= 8,
+	GPIO6C4_MASK		= 3,
+	GPIO6C4_GPIO		= 0,
+	GPIO6C4_SDMMC0_CLKOUT,
+	GPIO6C4_JTAG_TDO,
+
+	GPIO6C3_SHIFT		= 6,
+	GPIO6C3_MASK		= 3,
+	GPIO6C3_GPIO		= 0,
+	GPIO6C3_SDMMC0_DATA3,
+	GPIO6C3_JTAG_TCK,
+
+	GPIO6C2_SHIFT		= 4,
+	GPIO6C2_MASK		= 3,
+	GPIO6C2_GPIO		= 0,
+	GPIO6C2_SDMMC0_DATA2,
+	GPIO6C2_JTAG_TDI,
+
+	GPIO6C1_SHIFT		= 2,
+	GPIO6C1_MASK		= 3,
+	GPIO6C1_GPIO		= 0,
+	GPIO6C1_SDMMC0_DATA1,
+	GPIO6C1_JTAG_TRSTN,
+
+	GPIO6C0_SHIFT		= 0,
+	GPIO6C0_MASK		= 3,
+	GPIO6C0_GPIO		= 0,
+	GPIO6C0_SDMMC0_DATA0,
+	GPIO6C0_JTAG_TMS,
+};
+
+/* GRF_GPIO7A_IOMUX */
+enum {
+	GPIO7A7_SHIFT		= 14,
+	GPIO7A7_MASK		= 3,
+	GPIO7A7_GPIO		= 0,
+	GPIO7A7_UART3GPS_SIN,
+	GPIO7A7_GPS_MAG,
+	GPIO7A7_HSADCT1_DATA0,
+
+	GPIO7A1_SHIFT		= 2,
+	GPIO7A1_MASK		= 1,
+	GPIO7A1_GPIO		= 0,
+	GPIO7A1_PWM_1,
+
+	GPIO7A0_SHIFT		= 0,
+	GPIO7A0_MASK		= 3,
+	GPIO7A0_GPIO		= 0,
+	GPIO7A0_PWM_0,
+	GPIO7A0_VOP0_PWM,
+	GPIO7A0_VOP1_PWM,
+};
+
+/* GRF_GPIO7B_IOMUX */
+enum {
+	GPIO7B7_SHIFT		= 14,
+	GPIO7B7_MASK		= 3,
+	GPIO7B7_GPIO		= 0,
+	GPIO7B7_ISP_SHUTTERTRIG,
+	GPIO7B7_SPI1_TXD,
+
+	GPIO7B6_SHIFT		= 12,
+	GPIO7B6_MASK		= 3,
+	GPIO7B6_GPIO		= 0,
+	GPIO7B6_ISP_PRELIGHTTRIG,
+	GPIO7B6_SPI1_RXD,
+
+	GPIO7B5_SHIFT		= 10,
+	GPIO7B5_MASK		= 3,
+	GPIO7B5_GPIO		= 0,
+	GPIO7B5_ISP_FLASHTRIGOUT,
+	GPIO7B5_SPI1_CSN0,
+
+	GPIO7B4_SHIFT		= 8,
+	GPIO7B4_MASK		= 3,
+	GPIO7B4_GPIO		= 0,
+	GPIO7B4_ISP_SHUTTEREN,
+	GPIO7B4_SPI1_CLK,
+
+	GPIO7B3_SHIFT		= 6,
+	GPIO7B3_MASK		= 3,
+	GPIO7B3_GPIO		= 0,
+	GPIO7B3_USB_DRVVBUS1,
+	GPIO7B3_EDP_HOTPLUG,
+
+	GPIO7B2_SHIFT		= 4,
+	GPIO7B2_MASK		= 3,
+	GPIO7B2_GPIO		= 0,
+	GPIO7B2_UART3GPS_RTSN,
+	GPIO7B2_USB_DRVVBUS0,
+
+	GPIO7B1_SHIFT		= 2,
+	GPIO7B1_MASK		= 3,
+	GPIO7B1_GPIO		= 0,
+	GPIO7B1_UART3GPS_CTSN,
+	GPIO7B1_GPS_RFCLK,
+	GPIO7B1_GPST1_CLK,
+
+	GPIO7B0_SHIFT		= 0,
+	GPIO7B0_MASK		= 3,
+	GPIO7B0_GPIO		= 0,
+	GPIO7B0_UART3GPS_SOUT,
+	GPIO7B0_GPS_SIG,
+	GPIO7B0_HSADCT1_DATA1,
+};
+
+/* GRF_GPIO7CL_IOMUX */
+enum {
+	GPIO7C3_SHIFT		= 12,
+	GPIO7C3_MASK		= 3,
+	GPIO7C3_GPIO		= 0,
+	GPIO7C3_I2C5HDMI_SDA,
+	GPIO7C3_EDPHDMII2C_SDA,
+
+	GPIO7C2_SHIFT		= 8,
+	GPIO7C2_MASK		= 1,
+	GPIO7C2_GPIO		= 0,
+	GPIO7C2_I2C4TP_SCL,
+
+	GPIO7C1_SHIFT		= 4,
+	GPIO7C1_MASK		= 1,
+	GPIO7C1_GPIO		= 0,
+	GPIO7C1_I2C4TP_SDA,
+
+	GPIO7C0_SHIFT		= 0,
+	GPIO7C0_MASK		= 3,
+	GPIO7C0_GPIO		= 0,
+	GPIO7C0_ISP_FLASHTRIGIN,
+	GPIO7C0_EDPHDMI_CECINOUTT1,
+};
+
+/* GRF_GPIO7CH_IOMUX */
+enum {
+	GPIO7C7_SHIFT		= 12,
+	GPIO7C7_MASK		= 7,
+	GPIO7C7_GPIO		= 0,
+	GPIO7C7_UART2DBG_SOUT,
+	GPIO7C7_UART2DBG_SIROUT,
+	GPIO7C7_PWM_3,
+	GPIO7C7_EDPHDMI_CECINOUT,
+
+	GPIO7C6_SHIFT		= 8,
+	GPIO7C6_MASK		= 3,
+	GPIO7C6_GPIO		= 0,
+	GPIO7C6_UART2DBG_SIN,
+	GPIO7C6_UART2DBG_SIRIN,
+	GPIO7C6_PWM_2,
+
+	GPIO7C4_SHIFT		= 0,
+	GPIO7C4_MASK		= 3,
+	GPIO7C4_GPIO		= 0,
+	GPIO7C4_I2C5HDMI_SCL,
+	GPIO7C4_EDPHDMII2C_SCL,
+};
+
+/* GRF_GPIO8A_IOMUX */
+enum {
+	GPIO8A7_SHIFT		= 14,
+	GPIO8A7_MASK		= 3,
+	GPIO8A7_GPIO		= 0,
+	GPIO8A7_SPI2_CSN0,
+	GPIO8A7_SC_DETECT,
+	GPIO8A7_RESERVE,
+
+	GPIO8A6_SHIFT		= 12,
+	GPIO8A6_MASK		= 3,
+	GPIO8A6_GPIO		= 0,
+	GPIO8A6_SPI2_CLK,
+	GPIO8A6_SC_IO,
+	GPIO8A6_RESERVE,
+
+	GPIO8A5_SHIFT		= 10,
+	GPIO8A5_MASK		= 3,
+	GPIO8A5_GPIO		= 0,
+	GPIO8A5_I2C2SENSOR_SCL,
+	GPIO8A5_SC_CLK,
+
+	GPIO8A4_SHIFT		= 8,
+	GPIO8A4_MASK		= 3,
+	GPIO8A4_GPIO		= 0,
+	GPIO8A4_I2C2SENSOR_SDA,
+	GPIO8A4_SC_RST,
+
+	GPIO8A3_SHIFT		= 6,
+	GPIO8A3_MASK		= 3,
+	GPIO8A3_GPIO		= 0,
+	GPIO8A3_SPI2_CSN1,
+	GPIO8A3_SC_IOT1,
+
+	GPIO8A2_SHIFT		= 4,
+	GPIO8A2_MASK		= 1,
+	GPIO8A2_GPIO		= 0,
+	GPIO8A2_SC_DETECTT1,
+
+	GPIO8A1_SHIFT		= 2,
+	GPIO8A1_MASK		= 3,
+	GPIO8A1_GPIO		= 0,
+	GPIO8A1_PS2_DATA,
+	GPIO8A1_SC_VCC33V,
+
+	GPIO8A0_SHIFT		= 0,
+	GPIO8A0_MASK		= 3,
+	GPIO8A0_GPIO		= 0,
+	GPIO8A0_PS2_CLK,
+	GPIO8A0_SC_VCC18V,
+};
+
+/* GRF_GPIO8B_IOMUX */
+enum {
+	GPIO8B1_SHIFT		= 2,
+	GPIO8B1_MASK		= 3,
+	GPIO8B1_GPIO		= 0,
+	GPIO8B1_SPI2_TXD,
+	GPIO8B1_SC_CLK,
+
+	GPIO8B0_SHIFT		= 0,
+	GPIO8B0_MASK		= 3,
+	GPIO8B0_GPIO		= 0,
+	GPIO8B0_SPI2_RXD,
+	GPIO8B0_SC_RST,
+};
+
+/* GRF_SOC_CON0 */
+enum {
+	PAUSE_MMC_PERI_SHIFT	= 0xf,
+	PAUSE_MMC_PERI_MASK	= 1,
+
+	PAUSE_EMEM_PERI_SHIFT	= 0xe,
+	PAUSE_EMEM_PERI_MASK	= 1,
+
+	PAUSE_USB_PERI_SHIFT	= 0xd,
+	PAUSE_USB_PERI_MASK	= 1,
+
+	GRF_FORCE_JTAG_SHIFT	= 0xc,
+	GRF_FORCE_JTAG_MASK	= 1,
+
+	GRF_CORE_IDLE_REQ_MODE_SEL1_SHIFT = 0xb,
+	GRF_CORE_IDLE_REQ_MODE_SEL1_MASK = 1,
+
+	GRF_CORE_IDLE_REQ_MODE_SEL0_SHIFT = 0xa,
+	GRF_CORE_IDLE_REQ_MODE_SEL0_MASK = 1,
+
+	DDR1_16BIT_EN_SHIFT	= 9,
+	DDR1_16BIT_EN_MASK	= 1,
+
+	DDR0_16BIT_EN_SHIFT	= 8,
+	DDR0_16BIT_EN_MASK	= 1,
+
+	VCODEC_SHIFT		= 7,
+	VCODEC_MASK		= 1,
+	VCODEC_SELECT_VEPU_ACLK	= 0,
+	VCODEC_SELECT_VDPU_ACLK,
+
+	UPCTL1_C_ACTIVE_IN_SHIFT = 6,
+	UPCTL1_C_ACTIVE_IN_MASK	= 1,
+	UPCTL1_C_ACTIVE_IN_MAY	= 0,
+	UPCTL1_C_ACTIVE_IN_WILL,
+
+	UPCTL0_C_ACTIVE_IN_SHIFT = 5,
+	UPCTL0_C_ACTIVE_IN_MASK	= 1,
+	UPCTL0_C_ACTIVE_IN_MAY	= 0,
+	UPCTL0_C_ACTIVE_IN_WILL,
+
+	MSCH1_MAINDDR3_SHIFT	= 4,
+	MSCH1_MAINDDR3_MASK	= 1,
+	MSCH1_MAINDDR3_DDR3	= 1,
+
+	MSCH0_MAINDDR3_SHIFT	= 3,
+	MSCH0_MAINDDR3_MASK	= 1,
+	MSCH0_MAINDDR3_DDR3	= 1,
+
+	MSCH1_MAINPARTIALPOP_SHIFT = 2,
+	MSCH1_MAINPARTIALPOP_MASK = 1,
+
+	MSCH0_MAINPARTIALPOP_SHIFT = 1,
+	MSCH0_MAINPARTIALPOP_MASK = 1,
+};
+
+/* GRF_SOC_CON2 */
+enum {
+	UPCTL1_LPDDR3_ODT_EN_SHIFT = 0xd,
+	UPCTL1_LPDDR3_ODT_EN_MASK = 1,
+	UPCTL1_LPDDR3_ODT_EN_ODT = 1,
+
+	UPCTL1_BST_DIABLE_SHIFT	= 0xc,
+	UPCTL1_BST_DIABLE_MASK	= 1,
+	UPCTL1_BST_DIABLE_DISABLE = 1,
+
+	LPDDR3_EN1_SHIFT	= 0xb,
+	LPDDR3_EN1_MASK		= 1,
+	LPDDR3_EN1_LPDDR3	= 1,
+
+	UPCTL0_LPDDR3_ODT_EN_SHIFT = 0xa,
+	UPCTL0_LPDDR3_ODT_EN_MASK = 1,
+	UPCTL0_LPDDR3_ODT_EN_ODT_ENABLE = 1,
+
+	UPCTL0_BST_DIABLE_SHIFT	= 9,
+	UPCTL0_BST_DIABLE_MASK	= 1,
+	UPCTL0_BST_DIABLE_DISABLE = 1,
+
+	LPDDR3_EN0_SHIFT	= 8,
+	LPDDR3_EN0_MASK		= 1,
+	LPDDR3_EN0_LPDDR3	= 1,
+
+	GRF_POC_FLASH0_CTRL_SHIFT = 7,
+	GRF_POC_FLASH0_CTRL_MASK = 1,
+	GRF_POC_FLASH0_CTRL_GPIO3C_3 = 0,
+	GRF_POC_FLASH0_CTRL_GRF_IO_VSEL,
+
+	SIMCARD_MUX_SHIFT	= 6,
+	SIMCARD_MUX_MASK	= 1,
+	SIMCARD_MUX_USE_A	= 1,
+	SIMCARD_MUX_USE_B	= 0,
+
+	GRF_SPDIF_2CH_EN_SHIFT	= 1,
+	GRF_SPDIF_2CH_EN_MASK	= 1,
+	GRF_SPDIF_2CH_EN_8CH	= 0,
+	GRF_SPDIF_2CH_EN_2CH,
+
+	PWM_SHIFT		= 0,
+	PWM_MASK		= 1,
+	PWM_RK			= 1,
+	PWM_PWM			= 0,
+};
+
+#endif
diff --git a/arch/arm/mach-rockchip/include/mach/hardware.h b/arch/arm/mach-rockchip/include/mach/hardware.h
new file mode 100644
index 0000000..b0afd1f
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/hardware.h
@@ -0,0 +1,18 @@
+/*
+ * Copyright 2015 Google, Inc
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef _ASM_ARCH_HARDWARE_H
+#define _ASM_ARCH_HARDWARE_H
+
+#define RK_CLRSETBITS(clr, set)		((((clr) | (set)) << 16) | set)
+#define RK_SETBITS(set)			RK_CLRSETBITS(0, set)
+#define RK_CLRBITS(clr)			RK_CLRSETBITS(clr, 0)
+
+#define rk_clrsetreg(addr, clr, set)	writel((clr) << 16 | (set), addr)
+#define rk_clrreg(addr, clr)		writel((clr) << 16, addr)
+#define rk_setreg(addr, set)		writel(set, addr)
+
+#endif
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip-regs.h b/arch/arm/mach-rockchip/include/mach/rk3188-regs.h
similarity index 72%
rename from arch/arm/mach-rockchip/include/mach/rockchip-regs.h
rename to arch/arm/mach-rockchip/include/mach/rk3188-regs.h
index a6a1c64..f147fe2 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip-regs.h
+++ b/arch/arm/mach-rockchip/include/mach/rk3188-regs.h
@@ -11,8 +11,8 @@
  * GNU General Public License for more details.
  */
 
-#ifndef __MACH_ROCKCHIP_REGS_H
-#define __MACH_ROCKCHIP_REGS_H
+#ifndef __MACH_RK3188_REGS_H
+#define __MACH_RK3188_REGS_H
 
 #define RK_CRU_BASE		0x20000000
 #define RK_GRF_BASE		0x20008000
@@ -22,4 +22,10 @@
 
 #define RK_SOC_CON0_REMAP	(1 << 12)
 
-#endif /* __MACH_ROCKCHIP_REGS_H */
+/* UART */
+#define RK3188_UART0_BASE	0x10124000
+#define RK3188_UART1_BASE	0x10126000
+#define RK3188_UART2_BASE	0x20064000
+#define RK3188_UART3_BASE	0x20068000
+
+#endif /* __MACH_RK3188_REGS_H */
diff --git a/arch/arm/mach-rockchip/include/mach/rk3288-regs.h b/arch/arm/mach-rockchip/include/mach/rk3288-regs.h
new file mode 100644
index 0000000..a83a3a8
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/rk3288-regs.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MACH_RK3288_REGS_H
+#define __MACH_RK3288_REGS_H
+
+#define RK3288_CRU_BASE		0xff760000
+#define RK3288_GRF_BASE		0xff770000
+
+/* UART */
+#define RK3288_UART0_BASE	0xff180000
+#define RK3288_UART1_BASE	0xff190000
+#define RK3288_UART2_BASE	0xff690000
+#define RK3288_UART3_BASE	0xff1b0000
+#define RK3288_UART4_BASE	0xff1c0000
+
+#endif /* __MACH_RK3288_REGS_H */
diff --git a/arch/arm/mach-rockchip/core.c b/arch/arm/mach-rockchip/rk3188.c
similarity index 96%
rename from arch/arm/mach-rockchip/core.c
rename to arch/arm/mach-rockchip/rk3188.c
index 2428fee..e7cbf36 100644
--- a/arch/arm/mach-rockchip/core.c
+++ b/arch/arm/mach-rockchip/rk3188.c
@@ -15,7 +15,7 @@
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/rockchip-regs.h>
+#include <mach/rk3188-regs.h>
 
 static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-rockchip/rk3288.c b/arch/arm/mach-rockchip/rk3288.c
new file mode 100644
index 0000000..4e8fb4a
--- /dev/null
+++ b/arch/arm/mach-rockchip/rk3288.c
@@ -0,0 +1,92 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm/io.h>
+#include <common.h>
+#include <init.h>
+#include <restart.h>
+#include <reset_source.h>
+#include <bootsource.h>
+#include <mach/rk3288-regs.h>
+#include <mach/cru_rk3288.h>
+#include <mach/hardware.h>
+
+static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
+{
+	struct rk3288_cru *cru = (struct rk3288_cru *)RK3288_CRU_BASE;
+
+	/* cold reset */
+	writel(RK_CLRBITS(0xffff), &cru->cru_mode_con);
+	writel(0xfdb9, &cru->cru_glb_srst_fst_value);
+
+	hang();
+}
+
+static void rk3288_detect_reset_reason(void)
+{
+	struct rk3288_cru *cru = (struct rk3288_cru *)RK3288_CRU_BASE;
+
+	switch (cru->cru_glb_rst_st) {
+	case (1 << 0):
+		reset_source_set(RESET_POR);
+		break;
+	case (1 << 1):
+		reset_source_set(RESET_RST);
+		break;
+	case (1 << 2):
+	case (1 << 3):
+		reset_source_set(RESET_THERM);
+		break;
+	case (1 << 4):
+	case (1 << 5):
+		reset_source_set(RESET_WDG);
+		break;
+	default:
+		reset_source_set(RESET_UKWN);
+		break;
+	}
+}
+
+static int rk3288_init(void)
+{
+	restart_handler_register_fn(rockchip_restart_soc);
+
+	if (IS_ENABLED(CONFIG_RESET_SOURCE))
+		rk3288_detect_reset_reason();
+
+	return 0;
+}
+postcore_initcall(rk3288_init);
+
+/*
+ * ATM we are not able to determine the boot source.
+ * So let's handle the environment on eMMC, regardless which device
+ * we are booting from.
+ */
+static int rk3288_env_init(void)
+{
+	const char *envpath = "/chosen/environment-emmc";
+	int ret;
+
+	bootsource_set(BOOTSOURCE_MMC);
+	bootsource_set_instance(0);
+
+	ret = of_device_enable_path(envpath);
+	if (ret < 0)
+		pr_warn("Failed to enable environment partition '%s' (%d)\n",
+			envpath, ret);
+
+	return 0;
+}
+device_initcall(rk3288_env_init);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
