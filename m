Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcoHX-0007QX-9l
 for barebox@lists.infradead.org; Thu, 25 Aug 2016 06:36:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Aug 2016 08:36:32 +0200
Message-Id: <1472106992-30755-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] ARM: vector_table: Fix creation of second level page table
To: Barebox List <barebox@lists.infradead.org>

The second level page tables can only start at a 1MiB section boundary,
so instead of calling arm_create_pte() with the high vector address
(which is 0xffff0000, not 1MiB aligned) we have to call it with
0xfff00000 to correctly create a second level page table.
The old values broke SoCs which have peripherals in the upper 1MiB
area, like for example the Atmel AT91RM9200. On these Socs we correctly
created the vector page, but the pages around it did not have a 1:1
mapping anymore which led to unreachable peripherals.

Fixes: f6b77fe9: ARM: Rework vector table setup

Reported-by: Peter Kardos <kardos.peter.sk@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v1:
- Use ALIGN_DOWN instead of open coded alignment
- more clear commit message

 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index a31bce4..459abe5 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -307,7 +307,7 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		exc = arm_create_pte(adr);
+		exc = arm_create_pte(ALIGN_DOWN(adr, SZ_1M));
 		idx = (adr & (SZ_1M - 1)) >> PAGE_SHIFT;
 		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
