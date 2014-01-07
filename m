Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEI-0007hv-Jp
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:22 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-Tq
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:53 +0100
Message-Id: <1389118376-1740-7-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 07/10] ARM: imx6: update GK802 DT
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6q-gk802.dts | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6q-gk802.dts b/arch/arm/dts/imx6q-gk802.dts
index b34a491..7cb06ef 100644
--- a/arch/arm/dts/imx6q-gk802.dts
+++ b/arch/arm/dts/imx6q-gk802.dts
@@ -99,6 +99,22 @@
 			>;
 		};
 	};
+
+	uart {
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <MX6QDL_UART4_PINGRP1>;
+		};
+	};
+
+	usdhc {
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <MX6QDL_USDHC4_PINGRP_D4>;
+		};
+	};
 };
 
 &uart2 {
@@ -107,7 +123,7 @@
 
 &uart4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4_1>;
+	pinctrl-0 = <&pinctrl_uart4>;
 	status = "okay";
 };
 
@@ -130,7 +146,7 @@
 /* External microSD */
 &usdhc3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
 	cd-gpios = <&gpio6 11 0>;
 	vmmc-supply = <&reg_3p3v>;
@@ -140,7 +156,7 @@
 /* Internal microSD */
 &usdhc4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4_2>;
+	pinctrl-0 = <&pinctrl_usdhc4>;
 	bus-width = <4>;
 	vmmc-supply = <&reg_3p3v>;
 	status = "okay";
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
