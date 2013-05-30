Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui1Me-0005a2-Sk
 for barebox@lists.infradead.org; Thu, 30 May 2013 11:50:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 13:49:27 +0200
Message-Id: <1369914567-15650-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: i.MX6 sabresd: Switch to devicetree probing
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabresd/board.c | 143 ++++----------------------
 arch/arm/dts/Makefile                         |   3 +-
 arch/arm/dts/imx6q-sabresd.dts                |  43 ++++++++
 arch/arm/dts/imx6qdl-sabresd.dtsi             |  87 ++++++++++++++++
 4 files changed, 150 insertions(+), 126 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-sabresd.dts
 create mode 100644 arch/arm/dts/imx6qdl-sabresd.dtsi

diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index e41dc77..033a253 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -41,92 +41,6 @@
 #define PHY_ID_AR8031	0x004dd074
 #define AR_PHY_ID_MASK	0xffffffff
 
-#define SABRESD_SD2_CD	IMX_GPIO_NR(2, 2)
-#define SABRESD_SD2_WP	IMX_GPIO_NR(2, 3)
-
-#define SABRESD_SD3_CD	IMX_GPIO_NR(2, 0)
-#define SABRESD_SD3_WP	IMX_GPIO_NR(2, 1)
-
-static iomux_v3_cfg_t sabresd_pads[] = {
-	/* UART1 */
-	MX6Q_PAD_CSI0_DAT11__UART1_RXD,
-	MX6Q_PAD_CSI0_DAT10__UART1_TXD,
-
-	/* Ethernet */
-	MX6Q_PAD_ENET_MDC__ENET_MDC,
-	MX6Q_PAD_ENET_MDIO__ENET_MDIO,
-	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
-
-	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
-	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
-	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
-	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
-	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
-	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
-
-	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
-	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
-	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
-	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
-	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
-	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
-
-	MX6Q_PAD_ENET_CRS_DV__GPIO_1_25,	/* AR8031 PHY Reset */
-	MX6Q_PAD_GPIO_16__ENET_ANATOP_ETHERNET_REF_OUT,
-
-	/* SD2 */
-	MX6Q_PAD_SD2_CLK__USDHC2_CLK,
-	MX6Q_PAD_SD2_CMD__USDHC2_CMD,
-	MX6Q_PAD_SD2_DAT0__USDHC2_DAT0,
-	MX6Q_PAD_SD2_DAT1__USDHC2_DAT1,
-	MX6Q_PAD_SD2_DAT2__USDHC2_DAT2,
-	MX6Q_PAD_SD2_DAT3__USDHC2_DAT3,
-	MX6Q_PAD_NANDF_D4__USDHC2_DAT4,
-	MX6Q_PAD_NANDF_D5__USDHC2_DAT5,
-	MX6Q_PAD_NANDF_D6__USDHC2_DAT6,
-	MX6Q_PAD_NANDF_D7__USDHC2_DAT7,
-	MX6Q_PAD_NANDF_D2__GPIO_2_2,	/* CD */
-	MX6Q_PAD_NANDF_D3__GPIO_2_3,	/* WP */
-
-	/* SD3 */
-	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
-	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
-	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
-	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
-	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
-	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
-	MX6Q_PAD_SD3_DAT4__USDHC3_DAT4,
-	MX6Q_PAD_SD3_DAT5__USDHC3_DAT5,
-	MX6Q_PAD_SD3_DAT6__USDHC3_DAT6,
-	MX6Q_PAD_SD3_DAT7__USDHC3_DAT7,
-	MX6Q_PAD_NANDF_D0__GPIO_2_0,	/* CD */
-	MX6Q_PAD_NANDF_D1__GPIO_2_1,	/* WP */
-
-	/* SD4 */
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
-
-	/* I2C0 */
-	MX6Q_PAD_CSI0_DAT8__I2C1_SDA,
-	MX6Q_PAD_CSI0_DAT9__I2C1_SCL,
-
-	/* I2C1 */
-	MX6Q_PAD_KEY_COL3__I2C2_SCL,
-	MX6Q_PAD_KEY_ROW3__I2C2_SDA,
-
-	/* I2C2 */
-	MX6Q_PAD_GPIO_3__I2C3_SCL,
-	MX6Q_PAD_GPIO_6__I2C3_SDA,
-};
-
 static int sabresd_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
