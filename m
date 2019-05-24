Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Ri-0004xi-3K
 for barebox@lists.infradead.org; Fri, 24 May 2019 11:33:14 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Fri, 24 May 2019 13:32:56 +0200
Message-Id: <1558697578-69121-2-git-send-email-m.otto@phytec.de>
In-Reply-To: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
References: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH 2/4] imx6, imx7, imx8: changing hardcoded suffix to variable
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

change the hardcoded suffix for the build type in the Makefile.imx to
the variable CONFIG_IMX_IMG_SUFFIX, which can be configured in the Kconfig
all boards for i.MX6, i.MX7 and i.MX8 have been changed

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
 images/Makefile.imx | 164 ++++++++++++++++++++++++++--------------------------
 1 file changed, 82 insertions(+), 82 deletions(-)
 mode change 100644 => 100755 images/Makefile.imx

diff --git a/images/Makefile.imx b/images/Makefile.imx
old mode 100644
new mode 100755
index 0824b8c..2cdec9b
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -146,378 +146,378 @@ image-$(CONFIG_MACH_TX53) += barebox-tx53-1011.img
 # ----------------------- i.MX6 based boards ---------------------------
 pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
-FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
+FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
 
 pblb-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
 CFG_start_imx6q_guf_santaro.pblb.imximg = $(board)/guf-santaro/flash-header.imxcfg
-FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblb.imximg
+FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro.img
 
 pblb-$(CONFIG_MACH_GK802) += start_imx6_gk802
 CFG_start_imx6_gk802.pblb.imximg = $(board)/gk802/flash-header.imxcfg
-FILE_barebox-gk802.img = start_imx6_gk802.pblb.imximg
+FILE_barebox-gk802.img = start_imx6_gk802.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_GK802) += barebox-gk802.img
 
 pblb-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
 CFG_start_imx6dl_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
-FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblb.imximg
+FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x.img
 
 pblb-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
 CFG_start_imx6q_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
-FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblb.imximg
+FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_4gib
 CFG_start_phytec_pbab01_4gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
-FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblb.imximg
+FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-4gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_2gib
 CFG_start_phytec_pbab01_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
-FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblb.imximg
+FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-2gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib
 CFG_start_phytec_pbab01_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblb.imximg
+FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib_1bank
 CFG_start_phytec_pbab01_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblb.imximg
+FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_512mb_1bank
 CFG_start_phytec_pbab01_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblb.imximg
+FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-512mb-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
 CFG_start_phytec_pbab01dl_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
-FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblb.imximg
+FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib_1bank
 CFG_start_phytec_pbab01dl_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbab01dl-1gib-1bank.img = start_phytec_pbab01dl_1gib_1bank.pblb.imximg
+FILE_barebox-phytec-pbab01dl-1gib-1bank.img = start_phytec_pbab01dl_1gib_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb_1bank
 CFG_start_phytec_pbab01s_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblb.imximg
+FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_256mb_1bank
 CFG_start_phytec_pbab01s_256mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblb.imximg
+FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-256mb-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_128mb_1bank
 CFG_start_phytec_pbab01s_128mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblb.imximg
+FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-128mb-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
 CFG_start_phytec_phyboard_alcor_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblb.imximg
+FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb_1bank
 CFG_start_phytec_phyboard_subra_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
-FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblb.imximg
+FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_1gib_1bank
 CFG_start_phytec_phyboard_subra_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
-FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblb.imximg
+FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-1gib-1bank.img
 
 pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
-FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblb.imximg
+FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
 
 pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
 CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
-FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg
+FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron.img
 
 pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
 CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
-FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg
+FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya.img
 
 pblb-$(CONFIG_MACH_SABRELITE) += start_imx6q_sabrelite
 CFG_start_imx6q_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblb.imximg
+FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite.img
 
 pblb-$(CONFIG_MACH_SABRELITE) += start_imx6dl_sabrelite
 CFG_start_imx6dl_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblb.imximg
+FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
 
 pblb-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
 CFG_start_imx6q_sabresd.pblb.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
-FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblb.imximg
+FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
 
 pblb-$(CONFIG_MACH_UDOO_NEO) += start_imx6sx_udoo_neo
 CFG_start_imx6sx_udoo_neo.pblb.imximg = $(board)/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
-FILE_barebox-udoo-neo.img = start_imx6sx_udoo_neo.pblb.imximg
+FILE_barebox-udoo-neo.img = start_imx6sx_udoo_neo.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_UDOO_NEO) += barebox-udoo-neo.img
 
 pblb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
 CFG_start_imx6sx_sabresdb.pblb.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
-FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblb.imximg
+FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
 
 pblb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += start_imx6_wandboard
 CFG_start_imx6_wandboard.pblb.imximg = $(board)/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
-FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.pblb.imximg
+FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += barebox-imx6-wandboard.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
 CFG_start_hummingboard_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblb.imximg
+FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
 CFG_start_hummingboard_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblb.imximg
+FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2ex
 CFG_start_hummingboard_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblb.imximg
+FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2eX.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i4
 CFG_start_hummingboard_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblb.imximg
+FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i1
 CFG_start_hummingboard2_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblb.imximg
+FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i1.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2
 CFG_start_hummingboard2_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblb.imximg
+FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2ex
 CFG_start_hummingboard2_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblb.imximg
+FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2eX.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i4
 CFG_start_hummingboard2_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblb.imximg
+FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i4.img
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
 CFG_start_h100_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblb.imximg
+FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
-FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblb.imximg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_2g
 CFG_start_imx6q_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
-FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblb.imximg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_1g
 CFG_start_imx6dl_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
-FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblb.imximg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_2g
 CFG_start_imx6dl_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
-FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblb.imximg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6qp_nitrogen6_max
 CFG_start_imx6qp_nitrogen6_max.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
-FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblb.imximg
+FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
 CFG_start_imx6dl_tx6x_512m.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
-FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblb.imximg
+FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-512m.img
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
 CFG_start_imx6dl_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
-FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblb.imximg
+FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-1g.img
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_1g
 CFG_start_imx6q_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6q-1g.imxcfg
-FILE_barebox-karo-imx6q-tx6x-1g.img = start_imx6q_tx6x_1g.pblb.imximg
+FILE_barebox-karo-imx6q-tx6x-1g.img = start_imx6q_tx6x_1g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6q-tx6x-1g.img
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_2g
 CFG_start_imx6q_tx6x_2g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6qp-2g.imxcfg
-FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblb.imximg
+FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6qp-tx6x-2g.img
 
 pblb-$(CONFIG_MACH_UDOO) += start_imx6_udoo
 CFG_start_imx6_udoo.pblb.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
-FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblb.imximg
+FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q.img
 
 pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_cm_fx6
 CFG_start_imx6_cm_fx6.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
-FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.pblb.imximg
+FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_CM_FX6) += barebox-cm-fx6.img
 
 pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_utilite
 CFG_start_imx6_utilite.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
-FILE_barebox-utilite.img = start_imx6_utilite.pblb.imximg
+FILE_barebox-utilite.img = start_imx6_utilite.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_CM_FX6) += barebox-utilite.img
 
 pblb-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
 CFG_start_variscite_custom.pblb.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
-FILE_barebox-variscite-custom.img = start_variscite_custom.pblb.imximg
+FILE_barebox-variscite-custom.img = start_variscite_custom.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
 
 pblb-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
 CFG_start_imx6q_embedsky_e9.pblb.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
-FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblb.imximg
+FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-embedsky-imx6q-e9.img
 
 pblb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
 CFG_start_imx6s_riotboard.pblb.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
-FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblb.imximg
+FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
 CFG_start_phytec_pbaa03_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
-FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblb.imximg
+FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
 CFG_start_phytec_pbaa03_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblb.imximg
+FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
 CFG_start_phytec_pbaa03_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
-FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblb.imximg
+FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
 CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg
+FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6qp_som_nand_1gib
 CFG_start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg
+FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6qp-som-nand-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
 CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_2gib
 CFG_start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-2gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
 CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_1gib
 CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
 CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg
+FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
 
 pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
 CFG_start_imx6q_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
-FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.imximg
+FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i.img
 
 pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i
 CFG_start_imx6dl_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
-FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblb.imximg
+FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i.img
 
 pblb-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblb.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
-FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblb.imximg
+FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64.img
 
 pblb-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
 CFG_start_imx6dl_eltec_hipercam.pblb.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
-FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblb.imximg
+FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
 
 pblb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += start_advantech_imx6dl_rom_7421
 CFG_start_advantech_imx6dl_rom_7421.pblb.imximg = $(board)/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
-FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblb.imximg
+FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421.img
 
 pblb-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
 CFG_start_imx6_zii_rdu2.pblb.imximg = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
-FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.imximg
+FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
 
 # ----------------------- i.MX6ul / i.MX6ull based boards --------------
 pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
 CFG_start_imx6ul_liteboard_256mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
-FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblb.imximg
+FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb.img
 
 pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
 CFG_start_imx6ul_liteboard_512mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
-FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblb.imximg
+FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb.img
 
 pblb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
 CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
-FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
+FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
 CFG_start_phytec_phycore_imx6ul_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.imximg
+FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_256mb
 CFG_start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg
+FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_512mb
 CFG_start_phytec_phycore_imx6ull_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblb.imximg
+FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb.img
 
 pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
 CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
-FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.imximg
+FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb.img
 
 pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
 CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
-FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
+FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
 
 # ----------------------- vf6xx based boards ---------------------------
@@ -534,39 +534,39 @@ image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
 # ----------------------- i.MX7 based boards ---------------------------
 pblb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
 CFG_start_imx7d_sabresd.pblb.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
-FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblb.imximg
+FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
 
 pblb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
 CFG_start_phytec_phycore_imx7.pblb.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
-FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblb.imximg
+FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7.img
 
 pblb-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
 CFG_start_imx7s_element14_warp7.pblb.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
-FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.imximg
+FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
 
 pblb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
 CFG_start_zii_imx7d_rpu2.pblb.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
-FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblb.imximg
+FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2.img
 
 # ----------------------- i.MX8mq based boards --------------------------
 pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
 CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
 MAX_PBL_MEMORY_SIZE_start_nxp_imx8mq_evk = 0x3f000
-FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.imximg
+FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
 
 pblb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += start_zii_imx8mq_dev
 CFG_start_zii_imx8mq_dev.pblb.imximg = $(board)/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
 MAX_PBL_MEMORY_SIZE_start_zii_imx8mq_dev.pbl = 0x3f000
-FILE_barebox-zii-imx8mq-dev.img = start_zii_imx8mq_dev.pblb.imximg
+FILE_barebox-zii-imx8mq-dev.img = start_zii_imx8mq_dev.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += barebox-zii-imx8mq-dev.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += start_phytec_phycore_imx8mq
 CFG_start_phytec_phycore_imx8mq.pblb.imximg = $(board)/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
 MAX_PBL_MEMORY_SIZE_start_phytec_phycore_imx8mq.pbl = 0x3f000
-FILE_barebox-phytec-phycore-imx8mq.img = start_phytec_phycore_imx8mq.pblb.imximg
+FILE_barebox-phytec-phycore-imx8mq.img = start_phytec_phycore_imx8mq.pblb.${imximg_suffix}
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += barebox-phytec-phycore-imx8mq.img
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
