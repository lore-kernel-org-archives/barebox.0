Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui1Mi-0005aK-R2
 for barebox@lists.infradead.org; Thu, 30 May 2013 11:50:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 13:49:26 +0200
Message-Id: <1369914567-15650-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
References: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM: i.MX6 sabrelite: switch to devicetree probing
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c    | 156 +++---------------
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |  28 +++-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6q-sabrelite.dts                   | 174 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   1 +
 5 files changed, 220 insertions(+), 140 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-sabrelite.dts

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 2afaae3..ff27b05 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -29,6 +29,7 @@
 #include <mach/generic.h>
 #include <sizes.h>
 #include <net.h>
+#include <linux/micrel_phy.h>
 #include <mach/imx6.h>
 #include <mach/devices-imx6.h>
 #include <mach/iomux-mx6.h>
@@ -37,73 +38,8 @@
 #include <mach/spi.h>
 #include <mach/usb.h>
 
-#define SABRELITE_SD3_WP	IMX_GPIO_NR(7, 1)
-#define SABRELITE_SD3_CD	IMX_GPIO_NR(7, 0)
-
-#define SABRELITE_SD4_CD	IMX_GPIO_NR(2, 6)
-
-static iomux_v3_cfg_t sabrelite_pads[] = {
-	/* UART1 */
-	MX6Q_PAD_SD3_DAT6__UART1_RXD,
-	MX6Q_PAD_SD3_DAT7__UART1_TXD,
-	MX6Q_PAD_EIM_D26__UART2_TXD,
-	MX6Q_PAD_EIM_D27__UART2_RXD,
-
-	/* SD3 (bottom) */
-	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
-	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
-	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
-	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
-	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
-	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
-	MX6Q_PAD_SD3_DAT4__GPIO_7_1, /* WP */
-	MX6Q_PAD_SD3_DAT5__GPIO_7_0, /* CD */
-
-	/* SD4 (top) */
-	MX6Q_PAD_SD4_CLK__USDHC4_CLK,
-	MX6Q_PAD_SD4_CMD__USDHC4_CMD,
-	MX6Q_PAD_SD4_DAT0__USDHC4_DAT0,
-	MX6Q_PAD_SD4_DAT1__USDHC4_DAT1,
-	MX6Q_PAD_SD4_DAT2__USDHC4_DAT2,
-	MX6Q_PAD_SD4_DAT3__USDHC4_DAT3,
-	MX6Q_PAD_NANDF_D6__GPIO_2_6, /* CD */
-
-	/* ECSPI */
-	MX6Q_PAD_EIM_D16__ECSPI1_SCLK,
-	MX6Q_PAD_EIM_D17__ECSPI1_MISO,
-	MX6Q_PAD_EIM_D18__ECSPI1_MOSI,
-	MX6Q_PAD_EIM_D19__GPIO_3_19,	/* CS1 */
-
-	/* I2C0 */
-	MX6Q_PAD_EIM_D21__I2C1_SCL,
-	MX6Q_PAD_EIM_D28__I2C1_SDA,
-
-	/* I2C1 */
-	MX6Q_PAD_KEY_COL3__I2C2_SCL,
-	MX6Q_PAD_KEY_ROW3__I2C2_SDA,
-
-	/* I2C2 */
-	MX6Q_PAD_GPIO_5__I2C3_SCL,
-	MX6Q_PAD_GPIO_16__I2C3_SDA,
-
-	/* USB */
-	MX6Q_PAD_GPIO_17__GPIO_7_12,
-	MX6Q_PAD_EIM_D22__GPIO_3_22,
-	MX6Q_PAD_EIM_D30__USBOH3_USBH1_OC,
-};
-
-static iomux_v3_cfg_t sabrelite_enet_pads[] = {
+static iomux_v3_cfg_t sabrelite_enet_gpio_pads[] = {
 	/* Ethernet */
-	MX6Q_PAD_ENET_MDC__ENET_MDC,
-	MX6Q_PAD_ENET_MDIO__ENET_MDIO,
-	MX6Q_PAD_ENET_REF_CLK__GPIO_1_23,	// LED mode
-	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
-	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
-	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
-	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
-	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
-	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
-	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
 	MX6Q_PAD_EIM_D23__GPIO_3_23,		/* RGMII_nRST */
 	MX6Q_PAD_RGMII_RXC__GPIO_6_30,		/* PHYAD */
 	MX6Q_PAD_RGMII_RD0__GPIO_6_25,		/* MODE0 */
@@ -113,16 +49,6 @@ static iomux_v3_cfg_t sabrelite_enet_pads[] = {
 	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
 };
 
-static iomux_v3_cfg_t sabrelite_enet2_pads[] = {
-	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
-	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
-	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
-	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
-	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
-	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
-	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
-};
-
 static int sabrelite_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
@@ -131,7 +57,7 @@ static int sabrelite_mem_init(void)
 }
 mem_initcall(sabrelite_mem_init);
 
-static void mx6_rgmii_rework(struct phy_device *dev)
+static int ksz9021rn_phy_fixup(struct phy_device *dev)
 {
 	phy_write(dev, 0x09, 0x0f00);
 
@@ -144,17 +70,14 @@ static void mx6_rgmii_rework(struct phy_device *dev)
 	phy_write(dev, 0x0b, 0x8104);
 	phy_write(dev, 0x0c, 0xf0f0);
 	phy_write(dev, 0x0b, 0x104);
-}
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RGMII,
-	.phy_init = mx6_rgmii_rework,
-	.phy_addr = 6,
-};
+	return 0;
+}
 
 static int sabrelite_ksz9021rn_setup(void)
 {
-	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_pads, ARRAY_SIZE(sabrelite_enet_pads));
+	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_gpio_pads,
+			ARRAY_SIZE(sabrelite_enet_gpio_pads));
 
 	gpio_direction_output(87, 0);  /* GPIO 3-23 */
 
