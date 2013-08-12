Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8uKh-0004d9-Cf
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 15:47:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 12 Aug 2013 17:46:34 +0200
Message-Id: <1376322394-5725-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] images: get rid of imximage-y
To: barebox@lists.infradead.org

imximage-y is only needed to add its content to $targets so that
the build system does not rebuild the files because of the files
not being in $targets.
Automatically generate the files and add them to $targets and remove
imximage-y

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile     | 3 +--
 images/Makefile.imx | 9 ---------
 2 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 65c533a..79c3dc3 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -32,7 +32,6 @@
 # can generate images with a sane name. So what we really need for this
 # board is a i.MX specific image, a .imximg
 #
-## imximage-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage.pblx.imximg
 ## CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header.imxcfg
 #
 # The .imximg can be generated from a .pblx using a rule specified in Makefile.imx.
@@ -114,7 +113,7 @@ targets += $(patsubst %,%.pblx,$(pblx-y))
 targets += $(patsubst %,%.pblb,$(pblx-y))
 targets += $(patsubst %,%.pbl,$(pblx-y))
 targets += $(patsubst %,%.s,$(pblx-y))
-targets += $(imximage-y)
+targets += $(foreach m, $(image-y), $(FILE_$(m)))
 
 SECONDARY: $(addprefix $(obj)/,$(targets))
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d9662d7..972eb40 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -12,56 +12,47 @@ board = $(srctree)/arch/$(ARCH)/boards
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
-imximage-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage.pblx.imximg
 FILE_barebox-freescale-imx51-babbage.img = start_imx51_babbage.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
 
 pblx-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb
 CFG_start_imx51_genesi_efikasb.pblx.imximg = $(board)/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
-imximage-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb.pblx.imximg
 FILE_barebox-genesi-efikasb.img = start_imx51_genesi_efikasb.pblx.imximg
 image-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += barebox-genesi-efikasb.img
 
 # ----------------------- i.MX53 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco
 CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
-imximage-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco.pblx.imximg
 FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
 
 # ----------------------- i.MX6 based boards ---------------------------
 pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblx.imximg = $(board)/dmo-mx6-realq7/flash-header.imxcfg
-imximage-$(CONFIG_MACH_REALQ7) += start_imx6_realq7.pblx.imximg
 FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblx.imximg
 image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
 
 pblx-$(CONFIG_MACH_GK802) += start_imx6_gk802
 CFG_start_imx6_gk802.pblx.imximg = $(board)/gk802/flash-header.imxcfg
-imximage-$(CONFIG_MACH_GK802) += start_imx6_gk802.pblx.imximg
 FILE_barebox-gk802.img = start_imx6_gk802.pblx.imximg
 image-$(CONFIG_MACH_GK802) += barebox-gk802.img
 
 pblx-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
 CFG_start_imx6dl_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
-imximage-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x.pblx.imximg
 FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblx.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x.img
 
 pblx-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
 CFG_start_imx6q_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
-imximage-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x.pblx.imximg
 FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblx.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
 
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_2gib
 CFG_start_phytec_pbab01_2gib.pblx.imximg = $(board)/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
-imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_2gib.pblx.imximg
 FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-2gib.img
 
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib
 CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
-imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib.pblx.imximg
 FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
