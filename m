Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRF-00023Q-1d
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:50 +0200
Message-Id: <1372152052-5463-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] ARM: i.MX53 loco: Switch to multi image support
To: barebox@lists.infradead.org

This converts the Freescale i.MX53 loco aka qsb board to
multi image. The image will be named:

barebox-freescale-imx53-loco.img

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/lowlevel.c | 14 ++++++++++++--
 arch/arm/dts/Makefile                          |  2 ++
 arch/arm/mach-imx/Kconfig                      |  2 +-
 images/Makefile.imx                            |  7 +++++++
 4 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
index 60c28f7..d920524 100644
--- a/arch/arm/boards/freescale-mx53-loco/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
@@ -1,9 +1,19 @@
 #include <common.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx53_qsb_start[];
+
+ENTRY_FUNCTION(start_imx53_loco)(void)
 {
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
 	arm_cpu_lowlevel_init();
-	imx53_barebox_entry(0);
+
+	fdt = (uint32_t)__dtb_imx53_qsb_start - get_runtime_offset();
+
+	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b271618..19a1985 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -8,6 +8,8 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-dmo-realq7.dtb \
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
+pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
+
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 
 targets += dtbs
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4f9ef3e..6560798 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -476,7 +476,7 @@ choice
 
 config MACH_FREESCALE_MX53_LOCO
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
+	select HAVE_PBL_MULTI_IMAGES
 	bool "Freescale i.MX53 LOCO"
 
 config MACH_FREESCALE_MX53_SMD
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 6334729..3a5b5f1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -13,3 +13,10 @@ board = $(srctree)/arch/$(ARCH)/boards
 pblx-$(CONFIG_MACH_PCM038) += start_imx27_pcm038
 FILE_barebox-phytec-phycore-imx27.img = start_imx27_pcm038.pblx
 image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
+
+# ----------------------- i.MX53 based boards ---------------------------
+pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco
+CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header.imxcfg
+imximage-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco.pblx.imximg
+FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
+image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
