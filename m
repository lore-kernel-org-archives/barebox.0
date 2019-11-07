Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4T-0001ze-Di
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:03 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id C27A3E74222
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:24 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:03 +0100
Message-Id: <20191107211119.68064-3-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/18] ARM: zynq: add trivial image build mechanism
To: barebox@lists.infradead.org

Currently this just calls the zynq_mkimage script to stamp in the header
checksum. Can be extended to a proper multi-image build later on.

This requires a PBL to be build, but as the only supported Zynq board
already selects the PBL option in the defconfig there is no big change
to the previous status

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                    |  1 +
 arch/arm/configs/zedboard_defconfig |  1 -
 images/Makefile                     |  3 ++-
 images/Makefile.zynq                | 12 ++++++++++++
 4 files changed, 15 insertions(+), 2 deletions(-)
 create mode 100644 images/Makefile.zynq

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f4e943a8fd8a..78260a4fd76d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -248,6 +248,7 @@ config ARCH_UEMD
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	select HAS_DEBUG_LL
+	select PBL_IMAGE
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index be5720fd42b5..0e5078c40246 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_ZYNQ=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xf000
 CONFIG_MALLOC_SIZE=0x8000000
diff --git a/images/Makefile b/images/Makefile
index ceb00618d23b..34b7a56101cc 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -161,6 +161,7 @@ include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
 include $(srctree)/images/Makefile.at91
+include $(srctree)/images/Makefile.zynq
 include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
 
@@ -208,5 +209,5 @@ $(flash-list): $(image-y-path)
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
-	start_*.simximg start_*.usimximg *.image
+	start_*.simximg start_*.usimximg *.zynqimg *.image
 clean-files += pbl.lds
diff --git a/images/Makefile.zynq b/images/Makefile.zynq
new file mode 100644
index 000000000000..e162aafae336
--- /dev/null
+++ b/images/Makefile.zynq
@@ -0,0 +1,12 @@
+#
+# barebox image generation Makefile for Xilinx Zynq images
+#
+quiet_cmd_zynq_image = ZYNQIMG  $@
+      cmd_zynq_image = $(objtree)/scripts/zynq_mkimage $(subst .zynqimg,,$@) $@
+$(obj)/%.zynqimg: $(obj)/% FORCE
+	$(call if_changed,zynq_image)
+
+#------------------------------------------------------------------------------
+
+FILE_barebox-avnet-zedboard.img = start_pbl.pblb.zynqimg
+image-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
