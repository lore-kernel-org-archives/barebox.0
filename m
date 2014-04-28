Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WegGe-0003WH-R1
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 07:46:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 09:45:53 +0200
Message-Id: <1398671161-29045-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
References: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] dts: i.MX51 efika sb: Roll back pingroup changes
To: barebox@lists.infradead.org

The pingrp defines never made it upstream, so roll back the changes
and use the individual pin defines for the Efika sb instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51-genesi-efika-sb.dts | 129 ++++++++++++++++++++++++++++++---
 1 file changed, 118 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 2b85a49..f30fc9a 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -11,6 +11,8 @@
 
 /dts-v1/;
 #include "imx51.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "Genesi Efika MX Smartbook";
@@ -126,7 +128,12 @@
 		};
 
 		pinctrl_audmux: audmuxgrp {
-			fsl,pins = <MX51_AUDMUX_PINGRP1>;
+			fsl,pins = <
+				MX51_PAD_AUD3_BB_TXD__AUD3_TXD 0x80000000
+				MX51_PAD_AUD3_BB_RXD__AUD3_RXD 0x80000000
+				MX51_PAD_AUD3_BB_CK__AUD3_TXC 0x80000000
+				MX51_PAD_AUD3_BB_FS__AUD3_TXFS 0x80000000
+			>;
 		};
 
 		pinctrl_battery: batterygrp {
@@ -137,7 +144,9 @@
 
 		pinctrl_ecspi1: ecspi1grp {
 			fsl,pins = <
-				MX51_ECSPI1_PINGRP1
+				MX51_PAD_CSPI1_MISO__ECSPI1_MISO 0x185
+				MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI 0x185
+				MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK 0x185
 				MX51_PAD_CSPI1_SS0__GPIO4_24	0x85 /* CS0 */
 				MX51_PAD_CSPI1_SS1__GPIO4_25	0x85 /* CS1 */
 				MX51_PAD_GPIO1_6__GPIO1_6	0xe5 /* PMIC IRQ */
@@ -146,7 +155,12 @@
 
 		pinctrl_esdhc1: esdhc1grp {
 			fsl,pins = <
-				MX51_ESDHC1_PINGRP1
+				MX51_PAD_SD1_CMD__SD1_CMD 0x400020d5
+				MX51_PAD_SD1_CLK__SD1_CLK 0x20d5
+				MX51_PAD_SD1_DATA0__SD1_DATA0 0x20d5
+				MX51_PAD_SD1_DATA1__SD1_DATA1 0x20d5
+				MX51_PAD_SD1_DATA2__SD1_DATA2 0x20d5
+				MX51_PAD_SD1_DATA3__SD1_DATA3 0x20d5
 				MX51_PAD_GPIO1_1__GPIO1_1	0xe5 /* WP */
 				MX51_PAD_EIM_CS2__GPIO2_27	0xe5 /* CD */
 			>;
@@ -154,18 +168,53 @@
 
 		pinctrl_esdhc2: esdhc2grp {
 			fsl,pins = <
-				MX51_ESDHC2_PINGRP1
+				MX51_PAD_SD2_CMD__SD2_CMD 0x400020d5
+				MX51_PAD_SD2_CLK__SD2_CLK 0x20d5
+				MX51_PAD_SD2_DATA0__SD2_DATA0 0x20d5
+				MX51_PAD_SD2_DATA1__SD2_DATA1 0x20d5
+				MX51_PAD_SD2_DATA2__SD2_DATA2 0x20d5
+				MX51_PAD_SD2_DATA3__SD2_DATA3 0x20d5
 				MX51_PAD_GPIO1_7__GPIO1_7	0xe5 /* WP */
 				MX51_PAD_GPIO1_8__GPIO1_8	0xe5 /* CD */
 			>;
 		};
 
 		pinctrl_i2c2: i2c2grp {
-			fsl,pins = <MX51_I2C2_PINGRP1>;
+			fsl,pins = <
+				MX51_PAD_KEY_COL4__I2C2_SCL 0x400001ed
+				MX51_PAD_KEY_COL5__I2C2_SDA 0x400001ed
+			>;
 		};
 
 		pinctrl_ipu_disp1: ipudisp1grp {
-			fsl,pins = <MX51_IPU_DISP1_PINGRP1>;
+			fsl,pins = <
+				MX51_PAD_DISP1_DAT0__DISP1_DAT0	0x5
+				MX51_PAD_DISP1_DAT1__DISP1_DAT1	0x5
+				MX51_PAD_DISP1_DAT2__DISP1_DAT2	0x5
+				MX51_PAD_DISP1_DAT3__DISP1_DAT3	0x5
+				MX51_PAD_DISP1_DAT4__DISP1_DAT4	0x5
+				MX51_PAD_DISP1_DAT5__DISP1_DAT5	0x5
+				MX51_PAD_DISP1_DAT6__DISP1_DAT6	0x5
+				MX51_PAD_DISP1_DAT7__DISP1_DAT7	0x5
+				MX51_PAD_DISP1_DAT8__DISP1_DAT8	0x5
+				MX51_PAD_DISP1_DAT9__DISP1_DAT9	0x5
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
+				MX51_PAD_DI1_PIN2__DI1_PIN2 0x5
+				MX51_PAD_DI1_PIN3__DI1_PIN3 0x5
+			>;
 		};
 
 		pinctrl_keys: keysgrp {
@@ -183,22 +232,80 @@
 		};
 
 		pinctrl_pata: patagrp {
-			fsl,pins = <MX51_PATA_PINGRP1>;
+			fsl,pins = <
+				MX51_PAD_NANDF_WE_B__PATA_DIOW		0x2004
+				MX51_PAD_NANDF_RE_B__PATA_DIOR		0x2004
+				MX51_PAD_NANDF_ALE__PATA_BUFFER_EN	0x2004
+				MX51_PAD_NANDF_CLE__PATA_RESET_B	0x2004
+				MX51_PAD_NANDF_WP_B__PATA_DMACK		0x2004
+				MX51_PAD_NANDF_RB0__PATA_DMARQ		0x2004
+				MX51_PAD_NANDF_RB1__PATA_IORDY		0x2004
+				MX51_PAD_GPIO_NAND__PATA_INTRQ		0x2004
+				MX51_PAD_NANDF_CS2__PATA_CS_0		0x2004
+				MX51_PAD_NANDF_CS3__PATA_CS_1		0x2004
+				MX51_PAD_NANDF_CS4__PATA_DA_0		0x2004
+				MX51_PAD_NANDF_CS5__PATA_DA_1		0x2004
+				MX51_PAD_NANDF_CS6__PATA_DA_2		0x2004
+				MX51_PAD_NANDF_D15__PATA_DATA15		0x2004
+				MX51_PAD_NANDF_D14__PATA_DATA14		0x2004
+				MX51_PAD_NANDF_D13__PATA_DATA13		0x2004
+				MX51_PAD_NANDF_D12__PATA_DATA12		0x2004
+				MX51_PAD_NANDF_D11__PATA_DATA11		0x2004
+				MX51_PAD_NANDF_D10__PATA_DATA10		0x2004
+				MX51_PAD_NANDF_D9__PATA_DATA9		0x2004
+				MX51_PAD_NANDF_D8__PATA_DATA8		0x2004
+				MX51_PAD_NANDF_D7__PATA_DATA7		0x2004
+				MX51_PAD_NANDF_D6__PATA_DATA6		0x2004
+				MX51_PAD_NANDF_D5__PATA_DATA5		0x2004
+				MX51_PAD_NANDF_D4__PATA_DATA4		0x2004
+				MX51_PAD_NANDF_D3__PATA_DATA3		0x2004
+				MX51_PAD_NANDF_D2__PATA_DATA2		0x2004
+				MX51_PAD_NANDF_D1__PATA_DATA1		0x2004
+				MX51_PAD_NANDF_D0__PATA_DATA0		0x2004
+			>;
 		};
 
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
-				MX51_UART1_PINGRP1
-				MX51_UART1_RTSCTS_PINGRP1
+				MX51_PAD_UART1_RXD__UART1_RXD		0x1c5
+				MX51_PAD_UART1_TXD__UART1_TXD		0x1c5
+				MX51_PAD_UART1_RTS__UART1_RTS		0x1c5
+				MX51_PAD_UART1_CTS__UART1_CTS		0x1c5
 			>;
 		};
 
 		pinctrl_usbh1: usbh1grp {
-			fsl,pins = <MX51_USBH1_PINGRP1>;
+			fsl,pins = <
+				MX51_PAD_USBH1_DATA0__USBH1_DATA0	0x1e5
+				MX51_PAD_USBH1_DATA1__USBH1_DATA1	0x1e5
+				MX51_PAD_USBH1_DATA2__USBH1_DATA2	0x1e5
+				MX51_PAD_USBH1_DATA3__USBH1_DATA3	0x1e5
+				MX51_PAD_USBH1_DATA4__USBH1_DATA4	0x1e5
+				MX51_PAD_USBH1_DATA5__USBH1_DATA5	0x1e5
+				MX51_PAD_USBH1_DATA6__USBH1_DATA6	0x1e5
+				MX51_PAD_USBH1_DATA7__USBH1_DATA7	0x1e5
+				MX51_PAD_USBH1_CLK__USBH1_CLK		0x1e5
+				MX51_PAD_USBH1_DIR__USBH1_DIR		0x1e5
+				MX51_PAD_USBH1_NXT__USBH1_NXT		0x1e5
+				MX51_PAD_USBH1_STP__USBH1_STP		0x1e5
+			>;
 		};
 
 		pinctrl_usbh2: usbh2grp {
-			fsl,pins = <MX51_USBH2_PINGRP1>;
+			fsl,pins = <
+				MX51_PAD_EIM_D16__USBH2_DATA0		0x1e5
+				MX51_PAD_EIM_D17__USBH2_DATA1		0x1e5
+				MX51_PAD_EIM_D18__USBH2_DATA2		0x1e5
+				MX51_PAD_EIM_D19__USBH2_DATA3		0x1e5
+				MX51_PAD_EIM_D20__USBH2_DATA4		0x1e5
+				MX51_PAD_EIM_D21__USBH2_DATA5		0x1e5
+				MX51_PAD_EIM_D22__USBH2_DATA6		0x1e5
+				MX51_PAD_EIM_D23__USBH2_DATA7		0x1e5
+				MX51_PAD_EIM_A24__USBH2_CLK		0x1e5
+				MX51_PAD_EIM_A25__USBH2_DIR		0x1e5
+				MX51_PAD_EIM_A27__USBH2_NXT		0x1e5
+				MX51_PAD_EIM_A26__USBH2_STP		0x1e5
+			>;
 		};
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
