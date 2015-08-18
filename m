Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZRcna-00047b-MI
 for barebox@lists.infradead.org; Tue, 18 Aug 2015 09:03:15 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 18 Aug 2015 11:02:41 +0200
Message-Id: <1439888561-9841-2-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1439888561-9841-1-git-send-email-p.zabel@pengutronix.de>
References: <1439888561-9841-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: pbab01: align with and include mainline DT
To: barebox@lists.infradead.org

Align with the mainline device tree, include it,
and remove all unchanged nodes and properties.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx6q-phytec-pbab01.dts    |  4 ----
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi | 16 +---------------
 2 files changed, 1 insertion(+), 19 deletions(-)

diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
index 580338d..2f816dd 100644
--- a/arch/arm/dts/imx6q-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -16,8 +16,4 @@
 / {
 	model = "Phytec phyFLEX-i.MX6 Quad Carrier-Board";
 	compatible = "phytec,imx6x-pbab01", "phytec,imx6q-pfla02", "fsl,imx6q";
-
-	chosen {
-		linux,stdout-path = &uart4;
-	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
index 157e130..86ab991 100644
--- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
@@ -9,22 +9,8 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-&fec {
-	status = "okay";
-};
+#include <arm/imx6qdl-phytec-pbab01.dtsi>
 
 &uart1 {
 	status = "okay";
 };
-
-&uart4 {
-	status = "okay";
-};
-
-&usdhc2 {
-	status = "okay";
-};
-
-&usdhc3 {
-	status = "okay";
-};
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
