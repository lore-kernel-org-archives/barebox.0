Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlX-0008Vs-F5
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:55 +0100
Message-Id: <1359283623-1782-27-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 26/34] ARM: Setup stack at end of SDRAM
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c                 |   12 ++++++++++++
 arch/arm/cpu/start-pbl.c           |    2 +-
 arch/arm/cpu/start.c               |    9 ++++++++-
 arch/arm/include/asm/barebox-arm.h |    4 ++++
 common/meminfo.c                   |    5 -----
 5 files changed, 25 insertions(+), 7 deletions(-)

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
index 4fa1f32..1900daa 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -205,7 +205,7 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
+	arm_setup_stack(membase + memsize - ARM_RESERVE_MEM_SIZE - 16);
 
 	__barebox_arm_entry(membase, memsize, boarddata);
 }
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 64de5da..530fb09 100644
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
 
@@ -63,7 +70,7 @@ void __naked __section(.text_entry) start(void)
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
                 uint32_t boarddata)
 {
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
+	arm_setup_stack(membase + memsize - ARM_RESERVE_MEM_SIZE - 16);
 
 	__start(membase, memsize, boarddata);
 }
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 42b7a3f..988e6e8 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -25,6 +25,8 @@
 #ifndef _BAREBOX_ARM_H_
 #define _BAREBOX_ARM_H_
 
+#include <sizes.h>
+
 /* cpu/.../cpu.c */
 int	cleanup_before_linux(void);
 
@@ -40,4 +42,6 @@ uint32_t get_runtime_offset(void);
 void setup_c(void);
 void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
 
+#define ARM_RESERVE_MEM_SIZE SZ_128K
+
 #endif	/* _BAREBOX_ARM_H_ */
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
