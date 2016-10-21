Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxWOr-0001uy-AN
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 09:46:07 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 46737A002C5
 for <barebox@lists.infradead.org>; Fri, 21 Oct 2016 11:46:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 21 Oct 2016 11:45:40 +0200
Message-Id: <1477043141-27884-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/2] ARM: dts: am33xx: Make am33xx-strip.dtsi independent
To: barebox@lists.infradead.org

am33xx-strip.dtsi was used to remove unused nodes in the MLO device tree.
It always required the am33xx.dtsi include. But if we add aliases to the
am33xx.dtsi, where the nodes are beeing deleted in the am33xx-strip.dtsi
we get compile errors. So made am33xx-strip.dtsi independent from am33xx.dtsi
and renamed it to am33xx-mlo.dtsi.

Also added spi0 alias to am33xx-mlo.dtsi.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-bone-common.dts                 | 3 +--
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts      | 3 +--
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts      | 3 +--
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts      | 3 +--
 arch/arm/dts/{am33xx-strip.dtsi => am33xx-mlo.dtsi} | 9 ++++++++-
 5 files changed, 12 insertions(+), 9 deletions(-)
 rename arch/arm/dts/{am33xx-strip.dtsi => am33xx-mlo.dtsi} (87%)

diff --git a/arch/arm/dts/am335x-bone-common.dts b/arch/arm/dts/am335x-bone-common.dts
index 0488cbe..63962df 100644
--- a/arch/arm/dts/am335x-bone-common.dts
+++ b/arch/arm/dts/am335x-bone-common.dts
@@ -7,8 +7,7 @@
  * all we need for the MLO
  */
 
-#include "am33xx.dtsi"
-#include "am33xx-strip.dtsi"
+#include "am33xx-mlo.dtsi"
 #include "am33xx-clocks-strip.dtsi"
 #include "am335x-bone-common.dtsi"
 
diff --git a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
index a1755fd..817093b 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
@@ -7,9 +7,8 @@
  */
 /dts-v1/;
 
-#include "am33xx.dtsi"
+#include "am33xx-mlo.dtsi"
 #include "am335x-phytec-phycard-som.dtsi"
-#include "am33xx-strip.dtsi"
 #include "am33xx-clocks-strip.dtsi"
 
 / {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
index f7bc462..817b672 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
@@ -7,9 +7,8 @@
  */
 /dts-v1/;
 
-#include "am33xx.dtsi"
+#include "am33xx-mlo.dtsi"
 #include "am335x-phytec-phycore-som.dtsi"
-#include "am33xx-strip.dtsi"
 #include "am33xx-clocks-strip.dtsi"
 
 / {
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
index e848a29..cf36c4c 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts
@@ -7,9 +7,8 @@
  */
 /dts-v1/;
 
-#include "am33xx.dtsi"
+#include "am33xx-mlo.dtsi"
 #include "am335x-phytec-phyflex-som.dtsi"
-#include "am33xx-strip.dtsi"
 #include "am33xx-clocks-strip.dtsi"
 
 / {
diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-mlo.dtsi
similarity index 87%
rename from arch/arm/dts/am33xx-strip.dtsi
rename to arch/arm/dts/am33xx-mlo.dtsi
index 2943fd1..36f137b 100644
--- a/arch/arm/dts/am33xx-strip.dtsi
+++ b/arch/arm/dts/am33xx-mlo.dtsi
@@ -6,12 +6,19 @@
  * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation.
  */
+#include <arm/am33xx.dtsi>
 
 / {
 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		mmc0 = &mmc1;
+		mmc1 = &mmc2;
+		spi0 = &spi0;
 		/delete-property/ i2c1;
 		/delete-property/ i2c2;
-		/delete-property/ mmc2;
 		/delete-property/ d_can0;
 		/delete-property/ d_can1;
 	};
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
