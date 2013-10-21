Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYDLO-0000Li-3s
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 11:08:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 21 Oct 2013 15:07:51 +0400
Message-Id: <1382353671-22937-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: i.MX51: Update DTS template
To: barebox@lists.infradead.org

Update i.MX51 DT template from kernel.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx51.dtsi | 715 ++++++++++++++++++++++++++----------------------
 1 file changed, 393 insertions(+), 322 deletions(-)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index 1a71ec9..f4dcff3 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -15,18 +15,18 @@
 
 / {
 	aliases {
-		serial0 = &uart1;
-		serial1 = &uart2;
-		serial2 = &uart3;
 		gpio0 = &gpio1;
 		gpio1 = &gpio2;
 		gpio2 = &gpio3;
 		gpio3 = &gpio4;
-		mmc0 = &esdhc1;
-		mmc1 = &esdhc2;
-		mmc2 = &esdhc3;
-		mmc3 = &esdhc4;
-		pata0 = &pata;
+		i2c0 = &i2c1;
+		i2c1 = &i2c2;
+		serial0 = &uart1;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		spi0 = &ecspi1;
+		spi1 = &ecspi2;
+		spi2 = &cspi;
 	};
 
 	tzic: tz-interrupt-controller@e0000000 {
@@ -47,7 +47,7 @@
 
 		ckih1 {
 			compatible = "fsl,imx-ckih1", "fixed-clock";
-			clock-frequency = <22579200>;
+			clock-frequency = <0>;
 		};
 
 		ckih2 {
@@ -86,6 +86,11 @@
 		interrupt-parent = <&tzic>;
 		ranges;
 
+		iram: iram@1ffe0000 {
+			compatible = "mmio-sram";
+			reg = <0x1ffe0000 0x20000>;
+		};
+
 		ipu: ipu@40000000 {
 			#crtc-cells = <1>;
 			compatible = "fsl,imx51-ipu";
@@ -154,6 +159,9 @@
 					reg = <0x70014000 0x4000>;
 					interrupts = <30>;
 					clocks = <&clks 49>;
+					dmas = <&sdma 24 1 0>,
+					       <&sdma 25 1 0>;
+					dma-names = "rx", "tx";
 					fsl,fifo-depth = <15>;
 					fsl,ssi-dma-events = <25 24 23 22>; /* TX0 RX0 TX1 RX1 */
 					status = "disabled";
@@ -180,11 +188,20 @@
 				};
 			};
 
+			usbphy0: usbphy@0 {
+				compatible = "usb-nop-xceiv";
+				clocks = <&clks 124>;
+				clock-names = "main_clk";
+				status = "okay";
+			};
+
 			usbotg: usb@73f80000 {
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80000 0x0200>;
 				interrupts = <18>;
+				clocks = <&clks 108>;
 				fsl,usbmisc = <&usbmisc 0>;
+				fsl,usbphy = <&usbphy0>;
 				status = "disabled";
 			};
 
@@ -192,6 +209,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80200 0x0200>;
 				interrupts = <14>;
+				clocks = <&clks 108>;
 				fsl,usbmisc = <&usbmisc 1>;
 				status = "disabled";
 			};
@@ -200,6 +218,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80400 0x0200>;
 				interrupts = <16>;
+				clocks = <&clks 108>;
 				fsl,usbmisc = <&usbmisc 2>;
 				status = "disabled";
 			};
@@ -208,13 +227,16 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80600 0x0200>;
 				interrupts = <17>;
