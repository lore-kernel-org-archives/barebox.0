Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKUS-000315-Sr
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:30:34 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id BF0F318B4277
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:28:02 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:47 +0200
Message-Id: <1397395668-9325-18-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 17/18] ARM: dts: tegra: add full Beaver pinmux
To: barebox@lists.infradead.org

Not fully validated yet, but seems to work.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra30-beaver.dts | 419 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 416 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index e93fe45b7803..1110b8974966 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -86,15 +86,31 @@
 				nvidia,pull = <TEGRA_PIN_PULL_UP>;
 				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
+			sdmmc3_gpio {
+				nvidia,pins =	"sdmmc3_dat4_pd1",
+						"sdmmc3_dat5_pd0";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc4_rst {
+				nvidia,pins =	"sdmmc4_rst_n_pcc3";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
 			sdmmc4_clk_pcc4 {
-				nvidia,pins =	"sdmmc4_clk_pcc4",
-						"sdmmc4_rst_n_pcc3";
+				nvidia,pins =	"sdmmc4_clk_pcc4";
 				nvidia,function = "sdmmc4";
 				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
 				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
 			};
 			sdmmc4_dat0_paa0 {
-				nvidia,pins =	"sdmmc4_dat0_paa0",
+				nvidia,pins =	"sdmmc4_cmd_pt7",
+						"sdmmc4_dat0_paa0",
 						"sdmmc4_dat1_paa1",
 						"sdmmc4_dat2_paa2",
 						"sdmmc4_dat3_paa3",
@@ -105,6 +121,32 @@
 				nvidia,function = "sdmmc4";
 				nvidia,pull = <TEGRA_PIN_PULL_UP>;
 				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			crt {
+				nvidia,pins =	"crt_hsync_pv6",
+						"crt_vsync_pv7";
+				nvidia,function = "crt";
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+			};
+			dap {
+				nvidia,pins =	"clk1_req_pee2",
+						"clk2_req_pcc5";
+				nvidia,function = "dap";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			dev3 {
+				nvidia,pins =	"clk3_req_pee1";
+				nvidia,function = "dev3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			dap1 {
+				nvidia,pins =	"dap1_fs_pn0", "dap1_dout_pn2",
+						"dap1_din_pn1", "dap1_sclk_pn3";
+				nvidia,function = "i2s0";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			dap2_fs_pa2 {
 				nvidia,pins =	"dap2_fs_pa2",
@@ -115,6 +157,35 @@
 				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
 				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
+			dap3 {
+				nvidia,pins =	"dap3_fs_pp0", "dap3_dout_pp2",
+						"dap3_din_pp1", "dap3_sclk_pp3";
+				nvidia,function = "i2s2";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			dap4 {
+				nvidia,pins =	"dap4_fs_pp4", "dap4_dout_pp6",
+						"dap4_din_pp5", "dap4_sclk_pp7";
+				nvidia,function = "i2s3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			pex_in {
+				nvidia,pins =	"pex_l0_prsnt_n_pdd0",
+						"pex_l0_clkreq_n_pdd2",
+						"pex_l2_prsnt_n_pdd7",
+						"pex_l2_clkreq_n_pcc7",
+						"pex_wake_n_pdd3";
+				nvidia,function = "pcie";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pex_out {
+				nvidia,pins =	"pex_l0_rst_n_pdd1",
+						"pex_l1_rst_n_pdd5",
+						"pex_l2_rst_n_pcc6";
+				nvidia,function = "pcie";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
 			pex_l1_prsnt_n_pdd4 {
 				nvidia,pins =	"pex_l1_prsnt_n_pdd4",
 						"pex_l1_clkreq_n_pdd6";
@@ -133,6 +204,348 @@
 				nvidia,pins = "drive_gpv";
 				nvidia,pull-up-strength = <16>;
 			};
+			uarta {
+				nvidia,pins =	"ulpi_data0_po1",
+						"ulpi_data1_po2",
+						"ulpi_data2_po3",
+						"ulpi_data3_po4",
+						"ulpi_data4_po5",
+						"ulpi_data5_po6",
+						"ulpi_data6_po7",
+						"ulpi_data7_po0";
+				nvidia,function = "uarta";
+				nvidia,tristate = <0>;
+			};
+			pu {
+				nvidia,pins =	"pu0", "pu1", "pu2", "pu3",
+						"pu4", "pu5", "pu6";
+				nvidia,function = "rsvd4";
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+			};
+			uartb {
+				nvidia,pins =	"uart2_txd_pc2",
+						"uart2_rxd_pc3",
+						"uart2_cts_n_pj5",
+						"uart2_rts_n_pj6";
+				nvidia,function = "uartb";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			uartc {
+				nvidia,pins =	"uart3_txd_pw6",
+						"uart3_rxd_pw7",
+						"uart3_cts_n_pa1",
+						"uart3_rts_n_pc0";
+				nvidia,function = "uartc";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			uartd {
+				nvidia,pins =	"ulpi_clk_py0", "ulpi_dir_py1",
+						"ulpi_nxt_py2", "ulpi_stp_py3";
+				nvidia,function = "uartd";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			i2c1 {
+				nvidia,pins =	"gen1_i2c_scl_pc4",
+						"gen1_i2c_sda_pc5";
+				nvidia,function = "i2c1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			i2c2 {
+				nvidia,pins =	"gen2_i2c_scl_pt5",
+						"gen2_i2c_sda_pt6";
+				nvidia,function = "i2c2";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			i2c3 {
+				nvidia,pins =	"cam_i2c_scl_pbb1",
+						"cam_i2c_sda_pbb2";
+				nvidia,function = "i2c3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			i2c4 {
+				nvidia,pins =	"ddc_scl_pv4",
+						"ddc_sda_pv5";
+				nvidia,function = "i2c4";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			i2cpwr {
+				nvidia,pins =	"pwr_i2c_scl_pz6",
+						"pwr_i2c_sda_pz7";
+				nvidia,function = "i2cpwr";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			spi1 {
+				nvidia,pins =	"spi1_mosi_px4",
+						"spi1_sck_px5",
+						"spi1_cs0_n_px6",
+						"spi1_miso_px7";
+				nvidia,function = "spi1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			spi2_up {
+				nvidia,pins =	"spi2_cs1_n_pw2";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			};
+			spi4 {
+				nvidia,pins =	"gmi_a16_pj7", "gmi_a17_pb0",
+						"gmi_a18_pb1", "gmi_a19_pk7";
+				nvidia,function = "spi4";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			spdif {
+				nvidia,pins =	"spdif_out_pk5", "spdif_in_pk6";
+				nvidia,function = "spdif";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			hdmi_int {
+				nvidia,pins =	"hdmi_int_pn7";
+				nvidia,function = "hdmi";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			hdmi_cec {
+				nvidia,pins =	"hdmi_cec_pee3";
+				nvidia,function = "cec";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			ddr {
+				nvidia,pins =	"vi_d10_pt2", "vi_vsync_pd6",
+						"vi_hsync_pd7";
+				nvidia,function = "ddr";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			ddr_up {
+				nvidia,pins =	"vi_d11_pt3";
+				nvidia,function = "ddr";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			vi {
+				nvidia,pins =	"vi_d4_pl2", "vi_mclk_pt1",
+						"vi_d6_pl4";
+				nvidia,function = "vi";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			owr {
+				nvidia,pins =	"pv2", "pu0", "owr";
+				nvidia,function = "owr";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			lcd {
+				nvidia,pins =	"lcd_pwr1_pc1", "lcd_pwr2_pc6",
+						"lcd_sdin_pz2", "lcd_sdout_pn5",
+						"lcd_wr_n_pz3", "lcd_cs0_n_pn4",
+						"lcd_dc0_pn6", "lcd_sck_pz4",
+						"lcd_pwr0_pb2", "lcd_pclk_pb3",
+						"lcd_de_pj1", "lcd_hsync_pj3",
+						"lcd_vsync_pj4", "lcd_d0_pe0",
+						"lcd_d1_pe1", "lcd_d2_pe2",
+						"lcd_d3_pe3", "lcd_d4_pe4",
+						"lcd_d5_pe5", "lcd_d6_pe6",
+						"lcd_d7_pe7", "lcd_d8_pf0",
+						"lcd_d9_pf1", "lcd_d10_pf2",
+						"lcd_d11_pf3", "lcd_d12_pf4",
+						"lcd_d13_pf5", "lcd_d14_pf6",
+						"lcd_d15_pf7", "lcd_d16_pm0",
+						"lcd_d17_pm1", "lcd_d18_pm2",
+						"lcd_d19_pm3", "lcd_d20_pm4",
+						"lcd_d21_pm5", "lcd_d22_pm6",
+						"lcd_d23_pm7", "lcd_cs1_n_pw0",
+						"lcd_m1_pw1", "lcd_dc1_pd2";
+				nvidia,function = "displaya";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kbc {
+				nvidia,pins =	"kb_row0_pr0", "kb_row1_pr1",
+						"kb_row2_pr2", "kb_row3_pr3",
+						"kb_row4_pr4", "kb_row5_pr5",
+						"kb_row6_pr6", "kb_row7_pr7",
+						"kb_row9_ps1", "kb_row8_ps0",
+						"kb_row10_ps2", "kb_row11_ps3",
+						"kb_row12_ps4", "kb_row13_ps5",
+						"kb_row14_ps6", "kb_row15_ps7",
+						"kb_col0_pq0", "kb_col1_pq1",
+						"kb_col2_pq2", "kb_col3_pq3",
+						"kb_col4_pq4", "kb_col5_pq5",
+						"kb_col6_pq6", "kb_col7_pq7";
+				nvidia,function = "kbc";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_vi {
+				nvidia,pins =	"vi_d1_pd5", "vi_d2_pl0",
+						"vi_d3_pl1", "vi_d5_pl3",
+						"vi_d7_pl5", "vi_d8_pl6",
+						"vi_d9_pl7";
+				nvidia,function = "sdmmc2";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_pbb0 {
+				nvidia,pins =	"pbb0", "pbb7", "pcc1", "pcc2";
+				nvidia,function = "i2s4";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_pbb3 {
+				nvidia,pins =	"pbb3";
+				nvidia,function = "vgp3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_pbb4 {
+				nvidia,pins =	"pbb4";
+				nvidia,function = "vgp4";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_pbb5 {
+				nvidia,pins =	"pbb5";
+				nvidia,function = "vgp5";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_pbb6 {
+				nvidia,pins =	"pbb6";
+				nvidia,function = "vgp6";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_pu1 {
+				nvidia,pins =	"pu1", "pu2";
+				nvidia,function = "rsvd1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_pv0 {
+				nvidia,pins =	"pv0", "gmi_cs2_n_pk3";
+				nvidia,function = "rsvd1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			};
+			gpio_pv3 {
+				nvidia,pins =	"pv3";
+				nvidia,function = "clk_12m_out";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_gmi {
+				nvidia,pins =	"spi2_sck_px2", "gmi_wp_n_pc7";
+				nvidia,function = "gmi";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_gmi_ad {
+				nvidia,pins =	"gmi_ad10_ph2", "gmi_ad14_ph6";
+				nvidia,function = "nand";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_gmi_ad_up {
+				nvidia,pins =	"gmi_ad12_ph4";
+				nvidia,function = "nand";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			};
+			gpio_gmi_iordy_up {
+				nvidia,pins =	"gmi_iordy_pi5";
+				nvidia,function = "rsvd1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			};
+			pwm0 {
+				nvidia,pins =	"gmi_ad8_ph0", "pu3";
+				nvidia,function = "pwm0";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			pwm1 {
+				nvidia,pins =	"pu4";
+				nvidia,function = "pwm1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			pwm2 {
+				nvidia,pins =	"pu5";
+				nvidia,function = "pwm2";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			pwm3 {
+				nvidia,pins =	"pu6";
+				nvidia,function = "pwm3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			extperiph1 {
+				nvidia,pins =	"clk1_out_pw4";
+				nvidia,function = "extperiph1";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			extperiph2 {
+				nvidia,pins =	"clk2_out_pw5";
+				nvidia,function = "extperiph2";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			extperiph3 {
+				nvidia,pins =	"clk3_out_pee0";
+				nvidia,function = "extperiph3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			jtag {
+				nvidia,pins =	"jtag_rtck_pu7";
+				nvidia,function = "rtck";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			blink {
+				nvidia,pins =	"clk_32k_out_pa0";
+				nvidia,function = "blink";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sysclk {
+				nvidia,pins =	"sys_clk_req_pz5";
+				nvidia,function = "sysclk";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			cam_mclk {
+				nvidia,pins =	"cam_mclk_pcc0";
+				nvidia,function = "vi_alt3";
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			};
+			vi_pclk {
+				nvidia,pins =	"vi_pclk_pt0";
+				nvidia,function = "rsvd1";
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+			};
+			unused {
+				nvidia,pins =	"gmi_adv_n_pk0", "gmi_clk_pk1",
+						"gmi_cs3_n_pk4", "gmi_ad0_pg0",
+						"gmi_ad1_pg1", "gmi_ad2_pg2",
+						"gmi_ad3_pg3", "gmi_ad4_pg4",
+						"gmi_ad5_pg5", "gmi_ad6_pg6",
+						"gmi_ad7_pg7", "gmi_ad9_ph1",
+						"gmi_ad11_ph3", "gmi_wr_n_pi0",
+						"gmi_oe_n_pi1", "gmi_dqs_pi2";
+				nvidia,function = "nand";
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+			};
+			unused_pu {
+				nvidia,pins =	"gmi_wait_pi7", "gmi_cs7_n_pi6",
+						"gmi_ad13_ph5";
+				nvidia,function = "nand";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+			};
 		};
 	};
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
