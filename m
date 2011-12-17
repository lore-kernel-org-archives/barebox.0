Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbvcd-0008PB-Rf
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:52:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Dec 2011 15:52:09 +0100
Message-Id: <1324133529-2036-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM: Allow to compile in thumb-2 mode
To: barebox@lists.infradead.org

This shrinks the resulting binary size by ~25%. Exceptions
are still handled in arm mode, so we have to explicitely
put .arm directives into the exception code. Thumb-2 mode
has been tested on i.MX51 Babbage board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                        |   12 ++++++++++++
 arch/arm/Makefile                       |   11 +++++++++--
 arch/arm/cpu/cpu.c                      |   27 +++++++++++++++++++++++++++
 arch/arm/cpu/exceptions.S               |    1 +
 arch/arm/cpu/start.c                    |   26 ++++++++++++++++++--------
 arch/arm/include/asm/barebox-arm-head.h |   12 ++++++++++++
 arch/arm/include/asm/unified.h          |    8 ++++----
 arch/arm/lib/armlinux.c                 |   16 +++++++++++++++-
 commands/go.c                           |    6 +++++-
 common/misc.c                           |    3 +++
 include/common.h                        |    6 ++++++
 11 files changed, 112 insertions(+), 16 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 40677a3..4ad10fe 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -100,6 +100,18 @@ config AEABI
 
 	  To use this you need GCC version 4.0.0 or later.
 
+config THUMB2_BAREBOX
+	select ARM_ASM_UNIFIED
+	depends on CPU_V7
+	bool "Compile barebox in thumb-2 mode (read help)"
+	help
+	  This enables compilation of barebox in thumb-2 mode which generates
+	  ~25% smaller binaries. Arm Assembly code needs some fixups to be able
+	  to work correctly in thumb-2 mode. the barebox core should have these
+	  fixups since most assembly code is derived from the Kernel. However,
+	  your board lowlevel init code may break in thumb-2 mode. You have been
+	  warned.
+
 endmenu
 
 menu "Arm specific settings         "
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a3e12e6..edb1a0d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -39,8 +39,15 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
-CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float
-AFLAGS   += -include asm/unified.h -msoft-float
+ifeq ($(CONFIG_THUMB2_BAREBOX),y)
+AFLAGS_AUTOIT	:=$(call as-option,-Wa$(comma)-mimplicit-it=always,-Wa$(comma)-mauto-it)
+AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
+CFLAGS_THUMB2	:=-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
+AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
+endif
+
+CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
+AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 14bb6d1..a7b55d4 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -26,6 +26,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <command.h>
 #include <cache.h>
 #include <asm/mmu.h>
@@ -89,3 +90,29 @@ void arch_shutdown(void)
 	);
 #endif
 }
+
+#ifdef CONFIG_THUMB2_BAREBOX
+static void thumb2_execute(void *func, int argc, char *argv[])
+{
+	/*
+	 * Switch back to arm mode before executing external
+	 * programs.
+	 */
+	__asm__ __volatile__ (
+		"mov r0, #0\n"
+		"mov r1, %0\n"
+		"mov r2, %1\n"
+		"bx %2\n"
+		:
+		: "r" (argc - 1), "r" (&argv[1]), "r" (func)
+		: "r0", "r1", "r2"
+	);
+}
+
+static int execute_init(void)
+{
+	do_execute = thumb2_execute;
+	return 0;
+}
+postcore_initcall(execute_init);
+#endif
diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 6f35d40..c08537a 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -106,6 +106,7 @@ _STACK_START:
  * exception handlers
  */
 	.section ".text","ax"
+	.arm
 
 	.align  5
 .globl undefined_instruction
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 1f4fdd2..ff0081a 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -33,26 +33,36 @@ void __naked __section(.text_entry) start(void)
 	barebox_arm_head();
 }
 
+#ifdef CONFIG_THUMB2_BAREBOX
+#define STOP	\
+	"1: bne 1b\n" \
+	"nop\n"
+#else
+#define STOP	\
+	"1: bne 1b\n"
+#endif
+
 void __naked __section(.text_exceptions) exception_vectors(void)
 {
 	__asm__ __volatile__ (
+		".arm\n"
 		"b reset\n"				/* reset */
 #ifdef CONFIG_ARM_EXCEPTIONS
 		"ldr pc, =undefined_instruction\n"	/* undefined instruction */
 		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
 		"ldr pc, =prefetch_abort\n"		/* prefetch abort */
 		"ldr pc, =data_abort\n"			/* data abort */
-		"1: bne 1b\n"				/* (reserved) */
+		STOP					/* (reserved) */
 		"ldr pc, =irq\n"			/* irq (interrupt) */
 		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
 #else
-		"1: bne 1b\n"				/* undefined instruction */
-		"1: bne 1b\n"				/* software interrupt (SWI) */
-		"1: bne 1b\n"				/* prefetch abort */
-		"1: bne 1b\n"				/* data abort */
-		"1: bne 1b\n"				/* (reserved) */
-		"1: bne 1b\n"				/* irq (interrupt) */
-		"1: bne 1b\n"				/* fiq (fast interrupt) */
+		STOP					/* undefined instruction */
+		STOP					/* software interrupt (SWI) */
+		STOP					/* prefetch abort */
+		STOP					/* data abort */
+		STOP					/* (reserved) */
+		STOP					/* irq (interrupt) */
+		STOP					/* fiq (fast interrupt) */
 #endif
 	);
 }
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index ec4a68c..dc0acb1 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -2,10 +2,22 @@
 static inline void barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
