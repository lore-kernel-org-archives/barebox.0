Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cIr5r-0002ez-58
 for barebox@lists.infradead.org; Mon, 19 Dec 2016 06:06:41 +0000
Received: by mail-pg0-x242.google.com with SMTP id w68so1334189pgw.3
 for <barebox@lists.infradead.org>; Sun, 18 Dec 2016 22:06:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 18 Dec 2016 22:05:52 -0800
Message-Id: <1482127552-31772-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: Fix a bug in stack's "top" initialization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Code-paths responsible for initializing CPU's stack pointer and variable
used in stack memory resource reservation got out of sync which resulted
in actual stack being 64K off from what "stack" struct resource
registered by arm_request_stack() thought it was.

At least one issue resulting from that can be easily triggered by
running:

memtest -t

This commit unifies the aforementioned code to a certain degree which
solves the problem and hopefuly makes it less likely to become an issue
again.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/entry.c               | 2 +-
 arch/arm/cpu/start.c               | 2 +-
 arch/arm/include/asm/barebox-arm.h | 8 +++++++-
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index 0cdcfec..33b1429 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -27,7 +27,7 @@
 void __naked __noreturn barebox_arm_entry(unsigned long membase,
 					  unsigned long memsize, void *boarddata)
 {
-	arm_setup_stack(arm_mem_stack(membase, membase + memsize) + STACK_SIZE - 16);
+	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
 	arm_early_mmu_cache_invalidate();
 
 	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0120117..a62b0d5 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -158,7 +158,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	arm_stack_top = endmem;
+	arm_stack_top = arm_mem_stack_top(membase, endmem);
 	arm_barebox_size = barebox_size;
 	malloc_end = arm_mem_barebox_image(membase, endmem,
 						arm_barebox_size);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 061296a..e8dfd02 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -94,10 +94,16 @@ static inline void arm_fixup_vectors(void)
 
 void *barebox_arm_boot_dtb(void);
 
+static inline unsigned long arm_mem_stack_top(unsigned long membase,
+					      unsigned long endmem)
+{
+	return endmem - SZ_64K;
+}
+
 static inline unsigned long arm_mem_stack(unsigned long membase,
 					  unsigned long endmem)
 {
-	return endmem - SZ_64K - STACK_SIZE;
+	return arm_mem_stack_top(membase, endmem) - STACK_SIZE;
 }
 
 static inline unsigned long arm_mem_ttb(unsigned long membase,
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
