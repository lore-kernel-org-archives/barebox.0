Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2cA-0004QD-8c
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:35 +0000
Received: by mail-pg0-x244.google.com with SMTP id u8-v6so739378pgp.13
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:21 -0700
Message-Id: <20180516200036.29829-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 13/28] ARM: mmu: Replace hardcoded shifts with pgd_index()
 from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 12 ++++++------
 arch/arm/cpu/mmu.h |  8 ++++++--
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 40bef016b..e0365eec1 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -96,7 +96,7 @@ static u32 *arm_create_pte(unsigned long virt)
 	if (!ttb)
 		arm_mmu_not_initialized_error();
 
-	ttb[virt >> 20] = (unsigned long)table | PMD_TYPE_TABLE;
+	ttb[pgd_index(virt)] = (unsigned long)table | PMD_TYPE_TABLE;
 
 	for (i = 0; i < 256; i++) {
 		table[i] = virt | PTE_TYPE_SMALL | pte_flags_uncached;
@@ -113,7 +113,7 @@ static u32 *find_pte(unsigned long adr)
 	if (!ttb)
 		arm_mmu_not_initialized_error();
 
-	if ((ttb[adr >> 20] & PMD_TYPE_MASK) != PMD_TYPE_TABLE) {
+	if ((ttb[pgd_index(adr)] & PMD_TYPE_MASK) != PMD_TYPE_TABLE) {
 		struct memory_bank *bank;
 		int i = 0;
 
@@ -132,7 +132,7 @@ static u32 *find_pte(unsigned long adr)
 	}
 
 	/* find the coarse page table base address */
-	table = (u32 *)(ttb[adr >> 20] & ~0x3ff);
+	table = (u32 *)(ttb[pgd_index(adr)] & ~0x3ff);
 
 	/* find second level descriptor */
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
@@ -197,7 +197,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	unsigned long start = (unsigned long)_start, sec;
 
 	for (sec = start; sec < start + size; sec += (1 << 20), phys += SZ_1M)
-		ttb[sec >> 20] = phys | PMD_SECT_DEF_UNCACHED;
+		ttb[pgd_index(sec)] = phys | PMD_SECT_DEF_UNCACHED;
 
 	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
 	tlb_invalidate();
@@ -211,8 +211,8 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 static int arm_mmu_remap_sdram(struct memory_bank *bank)
 {
 	unsigned long phys = (unsigned long)bank->start;
-	unsigned long ttb_start = phys >> 20;
-	unsigned long ttb_end = (phys >> 20) + (bank->size >> 20);
+	unsigned long ttb_start = pgd_index(phys);
+	unsigned long ttb_end = pgd_index(phys) + pgd_index(bank->size);
 	unsigned long num_ptes = bank->size >> 12;
 	int i, pte;
 	u32 *ptes;
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 04aa81732..13a10c7b7 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -4,6 +4,10 @@
 #include <asm/pgtable.h>
 #include <linux/sizes.h>
 
+#define PGDIR_SHIFT	20
+
+#define pgd_index(addr)		((addr) >> PGDIR_SHIFT)
+
 #ifdef CONFIG_MMU
 void __mmu_cache_on(void);
 void __mmu_cache_off(void);
@@ -31,8 +35,8 @@ static inline void
 __create_sections(uint32_t *ttb, unsigned long first,
 		  unsigned long last, unsigned int flags)
 {
-	unsigned long ttb_start = first >> 20;
-	unsigned long ttb_end   = (last >> 20) + 1;
+	unsigned long ttb_start = pgd_index(first);
+	unsigned long ttb_end   = pgd_index(last) + 1;
 	unsigned int i, addr;
 
 	for (i = ttb_start, addr = first; i < ttb_end; i++, addr += SZ_1M)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
