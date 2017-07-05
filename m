Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSggc-0001P9-Mx
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 09:33:32 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Jul 2017 11:33:01 +0200
Message-Id: <20170705093301.7411-2-o.rempel@pengutronix.de>
In-Reply-To: <20170705093301.7411-1-o.rempel@pengutronix.de>
References: <20170705093301.7411-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/2] dts: arm: imx6qdl: provide snvs-lpgpr device
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 dts/src/arm/imx6qdl.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/dts/src/arm/imx6qdl.dtsi b/dts/src/arm/imx6qdl.dtsi
index e426faa9c2..94e9925582 100644
--- a/dts/src/arm/imx6qdl.dtsi
+++ b/dts/src/arm/imx6qdl.dtsi
@@ -769,6 +769,10 @@
 					mask = <0x60>;
 					status = "disabled";
 				};
+
+				snvs_lpgpr: snvs-lpgpr {
+					compatible = "fsl,imx6q-snvs-lpgpr";
+				};
 			};
 
 			epit1: epit@020d0000 { /* EPIT1 */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
