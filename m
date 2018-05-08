Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGAC0-0006st-NA
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:45 +0000
Received: by mail-pl0-x242.google.com with SMTP id bi12-v6so2970361plb.12
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:49 -0700
Message-Id: <20180508212951.6446-27-andrew.smirnov@gmail.com>
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
Subject: [PATCH 26/28] ARM: mmu: Simplify the use of dma_flush_range()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify the use of dma_flush_range() by changing its signature to
accept pointer to start of the data and data size. This change allows
us to avoid a whole bunch of repetitive arithmetic currently done by
all of the callers.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index b14a869af..fc7102700 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -142,8 +142,11 @@ static u32 *find_pte(unsigned long adr)
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
 }
 
-static void dma_flush_range(unsigned long start, unsigned long end)
+static void dma_flush_range(void *ptr, size_t size)
 {
+	unsigned long start = (unsigned long)ptr;
+	unsigned long end   = start + size;
+
 	__dma_flush_range(start, end);
 	if (outer_cache.flush_range)
 		outer_cache.flush_range(start, end);
@@ -170,9 +173,7 @@ static int __remap_range(void *_start, size_t size, u32 pte_flags)
 		p[i] |= pte_flags | PTE_TYPE_SMALL;
 	}
 
-	dma_flush_range((unsigned long)p,
-			(unsigned long)p + numentries * sizeof(u32));
-
+	dma_flush_range(p, numentries * sizeof(u32));
 	tlb_invalidate();
 
 	return 0;
@@ -203,7 +204,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
 		ttb[pgd_index(sec)] = phys | PMD_SECT_DEF_UNCACHED;
 
-	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
+	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
 	return _start;
 }
@@ -249,9 +250,8 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 		pte += PTRS_PER_PTE;
 	}
 
-	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
-	dma_flush_range((unsigned long)ptes,
-			(unsigned long)ptes + num_ptes * sizeof(u32));
+	dma_flush_range(ttb, 0x4000);
+	dma_flush_range(ptes, num_ptes * sizeof(u32));
 
 	tlb_invalidate();
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
