Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcWhU-0000oA-F3
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 10:46:01 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Thu, 17 Sep 2015 12:45:11 +0200
Message-Id: <1442486711-6841-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <lya8smdz5d.fsf@ensc-virt.intern.sigma-chemnitz.de>
References: <lya8smdz5d.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Subject: [PATCH 2/2] ARM: MMU: fixed calculation of number of PTEs
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

barebox uses 4KiB pages so that number of PTEs is 'size >> 12', not
'size >> 10'.

Thie 'size >> 10' limit is not an immediate problem because it allocates
too much PTEs only which are not used.  But it can overflow an integer
multiplication ('i * PAGE_SIZE') which causes undefined behaviour with
gcc5.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 8ceb450..014bba2 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -213,7 +213,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	unsigned long phys = (unsigned long)bank->start;
 	unsigned long ttb_start = phys >> 20;
 	unsigned long ttb_end = (phys >> 20) + (bank->size >> 20);
-	unsigned long num_ptes = bank->size >> 10;
+	unsigned long num_ptes = bank->size >> 12;
 	int i, pte;
 	u32 *ptes;
 
-- 
2.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
