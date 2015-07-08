Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCoJR-00029k-I8
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 12:18:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Jul 2015 14:18:30 +0200
Message-Id: <1436357910-4785-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436357910-4785-1-git-send-email-s.hauer@pengutronix.de>
References: <1436357910-4785-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: vincell: move to DT probing
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

This enabled multi image support for the Garz&Fricke Vincell board. Also
it adds the Vincell-LT as a second image with a separate device tree.
Previously we used the same image on both the Vincell and the Vincell-LT
image since the differences are not that significant for barebox. Still
this was good for quite some confusion internally, so let's properly
introduce a second image.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx/Garz-Fricke-Vincell.rst   |  43 ++
 arch/arm/boards/guf-vincell/board.c                | 281 +--------
 arch/arm/boards/guf-vincell/env/boot/nand-ubi      |   5 -
 arch/arm/boards/guf-vincell/env/init/mtdparts-nand |  11 -
 arch/arm/boards/guf-vincell/env/nv/hostname        |   1 -
 arch/arm/boards/guf-vincell/lowlevel.c             |  54 +-
 arch/arm/configs/vincell_defconfig                 | 123 ++--
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx53-guf-vincell-lt.dts              | 679 +++++++++++++++++++++
 arch/arm/dts/imx53-guf-vincell.dts                 | 402 ++++++++++++
 arch/arm/mach-imx/Kconfig                          |  10 +-
 images/Makefile.imx                                |  10 +
 12 files changed, 1261 insertions(+), 359 deletions(-)
 create mode 100644 Documentation/boards/imx/Garz-Fricke-Vincell.rst
 delete mode 100644 arch/arm/boards/guf-vincell/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/guf-vincell/env/nv/hostname
 create mode 100644 arch/arm/dts/imx53-guf-vincell-lt.dts
 create mode 100644 arch/arm/dts/imx53-guf-vincell.dts

diff --git a/Documentation/boards/imx/Garz-Fricke-Vincell.rst b/Documentation/boards/imx/Garz-Fricke-Vincell.rst
new file mode 100644
index 0000000..2eb5f65
--- /dev/null
+++ b/Documentation/boards/imx/Garz-Fricke-Vincell.rst
@@ -0,0 +1,43 @@
+Garz+Fricke Vincell LT
+======================
+
+This CPU card is based on a Freescale i.MX53 CPU. The card is shipped with:
+
+  * 512MiB NAND flash
+  * 512MiB synchronous dynamic RAM
+  * microSD slot
+
+see http://www.garz-fricke.com/vincell-lt-core_de.html for more information
+
+
+Bootstrapping barebox
+=====================
+
+The Vincell is shipped with the RedBoot bootloader. To replace RedBoot with
+barebox, you first need to connect a serial console to the device.
+
+UART1 is located on the Molex header X39. When the Vincell is lying on the
+display, then Pin 1 on the header is in the lower right:
+
+  * Pin 1 - GND
+  * Pin 2 - TXD1
+  * Pin 3 - RXD1
+
+If everything is connected right, RedBoot shows up on the console.
+
+factory_bootstrap
+-----------------
+
+Turn on the board and abort the boot process with ``Ctrl-C``.
+Configure RedBoot so that it finds the barebox image on your TFTP server.
+Execute ``fc`` and change the network setup according to your environment.
+Be sure to copy the `Boot script` line to the prompt, otherwise it will be
+set empty. The network setup can be validated with ``ping -h <serverip>``.
+If the network setup is working properly, barebox can be loaded into memory::
+
+  load -v -r -b 0x80100000 barebox-guf-vincell-lt.img
+  exec
+
+Once in barebox, the bootloader can now be persisted to NAND::
+
+  barebox_update -t nand /mnt/tftp/barebox-guf-vincell-lt.img``
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index ded7a37..a164c93 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -16,235 +16,18 @@
 
 #include <common.h>
 #include <environment.h>
-#include <fcntl.h>
-#include <fec.h>
-#include <fs.h>
 #include <init.h>
-#include <nand.h>
-#include <net.h>
-#include <partition.h>
 #include <linux/sizes.h>
 #include <bbu.h>
 #include <gpio.h>
 #include <io.h>
-#include <i2c/i2c.h>
 #include <linux/clk.h>
-#include <usb/fsl_usb2.h>
 
-#include <generated/mach-types.h>
-
-#include <mach/imx53-regs.h>
-#include <mach/iomux-mx53.h>
 #include <mach/devices-imx53.h>
 #include <mach/generic.h>
-#include <mach/imx-nand.h>
 #include <mach/iim.h>
-#include <mach/imx-nand.h>
 #include <mach/bbu.h>
-#include <mach/imx-flash-header.h>
 #include <mach/imx5.h>
