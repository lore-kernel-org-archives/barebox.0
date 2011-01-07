Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7n9-0006cD-2d
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:35:29 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001hi-B9
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001uN-81
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  7 Jan 2011 09:35:13 +0100
Message-Id: <1294389316-6569-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
References: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 07/10] x86: Remove 'uboot' from file names
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/x86/boot/Makefile          |    2 +-
 arch/x86/boot/boot_hdisk.S      |    2 +-
 arch/x86/boot/prepare_barebox.c |   86 +++++++++++++++++++++++++++++++++++++++
 arch/x86/boot/prepare_uboot.c   |   86 ---------------------------------------
 4 files changed, 88 insertions(+), 88 deletions(-)
 create mode 100644 arch/x86/boot/prepare_barebox.c
 delete mode 100644 arch/x86/boot/prepare_uboot.c

diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index b92b475..83526b6 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -6,7 +6,7 @@ CPPFLAGS += -D__I386__ -fno-strict-aliasing -m32 -g -Os -march=i386 \
 
 obj-$(CONFIG_X86_HDBOOT)	+= boot_main.o boot_hdisk.o
 
-obj-$(CONFIG_X86_BIOS_BRINGUP)	+= prepare_uboot.o a20.o bioscall.o regs.o tty.o pmjump.o main_entry.o
+obj-$(CONFIG_X86_BIOS_BRINGUP)	+= prepare_barebox.o a20.o bioscall.o regs.o tty.o pmjump.o main_entry.o
 
 obj-$(CONFIG_X86_VESA) += console_vesa.o
 obj-$(CONFIG_X86_VGA) += console_vga.o
diff --git a/arch/x86/boot/boot_hdisk.S b/arch/x86/boot/boot_hdisk.S
index fc4c4d5..9145ef1 100644
--- a/arch/x86/boot/boot_hdisk.S
+++ b/arch/x86/boot/boot_hdisk.S
@@ -168,7 +168,7 @@ output_message:
 
 	.section .boot_data
 
-notification_string:	.asciz "UBOOT2 "
+notification_string:	.asciz "BAREBOX "
 chs_string:	.asciz "CHS "
 jmp_string:	.asciz "JMP "
 
