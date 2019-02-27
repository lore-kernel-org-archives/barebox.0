Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gypie-0002gP-GD
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 03:17:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id v21so7253112pfm.12
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 19:17:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 19:16:57 -0800
Message-Id: <20190227031657.19896-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190227031657.19896-1-andrew.smirnov@gmail.com>
References: <20190227031657.19896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/7] ARM: imx8mq-zii-ultra: Add USB related nodes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add nodes for exposed USB ports as well as USB hub connected to one of
them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts |  4 +++
 arch/arm/dts/imx8mq-zii-ultra.dtsi     | 34 ++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
index b2b3a560b..78280029b 100644
--- a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
+++ b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
@@ -37,3 +37,7 @@
 		>;
 	};
 };
+
+&usb_hub {
+	port-swap=<0x01>;
+};
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 83d57916e..d46a26d81 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -226,6 +226,16 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
+
+	usb_hub: usb2513b@2c {
+		compatible = "microchip,usb2513b";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb2513b>;
+		#address-cells=<1>;
+		#size-cells=<1>;
+		reg = <0x2c>;
+		reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &i2c4 {
@@ -312,6 +322,24 @@
 	};
 };
 
+&usb_dwc3_0 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
@@ -426,6 +454,12 @@
 		>;
 	};
 
+	pinctrl_usb2513b: usb2513bgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI5_MCLK_GPIO3_IO25    0x41
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
