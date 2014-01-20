Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5Epu-0007Ee-Re
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 13:24:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 14:23:56 +0100
Message-Id: <1390224236-11032-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
References: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX53: tqma53: Switch to devicetree and multiboard
 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma53/Makefile                    |   1 -
 arch/arm/boards/tqma53/board.c                     | 249 +--------------------
 .../tqma53/flash-header-tq-tqma53-1gib.imxcfg      |   5 +
 .../tqma53/flash-header-tq-tqma53-512mib.imxcfg    |   5 +
 arch/arm/boards/tqma53/flash-header-tq-tqma53.h    |  61 +++++
 arch/arm/boards/tqma53/flash_header.c              | 113 ----------
 arch/arm/boards/tqma53/lowlevel.c                  |  25 ++-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/mach-imx/Kconfig                          |   9 +-
 images/Makefile.imx                                |  10 +
 10 files changed, 119 insertions(+), 360 deletions(-)
 create mode 100644 arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
 create mode 100644 arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
 create mode 100644 arch/arm/boards/tqma53/flash-header-tq-tqma53.h
 delete mode 100644 arch/arm/boards/tqma53/flash_header.c

diff --git a/arch/arm/boards/tqma53/Makefile b/arch/arm/boards/tqma53/Makefile
index d44f697..01c7a25 100644
--- a/arch/arm/boards/tqma53/Makefile
+++ b/arch/arm/boards/tqma53/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-lwl-y += flash_header.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index cc98de9..a1e3c0b 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -13,255 +13,30 @@
  *
  */
 
-#include <common.h>
 #include <environment.h>
-#include <fcntl.h>
-#include <fec.h>
-#include <fs.h>
+#include <bootsource.h>
+#include <common.h>
 #include <init.h>
-#include <nand.h>
-#include <net.h>
-#include <partition.h>
-#include <sizes.h>
-#include <gpio.h>
-#include <mci.h>
-#include <io.h>
 
