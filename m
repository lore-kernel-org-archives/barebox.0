Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmT-00047g-NP
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:11 +0000
Received: by mail-pg0-x244.google.com with SMTP id l2-v6so7207790pgc.7
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:15:03 -0700
Message-Id: <20180522031510.25505-23-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 22/29] ARM: mmu: Pass PTE flags a parameter to
 arm_create_pte()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to make it possible to use this functions in contexts where
creating a new PTE of uncached pages in not appropriate, pass PTE
flags a parameter to arm_create_pte() and fix all of the current users
as necessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 7d4432b98..1713238ad 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -87,7 +87,7 @@ static void arm_mmu_not_initialized_error(void)
  * We initially create a flat uncached mapping on it.
  * Not yet exported, but may be later if someone finds use for it.
  */
-static u32 *arm_create_pte(unsigned long virt)
+static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 {
 	u32 *table;
 	int i;
@@ -101,7 +101,7 @@ static u32 *arm_create_pte(unsigned long virt)
 	ttb[pgd_index(virt)] = (unsigned long)table | PMD_TYPE_TABLE;
 
 	for (i = 0; i < PTRS_PER_PTE; i++) {
-		table[i] = virt | PTE_TYPE_SMALL | pte_flags_uncached;
+		table[i] = virt | PTE_TYPE_SMALL | flags;
 		virt += PAGE_SIZE;
 	}
 
@@ -291,7 +291,8 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		exc = arm_create_pte(ALIGN_DOWN(adr, PGDIR_SIZE));
+		exc = arm_create_pte(ALIGN_DOWN(adr, PGDIR_SIZE),
+				     pte_flags_uncached);
 		idx = (adr & (PGDIR_SIZE - 1)) >> PAGE_SHIFT;
 		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
@@ -362,7 +363,7 @@ static void create_zero_page(void)
 		 */
 		pr_debug("zero page is in SDRAM area, currently not supported\n");
 	} else {
-		zero = arm_create_pte(0x0);
+		zero = arm_create_pte(0x0, pte_flags_uncached);
 		zero[0] = 0;
 		pr_debug("Created zero page\n");
 	}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
