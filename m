Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S8-Pw
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:52 +0200
Message-Id: <1269947215-18214-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/12] ARM: Add a wrapper around dma_* functions
To: barebox@lists.infradead.org

This is a preparation to add second level cache support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv4.S |    6 +++---
 arch/arm/cpu/cache-armv5.S |    6 +++---
 arch/arm/cpu/cache-armv6.S |    6 +++---
 arch/arm/cpu/cache-armv7.S |   12 ++++++------
 arch/arm/cpu/mmu.c         |   17 ++++++++++++++++-
 arch/arm/include/asm/mmu.h |    4 ++++
 6 files changed, 35 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index a0ab256..a79cc27 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -86,7 +86,7 @@ ENDPROC(__mmu_cache_flush)
  *
  * (same as v4wb)
  */
-ENTRY(dma_inv_range)
+ENTRY(__dma_inv_range)
 	tst	r0, #CACHE_DLINESIZE - 1
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
@@ -109,7 +109,7 @@ ENTRY(dma_inv_range)
  *
  * (same as v4wb)
  */
-ENTRY(dma_clean_range)
+ENTRY(__dma_clean_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
 	add	r0, r0, #CACHE_DLINESIZE
@@ -126,7 +126,7 @@ ENTRY(dma_clean_range)
  *	- start	- virtual start address
  *	- end	- virtual end address
  */
-ENTRY(dma_flush_range)
+ENTRY(__dma_flush_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
 	add	r0, r0, #CACHE_DLINESIZE
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index 3618c44..f52bcb7 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -62,7 +62,7 @@ ENDPROC(__mmu_cache_flush)
  *
  * (same as v4wb)
  */
-ENTRY(dma_inv_range)
+ENTRY(__dma_inv_range)
 	tst	r0, #CACHE_DLINESIZE - 1
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
@@ -85,7 +85,7 @@ ENTRY(dma_inv_range)
  *
  * (same as v4wb)
  */
-ENTRY(dma_clean_range)
+ENTRY(__dma_clean_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
 	add	r0, r0, #CACHE_DLINESIZE
@@ -102,7 +102,7 @@ ENTRY(dma_clean_range)
  *	- start	- virtual start address
  *	- end	- virtual end address
  */
-ENTRY(dma_flush_range)
+ENTRY(__dma_flush_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
 	add	r0, r0, #CACHE_DLINESIZE
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index ceabd52..e3498bb 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -61,7 +61,7 @@ ENDPROC(__mmu_cache_flush)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(dma_inv_range)
+ENTRY(__dma_inv_range)
 	tst	r0, #D_CACHE_LINE_SIZE - 1
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 #ifdef HARVARD_CACHE
@@ -94,7 +94,7 @@ ENTRY(dma_inv_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(dma_clean_range)
+ENTRY(__dma_clean_range)
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 1:
 #ifdef HARVARD_CACHE
@@ -114,7 +114,7 @@ ENTRY(dma_clean_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(dma_flush_range)
+ENTRY(__dma_flush_range)
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 1:
 #ifdef HARVARD_CACHE
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index b370acd..9afa20d 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -128,7 +128,7 @@ ENDPROC(__mmu_cache_flush)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(dma_inv_range)
+ENTRY(__dma_inv_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
 	tst	r0, r3
@@ -145,14 +145,14 @@ ENTRY(dma_inv_range)
 	blo	1b
 	dsb
 	mov	pc, lr
-ENDPROC(dma_inv_range)
+ENDPROC(__dma_inv_range)
 
 /*
  *	v7_dma_clean_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(dma_clean_range)
+ENTRY(__dma_clean_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
 	bic	r0, r0, r3
@@ -163,14 +163,14 @@ ENTRY(dma_clean_range)
 	blo	1b
 	dsb
 	mov	pc, lr
-ENDPROC(dma_clean_range)
+ENDPROC(__dma_clean_range)
 
 /*
  *	v7_dma_flush_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
-ENTRY(dma_flush_range)
+ENTRY(__dma_flush_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
 	bic	r0, r0, r3
@@ -181,5 +181,5 @@ ENTRY(dma_flush_range)
 	blo	1b
 	dsb
 	mov	pc, lr
-ENDPROC(dma_flush_range)
+ENDPROC(__dma_flush_range)
 
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 4c4e196..faf47c5 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -98,7 +98,7 @@ void *dma_alloc_coherent(size_t size)
 	if (mem)
 		return mem + dma_coherent_offset;
 
-	return NULL; 
+	return NULL;
 }
 
 unsigned long virt_to_phys(void *virt)
@@ -116,3 +116,18 @@ void dma_free_coherent(void *mem)
 	free(mem - dma_coherent_offset);
 }
 
+void dma_clean_range(unsigned long start, unsigned long end)
+{
+	__dma_clean_range(start, end);
+}
+
+void dma_flush_range(unsigned long start, unsigned long end)
+{
+	__dma_flush_range(start, end);
+}
+
+void dma_inv_range(unsigned long start, unsigned long end)
+{
+	__dma_inv_range(start, end);
+}
+
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index d0a6562..a779101 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -60,5 +60,9 @@ static inline void dma_inv_range(unsigned long s, unsigned long e)
 
 #endif
 
+void __dma_clean_range(unsigned long, unsigned long);
+void __dma_flush_range(unsigned long, unsigned long);
+void __dma_inv_range(unsigned long, unsigned long);
+
 #endif /* __ASM_MMU_H */
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