@@ -158,11 +72,6 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RGMII,
-	.phy_addr = 1,
-};
-
 static void sabresd_phy_reset(void)
 {
 	/* Reset AR8031 PHY */
@@ -191,37 +100,8 @@ static inline int imx6_iim_register_fec_ethaddr(void)
 	return 0;
 }
 
-static struct esdhc_platform_data sabresd_sd2_data = {
-	.cd_gpio = SABRESD_SD2_CD,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_gpio = SABRESD_SD2_WP,
-	.wp_type = ESDHC_WP_GPIO,
-};
-
-static struct esdhc_platform_data sabresd_sd3_data = {
-	.cd_gpio = SABRESD_SD3_CD,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_gpio = SABRESD_SD3_WP,
-	.wp_type = ESDHC_WP_GPIO,
-};
-
-static struct esdhc_platform_data sabresd_sd4_data = {
-	.cd_type = ESDHC_CD_PERMANENT,
-	.wp_type = ESDHC_WP_CONTROLLER,
-};
-
 static int sabresd_devices_init(void)
 {
-	imx6_add_mmc3(&sabresd_sd4_data);
-	imx6_add_mmc1(&sabresd_sd2_data);
-	imx6_add_mmc2(&sabresd_sd3_data);
-
-	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK, ar8031_phy_fixup);
-
-	sabresd_phy_reset();
-	imx6_iim_register_fec_ethaddr();
-	imx6_add_fec(&fec_info);
-
 	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3980);
 
@@ -231,14 +111,27 @@ static int sabresd_devices_init(void)
 }
 device_initcall(sabresd_devices_init);
 
-static int sabresd_console_init(void)
+static int sabresd_coredevices_init(void)
 {
-	mxc_iomux_v3_setup_multiple_pads(sabresd_pads, ARRAY_SIZE(sabresd_pads));
+	sabresd_phy_reset();
 
-	imx6_init_lowlevel();
+	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
+			ar8031_phy_fixup);
 
-	imx6_add_uart0();
+	imx6_iim_register_fec_ethaddr();
+
+	return 0;
+}
+/*
+ * Do this before the fec initializes but after our
+ * gpios are available.
+ */
+fs_initcall(sabresd_coredevices_init);
+
+static int sabresd_core_init(void)
+{
+	imx6_init_lowlevel();
 
 	return 0;
 }
-console_initcall(sabresd_console_init);
+core_initcall(sabresd_core_init);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 39f7afb..fa6a330 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,5 +1,6 @@
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb
-dtb-$(CONFIG_ARCH_IMX6) += imx6q-sabrelite.dtb
+dtb-$(CONFIG_ARCH_IMX6) += imx6q-sabrelite.dtb \
+	imx6q-sabresd.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
new file mode 100644
index 0000000..1b64ad1
--- /dev/null
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -0,0 +1,43 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
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
+
+#include "imx6q.dtsi"
+#include "imx6qdl-sabresd.dtsi"
+
+/ {
+	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
+	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = "/soc/aips-bus@02000000/spba-bus@02000000/serial@02020000";
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6Q_PAD_GPIO_4__GPIO1_IO04   0x80000000
+				MX6Q_PAD_GPIO_5__GPIO1_IO05   0x80000000
+				MX6Q_PAD_NANDF_D0__GPIO2_IO00 0x80000000
+				MX6Q_PAD_NANDF_D1__GPIO2_IO01 0x80000000
+				MX6Q_PAD_NANDF_D2__GPIO2_IO02 0x80000000
+				MX6Q_PAD_NANDF_D3__GPIO2_IO03 0x80000000
+			>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
new file mode 100644
index 0000000..e21f6a8
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -0,0 +1,87 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
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
+/ {
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
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
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		volume-up {
+			label = "Volume Up";
+			gpios = <&gpio1 4 0>;
+			linux,code = <115>; /* KEY_VOLUMEUP */
+		};
+
+		volume-down {
+			label = "Volume Down";
+			gpios = <&gpio1 5 0>;
+			linux,code = <114>; /* KEY_VOLUMEDOWN */
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_1>;
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg_2>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2_1>;
+	cd-gpios = <&gpio2 2 0>;
+	wp-gpios = <&gpio2 3 0>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_1>;
+	cd-gpios = <&gpio2 0 0>;
+	wp-gpios = <&gpio2 1 0>;
+	status = "okay";
+};
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
