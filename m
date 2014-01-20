Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5Epu-0007Ed-Rb
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 13:24:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 14:23:55 +0100
Message-Id: <1390224236-11032-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
References: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: dts: i.MX53: tqma53: Add barebox specifics
To: barebox@lists.infradead.org

- add chosen node with
  - environment
  - linux,stdout-path
- add dsr value to eMMC
- add provide-mac-address property to iim node

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53-mba53.dts   | 17 +++++++++++++++++
 arch/arm/dts/imx53-tqma53.dtsi | 15 ++++++++++++++-
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index a630902..43bb12c 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -17,6 +17,16 @@
 	model = "TQ MBa53 starter kit";
 	compatible = "tq,mba53", "tq,tqma53", "fsl,imx53";
 
+	chosen {
+		linux,stdout-path = &uart2;
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &esdhc2, "partname:environment";
+			status = "disabled";
+		};
+	};
+
 	reg_backlight: fixed@0 {
 		compatible = "regulator-fixed";
 		regulator-name = "lcd-supply";
@@ -181,6 +191,13 @@
 
 &esdhc2 {
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "environment";
+		reg = <0x80000 0x80000>;
+	};
 };
 
 &uart3 {
diff --git a/arch/arm/dts/imx53-tqma53.dtsi b/arch/arm/dts/imx53-tqma53.dtsi
index abd72af..b6c86cd 100644
--- a/arch/arm/dts/imx53-tqma53.dtsi
+++ b/arch/arm/dts/imx53-tqma53.dtsi
@@ -16,8 +16,16 @@
 	model = "TQ TQMa53";
 	compatible = "tq,tqma53", "fsl,imx53";
 
+	chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &esdhc3, "partname:boot1";
+			status = "disabled";
+		};
+	};
+
 	memory {
-		reg = <0x70000000 0x40000000>; /* Up to 1GiB */
+		reg = <0x70000000 0x0>; /* Up to 1GiB */
 	};
 
 	regulators {
@@ -64,9 +72,14 @@
 	vmmc-supply = <&reg_3p3v>;
 	non-removable;
 	bus-width = <8>;
+	dsr = <0x100>;
 	status = "okay";
 };
 
+&iim {
+	barebox,provide-mac-address = <&fec 1 9>;
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
