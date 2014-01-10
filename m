Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1d80-0002Wc-IC
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 14:32:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 15:31:38 +0100
Message-Id: <1389364300-8742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX DFI FS700-M60: Add SPI NOR flash support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index 04bb213..67b2138 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -31,6 +31,22 @@
 	};
 };
 
+&ecspi3 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 24 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3_1>, <&pinctrl_ecspi3_cs>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "sst,sst25vf040b", "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+	};
+};
+
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet_1>;
@@ -53,6 +69,14 @@
 			>;
 		};
 	};
+
+	ecspi3 {
+		pinctrl_ecspi3_cs: ecspi3_csgrp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24 0x80000000 /* SPI NOR chipselect */
+			>;
+		};
+	};
 };
 
 &i2c2 {
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
