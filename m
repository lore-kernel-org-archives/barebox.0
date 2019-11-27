Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvIu-0003zy-Vp
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:16:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:16:13 +0100
Message-Id: <20191127111613.24173-5-s.hauer@pengutronix.de>
In-Reply-To: <20191127111613.24173-1-s.hauer@pengutronix.de>
References: <20191127111613.24173-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: Layerscape: TQMLS1046a: Add gpio-line-names
To: Barebox List <barebox@lists.infradead.org>

The GPIO line names are taken from
https://github.com/tq-systems/u-boot-tqmaxx/blob/warrior.TQMLS1046A.BSP.SW.0003/board/tqc/common/tqc_mbls10xxa.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts | 48 +++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
index f0332e3999..a4e3f6b589 100644
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -131,6 +131,22 @@
 				reg = <0x20>;
 				gpio-controller;
 				#gpio-cells = <2>;
+				gpio-line-names = "sd1_3_lane_a_mux",
+						  "sd1_2_lane_b_mux",
+						  "sd1_0_lane_d_mux",
+						  "sd2_1_lane_b_mux",
+						  "sd2_3_lane_d_mux1",
+						  "sd2_3_lane_d_mux2",
+						  "sd_mux_shdn",
+						  "sd1_ref_clk2_sel",
+						  "mpcie1_disable_n",
+						  "mpcie1_wake_n",
+						  "mpcie2_disable_n",
+						  "mpcie2_wake_n",
+						  "prsnt_n",
+						  "pcie_pwr_en",
+						  "dcdc_pwr_en",
+						  "dcdc_pgood_1v8";
 			};
 
 			gpioexp2: pca9555@21 {
@@ -138,6 +154,22 @@
 				reg = <0x21>;
 				gpio-controller;
 				#gpio-cells = <2>;
+				gpio-line-names = "xfi1_tx_dis",
+						  "xfi1_tx_fault",
+						  "xfi1_moddef_det",
+						  "xfi1_rx_loss",
+						  "retimer1_loss",
+						  "xfi1_ensmb",
+						  "qsgmii1_clk_sel0",
+						  "qsgmii_phy1_config3",
+						  "xfi2_tx_fault",
+						  "xfi2_tx_dis",
+						  "xfi2_moddef_det",
+						  "xfi2_rx_loss",
+						  "retimer2_loss",
+						  "xfi2_ensmb",
+						  "qsgmii2_clk_sel0",
+						  "qsgmii_phy2_config3";
 			};
 
 			gpioexp3: pca9555@22 {
@@ -145,6 +177,22 @@
 				reg = <0x22>;
 				gpio-controller;
 				#gpio-cells = <2>;
+				gpio-line-names = "ec1_phy_pwdn",
+						  "ec2_phy_pwdn",
+						  "usb_c_pwron",
+						  "usb_en_oc_3v3_n",
+						  "usb_h_grst_n",
+						  "gpio_button0",
+						  "gpio_button1",
+						  "sda_pwr_en",
+						  "qsgmii_phy1_int_n",
+						  "qsgmii_phy2_int_n",
+						  "spi_clko_sof",
+						  "spi_int",
+						  "can_sel",
+						  "led_n",
+						  "pcie_rst_3v3_n",
+						  "pcie_wake_3v3_n";
 			};
 		};
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
