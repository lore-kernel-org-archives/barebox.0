Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RUv-0007dJ-Cu
 for barebox@lists.infradead.org; Wed, 21 Aug 2019 14:22:08 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Wed, 21 Aug 2019 16:21:48 +0200
Message-Id: <1566397308-450229-5-git-send-email-m.otto@phytec.de>
In-Reply-To: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
References: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v4 5/5] Makefile.imx: change image creation to
 build_imx_habv4img for i.MX6
To: barebox@lists.infradead.org

change the image creation for NXP i.MX6 to the building function
build_imx_habv4img for creation of unsingned, singnded and encrypted
images

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v4:
    - new patch for changing the image creation to function build_imx_habv4img
    for i.MX6 boards
---
 images/Makefile.imx | 549 +++++++++++++++-------------------------------------
 1 file changed, 156 insertions(+), 393 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index bfe77ec..6fa2237 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -161,401 +161,164 @@ FILE_barebox-tx53-1011.img = start_imx53_tx53_1011.pblb.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-1011.img
 
 # ----------------------- i.MX6 based boards ---------------------------
-pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
-CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
-FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
-image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
-
-pblb-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
-CFG_start_imx6q_guf_santaro.pblb.imximg = $(board)/guf-santaro/flash-header.imxcfg
-FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblb.imximg
-image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro.img
-
-pblb-$(CONFIG_MACH_GK802) += start_imx6_gk802
-CFG_start_imx6_gk802.pblb.imximg = $(board)/gk802/flash-header.imxcfg
-FILE_barebox-gk802.img = start_imx6_gk802.pblb.imximg
-image-$(CONFIG_MACH_GK802) += barebox-gk802.img
-
-pblb-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
-CFG_start_imx6dl_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
-FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblb.imximg
-image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x.img
-
-pblb-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
-CFG_start_imx6q_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
-FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblb.imximg
-image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_4gib
-CFG_start_phytec_pbab01_4gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
-FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-4gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_2gib
-CFG_start_phytec_pbab01_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
-FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-2gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib
-CFG_start_phytec_pbab01_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib_1bank
-CFG_start_phytec_pbab01_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_512mb_1bank
-CFG_start_phytec_pbab01_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-512mb-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
-CFG_start_phytec_pbab01dl_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
-FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib_1bank
-CFG_start_phytec_pbab01dl_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbab01dl-1gib-1bank.img = start_phytec_pbab01dl_1gib_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb_1bank
-CFG_start_phytec_pbab01s_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_256mb_1bank
-CFG_start_phytec_pbab01s_256mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-256mb-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_128mb_1bank
-CFG_start_phytec_pbab01s_128mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-128mb-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
-CFG_start_phytec_phyboard_alcor_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb_1bank
-CFG_start_phytec_phyboard_subra_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
-FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_1gib_1bank
-CFG_start_phytec_phyboard_subra_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
-FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-1gib-1bank.img
-
-pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
-CFG_start_imx6dl_dfi_fs700_m60_6s.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
-FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblb.imximg
-image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
-
-pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
-CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
-FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg
-image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron.img
-
-pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
-CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
-FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg
-image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya.img
-
-pblb-$(CONFIG_MACH_SABRELITE) += start_imx6q_sabrelite
-CFG_start_imx6q_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblb.imximg
-image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite.img
-
-pblb-$(CONFIG_MACH_SABRELITE) += start_imx6dl_sabrelite
-CFG_start_imx6dl_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblb.imximg
-image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
-
-pblb-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
-CFG_start_imx6q_sabresd.pblb.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
-FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblb.imximg
-image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
-
-pblb-$(CONFIG_MACH_UDOO_NEO) += start_imx6sx_udoo_neo
-CFG_start_imx6sx_udoo_neo.pblb.imximg = $(board)/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
-FILE_barebox-udoo-neo.img = start_imx6sx_udoo_neo.pblb.imximg
-image-$(CONFIG_MACH_UDOO_NEO) += barebox-udoo-neo.img
-
-pblb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
-CFG_start_imx6sx_sabresdb.pblb.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
-FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblb.imximg
-image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
-
-pblb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += start_imx6_wandboard
-CFG_start_imx6_wandboard.pblb.imximg = $(board)/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
-FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.pblb.imximg
-image-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += barebox-imx6-wandboard.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
-CFG_start_hummingboard_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
-CFG_start_hummingboard_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2ex
-CFG_start_hummingboard_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2eX.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i4
-CFG_start_hummingboard_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i1
-CFG_start_hummingboard2_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i1.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2
-CFG_start_hummingboard2_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2ex
-CFG_start_hummingboard2_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2eX.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i4
-CFG_start_hummingboard2_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i4.img
-
-pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
-CFG_start_h100_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblb.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
-
-pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
-CFG_start_imx6q_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
-FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblb.imximg
-image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
-
-pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_2g
-CFG_start_imx6q_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
-FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblb.imximg
-image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
-
-pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_1g
-CFG_start_imx6dl_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
-FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblb.imximg
-image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
-
-pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_2g
-CFG_start_imx6dl_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
-FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblb.imximg
-image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
-
-pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6qp_nitrogen6_max
-CFG_start_imx6qp_nitrogen6_max.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
-FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblb.imximg
-image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
-
-pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
-CFG_start_imx6dl_tx6x_512m.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
-FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblb.imximg
-image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-512m.img
-
-pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
-CFG_start_imx6dl_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
-FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblb.imximg
-image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-1g.img
-
-pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_1g
-CFG_start_imx6q_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6q-1g.imxcfg
-FILE_barebox-karo-imx6q-tx6x-1g.img = start_imx6q_tx6x_1g.pblb.imximg
-image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6q-tx6x-1g.img
-
-pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_2g
-CFG_start_imx6q_tx6x_2g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6qp-2g.imxcfg
-FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblb.imximg
-image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6qp-tx6x-2g.img
-
-pblb-$(CONFIG_MACH_UDOO) += start_imx6_udoo
-CFG_start_imx6_udoo.pblb.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
-FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblb.imximg
-image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q.img
-
-pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_cm_fx6
-CFG_start_imx6_cm_fx6.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
-FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.pblb.imximg
-image-$(CONFIG_MACH_CM_FX6) += barebox-cm-fx6.img
-
-pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_utilite
-CFG_start_imx6_utilite.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
-FILE_barebox-utilite.img = start_imx6_utilite.pblb.imximg
-image-$(CONFIG_MACH_CM_FX6) += barebox-utilite.img
-
-pblb-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
-CFG_start_variscite_custom.pblb.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
-FILE_barebox-variscite-custom.img = start_variscite_custom.pblb.imximg
-image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
-
-pblb-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
-CFG_start_imx6q_embedsky_e9.pblb.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
-FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblb.imximg
-image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-embedsky-imx6q-e9.img
-
-pblb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
-CFG_start_imx6s_riotboard.pblb.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
-FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblb.imximg
-image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
-CFG_start_phytec_pbaa03_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
-FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
-CFG_start_phytec_pbaa03_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
-CFG_start_phytec_pbaa03_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
-FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
-CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6qp_som_nand_1gib
-CFG_start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6qp-som-nand-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
-CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_2gib
-CFG_start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-2gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
-CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_1gib
-CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_lc_nand_256mb
-CFG_start_phytec_phycore_imx6dl_som_lc_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-lc-nand-256mb.img = start_phytec_phycore_imx6dl_som_lc_nand_256mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-lc-nand-256mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
-CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_lc_emmc_1gib
-CFG_start_phytec_phycore_imx6dl_som_lc_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-lc-emmc-1gib.img = start_phytec_phycore_imx6dl_som_lc_emmc_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-lc-emmc-1gib.img
-
-pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
-CFG_start_imx6q_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
-FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.imximg
-image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i.img
-
-pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i
-CFG_start_imx6dl_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
-FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblb.imximg
-image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i.img
-
-pblb-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
-CFG_start_imx6q_gw54xx_1gx64.pblb.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
-FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblb.imximg
-image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64.img
-
-pblb-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
-CFG_start_imx6dl_eltec_hipercam.pblb.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
-FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblb.imximg
-image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
-
-pblb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += start_advantech_imx6dl_rom_7421
-CFG_start_advantech_imx6dl_rom_7421.pblb.imximg = $(board)/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
-FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblb.imximg
-image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421.img
-
-pblb-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
-CFG_start_imx6_zii_rdu2.pblb.imximg = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
-FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.imximg
-image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
+$(call build_imx_habv4img, CONFIG_MACH_REALQ7, start_imx6_realq7, datamodul-edm-qmx6/flash-header, datamodul-edm-qmx6)
+
+$(call build_imx_habv4img, CONFIG_MACH_GUF_SANTARO, start_imx6q_guf_santaro, guf-santaro/flash-header, guf-santaro)
+
+$(call build_imx_habv4img, CONFIG_MACH_GK802, start_imx6_gk802, gk802/flash-header, gk802)
+
+$(call build_imx_habv4img, CONFIG_MACH_TQMA6X, start_imx6dl_mba6x, tqma6x/flash-header-tqma6dl, tq-tqma6s-mba6x)
+
+$(call build_imx_habv4img, CONFIG_MACH_TQMA6X, start_imx6q_mba6x, tqma6x/flash-header-tqma6q, tq-tqma6q-mba6x)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_4gib, phytec-som-imx6/flash-header-phytec-pfla02-4gib, phytec-pbab01-4gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_2gib, phytec-som-imx6/flash-header-phytec-pfla02-2gib, phytec-pbab01-2gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_1gib, phytec-som-imx6/flash-header-phytec-pfla02-1gib, phytec-pbab01-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_1gib_1bank, phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank, phytec-pbab01-1gib-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_512mb_1bank, phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank, phytec-pbab01-512mb-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01dl_1gib, phytec-som-imx6/flash-header-phytec-pfla02dl-1gib, phytec-pbab01dl-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01dl_1gib_1bank, phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank, phytec-pbab01dl-1gib-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01s_512mb_1bank, phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank, phytec-pbab01s-512mb-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01s_256mb_1bank, phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank, phytec-pbab01s-256mb-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01s_128mb_1bank, phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank, phytec-pbab01s-128mb-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phyboard_alcor_1gib, phytec-som-imx6/flash-header-phytec-pfla02-1gib, phytec-phyboard-alcor-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phyboard_subra_512mb_1bank, phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank, phytec-phyboard-subra-512mb-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phyboard_subra_1gib_1bank, phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank, phytec-phyboard-subra-1gib-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_DFI_FS700_M60, start_imx6dl_dfi_fs700_m60_6s, dfi-fs700-m60/flash-header-fs700-m60-6s, dfi-fs700-m60-6s)
+
+$(call build_imx_habv4img, CONFIG_MACH_DFI_FS700_M60, start_imx6q_dfi_fs700_m60_6q_micron, dfi-fs700-m60/flash-header-fs700-m60-6q-micron, dfi-fs700-m60-6q-micron)
+
+$(call build_imx_habv4img, CONFIG_MACH_DFI_FS700_M60, start_imx6q_dfi_fs700_m60_6q_nanya, dfi-fs700-m60/flash-header-fs700-m60-6q-nanya, dfi-fs700-m60-6q-nanya)
+
+$(call build_imx_habv4img, CONFIG_MACH_SABRELITE, start_imx6q_sabrelite, freescale-mx6-sabrelite/flash-header-mx6-sabrelite, freescale-imx6q-sabrelite)
+
+$(call build_imx_habv4img, CONFIG_MACH_SABRELITE, start_imx6dl_sabrelite, freescale-mx6-sabrelite/flash-header-mx6-sabrelite, freescale-imx6dl-sabrelite)
+
+$(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6q_sabresd, freescale-mx6-sabresd/flash-header-mx6-sabresd, freescale-imx6q-sabresd)
+
+$(call build_imx_habv4img, CONFIG_MACH_UDOO_NEO, start_imx6sx_udoo_neo, udoo-neo/flash-header-mx6sx-udoo-neo_full, udoo-neo)
+
+$(call build_imx_habv4img, CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB, start_imx6sx_sabresdb, freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb, freescale-imx6sx-sabresdb)
+
+$(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_WANDBOARD, start_imx6_wandboard, technexion-wandboard/flash-header-technexion-wandboard, imx6-wandboard)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard_microsom_i1, solidrun-microsom/flash-header-microsom-i1, solidrun-hummingboard-microsom-i1)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard_microsom_i2, solidrun-microsom/flash-header-microsom-i2, solidrun-hummingboard-microsom-i2)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard_microsom_i2ex, solidrun-microsom/flash-header-microsom-i2eX, solidrun-hummingboard-microsom-i2eX)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard_microsom_i4, solidrun-microsom/flash-header-microsom-i4, solidrun-hummingboard-microsom-i4)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard2_microsom_i1, solidrun-microsom/flash-header-microsom-i1, solidrun-hummingboard2-microsom-i1)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard2_microsom_i2, solidrun-microsom/flash-header-microsom-i2, solidrun-hummingboard2-microsom-i2)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard2_microsom_i2ex, solidrun-microsom/flash-header-microsom-i2eX, solidrun-hummingboard2-microsom-i2eX)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_hummingboard2_microsom_i4, solidrun-microsom/flash-header-microsom-i4, solidrun-hummingboard2-microsom-i4)
+
+$(call build_imx_habv4img, CONFIG_MACH_SOLIDRUN_MICROSOM, start_h100_microsom_i2ex, solidrun-microsom/flash-header-microsom-i2eX, auvidea-h100-microsom-i2eX)
+
+$(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6q_nitrogen6x_1g, boundarydevices-nitrogen6/flash-header-nitrogen6q-1g, boundarydevices-imx6q-nitrogen6x-1g)
+
+$(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6q_nitrogen6x_2g, boundarydevices-nitrogen6/flash-header-nitrogen6q-2g, boundarydevices-imx6q-nitrogen6x-2g)
+
+$(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6dl_nitrogen6x_1g, boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g, boundarydevices-imx6dl-nitrogen6x-1g)
+
+$(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6dl_nitrogen6x_2g, boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g, boundarydevices-imx6dl-nitrogen6x-2g)
+
+$(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6qp_nitrogen6_max, boundarydevices-nitrogen6/flash-header-nitrogen6qp-max, boundarydevices-imx6qp-nitrogen6_max)
+
+$(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6dl_tx6x_512m, karo-tx6x/flash-header-tx6dl-512m, karo-imx6dl-tx6x-512m)
+
+$(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6dl_tx6x_1g, karo-tx6x/flash-header-tx6dl-1g, karo-imx6dl-tx6x-1g)
+
+$(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6q_tx6x_1g, karo-tx6x/flash-header-tx6q-1g, karo-imx6q-tx6x-1g)
+
+$(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6q_tx6x_2g, karo-tx6x/flash-header-tx6qp-2g, karo-imx6qp-tx6x-2g)
+
+$(call build_imx_habv4img, CONFIG_MACH_UDOO, start_imx6_udoo, udoo/flash-header-mx6-udoo, udoo-imx6q)
+
+$(call build_imx_habv4img, CONFIG_MACH_CM_FX6, start_imx6_cm_fx6, cm-fx6/flash-header-mx6-cm-fx6, cm-fx6)
+
+$(call build_imx_habv4img, CONFIG_MACH_CM_FX6, start_imx6_utilite, cm-fx6/flash-header-mx6-cm-fx6, utilite)
+
+$(call build_imx_habv4img, CONFIG_MACH_VARISCITE_MX6, start_variscite_custom, variscite-mx6/flash-header-variscite, variscite-custom)
+
+$(call build_imx_habv4img, CONFIG_MACH_EMBEDSKY_E9, start_imx6q_embedsky_e9, embedsky-e9/flash-header-e9, embedsky-imx6q-e9)
+
+$(call build_imx_habv4img, CONFIG_MACH_EMBEST_RIOTBOARD, start_imx6s_riotboard, embest-riotboard/flash-header-embest-riotboard, embest-imx6s-riotboard)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbaa03_1gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib, phytec-pbaa03-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbaa03_1gib_1bank, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank, phytec-pbaa03-1gib-1bank)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbaa03_2gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib, phytec-pbaa03-2gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6q_som_nand_1gib, phytec-som-imx6/flash-header-phytec-pcm058-1gib, phytec-phycore-imx6q-som-nand-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6qp_som_nand_1gib, phytec-som-imx6/flash-header-phytec-pcm058qp-1gib, phytec-phycore-imx6qp-som-nand-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6q_som_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058-1gib, phytec-phycore-imx6q-som-emmc-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6q_som_emmc_2gib, phytec-som-imx6/flash-header-phytec-pcm058-2gib, phytec-phycore-imx6q-som-emmc-2gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_nand_256mb, phytec-som-imx6/flash-header-phytec-pcm058dl-256mb, phytec-phycore-imx6dl-som-nand-256mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_nand_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit, phytec-phycore-imx6dl-som-nand-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_lc_nand_256mb, phytec-som-imx6/flash-header-phytec-pcm058dl-256mb, phytec-phycore-imx6dl-som-lc-nand-256mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-1gib, phytec-phycore-imx6dl-som-emmc-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_lc_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-1gib, phytec-phycore-imx6dl-som-lc-emmc-1gib)
+
+$(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6q_samx6i, kontron-samx6i/flash-header-samx6i-quad, imx6q-samx6i)
+
+$(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6dl_samx6i, kontron-samx6i/flash-header-samx6i-duallite, imx6dl-samx6i)
+
+$(call build_imx_habv4img, CONFIG_MACH_GW_VENTANA, start_imx6q_gw54xx_1gx64, gateworks-ventana/flash-header-ventana-quad-1gx64, gateworks-imx6q-ventana-1gx64)
+
+$(call build_imx_habv4img, CONFIG_MACH_ELTEC_HIPERCAM, start_imx6dl_eltec_hipercam, eltec-hipercam/flash-header-eltec-hipercam, eltec-hipercam)
+
+$(call build_imx_habv4img, CONFIG_MACH_ADVANTECH_ROM_742X, start_advantech_imx6dl_rom_7421, advantech-mx6/flash-header-advantech-rom-7421, advantech-imx6dl-rom-7421)
+
+$(call build_imx_habv4img, CONFIG_MACH_ZII_RDU2, start_imx6_zii_rdu2, zii-imx6q-rdu2/flash-header-rdu2, zii-imx6-rdu2)
 
 # ----------------------- i.MX6ul / i.MX6ull based boards --------------
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
-pblb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
-CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
-FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
-image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_nand_512mb
-CFG_start_phytec_phycore_imx6ul_som_nand_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ul-nand-512mb.img = start_phytec_phycore_imx6ul_som_nand_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-nand-512mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_nand_256mb
-CFG_start_phytec_phycore_imx6ull_som_lc_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-lc-nand-256mb.img = start_phytec_phycore_imx6ull_som_lc_nand_256mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-nand-256mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_nand_512mb
-CFG_start_phytec_phycore_imx6ull_som_nand_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-nand-512mb.img = start_phytec_phycore_imx6ull_som_nand_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-nand-512mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_emmc_512mb
-CFG_start_phytec_phycore_imx6ull_som_emmc_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-emmc-512mb.img = start_phytec_phycore_imx6ull_som_emmc_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-emmc-512mb.img
-
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
-pblb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += start_imx6ul_ccimx6ulsbcpro
-CFG_start_imx6ul_ccimx6ulsbcpro.pblb.imximg = $(board)/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
-FILE_barebox-imx6ul-ccimx6ulsbcpro.img = start_imx6ul_ccimx6ulsbcpro.pblb.imximg
-image-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += barebox-imx6ul-ccimx6ulsbcpro.img
+$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_256mb, grinn-liteboard/flash-header-liteboard-256mb, grinn-liteboard-256mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_512mb, grinn-liteboard/flash-header-liteboard-512mb, grinn-liteboard-512mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_NXP_IMX6ULL_EVK, start_nxp_imx6ull_evk, nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk, nxp-imx6ull-evk)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ul_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ul-nand-512mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_lc_nand_256mb, phytec-som-imx6/flash-header-phytec-pcl063-256mb, phytec-phycore-imx6ull-lc-nand-256mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ull-nand-512mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ull-emmc-512mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico_hobbit_256mb, technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256, imx6ul-pico-hobbit-256mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico_hobbit_512mb, technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512, imx6ul-pico-hobbit-512mb)
+
+$(call build_imx_habv4img, CONFIG_MACH_DIGI_CCIMX6ULSBCPRO, start_imx6ul_ccimx6ulsbcpro, digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro, imx6ul-ccimx6ulsbcpro)
 
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
