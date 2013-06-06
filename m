Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5t-00029g-Im
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:54 +0200
Message-Id: <1370528574-27107-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370528574-27107-1-git-send-email-s.hauer@pengutronix.de>
References: <1370528574-27107-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX6 DMO RealQ7: Switch to devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/board.c | 314 +++--------------------------
 arch/arm/configs/dmo-realq7_defconfig  |   6 +-
 arch/arm/dts/Makefile                  |   3 +-
 arch/arm/dts/imx6q-dmo-realq7.dts      | 354 +++++++++++++++++++++++++++++++++
 4 files changed, 388 insertions(+), 289 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-dmo-realq7.dts

diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index 35ef72c..b2a27a4 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -17,206 +17,30 @@
  *
  */
 
-#include <common.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx6-regs.h>
-#include <asm/armlinux.h>
-#include <fec.h>
 #include <generated/mach-types.h>
+#include <environment.h>
+#include <bootsource.h>
 #include <partition.h>
-#include <spi/spi.h>
+#include <common.h>
+#include <envfs.h>
 #include <sizes.h>
+#include <init.h>
 #include <gpio.h>
-#include <mci.h>
-#include <bootsource.h>
-#include <mfd/stmpe-i2c.h>
+#include <fec.h>
+
 #include <linux/micrel_phy.h>
+#include <mfd/stmpe-i2c.h>
 
+#include <asm/armlinux.h>
 #include <asm/io.h>
-#include <asm/mmu.h>
 
 #include <mach/devices-imx6.h>
+#include <mach/imx6-regs.h>
 #include <mach/iomux-mx6.h>
 #include <mach/imx6-mmdc.h>
-#include <mach/imx6-regs.h>
 #include <mach/generic.h>
 #include <mach/imx6.h>
 #include <mach/bbu.h>
