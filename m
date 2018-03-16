Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qP-Kf
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 77/78] ARM: change mmu_early_enable() prototype
Date: Fri, 16 Mar 2018 13:53:53 +0100
Message-Id: <20180316125354.23462-78-s.hauer@pengutronix.de>
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

Change the arguements to type unsigned long which is suitable for both
arm32 and arm64. While at it move the prototype to arch/arm/include/.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-early.c   | 3 ++-
 arch/arm/cpu/mmu-early.h   | 6 ------
 arch/arm/cpu/mmu_64.c      | 3 ++-
 arch/arm/cpu/start-pbl.c   | 3 +--
 arch/arm/cpu/start.c       | 2 +-
 arch/arm/cpu/uncompress.c  | 3 +--
 arch/arm/include/asm/mmu.h | 3 +++
 7 files changed, 10 insertions(+), 13 deletions(-)
 delete mode 100644 arch/arm/cpu/mmu-early.h

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 1549f08985..70cb5fe31b 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -30,7 +30,8 @@ static void map_cachable(unsigned long start, unsigned long size)
 			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
 }
 
-void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t _ttb)
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long _ttb)
 {
 	int i;
 
diff --git a/arch/arm/cpu/mmu-early.h b/arch/arm/cpu/mmu-early.h
deleted file mode 100644
index af21f52131..0000000000
--- a/arch/arm/cpu/mmu-early.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ARM_CPU_MMU_EARLY_H
-#define __ARM_CPU_MMU_EARLY_H
-
-void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t ttb);
-
-#endif /* __ARM_CPU_MMU_EARLY_H */
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7f29ae7623..31658de910 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -339,7 +339,8 @@ void mmu_disable(void)
 	isb();
 }
 
-void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long _ttb)
 {
 	int el;
 
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 25f91b02f3..16159d7f9d 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -27,10 +27,9 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/cache.h>
+#include <asm/mmu.h>
 #include <asm/unaligned.h>
 
-#include "mmu-early.h"
-
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 9f4213bfb9..68fff892e8 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,12 +26,12 @@
 #include <asm/sections.h>
 #include <asm/unaligned.h>
 #include <asm/cache.h>
+#include <asm/mmu.h>
 #include <memory.h>
 #include <uncompress.h>
 #include <malloc.h>
 
 #include <debug_ll.h>
-#include "mmu-early.h"
 
 unsigned long arm_stack_top;
 static unsigned long arm_barebox_size;
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index c721eef0ad..b07087e4cf 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -28,12 +28,11 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/cache.h>
+#include <asm/mmu.h>
 #include <asm/unaligned.h>
 
 #include <debug_ll.h>
 
-#include "mmu-early.h"
-
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 840851858f..99833ac5b4 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -54,4 +54,7 @@ void __dma_clean_range(unsigned long, unsigned long);
 void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long ttb);
+
 #endif /* __ASM_MMU_H */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
