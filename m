Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr0zQ-0002DM-Ka
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 09:56:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 10:55:54 +0100
Message-Id: <1445939755-22889-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1445939755-22889-1-git-send-email-s.hauer@pengutronix.de>
References: <1445939755-22889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX6dl: dts: include arm/imx6dl.dtsi from board
 files
To: Barebox List <barebox@lists.infradead.org>

Otherwise boards cannot include board files from the kernel dts
without getting the file ordering wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6dl-cm-fx6.dts           | 1 +
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts | 1 +
 arch/arm/dts/imx6dl-eltec-hipercam.dts   | 1 +
 arch/arm/dts/imx6dl-nitrogen6x.dts       | 1 +
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi   | 1 +
 arch/arm/dts/imx6dl-sabrelite.dts        | 1 +
 arch/arm/dts/imx6dl-tqma6s.dtsi          | 1 +
 arch/arm/dts/imx6dl.dtsi                 | 1 -
 arch/arm/dts/imx6s-phytec-pfla02.dtsi    | 1 +
 arch/arm/dts/imx6s-riotboard.dts         | 1 +
 10 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6dl-cm-fx6.dts b/arch/arm/dts/imx6dl-cm-fx6.dts
index d33d14c..0d96b46 100644
--- a/arch/arm/dts/imx6dl-cm-fx6.dts
+++ b/arch/arm/dts/imx6dl-cm-fx6.dts
@@ -13,6 +13,7 @@
 
 /dts-v1/;
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-cm-fx6.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
index 36ea00b..bee4c76 100644
--- a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
+++ b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
@@ -15,6 +15,7 @@
 #endif
 
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-dfi-fs700-m60.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 166f8f1..592358f 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -1,6 +1,7 @@
 /dts-v1/;
 
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 
 / {
 	model = "ELTEC HiPerCam";
diff --git a/arch/arm/dts/imx6dl-nitrogen6x.dts b/arch/arm/dts/imx6dl-nitrogen6x.dts
index 5f4d33c..3ac9ff3 100644
--- a/arch/arm/dts/imx6dl-nitrogen6x.dts
+++ b/arch/arm/dts/imx6dl-nitrogen6x.dts
@@ -13,6 +13,7 @@
 
 /dts-v1/;
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-nitrogen6x.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
index 47154d5..e0541e0 100644
--- a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
@@ -10,6 +10,7 @@
  */
 
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-sabrelite.dts b/arch/arm/dts/imx6dl-sabrelite.dts
index 2de0447..907ed28 100644
--- a/arch/arm/dts/imx6dl-sabrelite.dts
+++ b/arch/arm/dts/imx6dl-sabrelite.dts
@@ -12,6 +12,7 @@
 
 /dts-v1/;
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-sabrelite.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-tqma6s.dtsi b/arch/arm/dts/imx6dl-tqma6s.dtsi
index b2cbb29..23081ed 100644
--- a/arch/arm/dts/imx6dl-tqma6s.dtsi
+++ b/arch/arm/dts/imx6dl-tqma6s.dtsi
@@ -10,6 +10,7 @@
  */
 
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-tqma6x.dtsi"
 
 &iomuxc {
diff --git a/arch/arm/dts/imx6dl.dtsi b/arch/arm/dts/imx6dl.dtsi
index 4daf040..5b257db 100644
--- a/arch/arm/dts/imx6dl.dtsi
+++ b/arch/arm/dts/imx6dl.dtsi
@@ -1,2 +1 @@
 #include "imx6qdl.dtsi"
-#include <arm/imx6dl.dtsi>
diff --git a/arch/arm/dts/imx6s-phytec-pfla02.dtsi b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
index d84fa4f..25af12f 100644
--- a/arch/arm/dts/imx6s-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
@@ -10,6 +10,7 @@
  */
 
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 #include "imx6qdl-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index a522dd9..e14363f 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include "imx6dl.dtsi"
+#include <arm/imx6dl.dtsi>
 
 / {
 	model = "RIoTboard Solo";
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
