Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFih7-0006M1-HT
 for barebox@lists.infradead.org; Tue, 18 Feb 2014 11:18:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2014 12:18:08 +0100
Message-Id: <1392722288-9428-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: Karo-tx25: build image for internal boot
To: barebox@lists.infradead.org

This adds an image for the TX25 in internal boot mode. This can
be used for USB booting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.imx | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index e3b27b7..d44c63c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -14,6 +14,11 @@ pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
 FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblx
 image-$(CONFIG_MACH_TX25) += barebox-karo-tx25.img
 
+pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
+CFG_start_imx25_karo_tx25.pblx.imximg = $(board)/karo-tx25/flash-header-tx25.imxcfg
+FILE_barebox-karo-tx25-internal.img = start_imx25_karo_tx25.pblx.imximg
+image-$(CONFIG_MACH_TX25) += barebox-karo-tx25-internal.img
+
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