-#include <mach/spi.h>
-
-static iomux_v3_cfg_t realq7_pads[] = {
-	MX6Q_PAD_SD2_CMD__AUDMUX_AUD4_RXC,
-	MX6Q_PAD_SD2_DAT0__AUDMUX_AUD4_RXD,
-	MX6Q_PAD_SD2_CLK__AUDMUX_AUD4_RXFS,
-	MX6Q_PAD_SD2_DAT2__AUDMUX_AUD4_TXD,
-	MX6Q_PAD_SD2_DAT1__AUDMUX_AUD4_TXFS,
-	MX6Q_PAD_KEY_ROW2__CAN1_RXCAN,
-	MX6Q_PAD_GPIO_7__CAN1_TXCAN,
-	MX6Q_PAD_CSI0_VSYNC__CHEETAH_TRACE_0,
-	MX6Q_PAD_CSI0_DAT4__CHEETAH_TRACE_1,
-	MX6Q_PAD_CSI0_DAT13__CHEETAH_TRACE_10,
-	MX6Q_PAD_CSI0_DAT14__CHEETAH_TRACE_11,
-	MX6Q_PAD_CSI0_DAT15__CHEETAH_TRACE_12,
-	MX6Q_PAD_CSI0_DAT16__CHEETAH_TRACE_13,
-	MX6Q_PAD_CSI0_DAT17__CHEETAH_TRACE_14,
-	MX6Q_PAD_CSI0_DAT18__CHEETAH_TRACE_15,
-	MX6Q_PAD_CSI0_DAT5__CHEETAH_TRACE_2,
-	MX6Q_PAD_CSI0_DAT6__CHEETAH_TRACE_3,
-	MX6Q_PAD_CSI0_DAT7__CHEETAH_TRACE_4,
-	MX6Q_PAD_CSI0_DAT8__CHEETAH_TRACE_5,
-	MX6Q_PAD_CSI0_DAT9__CHEETAH_TRACE_6,
-	MX6Q_PAD_CSI0_DAT10__CHEETAH_TRACE_7,
-	MX6Q_PAD_CSI0_DAT11__CHEETAH_TRACE_8,
-	MX6Q_PAD_CSI0_DAT12__CHEETAH_TRACE_9,
-	MX6Q_PAD_CSI0_DATA_EN__CHEETAH_TRCLK,
-	MX6Q_PAD_CSI0_MCLK__CHEETAH_TRCTL,
-	MX6Q_PAD_EIM_OE__ECSPI2_MISO,
-	MX6Q_PAD_EIM_CS1__ECSPI2_MOSI,
-	MX6Q_PAD_EIM_CS0__ECSPI2_SCLK,
-	MX6Q_PAD_EIM_D24__ECSPI2_SS2,
-	MX6Q_PAD_EIM_D25__ECSPI2_SS3,
-	MX6Q_PAD_SD1_DAT0__ECSPI5_MISO,
-	MX6Q_PAD_SD1_CMD__ECSPI5_MOSI,
-	MX6Q_PAD_SD1_CLK__ECSPI5_SCLK,
-	MX6Q_PAD_SD2_DAT3__GPIO_1_12,
-	MX6Q_PAD_ENET_MDC__ENET_MDC,
-	MX6Q_PAD_ENET_MDIO__ENET_MDIO,
-	/* IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE_RGMII = 0x80000, done in flash_header.c */
-	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
-	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
-	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
-	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
-	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
-	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
-	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
-	MX6Q_PAD_GPIO_0__GPIO_1_0,
-	MX6Q_PAD_GPIO_2__GPIO_1_2,
-	MX6Q_PAD_ENET_CRS_DV__GPIO_1_25,
-	MX6Q_PAD_ENET_RXD0__GPIO_1_27,
-	MX6Q_PAD_ENET_TX_EN__GPIO_1_28,
-	MX6Q_PAD_GPIO_3__GPIO_1_3,
-	MX6Q_PAD_GPIO_4__GPIO_1_4,
-	MX6Q_PAD_GPIO_5__GPIO_1_5,
-	MX6Q_PAD_GPIO_8__GPIO_1_8,
-	MX6Q_PAD_GPIO_9__GPIO_1_9,
-	MX6Q_PAD_NANDF_D0__GPIO_2_0,
-	MX6Q_PAD_NANDF_D1__GPIO_2_1,
-	MX6Q_PAD_NANDF_D2__GPIO_2_2,
-	MX6Q_PAD_EIM_A17__GPIO_2_21,
-	MX6Q_PAD_EIM_A16__GPIO_2_22,
-	MX6Q_PAD_EIM_LBA__GPIO_2_27,
-	MX6Q_PAD_NANDF_D3__GPIO_2_3,
-	MX6Q_PAD_NANDF_D4__GPIO_2_4,
-	MX6Q_PAD_NANDF_D5__GPIO_2_5,
-	MX6Q_PAD_NANDF_D6__GPIO_2_6,
-	MX6Q_PAD_NANDF_D7__GPIO_2_7,
-	MX6Q_PAD_EIM_DA10__GPIO_3_10,
-	MX6Q_PAD_EIM_DA11__GPIO_3_11,
-	MX6Q_PAD_EIM_DA12__GPIO_3_12,
-	MX6Q_PAD_EIM_DA13__GPIO_3_13,
-	MX6Q_PAD_EIM_DA14__GPIO_3_14,
-	MX6Q_PAD_EIM_DA15__GPIO_3_15,
-	MX6Q_PAD_EIM_D16__GPIO_3_16,
-	MX6Q_PAD_EIM_D18__GPIO_3_18,
-	MX6Q_PAD_EIM_D19__GPIO_3_19,
-	MX6Q_PAD_EIM_D20__GPIO_3_20,
-	MX6Q_PAD_EIM_D23__GPIO_3_23,
-	MX6Q_PAD_EIM_D29__GPIO_3_29,
-	MX6Q_PAD_EIM_D30__GPIO_3_30,
-	MX6Q_PAD_EIM_DA8__GPIO_3_8,
-	MX6Q_PAD_EIM_DA9__GPIO_3_9,
-	MX6Q_PAD_KEY_COL2__GPIO_4_10,
-	MX6Q_PAD_KEY_COL4__GPIO_4_14,
-	MX6Q_PAD_KEY_ROW4__GPIO_4_15,
-	MX6Q_PAD_GPIO_19__GPIO_4_5,
-	MX6Q_PAD_KEY_COL0__GPIO_4_6,
-	MX6Q_PAD_KEY_ROW0__GPIO_4_7,
-	MX6Q_PAD_KEY_COL1__GPIO_4_8,
-	MX6Q_PAD_KEY_ROW1__GPIO_4_9,
-	MX6Q_PAD_EIM_WAIT__GPIO_5_0,
-	MX6Q_PAD_EIM_A25__GPIO_5_2,
-	MX6Q_PAD_EIM_A24__GPIO_5_4,
-	MX6Q_PAD_EIM_BCLK__GPIO_6_31,
-	MX6Q_PAD_SD3_DAT5__GPIO_7_0,
-	MX6Q_PAD_SD3_DAT4__GPIO_7_1,
-	MX6Q_PAD_GPIO_17__GPIO_7_12,
-	MX6Q_PAD_GPIO_18__GPIO_7_13,
-	MX6Q_PAD_SD3_RST__GPIO_7_8,
-	MX6Q_PAD_EIM_D21__I2C1_SCL,
-	MX6Q_PAD_EIM_D28__I2C1_SDA,
-	MX6Q_PAD_EIM_EB2__I2C2_SCL,
-	MX6Q_PAD_KEY_ROW3__I2C2_SDA,
-	MX6Q_PAD_EIM_D17__I2C3_SCL,
-	MX6Q_PAD_GPIO_6__I2C3_SDA,
-	MX6Q_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK,
-	MX6Q_PAD_DI0_PIN15__IPU1_DI0_PIN15,
-	MX6Q_PAD_DI0_PIN2__IPU1_DI0_PIN2,
-	MX6Q_PAD_DI0_PIN3__IPU1_DI0_PIN3,
-	MX6Q_PAD_DI0_PIN4__IPU1_DI0_PIN4,
-	MX6Q_PAD_DISP0_DAT0__IPU1_DISP0_DAT_0,
-	MX6Q_PAD_DISP0_DAT1__IPU1_DISP0_DAT_1,
-	MX6Q_PAD_DISP0_DAT10__IPU1_DISP0_DAT_10,
-	MX6Q_PAD_DISP0_DAT11__IPU1_DISP0_DAT_11,
-	MX6Q_PAD_DISP0_DAT12__IPU1_DISP0_DAT_12,
-	MX6Q_PAD_DISP0_DAT13__IPU1_DISP0_DAT_13,
-	MX6Q_PAD_DISP0_DAT14__IPU1_DISP0_DAT_14,
-	MX6Q_PAD_DISP0_DAT15__IPU1_DISP0_DAT_15,
-	MX6Q_PAD_DISP0_DAT16__IPU1_DISP0_DAT_16,
-	MX6Q_PAD_DISP0_DAT17__IPU1_DISP0_DAT_17,
-	MX6Q_PAD_DISP0_DAT18__IPU1_DISP0_DAT_18,
-	MX6Q_PAD_DISP0_DAT19__IPU1_DISP0_DAT_19,
-	MX6Q_PAD_DISP0_DAT2__IPU1_DISP0_DAT_2,
-	MX6Q_PAD_DISP0_DAT20__IPU1_DISP0_DAT_20,
-	MX6Q_PAD_DISP0_DAT21__IPU1_DISP0_DAT_21,
-	MX6Q_PAD_DISP0_DAT22__IPU1_DISP0_DAT_22,
-	MX6Q_PAD_DISP0_DAT23__IPU1_DISP0_DAT_23,
-	MX6Q_PAD_DISP0_DAT3__IPU1_DISP0_DAT_3,
-	MX6Q_PAD_DISP0_DAT4__IPU1_DISP0_DAT_4,
-	MX6Q_PAD_DISP0_DAT5__IPU1_DISP0_DAT_5,
-	MX6Q_PAD_DISP0_DAT6__IPU1_DISP0_DAT_6,
-	MX6Q_PAD_DISP0_DAT7__IPU1_DISP0_DAT_7,
-	MX6Q_PAD_DISP0_DAT8__IPU1_DISP0_DAT_8,
-	MX6Q_PAD_DISP0_DAT9__IPU1_DISP0_DAT_9,
-	MX6Q_PAD_SD1_DAT2__PWM2_PWMO,
-	MX6Q_PAD_SD1_DAT1__PWM3_PWMO,
-	MX6Q_PAD_GPIO_16__SJC_DE_B,
-	MX6Q_PAD_KEY_COL3__SPDIF_IN1,
-	MX6Q_PAD_EIM_D22__SPDIF_OUT1,
-	MX6Q_PAD_SD3_DAT6__UART1_RXD,
-	MX6Q_PAD_SD3_DAT7__UART1_TXD,
-	MX6Q_PAD_EIM_D27__UART2_RXD,
-	MX6Q_PAD_EIM_D26__UART2_TXD,
-	MX6Q_PAD_EIM_D31__GPIO_3_31,
-	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
-	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
-	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
-	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
-	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
-	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
-	MX6Q_PAD_SD4_CLK__USDHC4_CLK,
-	MX6Q_PAD_SD4_CMD__USDHC4_CMD,
-	MX6Q_PAD_SD4_DAT0__USDHC4_DAT0,
-	MX6Q_PAD_SD4_DAT1__USDHC4_DAT1,
-	MX6Q_PAD_SD4_DAT2__USDHC4_DAT2,
-	MX6Q_PAD_SD4_DAT3__USDHC4_DAT3,
-	MX6Q_PAD_SD4_DAT4__USDHC4_DAT4,
-	MX6Q_PAD_SD4_DAT5__USDHC4_DAT5,
-	MX6Q_PAD_SD4_DAT6__USDHC4_DAT6,
-	MX6Q_PAD_SD4_DAT7__USDHC4_DAT7,
-	MX6Q_PAD_NANDF_ALE__USDHC4_RST,
-	MX6Q_PAD_NANDF_CS1__GPIO_6_14,
-	MX6Q_PAD_NANDF_CS2__GPIO_6_15,
-};
-
-static iomux_v3_cfg_t realq7_pads_enet[] = {
-	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
-	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
-	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
-	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
-	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
-	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
-};
 
 #define RQ7_GPIO_ENET_PHYADD2	IMX_GPIO_NR(6, 30)
 #define RQ7_GPIO_ENET_MODE0	IMX_GPIO_NR(6, 25)
