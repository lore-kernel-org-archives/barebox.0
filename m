Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkKm-00062t-Vt
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:07:37 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id EFE2B18B427A
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:05:06 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:08:06 +0200
Message-Id: <1399878486-16086-26-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 25/25] images: tegra: rename ac100 image
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
index 2828353..f22c2d3 100644
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
