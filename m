Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUZIK-0001nz-2a
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 15:41:02 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 5 Dec 2018 16:40:36 +0100
Message-Id: <1544024437-35189-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1544024437-35189-1-git-send-email-s.riedmueller@phytec.de>
References: <1544024437-35189-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 2/3] ARM: dts: phyCORE-i.MX 6UL/ULL: Enable USB OTG on port 1
To: barebox@lists.infradead.org
Cc: Fabian Godehardt <fg@emlix.com>

From: Fabian Godehardt <fg@emlix.com>

Enable USB OTG support on USB OTG port 1 of the phyCORE-i.MX 6UL/ULL.

Signed-off-by: Fabian Godehardt <fg@emlix.com>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dts  |  4 ++++
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 14 ++++++++++++++
 arch/arm/dts/imx6ull-phytec-phycore-som.dts |  4 ++++
 3 files changed, 22 insertions(+)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index 509424347082..6d1876702d1b 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -40,6 +40,10 @@
 	status = "okay";
 };
 
+&usbotg1 {
+	status = "okay";
+};
+
 &usbotg2 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 05bf18d6f1b2..d829fdd6fb29 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -89,6 +89,14 @@
 	status = "disabled";
 };
 
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_otg1>;
+	dr_mode = "otg";
+	disable-over-current;
+	status = "disabled";
+};
+
 &usbotg2 {
 	dr_mode = "host";
 	disable-over-current;
@@ -169,6 +177,12 @@
 			>;
 		};
 
+		pinctrl_usb_otg1: usbotg1grp {
+			fsl,pins = <
+				MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
+			>;
+		};
+
 		pinctrl_usdhc1: usdhc1grp {
 			fsl,pins = <
 				MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
index de04132a02e7..ce631460caea 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
@@ -39,3 +39,7 @@
 &usdhc1 {
 	status = "okay";
 };
+
+&usbotg1 {
+	status = "okay";
+};
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
