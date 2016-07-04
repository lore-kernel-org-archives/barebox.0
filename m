Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ac-000619-FT
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:37 +0200
Message-Id: <1467624459-16448-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] ARM: i.MX53 Vincell: Add NAND xload support
To: Barebox List <barebox@lists.infradead.org>

The Vincell boards do the SDRAM setup from board init code, so the
image size is limited to the internal SRAM size. To overcome this
limitation use the NAND xload support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/lowlevel.c | 25 ++++++++++++++++++++++---
 arch/arm/mach-imx/Kconfig              |  9 +++++++++
 images/Makefile.imx                    | 14 ++++++++++----
 3 files changed, 41 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index f4bd44e..34c28f7 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -11,6 +11,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/xload.h>
 
 #define IOMUX_PADCTL_DDRI_DDR (1 << 9)
 
@@ -127,8 +128,9 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 {
 	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
 	u32 r;
+	enum bootsource src;
+	int instance;
 
-	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0xf8020000 - 8);
 
 	writel(0x0088494c, ccm + MX5_CCM_CBCDR);
@@ -149,11 +151,28 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 		disable_watchdog();
 		configure_dram_iomux();
 		imx_esdctlv4_init();
+
+		imx53_get_boot_source(&src, &instance);
+
+		if (src == BOOTSOURCE_NAND &&
+		    is_enabled(CONFIG_MACH_GUF_VINCELL_XLOAD))
+			imx53_nand_start_image();
 	}
 
 	imx53_barebox_entry(fdt);
 }
 
+static noinline void __imx53_guf_vincell_init(void *fdt)
+{
+	imx5_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	imx53_guf_vincell_init(fdt);
+}
+
 extern char __dtb_imx53_guf_vincell_lt_start[];
 
 ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
@@ -162,7 +181,7 @@ ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
 
 	fdt = __dtb_imx53_guf_vincell_lt_start - get_runtime_offset();
 
-	imx53_guf_vincell_init(fdt);
+	__imx53_guf_vincell_init(fdt);
 }
 
 extern char __dtb_imx53_guf_vincell_start[];
@@ -173,5 +192,5 @@ ENTRY_FUNCTION(start_imx53_guf_vincell, r0, r1, r2)
 
 	fdt = __dtb_imx53_guf_vincell_start - get_runtime_offset();
 
-	imx53_guf_vincell_init(fdt);
+	__imx53_guf_vincell_init(fdt);
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5b648ac..d61d545 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -217,6 +217,15 @@ config MACH_GUF_VINCELL
 	bool "Garz-Fricke Vincell"
 	select ARCH_IMX53
 
+config MACH_GUF_VINCELL_XLOAD
+	depends on MACH_GUF_VINCELL
+	bool "Garz-Fricke Vincell NAND xload support"
+	help
+	  The Vincell initializes SDRAM from board code. This normally limits
+	  the image size to the size of the SoC internal SRAM. Enable this
+	  option to be able to use bigger images when booting from NAND. Images
+	  built with this option are no longer bootable from USB though.
+
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 0ff317b..98ddcb8 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -97,14 +97,20 @@ CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-i
 FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += barebox-freescale-imx53-vmx53.img
 
+ifdef CONFIG_MACH_GUF_VINCELL_XLOAD
+VINCELL_IMAGE := imx-sram-img
+else
+VINCELL_IMAGE := pblx.imximg
+endif
+
 pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell
-CFG_start_imx53_guf_vincell.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
-FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.pblx.imximg
+CFG_start_imx53_guf_vincell.$(VINCELL_IMAGE) = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.$(VINCELL_IMAGE)
 image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell.img
 
 pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell_lt
-CFG_start_imx53_guf_vincell_lt.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
-FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.pblx.imximg
+CFG_start_imx53_guf_vincell_lt.$(VINCELL_IMAGE) = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.$(VINCELL_IMAGE)
 image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell-lt.img
 
 pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_512mib
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