@@ -175,10 +98,13 @@ static int sabrelite_ksz9021rn_setup(void)
 	mdelay(10);
 	gpio_set_value(87, 1);
 
-	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet2_pads, ARRAY_SIZE(sabrelite_enet2_pads));
-
 	return 0;
 }
+/*
+ * Do this before the fec initializes but after our
+ * gpios are available.
+ */
+fs_initcall(sabrelite_ksz9021rn_setup);
 
 static inline int imx6_iim_register_fec_ethaddr(void)
 {
@@ -200,35 +126,6 @@ static inline int imx6_iim_register_fec_ethaddr(void)
 	return 0;
 }
 
-static int sabrelite_spi_cs[] = {IMX_GPIO_NR(3, 19)};
-
-static struct spi_imx_master sabrelite_spi_0_data = {
-	.chipselect = sabrelite_spi_cs,
-	.num_chipselect = ARRAY_SIZE(sabrelite_spi_cs),
-};
-
-static const struct spi_board_info sabrelite_spi_board_info[] = {
-	{
-		.name = "m25p80",
-		.max_speed_hz = 40000000,
-		.bus_num = 0,
-		.chip_select = 0,
-	}
-};
-
-static struct esdhc_platform_data sabrelite_sd3_data = {
-	.cd_gpio = SABRELITE_SD3_CD,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_gpio = SABRELITE_SD3_WP,
-	.wp_type = ESDHC_WP_GPIO,
-};
-
-static struct esdhc_platform_data sabrelite_sd4_data = {
-	.cd_gpio = SABRELITE_SD4_CD,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_NONE,
-};
-
 static void sabrelite_ehci_init(void)
 {
 	imx6_usb_phy2_disable_oc();
@@ -244,19 +141,8 @@ static void sabrelite_ehci_init(void)
 
 static int sabrelite_devices_init(void)
 {
-	imx6_add_mmc2(&sabrelite_sd3_data);
-	imx6_add_mmc3(&sabrelite_sd4_data);
-
-	sabrelite_ksz9021rn_setup();
-	imx6_iim_register_fec_ethaddr();
-	imx6_add_fec(&fec_info);
-
 	sabrelite_ehci_init();
 
-	spi_register_board_info(sabrelite_spi_board_info,
-			ARRAY_SIZE(sabrelite_spi_board_info));
-	imx6_add_spi0(&sabrelite_spi_0_data);
-
 	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3769);
 
@@ -265,17 +151,23 @@ static int sabrelite_devices_init(void)
 
 	return 0;
 }