+				clocks = <&clks 108>;
+				fsl,usbmisc = <&usbmisc 3>;
 				status = "disabled";
 			};
 
 			usbmisc: usbmisc@73f80800 {
 				#index-cells = <1>;
 				compatible = "fsl,imx51-usbmisc";
-				reg = <0x73f80800 0x0200>;
+				reg = <0x73f80800 0x200>;
+				clocks = <&clks 108>;
 			};
 
 			gpio1: gpio@73f84000 {
@@ -291,315 +313,6 @@
 			iomuxc: iomuxc@73fa8000 {
 				compatible = "fsl,imx51-iomuxc";
 				reg = <0x73fa8000 0x4000>;
-
-				audmux {
-					pinctrl_audmux_1: audmuxgrp-1 {
-						fsl,pins = <
-							MX51_PAD_AUD3_BB_TXD__AUD3_TXD 0x80000000
-							MX51_PAD_AUD3_BB_RXD__AUD3_RXD 0x80000000
-							MX51_PAD_AUD3_BB_CK__AUD3_TXC  0x80000000
-							MX51_PAD_AUD3_BB_FS__AUD3_TXFS 0x80000000
-						>;
-					};
-				};
-
-				fec {
-					pinctrl_fec_1: fecgrp-1 {
-						fsl,pins = <
-							MX51_PAD_EIM_EB2__FEC_MDIO	   0x000001f5
-							MX51_PAD_EIM_EB3__FEC_RDATA1	   0x00000085
-							MX51_PAD_EIM_CS2__FEC_RDATA2	   0x00000085
-							MX51_PAD_EIM_CS3__FEC_RDATA3	   0x00000085
-							MX51_PAD_EIM_CS4__FEC_RX_ER	   0x00000180
-							MX51_PAD_EIM_CS5__FEC_CRS	   0x00000180
-							MX51_PAD_NANDF_RB2__FEC_COL	   0x00000180
-							MX51_PAD_NANDF_RB3__FEC_RX_CLK	   0x00000180
-							MX51_PAD_NANDF_D9__FEC_RDATA0	   0x00002180
-							MX51_PAD_NANDF_D8__FEC_TDATA0	   0x00002004
-							MX51_PAD_NANDF_CS2__FEC_TX_ER	   0x00002004
-							MX51_PAD_NANDF_CS3__FEC_MDC	   0x00002004
-							MX51_PAD_NANDF_CS4__FEC_TDATA1	   0x00002004
-							MX51_PAD_NANDF_CS5__FEC_TDATA2	   0x00002004
-							MX51_PAD_NANDF_CS6__FEC_TDATA3	   0x00002004
-							MX51_PAD_NANDF_CS7__FEC_TX_EN	   0x00002004
-							MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK 0x00002180
-							MX51_PAD_NANDF_D11__FEC_RX_DV      0x000020a4
-						>;
-					};
-
-					pinctrl_fec_2: fecgrp-2 {
-						fsl,pins = <
-							MX51_PAD_DI_GP3__FEC_TX_ER	  0x80000000
-							MX51_PAD_DI2_PIN4__FEC_CRS	  0x80000000
-							MX51_PAD_DI2_PIN2__FEC_MDC	  0x80000000
-							MX51_PAD_DI2_PIN3__FEC_MDIO	  0x80000000
-							MX51_PAD_DI2_DISP_CLK__FEC_RDATA1 0x80000000
-							MX51_PAD_DI_GP4__FEC_RDATA2	  0x80000000
-							MX51_PAD_DISP2_DAT0__FEC_RDATA3   0x80000000
-							MX51_PAD_DISP2_DAT1__FEC_RX_ER	  0x80000000
-							MX51_PAD_DISP2_DAT6__FEC_TDATA1	  0x80000000
-							MX51_PAD_DISP2_DAT7__FEC_TDATA2	  0x80000000
-							MX51_PAD_DISP2_DAT8__FEC_TDATA3	  0x80000000
-							MX51_PAD_DISP2_DAT9__FEC_TX_EN	  0x80000000
-							MX51_PAD_DISP2_DAT10__FEC_COL	  0x80000000
-							MX51_PAD_DISP2_DAT11__FEC_RX_CLK  0x80000000
-							MX51_PAD_DISP2_DAT12__FEC_RX_DV	  0x80000000
-							MX51_PAD_DISP2_DAT13__FEC_TX_CLK  0x80000000
-							MX51_PAD_DISP2_DAT14__FEC_RDATA0  0x80000000
-							MX51_PAD_DISP2_DAT15__FEC_TDATA0  0x80000000
-						>;
-					};
-				};
-
-				ecspi1 {
-					pinctrl_ecspi1_1: ecspi1grp-1 {
-						fsl,pins = <
-							MX51_PAD_CSPI1_MISO__ECSPI1_MISO 0x185
-							MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI 0x185
-							MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK 0x185
-						>;
-					};
-				};
-
-				ecspi2 {
-					pinctrl_ecspi2_1: ecspi2grp-1 {
-						fsl,pins = <
-							MX51_PAD_NANDF_RB3__ECSPI2_MISO 0x185
-							MX51_PAD_NANDF_D15__ECSPI2_MOSI 0x185
-							MX51_PAD_NANDF_RB2__ECSPI2_SCLK 0x185
-						>;
-					};
-				};
-
-				esdhc1 {
-					pinctrl_esdhc1_1: esdhc1grp-1 {
-						fsl,pins = <
-							MX51_PAD_SD1_CMD__SD1_CMD     0x400020d5
-							MX51_PAD_SD1_CLK__SD1_CLK     0x20d5
-							MX51_PAD_SD1_DATA0__SD1_DATA0 0x20d5
-							MX51_PAD_SD1_DATA1__SD1_DATA1 0x20d5
-							MX51_PAD_SD1_DATA2__SD1_DATA2 0x20d5
-							MX51_PAD_SD1_DATA3__SD1_DATA3 0x20d5
-						>;
-					};
-				};
-
-				esdhc2 {
-					pinctrl_esdhc2_1: esdhc2grp-1 {
-						fsl,pins = <
-							MX51_PAD_SD2_CMD__SD2_CMD     0x400020d5
-							MX51_PAD_SD2_CLK__SD2_CLK     0x20d5
-							MX51_PAD_SD2_DATA0__SD2_DATA0 0x20d5
-							MX51_PAD_SD2_DATA1__SD2_DATA1 0x20d5
-							MX51_PAD_SD2_DATA2__SD2_DATA2 0x20d5
-							MX51_PAD_SD2_DATA3__SD2_DATA3 0x20d5
-						>;
-					};
-				};
-
-				i2c2 {
-					pinctrl_i2c2_1: i2c2grp-1 {
-						fsl,pins = <
-							MX51_PAD_KEY_COL4__I2C2_SCL 0x400001ed
-							MX51_PAD_KEY_COL5__I2C2_SDA 0x400001ed
-						>;
-					};
-
-					pinctrl_i2c2_2: i2c2grp-2 {
-						fsl,pins = <
-							MX51_PAD_EIM_D27__I2C2_SCL 0x400001ed
-							MX51_PAD_EIM_D24__I2C2_SDA 0x400001ed
-						>;
-					};
-				};
-
-				ipu_disp1 {
-					pinctrl_ipu_disp1_1: ipudisp1grp-1 {
-						fsl,pins = <
-							MX51_PAD_DISP1_DAT0__DISP1_DAT0	  0x5
-							MX51_PAD_DISP1_DAT1__DISP1_DAT1   0x5
-							MX51_PAD_DISP1_DAT2__DISP1_DAT2   0x5
-							MX51_PAD_DISP1_DAT3__DISP1_DAT3   0x5
-							MX51_PAD_DISP1_DAT4__DISP1_DAT4   0x5
-							MX51_PAD_DISP1_DAT5__DISP1_DAT5   0x5
-							MX51_PAD_DISP1_DAT6__DISP1_DAT6   0x5
-							MX51_PAD_DISP1_DAT7__DISP1_DAT7   0x5
-							MX51_PAD_DISP1_DAT8__DISP1_DAT8   0x5
-							MX51_PAD_DISP1_DAT9__DISP1_DAT9   0x5
-							MX51_PAD_DISP1_DAT10__DISP1_DAT10 0x5
-							MX51_PAD_DISP1_DAT11__DISP1_DAT11 0x5
-							MX51_PAD_DISP1_DAT12__DISP1_DAT12 0x5
-							MX51_PAD_DISP1_DAT13__DISP1_DAT13 0x5
-							MX51_PAD_DISP1_DAT14__DISP1_DAT14 0x5
-							MX51_PAD_DISP1_DAT15__DISP1_DAT15 0x5
-							MX51_PAD_DISP1_DAT16__DISP1_DAT16 0x5
-							MX51_PAD_DISP1_DAT17__DISP1_DAT17 0x5
-							MX51_PAD_DISP1_DAT18__DISP1_DAT18 0x5
-							MX51_PAD_DISP1_DAT19__DISP1_DAT19 0x5
-							MX51_PAD_DISP1_DAT20__DISP1_DAT20 0x5
-							MX51_PAD_DISP1_DAT21__DISP1_DAT21 0x5
-							MX51_PAD_DISP1_DAT22__DISP1_DAT22 0x5
-							MX51_PAD_DISP1_DAT23__DISP1_DAT23 0x5
-							MX51_PAD_DI1_PIN2__DI1_PIN2	  0x5 /* hsync */
-							MX51_PAD_DI1_PIN3__DI1_PIN3	  0x5 /* vsync */
-						>;
-					};
-				};
-
-				ipu_disp2 {
-					pinctrl_ipu_disp2_1: ipudisp2grp-1 {
-						fsl,pins = <
-							MX51_PAD_DISP2_DAT0__DISP2_DAT0     0x5
-							MX51_PAD_DISP2_DAT1__DISP2_DAT1     0x5
-							MX51_PAD_DISP2_DAT2__DISP2_DAT2     0x5
-							MX51_PAD_DISP2_DAT3__DISP2_DAT3     0x5
-							MX51_PAD_DISP2_DAT4__DISP2_DAT4     0x5
-							MX51_PAD_DISP2_DAT5__DISP2_DAT5     0x5
-							MX51_PAD_DISP2_DAT6__DISP2_DAT6     0x5
-							MX51_PAD_DISP2_DAT7__DISP2_DAT7     0x5
-							MX51_PAD_DISP2_DAT8__DISP2_DAT8     0x5
-							MX51_PAD_DISP2_DAT9__DISP2_DAT9     0x5
-							MX51_PAD_DISP2_DAT10__DISP2_DAT10   0x5
-							MX51_PAD_DISP2_DAT11__DISP2_DAT11   0x5
-							MX51_PAD_DISP2_DAT12__DISP2_DAT12   0x5
-							MX51_PAD_DISP2_DAT13__DISP2_DAT13   0x5
-							MX51_PAD_DISP2_DAT14__DISP2_DAT14   0x5
-							MX51_PAD_DISP2_DAT15__DISP2_DAT15   0x5
-							MX51_PAD_DI2_PIN2__DI2_PIN2	    0x5 /* hsync */
-							MX51_PAD_DI2_PIN3__DI2_PIN3	    0x5 /* vsync */
-							MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK 0x5
-							MX51_PAD_DI_GP4__DI2_PIN15	    0x5
-						>;
-					};
-				};
-
-				pata {
-					pinctrl_pata_1: patagrp-1 {
-						fsl,pins = <
-							MX51_PAD_NANDF_WE_B__PATA_DIOW		0x2004
-							MX51_PAD_NANDF_RE_B__PATA_DIOR		0x2004
-							MX51_PAD_NANDF_ALE__PATA_BUFFER_EN	0x2004
-							MX51_PAD_NANDF_CLE__PATA_RESET_B	0x2004
-							MX51_PAD_NANDF_WP_B__PATA_DMACK		0x2004
-							MX51_PAD_NANDF_RB0__PATA_DMARQ		0x2004
-							MX51_PAD_NANDF_RB1__PATA_IORDY		0x2004
-							MX51_PAD_GPIO_NAND__PATA_INTRQ		0x2004
-							MX51_PAD_NANDF_CS2__PATA_CS_0		0x2004
-							MX51_PAD_NANDF_CS3__PATA_CS_1		0x2004
-							MX51_PAD_NANDF_CS4__PATA_DA_0		0x2004
-							MX51_PAD_NANDF_CS5__PATA_DA_1		0x2004
-							MX51_PAD_NANDF_CS6__PATA_DA_2		0x2004
-							MX51_PAD_NANDF_D15__PATA_DATA15		0x2004
-							MX51_PAD_NANDF_D14__PATA_DATA14		0x2004
-							MX51_PAD_NANDF_D13__PATA_DATA13		0x2004
-							MX51_PAD_NANDF_D12__PATA_DATA12		0x2004
-							MX51_PAD_NANDF_D11__PATA_DATA11		0x2004
-							MX51_PAD_NANDF_D10__PATA_DATA10		0x2004
-							MX51_PAD_NANDF_D9__PATA_DATA9		0x2004
-							MX51_PAD_NANDF_D8__PATA_DATA8		0x2004
-							MX51_PAD_NANDF_D7__PATA_DATA7		0x2004
-							MX51_PAD_NANDF_D6__PATA_DATA6		0x2004
-							MX51_PAD_NANDF_D5__PATA_DATA5		0x2004
-							MX51_PAD_NANDF_D4__PATA_DATA4		0x2004
-							MX51_PAD_NANDF_D3__PATA_DATA3		0x2004
-							MX51_PAD_NANDF_D2__PATA_DATA2		0x2004
-							MX51_PAD_NANDF_D1__PATA_DATA1		0x2004
-							MX51_PAD_NANDF_D0__PATA_DATA0		0x2004
-						>;
-					};
-				};
-
-				uart1 {
-					pinctrl_uart1_1: uart1grp-1 {
-						fsl,pins = <
-							MX51_PAD_UART1_RXD__UART1_RXD 0x1c5
-							MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
-							MX51_PAD_UART1_RTS__UART1_RTS 0x1c5
-							MX51_PAD_UART1_CTS__UART1_CTS 0x1c5
-						>;
-					};
-				};
-
-				uart2 {
-					pinctrl_uart2_1: uart2grp-1 {
-						fsl,pins = <
-							MX51_PAD_UART2_RXD__UART2_RXD 0x1c5
-							MX51_PAD_UART2_TXD__UART2_TXD 0x1c5
-						>;
-					};
-				};
-
-				uart3 {
-					pinctrl_uart3_1: uart3grp-1 {
-						fsl,pins = <
-							MX51_PAD_EIM_D25__UART3_RXD 0x1c5
-							MX51_PAD_EIM_D26__UART3_TXD 0x1c5
-							MX51_PAD_EIM_D27__UART3_RTS 0x1c5
-							MX51_PAD_EIM_D24__UART3_CTS 0x1c5
-						>;
-					};
-
-					pinctrl_uart3_2: uart3grp-2 {
-						fsl,pins = <
-							MX51_PAD_UART3_RXD__UART3_RXD 0x1c5
-							MX51_PAD_UART3_TXD__UART3_TXD 0x1c5
-						>;
-					};
-				};
-
-				usbh1 {
-					pinctrl_usbh1_1: usbh1grp-1 {
-						fsl,pins = <
-							MX51_PAD_USBH1_DATA0__USBH1_DATA0 0x1e5
-							MX51_PAD_USBH1_DATA1__USBH1_DATA1 0x1e5
-							MX51_PAD_USBH1_DATA2__USBH1_DATA2 0x1e5
-							MX51_PAD_USBH1_DATA3__USBH1_DATA3 0x1e5
-							MX51_PAD_USBH1_DATA4__USBH1_DATA4 0x1e5
-							MX51_PAD_USBH1_DATA5__USBH1_DATA5 0x1e5
-							MX51_PAD_USBH1_DATA6__USBH1_DATA6 0x1e5
-							MX51_PAD_USBH1_DATA7__USBH1_DATA7 0x1e5
-							MX51_PAD_USBH1_CLK__USBH1_CLK 0x1e5
-							MX51_PAD_USBH1_DIR__USBH1_DIR 0x1e5
-							MX51_PAD_USBH1_NXT__USBH1_NXT 0x1e5
-							MX51_PAD_USBH1_STP__USBH1_STP 0x1e5
-						>;
-					};
-				};
-
-
-				usbh2 {
-					pinctrl_usbh2_1: usbh2grp-1 {
-						fsl,pins = <
-							MX51_PAD_EIM_D16__USBH2_DATA0 0x1e5
-							MX51_PAD_EIM_D17__USBH2_DATA1 0x1e5
-							MX51_PAD_EIM_D18__USBH2_DATA2 0x1e5
-							MX51_PAD_EIM_D19__USBH2_DATA3 0x1e5
-							MX51_PAD_EIM_D20__USBH2_DATA4 0x1e5
-							MX51_PAD_EIM_D21__USBH2_DATA5 0x1e5
-							MX51_PAD_EIM_D22__USBH2_DATA6 0x1e5
-							MX51_PAD_EIM_D23__USBH2_DATA7 0x1e5
-							MX51_PAD_EIM_A24__USBH2_CLK 0x1e5
-							MX51_PAD_EIM_A25__USBH2_DIR 0x1e5
-							MX51_PAD_EIM_A27__USBH2_NXT 0x1e5
-							MX51_PAD_EIM_A26__USBH2_STP 0x1e5
-						>;
-					};
-				};
-
-				kpp {
-					pinctrl_kpp_1: kppgrp-1 {
-						fsl,pins = <
-							MX51_PAD_KEY_ROW0__KEY_ROW0 0xe0
-							MX51_PAD_KEY_ROW1__KEY_ROW1 0xe0
-							MX51_PAD_KEY_ROW2__KEY_ROW2 0xe0
-							MX51_PAD_KEY_ROW3__KEY_ROW3 0xe0
-							MX51_PAD_KEY_COL0__KEY_COL0 0xe8
-							MX51_PAD_KEY_COL1__KEY_COL1 0xe8
-							MX51_PAD_KEY_COL2__KEY_COL2 0xe8
-							MX51_PAD_KEY_COL3__KEY_COL3 0xe8
-						>;
-					};
-				};
 			};
 
 			pwm1: pwm@73fb4000 {
@@ -660,12 +373,20 @@
 			ranges;
 
 			iim: iim@83f98000 {
-				compatible = "fsl,imx51-iim", "fsl,imx-iim";
+				compatible = "fsl,imx51-iim", "fsl,imx27-iim";
 				reg = <0x83f98000 0x4000>;
 				interrupts = <69>;
 				clocks = <&clks 107>;
 			};
 
+			owire: owire@83fa4000 {
+				compatible = "fsl,imx51-owire", "fsl,imx21-owire";
+				reg = <0x83fa4000 0x4000>;
+				interrupts = <88>;
+				clocks = <&clks 159>;
+				status = "disabled";
+			};
+
 			ecspi2: ecspi@83fac000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -683,6 +404,7 @@
 				interrupts = <6>;
 				clocks = <&clks 56>, <&clks 56>;
 				clock-names = "ipg", "ahb";
+				#dma-cells = <3>;
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx51.bin";
 			};
 
@@ -692,7 +414,7 @@
 				compatible = "fsl,imx51-cspi", "fsl,imx35-cspi";
 				reg = <0x83fc0000 0x4000>;
 				interrupts = <38>;
-				clocks = <&clks 55>, <&clks 0>;
+				clocks = <&clks 55>, <&clks 55>;
 				clock-names = "ipg", "per";
 				status = "disabled";
 			};
