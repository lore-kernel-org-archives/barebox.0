Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezIIz-0002e5-KI
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 08:44:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006L8-UO
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006rG-LV
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 23 Mar 2018 09:43:50 +0100
Message-Id: <20180323084352.20931-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
References: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/4] i.MX53/TX53: rework to dts based boot
To: barebox@lists.infradead.org

Since nobody likes to use platformcode based machines any more, we also
switch this one to use dts based booting.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/Makefile                    |   2 -
 arch/arm/boards/karo-tx53/board.c    | 222 +++++------------------------------
 arch/arm/boards/karo-tx53/lowlevel.c |  56 +++++++--
 arch/arm/configs/imx_v7_defconfig    |   1 +
 arch/arm/dts/Makefile                |   1 +
 arch/arm/dts/imx53-tx53-1011.dts     |  13 ++
 arch/arm/dts/imx53-tx53-xx30.dts     |  13 ++
 arch/arm/mach-imx/Kconfig            |  25 +---
 images/Makefile.imx                  |  10 ++
 9 files changed, 119 insertions(+), 224 deletions(-)
 create mode 100644 arch/arm/dts/imx53-tx53-1011.dts
 create mode 100644 arch/arm/dts/imx53-tx53-xx30.dts

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 620a3ccb0b..070a9903f2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -254,8 +254,6 @@ imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-heade
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_PCM043) += $(boarddir)/phytec-phycore-imx35/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_KINDLE3) += $(boarddir)/kindle3/flash-header.imxcfg
-imxcfg-$(CONFIG_TX53_REV_1011) += $(boarddir)/karo-tx53/flash-header-tx53-rev1011.imxcfg
-imxcfg-$(CONFIG_TX53_REV_XX30) += $(boarddir)/karo-tx53/flash-header-tx53-revxx30.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 51b534d01f..9f1485ad0b 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -41,223 +41,55 @@
 #include <io.h>
 #include <asm/mmu.h>
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RMII,
-};
-
-static iomux_v3_cfg_t tx53_pads[] = {
-	/* UART1 */
-	MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
-	MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
-
-	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
-	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
-
-	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
-	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
-
-	/* setup FEC PHY pins for GPIO function */
-	MX53_PAD_FEC_REF_CLK__GPIO1_23,
-	MX53_PAD_FEC_MDC__GPIO1_31,
-	MX53_PAD_FEC_MDIO__GPIO1_22,
-	MX53_PAD_FEC_RXD0__GPIO1_27,
-	MX53_PAD_FEC_RXD1__GPIO1_26,
-	MX53_PAD_FEC_RX_ER__GPIO1_24,
-	MX53_PAD_FEC_TX_EN__GPIO1_28,
-	MX53_PAD_FEC_TXD0__GPIO1_30,
-	MX53_PAD_FEC_TXD1__GPIO1_29,
-	MX53_PAD_FEC_CRS_DV__GPIO1_25,
-
-	/* FEC PHY reset */
-	MX53_PAD_PATA_DA_0__GPIO7_6,
-	/* FEC PHY power */
-	MX53_PAD_EIM_D20__GPIO3_20,
-
-	/* SD1 */
-	MX53_PAD_SD1_CMD__ESDHC1_CMD,
-	MX53_PAD_SD1_CLK__ESDHC1_CLK,
-	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
-
-	/* SD1_CD */
-	MX53_PAD_EIM_D24__GPIO3_24,
-
-	MX53_PAD_GPIO_3__I2C3_SCL,
-	MX53_PAD_GPIO_6__I2C3_SDA,
-
-	MX53_PAD_CSI0_DAT12__IPU_CSI0_D_12,
-	MX53_PAD_CSI0_DAT13__IPU_CSI0_D_13,
-	MX53_PAD_CSI0_DAT14__IPU_CSI0_D_14,
-	MX53_PAD_CSI0_DAT15__IPU_CSI0_D_15,
-	MX53_PAD_CSI0_DAT16__IPU_CSI0_D_16,
-	MX53_PAD_CSI0_DAT17__IPU_CSI0_D_17,
-	MX53_PAD_CSI0_DAT18__IPU_CSI0_D_18,
-	MX53_PAD_CSI0_DAT19__IPU_CSI0_D_19,
-	MX53_PAD_CSI0_VSYNC__IPU_CSI0_VSYNC,
-	MX53_PAD_CSI0_MCLK__IPU_CSI0_HSYNC,
-	MX53_PAD_CSI0_PIXCLK__IPU_CSI0_PIXCLK,
-};
-
-#define TX53_SD1_CD			IMX_GPIO_NR(3, 24)
-
-static struct esdhc_platform_data tx53_sd1_data = {
-	.cd_gpio = TX53_SD1_CD,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_NONE,
-	.caps    = MMC_CAP_4_BIT_DATA,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width		= 1,
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
-#define FEC_POWER_GPIO		IMX_GPIO_NR(3, 20)
-#define FEC_RESET_GPIO		IMX_GPIO_NR(7, 6)
-
-static struct tx53_fec_gpio_setup {
-	iomux_v3_cfg_t pad;
-	unsigned gpio:9,
-		dir:1,
-		level:1;
-} tx53_fec_gpios[] = {
-	{ MX53_PAD_PATA_DA_0__GPIO7_6, FEC_RESET_GPIO,	   1, 0, }, /* PHY reset */
-	{ MX53_PAD_EIM_D20__GPIO3_20, FEC_POWER_GPIO,	   1, 1, }, /* PHY power enable */
-	{ MX53_PAD_FEC_REF_CLK__GPIO1_23, IMX_GPIO_NR(1, 23), 0, }, /* ENET_CLK */
-	{ MX53_PAD_FEC_MDC__GPIO1_31, IMX_GPIO_NR(1, 31), 1, 0, }, /* MDC */
-	{ MX53_PAD_FEC_MDIO__GPIO1_22, IMX_GPIO_NR(1, 22), 1, 0, }, /* MDIO */
-	{ MX53_PAD_FEC_RXD0__GPIO1_27, IMX_GPIO_NR(1, 27), 1, 1, }, /* Mode0/RXD0 */
-	{ MX53_PAD_FEC_RXD1__GPIO1_26, IMX_GPIO_NR(1, 26), 1, 1, }, /* Mode1/RXD1 */
-	{ MX53_PAD_FEC_RX_ER__GPIO1_24, IMX_GPIO_NR(1, 24), 0, }, /* RX_ER */
-	{ MX53_PAD_FEC_TX_EN__GPIO1_28, IMX_GPIO_NR(1, 28), 1, 0, }, /* TX_EN */
-	{ MX53_PAD_FEC_TXD0__GPIO1_30, IMX_GPIO_NR(1, 30), 1, 0, }, /* TXD0 */
-	{ MX53_PAD_FEC_TXD1__GPIO1_29, IMX_GPIO_NR(1, 29), 1, 0, }, /* TXD1 */
-	{ MX53_PAD_FEC_CRS_DV__GPIO1_25, IMX_GPIO_NR(1, 25), 1, 1, }, /* Mode2/CRS_DV */
-};
-
-static iomux_v3_cfg_t tx53_fec_pads[] = {
-	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
-	MX53_PAD_FEC_MDC__FEC_MDC,
-	MX53_PAD_FEC_MDIO__FEC_MDIO,
-	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
-	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
-	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
-	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
-	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
-	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
-};
-
-static inline void tx53_fec_init(void)
-{
-	int i;
-
-	/* Configure LAN8700 pads as GPIO and set up
-	 * necessary strap options for PHY
-	 */
-	for (i = 0; i < ARRAY_SIZE(tx53_fec_gpios); i++) {
-		struct tx53_fec_gpio_setup *gs = &tx53_fec_gpios[i];
-
-		if (gs->dir)
-			gpio_direction_output(gs->gpio, gs->level);
-		else
-			gpio_direction_input(gs->gpio);
-
-		mxc_iomux_v3_setup_pad(gs->pad);
-	}
-
-	/*
-	 *Turn on phy power, leave in reset state
-	 */
-	gpio_set_value(FEC_POWER_GPIO, 1);
-
-	/*
-	 * Wait some time to let the phy activate the internal regulator
-	 */
-	mdelay(10);
-
-	/*
-	 * Deassert reset, phy latches the rest of bootstrap pins
-	 */
-	gpio_set_value(FEC_RESET_GPIO, 1);
-
-	/* LAN7800 has an internal Power On Reset (POR) signal (OR'ed with
-	 * the external RESET signal) which is deactivated 21ms after
-	 * power on and latches the strap options.
-	 * Delay for 22ms to ensure, that the internal POR is inactive
-	 * before reconfiguring the strap pins.
-	 */
-	mdelay(22);
-
-	/*
-	 * The phy is ready, now configure imx51 pads for fec operation
-	 */
-	mxc_iomux_v3_setup_multiple_pads(tx53_fec_pads,
-			ARRAY_SIZE(tx53_fec_pads));
-}
-
 static int tx53_devices_init(void)
 {
-	imx53_iim_register_fec_ethaddr();
-	tx53_fec_init();
-	imx53_add_fec(&fec_info);
-	imx53_add_mmc0(&tx53_sd1_data);
-	imx53_add_nand(&nand_info);
-
-	armlinux_set_architecture(MACH_TYPE_TX53);
-
-	/* rev xx30 can boot from nand or USB */
-	imx53_bbu_internal_nand_register_handler("nand-xx30",
-		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
-
-	/* rev 1011 can boot from MMC/SD, other bootsource currently unknown */
-	imx53_bbu_internal_mmc_register_handler("mmc-1011", "/dev/disk0", 0);
+	const char *envdev;
+	uint32_t flag_nand = 0;
+	uint32_t flag_mmc = 0;
 
-	return 0;
-}
+	if (!of_machine_is_compatible("karo,tx53"))
+		return 0;
 
-device_initcall(tx53_devices_init);
-
-static int tx53_part_init(void)
-{
-	const char *envdev;
+	barebox_set_model("Ka-Ro TX53");
+	barebox_set_hostname("tx53");
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		devfs_add_partition("disk0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
-		devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
+		devfs_add_partition("mmc0", 0x00000, SZ_512K,
+				DEVFS_PARTITION_FIXED, "self0");
+		devfs_add_partition("mmc0", SZ_512K, SZ_1M,
+				DEVFS_PARTITION_FIXED, "env0");
 		envdev = "MMC";
+		flag_mmc |= BBU_HANDLER_FLAG_DEFAULT;
 		break;
 	case BOOTSOURCE_NAND:
 	default:
-		devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self_raw");
+		devfs_add_partition("nand0", 0x00000, 0x80000,
+				DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
-		devfs_add_partition("nand0", 0x80000, 0x100000, DEVFS_PARTITION_FIXED, "env_raw");
+		devfs_add_partition("nand0", 0x80000, 0x100000,
+				DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		envdev = "NAND";
+		flag_nand |= BBU_HANDLER_FLAG_DEFAULT;
 		break;
 	}
 
-	printf("Using environment in %s\n", envdev);
+	armlinux_set_architecture(MACH_TYPE_TX53);
 
-	return 0;
-}
-late_initcall(tx53_part_init);
+	/* rev xx30 can boot from nand or USB */
+	imx53_bbu_internal_nand_register_handler("nand-xx30",
+						flag_nand, SZ_512K);
 
-static int tx53_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(tx53_pads, ARRAY_SIZE(tx53_pads));
+	/* rev 1011 can boot from MMC/SD, other bootsource currently unknown */
+	imx53_bbu_internal_mmc_register_handler("mmc-1011",
+						"/dev/mmc0", flag_mmc);
 
-	if (!IS_ENABLED(CONFIG_TX53_REV_XX30))
+	if (of_machine_is_compatible("karo,tx53-1011"))
 		imx53_init_lowlevel(1000);
 
-	barebox_set_model("Ka-Ro TX53");
-	barebox_set_hostname("tx53");
+	printf("Using environment in %s\n", envdev);
 
-	imx53_add_uart0();
 	return 0;
 }
-console_initcall(tx53_console_init);
+device_initcall(tx53_devices_init);
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 9f584fa256..15dba7df22 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -1,23 +1,63 @@
 #include <common.h>
+#include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
 #include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
+#include <asm/cache.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx53_tx53_xx30_start[];
+extern char __dtb_imx53_tx53_1011_start[];
+
+static inline void setup_uart(void)
 {
+	void __iomem *uart = IOMEM(MX53_UART1_BASE_ADDR);
+
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x270);
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x274);
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x878);
+
+	imx53_ungate_all_peripherals();
+	imx53_uart_setup(uart);
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+static void __imx53_tx53_init(int is_xx30)
+{
+	void *fdt;
+	void *fdt_blob_fixed_offset = __dtb_imx53_tx53_1011_start;
+
+	arm_early_mmu_cache_invalidate();
 	imx5_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
-	/*
-	 * For the TX53 rev 8030 the SDRAM setup is not stable without
-	 * the proper PLL setup. It will crash once we enable the MMU,
-	 * so do the PLL setup here.
-	 */
-	if (IS_ENABLED(CONFIG_TX53_REV_XX30))
+	if (is_xx30) {
 		imx53_init_lowlevel_early(800);
+		fdt_blob_fixed_offset = __dtb_imx53_tx53_xx30_start;
+	}
 
-	imx53_barebox_entry(NULL);
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+
+	imx53_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx53_tx53_xx30, r0, r1, r2)
+{
+	__imx53_tx53_init(1);
+}
+
+ENTRY_FUNCTION(start_imx53_tx53_1011, r0, r1, r2)
+{
+	__imx53_tx53_init(0);
 }
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 08ec6eb862..426bc04651 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -10,6 +10,7 @@ CONFIG_MACH_GUF_VINCELL=y
 CONFIG_MACH_GUF_VINCELL_XLOAD=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
+CONFIG_MACH_TX53=y
 CONFIG_MACH_PHYTEC_SOM_IMX6=y
 CONFIG_MACH_KONTRON_SAMX6I=y
 CONFIG_MACH_DFI_FS700_M60=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index db703c1e0f..e60e0ea0c6 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -19,6 +19,7 @@ pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
+pbl-dtb-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
 pbl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
diff --git a/arch/arm/dts/imx53-tx53-1011.dts b/arch/arm/dts/imx53-tx53-1011.dts
new file mode 100644
index 0000000000..e9b1b3a221
--- /dev/null
+++ b/arch/arm/dts/imx53-tx53-1011.dts
@@ -0,0 +1,13 @@
+/dts-v1/;
+#include <arm/imx53-tx53.dtsi>
+
+/ {
+	model = "Ka-Ro electronics TX53 module";
+	compatible = "karo,tx53-1011", "karo,tx53", "fsl,imx53";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	sgtl5000: dummy { };
+};
diff --git a/arch/arm/dts/imx53-tx53-xx30.dts b/arch/arm/dts/imx53-tx53-xx30.dts
new file mode 100644
index 0000000000..b9d1c65a2a
--- /dev/null
+++ b/arch/arm/dts/imx53-tx53-xx30.dts
@@ -0,0 +1,13 @@
+/dts-v1/;
+#include <arm/imx53-tx53.dtsi>
+
+/ {
+	model = "Ka-Ro electronics TX53 module";
+	compatible = "karo,tx53-xx30", "karo,tx53", "fsl,imx53";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	sgtl5000: dummy { };
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index cf5338e5fa..9052a94ea0 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -289,6 +289,12 @@ config MACH_FREESCALE_MX53_VMX53
 	  Say Y here if you are using the Voipac Technologies X53-DMM-668
 	  module equipped with a Freescale i.MX53 Processor
 
+config MACH_TX53
+	bool "Ka-Ro TX53"
+	select ARCH_IMX53
+	help
+	  Say Y here if you are using the Ka-Ro tx53 board
+
 config MACH_PHYTEC_SOM_IMX6
         bool "Phytec phyCARD-i.MX6 and phyFLEX-i.MX6"
         select ARCH_IMX6
@@ -610,12 +616,6 @@ config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 	select ARCH_IMX53
 
-config MACH_TX53
-	bool "Ka-Ro TX53"
-	select ARCH_IMX53
-	help
-	  Say Y here if you are using the Ka-Ro tx53 board
-
 endchoice
 
 # ----------------------------------------------------------
@@ -689,19 +689,6 @@ endchoice
 
 endif
 
-if MACH_TX53
-
-choice
-	prompt "TX53 board revision"
-config TX53_REV_1011
-	bool "1011"
-config TX53_REV_XX30
-	bool "8030 / 1030"
-
-endchoice
-
-endif
-
 endmenu
 
 menu "i.MX specific settings"
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 0428c48ade..ed2774263d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -139,6 +139,16 @@ CFG_start_imx53_mba53_1gib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-
 FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblx.imximg
 image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-1gib.img
 
+pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_xx30
+CFG_start_imx53_tx53_xx30.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30.imxcfg
+FILE_barebox-tx53-xx30.img = start_imx53_tx53_xx30.pblx.imximg
+image-$(CONFIG_MACH_TX53) += barebox-tx53-xx30.img
+
+pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_1011
+CFG_start_imx53_tx53_1011.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-rev1011.imxcfg
+FILE_barebox-tx53-1011.img = start_imx53_tx53_1011.pblx.imximg
+image-$(CONFIG_MACH_TX53) += barebox-tx53-1011.img
+
 # ----------------------- i.MX6 based boards ---------------------------
 pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblx.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
