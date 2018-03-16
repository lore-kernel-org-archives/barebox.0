Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qR-MV
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 76/78] ARM: create separate mmu_64.h file
Date: Fri, 16 Mar 2018 13:53:52 +0100
Message-Id: <20180316125354.23462-77-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

cpu/mmu.h has nothing in common for the 32bit and 64bit variant. Make it
two separate files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.h    | 47 -----------------------------------------------
 arch/arm/cpu/mmu_64.c |  2 +-
 arch/arm/cpu/mmu_64.h | 37 +++++++++++++++++++++++++++++++++++++
 3 files changed, 38 insertions(+), 48 deletions(-)
 create mode 100644 arch/arm/cpu/mmu_64.h

diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 5803cb6a83..79ebc80d7d 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -1,53 +1,6 @@
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 
-#ifdef CONFIG_CPU_64v8
-
-#ifndef __ASSEMBLY__
-
-static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint64_t attr)
-{
-	asm volatile("dsb sy");
-	if (el == 1) {
-		asm volatile("msr ttbr0_el1, %0" : : "r" (table) : "memory");
-		asm volatile("msr tcr_el1, %0" : : "r" (tcr) : "memory");
-		asm volatile("msr mair_el1, %0" : : "r" (attr) : "memory");
-	} else if (el == 2) {
-		asm volatile("msr ttbr0_el2, %0" : : "r" (table) : "memory");
-		asm volatile("msr tcr_el2, %0" : : "r" (tcr) : "memory");
-		asm volatile("msr mair_el2, %0" : : "r" (attr) : "memory");
-	} else if (el == 3) {
-		asm volatile("msr ttbr0_el3, %0" : : "r" (table) : "memory");
-		asm volatile("msr tcr_el3, %0" : : "r" (tcr) : "memory");
-		asm volatile("msr mair_el3, %0" : : "r" (attr) : "memory");
-	} else {
-		hang();
-	}
-	asm volatile("isb");
-}
-
-static inline uint64_t get_ttbr(int el)
-{
-	uint64_t val;
-	if (el == 1) {
-		asm volatile("mrs %0, ttbr0_el1" : "=r" (val));
-	} else if (el == 2) {
-		asm volatile("mrs %0, ttbr0_el2" : "=r" (val));
-	} else if (el == 3) {
-		asm volatile("mrs %0, ttbr0_el3" : "=r" (val));
-	} else {
-		hang();
-	}
-
-	return val;
-}
-
-void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb);
-
-#endif
-
-#endif /* CONFIG_CPU_64v8 */
-
 #ifdef CONFIG_MMU
 void __mmu_cache_on(void);
 void __mmu_cache_off(void);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 094bc0ac62..7f29ae7623 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -32,7 +32,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 
-#include "mmu.h"
+#include "mmu_64.h"
 
 #define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
 			 PTE_BLOCK_OUTER_SHARE | \
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
new file mode 100644
index 0000000000..cc01db0db9
--- /dev/null
+++ b/arch/arm/cpu/mmu_64.h
@@ -0,0 +1,37 @@
+
+static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint64_t attr)
+{
+	asm volatile("dsb sy");
+	if (el == 1) {
+		asm volatile("msr ttbr0_el1, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el1, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el1, %0" : : "r" (attr) : "memory");
+	} else if (el == 2) {
+		asm volatile("msr ttbr0_el2, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el2, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el2, %0" : : "r" (attr) : "memory");
+	} else if (el == 3) {
+		asm volatile("msr ttbr0_el3, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el3, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el3, %0" : : "r" (attr) : "memory");
+	} else {
+		hang();
+	}
+	asm volatile("isb");
+}
+
+static inline uint64_t get_ttbr(int el)
+{
+	uint64_t val;
+	if (el == 1) {
+		asm volatile("mrs %0, ttbr0_el1" : "=r" (val));
+	} else if (el == 2) {
+		asm volatile("mrs %0, ttbr0_el2" : "=r" (val));
+	} else if (el == 3) {
+		asm volatile("mrs %0, ttbr0_el3" : "=r" (val));
+	} else {
+		hang();
+	}
+
+	return val;
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
