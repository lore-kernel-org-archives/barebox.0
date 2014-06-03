Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOT-0004WJ-Dt
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:15 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id BF10B18B4283
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:31 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:09 +0200
Message-Id: <1401827717-6420-23-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 22/30] pinctrl: tegra: add Tegra124 support
To: barebox@lists.infradead.org

We can reuse the Tegra30 pinctrl driver, as the bit
layout is the same. Just add the pin and drivegroups
and some compile-time magic to avoid bloat.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Kconfig       |   1 +
 drivers/pinctrl/Kconfig           |   2 +-
 drivers/pinctrl/pinctrl-tegra30.c | 251 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 253 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index a895fd7..ea2e045 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -52,6 +52,7 @@ config ARCH_TEGRA_3x_SOC
 
 config ARCH_TEGRA_124_SOC
 	bool
+	select PINCTRL_TEGRA30
 
 menu "select Tegra boards to be built"
 
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index b9b66f9..421525b 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -45,4 +45,4 @@ config PINCTRL_TEGRA30
 	select PINCTRL
 	bool
 	help
-	  The pinmux controller found on the Tegra 30 line of SoCs.
+	  The pinmux controller found on the Tegra 30+ line of SoCs.
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index d1e87a7..5cacfae 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -394,6 +394,250 @@ static const struct pinctrl_tegra30_drvdata tegra30_drvdata = {
 	.num_drvgrps = ARRAY_SIZE(tegra30_drive_groups),
 };
 
