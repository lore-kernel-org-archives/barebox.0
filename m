Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003aj-88
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:30 +0200
Message-Id: <20180412072231.31207-9-s.hauer@pengutronix.de>
In-Reply-To: <20180412072231.31207-1-s.hauer@pengutronix.de>
References: <20180412072231.31207-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] ARM: i.MX: phycore-som: added and enabled DA9062 PMIC
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index b10530cbcf..c492b2ea47 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -138,6 +138,16 @@
 		compatible = "24c32";
 		reg = <0x50>;
 	};
+
+	pmic@58 {
+		compatible = "dlg,da9062";
+		reg = <0x58>;
+		status = "okay";
+
+		watchdog-priority = <500>;
+		restart-priority = <500>;
+		reset-source-priority = <500>;
+	};
 };
 
 &iomuxc {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