-#include <mach/usb.h>
-
-#include <asm/armlinux.h>
-#include <asm/mmu.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RMII,
-};
-
-static iomux_v3_cfg_t vincell_pads[] = {
-	MX53_PAD_DISP0_DAT23__AUDMUX_AUD4_RXD,
-	MX53_PAD_DISP0_DAT20__AUDMUX_AUD4_TXC,
-	MX53_PAD_DISP0_DAT21__AUDMUX_AUD4_TXD,
-	MX53_PAD_DISP0_DAT22__AUDMUX_AUD4_TXFS,
-	MX53_PAD_GPIO_8__CAN1_RXCAN,
-	MX53_PAD_GPIO_7__CAN1_TXCAN,
-	MX53_PAD_KEY_ROW4__CAN2_RXCAN,
-	MX53_PAD_KEY_COL4__CAN2_TXCAN,
-	MX53_PAD_GPIO_3__CCM_CLKO2,
-	MX53_PAD_KEY_COL1__ECSPI1_MISO,
-	MX53_PAD_KEY_ROW0__ECSPI1_MOSI,
-	MX53_PAD_GPIO_19__ECSPI1_RDY,
-	MX53_PAD_KEY_COL0__ECSPI1_SCLK,
-	MX53_PAD_KEY_ROW1__GPIO4_9, /* ECSPI1_SS0 */
-	MX53_PAD_KEY_COL2__GPIO4_10, /* ECSPI1_SS1 */
-	MX53_PAD_KEY_ROW2__GPIO4_11, /* ECSPI1_SS2 */
-	MX53_PAD_KEY_COL3__GPIO4_12, /* ECSPI1_SS3 */
-	MX53_PAD_CSI0_DAT10__ECSPI2_MISO,
-	MX53_PAD_EIM_CS1__ECSPI2_MOSI,
-	MX53_PAD_EIM_A25__ECSPI2_RDY,
-	MX53_PAD_DISP0_DAT19__ECSPI2_SCLK,
-	MX53_PAD_DISP0_DAT18__GPIO5_12, /* ECSPI2_SS0 */
-	MX53_PAD_EIM_DA0__EMI_NAND_WEIM_DA_0,
-	MX53_PAD_EIM_DA1__EMI_NAND_WEIM_DA_1,
-	MX53_PAD_EIM_DA2__EMI_NAND_WEIM_DA_2,
-	MX53_PAD_EIM_DA3__EMI_NAND_WEIM_DA_3,
-	MX53_PAD_EIM_DA4__EMI_NAND_WEIM_DA_4,
-	MX53_PAD_EIM_DA5__EMI_NAND_WEIM_DA_5,
-	MX53_PAD_EIM_DA6__EMI_NAND_WEIM_DA_6,
-	MX53_PAD_EIM_DA7__EMI_NAND_WEIM_DA_7,
-	MX53_PAD_EIM_DA8__EMI_NAND_WEIM_DA_8,
-	MX53_PAD_EIM_DA9__EMI_NAND_WEIM_DA_9,
-	MX53_PAD_EIM_DA10__EMI_NAND_WEIM_DA_10,
-	MX53_PAD_EIM_DA11__EMI_NAND_WEIM_DA_11,
-	MX53_PAD_EIM_DA12__EMI_NAND_WEIM_DA_12,
-	MX53_PAD_EIM_DA13__EMI_NAND_WEIM_DA_13,
-	MX53_PAD_EIM_DA14__EMI_NAND_WEIM_DA_14,
-	MX53_PAD_EIM_DA15__EMI_NAND_WEIM_DA_15,
-	MX53_PAD_NANDF_ALE__EMI_NANDF_ALE,
-	MX53_PAD_NANDF_CLE__EMI_NANDF_CLE,
-	MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0,
-	MX53_PAD_NANDF_CS1__EMI_NANDF_CS_1,
-	MX53_PAD_NANDF_CS2__EMI_NANDF_CS_2,
-	MX53_PAD_NANDF_CS3__EMI_NANDF_CS_3,
-	MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0,
-	MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B,
-	MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B,
-	MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B,
-	MX53_PAD_EIM_A16__EMI_WEIM_A_16,
-	MX53_PAD_EIM_A17__EMI_WEIM_A_17,
-	MX53_PAD_EIM_A18__EMI_WEIM_A_18,
-	MX53_PAD_EIM_A19__EMI_WEIM_A_19,
-	MX53_PAD_EIM_A20__EMI_WEIM_A_20,
-	MX53_PAD_EIM_CS0__EMI_WEIM_CS_0,
-	MX53_PAD_EIM_D16__EMI_WEIM_D_16,
-	MX53_PAD_EIM_D17__EMI_WEIM_D_17,
-	MX53_PAD_EIM_D18__EMI_WEIM_D_18,
-	MX53_PAD_EIM_D19__EMI_WEIM_D_19,
-	MX53_PAD_EIM_D20__EMI_WEIM_D_20,
-	MX53_PAD_EIM_D21__EMI_WEIM_D_21,
-	MX53_PAD_EIM_D22__EMI_WEIM_D_22,
-	MX53_PAD_EIM_D23__EMI_WEIM_D_23,
-	MX53_PAD_EIM_D24__EMI_WEIM_D_24,
-	MX53_PAD_EIM_D25__EMI_WEIM_D_25,
-	MX53_PAD_EIM_D26__EMI_WEIM_D_26,
-	MX53_PAD_EIM_D27__EMI_WEIM_D_27,
-	MX53_PAD_EIM_D28__EMI_WEIM_D_28,
-	MX53_PAD_EIM_D29__EMI_WEIM_D_29,
-	MX53_PAD_EIM_D30__EMI_WEIM_D_30,
-	MX53_PAD_EIM_D31__EMI_WEIM_D_31,
-	MX53_PAD_EIM_EB0__EMI_WEIM_EB_0,
-	MX53_PAD_EIM_EB1__EMI_WEIM_EB_1,
-	MX53_PAD_EIM_OE__EMI_WEIM_OE,
-	MX53_PAD_EIM_RW__EMI_WEIM_RW,
-	MX53_PAD_SD1_CLK__ESDHC1_CLK,
-	MX53_PAD_SD1_CMD__ESDHC1_CMD,
-	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
-	MX53_PAD_DI0_PIN4__ESDHC1_WP,
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
-	MX53_PAD_SD2_CLK__GPIO1_10,
-	MX53_PAD_SD2_DATA3__GPIO1_12,
-	MX53_PAD_GPIO_2__GPIO1_2,
-	MX53_PAD_GPIO_4__GPIO1_4,
-	MX53_PAD_PATA_DATA0__GPIO2_0,
-	MX53_PAD_PATA_DATA1__GPIO2_1,
-	MX53_PAD_PATA_DATA10__GPIO2_10,
-	MX53_PAD_PATA_DATA11__GPIO2_11,
-	MX53_PAD_PATA_DATA13__GPIO2_13,
-	MX53_PAD_PATA_DATA14__GPIO2_14,
-	MX53_PAD_PATA_DATA15__GPIO2_15,
-	MX53_PAD_PATA_DATA2__GPIO2_2,
-	MX53_PAD_PATA_DATA3__GPIO2_3,
-	MX53_PAD_EIM_EB2__GPIO2_30,
-	MX53_PAD_PATA_DATA4__PATA_DATA_4,
-	MX53_PAD_PATA_DATA5__GPIO2_5,
-	MX53_PAD_PATA_DATA6__GPIO2_6,
-	MX53_PAD_PATA_DATA7__GPIO2_7,
-	MX53_PAD_PATA_DATA8__GPIO2_8,
-	MX53_PAD_PATA_DATA9__GPIO2_9,
-	MX53_PAD_GPIO_10__GPIO4_0,
-	MX53_PAD_GPIO_11__GPIO4_1,
-	MX53_PAD_GPIO_12__GPIO4_2,
-	MX53_PAD_DISP0_DAT8__GPIO4_29,
-	MX53_PAD_GPIO_13__GPIO4_3,
-	MX53_PAD_DISP0_DAT16__GPIO5_10,
-	MX53_PAD_DISP0_DAT17__GPIO5_11,
-	MX53_PAD_CSI0_PIXCLK__GPIO5_18,
-	MX53_PAD_CSI0_MCLK__GPIO5_19,
-	MX53_PAD_CSI0_DATA_EN__GPIO5_20,
-	MX53_PAD_CSI0_VSYNC__GPIO5_21,
-	MX53_PAD_CSI0_DAT4__GPIO5_22,
-	MX53_PAD_CSI0_DAT5__GPIO5_23,
-	MX53_PAD_CSI0_DAT6__GPIO5_24,
-	MX53_PAD_DISP0_DAT14__GPIO5_8,
-	MX53_PAD_DISP0_DAT15__GPIO5_9,
-	MX53_PAD_PATA_DIOW__GPIO6_17,
-	MX53_PAD_PATA_DMACK__GPIO6_18,
-	MX53_PAD_GPIO_17__GPIO7_12,
-	MX53_PAD_GPIO_18__GPIO7_13,
-	MX53_PAD_PATA_RESET_B__GPIO7_4,
-	MX53_PAD_PATA_IORDY__GPIO7_5,
-	MX53_PAD_PATA_DA_0__GPIO7_6,
-	MX53_PAD_PATA_DA_2__GPIO7_8,
-	MX53_PAD_CSI0_DAT9__I2C1_SCL,
-	MX53_PAD_CSI0_DAT8__I2C1_SDA,
-	MX53_PAD_KEY_COL3__I2C2_SCL,
-	MX53_PAD_KEY_ROW3__I2C2_SDA,
-	MX53_PAD_GPIO_5__I2C3_SCL,
-	MX53_PAD_GPIO_6__I2C3_SDA,
-	MX53_PAD_KEY_COL0__KPP_COL_0,
-	MX53_PAD_KEY_COL1__KPP_COL_1,
-	MX53_PAD_KEY_COL2__KPP_COL_2,
-	MX53_PAD_KEY_COL3__KPP_COL_3,
-	MX53_PAD_GPIO_19__KPP_COL_5,
-	MX53_PAD_GPIO_9__KPP_COL_6,
-	MX53_PAD_SD2_DATA1__KPP_COL_7,
-	MX53_PAD_KEY_ROW0__KPP_ROW_0,
-	MX53_PAD_KEY_ROW1__KPP_ROW_1,
-	MX53_PAD_KEY_ROW2__KPP_ROW_2,
-	MX53_PAD_KEY_ROW3__KPP_ROW_3,
-	MX53_PAD_SD2_CMD__KPP_ROW_5,
-	MX53_PAD_SD2_DATA2__KPP_ROW_6,
-	MX53_PAD_SD2_DATA0__KPP_ROW_7,
-	MX53_PAD_LVDS0_CLK_P__LDB_LVDS0_CLK,
-	MX53_PAD_LVDS0_TX0_P__LDB_LVDS0_TX0,
-	MX53_PAD_LVDS0_TX1_P__LDB_LVDS0_TX1,
-	MX53_PAD_LVDS0_TX2_P__LDB_LVDS0_TX2,
-	MX53_PAD_LVDS0_TX3_P__LDB_LVDS0_TX3,
-	MX53_PAD_DISP0_DAT8__PWM1_PWMO,
-	MX53_PAD_DISP0_DAT9__PWM2_PWMO,
-	MX53_PAD_PATA_INTRQ__UART2_CTS,
-	MX53_PAD_PATA_DIOR__UART2_RTS,
-	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
-	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
-	MX53_PAD_PATA_DA_1__UART3_CTS,
-	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
-	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
-	MX53_PAD_CSI0_DAT17__UART4_CTS,
-	MX53_PAD_CSI0_DAT16__UART4_RTS,
-	MX53_PAD_CSI0_DAT13__UART4_RXD_MUX,
-	MX53_PAD_CSI0_DAT12__UART4_TXD_MUX,
-	MX53_PAD_CSI0_DAT19__UART5_CTS,
-	MX53_PAD_CSI0_DAT18__UART5_RTS,
-	MX53_PAD_CSI0_DAT15__UART5_RXD_MUX,
-	MX53_PAD_CSI0_DAT14__UART5_TXD_MUX,
-	MX53_PAD_GPIO_0__USBOH3_USBH1_PWR,
-	MX53_PAD_DISP0_DAT12__USBOH3_USBH2_CLK,
-	MX53_PAD_DISP0_DAT0__USBOH3_USBH2_DATA_0,
-	MX53_PAD_DISP0_DAT1__USBOH3_USBH2_DATA_1,
-	MX53_PAD_DISP0_DAT2__USBOH3_USBH2_DATA_2,
-	MX53_PAD_DISP0_DAT3__USBOH3_USBH2_DATA_3,
-	MX53_PAD_DISP0_DAT4__USBOH3_USBH2_DATA_4,
-	MX53_PAD_DISP0_DAT5__USBOH3_USBH2_DATA_5,
-	MX53_PAD_DISP0_DAT6__USBOH3_USBH2_DATA_6,
-	MX53_PAD_DISP0_DAT7__USBOH3_USBH2_DATA_7,
-	MX53_PAD_DI0_DISP_CLK__USBOH3_USBH2_DIR,
-	MX53_PAD_DISP0_DAT11__USBOH3_USBH2_NXT,
-	MX53_PAD_DISP0_DAT10__USBOH3_USBH2_STP,
-	MX53_PAD_GPIO_1__WDOG2_WDOG_B,
-};
 
 #define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
 
