Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGAC0-0006sb-38
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:45 +0000
Received: by mail-pf0-x244.google.com with SMTP id a22so10463231pfn.6
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:47 -0700
Message-Id: <20180508212951.6446-25-andrew.smirnov@gmail.com>
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
Subject: [PATCH 24/28] ARM: mmu: Use find_pte() to find PTE in
 create_vector_table()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's already a function that implement necessary arithemtic to find
offset within page table for a given address, so make use of it
instead of re-implementing it again.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 94388f11a..ceb854ac8 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -272,8 +272,7 @@ static void create_vector_table(unsigned long adr)
 {
 	struct resource *vectors_sdram;
 	void *vectors;
-	u32 *exc;
-	int idx;
+	u32 *pte;
 
 	vectors_sdram = request_sdram_region("vector table", adr, PAGE_SIZE);
 	if (vectors_sdram) {
@@ -293,9 +292,9 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		exc = arm_create_pte(adr, pte_flags_uncached);
-		idx = (adr & (PGDIR_SIZE - 1)) >> PAGE_SHIFT;
-		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
+		arm_create_pte(adr, pte_flags_uncached);
+		pte = find_pte(adr);
+		*pte = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
 
 	arm_fixup_vectors();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
