Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1W4Axo-00047m-Dp
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:30 +0100
Message-Id: <1389971012-22977-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/22] ARM: dts: phycard-i.MX27: Add sdhc2 pinctrl
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx27-phytec-phycard-s-rdk.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
index 0d65023..789ce3f 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
@@ -83,6 +83,10 @@
 			fsl,pins = <MX27_OWIRE1_PINGRP1>;
 		};
 
+		pinctrl_sdhc2: sdhc3grp {
+			fsl,pins = <MX27_SDHC2_PINGRP1>;
+		};
+
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
 				MX27_UART1_PINGRP1
@@ -113,6 +117,8 @@
 };
 
 &sdhci2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sdhc2>;
 	cd-gpios = <&gpio3 29 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
