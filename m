Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8PF-0004sx-2s
 for barebox@lists.infradead.org; Mon, 13 May 2019 10:42:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 May 2019 12:41:58 +0200
Message-Id: <20190513104158.17711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: introduce sync_caches_for_execution
To: Barebox List <barebox@lists.infradead.org>

We have several places in the code which which prepares just modified code
for execution. This is done differently in all the places, so add a common
function to be used by all.

Most places called arm_early_mmu_cache_flush(). This function includes
invalidating the instruction cache, so doing it again is unnecessary.

Sometimes we had arm_early_mmu_cache_flush() inside #ifdef CONFIG_MMU.
The ifdef seems unnecessary since we do not have it consistently, so
remove the ifdef.

Some early i.MX xload code had icache_invalidate() but forgot to flush
the caches. Replace the instruction cache invalidation with
sync_caches_for_execution().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c                 | 19 +++++++++++++++++--
 arch/arm/cpu/setupc.S                 | 12 ++----------
 arch/arm/cpu/setupc_64.S              |  5 ++---
 arch/arm/cpu/start-pbl.c              |  3 +--
 arch/arm/cpu/uncompress.c             |  3 +--
 arch/arm/include/asm/cache.h          |  2 ++
 arch/arm/mach-layerscape/xload-qspi.c |  3 ++-
 drivers/mci/imx-esdhc-pbl.c           |  4 +++-
 8 files changed, 30 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 51fe7ed988..821cafbf26 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -27,6 +27,22 @@
 #include <asm/cache.h>
 #include <debug_ll.h>
 
+/**
+ * sync_caches_for_execution - synchronize caches for code execution
+ *
+ * Code has been modified in memory, call this before executing it.
+ * This function flushes the data cache up to the point of unification
+ * and invalidates the instruction cache.
+ */
+void sync_caches_for_execution(void)
+{
+	/*
+	 * Despite the name arm_early_mmu_cache_flush not only flushes the
+	 * data cache, but also invalidates the instruction cache.
+	 */
+	arm_early_mmu_cache_flush();
+}
+
 #define R_ARM_RELATIVE 23
 #define R_AARCH64_RELATIVE 1027
 
@@ -103,8 +119,7 @@ void relocate_to_current_adr(void)
 #error "Architecture not specified"
 #endif
 
-	arm_early_mmu_cache_flush();
-	icache_invalidate();
+	sync_caches_for_execution();
 }
 
 #ifdef ARM_MULTIARCH
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index a5f311b8ec..8ae7c89a2c 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -27,11 +27,7 @@ ENTRY(setup_c)
 	ldr	r2, =__bss_stop
 	sub	r2, r2, r0
 	bl	memset			/* clear bss */
-#ifdef CONFIG_MMU
-	bl	arm_early_mmu_cache_flush
-#endif
-	mov	r0, #0
-	mcr	p15, 0, r0, c7, c5, 0	/* flush icache */
+	bl	sync_caches_for_execution
 	sub	lr, r5, r4		/* adjust return address to new location */
 	pop	{r4, r5}
 	mov	pc, lr
@@ -73,11 +69,7 @@ ENTRY(relocate_to_adr)
 
 	bl	memcpy			/* copy binary */
 
-#ifdef CONFIG_MMU
-	bl	arm_early_mmu_cache_flush
-#endif
-	mov	r0,#0
-	mcr	p15, 0, r0, c7, c5, 0	/* flush icache */
+	bl	sync_caches_for_execution
 
 	ldr	r0,=1f
 	sub	r0, r0, r8
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index 61e70850d7..ee9ea6cfc0 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -56,9 +56,8 @@ ENTRY(relocate_to_adr)
 
 	bl	memcpy			/* copy binary */
 
-#ifdef CONFIG_MMU
-	bl	arm_early_mmu_cache_flush
-#endif
+	bl	sync_caches_for_execution
+
 	mov	x0,#0
 	ic	ivau, x0	/* flush icache */
 
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 25ef0d3d82..f5c7cfec19 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -95,8 +95,7 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 
 	pbl_barebox_uncompress((void*)barebox_base, (void *)pg_start, pg_len);
 
-	arm_early_mmu_cache_flush();
-	icache_invalidate();
+	sync_caches_for_execution();
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
 		barebox = (void *)(barebox_base + 1);
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index e52716557b..c7851c5c75 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -94,8 +94,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
-	arm_early_mmu_cache_flush();
-	icache_invalidate();
+	sync_caches_for_execution();
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
 		barebox = (void *)(barebox_base + 1);
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 0822cb78c3..bf3a1a0ed2 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -21,4 +21,6 @@ int arm_set_cache_functions(void);
 void arm_early_mmu_cache_flush(void);
 void arm_early_mmu_cache_invalidate(void);
 
+void sync_caches_for_execution(void);
+
 #endif
diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layerscape/xload-qspi.c
index c76780a0e8..192aea64b4 100644
--- a/arch/arm/mach-layerscape/xload-qspi.c
+++ b/arch/arm/mach-layerscape/xload-qspi.c
@@ -25,7 +25,8 @@ int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
 	out_be32(qspi_reg_base, 0x000f400c);
 
 	memcpy(membase, qspi_mem_base + BAREBOX_START, barebox_image_size);
-	icache_invalidate();
+
+	sync_caches_for_execution();
 
 	printf("Starting barebox\n");
 
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 0251757a2a..367daa85a6 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -332,6 +332,8 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 o
 
 	bb = buf + ofs;
 
+	sync_caches_for_execution();
+
 	bb();
 }
 
@@ -458,7 +460,7 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 		return ret;
 	}
 
-	icache_invalidate();
+	sync_caches_for_execution();
 
 	printf("Starting barebox\n");
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
