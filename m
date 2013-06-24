Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrA8a-0007Ly-6b
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 17:01:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Jun 2013 19:00:42 +0200
Message-Id: <1372093242-11699-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
References: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX51 efikasb: Switch to devicetree probing
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c    | 301 +++--------------------
 arch/arm/configs/efika-mx-smartbook_defconfig |  13 +-
 arch/arm/dts/Makefile                         |   3 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts        | 328 ++++++++++++++++++++++++++
 drivers/usb/host/ehci-hcd.c                   |   6 +-
 5 files changed, 370 insertions(+), 281 deletions(-)
 create mode 100644 arch/arm/dts/imx51-genesi-efika-sb.dts

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 58600e3..bea61ce 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -13,42 +13,31 @@
  *
  */
 
-#include <common.h>
-#include <bootsource.h>
-#include <net.h>
-#include <init.h>
 #include <environment.h>
-#include <mach/gpio.h>
-#include <asm/armlinux.h>
+#include <bootsource.h>
 #include <partition.h>
-#include <notifier.h>
-#include <fs.h>
-#include <led.h>
+#include <common.h>
 #include <fcntl.h>
-#include <nand.h>
-#include <usb/ulpi.h>
-#include <usb/chipidea-imx.h>
+#include <gpio.h>
+#include <init.h>
+#include <led.h>
+#include <fs.h>
+#include <io.h>
+
 #include <spi/spi.h>
 #include <mfd/mc13xxx.h>
 #include <mfd/mc13892.h>
-#include <asm/io.h>
-#include <asm/mmu.h>
-#include <mach/imx-nand.h>
-#include <mach/spi.h>
+
+#include <asm/armlinux.h>
+
+#include <mach/imx-flash-header.h>
+#include <mach/devices-imx51.h>
+#include <mach/imx51-regs.h>
+#include <mach/iomux-mx51.h>
+#include <mach/revision.h>
 #include <mach/generic.h>
 #include <mach/imx5.h>
 #include <mach/bbu.h>
-#include <mach/iomux-mx51.h>
-#include <mach/imx51-regs.h>
-#include <mach/devices-imx51.h>
-#include <mach/imx-flash-header.h>
-#include <mach/revision.h>
-
-#define GPIO_EFIKA_SDHC1_WP	IMX_GPIO_NR(1, 1)
-#define GPIO_EFIKAMX_SDHC1_CD	IMX_GPIO_NR(1, 0)
-#define GPIO_EFIKASB_SDHC1_CD	IMX_GPIO_NR(2, 27)
-#define GPIO_EFIKASB_SDHC2_CD	IMX_GPIO_NR(1, 8)
-#define GPIO_EFIKASB_SDHC2_WP	IMX_GPIO_NR(1, 7)
 
 #define GPIO_BACKLIGHT_POWER	IMX_GPIO_NR(4, 12)
 #define GPIO_BACKLIGHT_PWM	IMX_GPIO_NR(1, 2)
@@ -63,128 +52,6 @@
 #define GPIO_HUB_RESET		IMX_GPIO_NR(1, 5)
 #define GPIO_SMSC3317_RESET	IMX_GPIO_NR(2, 9)
 
