Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUZIH-0001nz-GH
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 15:40:59 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 5 Dec 2018 16:40:35 +0100
Message-Id: <1544024437-35189-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 1/3] ARM: dts: phyCORE-i.MX 6UL: Enable USB host port
To: barebox@lists.infradead.org

The phyBOARD-Segin baseboard of the phyCORE-i.MX 6UL features a USB
type A connector on the second USB OTG port of the i.MX 6UL. So enable this
port as a host port.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dts  | 4 ++++
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index 73f7dbe9a6b3..509424347082 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -39,3 +39,7 @@
 &usdhc1 {
 	status = "okay";
 };
+
+&usbotg2 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 2504c9729dd1..05bf18d6f1b2 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -89,6 +89,12 @@
 	status = "disabled";
 };
 
+&usbotg2 {
+	dr_mode = "host";
+	disable-over-current;
+	status = "disabled";
+};
+
 &usdhc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
