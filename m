Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2Gpc-0001yM-6W
 for barebox@lists.infradead.org; Thu, 25 Jul 2013 08:23:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jul 2013 10:23:05 +0200
Message-Id: <1374740585-21789-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: dts: i.MX6q: cpus/cpu nodes dts updates
To: barebox@lists.infradead.org

Add device_type = "cpu", otherwise a v3.10 kernel boots with only
one CPU enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6q.dtsi b/arch/arm/dts/imx6q.dtsi
index 21e6758..dc54a72 100644
--- a/arch/arm/dts/imx6q.dtsi
+++ b/arch/arm/dts/imx6q.dtsi
@@ -18,6 +18,7 @@
 
 		cpu@0 {
 			compatible = "arm,cortex-a9";
+			device_type = "cpu";
 			reg = <0>;
 			next-level-cache = <&L2>;
 			operating-points = <
@@ -39,18 +40,21 @@
 
 		cpu@1 {
 			compatible = "arm,cortex-a9";
+			device_type = "cpu";
 			reg = <1>;
 			next-level-cache = <&L2>;
 		};
 
 		cpu@2 {
 			compatible = "arm,cortex-a9";
+			device_type = "cpu";
 			reg = <2>;
 			next-level-cache = <&L2>;
 		};
 
 		cpu@3 {
 			compatible = "arm,cortex-a9";
+			device_type = "cpu";
 			reg = <3>;
 			next-level-cache = <&L2>;
 		};
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
