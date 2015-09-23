Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiWh-0008DI-3v
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:47:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:31 +0200
Message-Id: <1443008851-26596-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
References: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: i.MX: GuF Santaro: Fix panel support
To: Barebox List <barebox@lists.infradead.org>

The backlight enable gpio is in both the ldb node and the panel node.
Remove it from the ldb node where is was unused and fix the polarity
in the panel node. Also make the panel compatible to simple-panel to
let the driver match it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-guf-santaro.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 4db9071..27f538a 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -60,9 +60,9 @@
 	};
 
 	panel {
-		compatible = "unknown,the-display-on-the-garz-fricke-santaro";
+		compatible = "simple-panel";
 		backlight = <&backlight>;
-		enable-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
+		enable-gpios = <&gpio5 21 GPIO_ACTIVE_HIGH>;
 
 		port {
 			panel_in: endpoint {
@@ -515,7 +515,6 @@
 		status = "okay";
 		fsl,data-mapping = "spwg";
 		fsl,data-width = <18>;
-		gpios = <&gpio5 21 GPIO_ACTIVE_HIGH>;
 
 		display-timings {
 			timing0: 800x480 {
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
