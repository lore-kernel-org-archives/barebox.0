Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCVKz-0004Bz-IF
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 14:58:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Jul 2014 16:58:16 +0200
Message-Id: <1406732296-29618-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] images: get rid of remaining imximage-y
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.imx | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 1d0edd2..6e83f85 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -92,7 +92,6 @@ image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
 
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_4gib
 CFG_start_phytec_pbab01_4gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
-imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_4gib.pblx.imximg
 FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-4gib.img
 
@@ -108,13 +107,11 @@ image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
 
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01dl_1gib
 CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
-imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01dl_1gib.pblx.imximg
 FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01dl-1gib.img
 
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01s_512mb
 CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
-imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01s_512mb.pblx.imximg
 FILE_barebox-phytec-pbab01s-512mb.img = start_phytec_pbab01s_512mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01s-512mb.img
 
@@ -125,13 +122,11 @@ image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
 
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
 CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
-imximage-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg
 FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron.img
 
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
 CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
-imximage-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg
 FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya.img
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
