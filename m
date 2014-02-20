Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x244.google.com ([2a00:1450:400c:c00::244])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGcFM-0006eX-Kn
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 22:37:37 +0000
Received: by mail-wg0-f68.google.com with SMTP id a1so600529wgh.11
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2014 14:37:14 -0800 (PST)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Thu, 20 Feb 2014 14:37:00 -0800
Message-Id: <1392935821-14783-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1392935821-14783-1-git-send-email-poggi.raph@gmail.com>
References: <1392935821-14783-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 2/3] ARM: i.MX6: UDOO: Add support of ethernet
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

Add the support of ethernet in device tree
and board file.

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/boards/udoo/board.c   | 41 ++++++++++++++++-------------------------
 arch/arm/dts/imx6qdl-udoo.dtsi | 11 +++++++++++
 2 files changed, 27 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index 0a056fb..3846d4b 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -40,28 +40,20 @@
 #include <mach/usb.h>
 
 static iomux_v3_cfg_t udoo_enet_gpio_pads_1[] = {
-	MX6Q_PAD_ENET_MDIO__ENET_MDIO				| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_ENET_MDC__ENET_MDC					| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL	| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
-	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC			| MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL),
 	/* RGMII reset */
+	MX6Q_PAD_EIM_D23__GPIO_3_23			| MUX_PAD_CTRL(NO_PAD_CTRL),
 	/* alimentazione ethernet*/
-	MX6Q_PAD_EIM_EB3__GPIO_2_31     | MUX_PAD_CTRL(NO_PAD_CTRL),
+	MX6Q_PAD_EIM_EB3__GPIO_2_31			| MUX_PAD_CTRL(NO_PAD_CTRL),
 	/* pin 32 - 1 - (MODE0) all */
-	MX6Q_PAD_RGMII_RD0__GPIO_6_25   | MUX_PAD_CTRL(NO_PAD_CTRL),
+	MX6Q_PAD_RGMII_RD0__GPIO_6_25		| MUX_PAD_CTRL(NO_PAD_CTRL),
 	/* pin 31 - 1 - (MODE1) all */
-	MX6Q_PAD_RGMII_RD1__GPIO_6_27   | MUX_PAD_CTRL(NO_PAD_CTRL),
+	MX6Q_PAD_RGMII_RD1__GPIO_6_27		| MUX_PAD_CTRL(NO_PAD_CTRL),
 	/* pin 28 - 1 - (MODE2) all */
-	MX6Q_PAD_RGMII_RD2__GPIO_6_28   | MUX_PAD_CTRL(NO_PAD_CTRL),
+	MX6Q_PAD_RGMII_RD2__GPIO_6_28		| MUX_PAD_CTRL(NO_PAD_CTRL),
 	/* pin 27 - 1 - (MODE3) all */
-	MX6Q_PAD_RGMII_RD3__GPIO_6_29   | MUX_PAD_CTRL(NO_PAD_CTRL),
+	MX6Q_PAD_RGMII_RD3__GPIO_6_29		| MUX_PAD_CTRL(NO_PAD_CTRL),
 	/* pin 33 - 1 - (CLK125_EN) 125Mhz clockout enabled */
+	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24	| MUX_PAD_CTRL(NO_PAD_CTRL),
 };
 
 static iomux_v3_cfg_t udoo_enet_gpio_pads_2[] = {
@@ -71,7 +63,7 @@ static iomux_v3_cfg_t udoo_enet_gpio_pads_2[] = {
 	MX6Q_PAD_RGMII_RD1__GPIO_6_27,          /* MODE1 */
 	MX6Q_PAD_RGMII_RD2__GPIO_6_28,          /* MODE2 */
 	MX6Q_PAD_RGMII_RD3__GPIO_6_29,          /* MODE3 */
-	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
+	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
 };
 
 static int ksz9021rn_phy_fixup(struct phy_device *dev)
@@ -98,21 +90,20 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 
 static int udoo_ksz9021rn_setup(void)
 {
+	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
+		   return 0;
+
 	mxc_iomux_v3_setup_multiple_pads(udoo_enet_gpio_pads_1,
 				  ARRAY_SIZE(udoo_enet_gpio_pads_1));
 
 	gpio_direction_output(IMX_GPIO_NR(2, 31) , 1); /* Power on enet */
 
 	/* MODE strap-in pins: advertise all capabilities */
-	gpio_direction_output(185, 1); /* GPIO 6-25 */
-	gpio_direction_output(187, 1); /* GPIO 6-27 */
-	gpio_direction_output(188, 1); /* GPIO 6-28*/
-	gpio_direction_output(189, 1); /* GPIO 6-29 */
-
-	mdelay(10);
-
-	/* Enable 125 MHz clock output */
-	gpio_direction_output(184, 1); /* GPIO 6-24 */
+	gpio_direction_output(IMX_GPIO_NR(6, 24), 1);
+	gpio_direction_output(IMX_GPIO_NR(6, 25), 1);
+	gpio_direction_output(IMX_GPIO_NR(6, 27), 1);
+	gpio_direction_output(IMX_GPIO_NR(6, 28), 1);
+	gpio_direction_output(IMX_GPIO_NR(6, 29), 1);
 
 	mdelay(100);
 
diff --git a/arch/arm/dts/imx6qdl-udoo.dtsi b/arch/arm/dts/imx6qdl-udoo.dtsi
index 80ab2f7..8080235 100644
--- a/arch/arm/dts/imx6qdl-udoo.dtsi
+++ b/arch/arm/dts/imx6qdl-udoo.dtsi
@@ -61,6 +61,13 @@
 	};
 };
 
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-reset-gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
 &i2c1 {
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
@@ -80,6 +87,10 @@
 			>;
 		};
 
+        pinctrl_enet: enetgrp {
+            fsl,pins = <MX6QDL_ENET_PINGRP_RGMII_MD(0x1b0b0, 0x1b0b0)>;
+        };
+
 		pinctrl_i2c1: i2c1grp {
 			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
 		};
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
