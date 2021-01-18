Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b9T-0001Xj-13
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:29:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0007nB-Oh
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0000wl-Eu
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:29:19 +0100
Message-Id: <20210118202922.3581-3-m.felsch@pengutronix.de>
In-Reply-To: <20210118202922.3581-1-m.felsch@pengutronix.de>
References: <20210118202922.3581-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/6] ARM: dts: imx6qdl-smarc-samx6i: remove iomuxc hog
To: barebox@lists.infradead.org

Move the muxing into the gpioX nodes so we can get rid of the iomuxc
hog. While on it set the correct mux config and don't rely on the reset
value.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi | 37 +++++++++++++++++---------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
index 363da66ec7..1381a551d0 100644
--- a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
+++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
@@ -129,6 +129,16 @@
 	status = "okay";
 };
 
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio2_hog>;
+};
+
+&gpio6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio6_hog>;
+};
+
 &i2c_pfuze {
 	pfuze100@08 {
 		compatible = "fsl,pfuze100";
@@ -352,18 +362,6 @@
 };
 
 &iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_boot>;
-
-	pinctrl_boot: boot {
-		fsl,pins = <
-			/* GPIOS for version and id detection */
-			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x80000000
-			MX6QDL_PAD_NANDF_WP_B__GPIO6_IO09	0x80000000
-			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x80000000
-		>;
-	};
-
 	pinctrl_flexcan1: flexcan1-smarc {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x80000000
@@ -378,6 +376,21 @@
 		>;
 	};
 
+	pinctrl_gpio2_hog: gpio2-hog {
+		fsl,pins = <
+			/* GPIO for version detection */
+			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0xb0b0
+		>;
+	};
+
+	pinctrl_gpio6_hog: gpio6-hog {
+		fsl,pins = <
+			/* GPIOs for ddr3 size detection */
+			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0xb0b0
+			MX6QDL_PAD_NANDF_WP_B__GPIO6_IO09	0xb0b0
+		>;
+	};
+
 	pinctrl_enet_smarc: fecgrp-smarc {
 		fsl,pins = <
 			MX6QDL_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