+#include <generated/mach-types.h>
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
-#include <generated/mach-types.h>
-
-#include <mach/imx53-regs.h>
-#include <mach/iomux-mx53.h>
-#include <mach/devices-imx53.h>
-#include <mach/generic.h>
-#include <mach/imx-nand.h>
-#include <mach/iim.h>
-#include <mach/imx5.h>
-
-#define TQMA53_EMMC_DSR 0x0100u
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RMII,
-};
-
-static iomux_v3_cfg_t tqma53_pads[] = {
-	MX53_PAD_KEY_ROW1__AUDMUX_AUD5_RXD,
-	MX53_PAD_KEY_COL0__AUDMUX_AUD5_TXC,
-	MX53_PAD_KEY_ROW0__AUDMUX_AUD5_TXD,
-	MX53_PAD_KEY_COL1__AUDMUX_AUD5_TXFS,
-	MX53_PAD_KEY_ROW2__CAN1_RXCAN,
-	MX53_PAD_KEY_COL2__CAN1_TXCAN,
-	MX53_PAD_KEY_ROW4__CAN2_RXCAN,
-	MX53_PAD_KEY_COL4__CAN2_TXCAN,
-	MX53_PAD_GPIO_19__CCM_CLKO,
-	MX53_PAD_NANDF_CS2__CCM_CSI0_MCLK,
-	MX53_PAD_SD1_DATA0__CSPI_MISO,
-	MX53_PAD_SD1_CMD__CSPI_MOSI,
-	MX53_PAD_SD1_CLK__CSPI_SCLK,
-	MX53_PAD_SD1_DATA1__CSPI_SS0,
-	MX53_PAD_SD1_DATA2__CSPI_SS1,
-	MX53_PAD_SD1_DATA3__CSPI_SS2,
-	MX53_PAD_EIM_D17__ECSPI1_MISO,
-	MX53_PAD_EIM_D18__ECSPI1_MOSI,
-	MX53_PAD_EIM_D16__ECSPI1_SCLK,
-	MX53_PAD_EIM_EB2__ECSPI1_SS0,
-	MX53_PAD_EIM_D19__ECSPI1_SS1,
-	MX53_PAD_EIM_D24__ECSPI1_SS2,
-	MX53_PAD_EIM_D25__ECSPI1_SS3,
-	MX53_PAD_GPIO_4__ESDHC2_CD,
-	MX53_PAD_SD2_CLK__ESDHC2_CLK,
-	MX53_PAD_SD2_CMD__ESDHC2_CMD,
-	MX53_PAD_SD2_DATA0__ESDHC2_DAT0,
-	MX53_PAD_SD2_DATA1__ESDHC2_DAT1,
-	MX53_PAD_SD2_DATA2__ESDHC2_DAT2,
-	MX53_PAD_SD2_DATA3__ESDHC2_DAT3,
-	MX53_PAD_GPIO_2__ESDHC2_WP,
-	MX53_PAD_PATA_IORDY__ESDHC3_CLK,
-	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
-	MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
-	MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
-	MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
-	MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
-	MX53_PAD_PATA_DATA0__ESDHC3_DAT4,
-	MX53_PAD_PATA_DATA1__ESDHC3_DAT5,
-	MX53_PAD_PATA_DATA2__ESDHC3_DAT6,
-	MX53_PAD_PATA_DATA3__ESDHC3_DAT7,
-	MX53_PAD_FEC_MDC__FEC_MDC,
-	MX53_PAD_FEC_MDIO__FEC_MDIO,
-	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
-	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
-	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
-	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
-	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
-	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
-	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
-	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX53_PAD_GPIO_7__FIRI_RXD,
-	MX53_PAD_GPIO_8__FIRI_TXD,
-	MX53_PAD_GPIO_0__GPIO1_0,
-	MX53_PAD_GPIO_3__GPIO1_3,
-	MX53_PAD_PATA_DATA14__GPIO2_14,
-	MX53_PAD_PATA_DATA15__GPIO2_15,
-	MX53_PAD_EIM_CS0__GPIO2_23,
-	MX53_PAD_EIM_OE__GPIO2_25,
-	MX53_PAD_EIM_RW__GPIO2_26,
-	MX53_PAD_EIM_LBA__GPIO2_27,
-	MX53_PAD_PATA_DATA5__GPIO2_5,
-	MX53_PAD_PATA_DATA6__GPIO2_6,
-	MX53_PAD_PATA_DATA7__GPIO2_7,
-	MX53_PAD_EIM_DA11__GPIO3_11,
-	MX53_PAD_EIM_DA12__GPIO3_12,
-	MX53_PAD_EIM_DA13__GPIO3_13,
-	MX53_PAD_EIM_DA14__GPIO3_14,
-	MX53_PAD_EIM_D20__GPIO3_20,
-	MX53_PAD_EIM_D21__GPIO3_21,
-	MX53_PAD_EIM_D22__GPIO3_22,
-	MX53_PAD_EIM_D28__GPIO3_28,
-	MX53_PAD_EIM_D29__GPIO3_29,
-	MX53_PAD_EIM_WAIT__GPIO5_0,
-	MX53_PAD_PATA_DA_1__GPIO7_7,
-	MX53_PAD_PATA_DA_2__GPIO7_8,
-	MX53_PAD_KEY_COL3__I2C2_SCL,
-	MX53_PAD_KEY_ROW3__I2C2_SDA,
-	MX53_PAD_GPIO_5__I2C3_SCL,
-	MX53_PAD_GPIO_6__I2C3_SDA,
-	MX53_PAD_CSI0_DAT10__IPU_CSI0_D_10,
-	MX53_PAD_CSI0_DAT11__IPU_CSI0_D_11,
-	MX53_PAD_CSI0_DAT12__IPU_CSI0_D_12,
-	MX53_PAD_CSI0_DAT13__IPU_CSI0_D_13,
-	MX53_PAD_CSI0_DAT14__IPU_CSI0_D_14,
-	MX53_PAD_CSI0_DAT15__IPU_CSI0_D_15,
-	MX53_PAD_CSI0_DAT16__IPU_CSI0_D_16,
-	MX53_PAD_CSI0_DAT17__IPU_CSI0_D_17,
-	MX53_PAD_CSI0_DAT18__IPU_CSI0_D_18,
-	MX53_PAD_CSI0_DAT19__IPU_CSI0_D_19,
-	MX53_PAD_CSI0_DAT4__IPU_CSI0_D_4,
-	MX53_PAD_CSI0_DAT5__IPU_CSI0_D_5,
-	MX53_PAD_CSI0_DAT6__IPU_CSI0_D_6,
-	MX53_PAD_CSI0_DAT7__IPU_CSI0_D_7,
-	MX53_PAD_CSI0_DAT8__IPU_CSI0_D_8,
-	MX53_PAD_CSI0_DAT9__IPU_CSI0_D_9,
-	MX53_PAD_CSI0_DATA_EN__IPU_CSI0_DATA_EN,
-	MX53_PAD_CSI0_MCLK__IPU_CSI0_HSYNC,
-	MX53_PAD_CSI0_PIXCLK__IPU_CSI0_PIXCLK,
-	MX53_PAD_CSI0_VSYNC__IPU_CSI0_VSYNC,
-	MX53_PAD_EIM_A16__IPU_DI1_DISP_CLK,
-	MX53_PAD_EIM_DA10__IPU_DI1_PIN15,
-	MX53_PAD_EIM_D23__IPU_DI1_PIN2,
-	MX53_PAD_EIM_EB3__IPU_DI1_PIN3,
-	MX53_PAD_EIM_DA15__IPU_DI1_PIN4,
-	MX53_PAD_EIM_CS1__IPU_DI1_PIN6,
-	MX53_PAD_EIM_DA9__IPU_DISP1_DAT_0,
-	MX53_PAD_EIM_DA8__IPU_DISP1_DAT_1,
-	MX53_PAD_EIM_EB1__IPU_DISP1_DAT_10,
-	MX53_PAD_EIM_EB0__IPU_DISP1_DAT_11,
-	MX53_PAD_EIM_A17__IPU_DISP1_DAT_12,
-	MX53_PAD_EIM_A18__IPU_DISP1_DAT_13,
-	MX53_PAD_EIM_A19__IPU_DISP1_DAT_14,
-	MX53_PAD_EIM_A20__IPU_DISP1_DAT_15,
-	MX53_PAD_EIM_A21__IPU_DISP1_DAT_16,
-	MX53_PAD_EIM_A22__IPU_DISP1_DAT_17,
-	MX53_PAD_EIM_A23__IPU_DISP1_DAT_18,
-	MX53_PAD_EIM_A24__IPU_DISP1_DAT_19,
-	MX53_PAD_EIM_DA7__IPU_DISP1_DAT_2,
-	MX53_PAD_EIM_D31__IPU_DISP1_DAT_20,
-	MX53_PAD_EIM_D30__IPU_DISP1_DAT_21,
-	MX53_PAD_EIM_D26__IPU_DISP1_DAT_22,
-	MX53_PAD_EIM_D27__IPU_DISP1_DAT_23,
-	MX53_PAD_EIM_DA6__IPU_DISP1_DAT_3,
-	MX53_PAD_EIM_DA5__IPU_DISP1_DAT_4,
-	MX53_PAD_EIM_DA4__IPU_DISP1_DAT_5,
-	MX53_PAD_EIM_DA3__IPU_DISP1_DAT_6,
-	MX53_PAD_EIM_DA2__IPU_DISP1_DAT_7,
-	MX53_PAD_EIM_DA1__IPU_DISP1_DAT_8,
-	MX53_PAD_EIM_DA0__IPU_DISP1_DAT_9,
-	MX53_PAD_LVDS0_CLK_P__LDB_LVDS0_CLK,
-	MX53_PAD_LVDS0_TX0_P__LDB_LVDS0_TX0,
-	MX53_PAD_LVDS0_TX1_P__LDB_LVDS0_TX1,
-	MX53_PAD_LVDS0_TX2_P__LDB_LVDS0_TX2,
-	MX53_PAD_LVDS0_TX3_P__LDB_LVDS0_TX3,
-	MX53_PAD_LVDS1_CLK_P__LDB_LVDS1_CLK,
-	MX53_PAD_LVDS1_TX0_P__LDB_LVDS1_TX0,
-	MX53_PAD_LVDS1_TX1_P__LDB_LVDS1_TX1,
-	MX53_PAD_LVDS1_TX2_P__LDB_LVDS1_TX2,
-	MX53_PAD_LVDS1_TX3_P__LDB_LVDS1_TX3,
-	MX53_PAD_GPIO_18__OWIRE_LINE,
-	MX53_PAD_GPIO_1__PWM2_PWMO,
-	MX53_PAD_GPIO_16__SPDIF_IN1,
-	MX53_PAD_GPIO_17__SPDIF_OUT1,
-	MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
-	MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
-	MX53_PAD_PATA_INTRQ__UART2_CTS,
-	MX53_PAD_PATA_DIOR__UART2_RTS,
-	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
-	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
-	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
-	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
-
-	/* SD2 card detect */
-	MX53_PAD_GPIO_4__GPIO1_4,
-	/* SD2 write protect */
-	MX53_PAD_GPIO_2__GPIO1_2,
-	/* phy reset */
-	MX53_PAD_PATA_DA_0__GPIO7_6,
-};
-
-#define GPIO_FEC_NRESET	IMX_GPIO_NR(7, 6)
-
-#define GPIO_SD2_CD			IMX_GPIO_NR(1, 4)
-#define GPIO_SD2_WP			IMX_GPIO_NR(1, 2)
-
-static struct esdhc_platform_data tqma53_sd2_data = {
-	.cd_gpio = GPIO_SD2_CD,
-	.wp_gpio = GPIO_SD2_WP,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_GPIO,
-};
-
-static struct esdhc_platform_data tqma53_sd3_data = {
-	.cd_type = ESDHC_CD_PERMANENT,
-	.wp_type = ESDHC_WP_NONE,
-	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
-	.use_dsr = 1,
-	.dsr_val = TQMA53_EMMC_DSR,
-};
 
 static int tqma53_devices_init(void)
 {
-	gpio_direction_output(GPIO_FEC_NRESET, 0);
-	mdelay(1);
-	gpio_set_value(GPIO_FEC_NRESET, 1);
+	char *of_env_path = "/chosen/environment-emmc";
 
-	imx53_iim_register_fec_ethaddr();
-	imx53_add_fec(&fec_info);
-	imx53_add_mmc1(&tqma53_sd2_data);
-	imx53_add_mmc2(&tqma53_sd3_data);
+	if (!of_machine_is_compatible("tq,tqma53"))
+		return 0;
 
-	armlinux_set_architecture(MACH_TYPE_TQMA53);
+	if (bootsource_get() == BOOTSOURCE_MMC &&
+			bootsource_get_instance() == 1)
+		of_env_path = "/chosen/environment-sd";
 
-	return 0;
-}
-device_initcall(tqma53_devices_init);
+	of_device_enable_path(of_env_path);
 
