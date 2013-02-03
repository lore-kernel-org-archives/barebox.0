Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Gb-0007GB-4A
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:14:01 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 20304104ED15
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:28 +0100
Message-Id: <1359904236-11622-28-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 28/36] ARM: Setup stack at end of SDRAM
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c                 |   12 ++++++++++++
 arch/arm/cpu/start-pbl.c           |    4 +---
 arch/arm/cpu/start.c               |   18 +++++++++++++++++-
 arch/arm/include/asm/barebox-arm.h |    2 ++
 common/meminfo.c                   |    5 -----
 5 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 2ca871f..7761f5c 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -28,6 +28,7 @@
 #include <asm/mmu.h>
 #include <asm/system.h>
 #include <asm/memory.h>
+#include <asm-generic/memory_layout.h>
 #include <asm/system_info.h>
 #include <asm/cputype.h>
 #include <asm/cache.h>
@@ -91,6 +92,17 @@ void arch_shutdown(void)
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 }
 
+extern unsigned long arm_stack_top;
+
+static int arm_request_stack(void)
+{
+	if (!request_sdram_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE))
+		pr_err("Error: Cannot request SDRAM region for stack\n");
+
+	return 0;
+}
+coredevice_initcall(arm_request_stack);
+
 #ifdef CONFIG_THUMB2_BAREBOX
 static void thumb2_execute(void *func, int argc, char *argv[])
 {
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 64cd6ff..89839f0 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -174,8 +174,6 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
  * be preserved and can be accessed later with barebox_arm_boarddata().
  *
  * -> membase + memsize
- *   ARM_RESERVE_MEM_SIZE    - reserved for board usage. Will not be touched
- *                             by barebox
  *   STACK_SIZE              - stack
  *   16KiB, aligned to 16KiB - First level page table if early MMU support
  *                             is enabled
@@ -188,7 +186,7 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
+	arm_setup_stack(membase + memsize - 16);
 
 	__barebox_arm_entry(membase, memsize, boarddata);
 }
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 9fd1e8d..a621161 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,11 +26,18 @@
 #include <asm/cache.h>
 #include <memory.h>
 
+unsigned long arm_stack_top;
+
 static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
+	unsigned long endmem = membase + memsize;
+
 	setup_c();
 
+	arm_stack_top = endmem;
+	endmem -= STACK_SIZE; /* Stack */
+
 	start_barebox();
 }
 
@@ -47,11 +54,20 @@ void __naked __section(.text_entry) start(void)
  * full SDRAM. The currently running binary can be inside or outside of this
  * region. TEXT_BASE can be inside or outside of this region. boarddata will
  * be preserved and can be accessed later with barebox_arm_boarddata().
+ *
+ * -> membase + memsize
+ *   STACK_SIZE              - stack
+ *   16KiB, aligned to 16KiB - First level page table if early MMU support
+ *                             is enabled
+ * -> maximum end of barebox binary
+ *
+ * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
+ * be fine.
  */
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
                 uint32_t boarddata)
 {
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
+	arm_setup_stack(membase + memsize - 16);
 
 	__start(membase, memsize, boarddata);
 }
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 42b7a3f..9c10e36 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -25,6 +25,8 @@
 #ifndef _BAREBOX_ARM_H_
 #define _BAREBOX_ARM_H_
 
+#include <sizes.h>
+
 /* cpu/.../cpu.c */
 int	cleanup_before_linux(void);
 
diff --git a/common/meminfo.c b/common/meminfo.c
index a09b2d2..5e3ff71 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -14,11 +14,6 @@ static int display_meminfo(void)
 	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
 	printf("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
-#ifdef CONFIG_ARM
-	printf("stack space:  0x%08x -> 0x%08x (size %s)\n",
-		STACK_BASE, STACK_BASE + STACK_SIZE - 1,
-		size_human_readable(STACK_SIZE));
-#endif
 	return 0;
 }
 late_initcall(display_meminfo);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
