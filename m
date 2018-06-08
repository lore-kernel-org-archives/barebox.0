Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRMPa-0002lS-KC
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 18:47:00 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  8 Jun 2018 18:46:50 +0000
Message-Id: <20180608184650.25489-1-akurz@blala.de>
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
Subject: [PATCH] DTS ARM: i.MX50: resolve warning
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

Resolve the warning "node has a unit name, but no reg property".

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/dts/imx50.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx50.dtsi b/arch/arm/dts/imx50.dtsi
index 8737d4f33..c3804cfdc 100644
--- a/arch/arm/dts/imx50.dtsi
+++ b/arch/arm/dts/imx50.dtsi
@@ -3,14 +3,14 @@
 / {
 	soc {
 		aips@50000000 { /* AIPS1 */
-			usbphy0: usbphy@0 {
+			usbphy0: usbphy0 {
 				compatible = "usb-nop-xceiv";
 				clocks = <&clks IMX5_CLK_USB_PHY1_GATE>;
 				clock-names = "main_clk";
 				status = "okay";
 			};
 
-			usbphy1: usbphy@1 {
+			usbphy1: usbphy1 {
 				compatible = "usb-nop-xceiv";
 				clocks = <&clks IMX5_CLK_USB_PHY2_GATE>;
 				clock-names = "main_clk";
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
