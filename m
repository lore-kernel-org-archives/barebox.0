Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqJQ-000742-Ox
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 14:18:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  8 Oct 2019 16:18:01 +0200
Message-Id: <20191008141801.3388-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: mmu: remove no longer accurate comment
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This comment refers to the state of things prior to e3e54c644
("ARM: mmu: Implement on-demand PTE allocation"). Since then, we no
longer generate 2nd level page tables directly below. Remove it
to avoid confusion.

Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 2c5c4b574928..158b130b5765 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -461,11 +461,6 @@ void __mmu_init(bool mmu_on)
 
 	vectors_init();
 
-	/*
-	 * First remap sdram cached using sections.
-	 * This is to speed up the generation of 2nd level page tables
-	 * below
-	 */
 	for_each_memory_bank(bank) {
 		create_sections(ttb, bank->start, bank->start + bank->size - 1,
 				PMD_SECT_DEF_CACHED);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
