Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp9.mail.ru ([94.100.176.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWjfV-0008In-CK
 for barebox@lists.infradead.org; Sun, 06 Apr 2014 09:47:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  6 Apr 2014 13:46:39 +0400
Message-Id: <1396777600-647-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1396777600-647-1-git-send-email-shc_work@mail.ru>
References: <1396777600-647-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH RFC 1/2] ARM: dts: Add devicetree files for Phytec
 PCM-038/PCM-970
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/Makefile                        |   3 +-
 arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts |  64 +++++
 arch/arm/dts/imx27-phytec-phycore-rdk.dts    | 289 +++++++++++++++++++++++
 arch/arm/dts/imx27-phytec-phycore-som.dtsi   | 333 +++++++++++++++++++++++++++
 4 files changed, 688 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-rdk.dts
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-som.dtsi

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b45c174..ca1e5b8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -3,7 +3,8 @@ dtb-$(CONFIG_ARCH_AM33XX) += \
 	am335x-boneblack.dtb \
 	am335x-phytec-phycore.dtb
 dtb-$(CONFIG_ARCH_IMX25) += imx25-karo-tx25.dtb
-dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk-bb.dtb
+dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk-bb.dtb \
+	imx27-phytec-phycore-rdk-bb.dtb
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
 dtb-$(CONFIG_ARCH_IMX53) += imx53-mba53.dtb \
diff --git a/arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts
new file mode 100644
index 0000000..63598a9
--- /dev/null
+++ b/arch/arm/dts/imx27-phytec-phycore-rdk-bb.dts
@@ -0,0 +1,64 @@
+/*
+ * Barebox specific DT overlay for Phytec PCM-970 RDK
+ */
+
+#include "imx27-phytec-phycore-rdk.dts"
+
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nor, "partname:env";
+		};
+	};
+};
+
+&iim {
+	barebox,provide-mac-address = <&fec 1 0>;
+};
+
+&nfc {
+	partition@0 {
+		label = "boot";
+		reg = <0x00000000 0x00080000>;
+	};
+
+	partition@1 {
+		label = "env";
+		reg = <0x00080000 0x00020000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x000a0000 0x00400000>;
+	};
+
+	partition@3 {
+		label = "root";
+		reg = <0x004a0000 0>;
+	};
+};
+
+&nor {
+	partition@0 {
+		label = "boot";
+		reg = <0x00000000 0x00080000>;
+	};
+
+	partition@1 {
+		label = "env";
+		reg = <0x00080000 0x00020000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x000a0000 0x00400000>;
+	};
+
+	partition@3 {
+		label = "root";
+		reg = <0x004a0000 0>;
+	};
+};
diff --git a/arch/arm/dts/imx27-phytec-phycore-rdk.dts b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
new file mode 100644
index 0000000..4a43bfd
--- /dev/null
+++ b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
@@ -0,0 +1,289 @@
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx27-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec pcm970";
+	compatible = "phytec,imx27-pcm970", "phytec,imx27-pcm038", "fsl,imx27";
+
+	display0: LQ035Q7 {
+		model = "Sharp-LQ035Q7";
+		native-mode = <&timing0>;
+		bits-per-pixel = <16>;
+		fsl,pcr = <0xf00080c0>;
+
+		display-timings {
+			timing0: 240x320 {
+				clock-frequency = <5500000>;
+				hactive = <240>;
+				vactive = <320>;
+				hback-porch = <5>;
+				hsync-len = <7>;
+				hfront-porch = <16>;
+				vback-porch = <7>;
+				vsync-len = <1>;
+				vfront-porch = <9>;
+			};
+		};
+	};
+};
+
+&cspi1 {
+	pinctrl-0 = <&pinctrl_cspi1>, <&pinctrl_cspi1cs1>;
+	fsl,spi-num-chipselects = <2>;
+	cs-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>,
+		   <&gpio4 27 GPIO_ACTIVE_LOW>;
+};
+
+&fb {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_imxfb1>;
+	display = <&display0>;
+	lcd-supply = <&reg_5v0>;
+	fsl,dmacr = <0x00020010>;
+	fsl,lscr1 = <0x00120300>;
+	fsl,lpccr = <0x00a903ff>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	camgpio: pca9536@41 {
+		compatible = "nxp,pca9536";
+		reg = <0x41>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+&iomuxc {
+	imx27_phycore_rdk {
+		pinctrl_cspi1cs1: cspi1cs1grp {
+			fsl,pins = <
+				MX27_PAD_CSPI1_SS1__GPIO4_27 0x0
+			>;
+		};
+
+		pinctrl_imxfb1: imxfbgrp {
+			fsl,pins = <
+				MX27_PAD_LD0__LD0 0x0
+				MX27_PAD_LD1__LD1 0x0
+				MX27_PAD_LD2__LD2 0x0
+				MX27_PAD_LD3__LD3 0x0
+				MX27_PAD_LD4__LD4 0x0
+				MX27_PAD_LD5__LD5 0x0
+				MX27_PAD_LD6__LD6 0x0
+				MX27_PAD_LD7__LD7 0x0
+				MX27_PAD_LD8__LD8 0x0
+				MX27_PAD_LD9__LD9 0x0
+				MX27_PAD_LD10__LD10 0x0
+				MX27_PAD_LD11__LD11 0x0
+				MX27_PAD_LD12__LD12 0x0
+				MX27_PAD_LD13__LD13 0x0
+				MX27_PAD_LD14__LD14 0x0
+				MX27_PAD_LD15__LD15 0x0
+				MX27_PAD_LD16__LD16 0x0
+				MX27_PAD_LD17__LD17 0x0
+				MX27_PAD_CLS__CLS 0x0
+				MX27_PAD_CONTRAST__CONTRAST 0x0
+				MX27_PAD_LSCLK__LSCLK 0x0
+				MX27_PAD_OE_ACD__OE_ACD 0x0
+				MX27_PAD_PS__PS 0x0
+				MX27_PAD_REV__REV 0x0
+				MX27_PAD_SPL_SPR__SPL_SPR 0x0
+				MX27_PAD_HSYNC__HSYNC 0x0
+				MX27_PAD_VSYNC__VSYNC 0x0
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			/* Add pullup to DATA line */
+			fsl,pins = <
+				MX27_PAD_I2C_DATA__I2C_DATA	0x1
+				MX27_PAD_I2C_CLK__I2C_CLK	0x0
+			>;
+		};
+
+		pinctrl_owire1: owire1grp {
+			fsl,pins = <
+				MX27_PAD_RTCK__OWIRE 0x0
+			>;
+		};
+
+		pinctrl_sdhc2: sdhc2grp {
+			fsl,pins = <
+				MX27_PAD_SD2_CLK__SD2_CLK 0x0
+				MX27_PAD_SD2_CMD__SD2_CMD 0x0
+				MX27_PAD_SD2_D0__SD2_D0 0x0
+				MX27_PAD_SD2_D1__SD2_D1 0x0
+				MX27_PAD_SD2_D2__SD2_D2 0x0
+				MX27_PAD_SD2_D3__SD2_D3 0x0
+				MX27_PAD_SSI3_FS__GPIO3_28	0x0 /* WP */
+				MX27_PAD_SSI3_RXDAT__GPIO3_29	0x0 /* CD */
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX27_PAD_UART1_TXD__UART1_TXD 0x0
+				MX27_PAD_UART1_RXD__UART1_RXD 0x0
+				MX27_PAD_UART1_CTS__UART1_CTS 0x0
+				MX27_PAD_UART1_RTS__UART1_RTS 0x0
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX27_PAD_UART2_TXD__UART2_TXD 0x0
+				MX27_PAD_UART2_RXD__UART2_RXD 0x0
+				MX27_PAD_UART2_CTS__UART2_CTS 0x0
+				MX27_PAD_UART2_RTS__UART2_RTS 0x0
+			>;
+		};
+
+		pinctrl_usbh2: usbh2grp {
+			fsl,pins = <
+				MX27_PAD_USBH2_CLK__USBH2_CLK 0x0
+				MX27_PAD_USBH2_DIR__USBH2_DIR 0x0
+				MX27_PAD_USBH2_NXT__USBH2_NXT 0x0
+				MX27_PAD_USBH2_STP__USBH2_STP 0x0
+				MX27_PAD_CSPI2_SCLK__USBH2_DATA0 0x0
+				MX27_PAD_CSPI2_MOSI__USBH2_DATA1 0x0
+				MX27_PAD_CSPI2_MISO__USBH2_DATA2 0x0
+				MX27_PAD_CSPI2_SS1__USBH2_DATA3 0x0
+				MX27_PAD_CSPI2_SS2__USBH2_DATA4 0x0
+				MX27_PAD_CSPI1_SS2__USBH2_DATA5 0x0
+				MX27_PAD_CSPI2_SS0__USBH2_DATA6 0x0
+				MX27_PAD_USBH2_DATA7__USBH2_DATA7 0x0
+			>;
+		};
+
+		pinctrl_weim: weimgrp {
+			fsl,pins = <
+				MX27_PAD_CS4_B__CS4_B		0x0 /* CS4 */
+				MX27_PAD_SD1_D1__GPIO5_19	0x0 /* CAN IRQ */
+			>;
+		};
+	};
+};
+
+&owire {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_owire1>;
+	status = "okay";
+};
+
+&pmicleds {
+	ledr1: led@3 {
+		reg = <3>;
+		label = "system:red1:user";
+	};
+
+	ledg1: led@4 {
+		reg = <4>;
+		label = "system:green1:user";
+	};
+
+	ledb1: led@5 {
+		reg = <5>;
+		label = "system:blue1:user";
+	};
+
+	ledr2: led@6 {
+		reg = <6>;
+		label = "system:red2:user";
+	};
+
+	ledg2: led@7 {
+		reg = <7>;
+		label = "system:green2:user";
+	};
+
+	ledb2: led@8 {
+		reg = <8>;
+		label = "system:blue2:user";
+	};
+
+	ledr3: led@9 {
+		reg = <9>;
+		label = "system:red3:nand";
+		linux,default-trigger = "nand-disk";
+	};
+
+	ledg3: led@10 {
+		reg = <10>;
+		label = "system:green3:live";
+		linux,default-trigger = "heartbeat";
+	};
+
+	ledb3: led@11 {
+		reg = <11>;
+		label = "system:blue3:cpu";
+		linux,default-trigger = "cpu0";
+	};
+};
+
+&sdhci2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sdhc2>;
+	bus-width = <4>;
+	cd-gpios = <&gpio3 29 GPIO_ACTIVE_HIGH>;
+	wp-gpios = <&gpio3 28 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&vmmc1_reg>;
+	status = "okay";
+};
+
+&uart1 {
+	fsl,uart-has-rtscts;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	fsl,uart-has-rtscts;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usbh2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh2>;
+	dr_mode = "host";
+	phy_type = "ulpi";
+	vbus-supply = <&reg_5v0>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usbphy2 {
+	vcc-supply = <&reg_5v0>;
+};
+
+&weim {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_weim>;
+
+	can@d4000000 {
+		compatible = "nxp,sja1000";
+		reg = <4 0x00000000 0x00000100>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <19 IRQ_TYPE_EDGE_FALLING>;
+		nxp,external-clock-frequency = <16000000>;
+		nxp,tx-output-config = <0x16>;
+		nxp,no-comparator-bypass;
+		fsl,weim-cs-timing = <0x0000dcf6 0x444a0301 0x44443302>;
+	};
+};
diff --git a/arch/arm/dts/imx27-phytec-phycore-som.dtsi b/arch/arm/dts/imx27-phytec-phycore-som.dtsi
new file mode 100644
index 0000000..8e10aef
--- /dev/null
+++ b/arch/arm/dts/imx27-phytec-phycore-som.dtsi
@@ -0,0 +1,333 @@
+/*
+ * Copyright 2012 Sascha Hauer, Pengutronix
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
+#include "imx27.dtsi"
+
+/ {
+	model = "Phytec pcm038";
+	compatible = "phytec,imx27-pcm038", "fsl,imx27";
+
+	memory {
+		reg = <0xa0000000 0x08000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_3v3: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "3V3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+		};
+
+		reg_5v0: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "5V0";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+		};
+	};
+};
+
+&audmux {
+	status = "okay";
+
+	/* SSI0 <=> PINS_4 (MC13783 Audio) */
+	ssi0 {
+		fsl,audmux-port = <0>;
+		fsl,port-config = <0xcb205000>;
+	};
+
+	pins4 {
+		fsl,audmux-port = <2>;
+		fsl,port-config = <0x00001000>;
+	};
+};
+
+&cspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_cspi1>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	pmic: mc13783@0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "fsl,mc13783";
+		reg = <0>;
+		spi-cs-high;
+		spi-max-frequency = <20000000>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+		fsl,mc13xxx-uses-adc;
+		fsl,mc13xxx-uses-rtc;
+
+		pmicleds: leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			led-control = <0x001 0x000 0x000 0x000 0x000 0x000>;
+		};
+
+		regulators {
+			/* SW1A and SW1B joined operation */
+			sw1_reg: sw1a {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1520000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			/* SW2A and SW2B joined operation */
+			sw2_reg: sw2a {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			sw3_reg: sw3 {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5000000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vaudio_reg: vaudio {
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			violo_reg: violo {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			viohi_reg: viohi {
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vgen_reg: vgen {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vcam_reg: vcam {
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+			};
+
+			vrf1_reg: vrf1 {
+				regulator-min-microvolt = <2775000>;
+				regulator-max-microvolt = <2775000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vrf2_reg: vrf2 {
+				regulator-min-microvolt = <2775000>;
+				regulator-max-microvolt = <2775000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			vmmc1_reg: vmmc1 {
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3000000>;
+			};
+
+			gpo1_reg: gpo1 { };
+
+			pwgt1spi_reg: pwgt1spi {
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&fec {
+	phy-mode = "mii";
+	phy-reset-gpios = <&gpio3 30 GPIO_ACTIVE_HIGH>;
+	phy-supply = <&reg_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	at24@52 {
+		compatible = "at,24c32";
+		pagesize = <32>;
+		reg = <0x52>;
+	};
+
+	pcf8563@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+
+	lm75@4a {
+		compatible = "national,lm75";
+		reg = <0x4a>;
+	};
+};
+
+&iomuxc {
+	imx27_phycore_som {
+		pinctrl_cspi1: cspi1grp {
+			fsl,pins = <
+				MX27_PAD_CSPI1_MISO__CSPI1_MISO 0x0
+				MX27_PAD_CSPI1_MOSI__CSPI1_MOSI 0x0
+				MX27_PAD_CSPI1_SCLK__CSPI1_SCLK 0x0
+				MX27_PAD_CSPI1_SS0__GPIO4_28	0x0 /* SPI1 CS0 */
+				MX27_PAD_USB_PWR__GPIO2_23	0x0 /* PMIC IRQ */
+			>;
+		};
+
+		pinctrl_fec1: fec1grp {
+			fsl,pins = <
+				MX27_PAD_SD3_CMD__FEC_TXD0 0x0
+				MX27_PAD_SD3_CLK__FEC_TXD1 0x0
+				MX27_PAD_ATA_DATA0__FEC_TXD2 0x0
+				MX27_PAD_ATA_DATA1__FEC_TXD3 0x0
+				MX27_PAD_ATA_DATA2__FEC_RX_ER 0x0
+				MX27_PAD_ATA_DATA3__FEC_RXD1 0x0
+				MX27_PAD_ATA_DATA4__FEC_RXD2 0x0
+				MX27_PAD_ATA_DATA5__FEC_RXD3 0x0
+				MX27_PAD_ATA_DATA6__FEC_MDIO 0x0
+				MX27_PAD_ATA_DATA7__FEC_MDC 0x0
+				MX27_PAD_ATA_DATA8__FEC_CRS 0x0
+				MX27_PAD_ATA_DATA9__FEC_TX_CLK 0x0
+				MX27_PAD_ATA_DATA10__FEC_RXD0 0x0
+				MX27_PAD_ATA_DATA11__FEC_RX_DV 0x0
+				MX27_PAD_ATA_DATA12__FEC_RX_CLK 0x0
+				MX27_PAD_ATA_DATA13__FEC_COL 0x0
+				MX27_PAD_ATA_DATA14__FEC_TX_ER 0x0
+				MX27_PAD_ATA_DATA15__FEC_TX_EN 0x0
+				MX27_PAD_SSI3_TXDAT__GPIO3_30	0x0 /* FEC RST */
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX27_PAD_I2C2_SDA__I2C2_SDA 0x0
+				MX27_PAD_I2C2_SCL__I2C2_SCL 0x0
+			>;
+		};
+
+		pinctrl_nfc: nfcgrp {
+			fsl,pins = <
+				MX27_PAD_NFRB__NFRB 0x0
+				MX27_PAD_NFCLE__NFCLE 0x0
+				MX27_PAD_NFWP_B__NFWP_B 0x0
+				MX27_PAD_NFCE_B__NFCE_B 0x0
+				MX27_PAD_NFALE__NFALE 0x0
+				MX27_PAD_NFRE_B__NFRE_B 0x0
+				MX27_PAD_NFWE_B__NFWE_B 0x0
+			>;
+		};
+
+		pinctrl_ssi1: ssi1grp {
+			fsl,pins = <
+				MX27_PAD_SSI1_FS__SSI1_FS 0x0
+				MX27_PAD_SSI1_RXDAT__SSI1_RXDAT 0x0
+				MX27_PAD_SSI1_TXDAT__SSI1_TXDAT 0x0
+				MX27_PAD_SSI1_CLK__SSI1_CLK 0x0
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX27_PAD_USBOTG_CLK__USBOTG_CLK 0x0
+				MX27_PAD_USBOTG_DIR__USBOTG_DIR 0x0
+				MX27_PAD_USBOTG_NXT__USBOTG_NXT 0x0
+				MX27_PAD_USBOTG_STP__USBOTG_STP 0x0
+				MX27_PAD_USBOTG_DATA0__USBOTG_DATA0 0x0
+				MX27_PAD_USBOTG_DATA1__USBOTG_DATA1 0x0
+				MX27_PAD_USBOTG_DATA2__USBOTG_DATA2 0x0
+				MX27_PAD_USBOTG_DATA3__USBOTG_DATA3 0x0
+				MX27_PAD_USBOTG_DATA4__USBOTG_DATA4 0x0
+				MX27_PAD_USBOTG_DATA5__USBOTG_DATA5 0x0
+				MX27_PAD_USBOTG_DATA6__USBOTG_DATA6 0x0
+				MX27_PAD_USBOTG_DATA7__USBOTG_DATA7 0x0
+			>;
+		};
+	};
+};
+
+&nfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nfc>;
+	nand-bus-width = <8>;
+	nand-ecc-mode = "hw";
+	nand-on-flash-bbt;
+	status = "okay";
+};
+
+&ssi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ssi1>;
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	dr_mode = "otg";
+	phy_type = "ulpi";
+	vbus-supply = <&sw3_reg>;
+	status = "okay";
+};
+
+&usbphy0 {
+	vcc-supply = <&sw3_reg>;
+};
+
+&weim {
+	status = "okay";
+
+	nor: nor@c0000000 {
+		compatible = "cfi-flash";
+		reg = <0 0x00000000 0x02000000>;
+		bank-width = <2>;
+		linux,mtd-name = "physmap-flash.0";
+		fsl,weim-cs-timing = <0x22c2cf00 0x75000d01 0x00000900>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
+	sram: sram@c8000000 {
+		compatible = "mtd-ram";
+		reg = <1 0x00000000 0x00800000>;
+		bank-width = <2>;
+		linux,mtd-name = "mtd-ram.0";
+		fsl,weim-cs-timing = <0x0000d843 0x22252521 0x22220a00>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
