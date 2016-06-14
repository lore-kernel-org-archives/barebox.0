Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCiRj-0001hF-Hg
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 07:07:40 +0000
Received: by mail-wm0-x244.google.com with SMTP id r5so19961163wmr.0
 for <barebox@lists.infradead.org>; Tue, 14 Jun 2016 00:07:19 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Tue, 14 Jun 2016 09:06:37 +0200
Message-Id: <1465888006-39463-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1465888006-39463-1-git-send-email-poggi.raph@gmail.com>
References: <1465888006-39463-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v2 03/12] arm: introduce lib64 for arm64 related stuff
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/lib64/Makefile        |  10 +
 arch/arm/lib64/armlinux.c      | 275 ++++++++++++++++++++
 arch/arm/lib64/asm-offsets.c   |  16 ++
 arch/arm/lib64/barebox.lds.S   | 125 +++++++++
 arch/arm/lib64/bootm.c         | 572 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/lib64/copy_template.S | 192 ++++++++++++++
 arch/arm/lib64/div0.c          |  27 ++
 arch/arm/lib64/memcpy.S        |  74 ++++++
 arch/arm/lib64/memset.S        | 215 ++++++++++++++++
 arch/arm/lib64/module.c        |  98 +++++++
 10 files changed, 1604 insertions(+)
 create mode 100644 arch/arm/lib64/Makefile
 create mode 100644 arch/arm/lib64/armlinux.c
 create mode 100644 arch/arm/lib64/asm-offsets.c
 create mode 100644 arch/arm/lib64/barebox.lds.S
 create mode 100644 arch/arm/lib64/bootm.c
 create mode 100644 arch/arm/lib64/copy_template.S
 create mode 100644 arch/arm/lib64/div0.c
 create mode 100644 arch/arm/lib64/memcpy.S
 create mode 100644 arch/arm/lib64/memset.S
 create mode 100644 arch/arm/lib64/module.c

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
new file mode 100644
index 0000000..a424293
--- /dev/null
+++ b/arch/arm/lib64/Makefile
@@ -0,0 +1,10 @@
+obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
+obj-$(CONFIG_BOOTM)	+= bootm.o
+obj-y	+= div0.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
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
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