-static int tqma53_part_init(void)
-{
-	devfs_add_partition("disk0", 0x00000, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
-
-	return 0;
-}
-late_initcall(tqma53_part_init);
-
-static int tqma53_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
-
-	barebox_set_model("TQ tqma53");
-	barebox_set_hostname("tqma53");
-
-	imx53_add_uart1();
+	armlinux_set_architecture(MACH_TYPE_TQMA53);
 
 	return 0;
 }
-console_initcall(tqma53_console_init);
+device_initcall(tqma53_devices_init);
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg b/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
new file mode 100644
index 0000000..50a8f27
--- /dev/null
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53-1gib.imxcfg
@@ -0,0 +1,5 @@
+#define SETUP_512MIB_1GIB \
+	wm 32 0x63fd9018 0x00011740; \
+	wm 32 0x63fd9000 0xc3190000
+
+#include "flash-header-tq-tqma53.h"
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg b/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
new file mode 100644
index 0000000..4c8eed4
--- /dev/null
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53-512mib.imxcfg
@@ -0,0 +1,5 @@
+#define SETUP_512MIB_1GIB \
+	wm 32 0x63fd9018 0x00101740; \
+	wm 32 0x63fd9000 0x83190000
+
+#include "flash-header-tq-tqma53.h"
diff --git a/arch/arm/boards/tqma53/flash-header-tq-tqma53.h b/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
new file mode 100644
index 0000000..4d16b06
--- /dev/null
+++ b/arch/arm/boards/tqma53/flash-header-tq-tqma53.h
@@ -0,0 +1,61 @@
+soc imx53
+loadaddr 0x70000000
+dcdofs 0x400
+
+/* IOMUX */
+wm 32 0x53fa8554 0x00300000
+wm 32 0x53fa8558 0x00300040
+wm 32 0x53fa8560 0x00300000
+wm 32 0x53fa8564 0x00300040
+wm 32 0x53fa8568 0x00300040
+wm 32 0x53fa8570 0x00300000
+wm 32 0x53fa8574 0x00300000
+wm 32 0x53fa8578 0x00300000
+wm 32 0x53fa857c 0x00300040
+wm 32 0x53fa8580 0x00300040
+wm 32 0x53fa8584 0x00300000
+wm 32 0x53fa8588 0x00300000
+wm 32 0x53fa8590 0x00300040
+wm 32 0x53fa8594 0x00300000
+wm 32 0x53fa86f0 0x00300000
+wm 32 0x53fa86f4 0x00000000
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8718 0x00300000
+wm 32 0x53fa871c 0x00300000
+wm 32 0x53fa8720 0x00300000
+wm 32 0x53fa8724 0x04000000
+wm 32 0x53fa8728 0x00300000
+wm 32 0x53fa872c 0x00300000
+/* ESDCTL */
+wm 32 0x63fd9088 0x35343535
+wm 32 0x63fd9090 0x4d444c44
+wm 32 0x63fd907c 0x01370138
+wm 32 0x63fd9080 0x013b013c
+wm 32 0x63fd90f8 0x00000800
+
+SETUP_512MIB_1GIB
+
+wm 32 0x63fd900c 0x9f5152e3
+wm 32 0x63fd9010 0xb68e8a63
+wm 32 0x63fd9014 0x01ff00db
+wm 32 0x63fd902c 0x000026d2
+/* Engcm12377 / errata sheet 03/2013 */
+wm 32 0x63fd9030 0x009f0e23
+wm 32 0x63fd9008 0x12273030
+wm 32 0x63fd9004 0x0002002d
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00028031
+wm 32 0x63fd901c 0x052080b0
+wm 32 0x63fd901c 0x04008040
+wm 32 0x63fd901c 0x0000803a
+wm 32 0x63fd901c 0x0000803b
+wm 32 0x63fd901c 0x00028039
+wm 32 0x63fd901c 0x05208138
+wm 32 0x63fd901c 0x04008048
+wm 32 0x63fd9020 0x00005800
+/* prevent reserved value, use default TZQ_CS */
+wm 32 0x63fd9040 0x05380003
+wm 32 0x63fd9058 0x00022227
+wm 32 0x63fd901C 0x00000000
diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
deleted file mode 100644
index ea649af..0000000
--- a/arch/arm/boards/tqma53/flash_header.c
+++ /dev/null
@@ -1,113 +0,0 @@
-/*
- * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
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
- */
-
-#include <common.h>
-#include <asm/byteorder.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/imx-flash-header.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-	/* IOMUX */
-	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
-	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
-	/* ESDCTL */
-	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
-	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
-	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
-	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
-	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
-#ifdef CONFIG_MACH_TQMA53_1GB_RAM
-	/* sync with u-boot: add WALAT for 4 chip variant */
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
-	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
-#else
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00101740), },
-	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0x83190000), },
-#endif
-	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
-	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
-	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
-	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
-	/* Engcm12377 / errata sheet 03/2013 */
-	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e23), },
-	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
-	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
-	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
-	/* prevent reserved value, use default TZQ_CS */
-	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x05380003), },
-	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
-	{ .addr = cpu_to_be32(0x63fd901C), .val = cpu_to_be32(0x00000000), },
-};
-
-#define APP_DEST	0x70000000
-
-struct imx_flash_header_v2 __flash_header_section flash_header = {
-	.header.tag		= IVT_HEADER_TAG,
-	.header.length		= cpu_to_be16(32),
-	.header.version		= IVT_VERSION,
-
-	.entry			= APP_DEST + 0x1000,
-	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
-	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
-	.self			= APP_DEST + 0x400,
-
-	.boot_data.start	= APP_DEST,
-	.boot_data.size		= DCD_BAREBOX_SIZE,
-
-	.dcd.header.tag		= DCD_HEADER_TAG,
-	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
-	.dcd.header.version	= DCD_VERSION,
-
-	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
-	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
-	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
-};
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index a6eaa46..1284a37 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -1,11 +1,28 @@
 #include <common.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
