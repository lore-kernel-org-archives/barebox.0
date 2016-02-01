Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22e.google.com ([2607:f8b0:400e:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ7Uk-0007PX-9L
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 05:57:51 +0000
Received: by mail-pf0-x22e.google.com with SMTP id x125so77979014pfb.0
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 21:57:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 21:57:14 -0800
Message-Id: <1454306234-2299-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [RFC 2/2] arm/dts: i.MX6: Use generic MAC address mapper
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use generic MAC address mapper infrastructure instead of custom driver
OCOTP driver bindings to specify OCOTP as a source of MAC address for
'fec' interfaces.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Note: imx6sx-sdb.dts was not converted in the patch because it
specifies second MAC source as <&ocotp 0x632> which is an offset that
due to limitations of imx6_ocotp_cdev_read cannot be read.

I plan to include patches to fix the issue above in next versions of
this patchset

 arch/arm/dts/imx6dl-hummingboard.dts         | 11 ++++++++---
 arch/arm/dts/imx6dl-tx6u-801x.dts            | 13 +++++++++----
 arch/arm/dts/imx6dl-wandboard.dts            | 11 ++++++++---
 arch/arm/dts/imx6q-hummingboard.dts          | 11 ++++++++---
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi       | 13 +++++++++----
 arch/arm/dts/imx6q-wandboard.dts             | 11 ++++++++---
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi      | 11 ++++++++---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi         | 13 +++++++++----
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi      | 14 ++++++++++----
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 13 +++++++++----
 arch/arm/dts/imx6qdl-sabrelite.dtsi          | 13 +++++++++----
 arch/arm/dts/imx6qdl-sabresd.dtsi            | 11 +++++++++--
 arch/arm/dts/imx6qdl-tqma6x.dtsi             | 15 +++++++++++----
 arch/arm/dts/imx6s-riotboard.dts             | 13 +++++++++----
 14 files changed, 124 insertions(+), 49 deletions(-)

diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 2314965..e47ccd5 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -17,10 +17,15 @@
 			device-path = &usdhc2, "partname:barebox-environment";
 		};
 	};
-};
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &usdhc2 {
diff --git a/arch/arm/dts/imx6dl-tx6u-801x.dts b/arch/arm/dts/imx6dl-tx6u-801x.dts
index a480408..9ebc31f 100644
--- a/arch/arm/dts/imx6dl-tx6u-801x.dts
+++ b/arch/arm/dts/imx6dl-tx6u-801x.dts
@@ -13,6 +13,15 @@
 			device-path = &gpmi, "partname:barebox-environment";
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &gpmi {
@@ -59,7 +68,3 @@
 &fec {
 	phy-reset-duration = <22>;
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index a867400..ff9904d 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -15,10 +15,15 @@
 	memory {
 		reg = <0x0 0x0>;
 	};
-};
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &usdhc3 {
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index e1d2fa8..8cc1218 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -17,10 +17,15 @@
 			device-path = &usdhc2, "partname:barebox-environment";
 		};
 	};
-};
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &usdhc2 {
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 0522465..f379517 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -29,6 +29,15 @@
 			status = "disabled";
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &i2c1 {
@@ -160,10 +169,6 @@
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index 26d8a00..357fdfd 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -15,10 +15,15 @@
 	memory {
 		reg = <0x0 0x0>;
 	};
-};
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &usdhc3 {
diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index 5c7bcd3..4fdfff1 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -9,10 +9,15 @@
 			device-path = &usdhc4, "partname:boot1";
 		};
 	};
-};
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &usbh1 {
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 8fcd4e4..e9c64d9 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -23,6 +23,15 @@
 			device-path = &flash, "partname:barebox-environment";
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &flash {
@@ -40,10 +49,6 @@
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usbh1 {
 	phy_type = "utmi";
 	dr_mode = "host";
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index b79ce2c..6d4d067 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -54,6 +54,16 @@
 			status = "disabled";
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
+
 };
 
 &ecspi3 {
@@ -170,10 +180,6 @@
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 2a975d1..444d707 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -33,6 +33,15 @@
 			status = "disabled";
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &ecspi1 {
@@ -227,10 +236,6 @@
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index d5a6ff4..b89e60c 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -23,6 +23,15 @@
 			device-path = &flash, "partname:barebox-environment";
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &flash {
@@ -40,10 +49,6 @@
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &usbh1 {
 	phy_type = "utmi";
 	dr_mode = "host";
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 32318cf..5f36d1d 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -12,8 +12,15 @@
 
 #include <arm/imx6qdl-sabresd.dtsi>
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
+/ {
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &usbh1 {
diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
index f0b1a0d..f8a66a6 100644
--- a/arch/arm/dts/imx6qdl-tqma6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
@@ -9,6 +9,17 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+/ {
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
+};
+
 &ecspi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi1>;
@@ -91,10 +102,6 @@
 	};
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index e14363f..c4eda90 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -57,6 +57,15 @@
 			regulator-always-on;
 		};
 	};
+
+	mac-address-map {
+		compatible = "barebox,mac-address-map";
+
+		nic@0 {
+			network-interface = <&fec>;
+			mac-location = <&ocotp 0x88>;
+		};
+	};
 };
 
 &iomuxc {
@@ -389,7 +398,3 @@
 	pinctrl-0 = <&pinctrl_i2c4_2>;
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
