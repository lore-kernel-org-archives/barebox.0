Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x233.google.com ([2607:f8b0:400e:c01::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2cB-00061Z-C8
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:37 +0000
Received: by mail-pl0-x233.google.com with SMTP id v24-v6so1053022plo.3
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:23 -0700
Message-Id: <20180516200036.29829-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180516200036.29829-1-andrew.smirnov@gmail.com>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/28] ARM: mmu: Replace various SZ_1M with PGDIR_SIZE
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
index 13a10c7b7..67cc670f0 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -5,6 +5,7 @@
 #include <linux/sizes.h>
 
 #define PGDIR_SHIFT	20
+#define PGDIR_SIZE	(1UL << PGDIR_SHIFT)
 
 #define pgd_index(addr)		((addr) >> PGDIR_SHIFT)
 
@@ -39,7 +40,7 @@ __create_sections(uint32_t *ttb, unsigned long first,
 	unsigned long ttb_end   = pgd_index(last) + 1;
 	unsigned int i, addr;
 
-	for (i = ttb_start, addr = first; i < ttb_end; i++, addr += SZ_1M)
+	for (i = ttb_start, addr = first; i < ttb_end; i++, addr += PGDIR_SIZE)
 		ttb[i] = addr | flags;
 }
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
