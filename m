Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEI-0007hu-Jo
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:19 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-Pb
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:51 +0100
Message-Id: <1389118376-1740-5-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 05/10] ARM: imx6: update Carrier-1 DTs
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts | 6 +++++-
 arch/arm/dts/imx6qdl-microsom.dtsi        | 6 +++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts b/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
index 88c3ef7..1f13f03 100644
--- a/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
+++ b/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
@@ -51,7 +51,7 @@
 
 &i2c1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1_1>;
+	pinctrl-0 = <&pinctrl_i2c1>;
 
 	/*
 	 * Not fitted on Carrier-1 board... yet
@@ -87,6 +87,10 @@
 				MX6QDL_PAD_GPIO_4__SD2_CD_B    0x1f071
 			>;
 		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
+		};
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-microsom.dtsi b/arch/arm/dts/imx6qdl-microsom.dtsi
index 1d6d56d..85e43bf 100644
--- a/arch/arm/dts/imx6qdl-microsom.dtsi
+++ b/arch/arm/dts/imx6qdl-microsom.dtsi
@@ -58,12 +58,16 @@
 			 */
 			fsl,pins = <MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x13059>;
 		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <MX6QDL_UART1_PINGRP1>;
+		};
 	};
 };
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_1>;
+	pinctrl-0 = <&pinctrl_uart1>;
 	status = "okay";
 };
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