-static iomux_v3_cfg_t efika_pads[] = {
-	/* ECSPI1 */
-	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
-	MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
-	MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK,
-	MX51_PAD_CSPI1_SS0__GPIO4_24,
-	MX51_PAD_CSPI1_SS1__GPIO4_25,
-	MX51_PAD_GPIO1_6__GPIO1_6,
-
-	/* ESDHC1 */
-	MX51_PAD_SD1_CMD__SD1_CMD,
-	MX51_PAD_SD1_CLK__SD1_CLK,
-	MX51_PAD_SD1_DATA0__SD1_DATA0,
-	MX51_PAD_SD1_DATA1__SD1_DATA1,
-	MX51_PAD_SD1_DATA2__SD1_DATA2,
-	MX51_PAD_SD1_DATA3__SD1_DATA3,
-	MX51_PAD_GPIO1_1__GPIO1_1,
-
-	/* USB HOST1 */
-	MX51_PAD_USBH1_CLK__USBH1_CLK,
-	MX51_PAD_USBH1_DIR__USBH1_DIR,
-	MX51_PAD_USBH1_NXT__USBH1_NXT,
-	MX51_PAD_USBH1_DATA0__USBH1_DATA0,
-	MX51_PAD_USBH1_DATA1__USBH1_DATA1,
-	MX51_PAD_USBH1_DATA2__USBH1_DATA2,
-	MX51_PAD_USBH1_DATA3__USBH1_DATA3,
-	MX51_PAD_USBH1_DATA4__USBH1_DATA4,
-	MX51_PAD_USBH1_DATA5__USBH1_DATA5,
-	MX51_PAD_USBH1_DATA6__USBH1_DATA6,
-	MX51_PAD_USBH1_DATA7__USBH1_DATA7,
-	MX51_PAD_USBH1_STP__GPIO1_27,
-	MX51_PAD_EIM_A16__GPIO2_10,
-
-	/* USB HOST2 */
-	MX51_PAD_EIM_D27__GPIO2_9,
-	MX51_PAD_GPIO1_5__GPIO1_5,
-	MX51_PAD_EIM_D16__USBH2_DATA0,
-	MX51_PAD_EIM_D17__USBH2_DATA1,
-	MX51_PAD_EIM_D18__USBH2_DATA2,
-	MX51_PAD_EIM_D19__USBH2_DATA3,
-	MX51_PAD_EIM_D20__USBH2_DATA4,
-	MX51_PAD_EIM_D21__USBH2_DATA5,
-	MX51_PAD_EIM_D22__USBH2_DATA6,
-	MX51_PAD_EIM_D23__USBH2_DATA7,
-	MX51_PAD_EIM_A24__USBH2_CLK,
-	MX51_PAD_EIM_A25__USBH2_DIR,
-	MX51_PAD_EIM_A26__GPIO2_20,
-	MX51_PAD_EIM_A27__USBH2_NXT,
-
-	/* PATA */
-	MX51_PAD_NANDF_WE_B__PATA_DIOW,
-	MX51_PAD_NANDF_RE_B__PATA_DIOR,
-	MX51_PAD_NANDF_ALE__PATA_BUFFER_EN,
-	MX51_PAD_NANDF_CLE__PATA_RESET_B,
-	MX51_PAD_NANDF_WP_B__PATA_DMACK,
-	MX51_PAD_NANDF_RB0__PATA_DMARQ,
-	MX51_PAD_NANDF_RB1__PATA_IORDY,
-	MX51_PAD_GPIO_NAND__PATA_INTRQ,
-	MX51_PAD_NANDF_CS2__PATA_CS_0,
-	MX51_PAD_NANDF_CS3__PATA_CS_1,
-	MX51_PAD_NANDF_CS4__PATA_DA_0,
-	MX51_PAD_NANDF_CS5__PATA_DA_1,
-	MX51_PAD_NANDF_CS6__PATA_DA_2,
-	MX51_PAD_NANDF_D15__PATA_DATA15,
-	MX51_PAD_NANDF_D14__PATA_DATA14,
-	MX51_PAD_NANDF_D13__PATA_DATA13,
-	MX51_PAD_NANDF_D12__PATA_DATA12,
-	MX51_PAD_NANDF_D11__PATA_DATA11,
-	MX51_PAD_NANDF_D10__PATA_DATA10,
-	MX51_PAD_NANDF_D9__PATA_DATA9,
-	MX51_PAD_NANDF_D8__PATA_DATA8,
-	MX51_PAD_NANDF_D7__PATA_DATA7,
-	MX51_PAD_NANDF_D6__PATA_DATA6,
-	MX51_PAD_NANDF_D5__PATA_DATA5,
-	MX51_PAD_NANDF_D4__PATA_DATA4,
-	MX51_PAD_NANDF_D3__PATA_DATA3,
-	MX51_PAD_NANDF_D2__PATA_DATA2,
-	MX51_PAD_NANDF_D1__PATA_DATA1,
-	MX51_PAD_NANDF_D0__PATA_DATA0,
-
-	MX51_PAD_EIM_A22__GPIO2_16, /* WLAN enable (1 = on) */
-	MX51_PAD_EIM_A17__GPIO2_11,
-
-	/* I2C2 */
-	MX51_PAD_KEY_COL4__I2C2_SCL,
-	MX51_PAD_KEY_COL5__I2C2_SDA,
-
-	MX51_PAD_GPIO1_2__GPIO1_2, /* Backlight (should be pwm) (1 = on) */
-	MX51_PAD_CSI2_D19__GPIO4_12, /* Backlight power (0 = on) */
-
-	MX51_PAD_DISPB2_SER_CLK__GPIO3_7, /* LVDS power (1 = on) */
-	MX51_PAD_DISPB2_SER_DIN__GPIO3_5, /* LVDS reset (1 = reset) */
-	MX51_PAD_CSI1_D8__GPIO3_12, /* LVDS enable (1 = enable) */
-	MX51_PAD_CSI1_D9__GPIO3_13, /* LCD enable (1 = on) */
-
-	MX51_PAD_DI1_PIN12__GPIO3_1, /* WLAN switch (0 = on) */
-
-	MX51_PAD_GPIO1_4__WDOG1_WDOG_B,
-};
-
-static iomux_v3_cfg_t efikasb_pads[] = {
-	/* LEDs */
-	MX51_PAD_EIM_CS0__GPIO2_25,
-	MX51_PAD_GPIO1_3__GPIO1_3,
-
-	/* ESHC2 */
-	MX51_PAD_SD2_CMD__SD2_CMD,
-	MX51_PAD_SD2_CLK__SD2_CLK,
-	MX51_PAD_SD2_DATA0__SD2_DATA0,
-	MX51_PAD_SD2_DATA1__SD2_DATA1,
-	MX51_PAD_SD2_DATA2__SD2_DATA2,
-	MX51_PAD_SD2_DATA3__SD2_DATA3,
-	MX51_PAD_GPIO1_7__GPIO1_7,
-	MX51_PAD_GPIO1_8__GPIO1_8,
-
-	MX51_PAD_EIM_CS2__GPIO2_27,
-};
-
-static iomux_v3_cfg_t efikamx_pads[] = {
-	MX51_PAD_GPIO1_0__GPIO1_0,
-};
-
 /*
  * Generally this should work on the Efika MX smarttop aswell,
  * but I do not have the hardware to test it, so hardcode this
@@ -195,36 +62,7 @@ static inline int machine_is_efikasb(void)
 	return 1;
 }
 
-static int efikamx_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x90000000, SZ_512M);
-
-	return 0;
-}
-mem_initcall(efikamx_mem_init);
-
-static int spi_0_cs[] = { IMX_GPIO_NR(4, 24), IMX_GPIO_NR(4, 25) };
-
-static struct spi_imx_master spi_0_data = {
-	.chipselect = spi_0_cs,
-	.num_chipselect = ARRAY_SIZE(spi_0_cs),
-};
-
-static const struct spi_board_info efikamx_spi_board_info[] = {
-	{
-		.name = "mc13xxx-spi",
-		.max_speed_hz = 30 * 1000 * 1000,
-		.bus_num = 0,
-		.chip_select = 0,
-	}, {
-		.name = "m25p80",
-		.chip_select = 1,
-		.max_speed_hz = 20 * 1000 * 1000,
-		.bus_num = 0,
-	},
-};
-
-static void efikamx_power_init(void)
+static int efikamx_power_init(void)
 {
 	unsigned int val;
 	struct mc13xxx *mc;
@@ -232,7 +70,7 @@ static void efikamx_power_init(void)
 	mc = mc13xxx_get();
 	if (!mc) {
 		printf("could not get mc13892\n");
-		return;
+		return -ENODEV;
 	}
 
 	/* Write needed to Power Gate 2 register */
