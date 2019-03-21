Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6r1J-0003Ji-6i
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 06:17:43 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 21 Mar 2019 06:17:56 +0000
Message-Id: <20190321061756.22190-1-user@vserver64>
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
Subject: [PATCH] ARM: Makefile.imx: group and sort board entries
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

Add new grouping comments for vf6xx- and Cortex-A7 based i.MX6 boards.
Sort moved entries alphabetically.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 images/Makefile.imx | 108 ++++++++++++++++++++++++++--------------------------
 1 file changed, 55 insertions(+), 53 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index c5b700da6..e6f741cdb 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -323,21 +323,6 @@ CFG_start_h100_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-head
 FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
 
-pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
-CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
-FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.imximg
-image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb.img
-
-pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
-CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
-FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
-image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
-
-pblb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
-CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
-FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
-image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
-
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblb.imximg
@@ -463,21 +448,6 @@ CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-
 FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
 
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
-CFG_start_phytec_phycore_imx6ul_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_256mb
-CFG_start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_512mb
-CFG_start_phytec_phycore_imx6ull_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb.img
-
 pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
 CFG_start_imx6q_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
 FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.imximg
@@ -488,16 +458,6 @@ CFG_start_imx6dl_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6
 FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblb.imximg
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i.img
 
-pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
-CFG_start_imx6ul_liteboard_256mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
-FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblb.imximg
-image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb.img
-
-pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
-CFG_start_imx6ul_liteboard_512mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
-FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblb.imximg
-image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb.img
-
 pblb-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblb.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblb.imximg
@@ -513,26 +473,58 @@ CFG_start_advantech_imx6dl_rom_7421.pblb.imximg = $(board)/advantech-mx6/flash-h
 FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblb.imximg
 image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421.img
 
-pblb-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
-CFG_start_imx7s_element14_warp7.pblb.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
-FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.imximg
-image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
+pblb-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
+CFG_start_imx6_zii_rdu2.pblb.imximg = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
+FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.imximg
+image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
 
-pblb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
-CFG_start_phytec_phycore_imx7.pblb.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
-FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7.img
+# ----------------------- i.MX6ul / i.MX6ull based boards --------------
+pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
+CFG_start_imx6ul_liteboard_256mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
+FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblb.imximg
+image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb.img
+
+pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
+CFG_start_imx6ul_liteboard_512mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
+FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblb.imximg
+image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb.img
 
+pblb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
+CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
+FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
+image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
+CFG_start_phytec_phycore_imx6ul_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_256mb
+CFG_start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_512mb
+CFG_start_phytec_phycore_imx6ull_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb.img
+
+pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
+CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
+FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.imximg
+image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb.img
+
+pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
+CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
+FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
+image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
+
+# ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
 FILE_barebox-vf610-twr.img = start_vf610_twr.pblb.imximg
 image-$(CONFIG_MACH_VF610_TWR) += barebox-vf610-twr.img
 
-pblb-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
-CFG_start_imx6_zii_rdu2.pblb.imximg = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
-FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.imximg
-image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
-
 pblb-$(CONFIG_MACH_ZII_VF610_DEV) += start_zii_vf610_dev
 CFG_start_zii_vf610_dev.pblb.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
 FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblb.imximg
@@ -544,6 +536,16 @@ CFG_start_imx7d_sabresd.pblb.imximg = $(board)/freescale-mx7-sabresd/flash-heade
 FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
 
+pblb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
+CFG_start_phytec_phycore_imx7.pblb.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
+FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7.img
+
+pblb-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
+CFG_start_imx7s_element14_warp7.pblb.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
+FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.imximg
+image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
+
 pblb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
 CFG_start_zii_imx7d_rpu2.pblb.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
 FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblb.imximg
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
