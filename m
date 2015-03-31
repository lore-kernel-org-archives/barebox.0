Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ycyoz-00089d-BR
 for barebox@lists.infradead.org; Tue, 31 Mar 2015 16:15:22 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 31 Mar 2015 18:14:54 +0200
Message-Id: <1427818495-28039-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] images: mxs: remove not used PREP_ definitions
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 images/Makefile.mxs | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index c93fb571f25f..93d43b352908 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -22,7 +22,6 @@ mxs23cfg = $(srctree)/arch/arm/mach-mxs/mxs23img.cfg
 mxs28cfg = $(srctree)/arch/arm/mach-mxs/mxs28img.cfg
 
 pblx-$(CONFIG_MACH_DUCKBILL) += start_barebox_duckbill prep_start_barebox_duckbill
-PREP_start_barebox_duckbill.pblx.mxsbs = start_barebox_duckbill_prep
 CFG_start_barebox_duckbill.mxsbs = $(mxs28cfg)
 FILE_barebox-duckbill-bootstream.img = start_barebox_duckbill.mxsbs
 image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-bootstream.img
@@ -32,7 +31,6 @@ FILE_barebox-duckbill-2nd.img = start_barebox_duckbill.pblx
 image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-2nd.img
 
 pblx-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
-PREP_start_barebox_karo_tx28.pblx.mxsbs = start_barebox_karo_tx28_prep
 CFG_start_barebox_karo_tx28.mxsbs = $(mxs28cfg)
 FILE_barebox-karo-tx28-bootstream.img = start_barebox_karo_tx28.mxsbs
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-bootstream.img
@@ -42,7 +40,6 @@ FILE_barebox-karo-tx28-2nd.img = start_barebox_karo_tx28.pblx
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-2nd.img
 
 pblx-$(CONFIG_MACH_MX28EVK) += start_barebox_freescale_mx28evk prep_start_barebox_freescale_mx28evk
-PREP_start_barebox_freescale_mx28evk.pblx.mxsbs = start_barebox_freescale_mx28evk_prep
 CFG_start_barebox_freescale_mx28evk.mxsbs = $(mxs28cfg)
 FILE_barebox-freescale-mx28evk-bootstream.img = start_barebox_freescale_mx28evk.mxsbs
 image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-bootstream.img
@@ -52,7 +49,6 @@ FILE_barebox-freescale-mx28evk-2nd.img = start_barebox_freescale_mx28evk.pblx
 image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-2nd.img
 
 pblx-$(CONFIG_MACH_IMX233_OLINUXINO) += start_barebox_olinuxino_imx23 prep_start_barebox_olinuxino_imx23
-PREP_start_barebox_olinuxino_imx23.pblx.mxsbs = start_barebox_olinuxino_imx23_prep;
 CFG_start_barebox_olinuxino_imx23.mxsbs = $(mxs23cfg)
 FILE_barebox-olinuxino-imx23-bootstream.img = start_barebox_olinuxino_imx23.mxsbs
 image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-bootstream.img
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
