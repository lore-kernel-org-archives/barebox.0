Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUHME-0005Lg-3W
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 12:27:50 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 26 Nov 2011 13:26:54 +0100
Message-Id: <1322310414-9360-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm: trivial renaming create_sections
To: barebox@lists.infradead.org

Rename create_section into create_sections, as the function
is used to create multiple sections, and in particular it
creates the 4096 sections of 1MBytes to have a 1:1 flat
mapping of the 4GBytes address space.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/cpu/mmu.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 4446813..8e4e81a 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -9,7 +9,7 @@
 
 static unsigned long *ttb;
 
-static void create_section(unsigned long virt, unsigned long phys, int size_m,
+static void create_sections(unsigned long virt, unsigned long phys, int size_m,
 		unsigned int flags)
 {
 	int i;
@@ -226,7 +226,7 @@ static int mmu_init(void)
 	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
 
 	/* create a flat mapping using 1MiB sections */
-	create_section(0, 0, 4096, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
+	create_sections(0, 0, 4096, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
 			PMD_TYPE_SECT);
 
 	vectors_init();
@@ -237,7 +237,7 @@ static int mmu_init(void)
 	 * below
 	 */
 	for_each_memory_bank(bank)
-		create_section(bank->start, bank->start, bank->size >> 20,
+		create_sections(bank->start, bank->start, bank->size >> 20,
 				PMD_SECT_DEF_CACHED);
 
 	asm volatile (
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
