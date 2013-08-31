Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFnUt-0007MW-9t
 for barebox@lists.infradead.org; Sat, 31 Aug 2013 15:54:01 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id B42BAFF9728
 for <barebox@lists.infradead.org>; Sat, 31 Aug 2013 17:53:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Aug 2013 17:54:22 +0200
Message-Id: <1377964462-10387-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: mmu: catch NULL pointer dereferences
To: barebox@lists.infradead.org

For high vectors if memory start at 0x0. We have to
live without being able to catch NULL pointer dereferences.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/mmu.c | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index e3ea3b6..2e69b16 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -218,9 +218,9 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 /*
  * Map vectors and zero page
  */
-static void vectors_init(void)
+static void vectors_init(bool zero_valid_addr)
 {
-	u32 *exc, *zero = NULL;
+	u32 *exc;
 	void *vectors;
 	u32 cr;
 
@@ -235,10 +235,19 @@ static void vectors_init(void)
 		 * page table for the high vectors and zero page
 		 */
 		exc = arm_create_pte(0xfff00000);
-		zero = arm_create_pte(0x0);
 
-		/* Set the zero page to faulting */
-		zero[0] = 0;
+		/*
+		 * Memory start at 0x0. We have to
+		 * live without being able to catch NULL pointer dereferences
+		 */
+		if (!zero_valid_addr) {
+			u32 *zero = NULL;
+
+			zero = arm_create_pte(0x0);
+
+			/* Set the zero page to faulting */
+			zero[0] = 0;
+		}
 	} else {
 		/*
 		 * Otherwise map the vectors to the zero page. We have to
@@ -267,6 +276,7 @@ static int mmu_init(void)
 {
 	struct memory_bank *bank;
 	int i;
+	bool is_start_zero = 0;
 
 	arm_set_cache_functions();
 
@@ -303,7 +313,12 @@ static int mmu_init(void)
 	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
 			PMD_TYPE_SECT);
 
-	vectors_init();
+	for_each_memory_bank(bank) {
+		if (bank->start == 0x0)
+			is_start_zero = 1;
+	}
+
+	vectors_init(is_start_zero);
 
 	/*
 	 * First remap sdram cached using sections.
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
