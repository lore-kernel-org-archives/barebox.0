Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8Nfe-00046p-7W
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 08:08:20 +0000
Received: by mail-wm0-x243.google.com with SMTP id a136so13546255wme.0
 for <barebox@lists.infradead.org>; Thu, 02 Jun 2016 01:07:41 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu,  2 Jun 2016 10:06:49 +0200
Message-Id: <1464854818-28653-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 03/12] arm: introduce lib64 for arm64 related stuff
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/lib64/Makefile         |  16 ++
 arch/arm/lib64/armlinux.c       | 275 +++++++++++++++++++
 arch/arm/lib64/asm-offsets.c    |  16 ++
 arch/arm/lib64/barebox.lds      | 125 +++++++++
 arch/arm/lib64/barebox.lds.S    | 125 +++++++++
 arch/arm/lib64/bootm.c          | 572 ++++++++++++++++++++++++++++++++++++++++
 arch/arm/lib64/bootu.c          |  44 ++++
 arch/arm/lib64/bootz.c          | 136 ++++++++++
 arch/arm/lib64/copy_template.S  | 192 ++++++++++++++
 arch/arm/lib64/div0.c           |  27 ++
 arch/arm/lib64/memcpy.S         |  74 ++++++
 arch/arm/lib64/memset.S         | 215 +++++++++++++++
 arch/arm/lib64/module.c         |  98 +++++++
 arch/arm/lib64/pbl.lds.S        |  96 +++++++
 arch/arm/lib64/runtime-offset.S |  52 ++++
 arch/arm/lib64/unwind.c         | 349 ++++++++++++++++++++++++
 16 files changed, 2412 insertions(+)
 create mode 100644 arch/arm/lib64/Makefile
 create mode 100644 arch/arm/lib64/armlinux.c
 create mode 100644 arch/arm/lib64/asm-offsets.c
 create mode 100644 arch/arm/lib64/barebox.lds
 create mode 100644 arch/arm/lib64/barebox.lds.S
 create mode 100644 arch/arm/lib64/bootm.c
 create mode 100644 arch/arm/lib64/bootu.c
 create mode 100644 arch/arm/lib64/bootz.c
 create mode 100644 arch/arm/lib64/copy_template.S
 create mode 100644 arch/arm/lib64/div0.c
 create mode 100644 arch/arm/lib64/memcpy.S
 create mode 100644 arch/arm/lib64/memset.S
 create mode 100644 arch/arm/lib64/module.c
 create mode 100644 arch/arm/lib64/pbl.lds.S
 create mode 100644 arch/arm/lib64/runtime-offset.S
 create mode 100644 arch/arm/lib64/unwind.c

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
new file mode 100644
index 0000000..5b9d4a5
--- /dev/null
+++ b/arch/arm/lib64/Makefile
@@ -0,0 +1,16 @@
+obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
+obj-$(CONFIG_BOOTM)	+= bootm.o
+obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
+obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
+obj-y	+= div0.o
+obj-y	+= runtime-offset.o
+pbl-y	+= runtime-offset.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
+obj-$(CONFIG_ARM_UNWIND) += unwind.o
+obj-$(CONFIG_MODULES) += module.o
+extra-y += barebox.lds
+
+pbl-y	+= lib1funcs.o
+pbl-y	+= ashldi3.o
+pbl-y	+= div0.o
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
new file mode 100644
index 0000000..21a2292
--- /dev/null
+++ b/arch/arm/lib64/armlinux.c
@@ -0,0 +1,275 @@
+/*
+ * (C) Copyright 2002
+ * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ * Marius Groeger <mgroeger@sysgo.de>
+ *
+ * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ */
+
+#include <boot.h>
+#include <common.h>
+#include <command.h>
+#include <driver.h>
+#include <environment.h>
+#include <image.h>
+#include <init.h>
+#include <fs.h>
+#include <linux/list.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <memory.h>
+#include <of.h>
+#include <magicvar.h>
+
+#include <asm/byteorder.h>
+#include <asm/setup.h>
+#include <asm/barebox-arm.h>
+#include <asm/armlinux.h>
+#include <asm/system.h>
+
+static struct tag *params;
+static void *armlinux_bootparams = NULL;
+
+static int armlinux_architecture;
+static u32 armlinux_system_rev;
+static u64 armlinux_system_serial;
+
+BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
+BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
+BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
+
+void armlinux_set_architecture(int architecture)
+{
+	export_env_ull("armlinux_architecture", architecture);
+	armlinux_architecture = architecture;
+}
+
+int armlinux_get_architecture(void)
+{
+	getenv_uint("armlinux_architecture", &armlinux_architecture);
+
+	return armlinux_architecture;
+}
+
+void armlinux_set_revision(unsigned int rev)
+{
+	export_env_ull("armlinux_system_rev", rev);
+	armlinux_system_rev = rev;
+}
+
+unsigned int armlinux_get_revision(void)
+{
+	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
+
+	return armlinux_system_rev;
+}
+
+void armlinux_set_serial(u64 serial)
+{
+	export_env_ull("armlinux_system_serial", serial);
+	armlinux_system_serial = serial;
+}
+
+u64 armlinux_get_serial(void)
+{
+	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
+
+	return armlinux_system_serial;
+}
+
+void armlinux_set_bootparams(void *params)
+{
+	armlinux_bootparams = params;
+}
+
+static struct tag *armlinux_get_bootparams(void)
+{
+	struct memory_bank *mem;
+
+	if (armlinux_bootparams)
+		return armlinux_bootparams;
+
+	for_each_memory_bank(mem)
+		return (void *)mem->start + 0x100;
+
+	BUG();
+}
+
+#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
+static struct tag *(*atag_appender)(struct tag *);
+void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
+{
+	atag_appender = func;
+}
+#endif
+
+static void setup_start_tag(void)
+{
+	params = armlinux_get_bootparams();
+
+	params->hdr.tag = ATAG_CORE;
+	params->hdr.size = tag_size(tag_core);
+
+	params->u.core.flags = 0;
+	params->u.core.pagesize = 0;
+	params->u.core.rootdev = 0;
+
+	params = tag_next(params);
+}
+
+static void setup_memory_tags(void)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		params->hdr.tag = ATAG_MEM;
+		params->hdr.size = tag_size(tag_mem32);
+
+		params->u.mem.start = bank->start;
+		params->u.mem.size = bank->size;
+
+		params = tag_next(params);
+	}
+}
+
+static void setup_commandline_tag(const char *commandline, int swap)
+{
+	const char *p;
+	size_t words;
+
+	if (!commandline)
+		return;
+
+	/* eat leading white space */
+	for (p = commandline; *p == ' '; p++) ;
+
+	/*
+	 * skip non-existent command lines so the kernel will still
+	 * use its default command line.
+	 */
+	if (*p == '\0')
+		return;
+
+	words = (strlen(p) + 1 /* NUL */ + 3 /* round up */) >> 2;
+	params->hdr.tag = ATAG_CMDLINE;
+	params->hdr.size = (sizeof(struct tag_header) >> 2) + words;
+
+	strcpy(params->u.cmdline.cmdline, p);
+
+#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
+	if (swap) {
+		u32 *cmd = (u32 *)params->u.cmdline.cmdline;
+		while (words--)
+			cmd[words] = swab32(cmd[words]);
+	}
+#endif
+
+	params = tag_next(params);
+}
+
+static void setup_revision_tag(void)
+{
+	u32 system_rev = armlinux_get_revision();
+
+	if (system_rev) {
+		params->hdr.tag = ATAG_REVISION;
+		params->hdr.size = tag_size(tag_revision);
+
+		params->u.revision.rev = system_rev;
+
+		params = tag_next(params);
+	}
+}
+
+static void setup_serial_tag(void)
+{
+	u64 system_serial = armlinux_get_serial();
+
+	if (system_serial) {
+		params->hdr.tag = ATAG_SERIAL;
+		params->hdr.size = tag_size(tag_serialnr);
+
+		params->u.serialnr.low  = system_serial & 0xffffffff;
+		params->u.serialnr.high = system_serial >> 32;
+
+		params = tag_next(params);
+	}
+}
+
+static void setup_initrd_tag(unsigned long start, unsigned long size)
+{
+	/* an ATAG_INITRD node tells the kernel where the compressed
+	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
+	 */
+	params->hdr.tag = ATAG_INITRD2;
+	params->hdr.size = tag_size(tag_initrd);
+
+	params->u.initrd.start = start;
+	params->u.initrd.size = size;
+
+	params = tag_next(params);
+}
+
+static void setup_end_tag (void)
+{
+	params->hdr.tag = ATAG_NONE;
+	params->hdr.size = 0;
+}
+
+static void setup_tags(unsigned long initrd_address,
+		unsigned long initrd_size, int swap)
+{
+	const char *commandline = linux_bootargs_get();
+
+	setup_start_tag();
+	setup_memory_tags();
+	setup_commandline_tag(commandline, swap);
+
+	if (initrd_size)
+		setup_initrd_tag(initrd_address, initrd_size);
+
+	setup_revision_tag();
+	setup_serial_tag();
+#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
+	if (atag_appender != NULL)
+		params = atag_appender(params);
+#endif
+	setup_end_tag();
+
+	printf("commandline: %s\n"
+	       "arch_number: %d\n", commandline, armlinux_get_architecture());
+
+}
+
+void start_linux(void *adr, int swap, unsigned long initrd_address,
+		unsigned long initrd_size, void *oftree)
+{
+	void (*kernel)(int zero, int arch, void *params) = adr;
+	void *params = NULL;
+	int architecture;
+
+	if (oftree) {
+		pr_debug("booting kernel with devicetree\n");
+		params = oftree;
+	} else {
+		setup_tags(initrd_address, initrd_size, swap);
+		params = armlinux_get_bootparams();
+	}
+	architecture = armlinux_get_architecture();
+
+	shutdown_barebox();
+
+	kernel(0, architecture, params);
+}
diff --git a/arch/arm/lib64/asm-offsets.c b/arch/arm/lib64/asm-offsets.c
new file mode 100644
index 0000000..7bf6d12
--- /dev/null
+++ b/arch/arm/lib64/asm-offsets.c
@@ -0,0 +1,16 @@
+/*
+ * Generate definitions needed by assembly language modules.
+ * This code generates raw asm output which is post-processed to extract
+ * and format the required data.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/kbuild.h>
+
+int main(void)
+{
+	return 0;
+}
diff --git a/arch/arm/lib64/barebox.lds b/arch/arm/lib64/barebox.lds
new file mode 100644
index 0000000..0909e9e
--- /dev/null
+++ b/arch/arm/lib64/barebox.lds
@@ -0,0 +1,125 @@
+/*
+ *
+ * Automatically generated file; DO NOT EDIT.
+ * Barebox/arm 2016.02.0 Configuration
+ *
+ */
+/*
+ * Helper macros to use CONFIG_ options in C expressions. Note that
+ * these only work with boolean and tristate options.
+ */
+/*
+ * Getting something that works in C and CPP for an arg that may or may
+ * not be defined is tricky.  Here, if we have "#define CONFIG_BOOGER 1"
+ * we match on the placeholder define, insert the "0," for arg1 and generate
+ * the triplet (0, 1, 0).  Then the last step cherry picks the 2nd arg (a one).
+ * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and when
+ * the last step cherry picks the 2nd arg, we get a zero.
+ */
+/*
+ * IS_ENABLED(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y' or 'm',
+ * 0 otherwise.
+ *
+ */
+/*
+ * IS_BUILTIN(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', 0
+ * otherwise. For boolean options, this is equivalent to
+ * IS_ENABLED(CONFIG_FOO).
+ */
+/*
+ * IS_MODULE(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'm', 0
+ * otherwise.
+ */
+/*
+ * (C) Copyright 2000-2004
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ *
+ */
+/*
+ * Align to a 32 byte boundary equal to the
+ * alignment gcc 4.5 uses for a struct
+ */
+/* Indirect stringification.  Doing two levels allows the parameter to be a
+ * macro itself.  For example, compile with -DFOO=bar, __stringify(FOO)
+ * converts to "bar".
+ */
+/* use 2 ASSERT because ld can not accept '"size" "10"' format */
+OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
+OUTPUT_ARCH(aarch64)
+ENTRY(start)
+SECTIONS
+{
+ . = 0x40000000;
+
+ . = ALIGN(4);
+ .text :
+ {
+  _stext = .;
+  _text = .;
+  *(.text_entry*)
+  __bare_init_start = .;
+  *(.text_bare_init*)
+  __bare_init_end = .;
+  __exceptions_start = .;
+  KEEP(*(.text_exceptions*))
+  __exceptions_stop = .;
+  *(.text*)
+ }
+ _barebox_bare_init_size = __bare_init_end - _text; ASSERT(_barebox_bare_init_size < 0x01000000, "Barebox bare_init size > ") ASSERT(_barebox_bare_init_size < 0x01000000, "0x01000000")
+ . = ALIGN(4);
+ .rodata : { *(.rodata*) }
+ _etext = .; /* End of text and rodata section */
+ _sdata = .;
+ . = ALIGN(4);
+ .data : { *(.data*) }
+ .barebox_imd : { KEEP(*(.barebox_imd_start)) KEEP(*(.barebox_imd_1*)) *(.barebox_imd_0*) KEEP(*(.barebox_imd_end)) }
+ . = .;
+ __barebox_cmd_start = .;
+ .barebox_cmd : { KEEP(*(SORT_BY_NAME(.barebox_cmd*))) }
+ __barebox_cmd_end = .;
+ __barebox_magicvar_start = .;
+ .barebox_magicvar : { KEEP(*(SORT_BY_NAME(.barebox_magicvar*))) }
+ __barebox_magicvar_end = .;
+ __barebox_initcalls_start = .;
+ .barebox_initcalls : { KEEP(*(.initcall.0)) KEEP(*(.initcall.1)) KEEP(*(.initcall.2)) KEEP(*(.initcall.3)) KEEP(*(.initcall.4)) KEEP(*(.initcall.5)) KEEP(*(.initcall.6)) KEEP(*(.initcall.7)) KEEP(*(.initcall.8)) KEEP(*(.initcall.9)) KEEP(*(.initcall.10)) KEEP(*(.initcall.11)) KEEP(*(.initcall.12)) KEEP(*(.initcall.13)) KEEP(*(.initcall.14)) }
+ __barebox_initcalls_end = .;
+ __barebox_exitcalls_start = .;
+ .barebox_exitcalls : { KEEP(*(.exitcall.0)) KEEP(*(.exitcall.1)) KEEP(*(.exitcall.2)) KEEP(*(.exitcall.3)) KEEP(*(.exitcall.4)) KEEP(*(.exitcall.5)) KEEP(*(.exitcall.6)) }
+ __barebox_exitcalls_end = .;
+ __usymtab_start = .;
+ __usymtab : { KEEP(*(__usymtab)) }
+ __usymtab_end = .;
+ .oftables : { . = ALIGN(8); __clk_of_table_start = .; KEEP(*(.__clk_of_table)); KEEP(*(.__clk_of_table_end)); __clk_of_table_end = .; }
+ .dtb : { . = ALIGN(8); __dtb_start = .; KEEP(*(.dtb.rodata.*)); __dtb_end = .; }
+ .rel.dyn : {
+  __rel_dyn_start = .;
+  *(.rel*)
+  __rel_dyn_end = .;
+ }
+ .dynsym : {
+  __dynsym_start = .;
+  *(.dynsym)
+  __dynsym_end = .;
+ }
+ _edata = .;
+ . = ALIGN(4);
+ __bss_start = .;
+ .bss : { *(.bss*) }
+ __bss_stop = .;
+ _end = .;
+ _barebox_image_size = __bss_start - 0x40000000;
+}
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
new file mode 100644
index 0000000..240699f
--- /dev/null
+++ b/arch/arm/lib64/barebox.lds.S
@@ -0,0 +1,125 @@
+/*
+ * (C) Copyright 2000-2004
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ *
+ */
+
+#include <asm-generic/barebox.lds.h>
+
+OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
+OUTPUT_ARCH(aarch64)
+ENTRY(start)
+SECTIONS
+{
+#ifdef CONFIG_RELOCATABLE
+	. = 0x0;
+#else
+	. = TEXT_BASE;
+#endif
+
+#ifndef CONFIG_PBL_IMAGE
+	PRE_IMAGE
+#endif
+	. = ALIGN(4);
+	.text      :
+	{
+		_stext = .;
+		_text = .;
+		*(.text_entry*)
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		__exceptions_start = .;
+		KEEP(*(.text_exceptions*))
+		__exceptions_stop = .;
+		*(.text*)
+	}
+	BAREBOX_BARE_INIT_SIZE
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
+#ifdef CONFIG_ARM_UNWIND
+	/*
+	 * Stack unwinding tables
+	 */
+	. = ALIGN(8);
+	.ARM.unwind_idx : {
+		__start_unwind_idx = .;
+		*(.ARM.exidx*)
+		__stop_unwind_idx = .;
+	}
+	.ARM.unwind_tab : {
+		__start_unwind_tab = .;
+		*(.ARM.extab*)
+		__stop_unwind_tab = .;
+	}
+#endif
+	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	.barebox_imd : { BAREBOX_IMD }
+
+	. = .;
+	__barebox_cmd_start = .;
+	.barebox_cmd : { BAREBOX_CMDS }
+	__barebox_cmd_end = .;
+
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
+	__barebox_initcalls_start = .;
+	.barebox_initcalls : { INITCALLS }
+	__barebox_initcalls_end = .;
+
+	__barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
+
+	__usymtab_start = .;
+	__usymtab : { BAREBOX_SYMS }
+	__usymtab_end = .;
+
+	.oftables : { BAREBOX_CLK_TABLE() }
+
+	.dtb : { BAREBOX_DTB() }
+
+	.rel.dyn : {
+		__rel_dyn_start = .;
+		*(.rel*)
+		__rel_dyn_end = .;
+	}
+
+	.dynsym : {
+		__dynsym_start = .;
+		*(.dynsym)
+		__dynsym_end = .;
+	}
+
+	_edata = .;
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+	_barebox_image_size = __bss_start - TEXT_BASE;
+}
diff --git a/arch/arm/lib64/bootm.c b/arch/arm/lib64/bootm.c
new file mode 100644
index 0000000..1913d5f
--- /dev/null
+++ b/arch/arm/lib64/bootm.c
@@ -0,0 +1,572 @@
+#include <boot.h>
+#include <common.h>
+#include <command.h>
+#include <driver.h>
+#include <environment.h>
+#include <image.h>
+#include <init.h>
+#include <fs.h>
+#include <libfile.h>
+#include <linux/list.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <linux/sizes.h>
+#include <libbb.h>
+#include <magicvar.h>
+#include <binfmt.h>
+#include <restart.h>
+
+#include <asm/byteorder.h>
+#include <asm/setup.h>
+#include <asm/barebox-arm.h>
+#include <asm/armlinux.h>
+#include <asm/system.h>
+
+/*
+ * sdram_start_and_size() - determine place for putting the kernel/oftree/initrd
+ *
+ * @start:	returns the start address of the first RAM bank
+ * @size:	returns the usable space at the beginning of the first RAM bank
+ *
+ * This function returns the base address of the first RAM bank and the free
+ * space found there.
+ *
+ * return: 0 for success, negative error code otherwise
+ */
+static int sdram_start_and_size(unsigned long *start, unsigned long *size)
+{
+	struct memory_bank *bank;
+	struct resource *res;
+
+	/*
+	 * We use the first memory bank for the kernel and other resources
+	 */
+	bank = list_first_entry_or_null(&memory_banks, struct memory_bank,
+			list);
+	if (!bank) {
+		printf("cannot find first memory bank\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * If the first memory bank has child resources we can use the bank up
+	 * to the beginning of the first child resource, otherwise we can use
+	 * the whole bank.
+	 */
+	res = list_first_entry_or_null(&bank->res->children, struct resource,
+			sibling);
+	if (res)
+		*size = res->start - bank->start;
+	else
+		*size = bank->size;
+
+	*start = bank->start;
+
+	return 0;
+}
+
+static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int swap)
+{
+	unsigned long kernel;
+	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
+	int ret;
+
+	kernel = data->os_res->start + data->os_entry;
+
+	initrd_start = data->initrd_address;
+
+	if (initrd_start == UIMAGE_INVALID_ADDRESS) {
+		initrd_start = PAGE_ALIGN(free_mem);
+
+		if (bootm_verbose(data)) {
+			printf("no initrd load address, defaulting to 0x%08lx\n",
+				initrd_start);
+		}
+	}
+
+	if (bootm_has_initrd(data)) {
+		ret = bootm_load_initrd(data, initrd_start);
+		if (ret)
+			return ret;
+	}
+
+	if (data->initrd_res) {
+		initrd_start = data->initrd_res->start;
+		initrd_end = data->initrd_res->end;
+		initrd_size = resource_size(data->initrd_res);
+		free_mem = PAGE_ALIGN(initrd_end);
+	}
+
+	ret = bootm_load_devicetree(data, free_mem);
+	if (ret)
+		return ret;
+
+	if (bootm_verbose(data)) {
+		printf("\nStarting kernel at 0x%08lx", kernel);
+		if (initrd_size)
+			printf(", initrd at 0x%08lx", initrd_start);
+		if (data->oftree)
+			printf(", oftree at 0x%p", data->oftree);
+		printf("...\n");
+	}
+
+	if (data->dryrun)
+		return 0;
+
+	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
+
+	restart_machine();
+
+	return -ERESTARTSYS;
+}
+
+static int do_bootm_linux(struct image_data *data)
+{
+	unsigned long load_address, mem_start, mem_size, mem_free;
+	int ret;
+
+	ret = sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
+
+	load_address = data->os_address;
+
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to
+		 * relocate itself before decompression.
+		 */
+		load_address = mem_start + PAGE_ALIGN(
+		               bootm_get_os_size(data) * 4);
+		if (bootm_verbose(data))
+			printf("no OS load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
+	ret = bootm_load_os(data, load_address);
+	if (ret)
+		return ret;
+
+	/*
+	 * put oftree/initrd close behind compressed kernel image to avoid
+	 * placing it outside of the kernels lowmem.
+	 */
+	mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+
+	return __do_bootm_linux(data, mem_free, 0);
+}
+
+static struct image_handler uimage_handler = {
+	.name = "ARM Linux uImage",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_uimage,
+	.ih_os = IH_OS_LINUX,
+};
+
+static struct image_handler rawimage_handler = {
+	.name = "ARM raw image",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_unknown,
+};
+
+struct zimage_header {
+	u32	unused[9];
+	u32	magic;
+	u32	start;
+	u32	end;
+};
+
+#define ZIMAGE_MAGIC 0x016F2818
+
+static int do_bootz_linux_fdt(int fd, struct image_data *data)
+{
+	struct fdt_header __header, *header;
+	void *oftree;
+	int ret;
+
+	u32 end;
+
+	if (data->oftree)
+		return -ENXIO;
+
+	header = &__header;
+	ret = read(fd, header, sizeof(*header));
+	if (ret < sizeof(*header))
+		return ret;
+
+	if (file_detect_type(header, sizeof(*header)) != filetype_oftree)
+		return -ENXIO;
+
+	end = be32_to_cpu(header->totalsize);
+
+	oftree = malloc(end + 0x8000);
+	if (!oftree) {
+		perror("zImage: oftree malloc");
+		return -ENOMEM;
+	}
+
+	memcpy(oftree, header, sizeof(*header));
+
+	end -= sizeof(*header);
+
+	ret = read_full(fd, oftree + sizeof(*header), end);
+	if (ret < 0)
+		goto err_free;
+	if (ret < end) {
+		printf("premature end of image\n");
+		ret = -EIO;
+		goto err_free;
+	}
+
+	if (IS_BUILTIN(CONFIG_OFTREE)) {
+		data->of_root_node = of_unflatten_dtb(oftree);
+		if (!data->of_root_node) {
+			pr_err("unable to unflatten devicetree\n");
+			ret = -EINVAL;
+			goto err_free;
+		}
+		free(oftree);
+	} else {
+		data->oftree = oftree;
+	}
+
+	pr_info("zImage: concatenated oftree detected\n");
+
+	return 0;
+
+err_free:
+	free(oftree);
+
+	return ret;
+}
+
+static int do_bootz_linux(struct image_data *data)
+{
+	int fd, ret, swap = 0;
+	struct zimage_header __header, *header;
+	void *zimage;
+	u32 end, start;
+	size_t image_size;
+	unsigned long load_address = data->os_address;
+	unsigned long mem_start, mem_size, mem_free;
+
+	ret = sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
+
+	fd = open(data->os_file, O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	header = &__header;
+	ret = read(fd, header, sizeof(*header));
+	if (ret < sizeof(*header)) {
+		printf("could not read %s\n", data->os_file);
+		goto err_out;
+	}
+
+	switch (header->magic) {
+	case swab32(ZIMAGE_MAGIC):
+		swap = 1;
+		/* fall through */
+	case ZIMAGE_MAGIC:
+		break;
+	default:
+		printf("invalid magic 0x%08x\n", header->magic);
+		ret = -EINVAL;
+		goto err_out;
+	}
+
+	end = header->end;
+	start = header->start;
+
+	if (swap) {
+		end = swab32(end);
+		start = swab32(start);
+	}
+
+	image_size = end - start;
+
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to
+		 * relocate itself before decompression.
+		 */
+		data->os_address = mem_start + PAGE_ALIGN(image_size * 4);
+
+		load_address = data->os_address;
+		if (bootm_verbose(data))
+			printf("no OS load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
+	data->os_res = request_sdram_region("zimage", load_address, image_size);
+	if (!data->os_res) {
+		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%d).\n",
+		       load_address, load_address + image_size, image_size);
+		ret = -ENOMEM;
+		goto err_out;
+	}
+
+	zimage = (void *)data->os_res->start;
+
+	memcpy(zimage, header, sizeof(*header));
+
+	ret = read_full(fd, zimage + sizeof(*header),
+			image_size - sizeof(*header));
+	if (ret < 0)
+		goto err_out;
+	if (ret < image_size - sizeof(*header)) {
+		printf("premature end of image\n");
+		ret = -EIO;
+		goto err_out;
+	}
+
+	if (swap) {
+		void *ptr;
+		for (ptr = zimage; ptr < zimage + end; ptr += 4)
+			*(u32 *)ptr = swab32(*(u32 *)ptr);
+	}
+
+	ret = do_bootz_linux_fdt(fd, data);
+	if (ret && ret != -ENXIO)
+		goto err_out;
+
+	close(fd);
+
+	/*
+	 * put oftree/initrd close behind compressed kernel image to avoid
+	 * placing it outside of the kernels lowmem.
+	 */
+	mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+
+	return __do_bootm_linux(data, mem_free, swap);
+
+err_out:
+	close(fd);
+
+	return ret;
+}
+
+static struct image_handler zimage_handler = {
+	.name = "ARM zImage",
+	.bootm = do_bootz_linux,
+	.filetype = filetype_arm_zimage,
+};
+
+static struct image_handler barebox_handler = {
+	.name = "ARM barebox",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_arm_barebox,
+};
+
+#include <aimage.h>
+
+static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
+{
+	int ret;
+	void *image = (void *)r->start;
+	unsigned to_read = ps - resource_size(r) % ps;
+
+	ret = read_full(fd, image, resource_size(r));
+	if (ret < 0)
+		return ret;
+
+	ret = read_full(fd, buf, to_read);
+	if (ret < 0)
+		printf("could not read dummy %u\n", to_read);
+
+	return ret;
+}
+
+static int do_bootm_aimage(struct image_data *data)
+{
+	struct resource *snd_stage_res;
+	int fd, ret;
+	struct android_header __header, *header;
+	void *buf;
+	int to_read;
+	struct android_header_comp *cmp;
+	unsigned long mem_free;
+	unsigned long mem_start, mem_size;
+
+	ret = sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
+
+	fd = open(data->os_file, O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	header = &__header;
+	ret = read(fd, header, sizeof(*header));
+	if (ret < sizeof(*header)) {
+		printf("could not read %s\n", data->os_file);
+		goto err_out;
+	}
+
+	printf("Android Image for '%s'\n", header->name);
+
+	/*
+	 * As on tftp we do not support lseek and we will just have to seek
+	 * for the size of a page - 1 max just buffer instead to read to dummy
+	 * data
+	 */
+	buf = xmalloc(header->page_size);
+
+	to_read = header->page_size - sizeof(*header);
+	ret = read_full(fd, buf, to_read);
+	if (ret < 0) {
+		printf("could not read dummy %d from %s\n", to_read, data->os_file);
+		goto err_out;
+	}
+
+	cmp = &header->kernel;
+	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size);
+	if (!data->os_res) {
+		pr_err("Cannot request region 0x%08x - 0x%08x, using default load address\n",
+				cmp->load_addr, cmp->size);
+
+		data->os_address = mem_start + PAGE_ALIGN(cmp->size * 4);
+		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size);
+		if (!data->os_res) {
+			pr_err("Cannot request region 0x%08x - 0x%08x\n",
+					cmp->load_addr, cmp->size);
+			ret = -ENOMEM;
+			goto err_out;
+		}
+	}
+
+	ret = aimage_load_resource(fd, data->os_res, buf, header->page_size);
+	if (ret < 0) {
+		perror("could not read kernel");
+		goto err_out;
+	}
+
+	/*
+	 * fastboot always expect a ramdisk
+	 * in barebox we can be less restrictive
+	 */
+	cmp = &header->ramdisk;
+	if (cmp->size) {
+		data->initrd_res = request_sdram_region("ainitrd", cmp->load_addr, cmp->size);
+		if (!data->initrd_res) {
+			ret = -ENOMEM;
+			goto err_out;
+		}
+
+		ret = aimage_load_resource(fd, data->initrd_res, buf, header->page_size);
+		if (ret < 0) {
+			perror("could not read initrd");
+			goto err_out;
+		}
+	}
+
+	if (!getenv("aimage_noverwrite_bootargs"))
+		linux_bootargs_overwrite(header->cmdline);
+
+	if (!getenv("aimage_noverwrite_tags"))
+		armlinux_set_bootparams((void*)header->tags_addr);
+
+	cmp = &header->second_stage;
+	if (cmp->size) {
+		void (*second)(void);
+
+		snd_stage_res = request_sdram_region("asecond", cmp->load_addr, cmp->size);
+		if (!snd_stage_res) {
+			ret = -ENOMEM;
+			goto err_out;
+		}
+
+		ret = aimage_load_resource(fd, snd_stage_res, buf, header->page_size);
+		if (ret < 0) {
+			perror("could not read initrd");
+			goto err_out;
+		}
+
+		second = (void*)snd_stage_res->start;
+		shutdown_barebox();
+
+		second();
+
+		restart_machine();
+	}
+
+	close(fd);
+
+	/*
+	 * Put devicetree right after initrd if present or after the kernel
+	 * if not.
+	 */
+	if (data->initrd_res)
+		mem_free = PAGE_ALIGN(data->initrd_res->end);
+	else
+		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+
+	return __do_bootm_linux(data, mem_free, 0);
+
+err_out:
+	linux_bootargs_overwrite(NULL);
+	close(fd);
+
+	return ret;
+}
+
+static struct image_handler aimage_handler = {
+	.name = "ARM Android Image",
+	.bootm = do_bootm_aimage,
+	.filetype = filetype_aimage,
+};
+
+#ifdef CONFIG_CMD_BOOTM_AIMAGE
+BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the bootargs with the one present in aimage");
+BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr with the one present in aimage");
+#endif
+
+static struct image_handler arm_fit_handler = {
+        .name = "FIT image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_oftree,
+};
+
+static struct binfmt_hook binfmt_aimage_hook = {
+	.type = filetype_aimage,
+	.exec = "bootm",
+};
+
+static struct binfmt_hook binfmt_arm_zimage_hook = {
+	.type = filetype_arm_zimage,
+	.exec = "bootm",
+};
+
+static struct binfmt_hook binfmt_barebox_hook = {
+	.type = filetype_arm_barebox,
+	.exec = "bootm",
+};
+
+static int armlinux_register_image_handler(void)
+{
+	register_image_handler(&barebox_handler);
+	register_image_handler(&uimage_handler);
+	register_image_handler(&rawimage_handler);
+	register_image_handler(&zimage_handler);
+	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE)) {
+		register_image_handler(&aimage_handler);
+		binfmt_register(&binfmt_aimage_hook);
+	}
+	if (IS_BUILTIN(CONFIG_CMD_BOOTM_FITIMAGE))
+	        register_image_handler(&arm_fit_handler);
+	binfmt_register(&binfmt_arm_zimage_hook);
+	binfmt_register(&binfmt_barebox_hook);
+
+	return 0;
+}
+late_initcall(armlinux_register_image_handler);
diff --git a/arch/arm/lib64/bootu.c b/arch/arm/lib64/bootu.c
new file mode 100644
index 0000000..19009c8
--- /dev/null
+++ b/arch/arm/lib64/bootu.c
@@ -0,0 +1,44 @@
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <of.h>
+#include <asm/armlinux.h>
+
+static int do_bootu(int argc, char *argv[])
+{
+	int fd;
+	void *kernel = NULL;
+	void *oftree = NULL;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[1], O_RDONLY);
+	if (fd > 0)
+		kernel = (void *)memmap(fd, PROT_READ);
+
+	if (!kernel)
+		kernel = (void *)simple_strtoul(argv[1], NULL, 0);
+
+#ifdef CONFIG_OFTREE
+	oftree = of_get_fixed_tree(NULL);
+#endif
+
+	start_linux(kernel, 0, 0, 0, oftree);
+
+	return 1;
+}
+
+static const __maybe_unused char cmd_bootu_help[] =
+"Usage: bootu <address>\n";
+
+BAREBOX_CMD_START(bootu)
+	.cmd            = do_bootu,
+	BAREBOX_CMD_DESC("boot into already loaded Linux kernel")
+	BAREBOX_CMD_OPTS("ADDRESS")
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
+	BAREBOX_CMD_HELP(cmd_bootu_help)
+BAREBOX_CMD_END
+
diff --git a/arch/arm/lib64/bootz.c b/arch/arm/lib64/bootz.c
new file mode 100644
index 0000000..5167c9d
--- /dev/null
+++ b/arch/arm/lib64/bootz.c
@@ -0,0 +1,136 @@
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <of.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <malloc.h>
+#include <linux/sizes.h>
+#include <asm/byteorder.h>
+#include <asm/armlinux.h>
+#include <asm/system.h>
+#include <asm-generic/memory_layout.h>
+#include <memory.h>
+
+struct zimage_header {
+	u32	unused[9];
+	u32	magic;
+	u32	start;
+	u32	end;
+};
+
+#define ZIMAGE_MAGIC 0x016F2818
+
+static int do_bootz(int argc, char *argv[])
+{
+	int fd, ret, swap = 0;
+	struct zimage_header __header, *header;
+	void *zimage;
+	void *oftree = NULL;
+	u32 end;
+	int usemap = 0;
+	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
+	struct resource *res = NULL;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[1], O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	/*
+	 * We can save the memcpy of the zImage if it already is in
+	 * the first 128MB of SDRAM.
+	 */
+	zimage = memmap(fd, PROT_READ);
+	if (zimage && (unsigned long)zimage  >= bank->start &&
+			(unsigned long)zimage < bank->start + SZ_128M) {
+		usemap = 1;
+		header = zimage;
+	}
+
+	if (!usemap) {
+		header = &__header;
+		ret = read(fd, header, sizeof(*header));
+		if (ret < sizeof(*header)) {
+			printf("could not read %s\n", argv[1]);
+			goto err_out;
+		}
+	}
+
+	switch (header->magic) {
+#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
+	case swab32(ZIMAGE_MAGIC):
+		swap = 1;
+		/* fall through */
+#endif
+	case ZIMAGE_MAGIC:
+		break;
+	default:
+		printf("invalid magic 0x%08x\n", header->magic);
+		goto err_out;
+	}
+
+	end = header->end;
+
+	if (swap)
+		end = swab32(end);
+
+	if (!usemap) {
+		if (bank->size <= SZ_128M) {
+			zimage = xmalloc(end);
+		} else {
+			zimage = (void *)bank->start + SZ_8M;
+			res = request_sdram_region("zimage",
+					bank->start + SZ_8M, end);
+			if (!res) {
+				printf("can't request region for kernel\n");
+				goto err_out1;
+			}
+		}
+
+		memcpy(zimage, header, sizeof(*header));
+
+		ret = read(fd, zimage + sizeof(*header), end - sizeof(*header));
+		if (ret < end - sizeof(*header)) {
+			printf("could not read %s\n", argv[1]);
+			goto err_out2;
+		}
+	}
+
+	if (swap) {
+		void *ptr;
+		for (ptr = zimage; ptr < zimage + end; ptr += 4)
+			*(u32 *)ptr = swab32(*(u32 *)ptr);
+	}
+
+	printf("loaded zImage from %s with size %d\n", argv[1], end);
+#ifdef CONFIG_OFTREE
+	oftree = of_get_fixed_tree(NULL);
+#endif
+
+	start_linux(zimage, swap, 0, 0, oftree);
+
+	return 0;
+
+err_out2:
+	if (res)
+		release_sdram_region(res);
+err_out1:
+	free(zimage);
+err_out:
+	close(fd);
+
+	return 1;
+}
+
+BAREBOX_CMD_START(bootz)
+	.cmd            = do_bootz,
+	BAREBOX_CMD_DESC("boot Linux zImage")
+	BAREBOX_CMD_OPTS("FILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
+BAREBOX_CMD_END
+
diff --git a/arch/arm/lib64/copy_template.S b/arch/arm/lib64/copy_template.S
new file mode 100644
index 0000000..cc9a842
--- /dev/null
+++ b/arch/arm/lib64/copy_template.S
@@ -0,0 +1,192 @@
+/*
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
+ *
+ * This code is based on glibc cortex strings work originally authored by Linaro
+ * and re-licensed under GPLv2 for the Linux kernel. The original code can
+ * be found @
+ *
+ * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
+ * files/head:/src/aarch64/
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+
+/*
+ * Copy a buffer from src to dest (alignment handled by the hardware)
+ *
+ * Parameters:
+ *	x0 - dest
+ *	x1 - src
+ *	x2 - n
+ * Returns:
+ *	x0 - dest
+ */
+dstin	.req	x0
+src	.req	x1
+count	.req	x2
+tmp1	.req	x3
+tmp1w	.req	w3
+tmp2	.req	x4
+tmp2w	.req	w4
+dst	.req	x6
+
+A_l	.req	x7
+A_h	.req	x8
+B_l	.req	x9
+B_h	.req	x10
+C_l	.req	x11
+C_h	.req	x12
+D_l	.req	x13
+D_h	.req	x14
+
+	mov	dst, dstin
+	cmp	count, #16
+	/*When memory length is less than 16, the accessed are not aligned.*/
+	b.lo	.Ltiny15
+
+	neg	tmp2, src
+	ands	tmp2, tmp2, #15/* Bytes to reach alignment. */
+	b.eq	.LSrcAligned
+	sub	count, count, tmp2
+	/*
+	* Copy the leading memory data from src to dst in an increasing
+	* address order.By this way,the risk of overwritting the source
+	* memory data is eliminated when the distance between src and
+	* dst is less than 16. The memory accesses here are alignment.
+	*/
+	tbz	tmp2, #0, 1f
+	ldrb1	tmp1w, src, #1
+	strb1	tmp1w, dst, #1
+1:
+	tbz	tmp2, #1, 2f
+	ldrh1	tmp1w, src, #2
+	strh1	tmp1w, dst, #2
+2:
+	tbz	tmp2, #2, 3f
+	ldr1	tmp1w, src, #4
+	str1	tmp1w, dst, #4
+3:
+	tbz	tmp2, #3, .LSrcAligned
+	ldr1	tmp1, src, #8
+	str1	tmp1, dst, #8
+
+.LSrcAligned:
+	cmp	count, #64
+	b.ge	.Lcpy_over64
+	/*
+	* Deal with small copies quickly by dropping straight into the
+	* exit block.
+	*/
+.Ltail63:
+	/*
+	* Copy up to 48 bytes of data. At this point we only need the
+	* bottom 6 bits of count to be accurate.
+	*/
+	ands	tmp1, count, #0x30
+	b.eq	.Ltiny15
+	cmp	tmp1w, #0x20
+	b.eq	1f
+	b.lt	2f
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+1:
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+2:
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+.Ltiny15:
+	/*
+	* Prefer to break one ldp/stp into several load/store to access
+	* memory in an increasing address order,rather than to load/store 16
+	* bytes from (src-16) to (dst-16) and to backward the src to aligned
+	* address,which way is used in original cortex memcpy. If keeping
+	* the original memcpy process here, memmove need to satisfy the
+	* precondition that src address is at least 16 bytes bigger than dst
+	* address,otherwise some source data will be overwritten when memove
+	* call memcpy directly. To make memmove simpler and decouple the
+	* memcpy's dependency on memmove, withdrew the original process.
+	*/
+	tbz	count, #3, 1f
+	ldr1	tmp1, src, #8
+	str1	tmp1, dst, #8
+1:
+	tbz	count, #2, 2f
+	ldr1	tmp1w, src, #4
+	str1	tmp1w, dst, #4
+2:
+	tbz	count, #1, 3f
+	ldrh1	tmp1w, src, #2
+	strh1	tmp1w, dst, #2
+3:
+	tbz	count, #0, .Lexitfunc
+	ldrb1	tmp1w, src, #1
+	strb1	tmp1w, dst, #1
+
+	b	.Lexitfunc
+
+.Lcpy_over64:
+	subs	count, count, #128
+	b.ge	.Lcpy_body_large
+	/*
+	* Less than 128 bytes to copy, so handle 64 here and then jump
+	* to the tail.
+	*/
+	ldp1	A_l, A_h, src, #16
+	stp1	A_l, A_h, dst, #16
+	ldp1	B_l, B_h, src, #16
+	ldp1	C_l, C_h, src, #16
+	stp1	B_l, B_h, dst, #16
+	stp1	C_l, C_h, dst, #16
+	ldp1	D_l, D_h, src, #16
+	stp1	D_l, D_h, dst, #16
+
+	tst	count, #0x3f
+	b.ne	.Ltail63
+	b	.Lexitfunc
+
+	/*
+	* Critical loop.  Start at a new cache line boundary.  Assuming
+	* 64 bytes per line this ensures the entire loop is in one line.
+	*/
+.Lcpy_body_large:
+	/* pre-get 64 bytes data. */
+	ldp1	A_l, A_h, src, #16
+	ldp1	B_l, B_h, src, #16
+	ldp1	C_l, C_h, src, #16
+	ldp1	D_l, D_h, src, #16
+1:
+	/*
+	* interlace the load of next 64 bytes data block with store of the last
+	* loaded 64 bytes data.
+	*/
+	stp1	A_l, A_h, dst, #16
+	ldp1	A_l, A_h, src, #16
+	stp1	B_l, B_h, dst, #16
+	ldp1	B_l, B_h, src, #16
+	stp1	C_l, C_h, dst, #16
+	ldp1	C_l, C_h, src, #16
+	stp1	D_l, D_h, dst, #16
+	ldp1	D_l, D_h, src, #16
+	subs	count, count, #64
+	b.ge	1b
+	stp1	A_l, A_h, dst, #16
+	stp1	B_l, B_h, dst, #16
+	stp1	C_l, C_h, dst, #16
+	stp1	D_l, D_h, dst, #16
+
+	tst	count, #0x3f
+	b.ne	.Ltail63
+.Lexitfunc:
diff --git a/arch/arm/lib64/div0.c b/arch/arm/lib64/div0.c
new file mode 100644
index 0000000..852cb72
--- /dev/null
+++ b/arch/arm/lib64/div0.c
@@ -0,0 +1,27 @@
+/*
+ * (C) Copyright 2002
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+
+extern void __div0(void);
+
+/* Replacement (=dummy) for GNU/Linux division-by zero handler */
+void __div0 (void)
+{
+	panic("division by zero\n");
+}
diff --git a/arch/arm/lib64/memcpy.S b/arch/arm/lib64/memcpy.S
new file mode 100644
index 0000000..cfed319
--- /dev/null
+++ b/arch/arm/lib64/memcpy.S
@@ -0,0 +1,74 @@
+/*
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
+ *
+ * This code is based on glibc cortex strings work originally authored by Linaro
+ * and re-licensed under GPLv2 for the Linux kernel. The original code can
+ * be found @
+ *
+ * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
+ * files/head:/src/aarch64/
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+/*
+ * Copy a buffer from src to dest (alignment handled by the hardware)
+ *
+ * Parameters:
+ *	x0 - dest
+ *	x1 - src
+ *	x2 - n
+ * Returns:
+ *	x0 - dest
+ */
+	.macro ldrb1 ptr, regB, val
+	ldrb  \ptr, [\regB], \val
+	.endm
+
+	.macro strb1 ptr, regB, val
+	strb \ptr, [\regB], \val
+	.endm
+
+	.macro ldrh1 ptr, regB, val
+	ldrh  \ptr, [\regB], \val
+	.endm
+
+	.macro strh1 ptr, regB, val
+	strh \ptr, [\regB], \val
+	.endm
+
+	.macro ldr1 ptr, regB, val
+	ldr \ptr, [\regB], \val
+	.endm
+
+	.macro str1 ptr, regB, val
+	str \ptr, [\regB], \val
+	.endm
+
+	.macro ldp1 ptr, regB, regC, val
+	ldp \ptr, \regB, [\regC], \val
+	.endm
+
+	.macro stp1 ptr, regB, regC, val
+	stp \ptr, \regB, [\regC], \val
+	.endm
+
+	.weak memcpy
+ENTRY(memcpy)
+#include "copy_template.S"
+	ret
+ENDPROC(memcpy)
diff --git a/arch/arm/lib64/memset.S b/arch/arm/lib64/memset.S
new file mode 100644
index 0000000..380a540
--- /dev/null
+++ b/arch/arm/lib64/memset.S
@@ -0,0 +1,215 @@
+/*
+ * Copyright (C) 2013 ARM Ltd.
+ * Copyright (C) 2013 Linaro.
+ *
+ * This code is based on glibc cortex strings work originally authored by Linaro
+ * and re-licensed under GPLv2 for the Linux kernel. The original code can
+ * be found @
+ *
+ * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
+ * files/head:/src/aarch64/
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+/*
+ * Fill in the buffer with character c (alignment handled by the hardware)
+ *
+ * Parameters:
+ *	x0 - buf
+ *	x1 - c
+ *	x2 - n
+ * Returns:
+ *	x0 - buf
+ */
+
+dstin		.req	x0
+val		.req	w1
+count		.req	x2
+tmp1		.req	x3
+tmp1w		.req	w3
+tmp2		.req	x4
+tmp2w		.req	w4
+zva_len_x	.req	x5
+zva_len		.req	w5
+zva_bits_x	.req	x6
+
+A_l		.req	x7
+A_lw		.req	w7
+dst		.req	x8
+tmp3w		.req	w9
+tmp3		.req	x9
+
+	.weak memset
+ENTRY(memset)
+	mov	dst, dstin	/* Preserve return value.  */
+	and	A_lw, val, #255
+	orr	A_lw, A_lw, A_lw, lsl #8
+	orr	A_lw, A_lw, A_lw, lsl #16
+	orr	A_l, A_l, A_l, lsl #32
+
+	cmp	count, #15
+	b.hi	.Lover16_proc
+	/*All store maybe are non-aligned..*/
+	tbz	count, #3, 1f
+	str	A_l, [dst], #8
+1:
+	tbz	count, #2, 2f
+	str	A_lw, [dst], #4
+2:
+	tbz	count, #1, 3f
+	strh	A_lw, [dst], #2
+3:
+	tbz	count, #0, 4f
+	strb	A_lw, [dst]
+4:
+	ret
+
+.Lover16_proc:
+	/*Whether  the start address is aligned with 16.*/
+	neg	tmp2, dst
+	ands	tmp2, tmp2, #15
+	b.eq	.Laligned
+/*
+* The count is not less than 16, we can use stp to store the start 16 bytes,
+* then adjust the dst aligned with 16.This process will make the current
+* memory address at alignment boundary.
+*/
+	stp	A_l, A_l, [dst] /*non-aligned store..*/
+	/*make the dst aligned..*/
+	sub	count, count, tmp2
+	add	dst, dst, tmp2
+
+.Laligned:
+	cbz	A_l, .Lzero_mem
+
+.Ltail_maybe_long:
+	cmp	count, #64
+	b.ge	.Lnot_short
+.Ltail63:
+	ands	tmp1, count, #0x30
+	b.eq	3f
+	cmp	tmp1w, #0x20
+	b.eq	1f
+	b.lt	2f
+	stp	A_l, A_l, [dst], #16
+1:
+	stp	A_l, A_l, [dst], #16
+2:
+	stp	A_l, A_l, [dst], #16
+/*
+* The last store length is less than 16,use stp to write last 16 bytes.
+* It will lead some bytes written twice and the access is non-aligned.
+*/
+3:
+	ands	count, count, #15
+	cbz	count, 4f
+	add	dst, dst, count
+	stp	A_l, A_l, [dst, #-16]	/* Repeat some/all of last store. */
+4:
+	ret
+
+	/*
+	* Critical loop. Start at a new cache line boundary. Assuming
+	* 64 bytes per line, this ensures the entire loop is in one line.
+	*/
+.Lnot_short:
+	sub	dst, dst, #16/* Pre-bias.  */
+	sub	count, count, #64
+1:
+	stp	A_l, A_l, [dst, #16]
+	stp	A_l, A_l, [dst, #32]
+	stp	A_l, A_l, [dst, #48]
+	stp	A_l, A_l, [dst, #64]!
+	subs	count, count, #64
+	b.ge	1b
+	tst	count, #0x3f
+	add	dst, dst, #16
+	b.ne	.Ltail63
+.Lexitfunc:
+	ret
+
+	/*
+	* For zeroing memory, check to see if we can use the ZVA feature to
+	* zero entire 'cache' lines.
+	*/
+.Lzero_mem:
+	cmp	count, #63
+	b.le	.Ltail63
+	/*
+	* For zeroing small amounts of memory, it's not worth setting up
+	* the line-clear code.
+	*/
+	cmp	count, #128
+	b.lt	.Lnot_short /*count is at least  128 bytes*/
+
+	mrs	tmp1, dczid_el0
+	tbnz	tmp1, #4, .Lnot_short
+	mov	tmp3w, #4
+	and	zva_len, tmp1w, #15	/* Safety: other bits reserved.  */
+	lsl	zva_len, tmp3w, zva_len
+
+	ands	tmp3w, zva_len, #63
+	/*
+	* ensure the zva_len is not less than 64.
+	* It is not meaningful to use ZVA if the block size is less than 64.
+	*/
+	b.ne	.Lnot_short
+.Lzero_by_line:
+	/*
+	* Compute how far we need to go to become suitably aligned. We're
+	* already at quad-word alignment.
+	*/
+	cmp	count, zva_len_x
+	b.lt	.Lnot_short		/* Not enough to reach alignment.  */
+	sub	zva_bits_x, zva_len_x, #1
+	neg	tmp2, dst
+	ands	tmp2, tmp2, zva_bits_x
+	b.eq	2f			/* Already aligned.  */
+	/* Not aligned, check that there's enough to copy after alignment.*/
+	sub	tmp1, count, tmp2
+	/*
+	* grantee the remain length to be ZVA is bigger than 64,
+	* avoid to make the 2f's process over mem range.*/
+	cmp	tmp1, #64
+	ccmp	tmp1, zva_len_x, #8, ge	/* NZCV=0b1000 */
+	b.lt	.Lnot_short
+	/*
+	* We know that there's at least 64 bytes to zero and that it's safe
+	* to overrun by 64 bytes.
+	*/
+	mov	count, tmp1
+1:
+	stp	A_l, A_l, [dst]
+	stp	A_l, A_l, [dst, #16]
+	stp	A_l, A_l, [dst, #32]
+	subs	tmp2, tmp2, #64
+	stp	A_l, A_l, [dst, #48]
+	add	dst, dst, #64
+	b.ge	1b
+	/* We've overrun a bit, so adjust dst downwards.*/
+	add	dst, dst, tmp2
+2:
+	sub	count, count, zva_len_x
+3:
+	dc	zva, dst
+	add	dst, dst, zva_len_x
+	subs	count, count, zva_len_x
+	b.ge	3b
+	ands	count, count, zva_bits_x
+	b.ne	.Ltail_maybe_long
+	ret
+ENDPROC(memset)
diff --git a/arch/arm/lib64/module.c b/arch/arm/lib64/module.c
new file mode 100644
index 0000000..be7965d
--- /dev/null
+++ b/arch/arm/lib64/module.c
@@ -0,0 +1,98 @@
+/*
+ *  linux/arch/arm/kernel/module.c
+ *
+ *  Copyright (C) 2002 Russell King.
+ *  Modified for nommu by Hyok S. Choi
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Module allocation method suggested by Andi Kleen.
+ */
+
+//#include <asm/pgtable.h>
+#include <common.h>
+#include <elf.h>
+#include <module.h>
+#include <errno.h>
+
+int
+apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
+	       unsigned int relindex, struct module *module)
+{
+	Elf32_Shdr *symsec = sechdrs + symindex;
+	Elf32_Shdr *relsec = sechdrs + relindex;
+	Elf32_Shdr *dstsec = sechdrs + relsec->sh_info;
+	Elf32_Rel *rel = (void *)relsec->sh_addr;
+	unsigned int i;
+
+	for (i = 0; i < relsec->sh_size / sizeof(Elf32_Rel); i++, rel++) {
+		unsigned long loc;
+		Elf32_Sym *sym;
+		s32 offset;
+
+		offset = ELF32_R_SYM(rel->r_info);
+		if (offset < 0 || offset > (symsec->sh_size / sizeof(Elf32_Sym))) {
+			printf("%s: bad relocation, section %u reloc %u\n",
+				module->name, relindex, i);
+			return -ENOEXEC;
+		}
+
+		sym = ((Elf32_Sym *)symsec->sh_addr) + offset;
+
+		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
+			printf("%s: out of bounds relocation, "
+				"section %u reloc %u offset %d size %d\n",
+				module->name, relindex, i, rel->r_offset,
+				dstsec->sh_size);
+			return -ENOEXEC;
+		}
+
+		loc = dstsec->sh_addr + rel->r_offset;
+
+		switch (ELF32_R_TYPE(rel->r_info)) {
+		case R_ARM_ABS32:
+			*(u32 *)loc += sym->st_value;
+			break;
+
+		case R_ARM_PC24:
+		case R_ARM_CALL:
+		case R_ARM_JUMP24:
+			offset = (*(u32 *)loc & 0x00ffffff) << 2;
+			if (offset & 0x02000000)
+				offset -= 0x04000000;
+
+			offset += sym->st_value - loc;
+			if (offset & 3 ||
+			    offset <= (s32)0xfe000000 ||
+			    offset >= (s32)0x02000000) {
+				printf("%s: relocation out of range, section "
+				       "%u reloc %u sym '%s'\n", module->name,
+				       relindex, i, strtab + sym->st_name);
+				return -ENOEXEC;
+			}
+
+			offset >>= 2;
+
+			*(u32 *)loc &= 0xff000000;
+			*(u32 *)loc |= offset & 0x00ffffff;
+			break;
+
+		default:
+			printf("%s: unknown relocation: %u\n",
+			       module->name, ELF32_R_TYPE(rel->r_info));
+			return -ENOEXEC;
+		}
+	}
+	return 0;
+}
+
+int
+apply_relocate_add(Elf32_Shdr *sechdrs, const char *strtab,
+		   unsigned int symindex, unsigned int relsec, struct module *module)
+{
+	printf("module %s: ADD RELOCATION unsupported\n",
+	       module->name);
+	return -ENOEXEC;
+}
diff --git a/arch/arm/lib64/pbl.lds.S b/arch/arm/lib64/pbl.lds.S
new file mode 100644
index 0000000..73baff0
--- /dev/null
+++ b/arch/arm/lib64/pbl.lds.S
@@ -0,0 +1,96 @@
+/*
+ * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <linux/sizes.h>
+#include <asm-generic/barebox.lds.h>
+#include <asm-generic/memory_layout.h>
+
+#ifdef CONFIG_PBL_RELOCATABLE
+#define BASE	0x0
+#else
+#define BASE	(TEXT_BASE - SZ_2M)
+#endif
+
+OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
+OUTPUT_ARCH(arm)
+SECTIONS
+{
+	. = BASE;
+
+	PRE_IMAGE
+
+	. = ALIGN(4);
+	.text      :
+	{
+		_stext = .;
+		_text = .;
+		*(.text_head_entry*)
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		*(.text*)
+	}
+
+	/* Discard unwind if enable in barebox */
+	/DISCARD/ : { *(.ARM.ex*) }
+
+	BAREBOX_BARE_INIT_SIZE
+	BAREBOX_PBL_SIZE
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
+	.barebox_imd : { BAREBOX_IMD }
+
+	_etext = .;			/* End of text and rodata section */
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	.rel.dyn : {
+		__rel_dyn_start = .;
+		*(.rel*)
+		__rel_dyn_end = .;
+	}
+
+	.dynsym : {
+		__dynsym_start = .;
+		*(.dynsym)
+		__dynsym_end = .;
+	}
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+
+	. = ALIGN(4);
+	__piggydata_start = .;
+	.piggydata : {
+		*(.piggydata)
+	}
+	__piggydata_end = .;
+
+	. = ALIGN(4);
+	.image_end : {
+		KEEP(*(.image_end))
+	}
+	__image_end = .;
+	_barebox_image_size = __image_end - BASE;
+	_barebox_pbl_size = __bss_start - BASE;
+}
diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
new file mode 100644
index 0000000..e368baa
--- /dev/null
+++ b/arch/arm/lib64/runtime-offset.S
@@ -0,0 +1,52 @@
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section ".text_bare_init","ax"
+
+/*
+ * Get the offset between the link address and the address
+ * we are currently running at.
+ */
+ENTRY(get_runtime_offset)
+1:	adr x0, 1b
+	adr x1, get_runtime_offset
+	subs x0, x1, x0
+	subs x0, x0, #1
+	ret
+
+linkadr:
+.word get_runtime_offset
+ENDPROC(get_runtime_offset)
+
+.globl __ld_var_base
+__ld_var_base:
+
+/*
+ * Functions to calculate selected linker supplied variables during runtime.
+ * This is needed for relocatable binaries when the linker variables are
+ * needed before finxing up the relocations.
+ */
+.macro ld_var_entry name
+	ENTRY(__ld_var_\name)
+		ldr x0, __\name
+		b 1f
+	__\name: .word \name - __ld_var_base
+	ENDPROC(__ld_var_\name)
+.endm
+
+ld_var_entry _text
+ld_var_entry __rel_dyn_start
+ld_var_entry __rel_dyn_end
+ld_var_entry __dynsym_start
+ld_var_entry __dynsym_end
+ld_var_entry _barebox_image_size
+ld_var_entry __bss_start
+ld_var_entry __bss_stop
+#ifdef __PBL__
+ld_var_entry __image_end
+#endif
+
+1:
+	ldr x1, =__ld_var_base
+	adds x0, x0, x1
+	ret
diff --git a/arch/arm/lib64/unwind.c b/arch/arm/lib64/unwind.c
new file mode 100644
index 0000000..c3dca5b
--- /dev/null
+++ b/arch/arm/lib64/unwind.c
@@ -0,0 +1,349 @@
+#include <common.h>
+#include <init.h>
+#include <asm/stacktrace.h>
+#include <asm/unwind.h>
+#include <asm/sections.h>
+
+/* Dummy functions to avoid linker complaints */
+void __aeabi_unwind_cpp_pr0(void)
+{
+};
+EXPORT_SYMBOL(__aeabi_unwind_cpp_pr0);
+
+void __aeabi_unwind_cpp_pr1(void)
+{
+};
+EXPORT_SYMBOL(__aeabi_unwind_cpp_pr1);
+
+void __aeabi_unwind_cpp_pr2(void)
+{
+};
+EXPORT_SYMBOL(__aeabi_unwind_cpp_pr2);
+
+struct unwind_ctrl_block {
+	unsigned long vrs[16];		/* virtual register set */
+	unsigned long *insn;		/* pointer to the current instructions word */
+	int entries;			/* number of entries left to interpret */
+	int byte;			/* current byte number in the instructions word */
+};
+
+enum regs {
+	FP = 11,
+	SP = 13,
+	LR = 14,
+	PC = 15
+};
+
+#define THREAD_SIZE               8192
+
+extern struct unwind_idx __start_unwind_idx[];
+extern struct unwind_idx __stop_unwind_idx[];
+
+/* Convert a prel31 symbol to an absolute address */
+#define prel31_to_addr(ptr)				\
+({							\
+	/* sign-extend to 32 bits */			\
+	long offset = (((long)*(ptr)) << 1) >> 1;	\
+	(unsigned long)(ptr) + offset;			\
+})
+
+static inline int is_kernel_text(unsigned long addr)
+{
+	if ((addr >= (unsigned long)_stext && addr <= (unsigned long)_etext))
+		return 1;
+	return 0;
+}
+
+void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
+{
+#ifdef CONFIG_KALLSYMS
+	printk("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+#else
+	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+#endif
+}
+
+/*
+ * Binary search in the unwind index. The entries entries are
+ * guaranteed to be sorted in ascending order by the linker.
+ */
+static struct unwind_idx *search_index(unsigned long addr,
+				       struct unwind_idx *first,
+				       struct unwind_idx *last)
+{
+	pr_debug("%s(%08lx, %p, %p)\n", __func__, addr, first, last);
+
+	if (addr < first->addr) {
+		pr_warning("unwind: Unknown symbol address %08lx\n", addr);
+		return NULL;
+	} else if (addr >= last->addr)
+		return last;
+
+	while (first < last - 1) {
+		struct unwind_idx *mid = first + ((last - first + 1) >> 1);
+
+		if (addr < mid->addr)
+			last = mid;
+		else
+			first = mid;
+	}
+
+	return first;
+}
+
+static struct unwind_idx *unwind_find_idx(unsigned long addr)
+{
+	struct unwind_idx *idx = NULL;
+
+	pr_debug("%s(%08lx)\n", __func__, addr);
+
+	if (is_kernel_text(addr))
+		/* main unwind table */
+		idx = search_index(addr, __start_unwind_idx,
+				   __stop_unwind_idx - 1);
+	else {
+		/* module unwinding not supported */
+	}
+
+	pr_debug("%s: idx = %p\n", __func__, idx);
+	return idx;
+}
+
+static unsigned long unwind_get_byte(struct unwind_ctrl_block *ctrl)
+{
+	unsigned long ret;
+
+	if (ctrl->entries <= 0) {
+		pr_warning("unwind: Corrupt unwind table\n");
+		return 0;
+	}
+
+	ret = (*ctrl->insn >> (ctrl->byte * 8)) & 0xff;
+
+	if (ctrl->byte == 0) {
+		ctrl->insn++;
+		ctrl->entries--;
+		ctrl->byte = 3;
+	} else
+		ctrl->byte--;
+
+	return ret;
+}
+
+/*
+ * Execute the current unwind instruction.
+ */
+static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
+{
+	unsigned long insn = unwind_get_byte(ctrl);
+
+	pr_debug("%s: insn = %08lx\n", __func__, insn);
+
+	if ((insn & 0xc0) == 0x00)
+		ctrl->vrs[SP] += ((insn & 0x3f) << 2) + 4;
+	else if ((insn & 0xc0) == 0x40)
+		ctrl->vrs[SP] -= ((insn & 0x3f) << 2) + 4;
+	else if ((insn & 0xf0) == 0x80) {
+		unsigned long mask;
+		unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
+		int load_sp, reg = 4;
+
+		insn = (insn << 8) | unwind_get_byte(ctrl);
+		mask = insn & 0x0fff;
+		if (mask == 0) {
+			pr_warning("unwind: 'Refuse to unwind' instruction %04lx\n",
+				   insn);
+			return -URC_FAILURE;
+		}
+
+		/* pop R4-R15 according to mask */
+		load_sp = mask & (1 << (13 - 4));
+		while (mask) {
+			if (mask & 1)
+				ctrl->vrs[reg] = *vsp++;
+			mask >>= 1;
+			reg++;
+		}
+		if (!load_sp)
+			ctrl->vrs[SP] = (unsigned long)vsp;
+	} else if ((insn & 0xf0) == 0x90 &&
+		   (insn & 0x0d) != 0x0d)
+		ctrl->vrs[SP] = ctrl->vrs[insn & 0x0f];
+	else if ((insn & 0xf0) == 0xa0) {
+		unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
+		int reg;
+
+		/* pop R4-R[4+bbb] */
+		for (reg = 4; reg <= 4 + (insn & 7); reg++)
+			ctrl->vrs[reg] = *vsp++;
+		if (insn & 0x80)
+			ctrl->vrs[14] = *vsp++;
+		ctrl->vrs[SP] = (unsigned long)vsp;
+	} else if (insn == 0xb0) {
+		if (ctrl->vrs[PC] == 0)
+			ctrl->vrs[PC] = ctrl->vrs[LR];
+		/* no further processing */
+		ctrl->entries = 0;
+	} else if (insn == 0xb1) {
+		unsigned long mask = unwind_get_byte(ctrl);
+		unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
+		int reg = 0;
+
+		if (mask == 0 || mask & 0xf0) {
+			pr_warning("unwind: Spare encoding %04lx\n",
+			       (insn << 8) | mask);
+			return -URC_FAILURE;
+		}
+
+		/* pop R0-R3 according to mask */
+		while (mask) {
+			if (mask & 1)
+				ctrl->vrs[reg] = *vsp++;
+			mask >>= 1;
+			reg++;
+		}
+		ctrl->vrs[SP] = (unsigned long)vsp;
+	} else if (insn == 0xb2) {
+		unsigned long uleb128 = unwind_get_byte(ctrl);
+
+		ctrl->vrs[SP] += 0x204 + (uleb128 << 2);
+	} else {
+		pr_warning("unwind: Unhandled instruction %02lx\n", insn);
+		return -URC_FAILURE;
+	}
+
+	pr_debug("%s: fp = %08lx sp = %08lx lr = %08lx pc = %08lx\n", __func__,
+		 ctrl->vrs[FP], ctrl->vrs[SP], ctrl->vrs[LR], ctrl->vrs[PC]);
+
+	return URC_OK;
+}
+
+/*
+ * Unwind a single frame starting with *sp for the symbol at *pc. It
+ * updates the *pc and *sp with the new values.
+ */
+int unwind_frame(struct stackframe *frame)
+{
+	unsigned long high, low;
+	struct unwind_idx *idx;
+	struct unwind_ctrl_block ctrl;
+
+	/* only go to a higher address on the stack */
+	low = frame->sp;
+	high = ALIGN(low, THREAD_SIZE);
+
+	pr_debug("%s(pc = %08lx lr = %08lx sp = %08lx)\n", __func__,
+		 frame->pc, frame->lr, frame->sp);
+
+	if (!is_kernel_text(frame->pc))
+		return -URC_FAILURE;
+
+	idx = unwind_find_idx(frame->pc);
+	if (!idx) {
+		pr_warning("unwind: Index not found %08lx\n", frame->pc);
+		return -URC_FAILURE;
+	}
+
+	ctrl.vrs[FP] = frame->fp;
+	ctrl.vrs[SP] = frame->sp;
+	ctrl.vrs[LR] = frame->lr;
+	ctrl.vrs[PC] = 0;
+
+	if (idx->insn == 1)
+		/* can't unwind */
+		return -URC_FAILURE;
+	else if ((idx->insn & 0x80000000) == 0)
+		/* prel31 to the unwind table */
+		ctrl.insn = (unsigned long *)prel31_to_addr(&idx->insn);
+	else if ((idx->insn & 0xff000000) == 0x80000000)
+		/* only personality routine 0 supported in the index */
+		ctrl.insn = &idx->insn;
+	else {
+		pr_warning("unwind: Unsupported personality routine %08lx in the index at %p\n",
+			   idx->insn, idx);
+		return -URC_FAILURE;
+	}
+
+	/* check the personality routine */
+	if ((*ctrl.insn & 0xff000000) == 0x80000000) {
+		ctrl.byte = 2;
+		ctrl.entries = 1;
+	} else if ((*ctrl.insn & 0xff000000) == 0x81000000) {
+		ctrl.byte = 1;
+		ctrl.entries = 1 + ((*ctrl.insn & 0x00ff0000) >> 16);
+	} else {
+		pr_warning("unwind: Unsupported personality routine %08lx at %p\n",
+			   *ctrl.insn, ctrl.insn);
+		return -URC_FAILURE;
+	}
+
+	while (ctrl.entries > 0) {
+		int urc = unwind_exec_insn(&ctrl);
+		if (urc < 0)
+			return urc;
+		if (ctrl.vrs[SP] < low || ctrl.vrs[SP] >= high)
+			return -URC_FAILURE;
+	}
+
+	if (ctrl.vrs[PC] == 0)
+		ctrl.vrs[PC] = ctrl.vrs[LR];
+
+	/* check for infinite loop */
+	if (frame->pc == ctrl.vrs[PC])
+		return -URC_FAILURE;
+
+	frame->fp = ctrl.vrs[FP];
+	frame->sp = ctrl.vrs[SP];
+	frame->lr = ctrl.vrs[LR];
+	frame->pc = ctrl.vrs[PC];
+
+	return URC_OK;
+}
+
+void unwind_backtrace(struct pt_regs *regs)
+{
+	struct stackframe frame;
+	register unsigned long current_sp asm ("sp");
+
+	pr_debug("%s\n", __func__);
+
+	if (regs) {
+		frame.fp = regs->ARM_fp;
+		frame.sp = regs->ARM_sp;
+		frame.lr = regs->ARM_lr;
+		/* PC might be corrupted, use LR in that case. */
+		frame.pc = is_kernel_text(regs->ARM_pc)
+			 ? regs->ARM_pc : regs->ARM_lr;
+	} else {
+		frame.sp = current_sp;
+		frame.lr = (unsigned long)__builtin_return_address(0);
+		frame.pc = (unsigned long)unwind_backtrace;
+	}
+
+	while (1) {
+		int urc;
+		unsigned long where = frame.pc;
+
+		urc = unwind_frame(&frame);
+		if (urc < 0)
+			break;
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4);
+	}
+}
+
+void dump_stack(void)
+{
+	unwind_backtrace(NULL);
+}
+
+static int unwind_init(void)
+{
+	struct unwind_idx *idx;
+
+	/* Convert the symbol addresses to absolute values */
+	for (idx = __start_unwind_idx; idx < __stop_unwind_idx; idx++)
+		idx->addr = prel31_to_addr(&idx->addr);
+
+	return 0;
+}
+core_initcall(unwind_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
