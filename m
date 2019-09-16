Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lPy-0006w5-L2
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:27:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2019 09:27:18 +0200
Message-Id: <20190916072721.12392-4-s.hauer@pengutronix.de>
In-Reply-To: <20190916072721.12392-1-s.hauer@pengutronix.de>
References: <20190916072721.12392-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: drop bultin DTB
To: Barebox List <barebox@lists.infradead.org>

We can build multiple DTBs into the binary and board code can select
which one to use. Drop the single builtin DTB and let the boards using
it pass the correct one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                               | 14 --------------
 arch/arm/boards/canon-a1100/lowlevel.c         |  9 ++++++++-
 arch/arm/boards/module-mb7707/lowlevel.c       |  8 +++++++-
 arch/arm/boards/versatile/lowlevel.c           |  9 ++++++++-
 arch/arm/boards/virt2real/lowlevel.c           |  8 +++++++-
 arch/arm/configs/canon-a1100_defconfig         |  1 -
 arch/arm/configs/module-mb7707_defconfig       |  1 -
 arch/arm/configs/versatilepb_arm1176_defconfig |  2 --
 arch/arm/configs/versatilepb_defconfig         |  2 --
 arch/arm/configs/virt2real_defconfig           |  1 -
 arch/arm/cpu/dtb.c                             |  6 ------
 arch/arm/dts/Makefile                          |  5 -----
 12 files changed, 30 insertions(+), 36 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a6821bf4d0..349ad33909 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -25,20 +25,6 @@ config TEXT_BASE
 
 menu "System Type"
 
-config BUILTIN_DTB
-	bool "link a DTB into the barebox image"
-	depends on OFTREE
-	depends on !HAVE_PBL_MULTI_IMAGES
-
-config BUILTIN_DTB_NAME
-	string "DTB to build into the barebox image"
-	depends on BUILTIN_DTB
-	default "canon-a1100" if MACH_CANON_A1100
-	default "imx51-genesi-efika-sb" if MACH_EFIKA_MX_SMARTBOOK
-	default "versatile-pb" if ARCH_VERSATILE_PB
-	default "virt2real" if MACH_VIRT2REAL
-	default "module-mb7707" if MACH_MB7707
-
 choice
 	prompt "ARM system type"
 
diff --git a/arch/arm/boards/canon-a1100/lowlevel.c b/arch/arm/boards/canon-a1100/lowlevel.c
index 744ce59eaa..b75a1bfa60 100644
--- a/arch/arm/boards/canon-a1100/lowlevel.c
+++ b/arch/arm/boards/canon-a1100/lowlevel.c
@@ -3,10 +3,16 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
+extern char __dtb_canon_a1100_start[];
+
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
+	fdt = __dtb_canon_a1100_start + get_runtime_offset();
+
 	/* FIXME: can we determine RAM size using CP15 register?
 	 *
 	 * see http://chdk.setepontos.com/index.php?topic=5980.90
@@ -19,5 +25,6 @@ void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 	 * The Control Register value (mrc    p15, 0, %0, c0, c1, 4)
 	 * is 0x00051078.
 	 */
-	barebox_arm_entry(0x0, SZ_64M, 0);
+
+	barebox_arm_entry(0x0, SZ_64M, fdt);
 }
diff --git a/arch/arm/boards/module-mb7707/lowlevel.c b/arch/arm/boards/module-mb7707/lowlevel.c
index 055e432c1c..fc102e26e1 100644
--- a/arch/arm/boards/module-mb7707/lowlevel.c
+++ b/arch/arm/boards/module-mb7707/lowlevel.c
@@ -26,9 +26,15 @@
 #define MB7707_SRAM_BASE 0x40000000
 #define MB7707_SRAM_SIZE SZ_128M
 
+extern char __dtb_module_mb7707_start[];
+
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
-	barebox_arm_entry(MB7707_SRAM_BASE, MB7707_SRAM_SIZE, 0);
+	fdt = __dtb_module_mb7707_start + get_runtime_offset();
+
+	barebox_arm_entry(MB7707_SRAM_BASE, MB7707_SRAM_SIZE, fdt);
 }
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
index a9ccf1fff5..beab04d234 100644
--- a/arch/arm/boards/versatile/lowlevel.c
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -3,8 +3,15 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
+extern char __dtb_versatile_pb_start[];
+
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x0, SZ_64M, NULL);
+
+	fdt = __dtb_versatile_pb_start + get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_64M, fdt);
 }
diff --git a/arch/arm/boards/virt2real/lowlevel.c b/arch/arm/boards/virt2real/lowlevel.c
index 264ebee893..a72334bb0e 100644
--- a/arch/arm/boards/virt2real/lowlevel.c
+++ b/arch/arm/boards/virt2real/lowlevel.c
@@ -26,9 +26,15 @@
 #define VIRT2REAL_SRAM_BASE 0x82000000
 #define VIRT2REAL_SRAM_SIZE SZ_16M
 
+extern char __dtb_virt2real_start[];
+
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
-	barebox_arm_entry(VIRT2REAL_SRAM_BASE, VIRT2REAL_SRAM_SIZE, NULL);
+	fdt = __dtb_virt2real_start + get_runtime_offset();
+
+	barebox_arm_entry(VIRT2REAL_SRAM_BASE, VIRT2REAL_SRAM_SIZE, fdt);
 }
diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
index 9887c4c292..12a3f0af95 100644
--- a/arch/arm/configs/canon-a1100_defconfig
+++ b/arch/arm/configs/canon-a1100_defconfig
@@ -1,5 +1,4 @@
 CONFIG_TEXT_BASE=0x00300000
-CONFIG_BUILTIN_DTB=y
 CONFIG_ARCH_DIGIC=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
diff --git a/arch/arm/configs/module-mb7707_defconfig b/arch/arm/configs/module-mb7707_defconfig
index 189f295c67..9484c39fb8 100644
--- a/arch/arm/configs/module-mb7707_defconfig
+++ b/arch/arm/configs/module-mb7707_defconfig
@@ -1,4 +1,3 @@
-CONFIG_BUILTIN_DTB=y
 CONFIG_ARCH_UEMD=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
index 284fbd1150..e8c662183a 100644
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -1,5 +1,3 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="versatile-pb"
 CONFIG_ARCH_VERSATILE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MACH_VERSATILEPB_ARM1176=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 61b9ff1c38..14481ea58e 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -1,5 +1,3 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="versatile-pb"
 CONFIG_ARCH_VERSATILE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt2real_defconfig
index 4fb61cbd0c..814fe69e42 100644
--- a/arch/arm/configs/virt2real_defconfig
+++ b/arch/arm/configs/virt2real_defconfig
@@ -1,5 +1,4 @@
 CONFIG_TEXT_BASE=0x82300000
-CONFIG_BUILTIN_DTB=y
 CONFIG_ARCH_DAVINCI=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index b9390b46e6..1ba5aa415e 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -36,12 +36,6 @@ static int of_arm_init(void)
 	if (fdt)
 		pr_debug("using boarddata provided DTB\n");
 
-	/* Next see if we have a builtin dtb */
-	if (!fdt && IS_ENABLED(CONFIG_BUILTIN_DTB)) {
-		fdt = __dtb_start;
-		pr_debug("using internal DTB\n");
-	}
-
 	if (!fdt) {
 		pr_debug("No DTB found\n");
 		return 0;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7a212174de..550d8680d7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,8 +1,3 @@
-BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
-ifneq ($(BUILTIN_DTB),)
-obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
-endif
-
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
