Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RUn-0007dJ-J8
 for barebox@lists.infradead.org; Wed, 21 Aug 2019 14:21:58 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Wed, 21 Aug 2019 16:21:45 +0200
Message-Id: <1566397308-450229-2-git-send-email-m.otto@phytec.de>
In-Reply-To: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
References: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v4 2/5] imx6: added fit image signature to the devicetree for
 PHYTEC boards
To: barebox@lists.infradead.org

the barebox checks the signed FIT-Image with a Public Key, which is stored
for the PHYTEC i.MX6 boards in the device tree

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v4:
    - remove and add files, because dts files changes from version
    older barebox version
Changes in v3:
    - move #if after the existing /dtc-v1/ and drop else after review
    by Ahmad Fatoum           
Changes in v2:                                                          
    - no changes, was Patch 4/4 in v1
---
 arch/arm/dts/imx6dl-phytec-pbab01.dts               | 4 +++-
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts       | 3 +++
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts     | 4 +++-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts  | 4 +++-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts  | 4 +++-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts     | 4 +++-
 arch/arm/dts/imx6q-phytec-pbaa03.dts                | 3 +++
 arch/arm/dts/imx6q-phytec-pbab01.dts                | 3 +++
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts        | 3 +++
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts        | 3 +++
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts      | 4 +++-
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts      | 4 +++-
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts     | 3 +++
 arch/arm/dts/imx6s-phytec-pbab01.dts                | 4 +++-
 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts     | 4 +++-
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts    | 4 +++-
 arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts | 4 +++-
 arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts    | 4 +++-
 18 files changed, 54 insertions(+), 12 deletions(-)

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
index 21cbb5f..25d73ce 100644
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
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
index b8efb95..a6b0e94 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
index 4d38d16..195c3ed 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
@@ -5,7 +5,9 @@
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
index 3ad3723..dfc33e4 100644
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
index 7a86d5b..268b1cd 100644
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
index 96d1de2..d138c41 100644
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
 
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
index 67478e2..c8d43c5 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-state.dtsi"
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
index aa162cc..2201b4c 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
index e6c588b..9c912df 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
index a5fa3e0..224e853 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-state.dtsi"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