+#ifdef CONFIG_THUMB2_BAREBOX
+		".arm\n"
+		"adr r9, 1f + 1\n"
+		"bx r9\n"
+		".thumb\n"
+		"1:\n"
+		"bl reset\n"
+		".rept 10\n"
+		"nop\n"
+		".endr\n"
+#else
 		"b reset\n"
 		".rept 7\n"
 		".word 0x0\n"
 		".endr\n"
+#endif
 		".word 0x65726162\n"			/* 'bare' */
 		".word 0x00786f62\n"			/* 'box' */
 		".word _text\n"				/* text base. If copied there,
diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
index bc63116..4d855c8 100644
--- a/arch/arm/include/asm/unified.h
+++ b/arch/arm/include/asm/unified.h
@@ -24,10 +24,10 @@
 	.syntax unified
 #endif
 
-#ifdef CONFIG_THUMB2_KERNEL
+#ifdef CONFIG_THUMB2_BAREBOX
 
 #if __GNUC__ < 4
-#error Thumb-2 kernel requires gcc >= 4
+#error Thumb-2 barebox requires gcc >= 4
 #endif
 
 /* The CPSR bit describing the instruction set (Thumb) */
@@ -40,7 +40,7 @@
 #endif
 #define BSYM(sym)	sym + 1
 
-#else	/* !CONFIG_THUMB2_KERNEL */
+#else	/* !CONFIG_THUMB2_BAREBOX */
 
 /* The CPSR bit describing the instruction set (ARM) */
 #define PSR_ISETSTATE	0
@@ -52,7 +52,7 @@
 #endif
 #define BSYM(sym)	sym
 
-#endif	/* CONFIG_THUMB2_KERNEL */
+#endif	/* CONFIG_THUMB2_BAREBOX */
 
 #ifndef CONFIG_ARM_ASM_UNIFIED
 
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index bd9b72a..3fafb4b 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -253,6 +253,8 @@ void start_linux(void *adr, int swap, struct image_data *data)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
 	void *params = NULL;
+	int architecture = armlinux_get_architecture();
+
 #ifdef CONFIG_OFTREE
 	params = of_get_fixed_tree();
 	if (params)
@@ -271,5 +273,17 @@ void start_linux(void *adr, int swap, struct image_data *data)
 		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
 	}
 
-	kernel(0, armlinux_get_architecture(), params);
+#ifdef CONFIG_THUMB2_BAREBOX
+	__asm__ __volatile__ (
+		"mov r0, #0\n"
+		"mov r1, %0\n"
+		"mov r2, %1\n"
+		"bx %2\n"
+		:
+		: "r" (architecture), "r" (params), "r" (kernel)
+		: "r0", "r1", "r2"
+	);
+#else
+	kernel(0, architecture, params);
+#endif
 }
diff --git a/commands/go.c b/commands/go.c
index 6082fe5..bc984c8 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -62,7 +62,11 @@ static int do_go(struct command *cmdtp, int argc, char *argv[])
 	func = addr;
 
 	shutdown_barebox();
-	func(argc - 1, &argv[1]);
+
+	if (do_execute)
+		do_execute(func, argc - 1, &argv[1]);
+	else
+		func(argc - 1, &argv[1]);
 
 	/*
 	 * The application returned. Since we have shutdown barebox and
diff --git a/common/misc.c b/common/misc.c
index 7edf536..9263f4a 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -125,3 +125,6 @@ void perror(const char *s)
 #endif
 }
 EXPORT_SYMBOL(perror);
+
+void (*do_execute)(void *func, int argc, char *argv[]);
+EXPORT_SYMBOL(do_execute);
diff --git a/include/common.h b/include/common.h
index 2f37dd8..aa84539 100644
--- a/include/common.h
+++ b/include/common.h
@@ -137,6 +137,12 @@ unsigned long strtoul_suffix(const char *str, char **endp, int base);
 void start_barebox(void);
 void shutdown_barebox(void);
 
+/*
+ * architectures which have special calling conventions for
+ * executing programs should set this. Used by the 'go' command
+ */
+extern void (*do_execute)(void *func, int argc, char *argv[]);
+
 void arch_shutdown(void);
 
 int run_shell(void);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
