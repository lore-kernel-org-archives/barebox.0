Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCOYe-0005wT-FW
 for barebox@lists.infradead.org; Tue, 07 Jul 2015 08:48:53 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  7 Jul 2015 10:48:29 +0200
Message-Id: <1436258909-29161-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: imx6: do not include arm/imx6q.dtsi from barebox
 imx6q.dtsi
To: barebox@lists.infradead.org

Instead, let each board dts file that needs it include <arm/imx6q.dtsi>
manually before "imx6q.dtsi". This way board dts files that include the
original board dts and include "imxq6.dtsi" on top of that without
disabling all peripherals.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts | 1 +
 arch/arm/dts/imx6q-embedsky-e9.dts      | 1 +
 arch/arm/dts/imx6q-guf-santaro.dts      | 1 +
 arch/arm/dts/imx6q-gw54xx.dts           | 1 +
 arch/arm/dts/imx6q-nitrogen6x.dts       | 1 +
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi  | 1 +
 arch/arm/dts/imx6q-phytec-pfla02.dtsi   | 1 +
 arch/arm/dts/imx6q-sabrelite.dts        | 1 +
 arch/arm/dts/imx6q-sabresd.dts          | 1 +
 arch/arm/dts/imx6q-tqma6q.dtsi          | 1 +
 arch/arm/dts/imx6q-udoo.dts             | 1 +
 arch/arm/dts/imx6q-var-som.dtsi         | 1 +
 arch/arm/dts/imx6q.dtsi                 | 1 -
 13 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts b/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
index 1178e0b..8ecd667 100644
--- a/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
+++ b/arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
@@ -14,6 +14,7 @@
 /dts-v1/;
 #endif
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-dfi-fs700-m60.dtsi"
 
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index ab70d05..4514d4e 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -12,6 +12,7 @@
 
 /dts-v1/;
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6q-embedsky-e9.dtsi"
 
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index e4dc856..d9bc7a5 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -13,6 +13,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-gw54xx.dts b/arch/arm/dts/imx6q-gw54xx.dts
index ab518d6..8113542 100644
--- a/arch/arm/dts/imx6q-gw54xx.dts
+++ b/arch/arm/dts/imx6q-gw54xx.dts
@@ -10,6 +10,7 @@
  */
 
 /dts-v1/;
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-gw54xx.dtsi"
 
diff --git a/arch/arm/dts/imx6q-nitrogen6x.dts b/arch/arm/dts/imx6q-nitrogen6x.dts
index a57866b..d8906e6 100644
--- a/arch/arm/dts/imx6q-nitrogen6x.dts
+++ b/arch/arm/dts/imx6q-nitrogen6x.dts
@@ -12,6 +12,7 @@
  */
 
 /dts-v1/;
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 78c3334..6435ab7 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -9,6 +9,7 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
index 0aec5d0..b1172dc 100644
--- a/arch/arm/dts/imx6q-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -9,6 +9,7 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-pfla02.dtsi"
 
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 96e4688..1ea5abf 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -11,6 +11,7 @@
  */
 
 /dts-v1/;
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-sabrelite.dtsi"
 
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index 867e825..71ca855 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -12,6 +12,7 @@
 
 /dts-v1/;
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-sabresd.dtsi"
 
diff --git a/arch/arm/dts/imx6q-tqma6q.dtsi b/arch/arm/dts/imx6q-tqma6q.dtsi
index 8d257f9..c2382b0 100644
--- a/arch/arm/dts/imx6q-tqma6q.dtsi
+++ b/arch/arm/dts/imx6q-tqma6q.dtsi
@@ -9,6 +9,7 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-tqma6x.dtsi"
 
diff --git a/arch/arm/dts/imx6q-udoo.dts b/arch/arm/dts/imx6q-udoo.dts
index 5c79e92..c8a12a3 100644
--- a/arch/arm/dts/imx6q-udoo.dts
+++ b/arch/arm/dts/imx6q-udoo.dts
@@ -13,6 +13,7 @@
 
 /dts-v1/;
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-udoo.dtsi"
 
diff --git a/arch/arm/dts/imx6q-var-som.dtsi b/arch/arm/dts/imx6q-var-som.dtsi
index bc23242..7926911 100644
--- a/arch/arm/dts/imx6q-var-som.dtsi
+++ b/arch/arm/dts/imx6q-var-som.dtsi
@@ -10,6 +10,7 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q.dtsi b/arch/arm/dts/imx6q.dtsi
index 9f41c0b..c075837 100644
--- a/arch/arm/dts/imx6q.dtsi
+++ b/arch/arm/dts/imx6q.dtsi
@@ -1,5 +1,4 @@
 #include "imx6qdl.dtsi"
-#include <arm/imx6q.dtsi>
 
 / {
 	aliases {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
