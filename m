Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueA8-000215-HM
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C98D8A00459
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:49 +0100
Message-Id: <1446805318-26691-2-git-send-email-s.christ@phytec.de>
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 01/10] ARM: imx6: phycard: use numeric suffix in device tree
To: barebox@lists.infradead.org

Use numeric suffix for 'environment-sd3' in device tree.  This patch
prepares phytec-phycard-imx6 for the SOM unification.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-phycard-imx6/board.c | 2 +-
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx6/board.c b/arch/arm/boards/phytec-phycard-imx6/board.c
index 27b84aa..84224b3 100644
--- a/arch/arm/boards/phytec-phycard-imx6/board.c
+++ b/arch/arm/boards/phytec-phycard-imx6/board.c
@@ -35,7 +35,7 @@ static int phytec_pcaaxl3_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		of_device_enable_path("/chosen/environment-sd");
+		of_device_enable_path("/chosen/environment-sd3");
 		break;
 	default:
 	case BOOTSOURCE_NAND:
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 97cf78a..0522465 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -17,7 +17,7 @@
 	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
-		environment-sd {
+		environment-sd3 {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc3;
 			status = "disabled";
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
