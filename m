Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1Me-0001Fo-4o
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 08:02:10 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Thu, 18 Jul 2019 10:01:59 +0200
Message-Id: <1563436921-362991-2-git-send-email-m.otto@phytec.de>
In-Reply-To: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
References: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v3 2/4] imx6: added fit image signature to the devicetree for
 PHYTEC boards
To: barebox@lists.infradead.org

the barebox checks the signed FIT-Image with a Public Key, which is stored
for the PHYTEC i.MX6 boards in the device tree

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v3:
     - move #if after the existing /dtc-v1/ and drop else after review 
     by Ahmad Fatoum
Changes in v2:
     - no changes, was Patch 4/4 in v1
---
 arch/arm/dts/imx6dl-phytec-pbab01.dts           | 4 +++-
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts   | 3 +++
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 4 +++-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts | 4 +++-
 arch/arm/dts/imx6q-phytec-pbaa03.dts            | 3 +++
 arch/arm/dts/imx6q-phytec-pbab01.dts            | 3 +++
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts    | 3 +++
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts    | 3 +++
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 4 +++-
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  | 4 +++-
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts | 3 +++
 arch/arm/dts/imx6s-phytec-pbab01.dts            | 4 +++-
 arch/arm/dts/imx6ul-phytec-phycore-som.dts      | 4 +++-
 arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts  | 4 +++-
 arch/arm/dts/imx6ull-phytec-phycore-som.dts     | 4 +++-
 15 files changed, 45 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
index d10fbf6..4fe3c30 100644
--- a/arch/arm/dts/imx6dl-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -10,7 +10,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6dl-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
index 3d1069a..430745f 100644
--- a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
@@ -10,6 +10,9 @@
  */
 
 /dts-v1/;
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6s-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-phyboard-subra.dtsi"
 
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index e602b77..dfa91ab 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -11,7 +11,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 77f1434..3127b82 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -10,7 +10,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-pbaa03.dts
index 4724a02..5216a2d 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
@@ -10,6 +10,9 @@
  */
 
 /dts-v1/;
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6q-phytec-pcaaxl3.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
index 2f816dd..91562a2 100644
--- a/arch/arm/dts/imx6q-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -10,6 +10,9 @@
  */
 
 /dts-v1/;
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6q-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
index 1c4a785..d97c7f1 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
@@ -10,6 +10,9 @@
  */
 
 /dts-v1/;
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6q-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
index 561e985..4986111 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
@@ -11,6 +11,9 @@
  */
 
 /dts-v1/;
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6q-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-phyboard-subra.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 94a7038..ff30f4d 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -10,7 +10,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 6d82ec3..114665d 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -10,7 +10,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 437457c..1f39fb3 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -11,6 +11,9 @@
  */
 
 /dts-v1/;
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6qp.dtsi>
 #include "imx6qdl-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6s-phytec-pbab01.dts b/arch/arm/dts/imx6s-phytec-pbab01.dts
index 1cb5a23..516d20f 100644
--- a/arch/arm/dts/imx6s-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6s-phytec-pbab01.dts
@@ -10,7 +10,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include "imx6s-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index 6d18767..bdc3a00 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -11,7 +11,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
index 94a7830..7d3e780 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
index 4d73010..d35d1ad 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
@@ -11,7 +11,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