@@ -224,8 +48,6 @@ static iomux_v3_cfg_t realq7_pads_enet[] = {
 #define RQ7_GPIO_ENET_MODE2	IMX_GPIO_NR(6, 28)
 #define RQ7_GPIO_ENET_MODE3	IMX_GPIO_NR(6, 29)
 #define RQ7_GPIO_ENET_EN_CLK125	IMX_GPIO_NR(6, 24)
-#define RQ7_GPIO_SD3_CD		IMX_GPIO_NR(6, 14)
-#define RQ7_GPIO_SD3_WP		IMX_GPIO_NR(6, 15)
 
 static iomux_v3_cfg_t realq7_pads_gpio[] = {
 	MX6Q_PAD_RGMII_RXC__GPIO_6_30,
@@ -257,12 +79,7 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RGMII,
-	.phy_addr = -1,
-};
-
-static void realq7_enet_init(void)
+static int realq7_enet_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(realq7_pads_gpio, ARRAY_SIZE(realq7_pads_gpio));
 	gpio_direction_output(RQ7_GPIO_ENET_PHYADD2, 0);
@@ -278,87 +95,18 @@ static void realq7_enet_init(void)
 	gpio_direction_output(25, 1);
 	mdelay(50);
 
-	mxc_iomux_v3_setup_multiple_pads(realq7_pads_enet, ARRAY_SIZE(realq7_pads_enet));
-
 	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
 					   ksz9031rn_phy_fixup);
 
