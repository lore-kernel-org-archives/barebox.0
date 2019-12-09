Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieICg-0001ki-IH
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 12:31:56 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 13:31:42 +0100
Message-Id: <1575894703-316604-7-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
References: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2 7/8] ARM: dts: imx6: phycard: Use gpio binding constants
To: barebox@lists.infradead.org

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v2:
 - Added this patch
---
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index de07562c6884..13ffc8ee02ef 100644
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
