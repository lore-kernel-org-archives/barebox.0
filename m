Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTym1-0000pK-QW
 for barebox@lists.infradead.org; Fri, 06 Mar 2015 20:23:09 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 4964B26C2002
 for <barebox@lists.infradead.org>; Fri,  6 Mar 2015 21:22:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  6 Mar 2015 21:22:02 +0100
Message-Id: <1425673322-31946-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425673322-31946-1-git-send-email-dev@lynxeye.de>
References: <1425673322-31946-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] images: fix Tegra out-of-tree build
To: barebox@lists.infradead.org

The BCTs are build objects and as such are located in the objtree instead of
the srctree. Fix out-of-tree build by defining a variable which refers to the
board directories in the objtree and use it for Tegra.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/Makefile       |  1 +
 images/Makefile.tegra | 16 ++++++++--------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 2ed7464..fe051e8 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -98,6 +98,7 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(call if_changed,shipped)
 
 board = $(srctree)/arch/$(ARCH)/boards
+objboard = $(objtree)/arch/$(ARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
 include $(srctree)/images/Makefile.imx
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index b5782ca..c1e0b20 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -38,17 +38,17 @@ FILE_barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img = start_colibri_
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_hsmmc
-BCT_start_colibri_t20_256_hsmmc.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_256_hsmmc.bct
+BCT_start_colibri_t20_256_hsmmc.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_hsmmc.bct
 FILE_barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img = start_colibri_t20_256_hsmmc.pblx.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v11_nand
-BCT_start_colibri_t20_256_v11_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_256_v11_nand.bct
+BCT_start_colibri_t20_256_v11_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_v11_nand.bct
 FILE_barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img = start_colibri_t20_256_v11_nand.pblx.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v12_nand
-BCT_start_colibri_t20_256_v12_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_256_v12_nand.bct
+BCT_start_colibri_t20_256_v12_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_v12_nand.bct
 FILE_barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img = start_colibri_t20_256_v12_nand.pblx.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img
 
@@ -57,17 +57,17 @@ FILE_barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img = start_colibri_
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_hsmmc
-BCT_start_colibri_t20_512_hsmmc.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_512_hsmmc.bct
+BCT_start_colibri_t20_512_hsmmc.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_hsmmc.bct
 FILE_barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img = start_colibri_t20_512_hsmmc.pblx.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v11_nand
-BCT_start_colibri_t20_512_v11_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_512_v11_nand.bct
+BCT_start_colibri_t20_512_v11_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_v11_nand.bct
 FILE_barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img = start_colibri_t20_512_v11_nand.pblx.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img
 
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v12_nand
-BCT_start_colibri_t20_512_v12_nand.pblx.t20img = $(board)/toradex-colibri-t20/colibri-t20_512_v12_nand.bct
+BCT_start_colibri_t20_512_v12_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_v12_nand.bct
 FILE_barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img = start_colibri_t20_512_v12_nand.pblx.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img
 
@@ -77,7 +77,7 @@ FILE_barebox-tegra30-nvidia-beaver-usbloader.img = start_nvidia_beaver.pblx
 image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-usbloader.img
 
 pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
-BCT_start_nvidia_beaver.pblx.t30img = $(board)/nvidia-beaver/beaver-2gb-emmc.bct
+BCT_start_nvidia_beaver.pblx.t30img = $(objboard)/nvidia-beaver/beaver-2gb-emmc.bct
 FILE_barebox-tegra30-nvidia-beaver-emmc.img = start_nvidia_beaver.pblx.t30img
 image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-emmc.img
 
@@ -87,6 +87,6 @@ FILE_barebox-tegra124-nvidia-jetson-tk1-usbloader.img = start_nvidia_jetson.pblx
 image-$(CONFIG_MACH_NVIDIA_JETSON) += barebox-tegra124-nvidia-jetson-tk1-usbloader.img
 
 pblx-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
-BCT_start_nvidia_jetson.pblx.t124img = $(board)/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct
+BCT_start_nvidia_jetson.pblx.t124img = $(objboard)/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct
 FILE_barebox-tegra124-nvidia-jetson-tk1-emmc.img = start_nvidia_jetson.pblx.t124img
 image-$(CONFIG_MACH_NVIDIA_JETSON) += barebox-tegra124-nvidia-jetson-tk1-emmc.img
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
