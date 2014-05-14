Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg6T-0000r4-Nb
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:48:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 1443C18B425A
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:42 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:51 +0200
Message-Id: <1400100352-13002-24-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 24/25] images: tegra: build NVidia Beaver image
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/Makefile.tegra | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 75efc6830211..2828353b5609 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -66,5 +66,10 @@ image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-
 
 # ----------------------- Tegra30 based boards ---------------------------
 pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
-FILE_barebox-tegra30-nvidia-beaver.img = start_nvidia_beaver.pblx
-image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver.img
+FILE_barebox-tegra30-nvidia-beaver-usbloader.img = start_nvidia_beaver.pblx
+image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-usbloader.img
+
+pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
+BCT_start_nvidia_beaver.pblx.t30img = $(board)/nvidia-beaver/beaver-2gb-emmc.bct
+FILE_barebox-tegra30-nvidia-beaver-emmc.img = start_nvidia_beaver.pblx.t30img
+image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-emmc.img
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
