Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieziO-0004CE-2u
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 10:59:34 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 11 Dec 2019 11:59:20 +0100
Message-Id: <1576061961-153938-6-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
References: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v3 6/7] ARM: dts: imx6: phycard: Use gpio binding constants
To: barebox@lists.infradead.org

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v3:
 - Rebased on latest master
---
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index f17ba7bf808d..892bce1fc0ab 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -4,6 +4,8 @@
  * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	chosen {
 		environment-nand {
@@ -155,7 +157,7 @@
 &usdhc3 {
         pinctrl-names = "default";
         pinctrl-0 = <&pinctrl_usdhc3>;
-        cd-gpios = <&gpio5 22 0>;
+        cd-gpios = <&gpio5 22 GPIO_ACTIVE_HIGH>;
         status = "disabled";
 
 	partitions {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
