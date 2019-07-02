Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI2n-0007q9-2y
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 12:38:01 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 2 Jul 2019 14:37:44 +0200
Message-Id: <1562071065-367410-7-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
References: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 7/8] ARM: dts: imx6ul: phycore: Add support for eMMC
To: barebox@lists.infradead.org

Add support for phyCORE-i.MX 6UL/ULL modules with eMMC instead of NAND
flash.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 42 +++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 1ef9d547822e..0ec7eae1eff0 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -25,6 +25,12 @@
 			device-path = &usdhc1, "partname:barebox-environment";
 			status = "disabled";
 		};
+
+		environment-sd2 {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
 	};
 };
 
@@ -125,6 +131,27 @@
 	};
 };
 
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <8>;
+	non-removable;
+	status = "disabled";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
 &iomuxc {
         pinctrl-names = "default";
 
@@ -196,6 +223,21 @@
 				MX6UL_PAD_UART1_RTS_B__GPIO1_IO19       0x17059 /* SD1 CD */
 			>;
 		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6UL_PAD_NAND_WE_B__USDHC2_CMD     	0x17059
+				MX6UL_PAD_NAND_RE_B__USDHC2_CLK     	0x10059
+				MX6UL_PAD_NAND_DATA00__USDHC2_DATA0 	0x17059
+				MX6UL_PAD_NAND_DATA01__USDHC2_DATA1 	0x17059
+				MX6UL_PAD_NAND_DATA02__USDHC2_DATA2 	0x17059
+				MX6UL_PAD_NAND_DATA03__USDHC2_DATA3 	0x17059
+				MX6UL_PAD_NAND_DATA04__USDHC2_DATA4 	0x17059
+				MX6UL_PAD_NAND_DATA05__USDHC2_DATA5 	0x17059
+				MX6UL_PAD_NAND_DATA06__USDHC2_DATA6 	0x17059
+				MX6UL_PAD_NAND_DATA07__USDHC2_DATA7 	0x17059
+			>;
+		};
 	};
 };
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
