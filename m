Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1Mk-0001Fo-7X
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 08:02:18 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Thu, 18 Jul 2019 10:02:01 +0200
Message-Id: <1563436921-362991-4-git-send-email-m.otto@phytec.de>
In-Reply-To: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
References: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v3 4/4] Makefile: add creation of signed/encrypted images for
 imx6, imx7, imx8
To: barebox@lists.infradead.org

add in the images/Makefile.imx the support of building for signed, usb
signed and encrypted/signed images for NXP i.MX HABV4
support for NXP i.mx6, i.mx7 and i.mx8

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v3:
    - nothing
Changes in v2:
    - was Patch 2/4 in v1
    - no dynamic variable, parallel building of different image types now
---
 images/Makefile.imx | 322 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 321 insertions(+), 1 deletion(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9a7187a..9c70703 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -147,216 +147,388 @@ pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
 FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
 image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
+FILE_barebox-datamodul-edm-qmx6-s.img = start_imx6_realq7.pblb.simximg
+FILE_barebox-datamodul-edm-qmx6-us.img = start_imx6_realq7.pblb.usimximg
+FILE_barebox-datamodul-edm-qmx6-es.img = start_imx6_realq7.pblb.esimximg
+habv4image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6
 
 pblb-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
 CFG_start_imx6q_guf_santaro.pblb.imximg = $(board)/guf-santaro/flash-header.imxcfg
 FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblb.imximg
 image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro.img
+FILE_barebox-guf-santaro-s.img = start_imx6q_guf_santaro.pblb.simximg
+FILE_barebox-guf-santaro-us.img = start_imx6q_guf_santaro.pblb.usimximg
+FILE_barebox-guf-santaro-es.img = start_imx6q_guf_santaro.pblb.esimximg
+habv4image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro
 
 pblb-$(CONFIG_MACH_GK802) += start_imx6_gk802
 CFG_start_imx6_gk802.pblb.imximg = $(board)/gk802/flash-header.imxcfg
 FILE_barebox-gk802.img = start_imx6_gk802.pblb.imximg
 image-$(CONFIG_MACH_GK802) += barebox-gk802.img
+FILE_barebox-gk802-s.img = start_imx6_gk802.pblb.simximg
+FILE_barebox-gk802-us.img = start_imx6_gk802.pblb.usimximg
+FILE_barebox-gk802-es.img = start_imx6_gk802.pblb.esimximg
+habv4image-$(CONFIG_MACH_GK802) += barebox-gk802
 
 pblb-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
 CFG_start_imx6dl_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
 FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblb.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x.img
+FILE_barebox-tq-tqma6s-mba6x-s.img = start_imx6dl_mba6x.pblb.simximg
+FILE_barebox-tq-tqma6s-mba6x-us.img = start_imx6dl_mba6x.pblb.usimximg
+FILE_barebox-tq-tqma6s-mba6x-es.img = start_imx6dl_mba6x.pblb.esimximg
+habv4image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x
 
 pblb-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
 CFG_start_imx6q_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
 FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblb.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
+FILE_barebox-tq-tqma6q-mba6x-s.img = start_imx6q_mba6x.pblb.simximg
+FILE_barebox-tq-tqma6q-mba6x-us.img = start_imx6q_mba6x.pblb.usimximg
+FILE_barebox-tq-tqma6q-mba6x-es.img = start_imx6q_mba6x.pblb.esimximg
+habv4image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_4gib
 CFG_start_phytec_pbab01_4gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
 FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-4gib.img
+FILE_barebox-phytec-pbab01-4gib-s.img = start_phytec_pbab01_4gib.pblb.simximg
+FILE_barebox-phytec-pbab01-4gib-us.img = start_phytec_pbab01_4gib.pblb.usimximg
+FILE_barebox-phytec-pbab01-4gib-es.img = start_phytec_pbab01_4gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-4gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_2gib
 CFG_start_phytec_pbab01_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
 FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-2gib.img
+FILE_barebox-phytec-pbab01-2gib-s.img = start_phytec_pbab01_2gib.pblb.simximg
+FILE_barebox-phytec-pbab01-2gib-us.img = start_phytec_pbab01_2gib.pblb.usimximg
+FILE_barebox-phytec-pbab01-2gib-es.img = start_phytec_pbab01_2gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-2gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib
 CFG_start_phytec_pbab01_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
 FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib.img
+FILE_barebox-phytec-pbab01-1gib-s.img = start_phytec_pbab01_1gib.pblb.simximg
+FILE_barebox-phytec-pbab01-1gib-us.img = start_phytec_pbab01_1gib.pblb.usimximg
+FILE_barebox-phytec-pbab01-1gib-es.img = start_phytec_pbab01_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib_1bank
 CFG_start_phytec_pbab01_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
 FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank.img
+FILE_barebox-phytec-pbab01-1gib-1bank-s.img = start_phytec_pbab01_1gib_1bank.pblb.simximg
+FILE_barebox-phytec-pbab01-1gib-1bank-us.img = start_phytec_pbab01_1gib_1bank.pblb.usimximg
+FILE_barebox-phytec-pbab01-1gib-1bank-es.img = start_phytec_pbab01_1gib_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_512mb_1bank
 CFG_start_phytec_pbab01_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
 FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-512mb-1bank.img
+FILE_barebox-phytec-pbab01-512mb-1bank-s.img = start_phytec_pbab01_512mb_1bank.pblb.simximg
+FILE_barebox-phytec-pbab01-512mb-1bank-us.img = start_phytec_pbab01_512mb_1bank.pblb.usimximg
+FILE_barebox-phytec-pbab01-512mb-1bank-es.img = start_phytec_pbab01_512mb_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-512mb-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
 CFG_start_phytec_pbab01dl_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
 FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib.img
+FILE_barebox-phytec-pbab01dl-1gib-s.img = start_phytec_pbab01dl_1gib.pblb.simximg
+FILE_barebox-phytec-pbab01dl-1gib-us.img = start_phytec_pbab01dl_1gib.pblb.usimximg
+FILE_barebox-phytec-pbab01dl-1gib-es.img = start_phytec_pbab01dl_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib_1bank
 CFG_start_phytec_pbab01dl_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
 FILE_barebox-phytec-pbab01dl-1gib-1bank.img = start_phytec_pbab01dl_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib-1bank.img
+FILE_barebox-phytec-pbab01dl-1gib-1bank-s.img = start_phytec_pbab01dl_1gib_1bank.pblb.simximg
+FILE_barebox-phytec-pbab01dl-1gib-1bank-us.img = start_phytec_pbab01dl_1gib_1bank.pblb.usimximg
+FILE_barebox-phytec-pbab01dl-1gib-1bank-es.img = start_phytec_pbab01dl_1gib_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb_1bank
 CFG_start_phytec_pbab01s_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
 FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank.img
+FILE_barebox-phytec-pbab01s-512mb-1bank-s.img = start_phytec_pbab01s_512mb_1bank.pblb.simximg
+FILE_barebox-phytec-pbab01s-512mb-1bank-us.img = start_phytec_pbab01s_512mb_1bank.pblb.usimximg
+FILE_barebox-phytec-pbab01s-512mb-1bank-es.img = start_phytec_pbab01s_512mb_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_256mb_1bank
 CFG_start_phytec_pbab01s_256mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
 FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-256mb-1bank.img
+FILE_barebox-phytec-pbab01s-256mb-1bank-s.img = start_phytec_pbab01s_256mb_1bank.pblb.simximg
+FILE_barebox-phytec-pbab01s-256mb-1bank-us.img = start_phytec_pbab01s_256mb_1bank.pblb.usimximg
+FILE_barebox-phytec-pbab01s-256mb-1bank-es.img = start_phytec_pbab01s_256mb_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-256mb-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_128mb_1bank
 CFG_start_phytec_pbab01s_128mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
 FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-128mb-1bank.img
+FILE_barebox-phytec-pbab01s-128mb-1bank-s.img = start_phytec_pbab01s_128mb_1bank.pblb.simximg
+FILE_barebox-phytec-pbab01s-128mb-1bank-us.img = start_phytec_pbab01s_128mb_1bank.pblb.usimximg
+FILE_barebox-phytec-pbab01s-128mb-1bank-es.img = start_phytec_pbab01s_128mb_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-128mb-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
 CFG_start_phytec_phyboard_alcor_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
 FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib.img
+FILE_barebox-phytec-phyboard-alcor-1gib-s.img = start_phytec_phyboard_alcor_1gib.pblb.simximg
+FILE_barebox-phytec-phyboard-alcor-1gib-us.img = start_phytec_phyboard_alcor_1gib.pblb.usimximg
+FILE_barebox-phytec-phyboard-alcor-1gib-es.img = start_phytec_phyboard_alcor_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb_1bank
 CFG_start_phytec_phyboard_subra_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
 FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank.img
+FILE_barebox-phytec-phyboard-subra-512mb-1bank-s.img = start_phytec_phyboard_subra_512mb_1bank.pblb.simximg
+FILE_barebox-phytec-phyboard-subra-512mb-1bank-us.img = start_phytec_phyboard_subra_512mb_1bank.pblb.usimximg
+FILE_barebox-phytec-phyboard-subra-512mb-1bank-es.img = start_phytec_phyboard_subra_512mb_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_1gib_1bank
 CFG_start_phytec_phyboard_subra_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
 FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-1gib-1bank.img
+FILE_barebox-phytec-phyboard-subra-1gib-1bank-s.img = start_phytec_phyboard_subra_1gib_1bank.pblb.simximg
+FILE_barebox-phytec-phyboard-subra-1gib-1bank-us.img = start_phytec_phyboard_subra_1gib_1bank.pblb.usimximg
+FILE_barebox-phytec-phyboard-subra-1gib-1bank-es.img = start_phytec_phyboard_subra_1gib_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-1gib-1bank
 
 pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
 FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblb.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
+FILE_barebox-dfi-fs700-m60-6s-s.img = start_imx6dl_dfi_fs700_m60_6s.pblb.simximg
+FILE_barebox-dfi-fs700-m60-6s-us.img = start_imx6dl_dfi_fs700_m60_6s.pblb.usimximg
+FILE_barebox-dfi-fs700-m60-6s-es.img = start_imx6dl_dfi_fs700_m60_6s.pblb.esimximg
+habv4image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s
 
 pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
 CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
 FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron.img
+FILE_barebox-dfi-fs700-m60-6q-micron-s.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.simximg
+FILE_barebox-dfi-fs700-m60-6q-micron-us.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.usimximg
+FILE_barebox-dfi-fs700-m60-6q-micron-es.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.esimximg
+habv4image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron
 
 pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
 CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
 FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya.img
+FILE_barebox-dfi-fs700-m60-6q-nanya-s.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.simximg
+FILE_barebox-dfi-fs700-m60-6q-nanya-us.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.usimximg
+FILE_barebox-dfi-fs700-m60-6q-nanya-es.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.esimximg
+habv4image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya
 
 pblb-$(CONFIG_MACH_SABRELITE) += start_imx6q_sabrelite
 CFG_start_imx6q_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
 FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblb.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite.img
+FILE_barebox-freescale-imx6q-sabrelite-s.img = start_imx6q_sabrelite.pblb.simximg
+FILE_barebox-freescale-imx6q-sabrelite-us.img = start_imx6q_sabrelite.pblb.usimximg
+FILE_barebox-freescale-imx6q-sabrelite-es.img = start_imx6q_sabrelite.pblb.esimximg
+habv4image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite
 
 pblb-$(CONFIG_MACH_SABRELITE) += start_imx6dl_sabrelite
 CFG_start_imx6dl_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
 FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblb.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
+FILE_barebox-freescale-imx6dl-sabrelite-s.img = start_imx6dl_sabrelite.pblb.simximg
+FILE_barebox-freescale-imx6dl-sabrelite-us.img = start_imx6dl_sabrelite.pblb.usimximg
+FILE_barebox-freescale-imx6dl-sabrelite-es.img = start_imx6dl_sabrelite.pblb.esimximg
+habv4image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite
 
 pblb-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
 CFG_start_imx6q_sabresd.pblb.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
 FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblb.imximg
 image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
+FILE_barebox-freescale-imx6q-sabresd-s.img = start_imx6q_sabresd.pblb.simximg
+FILE_barebox-freescale-imx6q-sabresd-us.img = start_imx6q_sabresd.pblb.usimximg
+FILE_barebox-freescale-imx6q-sabresd-es.img = start_imx6q_sabresd.pblb.esimximg
+habv4image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd
 
 pblb-$(CONFIG_MACH_UDOO_NEO) += start_imx6sx_udoo_neo
 CFG_start_imx6sx_udoo_neo.pblb.imximg = $(board)/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
 FILE_barebox-udoo-neo.img = start_imx6sx_udoo_neo.pblb.imximg
 image-$(CONFIG_MACH_UDOO_NEO) += barebox-udoo-neo.img
+FILE_barebox-udoo-neo-s.img = start_imx6sx_udoo_neo.pblb.simximg
+FILE_barebox-udoo-neo-us.img = start_imx6sx_udoo_neo.pblb.usimximg
+FILE_barebox-udoo-neo-es.img = start_imx6sx_udoo_neo.pblb.esimximg
+habv4image-$(CONFIG_MACH_UDOO_NEO) += barebox-udoo-neo
 
 pblb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
 CFG_start_imx6sx_sabresdb.pblb.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
 FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
+FILE_barebox-freescale-imx6sx-sabresdb-s.img = start_imx6sx_sabresdb.pblb.simximg
+FILE_barebox-freescale-imx6sx-sabresdb-us.img = start_imx6sx_sabresdb.pblb.usimximg
+FILE_barebox-freescale-imx6sx-sabresdb-es.img = start_imx6sx_sabresdb.pblb.esimximg
+habv4image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb
 
 pblb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += start_imx6_wandboard
 CFG_start_imx6_wandboard.pblb.imximg = $(board)/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
 FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += barebox-imx6-wandboard.img
+FILE_barebox-imx6-wandboard-s.img = start_imx6_wandboard.pblb.simximg
+FILE_barebox-imx6-wandboard-us.img = start_imx6_wandboard.pblb.usimximg
+FILE_barebox-imx6-wandboard-es.img = start_imx6_wandboard.pblb.esimximg
+habv4image-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += barebox-imx6-wandboard
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
 CFG_start_hummingboard_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
 FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
+FILE_barebox-solidrun-hummingboard-microsom-i1-s.img = start_hummingboard_microsom_i1.pblb.simximg
+FILE_barebox-solidrun-hummingboard-microsom-i1-us.img = start_hummingboard_microsom_i1.pblb.usimximg
+FILE_barebox-solidrun-hummingboard-microsom-i1-es.img = start_hummingboard_microsom_i1.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
 CFG_start_hummingboard_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
 FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2.img
+FILE_barebox-solidrun-hummingboard-microsom-i2-s.img = start_hummingboard_microsom_i2.pblb.simximg
+FILE_barebox-solidrun-hummingboard-microsom-i2-us.img = start_hummingboard_microsom_i2.pblb.usimximg
+FILE_barebox-solidrun-hummingboard-microsom-i2-es.img = start_hummingboard_microsom_i2.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2ex
 CFG_start_hummingboard_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
 FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2eX.img
+FILE_barebox-solidrun-hummingboard-microsom-i2eX-s.img = start_hummingboard_microsom_i2ex.pblb.simximg
+FILE_barebox-solidrun-hummingboard-microsom-i2eX-us.img = start_hummingboard_microsom_i2ex.pblb.usimximg
+FILE_barebox-solidrun-hummingboard-microsom-i2eX-es.img = start_hummingboard_microsom_i2ex.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2eX
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i4
 CFG_start_hummingboard_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
 FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
+FILE_barebox-solidrun-hummingboard-microsom-i4-s.img = start_hummingboard_microsom_i4.pblb.simximg
+FILE_barebox-solidrun-hummingboard-microsom-i4-us.img = start_hummingboard_microsom_i4.pblb.usimximg
+FILE_barebox-solidrun-hummingboard-microsom-i4-es.img = start_hummingboard_microsom_i4.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i1
 CFG_start_hummingboard2_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
 FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i1.img
+FILE_barebox-solidrun-hummingboard2-microsom-i1-s.img = start_hummingboard2_microsom_i1.pblb.simximg
+FILE_barebox-solidrun-hummingboard2-microsom-i1-us.img = start_hummingboard2_microsom_i1.pblb.usimximg
+FILE_barebox-solidrun-hummingboard2-microsom-i1-es.img = start_hummingboard2_microsom_i1.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i1
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2
 CFG_start_hummingboard2_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
 FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2.img
+FILE_barebox-solidrun-hummingboard2-microsom-i2-s.img = start_hummingboard2_microsom_i2.pblb.simximg
+FILE_barebox-solidrun-hummingboard2-microsom-i2-us.img = start_hummingboard2_microsom_i2.pblb.usimximg
+FILE_barebox-solidrun-hummingboard2-microsom-i2-es.img = start_hummingboard2_microsom_i2.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2ex
 CFG_start_hummingboard2_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
 FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2eX.img
+FILE_barebox-solidrun-hummingboard2-microsom-i2eX-s.img = start_hummingboard2_microsom_i2ex.pblb.simximg
+FILE_barebox-solidrun-hummingboard2-microsom-i2eX-us.img = start_hummingboard2_microsom_i2ex.pblb.usimximg
+FILE_barebox-solidrun-hummingboard2-microsom-i2eX-es.img = start_hummingboard2_microsom_i2ex.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2eX
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i4
 CFG_start_hummingboard2_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
 FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i4.img
+FILE_barebox-solidrun-hummingboard2-microsom-i4-s.img = start_hummingboard2_microsom_i4.pblb.simximg
+FILE_barebox-solidrun-hummingboard2-microsom-i4-us.img = start_hummingboard2_microsom_i4.pblb.usimximg
+FILE_barebox-solidrun-hummingboard2-microsom-i4-es.img = start_hummingboard2_microsom_i4.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i4
 
 pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
 CFG_start_h100_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
 FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
+FILE_barebox-auvidea-h100-microsom-i2eX-s.img = start_h100_microsom_i2ex.pblb.simximg
+FILE_barebox-auvidea-h100-microsom-i2eX-us.img = start_h100_microsom_i2ex.pblb.usimximg
+FILE_barebox-auvidea-h100-microsom-i2eX-es.img = start_h100_microsom_i2ex.pblb.esimximg
+habv4image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g-s.img = start_imx6q_nitrogen6x_1g.pblb.simximg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g-us.img = start_imx6q_nitrogen6x_1g.pblb.usimximg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g-es.img = start_imx6q_nitrogen6x_1g.pblb.esimximg
+habv4image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-1g
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_2g
 CFG_start_imx6q_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g-s.img = start_imx6q_nitrogen6x_2g.pblb.simximg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g-us.img = start_imx6q_nitrogen6x_2g.pblb.usimximg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g-es.img = start_imx6q_nitrogen6x_2g.pblb.esimximg
+habv4image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-2g
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_1g
 CFG_start_imx6dl_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g-s.img = start_imx6dl_nitrogen6x_1g.pblb.simximg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g-us.img = start_imx6dl_nitrogen6x_1g.pblb.usimximg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g-es.img = start_imx6dl_nitrogen6x_1g.pblb.esimximg
+habv4image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-1g
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_2g
 CFG_start_imx6dl_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g-s.img = start_imx6dl_nitrogen6x_2g.pblb.simximg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g-us.img = start_imx6dl_nitrogen6x_2g.pblb.usimximg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g-es.img = start_imx6dl_nitrogen6x_2g.pblb.esimximg
+habv4image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-2g
 
 pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6qp_nitrogen6_max
 CFG_start_imx6qp_nitrogen6_max.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
 FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
+FILE_barebox-boundarydevices-imx6qp-nitrogen6_max-s.img = start_imx6qp_nitrogen6_max.pblb.simximg
+FILE_barebox-boundarydevices-imx6qp-nitrogen6_max-us.img = start_imx6qp_nitrogen6_max.pblb.usimximg
+FILE_barebox-boundarydevices-imx6qp-nitrogen6_max-es.img = start_imx6qp_nitrogen6_max.pblb.esimximg
+habv4image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
 CFG_start_imx6dl_tx6x_512m.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
 FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-512m.img
+FILE_barebox-karo-imx6dl-tx6x-512m-s.img = start_imx6dl_tx6x_512m.pblb.simximg
+FILE_barebox-karo-imx6dl-tx6x-512m-us.img = start_imx6dl_tx6x_512m.pblb.usimximg
+FILE_barebox-karo-imx6dl-tx6x-512m-es.img = start_imx6dl_tx6x_512m.pblb.esimximg
+habv4image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-512m
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
 CFG_start_imx6dl_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
 FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-1g.img
+FILE_barebox-karo-imx6dl-tx6x-1g-s.img = start_imx6dl_tx6x_1g.pblb.simximg
+FILE_barebox-karo-imx6dl-tx6x-1g-us.img = start_imx6dl_tx6x_1g.pblb.usimximg
+FILE_barebox-karo-imx6dl-tx6x-1g-es.img = start_imx6dl_tx6x_1g.pblb.esimximg
+habv4image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-1g
 
 pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_1g
 CFG_start_imx6q_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6q-1g.imxcfg
@@ -367,163 +539,291 @@ pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_2g
 CFG_start_imx6q_tx6x_2g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6qp-2g.imxcfg
 FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6qp-tx6x-2g.img
+FILE_barebox-karo-imx6qp-tx6x-2g-s.img = start_imx6q_tx6x_2g.pblb.simximg
+FILE_barebox-karo-imx6qp-tx6x-2g-us.img = start_imx6q_tx6x_2g.pblb.usimximg
+FILE_barebox-karo-imx6qp-tx6x-2g-es.img = start_imx6q_tx6x_2g.pblb.esimximg
+habv4image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6qp-tx6x-2g
 
 pblb-$(CONFIG_MACH_UDOO) += start_imx6_udoo
 CFG_start_imx6_udoo.pblb.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
 FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblb.imximg
 image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q.img
+FILE_barebox-udoo-imx6q.simg = start_imx6_udoo.pblb.simximg
+FILE_barebox-udoo-imx6q.usimg = start_imx6_udoo.pblb.usimximg
+FILE_barebox-udoo-imx6q.esimg = start_imx6_udoo.pblb.esimximg
+habv4image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q
 
 pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_cm_fx6
 CFG_start_imx6_cm_fx6.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
 FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.pblb.imximg
 image-$(CONFIG_MACH_CM_FX6) += barebox-cm-fx6.img
+FILE_barebox-cm-fx6-s.img = start_imx6_cm_fx6.pblb.simximg
+FILE_barebox-cm-fx6-us.img = start_imx6_cm_fx6.pblb.usimximg
+FILE_barebox-cm-fx6-es.img = start_imx6_cm_fx6.pblb.esimximg
+habv4image-$(CONFIG_MACH_CM_FX6) += barebox-cm-fx6
 
 pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_utilite
 CFG_start_imx6_utilite.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
 FILE_barebox-utilite.img = start_imx6_utilite.pblb.imximg
 image-$(CONFIG_MACH_CM_FX6) += barebox-utilite.img
+FILE_barebox-utilite-s.img = start_imx6_utilite.pblb.simximg
+FILE_barebox-utilite-us.img = start_imx6_utilite.pblb.usimximg
+FILE_barebox-utilite-es.img = start_imx6_utilite.pblb.esimximg
+habv4image-$(CONFIG_MACH_CM_FX6) += barebox-utilite.img
 
 pblb-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
 CFG_start_variscite_custom.pblb.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
 FILE_barebox-variscite-custom.img = start_variscite_custom.pblb.imximg
 image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
+FILE_barebox-variscite-custom-s.img = start_variscite_custom.pblb.simximg
+FILE_barebox-variscite-custom-us.img = start_variscite_custom.pblb.usimximg
+FILE_barebox-variscite-custom-es.img = start_variscite_custom.pblb.esimximg
+habv4image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom
 
 pblb-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
 CFG_start_imx6q_embedsky_e9.pblb.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
 FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblb.imximg
 image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-embedsky-imx6q-e9.img
+FILE_barebox-embedsky-imx6q-e9-s.img = start_imx6q_embedsky_e9.pblb.simximg
+FILE_barebox-embedsky-imx6q-e9-us.img = start_imx6q_embedsky_e9.pblb.usimximg
+FILE_barebox-embedsky-imx6q-e9-es.img = start_imx6q_embedsky_e9.pblb.esimximg
+habv4image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-embedsky-imx6q-e9
 
 pblb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
 CFG_start_imx6s_riotboard.pblb.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
 FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblb.imximg
 image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard.img
+FILE_barebox-embest-imx6s-riotboard-s.img = start_imx6s_riotboard.pblb.simximg
+FILE_barebox-embest-imx6s-riotboard-us.img = start_imx6s_riotboard.pblb.usimximg
+FILE_barebox-embest-imx6s-riotboard-es.img = start_imx6s_riotboard.pblb.esimximg
+habv4image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
 CFG_start_phytec_pbaa03_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
 FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib.img
+FILE_barebox-phytec-pbaa03-1gib-s.img = start_phytec_pbaa03_1gib.pblb.simximg
+FILE_barebox-phytec-pbaa03-1gib-us.img = start_phytec_pbaa03_1gib.pblb.usimximg
+FILE_barebox-phytec-pbaa03-1gib-es.img = start_phytec_pbaa03_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
 CFG_start_phytec_pbaa03_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
 FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank.img
+FILE_barebox-phytec-pbaa03-1gib-1bank-s.img = start_phytec_pbaa03_1gib_1bank.pblb.simximg
+FILE_barebox-phytec-pbaa03-1gib-1bank-us.img = start_phytec_pbaa03_1gib_1bank.pblb.usimximg
+FILE_barebox-phytec-pbaa03-1gib-1bank-es.img = start_phytec_pbaa03_1gib_1bank.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
 CFG_start_phytec_pbaa03_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
 FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
+FILE_barebox-phytec-pbaa03-2gib-s.img = start_phytec_pbaa03_2gib.pblb.simximg
+FILE_barebox-phytec-pbaa03-2gib-us.img = start_phytec_pbaa03_2gib.pblb.usimximg
+FILE_barebox-phytec-pbaa03-2gib-es.img = start_phytec_pbaa03_2gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
 CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib.img
+FILE_barebox-phytec-phycore-imx6q-som-nand-1gib-s.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.simximg
+FILE_barebox-phytec-phycore-imx6q-som-nand-1gib-us.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6q-som-nand-1gib-es.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6qp_som_nand_1gib
 CFG_start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6qp-som-nand-1gib.img
+FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib-s.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.simximg
+FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib-us.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib-es.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6qp-som-nand-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
 CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
+FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib-s.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.simximg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib-us.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib-es.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_2gib
 CFG_start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
 FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-2gib.img
+FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib-s.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.simximg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib-us.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib-es.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-2gib
+
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
 CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
 FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
+FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb-s.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.simximg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb-us.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb-es.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_1gib
 CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
 FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib.img
+FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib-s.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.simximg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib-us.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib-es.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
 CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
+FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib-s.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.simximg
+FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib-us.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib-es.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib
 
 pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
 CFG_start_imx6q_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
 FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.imximg
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i.img
+FILE_barebox-imx6q-samx6i-s.img = start_imx6q_samx6i.pblb.simximg
+FILE_barebox-imx6q-samx6i-us.img = start_imx6q_samx6i.pblb.usimximg
+FILE_barebox-imx6q-samx6i-es.img = start_imx6q_samx6i.pblb.esimximg
+habv4image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i
 
 pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i
 CFG_start_imx6dl_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
 FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblb.imximg
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i.img
+FILE_barebox-imx6dl-samx6i-s.img = start_imx6dl_samx6i.pblb.simximg
+FILE_barebox-imx6dl-samx6i-us.img = start_imx6dl_samx6i.pblb.usimximg
+FILE_barebox-imx6dl-samx6i-es.img = start_imx6dl_samx6i.pblb.esimximg
+habv4image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i
 
 pblb-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblb.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblb.imximg
 image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64.img
+FILE_barebox-gateworks-imx6q-ventana-1gx64-s.img = start_imx6q_gw54xx_1gx64.pblb.simximg
+FILE_barebox-gateworks-imx6q-ventana-1gx64-us.img = start_imx6q_gw54xx_1gx64.pblb.usimximg
+FILE_barebox-gateworks-imx6q-ventana-1gx64-es.img = start_imx6q_gw54xx_1gx64.pblb.esimximg
+habv4image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64
 
 pblb-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
 CFG_start_imx6dl_eltec_hipercam.pblb.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
 FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblb.imximg
 image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
+FILE_barebox-eltec-hipercam-s.img = start_imx6dl_eltec_hipercam.pblb.simximg
+FILE_barebox-eltec-hipercam-us.img = start_imx6dl_eltec_hipercam.pblb.usimximg
+FILE_barebox-eltec-hipercam-es.img = start_imx6dl_eltec_hipercam.pblb.esimximg
+hbv4image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam
 
 pblb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += start_advantech_imx6dl_rom_7421
 CFG_start_advantech_imx6dl_rom_7421.pblb.imximg = $(board)/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
 FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblb.imximg
 image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421.img
+FILE_barebox-advantech-imx6dl-rom-7421-s.img = start_advantech_imx6dl_rom_7421.pblb.simximg
+FILE_barebox-advantech-imx6dl-rom-7421-us.img = start_advantech_imx6dl_rom_7421.pblb.usimximg
+FILE_barebox-advantech-imx6dl-rom-7421-es.img = start_advantech_imx6dl_rom_7421.pblb.esimximg
+habv4image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421
 
 pblb-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
 CFG_start_imx6_zii_rdu2.pblb.imximg = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
 FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.imximg
 image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
+FILE_barebox-zii-imx6-rdu2-s.img = start_imx6_zii_rdu2.pblb.simximg
+FILE_barebox-zii-imx6-rdu2-us.img = start_imx6_zii_rdu2.pblb.usimximg
+FILE_barebox-zii-imx6-rdu2-es.img = start_imx6_zii_rdu2.pblb.esimximg
+habv4image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2
 
 # ----------------------- i.MX6ul / i.MX6ull based boards --------------
 pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
 CFG_start_imx6ul_liteboard_256mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
 FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblb.imximg
 image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb.img
+FILE_barebox-grinn-liteboard-256mb-s.img = start_imx6ul_liteboard_256mb.pblb.simximg
+FILE_barebox-grinn-liteboard-256mb-us.img = start_imx6ul_liteboard_256mb.pblb.usimximg
+FILE_barebox-grinn-liteboard-256mb-es.img = start_imx6ul_liteboard_256mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb
 
 pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
 CFG_start_imx6ul_liteboard_512mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
 FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblb.imximg
 image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb.img
+FILE_barebox-grinn-liteboard-512mb-s.img = start_imx6ul_liteboard_512mb.pblb.simximg
+FILE_barebox-grinn-liteboard-512mb-us.img = start_imx6ul_liteboard_512mb.pblb.usimximg
+FILE_barebox-grinn-liteboard-512mb-es.img = start_imx6ul_liteboard_512mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb
 
 pblb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
 CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
 FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
 image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
+FILE_barebox-nxp-imx6ull-evk-s.img = start_nxp_imx6ull_evk.pblb.simximg
+FILE_barebox-nxp-imx6ull-evk-us.img = start_nxp_imx6ull_evk.pblb.usimximg
+FILE_barebox-nxp-imx6ull-evk-es.img = start_nxp_imx6ull_evk.pblb.esimximg
+habv4image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
 CFG_start_phytec_phycore_imx6ul_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
 FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
+FILE_barebox-phytec-phycore-imx6ul-512mb-s.img = start_phytec_phycore_imx6ul_som_512mb.pblb.simximg
+FILE_barebox-phytec-phycore-imx6ul-512mb-us.img = start_phytec_phycore_imx6ul_som_512mb.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6ul-512mb-es.img = start_phytec_phycore_imx6ul_som_512mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_256mb
 CFG_start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
 FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb.img
+FILE_barebox-phytec-phycore-imx6ull-lc-256mb-s.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.simximg
+FILE_barebox-phytec-phycore-imx6ull-lc-256mb-us.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6ull-lc-256mb-es.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_512mb
 CFG_start_phytec_phycore_imx6ull_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
 FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb.img
+FILE_barebox-phytec-phycore-imx6ull-512mb-s.img = start_phytec_phycore_imx6ull_som_512mb.pblb.simximg
+FILE_barebox-phytec-phycore-imx6ull-512mb-us.img = start_phytec_phycore_imx6ull_som_512mb.pblb.usimximg
+FILE_barebox-phytec-phycore-imx6ull-512mb-es.img = start_phytec_phycore_imx6ull_som_512mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb
 
 pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
 CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
 FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb.img
+FILE_barebox-imx6ul-pico-hobbit-256mb-s.img = start_imx6ul_pico_hobbit_256mb.pblb.simximg
+FILE_barebox-imx6ul-pico-hobbit-256mb-us.img = start_imx6ul_pico_hobbit_256mb.pblb.usimximg
+FILE_barebox-imx6ul-pico-hobbit-256mb-es.img = start_imx6ul_pico_hobbit_256mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb
 
 pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
 CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
 FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
+FILE_barebox-imx6ul-pico-hobbit-512mb-s.img = start_imx6ul_pico_hobbit_512mb.pblb.simximg
+FILE_barebox-imx6ul-pico-hobbit-512mb-us.img = start_imx6ul_pico_hobbit_512mb.pblb.usimximg
+FILE_barebox-imx6ul-pico-hobbit-512mb-es.img = start_imx6ul_pico_hobbit_512mb.pblb.esimximg
+habv4image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb
 
 pblb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += start_imx6ul_ccimx6ulsbcpro
 CFG_start_imx6ul_ccimx6ulsbcpro.pblb.imximg = $(board)/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
 FILE_barebox-imx6ul-ccimx6ulsbcpro.img = start_imx6ul_ccimx6ulsbcpro.pblb.imximg
 image-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += barebox-imx6ul-ccimx6ulsbcpro.img
-
+FILE_barebox-imx6ul-ccimx6ulsbcpro-s.img = start_imx6ul_ccimx6ulsbcpro.pblb.simximg
+FILE_barebox-imx6ul-ccimx6ulsbcpro-us.img = start_imx6ul_ccimx6ulsbcpro.pblb.usimximg
+FILE_barebox-imx6ul-ccimx6ulsbcpro-es.img = start_imx6ul_ccimx6ulsbcpro.pblb.esimximg
+habv4image-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += barebox-imx6ul-ccimx6ulsbcpro
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -540,21 +840,37 @@ pblb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
 CFG_start_imx7d_sabresd.pblb.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
 FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
+FILE_barebox-freescale-mx7-sabresd-s.img = start_imx7d_sabresd.pblb.simximg
+FILE_barebox-freescale-mx7-sabresd-us.img = start_imx7d_sabresd.pblb.usimximg
+FILE_barebox-freescale-mx7-sabresd-es.img = start_imx7d_sabresd.pblb.esimximg
+habv4image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd
 
 pblb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
 CFG_start_phytec_phycore_imx7.pblb.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
 FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7.img
+FILE_barebox-phytec-phycore-imx7-s.img = start_phytec_phycore_imx7.pblb.simximg
+FILE_barebox-phytec-phycore-imx7-us.img = start_phytec_phycore_imx7.pblb.usimximg
+FILE_barebox-phytec-phycore-imx7-es.img = start_phytec_phycore_imx7.pblb.esimximg
+habv4image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7
 
 pblb-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
 CFG_start_imx7s_element14_warp7.pblb.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
 FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.imximg
 image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
+FILE_barebox-element14-imx7s-warp7-s.img = start_imx7s_element14_warp7.pblb.simximg
+FILE_barebox-element14-imx7s-warp7-us.img = start_imx7s_element14_warp7.pblb.usimximg
+FILE_barebox-element14-imx7s-warp7-es.img = start_imx7s_element14_warp7.pblb.esimximg
+habv4image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7
 
 pblb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
 CFG_start_zii_imx7d_rpu2.pblb.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
 FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblb.imximg
 image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2.img
+FILE_barebox-zii-imx7d-rpu2-s.img = start_zii_imx7d_rpu2.pblb.simximg
+FILE_barebox-zii-imx7d-rpu2-us.img = start_zii_imx7d_rpu2.pblb.usimximg
+FILE_barebox-zii-imx7d-rpu2-es.img = start_zii_imx7d_rpu2.pblb.esimximg
+habv4image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2
 
 # ----------------------- i.MX8mq based boards --------------------------
 pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
@@ -574,3 +890,7 @@ CFG_start_phytec_phycore_imx8mq.pblb.imximg = $(board)/phytec-som-imx8mq/flash-h
 MAX_PBL_MEMORY_SIZE_start_phytec_phycore_imx8mq.pbl = 0x3f000
 FILE_barebox-phytec-phycore-imx8mq.img = start_phytec_phycore_imx8mq.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += barebox-phytec-phycore-imx8mq.img
+
+image-$(CONFIG_HABV4_IMAGE_SIGNED) += $(shell for i in $(habv4image-y); do echo $$i-s.img; done)
+image-$(CONFIG_HABV4_IMAGE_SIGNED_USB) += $(shell for i in $(habv4image-y); do echo $$i-us.img; done)
+image-$(CONFIG_HABV4_IMAGE_SIGNED_ENCRYPTED) += $(shell for i in $(habv4image-y); do echo $$i-es.img; done)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