@@ -338,35 +176,10 @@ static void efikamx_power_init(void)
 	mc13xxx_reg_write(mc, MC13892_REG_POWER_CTL2, val);
 
 	udelay(2500);
-}
 
-static struct esdhc_platform_data efikasb_sd2_data = {
-	.cd_gpio = GPIO_EFIKASB_SDHC2_CD,
-	.wp_gpio = GPIO_EFIKASB_SDHC2_WP,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_GPIO,
-	.devname = "mmc_left",
-};
-
-static struct esdhc_platform_data efikamx_sd1_data = {
-	.cd_gpio = GPIO_EFIKAMX_SDHC1_CD,
-	.wp_gpio = GPIO_EFIKA_SDHC1_WP,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_GPIO,
-};
-
-static struct esdhc_platform_data efikasb_sd1_data = {
-	.cd_gpio = GPIO_EFIKASB_SDHC1_CD,
-	.wp_gpio = GPIO_EFIKA_SDHC1_WP,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_GPIO,
-	.devname = "mmc_back",
-};
-
-struct imxusb_platformdata efikamx_usbh1_pdata = {
-	.flags = MXC_EHCI_MODE_ULPI | MXC_EHCI_INTERFACE_DIFF_UNI,
-	.mode = IMX_USB_MODE_HOST,
-};
+	return 0;
+}
+late_initcall(efikamx_power_init);
 
 static int efikamx_usb_init(void)
 {
@@ -395,18 +208,9 @@ static int efikamx_usb_init(void)
 		mxc_iomux_v3_setup_pad(MX51_PAD_EIM_A26__USBH2_STP);
 	}
 
