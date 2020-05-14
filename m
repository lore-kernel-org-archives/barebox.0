Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDXE-0007PY-Bq
 for barebox@lists.infradead.org; Thu, 14 May 2020 13:04:27 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Thu, 14 May 2020 15:04:21 +0200
Message-Id: <1589461461-59875-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] ARM: dts: imx6: phycard: remove baseboard compatible
To: barebox@lists.infradead.org

This devicetree isn't baseboard-specific, so keep it compatible at
SOM-level.

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 arch/arm/dts/imx6q-phytec-phycard.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-phytec-phycard.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
index c06461c..b0e47e9 100644
--- a/arch/arm/dts/imx6q-phytec-phycard.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -16,7 +16,7 @@
 
 / {
 	model = "PHYTEC phyCARD-i.MX6 Quad";
-	compatible = "phytec,imx6q-pbaa03", "phytec,imx6q-pcaaxl3", "fsl,imx6q";
+	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
 		stdout-path = &uart3;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