-#include <mach/imx5.h>
+#include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx53_mba53_start[];
+
+ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 {
+	uint32_t fdt;
+
 	arm_cpu_lowlevel_init();
-	imx53_init_lowlevel_early(800);
-	imx53_barebox_entry(0);
+
+	fdt = (uint32_t)__dtb_imx53_mba53_start - get_runtime_offset();
+
+	imx53_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx53_mba53_start - get_runtime_offset();
+
+	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 189394b..1718bde 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -46,6 +46,7 @@ pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
+pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 81ce308..eed57ab 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -196,6 +196,10 @@ config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 	select ARCH_IMX53
 
+config MACH_TQMA53
+	bool "TQ i.MX53 TQMa53"
+	select ARCH_IMX53
+
 config MACH_FREESCALE_MX53_VMX53
 	bool "Voipac i.MX53"
 	select ARCH_IMX53
@@ -444,11 +448,6 @@ config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 	select ARCH_IMX53
 
-config MACH_TQMA53
-	bool "TQ i.MX53 TQMa53"
-	select ARCH_IMX53
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-
 config MACH_TX53
 	bool "Ka-Ro TX53"
 	select ARCH_IMX53
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 901d8cd..3318fcf 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -36,6 +36,16 @@ CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-i
 FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += barebox-freescale-imx53-vmx53.img
 
+pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_512mib
+CFG_start_imx53_mba53_512mib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-512mib.imxcfg
+FILE_barebox-tq-mba53-512mib.img = start_imx53_mba53_512mib.pblx.imximg
+image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-512mib.img
+
+pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_1gib
+CFG_start_imx53_mba53_1gib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-1gib.imxcfg
+FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblx.imximg
+image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-1gib.img
+
 # ----------------------- i.MX6 based boards ---------------------------
 pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblx.imximg = $(board)/dmo-mx6-realq7/flash-header.imxcfg
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