+static const struct tegra_pingroup tegra124_pin_groups[] = {
+	PG(ulpi_data0_po1,         spi3,       hsi,        uarta,        ulpi,       0x000),
+	PG(ulpi_data1_po2,         spi3,       hsi,        uarta,        ulpi,       0x004),
+	PG(ulpi_data2_po3,         spi3,       hsi,        uarta,        ulpi,       0x008),
+	PG(ulpi_data3_po4,         spi3,       hsi,        uarta,        ulpi,       0x00c),
+	PG(ulpi_data4_po5,         spi2,       hsi,        uarta,        ulpi,       0x010),
+	PG(ulpi_data5_po6,         spi2,       hsi,        uarta,        ulpi,       0x014),
+	PG(ulpi_data6_po7,         spi2,       hsi,        uarta,        ulpi,       0x018),
+	PG(ulpi_data7_po0,         spi2,       hsi,        uarta,        ulpi,       0x01c),
+	PG(ulpi_clk_py0,           spi1,       spi5,       uartd,        ulpi,       0x020),
+	PG(ulpi_dir_py1,           spi1,       spi5,       uartd,        ulpi,       0x024),
+	PG(ulpi_nxt_py2,           spi1,       spi5,       uartd,        ulpi,       0x028),
+	PG(ulpi_stp_py3,           spi1,       spi5,       uartd,        ulpi,       0x02c),
+	PG(dap3_fs_pp0,            i2s2,       spi5,       displaya,     displayb,   0x030),
+	PG(dap3_din_pp1,           i2s2,       spi5,       displaya,     displayb,   0x034),
+	PG(dap3_dout_pp2,          i2s2,       spi5,       displaya,     rsvd4,      0x038),
+	PG(dap3_sclk_pp3,          i2s2,       spi5,       rsvd3,        displayb,   0x03c),
+	PG(pv0,                    rsvd1,      rsvd2,      rsvd3,        rsvd4,      0x040),
+	PG(pv1,                    rsvd1,      rsvd2,      rsvd3,        rsvd4,      0x044),
+	PG(sdmmc1_clk_pz0,         sdmmc1,     clk12,      rsvd3,        rsvd4,      0x048),
+	PG(sdmmc1_cmd_pz1,         sdmmc1,     spdif,      spi4,         uarta,      0x04c),
+	PG(sdmmc1_dat3_py4,        sdmmc1,     spdif,      spi4,         uarta,      0x050),
+	PG(sdmmc1_dat2_py5,        sdmmc1,     pwm0,       spi4,         uarta,      0x054),
+	PG(sdmmc1_dat1_py6,        sdmmc1,     pwm1,       spi4,         uarta,      0x058),
+	PG(sdmmc1_dat0_py7,        sdmmc1,     rsvd2,      spi4,         uarta,      0x05c),
+	PG(clk2_out_pw5,           extperiph2, rsvd2,      rsvd3,        rsvd4,      0x068),
+	PG(clk2_req_pcc5,          dap,        rsvd2,      rsvd3,        rsvd4,      0x06c),
+	PG(hdmi_int_pn7,           rsvd1,      rsvd2,      rsvd3,        rsvd4,      0x110),
+	PG(ddc_scl_pv4,            i2c4,       rsvd2,      rsvd3,        rsvd4,      0x114),
+	PG(ddc_sda_pv5,            i2c4,       rsvd2,      rsvd3,        rsvd4,      0x118),
+	PG(uart2_rxd_pc3,          irda,       spdif,      uarta,        spi4,       0x164),
+	PG(uart2_txd_pc2,          irda,       spdif,      uarta,        spi4,       0x168),
+	PG(uart2_rts_n_pj6,        uarta,      uartb,      gmi,          spi4,       0x16c),
+	PG(uart2_cts_n_pj5,        uarta,      uartb,      gmi,          spi4,       0x170),
+	PG(uart3_txd_pw6,          uartc,      rsvd2,      gmi,          spi4,       0x174),
+	PG(uart3_rxd_pw7,          uartc,      rsvd2,      gmi,          spi4,       0x178),
+	PG(uart3_cts_n_pa1,        uartc,      sdmmc1,     dtv,          gmi,        0x17c),
+	PG(uart3_rts_n_pc0,        uartc,      pwm0,       dtv,          gmi,        0x180),
+	PG(pu0,                    owr,        uarta,      gmi,          rsvd4,      0x184),
+	PG(pu1,                    rsvd1,      uarta,      gmi,          rsvd4,      0x188),
+	PG(pu2,                    rsvd1,      uarta,      gmi,          rsvd4,      0x18c),
+	PG(pu3,                    pwm0,       uarta,      gmi,          displayb,   0x190),
+	PG(pu4,                    pwm1,       uarta,      gmi,          displayb,   0x194),
+	PG(pu5,                    pwm2,       uarta,      gmi,          displayb,   0x198),
+	PG(pu6,                    pwm3,       uarta,      rsvd3,        gmi,        0x19c),
+	PG(gen1_i2c_sda_pc5,       i2c1,       rsvd2,      rsvd3,        rsvd4,      0x1a0),
+	PG(gen1_i2c_scl_pc4,       i2c1,       rsvd2,      rsvd3,        rsvd4,      0x1a4),
+	PG(dap4_fs_pp4,            i2s3,       gmi,        dtv,          rsvd4,      0x1a8),
+	PG(dap4_din_pp5,           i2s3,       gmi,        rsvd3,        rsvd4,      0x1ac),
+	PG(dap4_dout_pp6,          i2s3,       gmi,        dtv,          rsvd4,      0x1b0),
+	PG(dap4_sclk_pp7,          i2s3,       gmi,        rsvd3,        rsvd4,      0x1b4),
+	PG(clk3_out_pee0,          extperiph3, rsvd2,      rsvd3,        rsvd4,      0x1b8),
+	PG(clk3_req_pee1,          dev3,       rsvd2,      rsvd3,        rsvd4,      0x1bc),
+	PG(pc7,                    rsvd1,      rsvd2,      gmi,          gmi_alt,    0x1c0),
+	PG(pi5,                    sdmmc2,     rsvd2,      gmi,          rsvd4,      0x1c4),
+	PG(pi7,                    rsvd1,      trace,      gmi,          dtv,        0x1c8),
+	PG(pk0,                    rsvd1,      sdmmc3,     gmi,          soc,        0x1cc),
+	PG(pk1,                    sdmmc2,     trace,      gmi,          rsvd4,      0x1d0),
+	PG(pj0,                    rsvd1,      rsvd2,      gmi,          usb,        0x1d4),
+	PG(pj2,                    rsvd1,      rsvd2,      gmi,          soc,        0x1d8),
+	PG(pk3,                    sdmmc2,     trace,      gmi,          ccla,       0x1dc),
+	PG(pk4,                    sdmmc2,     rsvd2,      gmi,          gmi_alt,    0x1e0),
+	PG(pk2,                    rsvd1,      rsvd2,      gmi,          rsvd4,      0x1e4),
+	PG(pi3,                    rsvd1,      rsvd2,      gmi,          spi4,       0x1e8),
+	PG(pi6,                    rsvd1,      rsvd2,      gmi,          sdmmc2,     0x1ec),
+	PG(pg0,                    rsvd1,      rsvd2,      gmi,          rsvd4,      0x1f0),
+	PG(pg1,                    rsvd1,      rsvd2,      gmi,          rsvd4,      0x1f4),
+	PG(pg2,                    rsvd1,      trace,      gmi,          rsvd4,      0x1f8),
+	PG(pg3,                    rsvd1,      trace,      gmi,          rsvd4,      0x1fc),
+	PG(pg4,                    rsvd1,      tmds,       gmi,          spi4,       0x200),
+	PG(pg5,                    rsvd1,      rsvd2,      gmi,          spi4,       0x204),
+	PG(pg6,                    rsvd1,      rsvd2,      gmi,          spi4,       0x208),
+	PG(pg7,                    rsvd1,      rsvd2,      gmi,          spi4,       0x20c),
+	PG(ph0,                    pwm0,       trace,      gmi,          dtv,        0x210),
+	PG(ph1,                    pwm1,       tmds,       gmi,          displaya,   0x214),
+	PG(ph2,                    pwm2,       tmds,       gmi,          cldvfs,     0x218),
+	PG(ph3,                    pwm3,       spi4,       gmi,          cldvfs,     0x21c),
+	PG(ph4,                    sdmmc2,     rsvd2,      gmi,          rsvd4,      0x220),
+	PG(ph5,                    sdmmc2,     rsvd2,      gmi,          rsvd4,      0x224),
+	PG(ph6,                    sdmmc2,     trace,      gmi,          dtv,        0x228),
+	PG(ph7,                    sdmmc2,     trace,      gmi,          dtv,        0x22c),
+	PG(pj7,                    uartd,      rsvd2,      gmi,          gmi_alt,    0x230),
+	PG(pb0,                    uartd,      rsvd2,      gmi,          rsvd4,      0x234),
+	PG(pb1,                    uartd,      rsvd2,      gmi,          rsvd4,      0x238),
+	PG(pk7,                    uartd,      rsvd2,      gmi,          rsvd4,      0x23c),
+	PG(pi0,                    rsvd1,      rsvd2,      gmi,          rsvd4,      0x240),
+	PG(pi1,                    rsvd1,      rsvd2,      gmi,          rsvd4,      0x244),
+	PG(pi2,                    sdmmc2,     trace,      gmi,          rsvd4,      0x248),
+	PG(pi4,                    spi4,       trace,      gmi,          displaya,   0x24c),
+	PG(gen2_i2c_scl_pt5,       i2c2,       rsvd2,      gmi,          rsvd4,      0x250),
+	PG(gen2_i2c_sda_pt6,       i2c2,       rsvd2,      gmi,          rsvd4,      0x254),
+	PG(sdmmc4_clk_pcc4,        sdmmc4,     rsvd2,      gmi,          rsvd4,      0x258),
+	PG(sdmmc4_cmd_pt7,         sdmmc4,     rsvd2,      gmi,          rsvd4,      0x25c),
+	PG(sdmmc4_dat0_paa0,       sdmmc4,     spi3,       gmi,          rsvd4,      0x260),
+	PG(sdmmc4_dat1_paa1,       sdmmc4,     spi3,       gmi,          rsvd4,      0x264),
+	PG(sdmmc4_dat2_paa2,       sdmmc4,     spi3,       gmi,          rsvd4,      0x268),
+	PG(sdmmc4_dat3_paa3,       sdmmc4,     spi3,       gmi,          rsvd4,      0x26c),
+	PG(sdmmc4_dat4_paa4,       sdmmc4,     spi3,       gmi,          rsvd4,      0x270),
+	PG(sdmmc4_dat5_paa5,       sdmmc4,     spi3,       rsvd3,        rsvd4,      0x274),
+	PG(sdmmc4_dat6_paa6,       sdmmc4,     spi3,       gmi,          rsvd4,      0x278),
+	PG(sdmmc4_dat7_paa7,       sdmmc4,     rsvd2,      gmi,          rsvd4,      0x27c),
+	PG(cam_mclk_pcc0,          vi,         vi_alt1,    vi_alt3,      sdmmc2,     0x284),
+	PG(pcc1,                   i2s4,       rsvd2,      rsvd3,        sdmmc2,     0x288),
+	PG(pbb0,                   vgp6,       vimclk2,    sdmmc2,       vimclk2_alt,0x28c),
+	PG(cam_i2c_scl_pbb1,       vgp1,       i2c3,       rsvd3,        sdmmc2,     0x290),
+	PG(cam_i2c_sda_pbb2,       vgp2,       i2c3,       rsvd3,        sdmmc2,     0x294),
+	PG(pbb3,                   vgp3,       displaya,   displayb,     sdmmc2,     0x298),
+	PG(pbb4,                   vgp4,       displaya,   displayb,     sdmmc2,     0x29c),
+	PG(pbb5,                   vgp5,       displaya,   rsvd3,        sdmmc2,     0x2a0),
+	PG(pbb6,                   i2s4,       rsvd2,      displayb,     sdmmc2,     0x2a4),
+	PG(pbb7,                   i2s4,       rsvd2,      rsvd3,        sdmmc2,     0x2a8),
+	PG(pcc2,                   i2s4,       rsvd2,      sdmmc3,       sdmmc2,     0x2ac),
+	PG(jtag_rtck,              rtck,       rsvd2,      rsvd3,        rsvd4,      0x2b0),
+	PG(pwr_i2c_scl_pz6,        i2cpwr,     rsvd2,      rsvd3,        rsvd4,      0x2b4),
+	PG(pwr_i2c_sda_pz7,        i2cpwr,     rsvd2,      rsvd3,        rsvd4,      0x2b8),
+	PG(kb_row0_pr0,            kbc,        rsvd2,      rsvd3,        rsvd4,      0x2bc),
+	PG(kb_row1_pr1,            kbc,        rsvd2,      rsvd3,        rsvd4,      0x2c0),
+	PG(kb_row2_pr2,            kbc,        rsvd2,      rsvd3,        rsvd4,      0x2c4),
+	PG(kb_row3_pr3,            kbc,        displaya,   sys,          displayb,   0x2c8),
+	PG(kb_row4_pr4,            kbc,        displaya,   rsvd3,        displayb,   0x2cc),
+	PG(kb_row5_pr5,            kbc,        displaya,   rsvd3,        displayb,   0x2d0),
+	PG(kb_row6_pr6,            kbc,        displaya,   displaya_alt, displayb,   0x2d4),
+	PG(kb_row7_pr7,            kbc,        rsvd2,      cldvfs,       uarta,      0x2d8),
+	PG(kb_row8_ps0,            kbc,        rsvd2,      cldvfs,       uarta,      0x2dc),
+	PG(kb_row9_ps1,            kbc,        rsvd2,      rsvd3,        uarta,      0x2e0),
+	PG(kb_row10_ps2,           kbc,        rsvd2,      rsvd3,        uarta,      0x2e4),
+	PG(kb_row11_ps3,           kbc,        rsvd2,      rsvd3,        irda,       0x2e8),
+	PG(kb_row12_ps4,           kbc,        rsvd2,      rsvd3,        irda,       0x2ec),
+	PG(kb_row13_ps5,           kbc,        rsvd2,      spi2,         rsvd4,      0x2f0),
+	PG(kb_row14_ps6,           kbc,        rsvd2,      spi2,         rsvd4,      0x2f4),
+	PG(kb_row15_ps7,           kbc,        soc,        rsvd3,        rsvd4,      0x2f8),
+	PG(kb_col0_pq0,            kbc,        rsvd2,      spi2,         rsvd4,      0x2fc),
+	PG(kb_col1_pq1,            kbc,        rsvd2,      spi2,         rsvd4,      0x300),
+	PG(kb_col2_pq2,            kbc,        rsvd2,      spi2,         rsvd4,      0x304),
+	PG(kb_col3_pq3,            kbc,        displaya,   pwm2,         uarta,      0x308),
+	PG(kb_col4_pq4,            kbc,        owr,        sdmmc3,       uarta,      0x30c),
+	PG(kb_col5_pq5,            kbc,        rsvd2,      sdmmc3,       rsvd4,      0x310),
+	PG(kb_col6_pq6,            kbc,        rsvd2,      spi2,         uartd,      0x314),
+	PG(kb_col7_pq7,            kbc,        rsvd2,      spi2,         uartd,      0x318),
+	PG(clk_32k_out_pa0,        blink,      soc,        rsvd3,        rsvd4,      0x31c),
+	PG(core_pwr_req,           pwron,      rsvd2,      rsvd3,        rsvd4,      0x324),
+	PG(cpu_pwr_req,            cpu,        rsvd2,      rsvd3,        rsvd4,      0x328),
+	PG(pwr_int_n,              pmi,        rsvd2,      rsvd3,        rsvd4,      0x32c),
+	PG(clk_32k_in,             clk,        rsvd2,      rsvd3,        rsvd4,      0x330),
+	PG(owr,                    owr,        rsvd2,      rsvd3,        rsvd4,      0x334),
+	PG(dap1_fs_pn0,            i2s0,       hda,        gmi,          rsvd4,      0x338),
+	PG(dap1_din_pn1,           i2s0,       hda,        gmi,          rsvd4,      0x33c),
+	PG(dap1_dout_pn2,          i2s0,       hda,        gmi,          sata,       0x340),
+	PG(dap1_sclk_pn3,          i2s0,       hda,        gmi,          rsvd4,      0x344),
+	PG(dap_mclk1_req_pee2,     dap,        dap1,       sata,         rsvd4,      0x348),
+	PG(dap_mclk1_pw4,          extperiph1, dap2,       rsvd3,        rsvd4,      0x34c),
+	PG(spdif_in_pk6,           spdif,      rsvd2,      rsvd3,        i2c3,       0x350),
+	PG(spdif_out_pk5,          spdif,      rsvd2,      rsvd3,        i2c3,       0x354),
+	PG(dap2_fs_pa2,            i2s1,       hda,        gmi,          rsvd4,      0x358),
+	PG(dap2_din_pa4,           i2s1,       hda,        gmi,          rsvd4,      0x35c),
+	PG(dap2_dout_pa5,          i2s1,       hda,        gmi,          rsvd4,      0x360),
+	PG(dap2_sclk_pa3,          i2s1,       hda,        gmi,          rsvd4,      0x364),
+	PG(dvfs_pwm_px0,           spi6,       cldvfs,     gmi,          rsvd4,      0x368),
+	PG(gpio_x1_aud_px1,        spi6,       rsvd2,      gmi,          rsvd4,      0x36c),
+	PG(gpio_x3_aud_px3,        spi6,       spi1,       gmi,          rsvd4,      0x370),
+	PG(dvfs_clk_px2,           spi6,       cldvfs,     gmi,          rsvd4,      0x374),
+	PG(gpio_x4_aud_px4,        gmi,        spi1,       spi2,         dap2,       0x378),
+	PG(gpio_x5_aud_px5,        gmi,        spi1,       spi2,         rsvd4,      0x37c),
+	PG(gpio_x6_aud_px6,        spi6,       spi1,       spi2,         gmi,        0x380),
+	PG(gpio_x7_aud_px7,        rsvd1,      spi1,       spi2,         rsvd4,      0x384),
+	PG(sdmmc3_clk_pa6,         sdmmc3,     rsvd2,      rsvd3,        spi3,       0x390),
+	PG(sdmmc3_cmd_pa7,         sdmmc3,     pwm3,       uarta,        spi3,       0x394),
+	PG(sdmmc3_dat0_pb7,        sdmmc3,     rsvd2,      rsvd3,        spi3,       0x398),
+	PG(sdmmc3_dat1_pb6,        sdmmc3,     pwm2,       uarta,        spi3,       0x39c),
+	PG(sdmmc3_dat2_pb5,        sdmmc3,     pwm1,       displaya,     spi3,       0x3a0),
+	PG(sdmmc3_dat3_pb4,        sdmmc3,     pwm0,       displayb,     spi3,       0x3a4),
+	PG(pex_l0_rst_n_pdd1,      pe0,        rsvd2,      rsvd3,        rsvd4,      0x3bc),
+	PG(pex_l0_clkreq_n_pdd2,   pe0,        rsvd2,      rsvd3,        rsvd4,      0x3c0),
+	PG(pex_wake_n_pdd3,        pe,         rsvd2,      rsvd3,        rsvd4,      0x3c4),
+	PG(pex_l1_rst_n_pdd5,      pe1,        rsvd2,      rsvd3,        rsvd4,      0x3cc),
+	PG(pex_l1_clkreq_n_pdd6,   pe1,        rsvd2,      rsvd3,        rsvd4,      0x3d0),
+	PG(hdmi_cec_pee3,          cec,        rsvd2,      rsvd3,        rsvd4,      0x3e0),
+	PG(sdmmc1_wp_n_pv3,        sdmmc1,     clk12,      spi4,         uarta,      0x3e4),
+	PG(sdmmc3_cd_n_pv2,        sdmmc3,     owr,        rsvd3,        rsvd4,      0x3e8),
+	PG(gpio_w2_aud_pw2,        spi6,       rsvd2,      spi2,         i2c1,       0x3ec),
+	PG(gpio_w3_aud_pw3,        spi6,       spi1,       spi2,         i2c1,       0x3f0),
+	PG(usb_vbus_en0_pn4,       usb,        rsvd2,      rsvd3,        rsvd4,      0x3f4),
+	PG(usb_vbus_en1_pn5,       usb,        rsvd2,      rsvd3,        rsvd4,      0x3f8),
+	PG(sdmmc3_clk_lb_in_pee5,  sdmmc3,     rsvd2,      rsvd3,        rsvd4,      0x3fc),
+	PG(sdmmc3_clk_lb_out_pee4, sdmmc3,     rsvd2,      rsvd3,        rsvd4,      0x400),
+	PG(gmi_clk_lb,             sdmmc2,     rsvd2,      gmi,          rsvd4,      0x404),
+	PG(reset_out_n,            rsvd1,      rsvd2,      rsvd3,        reset_out_n,0x408),
+	PG(kb_row16_pt0,           kbc,        rsvd2,      rsvd3,        uartc,      0x40c),
+	PG(kb_row17_pt1,           kbc,        rsvd2,      rsvd3,        uartc,      0x410),
+	PG(usb_vbus_en2_pff1,      usb,        rsvd2,      rsvd3,        rsvd4,      0x414),
+	PG(pff2,                   sata,       rsvd2,      rsvd3,        rsvd4,      0x418),
+	PG(dp_hpd_pff0,            dp,         rsvd2,      rsvd3,        rsvd4,      0x430),
+};
+
+static const struct tegra_drive_pingroup tegra124_drive_groups[] = {
+	DRV_PG(ao1,   0x868,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(ao2,   0x86c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(at1,   0x870,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(at2,   0x874,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(at3,   0x878,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(at4,   0x87c,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(at5,   0x880,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(cdev1, 0x884,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(cdev2, 0x888,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap1,  0x890,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap2,  0x894,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap3,  0x898,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dap4,  0x89c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dbg,   0x8a0,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(sdio3, 0x8b0,  2,  3, -1,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(spi,   0x8b4,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uaa,   0x8b8,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uab,   0x8bc,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uart2, 0x8c0,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uart3, 0x8c4,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(sdio1, 0x8ec,  2,  3, -1,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(ddc,   0x8fc,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(gma,   0x900,  2,  3,  4,  14,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(gme,   0x910,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gmf,   0x914,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gmg,   0x918,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(gmh,   0x91c,  2,  3,  4,  14,  5,  19,  5,  28,  2,  30,  2),
+	DRV_PG(owr,   0x920,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(uda,   0x924,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(gpv,   0x928,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(dev3,  0x92c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(cec,   0x938,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(at6,   0x994,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
+	DRV_PG(dap5,  0x998,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(usb_vbus_en, 0x99c,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(ao3,   0x9a8,  2,  3,  4,  12,  5,  -1, -1,  28,  2,  -1, -1),
+	DRV_PG(ao0,   0x9b0,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(hv0,   0x9b4,  2,  3,  4,  12,  5,  -1, -1,  28,  2,  -1, -1),
+	DRV_PG(sdio4, 0x9c4,  2,  3,  4,  12,  5,  20,  5,  28,  2,  30,  2),
+	DRV_PG(ao4,   0x9c8,  2,  3,  4,  12,  7,  20,  7,  28,  2,  30,  2),
+};
+
+static const struct pinctrl_tegra30_drvdata tegra124_drvdata = {
+	.pingrps = tegra124_pin_groups,
+	.num_pingrps = ARRAY_SIZE(tegra124_pin_groups),
+	.drvgrps = tegra124_drive_groups,
+	.num_drvgrps = ARRAY_SIZE(tegra124_drive_groups),
+};
+
 static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
                                         struct device_node *np)
 {
@@ -660,9 +904,16 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 
 static __maybe_unused struct of_device_id pinctrl_tegra30_dt_ids[] = {
 	{
+#ifdef CONFIG_ARCH_TEGRA_3x_SOC
 		.compatible = "nvidia,tegra30-pinmux",
 		.data = (unsigned long)&tegra30_drvdata,
 	}, {
+#endif
+#ifdef CONFIG_ARCH_TEGRA_124_SOC
+		.compatible = "nvidia,tegra124-pinmux",
+		.data = (unsigned long)&tegra124_drvdata,
+	}, {
+#endif
 		/* sentinel */
 	}
 };
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
