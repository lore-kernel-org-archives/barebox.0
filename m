Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL0bL-00038v-TH
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 08:58:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2020 10:58:09 +0200
Message-Id: <20200923085809.24740-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: dts: imx8mq: Use ddr controller node from upstream
To: Barebox List <barebox@lists.infradead.org>

The upstream dtsi now has a ddr controller node, so no need to duplicate
anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx8mq-ddrc.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/dts/imx8mq-ddrc.dtsi b/arch/arm/dts/imx8mq-ddrc.dtsi
index 64826b0373..1df39151a1 100644
--- a/arch/arm/dts/imx8mq-ddrc.dtsi
+++ b/arch/arm/dts/imx8mq-ddrc.dtsi
@@ -6,12 +6,5 @@
 / {
 
 	/delete-node/ memory@40000000;
-
-	soc@0 {
-		ddrc@3d400000 {
-			compatible = "fsl,imx8mq-ddrc";
-			reg = <0x3d400000 0x400000>;
-		};
-	};
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