@@ -255,77 +38,19 @@ static void vincell_fec_reset(void)
 	gpio_set_value(LOCO_FEC_PHY_RST, 1);
 }
 
-static struct imx_nand_platform_data nand_info = {
-	.width		= 1,
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("da9053", 0x48),
-	},
-};
-
-static struct fsl_usb2_platform_data usb_pdata = {
-	.operating_mode	= FSL_USB2_DR_DEVICE,
-	.phy_mode	= FSL_USB2_PHY_UTMI,
-};
-
 static int vincell_devices_init(void)
 {
 	writel(0, MX53_M4IF_BASE_ADDR + 0xc);
 
-	console_flush();
-	imx53_init_lowlevel(1000);
-	clk_set_rate(clk_lookup("nfc_podf"), 66666667);
-
-	imx53_add_nand(&nand_info);
-	imx51_iim_register_fec_ethaddr();
-	imx53_add_fec(&fec_info);
-	imx53_add_mmc0(NULL);
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	imx53_add_i2c0(NULL);
-
-	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, MX53_OTG_BASE_ADDR, 0x200,
-			   IORESOURCE_MEM, &usb_pdata);
+	clk_set_rate(clk_lookup("emi_slow_podf"), 133333334);
+	clk_set_rate(clk_lookup("nfc_podf"), 33333334);
 
 	vincell_fec_reset();
 
-	armlinux_set_architecture(3297);
-
-	devfs_add_partition("nand0", SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_1M + SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
 	imx53_bbu_internal_nand_register_handler("nand",
-		BBU_HANDLER_FLAG_DEFAULT, 3 * SZ_128K);
+		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
 
 	return 0;
 }
 
 device_initcall(vincell_devices_init);
-
-static int vincell_part_init(void)
-{
-	devfs_add_partition("disk0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x80000, 0x80000, DEVFS_PARTITION_FIXED, "env0");
-
-	return 0;
-}
-late_initcall(vincell_part_init);
-
-static int vincell_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(vincell_pads, ARRAY_SIZE(vincell_pads));
-
-	barebox_set_model("Garz & Fricke VINCELL");
-	barebox_set_hostname("vincell");
-
-	imx53_add_uart1();
-
-	return 0;
-}
-
-console_initcall(vincell_console_init);
diff --git a/arch/arm/boards/guf-vincell/env/boot/nand-ubi b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
deleted file mode 100644
index 510ac11..0000000
--- a/arch/arm/boards/guf-vincell/env/boot/nand-ubi
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
-bootargs-root-ubi -r root -m nand0.root
diff --git a/arch/arm/boards/guf-vincell/env/init/mtdparts-nand b/arch/arm/boards/guf-vincell/env/init/mtdparts-nand
deleted file mode 100644
index 4fffefc..0000000
--- a/arch/arm/boards/guf-vincell/env/init/mtdparts-nand
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
-mtdparts="512k(nand0.barebox)ro,512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
-kernelname="mxc_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/guf-vincell/env/nv/hostname b/arch/arm/boards/guf-vincell/env/nv/hostname
deleted file mode 100644
index 922106e..0000000
--- a/arch/arm/boards/guf-vincell/env/nv/hostname
+++ /dev/null
@@ -1 +0,0 @@
-vincell
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 629529d..a72eaf8 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -1,7 +1,9 @@
 #include <common.h>
+#include <debug_ll.h>
 #include <io.h>
 #include <init.h>
 #include <mach/imx53-regs.h>
+#include <mach/clock-imx51_53.h>
 #include <mach/imx5.h>
 #include <mach/iomux-v3.h>
 #include <mach/esdctl-v4.h>