@@ -722,6 +444,9 @@
 				reg = <0x83fcc000 0x4000>;
 				interrupts = <29>;
 				clocks = <&clks 48>;
+				dmas = <&sdma 28 0 0>,
+				       <&sdma 29 0 0>;
+				dma-names = "rx", "tx";
 				fsl,fifo-depth = <15>;
 				fsl,ssi-dma-events = <29 28 27 26>; /* TX0 RX0 TX1 RX1 */
 				status = "disabled";
@@ -733,6 +458,23 @@
 				status = "disabled";
 			};
 
+			weim: weim@83fda000 {
+				#address-cells = <2>;
+				#size-cells = <1>;
+				compatible = "fsl,imx51-weim";
+				reg = <0x83fda000 0x1000>;
+				clocks = <&clks 57>;
+				ranges = <
+					0 0 0xb0000000 0x08000000
+					1 0 0xb8000000 0x08000000
+					2 0 0xc0000000 0x08000000
+					3 0 0xc8000000 0x04000000
+					4 0 0xcc000000 0x02000000
+					5 0 0xce000000 0x02000000
+				>;
+				status = "disabled";
+			};
+
 			nfc: nand@83fdb000 {
 				compatible = "fsl,imx51-nand";
 				reg = <0x83fdb000 0x1000 0xcfff0000 0x10000>;
@@ -745,7 +487,7 @@
 				compatible = "fsl,imx51-pata", "fsl,imx27-pata";
 				reg = <0x83fe0000 0x4000>;
 				interrupts = <70>;
-				clocks = <&clks 161>;
+				clocks = <&clks 172>;
 				status = "disabled";
 			};
 
