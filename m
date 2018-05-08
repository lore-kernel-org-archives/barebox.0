Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABl-0006DZ-8T
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:28 +0000
Received: by mail-pg0-x244.google.com with SMTP id x145-v6so1441240pgx.11
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:38 -0700
Message-Id: <20180508212951.6446-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180508212951.6446-1-andrew.smirnov@gmail.com>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/28] ARM: mmu: Replace various SZ_1M with PGDIR_SIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 8 ++++----
 arch/arm/cpu/mmu.h | 3 ++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index d8fb3afa4..228fef433 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -196,7 +196,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
 	unsigned long start = (unsigned long)_start, sec;
 
-	for (sec = start; sec < start + size; sec += (1 << 20), phys += SZ_1M)
+	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
 		ttb[pgd_index(sec)] = phys | PMD_SECT_DEF_UNCACHED;
 
 	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
@@ -224,7 +224,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	 * We replace each 1MiB section in this range with second level page
 	 * tables, therefore we must have 1Mib aligment here.
 	 */
-	if (!IS_ALIGNED(phys, SZ_1M) || !IS_ALIGNED(bank->size, SZ_1M))
+	if (!IS_ALIGNED(phys, PGDIR_SIZE) || !IS_ALIGNED(bank->size, PGDIR_SIZE))
 		return -EINVAL;
 
 	ptes = xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
@@ -289,8 +289,8 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		exc = arm_create_pte(ALIGN_DOWN(adr, SZ_1M));
-		idx = (adr & (SZ_1M - 1)) >> PAGE_SHIFT;
+		exc = arm_create_pte(ALIGN_DOWN(adr, PGDIR_SIZE));
+		idx = (adr & (PGDIR_SIZE - 1)) >> PAGE_SHIFT;
 		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
 
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 1a650f10e..ebb7ea627 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -5,6 +5,7 @@
 #include <linux/sizes.h>
 
 #define PGDIR_SHIFT	20
+#define PGDIR_SIZE	(1UL << PGDIR_SHIFT)
 
 #define pgd_index(addr)		((addr) >> PGDIR_SHIFT)
 
@@ -39,7 +40,7 @@ create_sections(uint32_t *ttb, unsigned long addr,
 	unsigned long ttb_end   = ttb_start + pgd_index(size);
 	unsigned int i;
 
-	for (i = ttb_start; i < ttb_end; i++, addr += SZ_1M)
+	for (i = ttb_start; i < ttb_end; i++, addr += PGDIR_SIZE)
 		ttb[i] = addr | flags;
 }
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
