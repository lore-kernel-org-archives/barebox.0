Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001Ev-H4
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:38 +0200
Message-Id: <1312786003-14734-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] ARM mmu: use high vectors if possible
To: barebox@lists.infradead.org

Using high vectors allows us to map a faulting zero page to
catch NULL pointer dereferences.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |   37 +++++++++++++++++++++++++++++++------
 1 files changed, 31 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 2f754c8..b669349 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -4,6 +4,7 @@
 #include <errno.h>
 #include <sizes.h>
 #include <asm/memory.h>
+#include <asm/system.h>
 
 static unsigned long *ttb;
 
@@ -161,22 +162,46 @@ static int arm_mmu_remap_sdram(struct arm_memory *mem)
 #define ARM_VECTORS_SIZE	(sizeof(u32) * 8 * 2)
 
 /*
- * Allocate a page, map it to the zero page and copy our exception
- * vectors there.
+ * Map vectors and zero page
  */
 static void vectors_init(void)
 {
-	u32 *exc;
+	u32 *exc, *zero = NULL;
 	void *vectors;
 	extern unsigned long exception_vectors;
-
-	exc = arm_create_pte(0x0);
+	u32 cr;
+
+	cr = get_cr();
+	cr |= CR_V;
+	set_cr(cr);
+	cr = get_cr();
+
+	if (cr & CR_V) {
+		/*
+		 * If we can use high vectors, create the second level
+		 * page table for the high vectors and zero page
+		 */
+		exc = arm_create_pte(0xfff00000);
+		zero = arm_create_pte(0x0);
+
+		/* Set the zero page to faulting */
+		zero[0] = 0;
+	} else {
+		/*
+		 * Otherwise map the vectors to the zero page. We have to
+		 * live without being able to catch NULL pointer dereferences
+		 */
+		exc = arm_create_pte(0x0);
+	}
 
 	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, &exception_vectors, ARM_VECTORS_SIZE);
 
-	exc[0] = (u32)vectors | PTE_TYPE_SMALL | PTE_FLAGS_CACHED;
+	if (cr & CR_V)
+		exc[256 - 16] = (u32)vectors | PTE_TYPE_SMALL | PTE_FLAGS_CACHED;
+	else
+		exc[0] = (u32)vectors | PTE_TYPE_SMALL | PTE_FLAGS_CACHED;
 }
 
 /*
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
