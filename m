Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0b-0001GO-Kj
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:24:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:21 +0100
Message-Id: <1391178204-20889-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/15] ARM: dts: Karo TX25: add barebox specifics
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx25-karo-tx25.dts | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index 182704e..d661463 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -16,6 +16,15 @@
 	model = "Ka-Ro TX25";
 	compatible = "karo,imx25-tx25", "fsl,imx25";
 
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nfc, "partname:environment";
+		};
+	};
+
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -98,11 +107,37 @@
 	status = "okay";
 };
 
+&iim {
+	barebox,provide-mac-address = <&fec 0 26>;
+};
+
 &nfc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_nfc>;
+	#address-cells = <1>;
+	#size-cells = <1>;
 	nand-on-flash-bbt;
 	nand-ecc-mode = "hw";
 	nand-bus-width = <8>;
 	status = "okay";
+
+	partition@0 {
+		label = "boot";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "environment";
+		reg = <0x80000 0x80000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x100000 0x400000>;
+	};
+
+	partition@3 {
+		label = "root";
+		reg = <0x500000 0x7b00000>;
+	};
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
