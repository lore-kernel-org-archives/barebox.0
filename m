Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TJ-0004wU-SN
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:38 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:23 +0100
Message-Id: <20201109134430.21156-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/8] ARM: MMU: add zero_page_{access,faulting}
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

On the qemu virt machine, the cfi flash is mapped at 0x0.
Therefore implement zero_page_{access,faulting} to allow usage of the
cfi_flash driver on this machine.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/Kconfig |  1 -
 arch/arm/cpu/mmu.c   | 13 +++++++++++++
 include/zero_page.h  | 14 --------------
 lib/Kconfig          |  3 ---
 4 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index ca3bd98962..f9f52a6252 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -89,7 +89,6 @@ config CPU_V8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_STACK_DUMP
-	select ARCH_HAS_ZERO_PAGE
 
 config CPU_XSC3
         bool
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6af228505d..bfb8eab5f5 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -17,6 +17,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <asm/sections.h>
+#include <zero_page.h>
 
 #include "mmu.h"
 
@@ -354,6 +355,18 @@ static void create_zero_page(void)
 	}
 }
 
+void zero_page_access(void)
+{
+	arm_create_pte(0x0, pte_flags_cached);
+}
+
+void zero_page_faulting(void)
+{
+	u32 *zero;
+	zero = arm_create_pte(0x0, pte_flags_uncached);
+	zero[0] = 0;
+}
+
 /*
  * Map vectors and zero page
  */
diff --git a/include/zero_page.h b/include/zero_page.h
index ad6861f240..b0efb814db 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -4,8 +4,6 @@
 
 #include <common.h>
 
-#if defined CONFIG_ARCH_HAS_ZERO_PAGE
-
 /*
  * zero_page_faulting - fault when accessing the zero page
  */
@@ -20,18 +18,6 @@ void zero_page_faulting(void);
  */
 void zero_page_access(void);
 
-#else
-
-static inline void zero_page_faulting(void)
-{
-}
-
-static inline void zero_page_access(void)
-{
-}
-
-#endif
-
 static inline bool zero_page_contains(unsigned long addr)
 {
 	return addr < PAGE_SIZE;
diff --git a/lib/Kconfig b/lib/Kconfig
index e5831ecdb9..887f50ff00 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -182,9 +182,6 @@ config ARCH_HAS_STACK_DUMP
 config ARCH_HAS_DATA_ABORT_MASK
 	bool
 
-config ARCH_HAS_ZERO_PAGE
-	bool
-
 config HAVE_EFFICIENT_UNALIGNED_ACCESS
 	bool
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