-	imx6_add_fec(&fec_info);
-}
-
-static int realq7_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x10000000, SZ_2G);
-
 	return 0;
 }
-mem_initcall(realq7_mem_init);
-
-static int realq7_spi_cs[] = { IMX_GPIO_NR(1, 12), };
-
-static struct spi_imx_master realq7_spi_0_data = {
-	.chipselect = realq7_spi_cs,
-	.num_chipselect = ARRAY_SIZE(realq7_spi_cs),
-};
-
-static const struct spi_board_info realq7_spi_board_info[] = {
-	{
-		.name = "m25p80",
-		.max_speed_hz = 40000000,
-		.bus_num = 4,
-		.chip_select = 0,
-	}
-};
-
-static struct esdhc_platform_data realq7_emmc_data = {
-	.cd_type = ESDHC_CD_PERMANENT,
-	.caps = MMC_MODE_8BIT,
-	.devname = "emmc",
-};
-
-static struct stmpe_platform_data stmpe1_pdata = {
-	.gpio_base = 224,
-	.blocks = STMPE_BLOCK_GPIO,
-};
-
-static struct stmpe_platform_data stmpe2_pdata = {
-	.gpio_base = 240,
-	.blocks = STMPE_BLOCK_GPIO,
-};
-
-static struct i2c_board_info realq7_i2c2_devices[] = {
-	{
-		I2C_BOARD_INFO("stmpe-i2c", 0x40),
-		.platform_data = &stmpe1_pdata,
-	}, {
-		I2C_BOARD_INFO("stmpe-i2c", 0x44),
-		.platform_data = &stmpe2_pdata,
-	},
-};
+fs_initcall(realq7_enet_init);
 
 static int realq7_devices_init(void)
 {
-	imx6_add_mmc2(NULL);
-	imx6_add_mmc3(&realq7_emmc_data);
-
-	realq7_enet_init();
-
-	i2c_register_board_info(1, realq7_i2c2_devices,
-			ARRAY_SIZE(realq7_i2c2_devices));
-
-	imx6_add_i2c0(NULL);
-	imx6_add_i2c1(NULL);
-	imx6_add_i2c2(NULL);
-
-	spi_register_board_info(realq7_spi_board_info,
-			ARRAY_SIZE(realq7_spi_board_info));
-	imx6_add_spi4(&realq7_spi_0_data);
-
-	imx6_add_sata();
-
-	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0",
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0x00907000);
-	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
+	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.barebox",
 		0, NULL, 0, 0x00907000);
 
 	return 0;
