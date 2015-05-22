Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YvlmF-0003Gn-6G
 for barebox@lists.infradead.org; Fri, 22 May 2015 12:10:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D6CB0A00345
 for <barebox@lists.infradead.org>; Fri, 22 May 2015 14:11:15 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Fri, 22 May 2015 14:09:15 +0200
Message-Id: <1432296555-48594-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1432296555-48594-1-git-send-email-w.egorov@phytec.de>
References: <1432296555-48594-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: Add strip-am33xx.dtsi to PHYTEC MLOs
To: barebox@lists.infradead.org

This patch will reduce the size of the MLO images.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
index 17d9152..c762ee9 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
@@ -9,6 +9,7 @@
 
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycard-som.dtsi"
+#include "strip-am33xx.dtsi"
 
 / {
 	model = "Phytec phyCARD AM335x";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
index b08a59e..d056212 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
@@ -9,6 +9,7 @@
 
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycore-som.dtsi"
+#include "strip-am33xx.dtsi"
 
 / {
 	model = "Phytec phyCORE AM335x";
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
index 5294ff5..916979b 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
@@ -9,6 +9,7 @@
 
 #include "am33xx.dtsi"
 #include "am335x-phytec-phyflex-som.dtsi"
+#include "strip-am33xx.dtsi"
 
 / {
 	model = "Phytec phyFLEX AM335x";
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
