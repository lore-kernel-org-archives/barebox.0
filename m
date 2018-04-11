Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Bla-00080l-JL
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 09:10:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Apr 2018 11:09:50 +0200
Message-Id: <20180411090950.17924-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX53 TX53: remove duplicate _imx53
To: Barebox List <barebox@lists.infradead.org>
Cc: mgr@pengutronix.de

The pblx-y variables for the TX53 have _imx53 twice in their names. With
this the names do not match the names in the FILE_* variables. This
results in the make system removing the pblx files as intermediate
files. Fix the names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.imx | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index ac46d51c59..90da95d4d0 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -139,17 +139,17 @@ CFG_start_imx53_mba53_1gib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-
 FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblx.imximg
 image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-1gib.img
 
-pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_xx30_samsung
+pblx-$(CONFIG_MACH_TX53) += start_imx53_tx53_xx30_samsung
 CFG_start_imx53_tx53_xx30_samsung.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
 FILE_barebox-tx53-xx30-samsung.img = start_imx53_tx53_xx30_samsung.pblx.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-xx30-samsung.img
 
-pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_xx30
+pblx-$(CONFIG_MACH_TX53) += start_imx53_tx53_xx30
 CFG_start_imx53_tx53_xx30.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30.imxcfg
 FILE_barebox-tx53-xx30.img = start_imx53_tx53_xx30.pblx.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-xx30.img
 
-pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_1011
+pblx-$(CONFIG_MACH_TX53) += start_imx53_tx53_1011
 CFG_start_imx53_tx53_1011.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-rev1011.imxcfg
 FILE_barebox-tx53-1011.img = start_imx53_tx53_1011.pblx.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-1011.img
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
