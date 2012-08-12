Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ZBd-0004KY-Dd
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:30:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:30:30 +0200
Message-Id: <1344781832-17978-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM MMU: call __mmu_cache_* as regular C functions
To: barebox@lists.infradead.org

Now that __mmu_cache_* restore the registers they can be called
as regular C functions. Create a header file for them and use
C functions rather than inline assembly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |   25 ++++++-------------------
 arch/arm/cpu/mmu.h |    8 ++++++++
 2 files changed, 14 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/cpu/mmu.h

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 607f357..dad8092 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -8,6 +8,8 @@
 #include <asm/system.h>
 #include <memory.h>
 
+#include "mmu.h"
+
 static unsigned long *ttb;
 
 static void create_sections(unsigned long virt, unsigned long phys, int size_m,
@@ -21,12 +23,7 @@ static void create_sections(unsigned long virt, unsigned long phys, int size_m,
 	for (i = size_m; i > 0; i--, virt++, phys++)
 		ttb[virt] = (phys << 20) | flags;
 
-	asm volatile (
-		"bl __mmu_cache_flush;"
-		:
-		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
-	);
+	__mmu_cache_flush();
 }
 
 /*
@@ -255,12 +252,7 @@ static int mmu_init(void)
 		create_sections(bank->start, bank->start, bank->size >> 20,
 				PMD_SECT_DEF_CACHED);
 
-	asm volatile (
-		"bl __mmu_cache_on;"
-		:
-		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
-        );
+	__mmu_cache_on();
 
 	/*
 	 * Now that we have the MMU and caches on remap sdram again using
@@ -284,13 +276,8 @@ void mmu_disable(void)
 	if (outer_cache.disable)
 		outer_cache.disable();
 
-	asm volatile (
-		"bl __mmu_cache_flush;"
-		"bl __mmu_cache_off;"
-		:
-		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
-	);
+	__mmu_cache_flush();
+	__mmu_cache_off();
 }
 
 #define PAGE_ALIGN(s) ((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
new file mode 100644
index 0000000..618968b
--- /dev/null
+++ b/arch/arm/cpu/mmu.h
@@ -0,0 +1,8 @@
+#ifndef __ARM_MMU_H
+#define __ARM_MMU_H
+
+void __mmu_cache_on(void);
+void __mmu_cache_off(void);
+void __mmu_cache_flush(void);
+
+#endif /* __ARM_MMU_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