@@ -9,7 +11,6 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <io.h>
 
 #define IOMUX_PADCTL_DDRI_DDR (1 << 9)
 
@@ -122,31 +123,56 @@ void disable_watchdog(void)
 	writew(0x0, MX53_WDOG2_BASE_ADDR + 8);
 }
 
-void sdram_init(void);
-
-void __bare_init __naked barebox_arm_reset_vector(void)
+static noinline void imx53_guf_vincell_init(void *fdt)
 {
+	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
 	u32 r;
 
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0xf8020000 - 8);
 
+	writel(0x0088494c, ccm + MX5_CCM_CBCDR);
+	writel(0x02b12f0a, ccm + MX5_CCM_CSCMR2);
+	imx53_ungate_all_peripherals();
+
+	imx53_init_lowlevel_early(800);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x27c);
+		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
+		imx53_uart_setup_ll();
+		putc_ll('>');
+	}
+
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
-	if (r > 0x70000000 && r < 0xf0000000)
-		imx53_barebox_entry(NULL);
+	if (!(r > 0x70000000 && r < 0xf0000000)) {
+		disable_watchdog();
+		configure_dram_iomux();
+		imx_esdctlv4_init();
+	}
+
+	imx53_barebox_entry(fdt);
+}
+
+extern char __dtb_imx53_guf_vincell_lt_start[];
+
+ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
+{
+	void *fdt;
 
-	/* Setup a preliminary stack */
-	r = 0xf8000000 + 0x60000 - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	fdt = __dtb_imx53_guf_vincell_lt_start - get_runtime_offset();
 
-	disable_watchdog();
+	imx53_guf_vincell_init(fdt);
+}
 
-	configure_dram_iomux();
+extern char __dtb_imx53_guf_vincell_start[];
 
-	imx5_init_lowlevel();
+ENTRY_FUNCTION(start_imx53_guf_vincell, r0, r1, r2)
+{
+	void *fdt;
 
-	imx_esdctlv4_init();
+	fdt = __dtb_imx53_guf_vincell_start - get_runtime_offset();
 
-	imx53_barebox_entry(NULL);
+	imx53_guf_vincell_init(fdt);
 }
diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
index 11f61ee..7ee553d 100644
--- a/arch/arm/configs/vincell_defconfig
+++ b/arch/arm/configs/vincell_defconfig
@@ -1,82 +1,117 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX53=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_GUF_VINCELL=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x7fe00000
-CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
+CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/guf-vincell/env"
-CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_POLLER=y
+CONFIG_STATE=y
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_IMX_UART_PORT=2
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_STATE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
+CONFIG_AT803X_PHY=y
+CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
+CONFIG_MTD_DATAFLASH=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ALLOW_ERASE_BAD=y
 CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_ULPI=y
+CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
+CONFIG_STATE_DRV=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
 CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 06c29c8..54578e9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -22,6 +22,7 @@ pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
+pbl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
 pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
 pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
