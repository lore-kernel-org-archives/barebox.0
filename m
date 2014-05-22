Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WnNRx-0004UR-Gx
 for barebox@lists.infradead.org; Thu, 22 May 2014 07:30:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2014 09:29:39 +0200
Message-Id: <1400743779-30071-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: dts: i.MX53: include loacal imx53.dtsi file
To: barebox@lists.infradead.org

To get the pwm and ipu aliases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53-qsb.dts        | 1 +
 arch/arm/dts/imx53-qsrb.dts       | 1 +
 arch/arm/dts/imx53-voipac-bsb.dts | 1 +
 arch/arm/dts/imx53.dtsi           | 2 --
 4 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
index 0500f0b..773bc0b 100644
--- a/arch/arm/dts/imx53-qsb.dts
+++ b/arch/arm/dts/imx53-qsb.dts
@@ -11,4 +11,5 @@
  */
 
 #include <arm/imx53-qsb.dts>
+#include "imx53.dtsi"
 #include "imx53-qsb-common.dtsi"
diff --git a/arch/arm/dts/imx53-qsrb.dts b/arch/arm/dts/imx53-qsrb.dts
index c47d351..b331278 100644
--- a/arch/arm/dts/imx53-qsrb.dts
+++ b/arch/arm/dts/imx53-qsrb.dts
@@ -11,4 +11,5 @@
  */
 
 #include <arm/imx53-qsrb.dts>
+#include "imx53.dtsi"
 #include "imx53-qsb-common.dtsi"
diff --git a/arch/arm/dts/imx53-voipac-bsb.dts b/arch/arm/dts/imx53-voipac-bsb.dts
index 6cf2d5c..54c8bcd 100644
--- a/arch/arm/dts/imx53-voipac-bsb.dts
+++ b/arch/arm/dts/imx53-voipac-bsb.dts
@@ -10,3 +10,4 @@
  */
 
 #include <arm/imx53-voipac-bsb.dts>
+#include "imx53.dtsi"
diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 8740b6f..96fdd73 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -1,5 +1,3 @@
-#include <arm/imx53.dtsi>
-
 / {
 	aliases {
 		pwm0 = &pwm1;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
