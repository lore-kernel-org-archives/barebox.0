Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX1jm-0001NF-Mt
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 06:41:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 22916A00259
 for <barebox@lists.infradead.org>; Wed,  2 Sep 2015 08:43:18 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 2 Sep 2015 08:38:48 +0200
Message-Id: <1441175928-38242-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1441175928-38242-1-git-send-email-d.schultz@phytec.de>
References: <1441175928-38242-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: Include strip file to Phytec am335x MLOs
To: barebox@lists.infradead.org

This patch disables the clocks in the Phytec am335x MLOs and reduce the MLO
size by 9kb.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts | 1 +
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts | 1 +
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
index f9ed627..a1755fd 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
@@ -10,6 +10,7 @@
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycard-som.dtsi"
 #include "am33xx-strip.dtsi"
+#include "am33xx-clocks-strip.dtsi"
 
 / {
 	model = "Phytec phyCARD AM335x";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
index f70835f..676001b 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
@@ -10,6 +10,7 @@
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycore-som.dtsi"
 #include "am33xx-strip.dtsi"
+#include "am33xx-clocks-strip.dtsi"
 
 / {
 	model = "Phytec phyCORE AM335x";
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
index 736d7ef..e848a29 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
@@ -10,6 +10,7 @@
 #include "am33xx.dtsi"
 #include "am335x-phytec-phyflex-som.dtsi"
 #include "am33xx-strip.dtsi"
+#include "am33xx-clocks-strip.dtsi"
 
 / {
 	model = "Phytec phyFLEX AM335x";
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
