Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Rp-0004xi-Bi
 for barebox@lists.infradead.org; Fri, 24 May 2019 11:33:21 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Fri, 24 May 2019 13:32:58 +0200
Message-Id: <1558697578-69121-4-git-send-email-m.otto@phytec.de>
In-Reply-To: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
References: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH 4/4] imx6: added fit image signature to the devicetree for
 PHYTEC boards
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

the barebox checks the signed FIT-Image with a Public Key, which is stored
for the PHYTEC i.MX6 boards in the device tree

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-pbab01.dts           | 4 ++++
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts   | 5 +++++
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 4 ++++
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts | 4 ++++
 arch/arm/dts/imx6q-phytec-pbaa03.dts            | 5 +++++
 arch/arm/dts/imx6q-phytec-pbab01.dts            | 5 +++++
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts    | 5 +++++
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts    | 5 +++++
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 4 ++++
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  | 4 ++++
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts | 5 +++++
 arch/arm/dts/imx6s-phytec-pbab01.dts            | 4 ++++
 arch/arm/dts/imx6ul-phytec-phycore-som.dts      | 4 ++++
 arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts  | 4 ++++
 arch/arm/dts/imx6ull-phytec-phycore-som.dts     | 4 ++++
 15 files changed, 66 insertions(+)

diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
index d10fbf6..beab52a 100644
--- a/arch/arm/dts/imx6dl-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -9,7 +9,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include "imx6dl-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
index 3d1069a..2abd73d 100644
--- a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
@@ -9,7 +9,12 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
+
 #include "imx6s-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-phyboard-subra.dtsi"
 
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index e602b77..bc3f61c 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -10,7 +10,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 77f1434..7c15f9c 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -9,7 +9,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-pbaa03.dts
index 4724a02..f5130a4 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
@@ -9,7 +9,12 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
+
 #include "imx6q-phytec-pcaaxl3.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
index 2f816dd..9444c36 100644
--- a/arch/arm/dts/imx6q-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -9,7 +9,12 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
+
 #include "imx6q-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
index 1c4a785..39d3bb1 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
@@ -9,7 +9,12 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
+
 #include "imx6q-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
index 561e985..09a4f36 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
@@ -10,7 +10,12 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
+
 #include "imx6q-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-phyboard-subra.dtsi"
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 94a7038..2c37861 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -9,7 +9,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 6d82ec3..570c5af 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -9,7 +9,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 437457c..b7eee65 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -10,7 +10,12 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
+
 #include <arm/imx6qp.dtsi>
 #include "imx6qdl-phytec-phycore-som.dtsi"
 
diff --git a/arch/arm/dts/imx6s-phytec-pbab01.dts b/arch/arm/dts/imx6s-phytec-pbab01.dts
index 1cb5a23..cd2b669 100644
--- a/arch/arm/dts/imx6s-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6s-phytec-pbab01.dts
@@ -9,7 +9,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include "imx6s-phytec-pfla02.dtsi"
 #include "imx6qdl-phytec-pbab01.dtsi"
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index 6d18767..21a1adb 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -10,7 +10,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
index 94a7830..9db0d7d 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
@@ -4,7 +4,11 @@
  * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
index 4d73010..d274141 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
@@ -10,7 +10,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#else
 /dts-v1/;
+#endif
 
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