new file mode 100644
index 0000000..0a9bcb0
--- /dev/null
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -0,0 +1,679 @@
+/*
+ * Copyright 2012 Pengutronix
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
+
+/dts-v1/;
+#include "imx53.dtsi"
+#include <arm/imx53.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "Garz & Fricke VINCELL LT";
+	compatible = "guf,imx53-vincell-lt", "fsl,imx53";
+
+	chosen {
+		linux,stdout-path = &uart2;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &bareboxenv;
+		};
+	};
+
+	memory {
+		reg = <0x70000000 0x20000000>;
+	};
+
+	clocks {
+		ckih1 {
+			clock-frequency = <0>;
+		};
+	};
+
+	panel: panel {
+		compatible = "giantplus,gpg482739qs5", "simple-panel";
+		power-supply = <&reg_panel>;
+		enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&disp0_out>;
+			};
+		};
+	};
+
+	display@di0 {
+		compatible = "fsl,imx-parallel-display";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_disp0>;
+		crtcs = <&ipu 0>;
+		interface-pix-fmt = "bgr24";
+		status = "okay";
+		fsl,panel = <&panel>;
+
+		port@0 {
+			disp0_in: endpoint {
+				remote-endpoint = <&ipu_di0_disp0>;
+			};
+		};
+
+		port@1 {
+			disp0_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 50000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+		power-supply = <&ldo3>;
+		enable-gpios = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+		backlight-boot-off;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_3p2v: 3p2v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P2V";
+			regulator-min-microvolt = <3200000>;
+			regulator-max-microvolt = <3200000>;
+			regulator-always-on;
+		};
+
+		reg_panel: vdd-panel {
+			compatible = "regulator-fixed";
+			regulator-name = "VDD_PANEL";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio4 20 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+
+		reg_usbotg: vbus-otg {
+			compatible = "regulator-fixed";
+			regulator-name = "VBUS_OTG";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio5 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		reg_usbh1: vbus-h1 {
+			compatible = "regulator-fixed";
+			regulator-name = "VBUS_H1";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1>;
+	cd-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rmii";
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	bitrate = <100000>;
+	status = "okay";
+
+	sgtl5000: codec@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+	};
+
+	pmic: dialog@48 { /* DA9053-3HHA1 PMIC */
+		compatible = "dialog,da9053-aa", "dialog,da9052";
+		reg = <0x48>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			buck1 { /* CORE */
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2075000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buck2 { /* PRO */
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2075000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buck3 { /* MEM */
+				regulator-min-microvolt = <925000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buck4 { /* PERI */
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo1 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo2 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo3: ldo3 {
+				regulator-min-microvolt = <1725000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo4 {
+				regulator-min-microvolt = <1725000>;
+				regulator-max-microvolt = <2775000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo5 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo6 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo7 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <2750000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo8 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo9 {
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo10 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+		};
+	};
+
+	temperature-sensor@49 {
+		compatible = "ti,lm73";
+		reg = <0x49>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c32", "st,m24c32";
+		reg = <0x50>;
+		pagesize = <1>;
+		status = "okay";
+	};
+
+	rtc: nxp@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	bitrate = <100000>;
+	status = "disabled";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	touch: edt-ft5x06@38 {
+		compatible = "edt,edt-ft5406", "edt,edt-ft5x06";
+		reg = <0x38>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <14 0>;
+	};
+};
+
+&ipu_di0_disp0 {
+	remote-endpoint = <&disp0_in>;
+};
+
+/* RS485 --> X39 [13..14] */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	/* RTS via GPIO */
+	fsl,uart-has-rtscts;
+	rs485-enabled;
+	gpio = <&gpio7 7 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	vbus-supply = <&reg_usbotg>;
+	status = "okay";
+};
+
+&usbh1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh1>;
+	status = "okay";
+};
+
+/* Serial debug console --> X39 [2..5] */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+/* Serial debug console --> X11 [5..7] */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1>;
+	status = "okay";
+};
+
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	status = "okay";
+};
+
+&nfc {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nand>;
+	nand-bus-width = <8>;
+	nand-ecc-mode = "hw";
+	nand-on-flash-bbt;
+	status = "okay";
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	bareboxenv: partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+
+	partition@2 {
+		label = "ubi";
+		reg = <0x100000 0x0>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx53-vincell-lt {
+		pinctrl_can1: can1grp {
+			fsl,pins = <
+				MX53_PAD_GPIO_7__CAN1_TXCAN		0x00000000
+				MX53_PAD_GPIO_8__CAN1_RXCAN		0x000001c4
+			>;
+		};
+
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX53_PAD_EIM_A25__EMI_WEIM_A_25 	0x000000e4
+				MX53_PAD_EIM_A22__EMI_WEIM_A_22 	0x000000e4
+				MX53_PAD_EIM_D16__EMI_WEIM_D_16 	0x000000a4
+				MX53_PAD_EIM_D17__EMI_WEIM_D_17 	0x000000a4
+				MX53_PAD_EIM_D18__EMI_WEIM_D_18 	0x000000a4
+				MX53_PAD_EIM_D19__EMI_WEIM_D_19 	0x000000a4
+				MX53_PAD_EIM_D20__EMI_WEIM_D_20 	0x000000a4
+				MX53_PAD_EIM_D21__EMI_WEIM_D_21 	0x000000a4
+				MX53_PAD_EIM_D22__EMI_WEIM_D_22 	0x000000a4
+				MX53_PAD_EIM_D23__EMI_WEIM_D_23 	0x000000a4
+				MX53_PAD_EIM_D24__EMI_WEIM_D_24 	0x000000a4
+				MX53_PAD_EIM_D25__EMI_WEIM_D_25 	0x000000a4
+				MX53_PAD_EIM_D26__EMI_WEIM_D_26 	0x000000a4
+				MX53_PAD_EIM_D27__EMI_WEIM_D_27 	0x000000a4
+				MX53_PAD_EIM_D28__EMI_WEIM_D_28 	0x000000a4
+				MX53_PAD_EIM_D29__EMI_WEIM_D_29 	0x000000a4
+				MX53_PAD_EIM_D30__EMI_WEIM_D_30 	0x000000a4
+				MX53_PAD_EIM_D31__EMI_WEIM_D_31 	0x000000a4
+				MX53_PAD_EIM_A24__EMI_WEIM_A_24 	0x000001e4
+				MX53_PAD_EIM_A23__EMI_WEIM_A_23 	0x000001e4
+				MX53_PAD_EIM_A22__EMI_WEIM_A_22 	0x000000e4
+				MX53_PAD_EIM_A21__EMI_WEIM_A_21 	0x000000e4
+				MX53_PAD_EIM_A20__EMI_WEIM_A_20 	0x000000a4
+				MX53_PAD_EIM_A19__EMI_WEIM_A_19 	0x000000a4
+				MX53_PAD_EIM_A18__EMI_WEIM_A_18 	0x000000a4
+				MX53_PAD_EIM_A17__EMI_WEIM_A_17 	0x000000a4
+				MX53_PAD_EIM_A16__EMI_WEIM_A_16 	0x000000a4
+				MX53_PAD_EIM_CS0__EMI_WEIM_CS_0 	0x000000a4
+				MX53_PAD_EIM_CS1__EMI_WEIM_CS_1 	0x000000e4
+				MX53_PAD_EIM_OE__EMI_WEIM_OE		0x000000a4
+				MX53_PAD_EIM_RW__EMI_WEIM_RW		0x000000a4
+				MX53_PAD_EIM_LBA__EMI_WEIM_LBA		0x000000e4
+				MX53_PAD_EIM_EB0__EMI_WEIM_EB_0 	0x000000a4
+				MX53_PAD_EIM_EB1__EMI_WEIM_EB_1 	0x000000a4
+				MX53_PAD_EIM_EB2__EMI_WEIM_EB_2 	0x000001e4
+				MX53_PAD_EIM_EB3__EMI_WEIM_EB_3 	0x000001e4
+				MX53_PAD_EIM_WAIT__EMI_WEIM_WAIT	0x000000e0
+				MX53_PAD_LVDS0_TX3_P__GPIO7_22		0x80000000
+				MX53_PAD_LVDS0_CLK_P__GPIO7_24		0x80000000
+				MX53_PAD_LVDS0_TX2_P__GPIO7_26		0x80000000
+				MX53_PAD_LVDS0_TX1_P__GPIO7_28		0x80000000
+				MX53_PAD_LVDS0_TX0_P__GPIO7_30		0x80000000
+				MX53_PAD_GPIO_1__GPIO1_1		0x000001c4
+				MX53_PAD_GPIO_2__GPIO1_2		0x000001c4
+				MX53_PAD_GPIO_10__GPIO4_0		0x000005e5
+				MX53_PAD_GPIO_11__GPIO4_1		0x000005c5
+				MX53_PAD_GPIO_12__GPIO4_2		0x000005e5
+				MX53_PAD_GPIO_13__GPIO4_3		0x000005e5
+				MX53_PAD_GPIO_14__GPIO4_4		0x000005e5
+				MX53_PAD_GPIO_16__GPIO7_11		0x000001c4
+				MX53_PAD_KEY_ROW2__GPIO4_11		0x000001e4
+				MX53_PAD_PATA_DATA8__GPIO2_8		0x000001e4
+				MX53_PAD_PATA_DATA12__PATA_DATA_12	0x000001e4
+				MX53_PAD_PATA_DA_0__PATA_DA_0		0x000001e4
+
+				/* UART5: MDB --> X39 [2..5] (shared with RS232) */
+				MX53_PAD_PATA_DATA9__GPIO2_9		0x00000000	/* MDB_WAKEUP_OUT */
+
+				/* UART3: RS485 --> X39 */
+				MX53_PAD_PATA_DA_1__GPIO7_7		0x00000000	/* RS485_TX_EN */
+
+				MX53_PAD_PATA_DATA4__GPIO2_4		0x00000000	/* FEC_nINT */
+
+				/* LCD panel */
+				MX53_PAD_DI0_PIN4__GPIO4_20		0x000004c4	/* lcd power */
+				MX53_PAD_PATA_DATA2__GPIO2_2		0x00000000	/* backlight power */
+				MX53_PAD_PATA_DATA5__GPIO2_5		0x00000020	/* lcd enable */
+				MX53_PAD_GPIO_9__PWM1_PWMO		0x00000000	/* LCD backlight PWM1 out */
+
+				/* ESDHC1 */
+				MX53_PAD_PATA_DATA6__GPIO2_6		0x00000000	/* ESDHC1 CD */
+
+				/* I2C system bus */
+				/* MX53_PAD_CSI0_DAT8__GPIO5_26		0x00000000 */
+				/* MX53_PAD_CSI0_DAT9__GPIO5_27	*/
+
+				/* I2C external touch interface, disabled */
+				/* MX53_PAD_GPIO_5__GPIO1_50x80000000 */
+				/* MX53_PAD_GPIO_6__GPIO1_60x80000000 */
+
+				/* External Touch */
+				MX53_PAD_PATA_DATA13__GPIO2_13		0x00000000	/* TOUCH_RESET */
+				MX53_PAD_PATA_DATA14__GPIO2_14		0x00000000	/* TOUCH_INT */
+				MX53_PAD_PATA_DATA15__GPIO2_15		0x00000000	/* TOUCH_WAKE */
+
+				/* Audio */
+				MX53_PAD_PATA_DATA7__GPIO2_7 		0x00000000	/* Speaker on */
+
+				/* Clockout for external USB-phy and audiocodec */
+				MX53_PAD_GPIO_3__CCM_CLKO2 		0x00000000
+
+				/* GPIOs on keypad connector (X21) */
+				MX53_PAD_CSI0_DAT11__GPIO5_29		0x00000000	/* Pin 3 */
+				MX53_PAD_PATA_DIOW__GPIO6_17		0x00000000	/* Pin 4 */
+				MX53_PAD_SD2_CMD__GPIO1_11		0x00000000	/* Pin 5 */
+				MX53_PAD_PATA_DMACK__GPIO6_18		0x00000000	/* Pin 6 */
+				MX53_PAD_CSI0_DAT7__GPIO5_25		0x00000000	/* Pin 7 */
+				MX53_PAD_GPIO_4__GPIO1_4		0x00000000	/* Pin 8 */
+				MX53_PAD_KEY_ROW4__GPIO4_15		0x00000000	/* Pin 9 */
+				MX53_PAD_KEY_COL4__GPIO4_14		0x00000000	/* Pin 10 */
+				MX53_PAD_KEY_ROW3__GPIO4_13		0x00000000	/* Pin 11 */
+				MX53_PAD_KEY_COL3__GPIO4_12		0x00000000	/* Pin 12 */
+				MX53_PAD_GPIO_19__GPIO4_5		0x00000000	/* Pin 13 */
+				MX53_PAD_KEY_COL2__GPIO4_10		0x00000000	/* Pin 14 */
+				MX53_PAD_KEY_COL1__GPIO4_8		0x00000000	/* Pin 15 */
+				MX53_PAD_KEY_ROW0__GPIO4_7		0x00000000	/* Pin 16 */
+				MX53_PAD_KEY_COL0__GPIO4_6		0x00000000	/* Pin 17 */
+				MX53_PAD_KEY_ROW1__GPIO4_9		0x00000000	/* Pin 18 */
+
+				MX53_PAD_GPIO_17__GPIO7_12		0x000000e0	/* PMIC_nIRQ, 100 KOhm pull up */
+			>;
+		};
+
+		pinctrl_disp0: disp0grp {
+			fsl,pins = <
+				MX53_PAD_DI0_DISP_CLK__IPU_DI0_DISP_CLK	0x000004c1
+				MX53_PAD_DI0_PIN15__IPU_DI0_PIN15	0x000004c1
+				MX53_PAD_DI0_PIN2__IPU_DI0_PIN2		0x000004c5
+				MX53_PAD_DI0_PIN3__IPU_DI0_PIN3		0x000004c5
+				MX53_PAD_DISP0_DAT0__IPU_DISP0_DAT_0	0x000004c3
+				MX53_PAD_DISP0_DAT1__IPU_DISP0_DAT_1	0x000004c3
+				MX53_PAD_DISP0_DAT2__IPU_DISP0_DAT_2	0x000004c3
+				MX53_PAD_DISP0_DAT3__IPU_DISP0_DAT_3	0x000004c3
+				MX53_PAD_DISP0_DAT4__IPU_DISP0_DAT_4	0x000004c3
+				MX53_PAD_DISP0_DAT5__IPU_DISP0_DAT_5	0x000004c3
+				MX53_PAD_DISP0_DAT6__IPU_DISP0_DAT_6	0x000004c3
+				MX53_PAD_DISP0_DAT7__IPU_DISP0_DAT_7	0x000004c3
+				MX53_PAD_DISP0_DAT8__IPU_DISP0_DAT_8	0x000004c3
+				MX53_PAD_DISP0_DAT9__IPU_DISP0_DAT_9	0x000004c3
+				MX53_PAD_DISP0_DAT10__IPU_DISP0_DAT_10	0x000004c3
+				MX53_PAD_DISP0_DAT11__IPU_DISP0_DAT_11	0x000004c3
+				MX53_PAD_DISP0_DAT12__IPU_DISP0_DAT_12	0x000004c3
+				MX53_PAD_DISP0_DAT13__IPU_DISP0_DAT_13	0x000004c3
+				MX53_PAD_DISP0_DAT14__IPU_DISP0_DAT_14	0x000004c3
+				MX53_PAD_DISP0_DAT15__IPU_DISP0_DAT_15	0x000004c3
+				MX53_PAD_DISP0_DAT16__IPU_DISP0_DAT_16	0x000004c3
+				MX53_PAD_DISP0_DAT17__IPU_DISP0_DAT_17	0x000004c3
+				MX53_PAD_DISP0_DAT18__IPU_DISP0_DAT_18	0x000004c3
+				MX53_PAD_DISP0_DAT19__IPU_DISP0_DAT_19	0x000004c3
+				MX53_PAD_DISP0_DAT20__IPU_DISP0_DAT_20	0x000004c3
+				MX53_PAD_DISP0_DAT21__IPU_DISP0_DAT_21	0x000004c3
+				MX53_PAD_DISP0_DAT22__IPU_DISP0_DAT_22	0x000004c3
+				MX53_PAD_DISP0_DAT23__IPU_DISP0_DAT_23	0x000004c3
+			>;
+		};
+
+		pinctrl_nand: nandgrp {
+			fsl,pins = <
+				MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B	0x00000004
+				MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B	0x00000004
+				MX53_PAD_NANDF_CLE__EMI_NANDF_CLE	0x00000004
+				MX53_PAD_NANDF_ALE__EMI_NANDF_ALE	0x00000004
+				MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B	0x000000e4
+				MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0	0x000000e0
+				MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0	0x00000004
+				MX53_PAD_NANDF_CS1__EMI_NANDF_CS_1	0x000001e4
+				MX53_PAD_NANDF_CS2__EMI_NANDF_CS_2	0x000001e4
+				MX53_PAD_NANDF_CS3__EMI_NANDF_CS_3	0x000001e4
+
+				MX53_PAD_EIM_DA0__EMI_NAND_WEIM_DA_0	0x000000a4
+				MX53_PAD_EIM_DA1__EMI_NAND_WEIM_DA_1	0x000000a4
+				MX53_PAD_EIM_DA2__EMI_NAND_WEIM_DA_2	0x000000a4
+				MX53_PAD_EIM_DA3__EMI_NAND_WEIM_DA_3	0x000000a4
+				MX53_PAD_EIM_DA4__EMI_NAND_WEIM_DA_4	0x000000a4
+				MX53_PAD_EIM_DA5__EMI_NAND_WEIM_DA_5	0x000000a4
+				MX53_PAD_EIM_DA6__EMI_NAND_WEIM_DA_6	0x000000a4
+				MX53_PAD_EIM_DA7__EMI_NAND_WEIM_DA_7	0x000000a4
+				MX53_PAD_EIM_DA8__EMI_NAND_WEIM_DA_8	0x000000e4
+				MX53_PAD_EIM_DA9__EMI_NAND_WEIM_DA_9	0x000000e4
+				MX53_PAD_EIM_DA10__EMI_NAND_WEIM_DA_10	0x000000e4
+				MX53_PAD_EIM_DA11__EMI_NAND_WEIM_DA_11	0x000000e4
+				MX53_PAD_EIM_DA12__EMI_NAND_WEIM_DA_12	0x000000e4
+				MX53_PAD_EIM_DA13__EMI_NAND_WEIM_DA_13	0x000000e4
+				MX53_PAD_EIM_DA14__EMI_NAND_WEIM_DA_14	0x000000e4
+				MX53_PAD_EIM_DA15__EMI_NAND_WEIM_DA_15	0x000000e4
+			>;
+		};
+
+		pinctrl_usbh1: usbh1grp {
+			fsl,pins = <
+				MX53_PAD_CSI0_PIXCLK__GPIO5_18		0x00000000	/* OC */
+				MX53_PAD_GPIO_0__USBOH3_USBH1_PWR	0x00000000	/* PWR_EN */
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DATA_EN__GPIO5_20		0x00000084	/* OC */
+				/* can not be used, odd transistor logic */
+				MX53_PAD_CSI0_MCLK__GPIO5_19		0x00000000	/* PWR_EN */
+			>;
+		};
+
+		pinctrl_esdhc1: esdhc1grp {
+			fsl,pins = <
+				MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1d5
+				MX53_PAD_SD1_DATA1__ESDHC1_DAT1		0x1d5
+				MX53_PAD_SD1_DATA2__ESDHC1_DAT2		0x1d5
+				MX53_PAD_SD1_DATA3__ESDHC1_DAT3		0x1d5
+				MX53_PAD_SD1_CMD__ESDHC1_CMD		0x1d5
+				MX53_PAD_SD1_CLK__ESDHC1_CLK		0x1d5
+			>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX53_PAD_PATA_CS_0__UART3_TXD_MUX	0x1c5
+				MX53_PAD_PATA_CS_1__UART3_RXD_MUX 	0x1c5
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX	0x1c5
+				MX53_PAD_PATA_DMARQ__UART2_TXD_MUX	0x1c5
+				MX53_PAD_PATA_INTRQ__UART2_CTS		0x1c5
+				MX53_PAD_PATA_DIOR__UART2_RTS		0x1c5
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT8__I2C1_SDA		0xc0000000
+				MX53_PAD_CSI0_DAT9__I2C1_SCL		0xc0000000
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX53_PAD_KEY_ROW3__I2C2_SDA		0xc0000000
+				MX53_PAD_KEY_COL3__I2C2_SCL		0xc0000000
+			>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <
+				MX53_PAD_SD2_DATA0__AUDMUX_AUD4_RXD	0x80000000
+				MX53_PAD_SD2_DATA1__AUDMUX_AUD4_TXFS	0x80000000
+				MX53_PAD_SD2_DATA2__AUDMUX_AUD4_TXD	0x80000000
+				MX53_PAD_SD2_DATA3__AUDMUX_AUD4_TXC	0x80000000
+			>;
+		};
+
+		pinctrl_fec: fecgrp {
+			fsl,pins = <
+				MX53_PAD_FEC_MDC__FEC_MDC		0x80000000
+				MX53_PAD_FEC_MDIO__FEC_MDIO		0x80000000
+				MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x80000000
+				MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x80000000
+				MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x80000000
+				MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x80000000
+				MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x80000000
+				MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x80000000
+				MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x80000000
+				MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x80000000
+			>;
+		};
+
+		pinctrl_uart5: uart5grp {
+			 fsl,pins = <
+				 MX53_PAD_CSI0_DAT14__UART5_TXD_MUX 0x1c5
+				 MX53_PAD_CSI0_DAT15__UART5_RXD_MUX 0x1c5
+				 MX53_PAD_CSI0_DAT18__UART5_RTS     0x1c5
+				 MX53_PAD_CSI0_DAT19__UART5_CTS     0x1c5
+				 >;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			 fsl,pins = <
+				 MX53_PAD_GPIO_6__I2C3_SDA 0xc0000000
+				 MX53_PAD_GPIO_5__I2C3_SCL 0xc0000000
+			 >;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT12__UART4_TXD_MUX 0x1c5
+				MX53_PAD_CSI0_DAT13__UART4_RXD_MUX 0x1c5
+				MX53_PAD_CSI0_DAT16__UART4_RTS     0x1c5
+				MX53_PAD_CSI0_DAT17__UART4_CTS     0x1c5
+			>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
new file mode 100644
index 0000000..ffc157f
--- /dev/null
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -0,0 +1,402 @@
+/*
+ * Copyright 2012 Pengutronix
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
+
+/dts-v1/;
+#include "imx53.dtsi"
+#include <arm/imx53.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "Garz & Fricke VINCELL";
+	compatible = "guf,imx53-vincell", "fsl,imx53";
+
+	chosen {
+		linux,stdout-path = &uart2;
+	};
+
+	memory {
+		reg = <0x70000000 0x20000000>;
+	};
+
+	clocks {
+		ckih1 {
+			clock-frequency = <0>;
+		};
+	};
+
+	panel: panel {
+		compatible = "ampire,am800480r3tmqwa1h", "simple-panel";
+		enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&lvds0_out>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		user {
+			label = "Heartbeat";
+			gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 50000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+		enable-gpios = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_3p2v: 3p2v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P2V";
+			regulator-min-microvolt = <3200000>;
+			regulator-max-microvolt = <3200000>;
+			regulator-always-on;
+		};
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1>;
+	cd-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	bitrate = <100000>;
+	status = "okay";
+
+	pmic: dialog@48 { /* DA9053-3HHA1 PMIC */
+		compatible = "dialog,da9053-aa", "dialog,da9052";
+		reg = <0x48>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			buck1 { /* CORE */
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2075000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buck2 { /* PRO */
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2075000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buck3 { /* MEM */
+				regulator-min-microvolt = <925000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			buck4 { /* PERI */
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo1 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo2 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo3 {
+				regulator-min-microvolt = <1725000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo4 {
+				regulator-min-microvolt = <1725000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo5 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo6 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo7 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo8 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo9 {
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <3650000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			ldo10 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+		};
+	};
+
+	temperature-sensor@49 {
+		compatible = "ti,lm73";
+		reg = <0x49>;
+	};
+
+	eeprom@50 {
+		compatible = "st,m24c32";
+		reg = <0x50>;
+		status = "disabled";
+	};
+
+	rtc: nxp@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	bitrate = <100000>;
+	status = "disabled";
+};
+
+&ldb {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lvds0>;
+	status = "okay";
+
+	lvds-channel@0 {
+		status = "okay";
+		fsl,data-mapping = "jeida";
+		fsl,data-width = <24>;
+
+		port@1 {
+			reg = <1>;
+
+			lvds0_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx53-vincell {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX53_PAD_DISP0_DAT8__GPIO4_29		0x80000000
+				MX53_PAD_DISP0_DAT14__GPIO5_8		0x80000000
+				MX53_PAD_DISP0_DAT15__GPIO5_9		0x80000000
+				MX53_PAD_DISP0_DAT16__GPIO5_10		0x80000000
+				MX53_PAD_DISP0_DAT17__GPIO5_11		0x80000000
+				MX53_PAD_CSI0_PIXCLK__GPIO5_18		0x80000000
+				MX53_PAD_CSI0_MCLK__GPIO5_19		0x80000000
+				MX53_PAD_CSI0_DATA_EN__GPIO5_20		0x80000000
+				MX53_PAD_CSI0_VSYNC__GPIO5_21		0x80000000
+				MX53_PAD_CSI0_DAT4__GPIO5_22		0x80000000
+				MX53_PAD_CSI0_DAT5__GPIO5_23		0x80000000
+				MX53_PAD_CSI0_DAT6__GPIO5_24		0x80000000
+				MX53_PAD_EIM_EB2__GPIO2_30		0x80000000
+				MX53_PAD_GPIO_10__GPIO4_0		0x80000000
+				MX53_PAD_GPIO_11__GPIO4_1		0x80000000
+				MX53_PAD_GPIO_12__GPIO4_2		0x80000000
+				MX53_PAD_GPIO_13__GPIO4_3		0x80000000
+				MX53_PAD_PATA_DIOW__GPIO6_17		0x80000000
+				MX53_PAD_PATA_DMACK__GPIO6_18		0x80000000
+				MX53_PAD_PATA_RESET_B__GPIO7_4		0x80000000
+				MX53_PAD_PATA_IORDY__GPIO7_5		0x80000000
+				MX53_PAD_PATA_DA_0__GPIO7_6		0x80000000
+				MX53_PAD_PATA_DA_2__GPIO7_8		0x80000000
+				MX53_PAD_PATA_DATA0__GPIO2_0		0x80000000
+				MX53_PAD_PATA_DATA1__GPIO2_1		0x80000000
+				MX53_PAD_PATA_DATA2__GPIO2_2		0x000001c5	/* BL_ON */
+				MX53_PAD_PATA_DATA3__GPIO2_3		0x000000c4	/* SEL6_8 */
+				MX53_PAD_PATA_DATA4__PATA_DATA_4	0x80000000
+				MX53_PAD_PATA_DATA5__GPIO2_5		0x000000c4	/* LCD_ENA */
+				MX53_PAD_PATA_DATA6__GPIO2_6		0x80000000
+				MX53_PAD_PATA_DATA7__GPIO2_7		0x80000000
+				MX53_PAD_PATA_DATA8__GPIO2_8		0x80000000
+				MX53_PAD_PATA_DATA9__GPIO2_9		0x80000000
+				MX53_PAD_PATA_DATA10__GPIO2_10		0x80000000
+				MX53_PAD_PATA_DATA11__GPIO2_11		0x80000000
+				MX53_PAD_PATA_DATA13__GPIO2_13		0x80000000
+				MX53_PAD_PATA_DATA14__GPIO2_14		0x80000000
+				MX53_PAD_PATA_DATA15__GPIO2_15		0x80000000
+				MX53_PAD_SD2_CLK__GPIO1_10		0x80000000
+				MX53_PAD_SD2_DATA3__GPIO1_12		0x80000000
+				MX53_PAD_GPIO_2__GPIO1_2		0x80000000
+				MX53_PAD_GPIO_4__GPIO1_4		0x80000000
+				MX53_PAD_GPIO_17__GPIO7_12		0x000000e0	/* PMIC_nIRQ, 100 KOhm pull up */
+				MX53_PAD_GPIO_18__GPIO7_13		0x80000000
+				MX53_PAD_DISP0_DAT8__PWM1_PWMO		0x80000000
+				MX53_PAD_DISP0_DAT9__PWM2_PWMO		0x000000c4	/* PWM2 out */
+			>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <
+				MX53_PAD_DISP0_DAT20__AUDMUX_AUD4_TXC	0x80000000
+				MX53_PAD_DISP0_DAT21__AUDMUX_AUD4_TXD	0x80000000
+				MX53_PAD_DISP0_DAT22__AUDMUX_AUD4_TXFS	0x80000000
+				MX53_PAD_DISP0_DAT23__AUDMUX_AUD4_RXD	0x80000000
+			>;
+		};
+
+		pinctrl_esdhc1: esdhc1grp {
+			fsl,pins = <
+				MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1d5
+				MX53_PAD_SD1_DATA1__ESDHC1_DAT1		0x1d5
+				MX53_PAD_SD1_DATA2__ESDHC1_DAT2		0x1d5
+				MX53_PAD_SD1_DATA3__ESDHC1_DAT3		0x1d5
+				MX53_PAD_SD1_CMD__ESDHC1_CMD		0x1d5
+				MX53_PAD_SD1_CLK__ESDHC1_CLK		0x1d5
+			>;
+		};
+
+		pinctrl_fec: fecgrp {
+			fsl,pins = <
+				MX53_PAD_FEC_MDC__FEC_MDC		0x80000000
+				MX53_PAD_FEC_MDIO__FEC_MDIO		0x80000000
+				MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x80000000
+				MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x80000000
+				MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x80000000
+				MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x80000000
+				MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x80000000
+				MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x80000000
+				MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x80000000
+				MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x80000000
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT8__I2C1_SDA		0xc0000000
+				MX53_PAD_CSI0_DAT9__I2C1_SCL		0xc0000000
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX53_PAD_KEY_ROW3__I2C2_SDA		0xc0000000
+				MX53_PAD_KEY_COL3__I2C2_SCL		0xc0000000
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX	0x1c5
+				MX53_PAD_PATA_DMARQ__UART2_TXD_MUX	0x1c5
+				MX53_PAD_PATA_INTRQ__UART2_CTS		0x1c5
+				MX53_PAD_PATA_DIOR__UART2_RTS		0x1c5
+			>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX53_PAD_PATA_CS_0__UART3_TXD_MUX	0x1c5
+				MX53_PAD_PATA_CS_1__UART3_RXD_MUX	0x1c5
+			>;
+		};
+
+		pinctrl_lvds0: lvds0grp {
+			fsl,pins = <
+				MX53_PAD_LVDS0_CLK_P__LDB_LVDS0_CLK	0x80000000
+				MX53_PAD_LVDS0_TX0_P__LDB_LVDS0_TX0	0x80000000
+				MX53_PAD_LVDS0_TX1_P__LDB_LVDS0_TX1	0x80000000
+				MX53_PAD_LVDS0_TX2_P__LDB_LVDS0_TX2	0x80000000
+				MX53_PAD_LVDS0_TX3_P__LDB_LVDS0_TX3	0x80000000
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f8f6004..631333f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -29,7 +29,6 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_CCMX51
 	default 0x4fc00000 if MACH_SABRELITE
 	default 0x8fe00000 if MACH_TX53
-	default 0x7fc00000 if MACH_GUF_VINCELL
 	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
 	default 0x17800000 if MACH_SABRESD
 	default 0x4fc00000 if MACH_REALQ7
@@ -251,6 +250,10 @@ config MACH_FREESCALE_MX53_LOCO
 	select I2C_IMX
 	select MFD_MC13XXX
 
+config MACH_GUF_VINCELL
+	bool "Garz-Fricke Vincell"
+	select ARCH_IMX53
+
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
@@ -533,11 +536,6 @@ config MACH_TX53
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
-config MACH_GUF_VINCELL
-	bool "Garz-Fricke Vincell"
-	select ARCH_IMX53
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-
 endchoice
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 6b44958..59b4563 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -70,6 +70,16 @@ CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-i
 FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += barebox-freescale-imx53-vmx53.img
 
+pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell
+CFG_start_imx53_guf_vincell.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.pblx.imximg
+image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell.img
+
+pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell_lt
+CFG_start_imx53_guf_vincell_lt.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.pblx.imximg
+image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell-lt.img
+
 pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_512mib
 CFG_start_imx53_mba53_512mib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-512mib.imxcfg
 FILE_barebox-tq-mba53-512mib.img = start_imx53_mba53_512mib.pblx.imximg
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