@@ -754,6 +496,9 @@
 				reg = <0x83fe8000 0x4000>;
 				interrupts = <96>;
 				clocks = <&clks 50>;
+				dmas = <&sdma 46 0 0>,
+				       <&sdma 47 0 0>;
+				dma-names = "rx", "tx";
 				fsl,fifo-depth = <15>;
 				fsl,ssi-dma-events = <47 46 37 35>; /* TX0 RX0 TX1 RX1 */
 				status = "disabled";
@@ -770,3 +515,329 @@
 		};
 	};
 };
+
+&iomuxc {
+	audmux {
+		pinctrl_audmux_1: audmuxgrp-1 {
+			fsl,pins = <
+				MX51_PAD_AUD3_BB_TXD__AUD3_TXD 0x80000000
+				MX51_PAD_AUD3_BB_RXD__AUD3_RXD 0x80000000
+				MX51_PAD_AUD3_BB_CK__AUD3_TXC  0x80000000
+				MX51_PAD_AUD3_BB_FS__AUD3_TXFS 0x80000000
+			>;
+		};
+	};
+
+	fec {
+		pinctrl_fec_1: fecgrp-1 {
+			fsl,pins = <
+				MX51_PAD_EIM_EB2__FEC_MDIO	   0x80000000
+				MX51_PAD_EIM_EB3__FEC_RDATA1	   0x80000000
+				MX51_PAD_EIM_CS2__FEC_RDATA2	   0x80000000
+				MX51_PAD_EIM_CS3__FEC_RDATA3	   0x80000000
+				MX51_PAD_EIM_CS4__FEC_RX_ER	   0x80000000
+				MX51_PAD_EIM_CS5__FEC_CRS	   0x80000000
+				MX51_PAD_NANDF_RB2__FEC_COL	   0x80000000
+				MX51_PAD_NANDF_RB3__FEC_RX_CLK	   0x80000000
+				MX51_PAD_NANDF_D9__FEC_RDATA0	   0x80000000
+				MX51_PAD_NANDF_D8__FEC_TDATA0	   0x80000000
+				MX51_PAD_NANDF_CS2__FEC_TX_ER	   0x80000000
+				MX51_PAD_NANDF_CS3__FEC_MDC	   0x80000000
+				MX51_PAD_NANDF_CS4__FEC_TDATA1	   0x80000000
+				MX51_PAD_NANDF_CS5__FEC_TDATA2	   0x80000000
+				MX51_PAD_NANDF_CS6__FEC_TDATA3	   0x80000000
+				MX51_PAD_NANDF_CS7__FEC_TX_EN	   0x80000000
+				MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK 0x80000000
+			>;
+		};
+
+		pinctrl_fec_2: fecgrp-2 {
+			fsl,pins = <
+				MX51_PAD_DI_GP3__FEC_TX_ER	  0x80000000
+				MX51_PAD_DI2_PIN4__FEC_CRS	  0x80000000
+				MX51_PAD_DI2_PIN2__FEC_MDC	  0x80000000
+				MX51_PAD_DI2_PIN3__FEC_MDIO	  0x80000000
+				MX51_PAD_DI2_DISP_CLK__FEC_RDATA1 0x80000000
+				MX51_PAD_DI_GP4__FEC_RDATA2	  0x80000000
+				MX51_PAD_DISP2_DAT0__FEC_RDATA3   0x80000000
+				MX51_PAD_DISP2_DAT1__FEC_RX_ER	  0x80000000
+				MX51_PAD_DISP2_DAT6__FEC_TDATA1	  0x80000000
+				MX51_PAD_DISP2_DAT7__FEC_TDATA2	  0x80000000
+				MX51_PAD_DISP2_DAT8__FEC_TDATA3	  0x80000000
+				MX51_PAD_DISP2_DAT9__FEC_TX_EN	  0x80000000
+				MX51_PAD_DISP2_DAT10__FEC_COL	  0x80000000
+				MX51_PAD_DISP2_DAT11__FEC_RX_CLK  0x80000000
+				MX51_PAD_DISP2_DAT12__FEC_RX_DV	  0x80000000
+				MX51_PAD_DISP2_DAT13__FEC_TX_CLK  0x80000000
+				MX51_PAD_DISP2_DAT14__FEC_RDATA0  0x80000000
+				MX51_PAD_DISP2_DAT15__FEC_TDATA0  0x80000000
+			>;
+		};
+	};
+
+	ecspi1 {
+		pinctrl_ecspi1_1: ecspi1grp-1 {
+			fsl,pins = <
+				MX51_PAD_CSPI1_MISO__ECSPI1_MISO 0x185
+				MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI 0x185
+				MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK 0x185
+			>;
+		};
+	};
+
+	ecspi2 {
+		pinctrl_ecspi2_1: ecspi2grp-1 {
+			fsl,pins = <
+				MX51_PAD_NANDF_RB3__ECSPI2_MISO 0x185
+				MX51_PAD_NANDF_D15__ECSPI2_MOSI 0x185
+				MX51_PAD_NANDF_RB2__ECSPI2_SCLK 0x185
+			>;
+		};
+	};
+
+	esdhc1 {
+		pinctrl_esdhc1_1: esdhc1grp-1 {
+			fsl,pins = <
+				MX51_PAD_SD1_CMD__SD1_CMD     0x400020d5
+				MX51_PAD_SD1_CLK__SD1_CLK     0x20d5
+				MX51_PAD_SD1_DATA0__SD1_DATA0 0x20d5
+				MX51_PAD_SD1_DATA1__SD1_DATA1 0x20d5
+				MX51_PAD_SD1_DATA2__SD1_DATA2 0x20d5
+				MX51_PAD_SD1_DATA3__SD1_DATA3 0x20d5
+			>;
+		};
+	};
+
+	esdhc2 {
+		pinctrl_esdhc2_1: esdhc2grp-1 {
+			fsl,pins = <
+				MX51_PAD_SD2_CMD__SD2_CMD     0x400020d5
+				MX51_PAD_SD2_CLK__SD2_CLK     0x20d5
+				MX51_PAD_SD2_DATA0__SD2_DATA0 0x20d5
+				MX51_PAD_SD2_DATA1__SD2_DATA1 0x20d5
+				MX51_PAD_SD2_DATA2__SD2_DATA2 0x20d5
+				MX51_PAD_SD2_DATA3__SD2_DATA3 0x20d5
+			>;
+		};
+	};
+
+	i2c2 {
+		pinctrl_i2c2_1: i2c2grp-1 {
+			fsl,pins = <
+				MX51_PAD_KEY_COL4__I2C2_SCL 0x400001ed
+				MX51_PAD_KEY_COL5__I2C2_SDA 0x400001ed
+			>;
+		};
+
+		pinctrl_i2c2_2: i2c2grp-2 {
+			fsl,pins = <
+				MX51_PAD_EIM_D27__I2C2_SCL 0x400001ed
+				MX51_PAD_EIM_D24__I2C2_SDA 0x400001ed
+			>;
+		};
+
+		pinctrl_i2c2_3: i2c2grp-3 {
+			fsl,pins = <
+				MX51_PAD_GPIO1_2__I2C2_SCL 0x400001ed
+				MX51_PAD_GPIO1_3__I2C2_SDA 0x400001ed
+			>;
+		};
+	};
+
+	ipu_disp1 {
+		pinctrl_ipu_disp1_1: ipudisp1grp-1 {
+			fsl,pins = <
+				MX51_PAD_DISP1_DAT0__DISP1_DAT0	  0x5
+				MX51_PAD_DISP1_DAT1__DISP1_DAT1	  0x5
+				MX51_PAD_DISP1_DAT2__DISP1_DAT2	  0x5
+				MX51_PAD_DISP1_DAT3__DISP1_DAT3	  0x5
+				MX51_PAD_DISP1_DAT4__DISP1_DAT4	  0x5
+				MX51_PAD_DISP1_DAT5__DISP1_DAT5	  0x5
+				MX51_PAD_DISP1_DAT6__DISP1_DAT6	  0x5
+				MX51_PAD_DISP1_DAT7__DISP1_DAT7	  0x5
+				MX51_PAD_DISP1_DAT8__DISP1_DAT8	  0x5
+				MX51_PAD_DISP1_DAT9__DISP1_DAT9	  0x5
+				MX51_PAD_DISP1_DAT10__DISP1_DAT10 0x5
+				MX51_PAD_DISP1_DAT11__DISP1_DAT11 0x5
+				MX51_PAD_DISP1_DAT12__DISP1_DAT12 0x5
+				MX51_PAD_DISP1_DAT13__DISP1_DAT13 0x5
+				MX51_PAD_DISP1_DAT14__DISP1_DAT14 0x5
+				MX51_PAD_DISP1_DAT15__DISP1_DAT15 0x5
+				MX51_PAD_DISP1_DAT16__DISP1_DAT16 0x5
+				MX51_PAD_DISP1_DAT17__DISP1_DAT17 0x5
+				MX51_PAD_DISP1_DAT18__DISP1_DAT18 0x5
+				MX51_PAD_DISP1_DAT19__DISP1_DAT19 0x5
+				MX51_PAD_DISP1_DAT20__DISP1_DAT20 0x5
+				MX51_PAD_DISP1_DAT21__DISP1_DAT21 0x5
+				MX51_PAD_DISP1_DAT22__DISP1_DAT22 0x5
+				MX51_PAD_DISP1_DAT23__DISP1_DAT23 0x5
+				MX51_PAD_DI1_PIN2__DI1_PIN2	  0x5 /* hsync */
+				MX51_PAD_DI1_PIN3__DI1_PIN3	  0x5 /* vsync */
+			>;
+		};
+	};
+
+	ipu_disp2 {
+		pinctrl_ipu_disp2_1: ipudisp2grp-1 {
+			fsl,pins = <
+				MX51_PAD_DISP2_DAT0__DISP2_DAT0	    0x5
+				MX51_PAD_DISP2_DAT1__DISP2_DAT1	    0x5
+				MX51_PAD_DISP2_DAT2__DISP2_DAT2	    0x5
+				MX51_PAD_DISP2_DAT3__DISP2_DAT3	    0x5
+				MX51_PAD_DISP2_DAT4__DISP2_DAT4	    0x5
+				MX51_PAD_DISP2_DAT5__DISP2_DAT5	    0x5
+				MX51_PAD_DISP2_DAT6__DISP2_DAT6	    0x5
+				MX51_PAD_DISP2_DAT7__DISP2_DAT7	    0x5
+				MX51_PAD_DISP2_DAT8__DISP2_DAT8	    0x5
+				MX51_PAD_DISP2_DAT9__DISP2_DAT9	    0x5
+				MX51_PAD_DISP2_DAT10__DISP2_DAT10   0x5
+				MX51_PAD_DISP2_DAT11__DISP2_DAT11   0x5
+				MX51_PAD_DISP2_DAT12__DISP2_DAT12   0x5
+				MX51_PAD_DISP2_DAT13__DISP2_DAT13   0x5
+				MX51_PAD_DISP2_DAT14__DISP2_DAT14   0x5
+				MX51_PAD_DISP2_DAT15__DISP2_DAT15   0x5
+				MX51_PAD_DI2_PIN2__DI2_PIN2	    0x5 /* hsync */
+				MX51_PAD_DI2_PIN3__DI2_PIN3	    0x5 /* vsync */
+				MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK 0x5 /* CLK */
+				MX51_PAD_DI_GP4__DI2_PIN15	    0x5 /* DE */
+			>;
+		};
+	};
+
+	kpp {
+		pinctrl_kpp_1: kppgrp-1 {
+			fsl,pins = <
+				MX51_PAD_KEY_ROW0__KEY_ROW0 0xe0
+				MX51_PAD_KEY_ROW1__KEY_ROW1 0xe0
+				MX51_PAD_KEY_ROW2__KEY_ROW2 0xe0
+				MX51_PAD_KEY_ROW3__KEY_ROW3 0xe0
+				MX51_PAD_KEY_COL0__KEY_COL0 0xe8
+				MX51_PAD_KEY_COL1__KEY_COL1 0xe8
+				MX51_PAD_KEY_COL2__KEY_COL2 0xe8
+				MX51_PAD_KEY_COL3__KEY_COL3 0xe8
+			>;
+		};
+	};
+
+	pata {
+		pinctrl_pata_1: patagrp-1 {
+			fsl,pins = <
+				MX51_PAD_NANDF_WE_B__PATA_DIOW	   0x2004
+				MX51_PAD_NANDF_RE_B__PATA_DIOR	   0x2004
+				MX51_PAD_NANDF_ALE__PATA_BUFFER_EN 0x2004
+				MX51_PAD_NANDF_CLE__PATA_RESET_B   0x2004
+				MX51_PAD_NANDF_WP_B__PATA_DMACK	   0x2004
+				MX51_PAD_NANDF_RB0__PATA_DMARQ	   0x2004
+				MX51_PAD_NANDF_RB1__PATA_IORDY	   0x2004
+				MX51_PAD_GPIO_NAND__PATA_INTRQ	   0x2004
+				MX51_PAD_NANDF_CS2__PATA_CS_0	   0x2004
+				MX51_PAD_NANDF_CS3__PATA_CS_1	   0x2004
+				MX51_PAD_NANDF_CS4__PATA_DA_0	   0x2004
+				MX51_PAD_NANDF_CS5__PATA_DA_1	   0x2004
+				MX51_PAD_NANDF_CS6__PATA_DA_2	   0x2004
+				MX51_PAD_NANDF_D15__PATA_DATA15	   0x2004
+				MX51_PAD_NANDF_D14__PATA_DATA14	   0x2004
+				MX51_PAD_NANDF_D13__PATA_DATA13	   0x2004
+				MX51_PAD_NANDF_D12__PATA_DATA12	   0x2004
+				MX51_PAD_NANDF_D11__PATA_DATA11	   0x2004
+				MX51_PAD_NANDF_D10__PATA_DATA10	   0x2004
+				MX51_PAD_NANDF_D9__PATA_DATA9	   0x2004
+				MX51_PAD_NANDF_D8__PATA_DATA8	   0x2004
+				MX51_PAD_NANDF_D7__PATA_DATA7	   0x2004
+				MX51_PAD_NANDF_D6__PATA_DATA6	  0x2004
+				MX51_PAD_NANDF_D5__PATA_DATA5	  0x2004
+				MX51_PAD_NANDF_D4__PATA_DATA4	  0x2004
+				MX51_PAD_NANDF_D3__PATA_DATA3	  0x2004
+				MX51_PAD_NANDF_D2__PATA_DATA2	  0x2004
+				MX51_PAD_NANDF_D1__PATA_DATA1	  0x2004
+				MX51_PAD_NANDF_D0__PATA_DATA0	  0x2004
+			>;
+		};
+	};
+
+	uart1 {
+		pinctrl_uart1_1: uart1grp-1 {
+			fsl,pins = <
+				MX51_PAD_UART1_RXD__UART1_RXD 0x1c5
+				MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
+			>;
+		};
+
+		pinctrl_uart1_rtscts_1: uart1rtscts-1 {
+			fsl,pins = <
+				MX51_PAD_UART1_RTS__UART1_RTS 0x1c5
+				MX51_PAD_UART1_CTS__UART1_CTS 0x1c5
+			>;
+		};
+	};
+
+	uart2 {
+		pinctrl_uart2_1: uart2grp-1 {
+			fsl,pins = <
+				MX51_PAD_UART2_RXD__UART2_RXD 0x1c5
+				MX51_PAD_UART2_TXD__UART2_TXD 0x1c5
+			>;
+		};
+	};
+
+	uart3 {
+		pinctrl_uart3_1: uart3grp-1 {
+			fsl,pins = <
+				MX51_PAD_EIM_D25__UART3_RXD 0x1c5
+				MX51_PAD_EIM_D26__UART3_TXD 0x1c5
+			>;
+		};
+
+		pinctrl_uart3_rtscts_1: uart3rtscts-1 {
+			fsl,pins = <
+				MX51_PAD_EIM_D27__UART3_RTS 0x1c5
+				MX51_PAD_EIM_D24__UART3_CTS 0x1c5
+			>;
+		};
+
+		pinctrl_uart3_2: uart3grp-2 {
+			fsl,pins = <
+				MX51_PAD_UART3_RXD__UART3_RXD 0x1c5
+				MX51_PAD_UART3_TXD__UART3_TXD 0x1c5
+			>;
+		};
+	};
+
+	usbh1 {
+		pinctrl_usbh1_1: usbh1grp-1 {
+			fsl,pins = <
+				MX51_PAD_USBH1_DATA0__USBH1_DATA0 0x1e5
+				MX51_PAD_USBH1_DATA1__USBH1_DATA1 0x1e5
+				MX51_PAD_USBH1_DATA2__USBH1_DATA2 0x1e5
+				MX51_PAD_USBH1_DATA3__USBH1_DATA3 0x1e5
+				MX51_PAD_USBH1_DATA4__USBH1_DATA4 0x1e5
+				MX51_PAD_USBH1_DATA5__USBH1_DATA5 0x1e5
+				MX51_PAD_USBH1_DATA6__USBH1_DATA6 0x1e5
+				MX51_PAD_USBH1_DATA7__USBH1_DATA7 0x1e5
+				MX51_PAD_USBH1_CLK__USBH1_CLK	  0x1e5
+				MX51_PAD_USBH1_DIR__USBH1_DIR	  0x1e5
+				MX51_PAD_USBH1_NXT__USBH1_NXT	  0x1e5
+				MX51_PAD_USBH1_STP__USBH1_STP	  0x1e5
+			>;
+		};
+	};
+
+	usbh2 {
+		pinctrl_usbh2_1: usbh2grp-1 {
+			fsl,pins = <
+				MX51_PAD_EIM_D16__USBH2_DATA0 0x1e5
+				MX51_PAD_EIM_D17__USBH2_DATA1 0x1e5
+				MX51_PAD_EIM_D18__USBH2_DATA2 0x1e5
+				MX51_PAD_EIM_D19__USBH2_DATA3 0x1e5
+				MX51_PAD_EIM_D20__USBH2_DATA4 0x1e5
+				MX51_PAD_EIM_D21__USBH2_DATA5 0x1e5
+				MX51_PAD_EIM_D22__USBH2_DATA6 0x1e5
+				MX51_PAD_EIM_D23__USBH2_DATA7 0x1e5
+				MX51_PAD_EIM_A24__USBH2_CLK   0x1e5
+				MX51_PAD_EIM_A25__USBH2_DIR   0x1e5
+				MX51_PAD_EIM_A27__USBH2_NXT   0x1e5
+				MX51_PAD_EIM_A26__USBH2_STP   0x1e5
+			>;
+		};
+	};
+};
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
