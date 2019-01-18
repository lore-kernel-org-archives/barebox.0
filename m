Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBO-0004Sd-7I
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:39:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id c25so5202594pgb.4
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:25 -0800
Message-Id: <20190118003827.17517-11-andrew.smirnov@gmail.com>
In-Reply-To: <20190118003827.17517-1-andrew.smirnov@gmail.com>
References: <20190118003827.17517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/12] ARM: mmu: Share sanity checking code in mmu_init()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Share sanity checking code in mmu_init() as well as code to detect if
MMU is on or not on both ARM and ARM64.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-common.c | 23 +++++++++++++++++++++--
 arch/arm/cpu/mmu-common.h |  1 +
 arch/arm/cpu/mmu.c        | 16 ++--------------
 arch/arm/cpu/mmu_64.c     | 16 ++--------------
 4 files changed, 26 insertions(+), 30 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index a7d3b5b11..c5b24bff8 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -2,10 +2,12 @@
 #define pr_fmt(fmt)	"mmu: " fmt
 
 #include <common.h>
+#include <init.h>
 #include <dma-dir.h>
 #include <dma.h>
 #include <mmu.h>
-
+#include <asm/system.h>
+#include <memory.h>
 #include "mmu.h"
 
 
@@ -59,4 +61,21 @@ void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 	arch_remap_range(mem, size, MAP_CACHED);
 
 	free(mem);
-}
\ No newline at end of file
+}
+
+static int mmu_init(void)
+{
+	if (list_empty(&memory_banks))
+		/*
+		 * If you see this it means you have no memory registered.
+		 * This can be done either with arm_add_mem_device() in an
+		 * initcall prior to mmu_initcall or via devicetree in the
+		 * memory node.
+		 */
+		panic("MMU: No memory bank found! Cannot continue\n");
+
+	__mmu_init(get_cr() & CR_M);
+
+	return 0;
+}
+mmu_initcall(mmu_init);
\ No newline at end of file
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index e8689ac31..37eef3ef2 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -3,5 +3,6 @@
 
 void dma_inv_range(void *ptr, size_t size);
 void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
+void __mmu_init(bool mmu_on);
 
 #endif
\ No newline at end of file
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 97c459ff0..ba1c3e007 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -412,19 +412,10 @@ static void vectors_init(void)
 /*
  * Prepare MMU for usage enable it.
  */
-static int mmu_init(void)
+void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
 
-	if (list_empty(&memory_banks))
-		/*
-		 * If you see this it means you have no memory registered.
-		 * This can be done either with arm_add_mem_device() in an
-		 * initcall prior to mmu_initcall or via devicetree in the
-		 * memory node.
-		 */
-		panic("MMU: No memory bank found! Cannot continue\n");
-
 	arm_set_cache_functions();
 
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
@@ -439,7 +430,7 @@ static int mmu_init(void)
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
-	if (get_cr() & CR_M) {
+	if (mmu_on) {
 		/*
 		 * Early MMU code has already enabled the MMU. We assume a
 		 * flat 1:1 section mapping in this case.
@@ -483,10 +474,7 @@ static int mmu_init(void)
 	}
 
 	__mmu_cache_on();
-
-	return 0;
 }
-mmu_initcall(mmu_init);
 
 /*
  * Clean and invalide caches, disable MMU
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 2cb62370e..7f8a8f249 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -194,21 +194,12 @@ static void mmu_enable(void)
 /*
  * Prepare MMU for usage enable it.
  */
-static int mmu_init(void)
+void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
 	unsigned int el;
 
-	if (list_empty(&memory_banks))
-		/*
-		 * If you see this it means you have no memory registered.
-		 * This can be done either with arm_add_mem_device() in an
-		 * initcall prior to mmu_initcall or via devicetree in the
-		 * memory node.
-		 */
-		panic("MMU: No memory bank found! Cannot continue\n");
-
-	if (get_cr() & CR_M)
+	if (mmu_on)
 		mmu_disable();
 
 	ttb = create_table();
@@ -228,10 +219,7 @@ static int mmu_init(void)
 	create_sections(0x0, 0x0, 0x1000, 0x0);
 
 	mmu_enable();
-
-	return 0;
 }
-mmu_initcall(mmu_init);
 
 void mmu_disable(void)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
