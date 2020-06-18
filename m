Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qK-6H
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:48 +0200
Message-Id: <20200618091102.30150-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/15] ARM: i.MX50: fix renamed node reference
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

There is no /soc/aips@50000000 node upstream any longer as it was
renamed with the 8d158e1a4091 ("dts: update to v5.7-rc1") sync.

Adjust the barebox device tree accordingly. It's likely that this
resulted in barebox v2020.06.0 USB connectivity breakage for the
i.MX50's second USB PHY.

Fixes: 8d158e1a4091 ("dts: update to v5.7-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx50.dtsi | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/arch/arm/dts/imx50.dtsi b/arch/arm/dts/imx50.dtsi
index 68edd37b13be..b5def2e4f67f 100644
--- a/arch/arm/dts/imx50.dtsi
+++ b/arch/arm/dts/imx50.dtsi
@@ -1,22 +1,18 @@
 #include <arm/imx50.dtsi>
 
-/ {
-	soc {
-		aips@50000000 { /* AIPS1 */
-			usbphy1: usbphy@1 {
-				compatible = "usb-nop-xceiv";
-				clocks = <&clks IMX5_CLK_USB_PHY2_GATE>;
-				clock-names = "main_clk";
-				status = "okay";
-			};
+&{/soc/bus@50000000} { /* AIPS1 */
+	usbphy1: usbphy@1 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clks IMX5_CLK_USB_PHY2_GATE>;
+		clock-names = "main_clk";
+		status = "okay";
+	};
 
-			usbmisc: usbmisc@53f80800 {
-				#index-cells = <1>;
-				compatible = "fsl,imx53-usbmisc";
-				reg = <0x53f80800 0x200>;
-				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
-			};
-		};
+	usbmisc: usbmisc@53f80800 {
+		#index-cells = <1>;
+		compatible = "fsl,imx53-usbmisc";
+		reg = <0x53f80800 0x200>;
+		clocks = <&clks IMX5_CLK_USBOH3_GATE>;
 	};
 };
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