-	imx51_add_usbh1(&efikamx_usbh1_pdata);
-
-	/*
-	 * At least for the EfikaSB these do not seem to be interesting.
-	 * The external ports are all connected to host1.
-	 *
-	 * imx51_add_usbotg(pdata);
-	 * imx51_add_usbh2(pdate);
-	 */
-
 	return 0;
 }
+console_initcall(efikamx_usb_init);
 
 static struct gpio_led leds[] = {
 	{
@@ -423,42 +227,16 @@ static struct gpio_led leds[] = {
 
 #include "dcd-data.h"
 
-static int efikamx_devices_init(void)
+static int efikamx_late_init(void)
 {
+	enum bootsource bootsource;
 	int i;
 
-	mxc_iomux_v3_setup_multiple_pads(efika_pads, ARRAY_SIZE(efika_pads));
-	if (machine_is_efikasb()) {
-		gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
-		mxc_iomux_v3_setup_multiple_pads(efikasb_pads,
-				ARRAY_SIZE(efikasb_pads));
-	} else {
-		mxc_iomux_v3_setup_multiple_pads(efikamx_pads,
-				ARRAY_SIZE(efikamx_pads));
-	}
-
-	spi_register_board_info(efikamx_spi_board_info,
-			ARRAY_SIZE(efikamx_spi_board_info));
-	imx51_add_spi0(&spi_0_data);
-
-	efikamx_power_init();
-
-	if (machine_is_efikasb())
-		imx51_add_mmc0(&efikasb_sd1_data);
-	else
-		imx51_add_mmc0(&efikamx_sd1_data);
-
-	imx51_add_mmc1(&efikasb_sd2_data);
+	gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
 
 	for (i = 0; i < ARRAY_SIZE(leds); i++)
 		led_gpio_register(&leds[i]);
 
-	imx51_add_i2c1(NULL);
-
-	efikamx_usb_init();
-
-	imx51_add_pata();
-
 	writew(0x0, MX51_WDOG_BASE_ADDR + 0x8);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc_left",
@@ -469,13 +247,7 @@ static int efikamx_devices_init(void)
 	armlinux_set_architecture(2370);
 	armlinux_set_revision(0x5100 | imx_silicon_revision());
 
-	return 0;
-}
-device_initcall(efikamx_devices_init);
-
-static int efikamx_part_init(void)
-{
-	enum bootsource bootsource = bootsource_get();
+	bootsource = bootsource_get();
 
 	switch (bootsource) {
 	case BOOTSOURCE_MMC:
@@ -493,23 +265,4 @@ static int efikamx_part_init(void)
 
 	return 0;
 }
-late_initcall(efikamx_part_init);
-
-static iomux_v3_cfg_t efika_uart_pads[] = {
-	/* UART */
-	MX51_PAD_UART1_RXD__UART1_RXD,
-	MX51_PAD_UART1_TXD__UART1_TXD,
-	MX51_PAD_UART1_RTS__UART1_RTS,
-	MX51_PAD_UART1_CTS__UART1_CTS,
-};
-
-static int efikamx_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(efika_uart_pads,
-			ARRAY_SIZE(efika_uart_pads));
-
-	imx51_add_uart0();
-
-	return 0;
-}
-console_initcall(efikamx_console_init);
+late_initcall(efikamx_late_init);
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index 2ef33b4..8e14466 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx51-genesi-efika-sb"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX51=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
@@ -30,9 +32,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
@@ -52,7 +52,8 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
@@ -66,6 +67,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
@@ -73,16 +75,17 @@ CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
 CONFIG_DISK_PATA_IMX=y
 CONFIG_USB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bfca4c5..b271618 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,4 +1,5 @@
-dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb
+dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
+	imx51-genesi-efika-sb.dtb
 dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-dmo-realq7.dtb \
 	imx6q-sabrelite.dtb \
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
new file mode 100644
index 0000000..dc92b2a
--- /dev/null
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -0,0 +1,328 @@
+/*
+ * Copyright 2012 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
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
+#include "imx51.dtsi"
+
+/ {
+	model = "Genesi Efika MX Smartbook";
+	compatible = "genesi,imx51-sb", "fsl,imx51";
+
+	chosen {
+		linux,stdout-path = "/soc/aips@70000000/serial@73fbc000";
+	};
+
+	memory {
+		reg = <0x90000000 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		mail {
+			label = "mail";
+			gpios = <&gpio1 3 1>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		white {
+			label = "white";
+			gpios = <&gpio2 25 0>;
+			linux,default-trigger = "none";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "Power";
+			gpios = <&gpio2 31 0>;
+			linux,code = <116>; /* KEY_POWER */
+			gpio-key,wakeup;
+		};
+
+		lid {
+			label = "Lid";
+			gpios = <&gpio3 14 0>;
+			linux,input-type = <5>; /* EV_SW */
+			linux,code = <0>; /* SW_LID */
+			debounce-interval = <1>;
+			gpio-key,wakeup;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx51-efikasb-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx51-efikasb-sgtl5000";
+		ssi-controller = <&ssi1>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <1>;
+		mux-ext-port = <3>;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 78770>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+        };
+};
+
+&ssi1 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX51_PAD_EIM_DTACK__GPIO2_31 0x800000c0		/* Power button */
+				MX51_PAD_EIM_A16__GPIO2_10  0x80000000		/* WLAN reset */
+				MX51_PAD_EIM_A22__GPIO2_16 0x80000000		/* WLAN power */
+				MX51_PAD_CSI2_D13__GPIO4_10 0x80000000		/* WWAN power? */
+				MX51_PAD_DI1_PIN12__GPIO3_1 0x80000000		/* WLAN switch */
+				MX51_PAD_EIM_A17__GPIO2_11  0x80000000		/* Bluetooth power */
+				MX51_PAD_EIM_A23__GPIO2_17 0x80000000		/* Audio amp enable, 1 = on */
+				MX51_PAD_GPIO1_6__REF_EN_B 0x80000000		/* PMIC interrupt */
+				MX51_PAD_DI1_PIN11__GPIO3_0 0x80000000		/* Battery low */
+				MX51_PAD_CSI2_PIXCLK__GPIO4_15 0x80000000	/* Power good */
+				MX51_PAD_CSI1_VSYNC__GPIO3_14 0x80000000	/* Lid switch, 0 = closed */
+				MX51_PAD_CSPI1_SS0__GPIO4_24 0x85
+				MX51_PAD_CSPI1_SS1__GPIO4_25 0x85
+				MX51_PAD_CSI1_D8__GPIO3_12 0x80000000		/* LVDS enable, 1 = on */
+				MX51_PAD_GPIO1_2__GPIO1_2 0x80000000		/* Backlight PWM */
+				MX51_PAD_CSI2_D19__GPIO4_12 0x80000000		/* Backlight power, 0 = on */
+				MX51_PAD_DISPB2_SER_DIO__GPIO3_6 0x80000000	/* LVDS reset, 1 = reset */
+				MX51_PAD_DISPB2_SER_DIN__GPIO3_5 0x80000000	/* LVDS reset (1 = reset) */
+				MX51_PAD_DISPB2_SER_CLK__GPIO3_7 0x80000000	/* LVDS power, 1 = on */
+				MX51_PAD_CSI1_D9__GPIO3_13 0x80000000		/* LCD enable (1 = on */
+				MX51_PAD_NANDF_CS0__GPIO3_16 0x80000000		/* Camera power, 0 = on */
+				MX51_PAD_GPIO1_5__GPIO1_5 0x80000000		/* USB hub reset, 0 = reset */
+				MX51_PAD_EIM_D27__GPIO2_9  0x80000000		/* USB phy reset, 0 = reset */
+				MX51_PAD_DISPB2_SER_DIO__GPIO3_6 0x80000000	/* Battery, 0 = inserted */
+				MX51_PAD_GPIO1_3__GPIO1_3 0x80000000		/* Alarm LED, 0 = on */
+				MX51_PAD_EIM_CS0__GPIO2_25 0x80000000		/* Caps LED, 1 = on */
+				MX51_PAD_CSPI1_RDY__GPIO4_26 0x80000000		/* Audio clk enable */
+				MX51_PAD_EIM_A26__GPIO2_20 0x80000000
+				MX51_PAD_USBH1_STP__GPIO1_27 0x80000000
+			>;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_1>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	sgtl5000: codec@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clock-frequency = <12288000>;
+		VDDA-supply = <&vdig_reg>;
+		VDDD-supply = <&vdig_reg>;
+		VDDIO-supply = <&vvideo_reg>;
+	};
+
+	battery: battery@0b {
+		compatible = "sbs,sbs-battery";
+		reg = <0x0b>;
+		sbs,battery-detect-gpios = <&gpio3 6 1>;
+	};
+
+	lvds: mtl017@3a {
+		compatible = "mtl017";
+		reg = <0x3a>;
+		crtcs = <&ipu 1>;
+		edid-i2c = <&i2c2>;
+		interface-pix-fmt = "rgb565";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu_disp1_1>;
+	};
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1_1>;
+	cd-gpios = <&gpio2 27 0>;
+	wp-gpios = <&gpio1 1 0>;
+	status = "okay";
+};
+
+&esdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc2_1>;
+	cd-gpios = <&gpio1 8 0>;
+	wp-gpios = <&gpio1 7 0>;
+	status = "okay";
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 23 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	fsl,spi-num-chipselects = <2>;
+	cs-gpios = <&gpio4 24 0>, <&gpio4 25 0>;
+	status = "okay";
+
+	pmic: mc13892@0 {
+		compatible = "fsl,mc13892";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		spi-cs-high;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <6 0x4>;
+
+		regulators {
+			sw1_reg: sw1 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1375000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3_reg: sw3 {
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vpll_reg: vpll {
+				regulator-min-microvolt = <1050000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdig_reg: vdig {
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1650000>;
+			};
+
+			vsd_reg: vsd {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3150000>;
+			};
+
+			vusb2_reg: vusb2 {
+				regulator-min-microvolt = <2400000>;
+				regulator-max-microvolt = <2775000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vvideo_reg: vvideo {
+				regulator-min-microvolt = <2775000>;
+				regulator-max-microvolt = <2775000>;
+			};
+
+			vaudio_reg: vaudio {
+				regulator-min-microvolt = <2300000>;
+				regulator-max-microvolt = <3000000>;
+			};
+
+			vcam_reg: vcam {
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3000000>;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3150000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2900000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	flash: m25p80 {
+		compatible = "sst,sst25vf032b", "m25p80";
+		spi-max-frequency = <15000000>;
+		reg = <1>;
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_1>;
+	status = "okay";
+};
+
+&pata {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pata_1>;
+	status = "okay";
+};
+
+&usbotg {
+	barebox,phy_type = "utmi_wide";
+	phy_type = "ulpi";
+	status = "okay";
+};
+
+&usbh1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh1_1>;
+	barebox,phy_type = "ulpi";
+	phy_type = "ulpi";
+	status = "okay";
+};
+
+&usbh2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh2_1>;
+	barebox,phy_type = "ulpi";
+	phy_type = "ulpi";
+	status = "okay";
+};
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 6a459b9..f44f836 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -27,6 +27,7 @@
 #include <xfuncs.h>
 #include <clock.h>
 #include <errno.h>
+#include <of.h>
 #include <usb/ehci.h>
 #include <asm/mmu.h>
 
@@ -439,10 +440,13 @@ static inline int min3(int a, int b, int c)
  * boards.
  * See http://lists.infradead.org/pipermail/linux-arm-kernel/2011-January/037341.html
  */
-void ehci_powerup_fixup(struct ehci_priv *ehci)
+static void ehci_powerup_fixup(struct ehci_priv *ehci)
 {
 	void *viewport = (void *)ehci->hcor + 0x30;
 
+	if (!of_machine_is_compatible("genesi,imx51-sb"))
+		return;
+
 	ulpi_write(ULPI_OTG_CHRG_VBUS, ULPI_OTGCTL + ULPI_REG_SET,
 			viewport);
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
