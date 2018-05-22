Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmM-0002Ja-Hy
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:22 +0000
Received: by mail-pl0-x242.google.com with SMTP id e6-v6so9971848plt.11
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:14:58 -0700
Message-Id: <20180522031510.25505-18-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 17/29] ARM: mmu: Define and use PTRS_PER_PTE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 62425b828..627962fea 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -34,6 +34,7 @@
 #include "mmu.h"
 
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
+#define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
 
 static uint32_t *ttb;
 
@@ -91,14 +92,15 @@ static u32 *arm_create_pte(unsigned long virt)
 	u32 *table;
 	int i;
 
-	table = memalign(0x400, 0x400);
+	table = memalign(PTRS_PER_PTE * sizeof(u32),
+			 PTRS_PER_PTE * sizeof(u32));
 
 	if (!ttb)
 		arm_mmu_not_initialized_error();
 
 	ttb[pgd_index(virt)] = (unsigned long)table | PMD_TYPE_TABLE;
 
-	for (i = 0; i < 256; i++) {
+	for (i = 0; i < PTRS_PER_PTE; i++) {
 		table[i] = virt | PTE_TYPE_SMALL | pte_flags_uncached;
 		virt += PAGE_SIZE;
 	}
@@ -242,7 +244,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	for (i = ttb_start; i < ttb_end; i++) {
 		ttb[i] = (unsigned long)(&ptes[pte]) | PMD_TYPE_TABLE |
 			(0 << 4);
-		pte += 256;
+		pte += PTRS_PER_PTE;
 	}
 
 	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
