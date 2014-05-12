Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJz-0004Io-Dq
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:49 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id BF14118B4274
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:05:05 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:08:03 +0200
Message-Id: <1399878486-16086-23-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 22/25] images: tegra: build all Toradex Colibri images
To: barebox@lists.infradead.org

Six images for the the 256MB and 512MB version with
different boot sources (MMC, NAND [different chips on
pre-/production modules]).

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toradex-colibri-t20/entry.c | 42 ++++++++++++++++++++++++++++-
 images/Makefile.tegra                       | 40 ++++++++++++++++++++++++---
 2 files changed, 78 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/toradex-colibri-t20/entry.c b/arch/arm/boards/toradex-colibri-t20/entry.c
index 886613f..695862c 100644
--- a/arch/arm/boards/toradex-colibri-t20/entry.c
+++ b/arch/arm/boards/toradex-colibri-t20/entry.c
@@ -22,7 +22,7 @@
 
 extern char __dtb_tegra20_colibri_iris_start[];
 
-ENTRY_FUNCTION(start_toradex_colibri_t20_iris, r0, r1, r2)
+static void common_toradex_colibri_t20_iris_start(void)
 {
 	uint32_t fdt;
 
@@ -32,3 +32,43 @@ ENTRY_FUNCTION(start_toradex_colibri_t20_iris, r0, r1, r2)
 
 	tegra_avp_reset_vector(fdt);
 }
+
+ENTRY_FUNCTION(start_colibri_t20_256_usbload, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_256_hsmmc, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_256_v11_nand, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_256_v12_nand, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_512_usbload, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_512_hsmmc, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_512_v11_nand, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
+
+ENTRY_FUNCTION(start_colibri_t20_512_v12_nand, r0, r1, r2)
+{
+	common_toradex_colibri_t20_iris_start();
+}
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 7dc44a2..75efc68 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -26,9 +26,43 @@ pblx-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
 FILE_barebox-tegra20-toshiba-ac100.img = start_toshiba_ac100.pblx
 image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_toradex_colibri_t20_iris
-FILE_barebox-tegra20-toradex-colibri-t20-iris.img = start_toradex_colibri_t20_iris.pblx
-image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-iris.img
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_usbload
+FILE_barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img = start_colibri_t20_256_usbload.pblx
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_hsmmc
+BCT_start_colibri_t20_256_hsmmc.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_256_hsmmc.bct
+FILE_barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img = start_colibri_t20_256_hsmmc.pblx.t20img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v11_nand
+BCT_start_colibri_t20_256_v11_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_256_v11_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img = start_colibri_t20_256_v11_nand.pblx.t20img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v12_nand
+BCT_start_colibri_t20_256_v12_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_256_v12_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img = start_colibri_t20_256_v12_nand.pblx.t20img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_usbload
+FILE_barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img = start_colibri_t20_512_usbload.pblx
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_hsmmc
+BCT_start_colibri_t20_512_hsmmc.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_512_hsmmc.bct
+FILE_barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img = start_colibri_t20_512_hsmmc.pblx.t20img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v11_nand
+BCT_start_colibri_t20_512_v11_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_512_v11_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img = start_colibri_t20_512_v11_nand.pblx.t20img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v12_nand
+BCT_start_colibri_t20_512_v12_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_512_v12_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img = start_colibri_t20_512_v12_nand.pblx.t20img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img
 
 # ----------------------- Tegra30 based boards ---------------------------
 pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
