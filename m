Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEI-0007hx-Jv
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:23 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-W4
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:54 +0100
Message-Id: <1389118376-1740-8-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1389118376-1740-1-git-send-email-l.stach@pengutronix.de>
References: <1389118376-1740-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 08/10] ARM: imx6: update DMO RealQ7 DT
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6q-dmo-realq7.dts | 34 ++++++++++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6q-dmo-realq7.dts b/arch/arm/dts/imx6q-dmo-realq7.dts
index 5057c0b..f713947 100644
--- a/arch/arm/dts/imx6q-dmo-realq7.dts
+++ b/arch/arm/dts/imx6q-dmo-realq7.dts
@@ -116,7 +116,7 @@
 
 &fec {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_1>;
+	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
 	phy-reset-gpios = <&gpio3 23 0>;
 	status = "okay";
@@ -294,6 +294,10 @@
 				MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA 0x1b0b1
 			>;
 		};
+		
+		pinctrl_uart2_1: uart2grp-1 {
+			fsl,pins = <MX6QDL_UART2_PINGRP1>;
+		};
 	};
 
 	pfuze {
@@ -329,6 +333,28 @@
 			>;
 		};
 	};
+	
+	enet {
+		pinctrl_enet: enetgrp {
+			fsl,pins = <MX6QDL_ENET_PINGRP1>;
+		};
+	};
+
+	usb {
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <MX6QDL_USBOTG_PINGRP1>;
+		};
+	};
+
+	usdhc {
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <MX6QDL_USDHC4_PINGRP_D8>;
+		};
+	};
 };
 
 &sata {
@@ -356,21 +382,21 @@
 &usbotg {
 	vbus-supply = <&reg_usb_otg_vbus>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg_1>;
+	pinctrl-0 = <&pinctrl_usbotg>;
 	disable-over-current;
 	status = "okay";
 };
 
 &usdhc3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	pinctrl-0 = <&pinctrl_usdhc3>;
 	vmmc-supply = <&reg_3p3v>;
 	status = "okay";
 };
 
 &usdhc4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4_1>;
+	pinctrl-0 = <&pinctrl_usdhc4>;
 	vmmc-supply = <&reg_3p3v>;
 	non-removable;
 	bus-width = <8>;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
