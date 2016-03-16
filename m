Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2E9-0007b8-Mw
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:30 +0000
Received: by mail-pf0-x231.google.com with SMTP id x3so56147246pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:36 -0700
Message-Id: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/16] i.MX6: dts: Include local .dtsi's last
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make sure that Barebox specific .dtsi files are included after .dtsi
files imported from Linux kernel. This way those local .dtsi files can
reference phandles defined in Linux kernel files.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6dl-cm-fx6.dts           | 2 +-
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts | 2 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts   | 2 +-
 arch/arm/dts/imx6dl-nitrogen6x.dts       | 2 +-
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi   | 2 +-
 arch/arm/dts/imx6dl-sabrelite.dts        | 2 +-
 arch/arm/dts/imx6dl-tqma6s.dtsi          | 2 +-
 arch/arm/dts/imx6s-phytec-pfla02.dtsi    | 2 +-
 arch/arm/dts/imx6s-riotboard.dts         | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/imx6dl-cm-fx6.dts b/arch/arm/dts/imx6dl-cm-fx6.dts
index 0d96b46..cc426e2 100644
--- a/arch/arm/dts/imx6dl-cm-fx6.dts
+++ b/arch/arm/dts/imx6dl-cm-fx6.dts
@@ -12,8 +12,8 @@
  */
 
 /dts-v1/;
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-cm-fx6.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
index bee4c76..b6df37f 100644
--- a/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
+++ b/arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
@@ -14,8 +14,8 @@
 /dts-v1/;
 #endif
 
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-dfi-fs700-m60.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 592358f..f272e78 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 
 / {
 	model = "ELTEC HiPerCam";
diff --git a/arch/arm/dts/imx6dl-nitrogen6x.dts b/arch/arm/dts/imx6dl-nitrogen6x.dts
index 3ac9ff3..50267b1 100644
--- a/arch/arm/dts/imx6dl-nitrogen6x.dts
+++ b/arch/arm/dts/imx6dl-nitrogen6x.dts
@@ -12,8 +12,8 @@
  */
 
 /dts-v1/;
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
index e0541e0..d951c0b 100644
--- a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
@@ -9,8 +9,8 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-sabrelite.dts b/arch/arm/dts/imx6dl-sabrelite.dts
index 907ed28..849bcdd 100644
--- a/arch/arm/dts/imx6dl-sabrelite.dts
+++ b/arch/arm/dts/imx6dl-sabrelite.dts
@@ -11,8 +11,8 @@
  */
 
 /dts-v1/;
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-sabrelite.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6dl-tqma6s.dtsi b/arch/arm/dts/imx6dl-tqma6s.dtsi
index 23081ed..63459ce 100644
--- a/arch/arm/dts/imx6dl-tqma6s.dtsi
+++ b/arch/arm/dts/imx6dl-tqma6s.dtsi
@@ -9,8 +9,8 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-tqma6x.dtsi"
 
 &iomuxc {
diff --git a/arch/arm/dts/imx6s-phytec-pfla02.dtsi b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
index 25af12f..7ef27fb 100644
--- a/arch/arm/dts/imx6s-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
@@ -9,8 +9,8 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 #include "imx6qdl-phytec-pfla02.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index e14363f..3d0a930 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -6,8 +6,8 @@
  */
 /dts-v1/;
 
-#include "imx6dl.dtsi"
 #include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
 
 / {
 	model = "RIoTboard Solo";
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
