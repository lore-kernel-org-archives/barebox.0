Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4oFH-0003sS-MR
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 14:55:40 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 15 Mar 2019 15:55:37 +0100
Message-Id: <1552661737-33150-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] ARM: dts: mx8mq-phytec-phycore-som: Add watchdog
To: barebox@lists.infradead.org

Add watchdog support for imx8mq-phytec-phycore-som.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx8mq-phytec-phycore-som.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/dts/imx8mq-phytec-phycore-som.dts b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
index de8ed18..736c007 100644
--- a/arch/arm/dts/imx8mq-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
@@ -205,6 +205,13 @@
 	};
 };
 
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
@@ -325,4 +332,10 @@
 			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
 		>;
 	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
+		>;
+	};
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
