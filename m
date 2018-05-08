Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABy-0006oe-JD
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:43 +0000
Received: by mail-pf0-x241.google.com with SMTP id j20so10246805pff.10
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:46 -0700
Message-Id: <20180508212951.6446-24-andrew.smirnov@gmail.com>
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
Subject: [PATCH 23/28] ARM: mmu: Make sure that address is 1M aligned in
 arm_create_pte()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If address passed arm_create_pte() is not 1M (PGDIR_SIZE) aligned,
page table that is created will end up having unexpected mapping
offset, breaking "1:1 mapping" assumption and leading to bugs that are
not immediately obvious in their nature.

To prevent this and because all of the callers already do said
alignement in-place, move the alignment code to be a part of
are_create_pte().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index eeab0a749..94388f11a 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -92,6 +92,8 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 	u32 *table;
 	int i;
 
+	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
+
 	table = xmemalign(PTRS_PER_PTE * sizeof(u32),
 			  PTRS_PER_PTE * sizeof(u32));
 
@@ -291,8 +293,7 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		exc = arm_create_pte(ALIGN_DOWN(adr, PGDIR_SIZE),
-				     pte_flags_uncached);
+		exc = arm_create_pte(adr, pte_flags_uncached);
 		idx = (adr & (PGDIR_SIZE - 1)) >> PAGE_SHIFT;
 		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