diff --git a/arch/x86/boot/prepare_barebox.c b/arch/x86/boot/prepare_barebox.c
new file mode 100644
index 0000000..a68aced
--- /dev/null
+++ b/arch/x86/boot/prepare_barebox.c
@@ -0,0 +1,86 @@
+/* -*- linux-c -*- ------------------------------------------------------- *
+ *
+ *   Copyright (C) 1991, 1992 Linus Torvalds
+ *   Copyright 2007 rPath, Inc. - All Rights Reserved
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2.
+ *
+ * ----------------------------------------------------------------------- */
+
+/*
+ * Prepare the machine for transition to protected mode.
+ */
+#include <asm/segment.h>
+#include <asm/modes.h>
+#include <asm/io.h>
+#include "boot.h"
+
+/* be aware of: */
+THIS_IS_REALMODE_CODE
+
+/*
+ * While we are in flat mode, we can't handle interrupts. But we can't
+ * switch them off for ever in the PIC, because we need them again while
+ * entering real mode code again and again....
+ */
+static void __bootcode realmode_switch_hook(void)
+{
+	asm volatile("cli");
+	outb(0x80, 0x70); /* Disable NMI */
+	io_delay();
+}
+
+/*
+ * Reset IGNNE# if asserted in the FPU.
+ */
+static void __bootcode reset_coprocessor(void)
+{
+	outb(0, 0xf0);
+	io_delay();
+	outb(0, 0xf1);
+	io_delay();
+}
+
+/**
+ * Setup and register the global descriptor table (GDT)
+ *
+ * @note This is for the first time only
+ */
+static void __bootcode setup_gdt(void)
+{
+	/* Xen HVM incorrectly stores a pointer to the gdt_ptr, instead
+	   of the gdt_ptr contents.  Thus, make it static so it will
+	   stay in memory, at least long enough that we switch to the
+	   proper kernel GDT. */
+	static struct gdt_ptr __bootdata gdt_ptr;
+
+	gdt_ptr.len = gdt_size - 1;
+	gdt_ptr.ptr = (uint32_t)&gdt + (ds() << 4);
+
+	asm volatile("lgdtl %0" : : "m" (gdt_ptr));
+}
+
+static char a20_message[] __bootdata = "A20 gate not responding, unable to boot...\n";
+
+/*
+ * Actual invocation sequence
+ */
+void __bootcode start_pre_uboot(void)
+{
+	/* Hook before leaving real mode, also disables interrupts */
+	realmode_switch_hook();
+
+	/* Enable the A20 gate */
+	if (enable_a20()) {
+		boot_puts(a20_message);
+		die();
+	}
+
+	/* Reset coprocessor (IGNNE#) */
+	reset_coprocessor();
+
+	setup_gdt();
+	/* Actual transition to protected mode... */
+	protected_mode_jump();
+}
diff --git a/arch/x86/boot/prepare_uboot.c b/arch/x86/boot/prepare_uboot.c
deleted file mode 100644
index a68aced..0000000
--- a/arch/x86/boot/prepare_uboot.c
+++ /dev/null
@@ -1,86 +0,0 @@
-/* -*- linux-c -*- ------------------------------------------------------- *
- *
- *   Copyright (C) 1991, 1992 Linus Torvalds
- *   Copyright 2007 rPath, Inc. - All Rights Reserved
- *
- *   This file is part of the Linux kernel, and is made available under
- *   the terms of the GNU General Public License version 2.
- *
- * ----------------------------------------------------------------------- */
-
-/*
- * Prepare the machine for transition to protected mode.
- */
-#include <asm/segment.h>
-#include <asm/modes.h>
-#include <asm/io.h>
-#include "boot.h"
-
-/* be aware of: */
-THIS_IS_REALMODE_CODE
-
-/*
- * While we are in flat mode, we can't handle interrupts. But we can't
- * switch them off for ever in the PIC, because we need them again while
- * entering real mode code again and again....
- */
-static void __bootcode realmode_switch_hook(void)
-{
-	asm volatile("cli");
-	outb(0x80, 0x70); /* Disable NMI */
-	io_delay();
-}
-
-/*
- * Reset IGNNE# if asserted in the FPU.
- */
-static void __bootcode reset_coprocessor(void)
-{
-	outb(0, 0xf0);
-	io_delay();
-	outb(0, 0xf1);
-	io_delay();
-}
-
-/**
- * Setup and register the global descriptor table (GDT)
- *
- * @note This is for the first time only
- */
-static void __bootcode setup_gdt(void)
-{
-	/* Xen HVM incorrectly stores a pointer to the gdt_ptr, instead
-	   of the gdt_ptr contents.  Thus, make it static so it will
-	   stay in memory, at least long enough that we switch to the
-	   proper kernel GDT. */
-	static struct gdt_ptr __bootdata gdt_ptr;
-
-	gdt_ptr.len = gdt_size - 1;
-	gdt_ptr.ptr = (uint32_t)&gdt + (ds() << 4);
-
-	asm volatile("lgdtl %0" : : "m" (gdt_ptr));
-}
-
-static char a20_message[] __bootdata = "A20 gate not responding, unable to boot...\n";
-
-/*
- * Actual invocation sequence
- */
-void __bootcode start_pre_uboot(void)
-{
-	/* Hook before leaving real mode, also disables interrupts */
-	realmode_switch_hook();
-
-	/* Enable the A20 gate */
-	if (enable_a20()) {
-		boot_puts(a20_message);
-		die();
-	}
-
-	/* Reset coprocessor (IGNNE#) */
-	reset_coprocessor();
-
-	setup_gdt();
-	/* Actual transition to protected mode... */
-	protected_mode_jump();
-}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
