Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta14.messagelabs.com ([193.109.254.107])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0yC-0002ow-Oh
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 07:37:41 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 6 Jul 2015 09:36:45 +0200
Message-ID: <1436168207-6433-4-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
References: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 3/4] exitcall: move arch_shutdown to exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 arch/arm/cpu/cpu.c                 |    3 ++-
 arch/arm/include/asm/common.h      |    2 --
 arch/blackfin/include/asm/common.h |    6 ++----
 arch/blackfin/lib/board.c          |    7 ++++++-
 arch/nios2/lib/board.c             |    3 ---
 arch/openrisc/lib/board.c          |    3 ---
 common/startup.c                   |    3 ---
 include/common.h                   |    2 --
 8 files changed, 10 insertions(+), 19 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index badd676..5e70802 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -93,7 +93,7 @@ void mmu_disable(void)
  * This function is called by shutdown_barebox to get a clean
  * memory/cache state.
  */
-void arch_shutdown(void)
+static void arch_shutdown(void)
 {
 	uint32_t r;
 
@@ -108,6 +108,7 @@ void arch_shutdown(void)
 	r |= PSR_I_BIT;
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 }
+archshutdown_exitcall(arch_shutdown);
 
 extern unsigned long arm_stack_top;
 
diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index 9ff3b19..07ae619 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -1,8 +1,6 @@
 #ifndef __ASM_ARM_COMMON_H
 #define __ASM_ARM_COMMON_H
 
-#define ARCH_SHUTDOWN
-
 static inline unsigned long get_pc(void)
 {
 	unsigned long pc;
diff --git a/arch/blackfin/include/asm/common.h b/arch/blackfin/include/asm/common.h
index fa58e37..5760fb9 100644
--- a/arch/blackfin/include/asm/common.h
+++ b/arch/blackfin/include/asm/common.h
@@ -1,5 +1,3 @@
 
-/* We have to disable instruction cache before
- * executing an external program
- */
-#define ARCH_SHUTDOWN
+/* nothing special */
+
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index 88ad618..4731887 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -38,7 +38,12 @@ void __noreturn blackfin_start_barebox(void)
 	start_barebox();
 }
 
-void arch_shutdown(void)
+/* We have to disable instruction cache before
+ * executing an external program
+ */
+static void arch_shutdown(void)
 {
 	icache_disable();
 }
+archshutdown_exitcall(arch_shutdown);
+
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
index 7c4dc76..c04dda9 100644
--- a/arch/nios2/lib/board.c
+++ b/arch/nios2/lib/board.c
@@ -31,6 +31,3 @@ void __noreturn nios_start_barebox(void)
 	start_barebox();
 }
 
-void arch_shutdown(void)
-{
-}
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
index 98033b4..ff527e2 100644
--- a/arch/openrisc/lib/board.c
+++ b/arch/openrisc/lib/board.c
@@ -30,6 +30,3 @@ void __noreturn openrisc_start_barebox(void)
 	start_barebox();
 }
 
-void arch_shutdown(void)
-{
-}
diff --git a/common/startup.c b/common/startup.c
index e9ab248..4ed390c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -151,9 +151,6 @@ void shutdown_barebox(void)
 		(*exitcall)();
 	}
 	
-#ifdef ARCH_SHUTDOWN
-	arch_shutdown();
-#endif
 	if (board_shutdown)
 		board_shutdown();
 }
diff --git a/include/common.h b/include/common.h
index eef371c..6766c02 100644
--- a/include/common.h
+++ b/include/common.h
@@ -124,8 +124,6 @@ extern void (*board_shutdown)(void);
  */
 extern void (*do_execute)(void *func, int argc, char *argv[]);
 
-void arch_shutdown(void);
-
 int run_shell(void);
 
 #ifdef CONFIG_SHELL_HUSH
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