-
 device_initcall(sabrelite_devices_init);
 
-static int sabrelite_console_init(void)
+static int sabrelite_coredevices_init(void)
 {
-	mxc_iomux_v3_setup_multiple_pads(sabrelite_pads, ARRAY_SIZE(sabrelite_pads));
+	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
+					   ksz9021rn_phy_fixup);
 
-	imx6_init_lowlevel();
+	imx6_iim_register_fec_ethaddr();
+
+	return 0;
+}
+coredevice_initcall(sabrelite_coredevices_init);
 
-	imx6_add_uart1();
+static int sabrelite_core_init(void)
+{
+	imx6_init_lowlevel();
 
 	return 0;
 }
-console_initcall(sabrelite_console_init);
+core_initcall(sabrelite_core_init);
diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
index be7919b..d4d6cf2 100644
--- a/arch/arm/configs/freescale-mx6-sabrelite_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
@@ -1,9 +1,10 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx6q-sabrelite"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX6=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -17,8 +18,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx6-sabrelite/env"
+CONFIG_RESET_SOURCE=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_MSLEEP=y
@@ -28,8 +31,9 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_BASENAME=y
-CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
@@ -43,29 +47,37 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_BOOTM_AIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_RESOLV=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
+CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_SST25L=y
-CONFIG_MTD=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1f9dc1c..39f7afb 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,4 +1,5 @@
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb
+dtb-$(CONFIG_ARCH_IMX6) += imx6q-sabrelite.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
new file mode 100644
index 0000000..483a39d
--- /dev/null
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -0,0 +1,174 @@
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
+
+/dts-v1/;
+#include "imx6q.dtsi"
+
+/ {
+	model = "Freescale i.MX6 Quad SABRE Lite Board";
+	compatible = "fsl,imx6q-sabrelite", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
+	};
+
+	memory {
+		reg = <0x10000000 0x40000000>;
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
+			gpio = <&gpio3 22 0>;
+			enable-active-high;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx6q-sabrelite-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx6q-sabrelite-sgtl5000";
+		ssi-controller = <&ssi1>;
+		audio-codec = <&codec>;
+		audio-routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <1>;
+		mux-ext-port = <4>;
+	};
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio3 19 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		compatible = "sst,sst25vf016b", "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+	};
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
+				MX6Q_PAD_NANDF_D6__GPIO2_IO06 0x80000000
+				MX6Q_PAD_NANDF_D7__GPIO2_IO07 0x80000000
+				MX6Q_PAD_EIM_D19__GPIO3_IO19  0x80000000
+				MX6Q_PAD_EIM_D22__GPIO3_IO22  0x80000000
+				MX6Q_PAD_EIM_D23__GPIO3_IO23  0x80000000
+				MX6Q_PAD_SD3_DAT5__GPIO7_IO00 0x80000000
+				MX6Q_PAD_SD3_DAT4__GPIO7_IO01 0x1f0b0
+				MX6Q_PAD_GPIO_0__CCM_CLKO1    0x80000000
+			>;
+		};
+	};
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
+&usbh1 {
+	status = "okay";
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
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	cd-gpios = <&gpio7 0 0>;
+	wp-gpios = <&gpio7 1 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4_2>;
+	cd-gpios = <&gpio2 6 0>;
+	wp-gpios = <&gpio2 7 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&audmux {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_1>;
+};
+
+&uart2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_1>;
+};
+
+&i2c1 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_1>;
+
+	codec: sgtl5000@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clocks = <&clks 169>;
+		VDDA-supply = <&reg_2p5v>;
+		VDDIO-supply = <&reg_3p3v>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 359b5cd..9805af8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -508,6 +508,7 @@ config MACH_MX6Q_ARM2
 	bool "Freescale i.MX6q Armadillo2"
 
 config MACH_SABRELITE
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Freescale i.MX6 Sabre Lite"
 
 config MACH_SABRESD
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
