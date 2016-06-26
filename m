Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHAwQ-0006pl-EZ
 for barebox@lists.infradead.org; Sun, 26 Jun 2016 14:21:43 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Jun 2016 16:19:35 +0200
Message-Id: <1466950775-16822-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM iMX53: avoid magic number addressing for internal RAM
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The imx53 SOC features 128kB of internal SRAM which is commonly used in
early stages of barebox to store the stack. Avoid magic numbers while
addressing this RAM.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/ccxmx53/lowlevel.c            | 5 +++--
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c | 5 +++--
 arch/arm/boards/freescale-mx53-smd/lowlevel.c | 3 ++-
 arch/arm/boards/guf-vincell/lowlevel.c        | 2 +-
 arch/arm/boards/karo-tx53/lowlevel.c          | 3 ++-
 arch/arm/boards/tqma53/lowlevel.c             | 5 +++--
 arch/arm/mach-imx/include/mach/imx53-regs.h   | 5 +++++
 7 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/ccxmx53/lowlevel.c b/arch/arm/boards/ccxmx53/lowlevel.c
index 55f6f36..2249214 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
+#include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <image-metadata.h>
@@ -36,7 +37,7 @@ ENTRY_FUNCTION(start_ccxmx53_512mb, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	IMD_USED(ccxmx53_memsize_SZ_512M);
 
@@ -50,7 +51,7 @@ ENTRY_FUNCTION(start_ccxmx53_1gib, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	IMD_USED(ccxmx53_memsize_SZ_1G);
 
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index ce6a290..bed8863 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
@@ -12,7 +13,7 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	fdt = __dtb_imx53_qsb_start - get_runtime_offset();
 
@@ -26,7 +27,7 @@ ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	fdt = __dtb_imx53_qsrb_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index 5ad0312..88c461d 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
@@ -6,6 +7,6 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index a72eaf8..af7c65d 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -129,7 +129,7 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 	u32 r;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	writel(0x0088494c, ccm + MX5_CCM_CBCDR);
 	writel(0x02b12f0a, ccm + MX5_CCM_CSCMR2);
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index fdfb1b7..9f584fa 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -2,13 +2,14 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
+#include <mach/imx53-regs.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	/*
 	 * For the TX53 rev 8030 the SDRAM setup is not stable without
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 4e129e4..0cb5952 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -5,6 +5,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
+#include <mach/imx53-regs.h>
 #include <mach/generic.h>
 #include <image-metadata.h>
 
@@ -44,7 +45,7 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 
 	imx5_cpu_lowlevel_init();
 
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	IMD_USED(tqma53_memsize_512M);
 
@@ -63,7 +64,7 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 
 	imx5_cpu_lowlevel_init();
 
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	IMD_USED(tqma53_memsize_1G);
 
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index 9cd7723..d45c943 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -1,8 +1,13 @@
 #ifndef __MACH_IMX53_REGS_H
 #define __MACH_IMX53_REGS_H
 
+#include <linux/sizes.h>
+
 #define MX53_IROM_BASE_ADDR	0x0
 
+#define MX53_IRAM_BASE_ADDR	0xF8000000
+#define MX53_IRAM_SIZE		SZ_128K
+
 #define MX53_SATA_BASE_ADDR	0x10000000
 
 #define MX53_IPU_BASE_ADDR	0x18000000
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