@@ -367,41 +115,33 @@ device_initcall(realq7_devices_init);
 
 static int realq7_env_init(void)
 {
-	char *source_str = NULL;
-
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		if (!IS_ENABLED(CONFIG_MCI_STARTUP))
-			setenv("mci0.probe", "1");
-		devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
-		devfs_add_partition("disk0", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
-		source_str = "SD/MMC";
-		break;
-	case BOOTSOURCE_SPI:
-		devfs_add_partition("m25p0", 0, SZ_256K, DEVFS_PARTITION_FIXED, "self0");
-		devfs_add_partition("m25p0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env0");
-		source_str = "SPI flash";
+		if (!IS_ENABLED(CONFIG_MCI_STARTUP)) {
+			struct device_d *dev = get_device_by_name("mmc3");
+			if (dev)
+				device_detect(dev);
+		}
+		devfs_add_partition("mmc3", 0, SZ_1M, DEVFS_PARTITION_FIXED, "mmc3.barebox");
+		devfs_add_partition("mmc3", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "mmc3.bareboxenv");
+		default_environment_path = "/dev/mmc3.bareboxenv";
 		break;
 	default:
-		printf("unknown Bootsource, no persistent environment\n");
+	case BOOTSOURCE_SPI:
+		devfs_add_partition("m25p0", 0, SZ_256K, DEVFS_PARTITION_FIXED, "m25p0.barebox");
+		devfs_add_partition("m25p0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "m25p0.bareboxenv");
+		default_environment_path = "/dev/m25p0.bareboxenv";
 		break;
 	}
 
-	if (source_str)
-		printf("Using environment from %s\n", source_str);
-
 	return 0;
 }
 late_initcall(realq7_env_init);
 
 static int realq7_console_init(void)
 {
-	mxc_iomux_v3_setup_multiple_pads(realq7_pads, ARRAY_SIZE(realq7_pads));
-
 	imx6_init_lowlevel();
 
-	imx6_add_uart1();
-
 	return 0;
 }
-console_initcall(realq7_console_init);
+core_initcall(realq7_console_init);
diff --git a/arch/arm/configs/dmo-realq7_defconfig b/arch/arm/configs/dmo-realq7_defconfig
index d063e97..5501683 100644
--- a/arch/arm/configs/dmo-realq7_defconfig
+++ b/arch/arm/configs/dmo-realq7_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx6q-dmo-realq7"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX6=y
 CONFIG_MACH_REALQ7=y
@@ -18,6 +20,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/dmo-mx6-realq7/env"
 CONFIG_RESET_SOURCE=y
@@ -50,7 +53,6 @@ CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_BAREBOX_UPDATE=y
@@ -64,12 +66,14 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index fa6a330..ebc6459 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,5 +1,6 @@
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb
-dtb-$(CONFIG_ARCH_IMX6) += imx6q-sabrelite.dtb \
+dtb-$(CONFIG_ARCH_IMX6) += imx6q-dmo-realq7.dtb \
+	imx6q-sabrelite.dtb \
 	imx6q-sabresd.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
diff --git a/arch/arm/dts/imx6q-dmo-realq7.dts b/arch/arm/dts/imx6q-dmo-realq7.dts
new file mode 100644
index 0000000..a33a700
--- /dev/null
+++ b/arch/arm/dts/imx6q-dmo-realq7.dts
@@ -0,0 +1,354 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+/dts-v1/;
+
+#include "imx6q.dtsi"
+
+/ {
+	model = "Data Modul RealQ7 Board";
+	compatible = "dmo,imx6q-realq7", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
+	};
+
+	aliases {
+		stmpe0 = &stmpe_1;
+		stmpe1 = &stmpe_2;
+		gpio7 = &stmpe_gpio_1;
+		gpio8 = &stmpe_gpio_2;
+	};
+
+	memory {
+		reg = <0x10000000 0x80000000>;
+	};
+
+	di0 {
+		compatible = "fsl,imx-parallel-display";
+		interface-pix-fmt = "rgb24";
+		crtcs = <&ipu1 0>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_2p5v: 2p5v {
+			compatible = "regulator-fixed";
+			regulator-name = "2P5V";
+			regulator-min-microvolt = <2500000>;
+			regulator-max-microvolt = <2500000>;
+			regulator-always-on;
+		};
+
+		reg_3p3v: 3p3v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_usb_otg_vbus: usb_otg_vbus {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_otg_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio7 12 0>;
+		};
+
+		reg_usb_host1: usb_host1_en {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_host1_en";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio3 31 0>;
+			enable-active-high;
+		};
+	};
+};
+
+&ecspi5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi_5_1>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio1 12 0>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		compatible = "m25p80";
+		spi-max-frequency = <40000000>;
+		reg = <0>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_1>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio3 23 0>;
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2
+		     &pinctrl_stmpe_1_1
+		     &pinctrl_stmpe_2_1>;
+
+	stmpe_1: stmpe1601@40 {
+		compatible = "stmpe1601";
+		reg = <0x40>;
+		interrupts = <30 0>;
+		interrupt-parent = <&gpio3>;
+		stmpe_gpio_1: stmpe_gpio {
+			compatible = "st,stmpe-gpio";
+		};
+	};
+
+	stmpe_2: stmpe1601@44 {
+		compatible = "stmpe1601";
+		reg = <0x44>;
+		interrupts = <2 0>;
+		interrupt-parent = <&gpio5>;
+		stmpe_gpio_2: stmpe_gpio {
+			compatible = "st,stmpe-gpio";
+		};
+	};
+
+	temp1: ad7414@4c {
+		compatible = "ad7414";
+		reg = <0x4c>;
+	};
+
+	temp2: ad7414@4d {
+		compatible = "ad7414";
+		reg = <0x4d>;
+	};
+
+	rtc: m41t62@68 {
+		compatible = "m41t62";
+		reg = <0x68>;
+	};
+
+	pmic: pf0100@08 {
+		compatible = "pf0100-regulator";
+		reg = <0x08>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <20 8>;
+
+		regulators {
+			reg_vddcore: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_vddsoc: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_gen_3v3: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5a: sw3a {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5b: sw3b {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_vtt: sw4 {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_5v_600mA: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-always-on;
+			};
+
+			reg_snvs_3v: vsnvs {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+			};
+
+			reg_vgen1_1v5: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				/* not used */
+			};
+
+			reg_vgen2_1v2_eth: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			reg_vgen3_2v8: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen4_1v8: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen5_1v8_eth: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen6_3v3: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>, <&pinctrl_pfuze_1>;
+
+	hog {
+		pinctrl_hog: hoggrp-1 {
+			fsl,pins = <
+				MX6Q_PAD_EIM_A16__GPIO2_IO22 0x80000000
+				MX6Q_PAD_EIM_A17__GPIO2_IO21 0x80000000
+			>;
+		};
+	};
+
+	i2c2 {
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6Q_PAD_EIM_EB2__I2C2_SCL 0x4001b8b1
+				MX6Q_PAD_KEY_ROW3__I2C2_SDA 0x4001b8b1
+			>;
+		};
+	};
+
+	uart {
+		pinctrl_uart1_2: uart1grp-2 {
+			fsl,pins = <
+				MX6Q_PAD_SD3_DAT6__UART1_RX_DATA 0x1b0b1
+				MX6Q_PAD_SD3_DAT7__UART1_TX_DATA 0x1b0b1
+			>;
+		};
+	};
+
+	pfuze {
+		pinctrl_pfuze_1: pfuze100grp1 {
+			fsl,pins = <
+				MX6Q_PAD_EIM_D20__GPIO3_IO20 0x198c0
+			>;
+		};
+	};
+
+	stmpe_1 {
+		pinctrl_stmpe_1_1: stmpe1grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_EIM_D30__GPIO3_IO30 0x80000000
+			>;
+		};
+	};
+
+	stmpe_2 {
+		pinctrl_stmpe_2_1: stmpe2grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_EIM_A25__GPIO5_IO02 0x80000000
+			>;
+		};
+	};
+
+	ecspi5 {
+		pinctrl_ecspi_5_1: ecspi5rp-1 {
+			fsl,pins = <
+				MX6Q_PAD_SD1_DAT0__ECSPI5_MISO 0x80000000
+				MX6Q_PAD_SD1_CMD__ECSPI5_MOSI 0x80000000
+				MX6Q_PAD_SD2_DAT3__GPIO1_IO12 0x80000000 /* cs0: m25p80 */
+			>;
+		};
+	};
+};
+
+&sata {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_2>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_1>;
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb_host1>;
+	status = "okay";
+	disable-over-current;
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg_1>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4_1>;
+	vmmc-supply = <&reg_3p3v>;
+	non-removable;
+	bus-width = <8>;
+	status = "okay";
+};
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
