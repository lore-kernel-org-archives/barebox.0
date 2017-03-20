Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpulX-0003WW-12
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 10:42:21 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 20 Mar 2017 11:41:53 +0100
Message-Id: <20170320104153.28902-5-o.rempel@pengutronix.de>
In-Reply-To: <20170320104153.28902-1-o.rempel@pengutronix.de>
References: <20170320104153.28902-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 4/4] dts: arm: imx6qdl: provide snvs-lpgpr device
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

it will be used with nvmem framewor

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 dts/src/arm/imx6qdl.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/dts/src/arm/imx6qdl.dtsi b/dts/src/arm/imx6qdl.dtsi
index 89b834f3f..5f7a6e226 100644
--- a/dts/src/arm/imx6qdl.dtsi
+++ b/dts/src/arm/imx6qdl.dtsi
@@ -760,6 +760,12 @@
 					mask = <0x60>;
 					status = "disabled";
 				};
+
+				snvs_lpgpr: snvs-lpgpr {
+					compatible = "fsl,imx6q-snvs-lpgpr";
+					regmap = <&snvs>;
+					offset = <0x68>;
+				};
 			};
 
 			epit1: epit@020d0000 { /* EPIT1 */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
