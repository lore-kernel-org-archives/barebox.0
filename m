Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f175.google.com ([209.85.215.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TyXdW-0006ka-NW
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 00:59:19 +0000
Received: by mail-ea0-f175.google.com with SMTP id d1so4107021eab.6
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 16:59:14 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Fri, 25 Jan 2013 01:59:43 +0100
Message-Id: <1359075583-17837-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] arm-mmu: switch pte flags vars to lower case
To: barebox@lists.infradead.org

Old cache/uncache pte flags were declared as defines.
Since these flags are determine at runtime they are static
variables.

This patch switch the naming style of these variables to
lower case which is typically used for variables.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/cpu/mmu.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 40b7ec4..c08676f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -52,8 +52,8 @@ extern int arm_architecture;
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
 
-static uint32_t PTE_FLAGS_CACHED;
-static uint32_t PTE_FLAGS_UNCACHED;
+static uint32_t pte_flags_cached;
+static uint32_t pte_flags_uncached;
 
 #define PTE_MASK ((1 << 12) - 1)
 
@@ -72,7 +72,7 @@ static u32 *arm_create_pte(unsigned long virt)
 	ttb[virt >> 20] = (unsigned long)table | PMD_TYPE_TABLE;
 
 	for (i = 0; i < 256; i++) {
-		table[i] = virt | PTE_TYPE_SMALL | PTE_FLAGS_UNCACHED;
+		table[i] = virt | PTE_TYPE_SMALL | pte_flags_uncached;
 		virt += PAGE_SIZE;
 	}
 
@@ -155,7 +155,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 
 	for (i = 0; i < num_ptes; i++) {
 		ptes[i] = (phys + i * 4096) | PTE_TYPE_SMALL |
-			PTE_FLAGS_CACHED;
+			pte_flags_cached;
 	}
 
 	pte = 0;
@@ -217,9 +217,10 @@ static void vectors_init(void)
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
 
 	if (cr & CR_V)
-		exc[256 - 16] = (u32)vectors | PTE_TYPE_SMALL | PTE_FLAGS_CACHED;
+		exc[256 - 16] = (u32)vectors | PTE_TYPE_SMALL |
+			pte_flags_cached;
 	else
-		exc[0] = (u32)vectors | PTE_TYPE_SMALL | PTE_FLAGS_CACHED;
+		exc[0] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 }
 
 /*
@@ -233,11 +234,11 @@ static int mmu_init(void)
 	arm_set_cache_functions();
 
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
-		PTE_FLAGS_CACHED = PTE_FLAGS_CACHED_V7;
-		PTE_FLAGS_UNCACHED = PTE_FLAGS_UNCACHED_V7;
+		pte_flags_cached = PTE_FLAGS_CACHED_V7;
+		pte_flags_uncached = PTE_FLAGS_UNCACHED_V7;
 	} else {
-		PTE_FLAGS_CACHED = PTE_FLAGS_CACHED_V4;
-		PTE_FLAGS_UNCACHED = PTE_FLAGS_UNCACHED_V4;
+		pte_flags_cached = PTE_FLAGS_CACHED_V4;
+		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
 	ttb = memalign(0x10000, 0x4000);
@@ -305,7 +306,7 @@ void *dma_alloc_coherent(size_t size)
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
-	remap_range(ret, size, PTE_FLAGS_UNCACHED);
+	remap_range(ret, size, pte_flags_uncached);
 
 	return ret;
 }
@@ -322,7 +323,7 @@ void *phys_to_virt(unsigned long phys)
 
 void dma_free_coherent(void *mem, size_t size)
 {
-	remap_range(mem, size, PTE_FLAGS_CACHED);
+	remap_range(mem, size, pte_flags_cached);
 
 	free(mem);
 }
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
