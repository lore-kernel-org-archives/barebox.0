Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4vyE-0006ze-Jr
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 19:24:43 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 4 Dec 2015 19:24:19 +0000
Message-ID: <1449257064.26955.20.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <F8773BD66DA6984DB04B843D2A2D77EE@kymetacorp.com>
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
Subject: [PATCH] ARM: Remove do_execute and thumb2_execute
To: barebox <barebox@lists.infradead.org>

In commit 104a6a7ccfb7928ca5dc28c8cbe0ea231ffc45ee support was added
for Thumb2.  It added do_execute() as a way to provide arch dependent
calling veneers for use in "go" and thumb2_execute() as the thumb2 to
arm veneer.

But thumb2_execute() isn't necessary as gcc generates a proper calling
sequence from a standard function pointer call.  Thumb2 barebox is
compiled with the AAPCS ABI which requires this.

It also had a bug and didn't pass the arguments properly, but code
execute via "go" rarely uses arguments so this wasn't very noticeable.

Since thumb2 was always the only user of do_execute(), go ahead and
delete that too.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/cpu/cpu.c | 26 --------------------------
 commands/go.c      |  5 +----
 common/misc.c      |  3 ---
 include/common.h   |  6 ------
 4 files changed, 1 insertion(+), 39 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index e8191ec..eb12166 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -121,29 +121,3 @@ static int arm_request_stack(void)
 	return 0;
 }
 coredevice_initcall(arm_request_stack);
-
-#ifdef CONFIG_THUMB2_BAREBOX
-static void thumb2_execute(void *func, int argc, char *argv[])
-{
-	/*
-	 * Switch back to ARM mode before executing external
-	 * programs.
-	 */
-	__asm__ __volatile__ (
-		"mov r0, #0\n"
-		"mov r1, %0\n"
-		"mov r2, %1\n"
-		"bx %2\n"
-		:
-		: "r" (argc - 1), "r" (&argv[1]), "r" (func)
-		: "r0", "r1", "r2"
-	);
-}
-
-static int execute_init(void)
-{
-	do_execute = thumb2_execute;
-	return 0;
-}
-postcore_initcall(execute_init);
-#endif
diff --git a/commands/go.c b/commands/go.c
index f25db48..fb319b3 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -60,10 +60,7 @@ static int do_go(int argc, char *argv[])
 
 	shutdown_barebox();
 
-	if (do_execute)
-		do_execute(func, argc - 1, &argv[1]);
-	else
-		func(argc - 1, &argv[1]);
+	func(argc - 1, &argv[1]);
 
 	/*
 	 * The application returned. Since we have shutdown barebox and
diff --git a/common/misc.c b/common/misc.c
index 5532349..8b2417b 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -130,9 +130,6 @@ void perror(const char *s)
 }
 EXPORT_SYMBOL(perror);
 
-void (*do_execute)(void *func, int argc, char *argv[]);
-EXPORT_SYMBOL(do_execute);
-
 static char *model;
 
 /*
diff --git a/include/common.h b/include/common.h
index 03ceec2..38a6dbf 100644
--- a/include/common.h
+++ b/include/common.h
@@ -113,12 +113,6 @@ extern int (*barebox_main)(void);
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
 
-/*
- * architectures which have special calling conventions for
- * executing programs should set this. Used by the 'go' command
- */
-extern void (*do_execute)(void *func, int argc, char *argv[]);
-
 int run_shell(void);
 
 #ifdef CONFIG_SHELL_HUSH
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
