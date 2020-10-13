Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSFON-0005kc-JV
 for barebox@lists.infradead.org; Tue, 13 Oct 2020 08:10:44 +0000
From: Cem Tenruh <c.tenruh@phytec.de>
Date: Tue, 13 Oct 2020 10:10:41 +0200
Message-Id: <1602576641-91939-1-git-send-email-c.tenruh@phytec.de>
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
Subject: [PATCH] imx6ul/imx6ull: include imx6ul-phytec-state.dtsi and enable
 state
To: barebox@lists.infradead.org

Signed-off-by: Cem Tenruh <c.tenruh@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts  | 5 +++++
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
index 7d29c32..50ce75f 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
@@ -10,6 +10,7 @@
 #endif
 #include <arm/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-state.dtsi"
 
 / {
 	model = "PHYTEC phyCORE-i.MX6 Ultra Light SOM with eMMC";
@@ -24,6 +25,10 @@
 	status = "okay";
 };
 
+&state {
+        status = "okay";
+};
+
 &uart1 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
index 2201b4c..afd99a3 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
@@ -10,6 +10,7 @@
 #endif
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-state.dtsi"
 
 / {
 	model = "PHYTEC phyCORE-i.MX6 ULL SOM with eMMC";
@@ -24,6 +25,10 @@
 	status = "okay";
 };
 
+&state {
+        status = "okay";
+};
+
 &uart1 {
 	status = "okay";
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
