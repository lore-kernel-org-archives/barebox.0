Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjm-0000Wp-70
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:30 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 46DC8104E3B9
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:38 +0100
Message-Id: <1362562189-17783-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/20] arm: add application support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                       |    1 +
 arch/arm/Makefile                      |    6 +-
 arch/arm/apps/Kconfig                  |   11 ++++
 arch/arm/apps/Makefile                 |    6 ++
 arch/arm/apps/apps.lds.S               |   64 ++++++++++++++++++
 arch/arm/apps/binfmt.c                 |  111 ++++++++++++++++++++++++++++++++
 arch/arm/apps/head.S                   |   59 +++++++++++++++++
 arch/arm/apps/include/arch/asm/macro.h |   46 +++++++++++++
 arch/arm/apps/include/arch/setjmp.h    |   26 ++++++++
 arch/arm/apps/raise.c                  |   27 ++++++++
 arch/arm/apps/setjmp.S                 |   60 +++++++++++++++++
 arch/arm/apps/start.c                  |   35 ++++++++++
 12 files changed, 451 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/apps/Kconfig
 create mode 100644 arch/arm/apps/Makefile
 create mode 100644 arch/arm/apps/apps.lds.S
 create mode 100644 arch/arm/apps/binfmt.c
 create mode 100644 arch/arm/apps/head.S
 create mode 100644 arch/arm/apps/include/arch/asm/macro.h
 create mode 100644 arch/arm/apps/include/arch/setjmp.h
 create mode 100644 arch/arm/apps/raise.c
 create mode 100644 arch/arm/apps/setjmp.S
 create mode 100644 arch/arm/apps/start.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f25dcf7..f30859b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2,6 +2,7 @@ config ARM
 	bool
 	select HAS_KALLSYMS
 	select HAS_MODULES
+	select HAS_APPLICATIONS
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 100a3c4..731d92a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -275,9 +275,13 @@ else
 MACH :=
 endif
 
+APP_LDFLAGS += -L $(shell dirname `$(CC) $(CPPFLAGS) -print-libgcc-file-name`) -lgcc
+
 common-y += $(BOARD) $(MACH)
 common-y += arch/arm/lib/ arch/arm/cpu/
+common-$(CONFIG_APPLICATIONS) += arch/arm/apps/
 
 lds-y	:= arch/arm/lib/barebox.lds
+apps-lds-y	:= arch/arm/apps/apps.lds
 
-CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds barebox-flash-image
+CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds arch/arm/apps/apps.lds barebox-flash-image
diff --git a/arch/arm/apps/Kconfig b/arch/arm/apps/Kconfig
new file mode 100644
index 0000000..8fcb79d
--- /dev/null
+++ b/arch/arm/apps/Kconfig
@@ -0,0 +1,11 @@
+
+config APP_TEXT_BASE_OFFSET
+	hex
+	default 0x800000
+	prompt "application text base offset"
+	help
+	  APP_TEXT_BASE = TEXT_BASE - APP_TEXT_BASE_OFFSET
+	  all the application will be link at this address
+	  the syscall table region of 0x2000 will be add
+	  APP_TEXT_BASE - 0x2000 and then the malloc region at
+	  APP_TEXT_BASE - 0x2000 - APP_MALLOC_SIZE
diff --git a/arch/arm/apps/Makefile b/arch/arm/apps/Makefile
new file mode 100644
index 0000000..c7e9a80
--- /dev/null
+++ b/arch/arm/apps/Makefile
@@ -0,0 +1,6 @@
+obj-y += binfmt.o
+app-y += head.o
+app-y += start.o
+app-y += raise.o
+app-y += setjmp.o
+extry-y += apps.lds
diff --git a/arch/arm/apps/apps.lds.S b/arch/arm/apps/apps.lds.S
new file mode 100644
index 0000000..b6e4ab9
--- /dev/null
+++ b/arch/arm/apps/apps.lds.S
@@ -0,0 +1,64 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <sizes.h>
+#include <asm-generic/barebox.lds.h>
+#include <asm-generic/memory_layout.h>
+
+#define HEAD_BASE (TEXT_BASE - CONFIG_APP_TEXT_BASE_OFFSET)
+
+OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
+OUTPUT_ARCH(arm)
+ENTRY(_start)
+SECTIONS
+{
+	. = HEAD_BASE;
+
+	. = ALIGN(4);
+	.text      :
+	{
+		_stext = .;
+		_text = .;
+		*(.text_head_entry*)
+		. = 0x80;
+		KEEP(*(.appinfo.start))
+		__appinfo_start = .;
+		KEEP(*(.appinfo))
+		__appinfo_end = .;
+		KEEP(*(.appinfo.end))
+		*(.text*)
+	}
+
+	/* Discard unwind if enable in barebox */
+	/DISCARD/ : { *(.ARM.ex*) }
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
+	_etext = .;			/* End of text and rodata section */
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+
+	_barebox_app_image_size = __bss_start - HEAD_BASE;
+	_barebox_app_info_size = __appinfo_end - __appinfo_start;
+}
diff --git a/arch/arm/apps/binfmt.c b/arch/arm/apps/binfmt.c
new file mode 100644
index 0000000..f6bc450
--- /dev/null
+++ b/arch/arm/apps/binfmt.c
@@ -0,0 +1,111 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <binfmt.h>
+#include <init.h>
+#include <fs.h>
+#include <sizes.h>
+#include <memory.h>
+#include <malloc.h>
+#include <apps/syscall_init.h>
+
+static int arm_application(char *file, int argc, char **argv, bool is_gpl)
+{
+	struct syscall_trace st;
+	u32 *buf32;
+	u32 load_addr, size;
+	int (*jump)(int argc, char** argv);
+	void *barebox_app;
+	int ret = 0;
+	struct resource *app_res, *syscall_res, *malloc_res;
+
+	barebox_app = read_file(file, NULL);
+	if (!barebox_app)
+		return -EINVAL;
+
+	buf32 = barebox_app + 0x30;
+	load_addr = buf32[0];
+	size = buf32[1];
+
+	app_res = request_sdram_region("application", load_addr, size);
+	if (!app_res) {
+		perror("application: request_sdram_region");
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	load_addr -= 0x2000;
+
+	syscall_res = request_sdram_region("bsyscall", load_addr, 0x2000);
+	if (!syscall_res) {
+		perror("application: bsyscall request_sdram_region");
+		ret = -ENOMEM;
+		goto err_app_res;
+	}
+
+	load_addr -= CONFIG_APP_MALLOC_SIZE;
+
+	malloc_res = request_sdram_region("application_malloc", load_addr, CONFIG_APP_MALLOC_SIZE);
+	if (!malloc_res) {
+		perror("application: bsyscall request_sdram_region");
+		ret = -ENOMEM;
+		goto err_malloc_res;
+	}
+
+	memset((void*)malloc_res->start, 0, resource_size(malloc_res));
+	memcpy((void*)app_res->start, barebox_app, size);
+
+	st.dest = (void*)syscall_res->start;
+	st.malloc_base = malloc_res->start;
+	st.malloc_size = resource_size(malloc_res);
+	syscalls_init(&st);
+
+	jump = (void*)app_res->start;
+	ret = jump(argc, argv);
+
+	syscalls_exit(&st);
+
+	release_sdram_region(malloc_res);
+err_malloc_res:
+	release_sdram_region(syscall_res);
+err_app_res:
+	release_sdram_region(app_res);
+err:
+	free(barebox_app);
+	return ret;
+}
+
+static int arm_gpl_application(struct binfmt_hook *b, char *file, int argc, char **argv)
+{
+	return arm_application(file, argc, argv, true);
+}
+
+static struct binfmt_hook binfmt_barebox_gpl_app_hook = {
+	.type = filetype_arm_gpl_application,
+	.hook = arm_gpl_application,
+};
+
+static int arm_non_gpl_application(struct binfmt_hook *b, char *file, int argc, char **argv)
+{
+	/* You are NOT allow to remove this warning */
+	pr_warn("non gpl compatible application\n");
+	return arm_application(file, argc, argv, false);
+}
+
+static struct binfmt_hook binfmt_barebox_app_hook = {
+	.type = filetype_arm_application,
+	.hook = arm_non_gpl_application,
+};
+
+static int arm_app_register_image_handler(void)
+{
+	binfmt_register(&binfmt_barebox_app_hook);
+	binfmt_register(&binfmt_barebox_gpl_app_hook);
+
+	return 0;
+}
+late_initcall(arm_app_register_image_handler);
diff --git a/arch/arm/apps/head.S b/arch/arm/apps/head.S
new file mode 100644
index 0000000..9cc714c
--- /dev/null
+++ b/arch/arm/apps/head.S
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+	.section ".text_head_entry.start"
+	.globl _start
+_start:
+	/* save register */
+	stmfd	sp!, {r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
+	/* save barebox stack */
+	mov	r2, sp
+	/* setup new stack */
+	ldr	sp, =_text
+	sub	sp, #CONFIG_STACK_SIZE
+	b _next
+	.org 0x20
+	.asciz "barebox_arm_app"
+	.word _text				/* text base. If copied there,
+						* barebox can skip relocation
+						*/
+	.word _barebox_app_image_size		/* image size to copy */
+
+_next:
+	stmfd	sp!, {r0-r2}
+1:	ldr	r0, =__bss_start
+	mov	r1, #0
+	ldr	r2, =__bss_stop
+	sub	r2, r2, r0
+	bl	memset			/* clear bss */
+	ldmfd	sp!, {r0-r2}
+
+	b arm_app_start
+
+	.section ".appinfo.start"
+	.asciz "#appinf"
+	.word _barebox_app_info_size
+
+	.section ".appinfo.end"
+	.asciz "appinf#"
+
+	.text
+	.globl barebox_return
+barebox_return:
+	/* restore barebox the stack */
+	mov	sp, r1
+	/* restore register */
+	ldmfd	sp!, {r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
diff --git a/arch/arm/apps/include/arch/asm/macro.h b/arch/arm/apps/include/arch/asm/macro.h
new file mode 100644
index 0000000..e451024
--- /dev/null
+++ b/arch/arm/apps/include/arch/asm/macro.h
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __ARCH_ASM_MACRO_H__
+#define __ARCH_ASM_MACRO_H__
+
+#if (!defined(__ARM_ARCH_2__) && !defined(__ARM_ARCH_3__) \
+	&& !defined(__ARM_ARCH_3M__) && !defined(__ARM_ARCH_4__))
+#define BX(x)	bx	x
+#else
+#define BX(x)	mov	pc, x
+#endif
+
+#define __FUNC(x)		\
+	.balign 4;		\
+	.globl x;		\
+
+#ifdef __thumb__
+#define FUNC(x)	\
+	__FUNC(x)	\
+	.thumb_func;	\
+x:
+#else
+#define FUNC(x)		\
+	__FUNC(x)	\
+x:
+#endif
+
+#define ENDFUNC(x)		\
+	.type x, #function;	\
+	.size x, .-x
+
+#endif /* __ARCH_ASM_MACRO_H__ */
diff --git a/arch/arm/apps/include/arch/setjmp.h b/arch/arm/apps/include/arch/setjmp.h
new file mode 100644
index 0000000..82058a9
--- /dev/null
+++ b/arch/arm/apps/include/arch/setjmp.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __ARCH_SETJMP_H__
+#define __ARCH_SETJMP_H__
+
+struct __jmp_buf {
+		unsigned int regs[10];
+};
+
+typedef struct __jmp_buf jmp_buf[1];
+
+#endif /* __ARCH_SETJMP_H__ */
diff --git a/arch/arm/apps/raise.c b/arch/arm/apps/raise.c
new file mode 100644
index 0000000..18cc0d8
--- /dev/null
+++ b/arch/arm/apps/raise.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <stdio.h>
+
+int raise(int signum)
+{
+	/* use puts as printf may not be availlable */
+	puts("raise: ");
+	puts(itoa(signum));
+	puts(" caught\n");
+
+	return 0;
+}
diff --git a/arch/arm/apps/setjmp.S b/arch/arm/apps/setjmp.S
new file mode 100644
index 0000000..1607ce3
--- /dev/null
+++ b/arch/arm/apps/setjmp.S
@@ -0,0 +1,60 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <arch/asm/macro.h>
+
+	.text
+FUNC(setjmp)
+#ifndef	__thumb__
+	stmia	r0, {r4, r5, r6, r7, r8, r9, r10, fp, sp, lr}
+#else
+	/* we need to do it in 2 steps in thumb */
+	mov	r3, lr
+	stmia	r0!, {r3, r4, r5, r6, r7}
+	mov	r3, r8
+	mov	r4, r9
+	mov	r5, r10
+	mov	r6, fp
+	mov	r7, sp
+	stmia	r0!, {r3, r4, r5, r6, r7}
+#endif /* __thumb__ */
+	mov	r0, #0
+	BX(lr)
+ENDFUNC(setjmp)
+
+	.text
+FUNC(longjmp)
+#ifndef	__thumb__
+	ldmia	r0, {r4, r5, r6, r7, r8, r9, r10, fp, sp, lr}
+	mov	r0, r1
+	BX(lr)
+#else
+	/* we need to do it in 2 steps in thumb */
+	mov	r2, r0
+	add	r0, #20
+	ldmia	r0!, {r3, r4, r5, r6, r7}
+	mov	r8, r3
+	mov	r9, r4
+	mov	r10, r5
+	mov	fp, r6
+	mov	sp, r7
+	ldmia	r2!, {r3, r4, r5, r6, r7}
+	mov	r0, r1
+	bne	1f
+	mov	r0, #1
+1:	BX(r3)
+#endif /* __thumb__ */
+ENDFUNC(longjmp)
diff --git a/arch/arm/apps/start.c b/arch/arm/apps/start.c
new file mode 100644
index 0000000..af072a1
--- /dev/null
+++ b/arch/arm/apps/start.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <sys/types.h>
+
+static void *barebox_sp;
+void barebox_return(int, void*);
+int app_start(int argc, char **argv);
+
+void exit(int c)
+{
+	barebox_return(c, barebox_sp);
+}
+
+void arm_app_start(int argc, char** argv, void *sp)
+{
+	int ret;
+	barebox_sp = sp;
+
+	ret = app_start(argc, argv);
+	exit(ret);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
