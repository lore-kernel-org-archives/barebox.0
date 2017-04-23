Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2LTT-00034r-E6
 for barebox@lists.infradead.org; Sun, 23 Apr 2017 17:39:11 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 23 Apr 2017 19:37:39 +0200
Message-Id: <1492969061-12273-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH v2 1/3] ARM: i.MX50: Add imx50.dtsi as workaround
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The upstream imx50.dtsi is missing the usbphy and usbmisc nodes.
Furthermore, the clock property values for the two existing usb
instances (usbotg and usbh1) is set to a clock which is not present
on the imx50.
Note that usbh2 and usbh3 do not exist on the imx50.

Fix imx50.dtsi to get the usb peripherial mode via DT running,
until imx50.dtsi is fixed upstream.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/dts/imx50.dtsi | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 arch/arm/dts/imx50.dtsi

diff --git a/arch/arm/dts/imx50.dtsi b/arch/arm/dts/imx50.dtsi
new file mode 100644
index 0000000..8737d4f
--- /dev/null
+++ b/arch/arm/dts/imx50.dtsi
@@ -0,0 +1,40 @@
+#include <arm/imx50.dtsi>
+
+/ {
+	soc {
+		aips@50000000 { /* AIPS1 */
+			usbphy0: usbphy@0 {
+				compatible = "usb-nop-xceiv";
+				clocks = <&clks IMX5_CLK_USB_PHY1_GATE>;
+				clock-names = "main_clk";
+				status = "okay";
+			};
+
+			usbphy1: usbphy@1 {
+				compatible = "usb-nop-xceiv";
+				clocks = <&clks IMX5_CLK_USB_PHY2_GATE>;
+				clock-names = "main_clk";
+				status = "okay";
+			};
+
+			usbmisc: usbmisc@53f80800 {
+				#index-cells = <1>;
+				compatible = "fsl,imx53-usbmisc";
+				reg = <0x53f80800 0x200>;
+				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
+			};
+		};
+	};
+};
+
+&usbotg {
+	clocks = <&clks IMX5_CLK_USBOH3_GATE>;
+	fsl,usbmisc = <&usbmisc 0>;
+	fsl,usbphy = <&usbphy0>;
+};
+
+&usbh1 {
+	clocks = <&clks IMX5_CLK_USBOH3_GATE>;
+	fsl,usbmisc = <&usbmisc 0>;
+	fsl,usbphy = <&usbphy0>;
+};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
