Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5f-0000PL-Vq
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:54 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 8E3BE18B4283
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:43 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:52 +0200
Message-Id: <1400100352-13002-25-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 25/25] images: tegra: rename ac100 image
To: barebox@lists.infradead.org

To make it clear that this image is only suitable
for loading via usbloader. We can't do anything
about this, as there is no upstream BCT available
for AC100.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/Makefile.tegra | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 2828353b5609..f22c2d308b44 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -23,8 +23,8 @@ board = $(srctree)/arch/$(ARCH)/boards
 
 # ----------------------- Tegra20 based boards ---------------------------
 pblx-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
-FILE_barebox-tegra20-toshiba-ac100.img = start_toshiba_ac100.pblx
-image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100.img
+FILE_barebox-tegra20-toshiba-ac100-usbloader.img = start_toshiba_ac100.pblx
+image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100-usbloader.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_usbload
 FILE_barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img = start_colibri_t20_256_usbload.pblx
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
