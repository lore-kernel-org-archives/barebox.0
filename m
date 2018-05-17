Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJPzo-0005Sj-69
 for barebox@lists.infradead.org; Thu, 17 May 2018 21:00:00 +0000
Received: by mail-pl0-x22f.google.com with SMTP id n10-v6so3249602plp.0
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 13:59:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 13:58:24 -0700
Message-Id: <20180517205837.32421-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180517205837.32421-1-andrew.smirnov@gmail.com>
References: <20180517205837.32421-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 15/28] ARM: mmu: Replace various SZ_1M with PGDIR_SIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 8 ++++----
 arch/arm/cpu/mmu.h | 3 ++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 83577300f..de242e0d7 100644
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
index 4f6ab2e71..211770af8 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -5,6 +5,7 @@
 #include <linux/sizes.h>
 
 #define PGDIR_SHIFT	20
+#define PGDIR_SIZE	(1UL << PGDIR_SHIFT)
 
 #define pgd_index(addr)		((addr) >> PGDIR_SHIFT)
 
@@ -41,7 +42,7 @@ create_sections(uint32_t *ttb, unsigned long first,
 
 	for (i = ttb_start; i < ttb_end; i++) {
 		ttb[i] = addr | flags;
-		addr += SZ_1M;
+		addr += PGDIR_SIZE;
 	}
 }
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
