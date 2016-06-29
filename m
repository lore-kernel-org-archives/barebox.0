Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIAmE-0003U5-JA
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 08:23:51 +0000
Received: by mail-wm0-x22a.google.com with SMTP id a66so61428985wme.0
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 01:22:58 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Wed, 29 Jun 2016 10:22:10 +0200
Message-Id: <1467188540-76509-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
References: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v4 03/13] arm: rework lib directory to support arm64
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

This commit create a common directory, lib/,
for arm and arm64 common code.

It also create lib32/ and lib64/ for 32bit
and 64bit code respectively.

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/Makefile                 |  24 ++-
 arch/arm/lib/.gitignore           |   1 -
 arch/arm/lib/Makefile             |  27 ---
 arch/arm/lib/armlinux.c           | 281 ------------------------------
 arch/arm/lib/ashldi3.S            |  50 ------
 arch/arm/lib/ashrdi3.S            |  50 ------
 arch/arm/lib/barebox.lds.S        | 126 --------------
 arch/arm/lib/bootz.c              | 136 ---------------
 arch/arm/lib/copy_template.S      | 268 -----------------------------
 arch/arm/lib/div0.c               |  27 ---
 arch/arm/lib/findbit.S            | 197 ---------------------
 arch/arm/lib/io-readsb.S          | 125 --------------
 arch/arm/lib/io-readsl.S          |  81 ---------
 arch/arm/lib/io-readsw-armv4.S    | 133 ---------------
 arch/arm/lib/io-writesb.S         |  96 -----------
 arch/arm/lib/io-writesl.S         |  69 --------
 arch/arm/lib/io-writesw-armv4.S   | 102 -----------
 arch/arm/lib/io.c                 |  50 ------
 arch/arm/lib/lib1funcs.S          | 351 --------------------------------------
 arch/arm/lib/lshrdi3.S            |  50 ------
 arch/arm/lib/memcpy.S             |  64 -------
 arch/arm/lib/memset.S             | 124 --------------
 arch/arm/lib/module.c             |  98 -----------
 arch/arm/lib/pbl.lds.S            |  96 -----------
 arch/arm/lib/runtime-offset.S     |  52 ------
 arch/arm/lib/semihosting-trap.S   |  28 ---
 arch/arm/lib/semihosting.c        | 227 ------------------------
 arch/arm/lib/unwind.c             | 349 -------------------------------------
 arch/arm/lib32/.gitignore         |   1 +
 arch/arm/lib32/Makefile           |  27 +++
 arch/arm/lib32/armlinux.c         | 281 ++++++++++++++++++++++++++++++
 arch/arm/lib32/ashldi3.S          |  50 ++++++
 arch/arm/lib32/ashrdi3.S          |  50 ++++++
 arch/arm/lib32/barebox.lds.S      | 126 ++++++++++++++
 arch/arm/lib32/bootz.c            | 136 +++++++++++++++
 arch/arm/lib32/copy_template.S    | 268 +++++++++++++++++++++++++++++
 arch/arm/lib32/div0.c             |  27 +++
 arch/arm/lib32/findbit.S          | 197 +++++++++++++++++++++
 arch/arm/lib32/io-readsb.S        | 125 ++++++++++++++
 arch/arm/lib32/io-readsl.S        |  81 +++++++++
 arch/arm/lib32/io-readsw-armv4.S  | 133 +++++++++++++++
 arch/arm/lib32/io-writesb.S       |  96 +++++++++++
 arch/arm/lib32/io-writesl.S       |  69 ++++++++
 arch/arm/lib32/io-writesw-armv4.S | 102 +++++++++++
 arch/arm/lib32/io.c               |  50 ++++++
 arch/arm/lib32/lib1funcs.S        | 351 ++++++++++++++++++++++++++++++++++++++
 arch/arm/lib32/lshrdi3.S          |  50 ++++++
 arch/arm/lib32/memcpy.S           |  64 +++++++
 arch/arm/lib32/memset.S           | 124 ++++++++++++++
 arch/arm/lib32/module.c           |  98 +++++++++++
 arch/arm/lib32/pbl.lds.S          |  96 +++++++++++
 arch/arm/lib32/runtime-offset.S   |  52 ++++++
 arch/arm/lib32/semihosting-trap.S |  28 +++
 arch/arm/lib32/semihosting.c      | 227 ++++++++++++++++++++++++
 arch/arm/lib32/unwind.c           | 349 +++++++++++++++++++++++++++++++++++++
 arch/arm/lib64/Makefile           |   9 +
 arch/arm/lib64/armlinux.c         |  50 ++++++
 arch/arm/lib64/barebox.lds.S      | 125 ++++++++++++++
 arch/arm/lib64/copy_template.S    | 192 +++++++++++++++++++++
 arch/arm/lib64/div0.c             |  27 +++
 arch/arm/lib64/memcpy.S           |  74 ++++++++
 arch/arm/lib64/memset.S           | 215 +++++++++++++++++++++++
 62 files changed, 3970 insertions(+), 3262 deletions(-)
 delete mode 100644 arch/arm/lib/.gitignore
 delete mode 100644 arch/arm/lib/armlinux.c
 delete mode 100644 arch/arm/lib/ashldi3.S
 delete mode 100644 arch/arm/lib/ashrdi3.S
 delete mode 100644 arch/arm/lib/barebox.lds.S
 delete mode 100644 arch/arm/lib/bootz.c
 delete mode 100644 arch/arm/lib/copy_template.S
 delete mode 100644 arch/arm/lib/div0.c
 delete mode 100644 arch/arm/lib/findbit.S
 delete mode 100644 arch/arm/lib/io-readsb.S
 delete mode 100644 arch/arm/lib/io-readsl.S
 delete mode 100644 arch/arm/lib/io-readsw-armv4.S
 delete mode 100644 arch/arm/lib/io-writesb.S
 delete mode 100644 arch/arm/lib/io-writesl.S
 delete mode 100644 arch/arm/lib/io-writesw-armv4.S
 delete mode 100644 arch/arm/lib/io.c
 delete mode 100644 arch/arm/lib/lib1funcs.S
 delete mode 100644 arch/arm/lib/lshrdi3.S
 delete mode 100644 arch/arm/lib/memcpy.S
 delete mode 100644 arch/arm/lib/memset.S
 delete mode 100644 arch/arm/lib/module.c
 delete mode 100644 arch/arm/lib/pbl.lds.S
 delete mode 100644 arch/arm/lib/runtime-offset.S
 delete mode 100644 arch/arm/lib/semihosting-trap.S
 delete mode 100644 arch/arm/lib/semihosting.c
 delete mode 100644 arch/arm/lib/unwind.c
 create mode 100644 arch/arm/lib32/.gitignore
 create mode 100644 arch/arm/lib32/Makefile
 create mode 100644 arch/arm/lib32/armlinux.c
 create mode 100644 arch/arm/lib32/ashldi3.S
 create mode 100644 arch/arm/lib32/ashrdi3.S
 create mode 100644 arch/arm/lib32/barebox.lds.S
 create mode 100644 arch/arm/lib32/bootz.c
 create mode 100644 arch/arm/lib32/copy_template.S
 create mode 100644 arch/arm/lib32/div0.c
 create mode 100644 arch/arm/lib32/findbit.S
 create mode 100644 arch/arm/lib32/io-readsb.S
 create mode 100644 arch/arm/lib32/io-readsl.S
 create mode 100644 arch/arm/lib32/io-readsw-armv4.S
 create mode 100644 arch/arm/lib32/io-writesb.S
 create mode 100644 arch/arm/lib32/io-writesl.S
 create mode 100644 arch/arm/lib32/io-writesw-armv4.S
 create mode 100644 arch/arm/lib32/io.c
 create mode 100644 arch/arm/lib32/lib1funcs.S
 create mode 100644 arch/arm/lib32/lshrdi3.S
 create mode 100644 arch/arm/lib32/memcpy.S
 create mode 100644 arch/arm/lib32/memset.S
 create mode 100644 arch/arm/lib32/module.c
 create mode 100644 arch/arm/lib32/pbl.lds.S
 create mode 100644 arch/arm/lib32/runtime-offset.S
 create mode 100644 arch/arm/lib32/semihosting-trap.S
 create mode 100644 arch/arm/lib32/semihosting.c
 create mode 100644 arch/arm/lib32/unwind.c
 create mode 100644 arch/arm/lib64/Makefile
 create mode 100644 arch/arm/lib64/armlinux.c
 create mode 100644 arch/arm/lib64/barebox.lds.S
 create mode 100644 arch/arm/lib64/copy_template.S
 create mode 100644 arch/arm/lib64/div0.c
 create mode 100644 arch/arm/lib64/memcpy.S
 create mode 100644 arch/arm/lib64/memset.S

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 2cf5feb..2b056af 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -291,13 +291,29 @@ MACH :=
 endif
 
 common-y += $(BOARD) arch/arm/boards/ $(MACH)
-common-y += arch/arm/lib/ arch/arm/cpu/
-common-y += arch/arm/crypto/
+common-y += arch/arm/cpu/
+common-y += arch/arm/lib/
+
+ifeq ($(CONFIG_CPU_V8), y)
+common-y += arch/arm/lib64/
+else
+common-y += arch/arm/lib32/ arch/arm/crypto/
+endif
 
 common-$(CONFIG_OFTREE) += arch/arm/dts/
 
-lds-y	:= arch/arm/lib/barebox.lds
+ifeq ($(CONFIG_CPU_V8), y)
+lds-y	:= arch/arm/lib64/barebox.lds
+else
+lds-y	:= arch/arm/lib32/barebox.lds
+endif
 
 common- += $(patsubst %,arch/arm/boards/%/,$(board-))
 
-CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds barebox-flash-image
+CLEAN_FILES += include/generated/mach-types.h barebox-flash-image
+
+ifeq ($(CONFIG_CPU_V8), y)
+CLEAN_FILES += arch/arm/lib64/barebox.lds
+else
+CLEAN_FILES += arch/arm/lib32/barebox.lds
+endif
diff --git a/arch/arm/lib/.gitignore b/arch/arm/lib/.gitignore
deleted file mode 100644
index d116578..0000000
--- a/arch/arm/lib/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-barebox.lds
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index e1c6f5b..33db735 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,29 +1,2 @@
-obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-$(CONFIG_BOOTM)	+= bootm.o
-obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
-obj-y	+= div0.o
-obj-y	+= findbit.o
-obj-y	+= io.o
-obj-y	+= io-readsb.o
-obj-y	+= io-readsw-armv4.o
-obj-y	+= io-readsl.o
-obj-y	+= io-writesb.o
-obj-y	+= io-writesw-armv4.o
-obj-y	+= io-writesl.o
-obj-y	+= lib1funcs.o
-obj-y	+= ashrdi3.o
-obj-y	+= ashldi3.o
-obj-y	+= lshrdi3.o
-obj-y	+= runtime-offset.o
-pbl-y	+= runtime-offset.o
-obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
-obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
-obj-$(CONFIG_ARM_UNWIND) += unwind.o
-obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap.o semihosting.o
-obj-$(CONFIG_MODULES) += module.o
-extra-y += barebox.lds
-
-pbl-y	+= lib1funcs.o
-pbl-y	+= ashldi3.o
-pbl-y	+= div0.o
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
deleted file mode 100644
index 47b9bd3..0000000
--- a/arch/arm/lib/armlinux.c
+++ /dev/null
@@ -1,281 +0,0 @@
-/*
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Marius Groeger <mgroeger@sysgo.de>
- *
- * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- */
-
-#include <boot.h>
-#include <common.h>
-#include <command.h>
-#include <driver.h>
-#include <environment.h>
-#include <image.h>
-#include <init.h>
-#include <fs.h>
-#include <linux/list.h>
-#include <xfuncs.h>
-#include <malloc.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <memory.h>
-#include <of.h>
-#include <magicvar.h>
-
-#include <asm/byteorder.h>
-#include <asm/setup.h>
-#include <asm/barebox-arm.h>
-#include <asm/armlinux.h>
-#include <asm/system.h>
-
-static struct tag *params;
-static void *armlinux_bootparams = NULL;
-
-static int armlinux_architecture;
-static u32 armlinux_system_rev;
-static u64 armlinux_system_serial;
-
-BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
-BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
-BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
-
-void armlinux_set_architecture(int architecture)
-{
-	export_env_ull("armlinux_architecture", architecture);
-	armlinux_architecture = architecture;
-}
-
-int armlinux_get_architecture(void)
-{
-	getenv_uint("armlinux_architecture", &armlinux_architecture);
-
-	return armlinux_architecture;
-}
-
-void armlinux_set_revision(unsigned int rev)
-{
-	export_env_ull("armlinux_system_rev", rev);
-	armlinux_system_rev = rev;
-}
-
-unsigned int armlinux_get_revision(void)
-{
-	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
-
-	return armlinux_system_rev;
-}
-
-void armlinux_set_serial(u64 serial)
-{
-	export_env_ull("armlinux_system_serial", serial);
-	armlinux_system_serial = serial;
-}
-
-u64 armlinux_get_serial(void)
-{
-	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
-
-	return armlinux_system_serial;
-}
-
-void armlinux_set_bootparams(void *params)
-{
-	armlinux_bootparams = params;
-}
-
-static struct tag *armlinux_get_bootparams(void)
-{
-	struct memory_bank *mem;
-
-	if (armlinux_bootparams)
-		return armlinux_bootparams;
-
-	for_each_memory_bank(mem)
-		return (void *)mem->start + 0x100;
-
-	BUG();
-}
-
-#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
-static struct tag *(*atag_appender)(struct tag *);
-void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
-{
-	atag_appender = func;
-}
-#endif
-
-static void setup_start_tag(void)
-{
-	params = armlinux_get_bootparams();
-
-	params->hdr.tag = ATAG_CORE;
-	params->hdr.size = tag_size(tag_core);
-
-	params->u.core.flags = 0;
-	params->u.core.pagesize = 0;
-	params->u.core.rootdev = 0;
-
-	params = tag_next(params);
-}
-
-static void setup_memory_tags(void)
-{
-	struct memory_bank *bank;
-
-	for_each_memory_bank(bank) {
-		params->hdr.tag = ATAG_MEM;
-		params->hdr.size = tag_size(tag_mem32);
-
-		params->u.mem.start = bank->start;
-		params->u.mem.size = bank->size;
-
-		params = tag_next(params);
-	}
-}
-
-static void setup_commandline_tag(const char *commandline, int swap)
-{
-	const char *p;
-	size_t words;
-
-	if (!commandline)
-		return;
-
-	/* eat leading white space */
-	for (p = commandline; *p == ' '; p++) ;
-
-	/*
-	 * skip non-existent command lines so the kernel will still
-	 * use its default command line.
-	 */
-	if (*p == '\0')
-		return;
-
-	words = (strlen(p) + 1 /* NUL */ + 3 /* round up */) >> 2;
-	params->hdr.tag = ATAG_CMDLINE;
-	params->hdr.size = (sizeof(struct tag_header) >> 2) + words;
-
-	strcpy(params->u.cmdline.cmdline, p);
-
-#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
-	if (swap) {
-		u32 *cmd = (u32 *)params->u.cmdline.cmdline;
-		while (words--)
-			cmd[words] = swab32(cmd[words]);
-	}
-#endif
-
-	params = tag_next(params);
-}
-
-static void setup_revision_tag(void)
-{
-	u32 system_rev = armlinux_get_revision();
-
-	if (system_rev) {
-		params->hdr.tag = ATAG_REVISION;
-		params->hdr.size = tag_size(tag_revision);
-
-		params->u.revision.rev = system_rev;
-
-		params = tag_next(params);
-	}
-}
-
-static void setup_serial_tag(void)
-{
-	u64 system_serial = armlinux_get_serial();
-
-	if (system_serial) {
-		params->hdr.tag = ATAG_SERIAL;
-		params->hdr.size = tag_size(tag_serialnr);
-
-		params->u.serialnr.low  = system_serial & 0xffffffff;
-		params->u.serialnr.high = system_serial >> 32;
-
-		params = tag_next(params);
-	}
-}
-
-static void setup_initrd_tag(unsigned long start, unsigned long size)
-{
-	/* an ATAG_INITRD node tells the kernel where the compressed
-	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
-	 */
-	params->hdr.tag = ATAG_INITRD2;
-	params->hdr.size = tag_size(tag_initrd);
-
-	params->u.initrd.start = start;
-	params->u.initrd.size = size;
-
-	params = tag_next(params);
-}
-
-static void setup_end_tag (void)
-{
-	params->hdr.tag = ATAG_NONE;
-	params->hdr.size = 0;
-}
-
-static void setup_tags(unsigned long initrd_address,
-		unsigned long initrd_size, int swap)
-{
-	const char *commandline = linux_bootargs_get();
-
-	setup_start_tag();
-	setup_memory_tags();
-	setup_commandline_tag(commandline, swap);
-
-	if (initrd_size)
-		setup_initrd_tag(initrd_address, initrd_size);
-
-	setup_revision_tag();
-	setup_serial_tag();
-#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
-	if (atag_appender != NULL)
-		params = atag_appender(params);
-#endif
-	setup_end_tag();
-
-	printf("commandline: %s\n"
-	       "arch_number: %d\n", commandline, armlinux_get_architecture());
-
-}
-
-void start_linux(void *adr, int swap, unsigned long initrd_address,
-		unsigned long initrd_size, void *oftree)
-{
-	void (*kernel)(int zero, int arch, void *params) = adr;
-	void *params = NULL;
-	int architecture;
-
-	if (oftree) {
-		pr_debug("booting kernel with devicetree\n");
-		params = oftree;
-	} else {
-		setup_tags(initrd_address, initrd_size, swap);
-		params = armlinux_get_bootparams();
-	}
-	architecture = armlinux_get_architecture();
-
-	shutdown_barebox();
-	if (swap) {
-		u32 reg;
-		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=r" (reg));
-		reg ^= CR_B; /* swap big-endian flag */
-		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
-	}
-
-	kernel(0, architecture, params);
-}
diff --git a/arch/arm/lib/ashldi3.S b/arch/arm/lib/ashldi3.S
deleted file mode 100644
index b62e06f..0000000
--- a/arch/arm/lib/ashldi3.S
+++ /dev/null
@@ -1,50 +0,0 @@
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
-   Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-*/
-
-#include <linux/linkage.h>
-
-#ifdef __ARMEB__
-#define al r1
-#define ah r0
-#else
-#define al r0
-#define ah r1
-#endif
-
-.section .text.__ashldi3
-ENTRY(__ashldi3)
-ENTRY(__aeabi_llsl)
-
-	subs	r3, r2, #32
-	rsb	ip, r2, #32
-	movmi	ah, ah, lsl r2
-	movpl	ah, al, lsl r3
- ARM(	orrmi	ah, ah, al, lsr ip	)
- THUMB(	lsrmi	r3, al, ip		)
- THUMB(	orrmi	ah, ah, r3		)
-	mov	al, al, lsl r2
-	mov	pc, lr
-
-ENDPROC(__ashldi3)
-ENDPROC(__aeabi_llsl)
diff --git a/arch/arm/lib/ashrdi3.S b/arch/arm/lib/ashrdi3.S
deleted file mode 100644
index db849b6..0000000
--- a/arch/arm/lib/ashrdi3.S
+++ /dev/null
@@ -1,50 +0,0 @@
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
-   Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-*/
-
-#include <linux/linkage.h>
-
-#ifdef __ARMEB__
-#define al r1
-#define ah r0
-#else
-#define al r0
-#define ah r1
-#endif
-
-.section .text.__ashrdi3
-ENTRY(__ashrdi3)
-ENTRY(__aeabi_lasr)
-
-	subs	r3, r2, #32
-	rsb	ip, r2, #32
-	movmi	al, al, lsr r2
-	movpl	al, ah, asr r3
- ARM(	orrmi	al, al, ah, lsl ip	)
- THUMB(	lslmi	r3, ah, ip		)
- THUMB(	orrmi	al, al, r3		)
-	mov	ah, ah, asr r2
-	mov	pc, lr
-
-ENDPROC(__ashrdi3)
-ENDPROC(__aeabi_lasr)
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
deleted file mode 100644
index 6dc8bd2..0000000
--- a/arch/arm/lib/barebox.lds.S
+++ /dev/null
@@ -1,126 +0,0 @@
-/*
- * (C) Copyright 2000-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#include <asm-generic/barebox.lds.h>
-
-OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
-OUTPUT_ARCH(arm)
-ENTRY(start)
-SECTIONS
-{
-#ifdef CONFIG_RELOCATABLE
-	. = 0x0;
-#else
-	. = TEXT_BASE;
-#endif
-
-#ifndef CONFIG_PBL_IMAGE
-	PRE_IMAGE
-#endif
-	. = ALIGN(4);
-	.text      :
-	{
-		_stext = .;
-		_text = .;
-		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
-		. = ALIGN(4);
-		__exceptions_start = .;
-		KEEP(*(.text_exceptions*))
-		__exceptions_stop = .;
-		*(.text*)
-	}
-	BAREBOX_BARE_INIT_SIZE
-
-	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
-
-#ifdef CONFIG_ARM_UNWIND
-	/*
-	 * Stack unwinding tables
-	 */
-	. = ALIGN(8);
-	.ARM.unwind_idx : {
-		__start_unwind_idx = .;
-		*(.ARM.exidx*)
-		__stop_unwind_idx = .;
-	}
-	.ARM.unwind_tab : {
-		__start_unwind_tab = .;
-		*(.ARM.extab*)
-		__stop_unwind_tab = .;
-	}
-#endif
-	_etext = .;			/* End of text and rodata section */
-	_sdata = .;
-
-	. = ALIGN(4);
-	.data : { *(.data*) }
-
-	.barebox_imd : { BAREBOX_IMD }
-
-	. = .;
-	__barebox_cmd_start = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_magicvar_start = .;
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	__usymtab_start = .;
-	__usymtab : { BAREBOX_SYMS }
-	__usymtab_end = .;
-
-	.oftables : { BAREBOX_CLK_TABLE() }
-
-	.dtb : { BAREBOX_DTB() }
-
-	.rel.dyn : {
-		__rel_dyn_start = .;
-		*(.rel*)
-		__rel_dyn_end = .;
-	}
-
-	.dynsym : {
-		__dynsym_start = .;
-		*(.dynsym)
-		__dynsym_end = .;
-	}
-
-	_edata = .;
-
-	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
-	_end = .;
-	_barebox_image_size = __bss_start - TEXT_BASE;
-}
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
deleted file mode 100644
index 5167c9d..0000000
--- a/arch/arm/lib/bootz.c
+++ /dev/null
@@ -1,136 +0,0 @@
-#include <common.h>
-#include <command.h>
-#include <fs.h>
-#include <of.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <malloc.h>
-#include <linux/sizes.h>
-#include <asm/byteorder.h>
-#include <asm/armlinux.h>
-#include <asm/system.h>
-#include <asm-generic/memory_layout.h>
-#include <memory.h>
-
-struct zimage_header {
-	u32	unused[9];
-	u32	magic;
-	u32	start;
-	u32	end;
-};
-
-#define ZIMAGE_MAGIC 0x016F2818
-
-static int do_bootz(int argc, char *argv[])
-{
-	int fd, ret, swap = 0;
-	struct zimage_header __header, *header;
-	void *zimage;
-	void *oftree = NULL;
-	u32 end;
-	int usemap = 0;
-	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
-	struct resource *res = NULL;
-
-	if (argc != 2)
-		return COMMAND_ERROR_USAGE;
-
-	fd = open(argv[1], O_RDONLY);
-	if (fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	/*
-	 * We can save the memcpy of the zImage if it already is in
-	 * the first 128MB of SDRAM.
-	 */
-	zimage = memmap(fd, PROT_READ);
-	if (zimage && (unsigned long)zimage  >= bank->start &&
-			(unsigned long)zimage < bank->start + SZ_128M) {
-		usemap = 1;
-		header = zimage;
-	}
-
-	if (!usemap) {
-		header = &__header;
-		ret = read(fd, header, sizeof(*header));
-		if (ret < sizeof(*header)) {
-			printf("could not read %s\n", argv[1]);
-			goto err_out;
-		}
-	}
-
-	switch (header->magic) {
-#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
-	case swab32(ZIMAGE_MAGIC):
-		swap = 1;
-		/* fall through */
-#endif
-	case ZIMAGE_MAGIC:
-		break;
-	default:
-		printf("invalid magic 0x%08x\n", header->magic);
-		goto err_out;
-	}
-
-	end = header->end;
-
-	if (swap)
-		end = swab32(end);
-
-	if (!usemap) {
-		if (bank->size <= SZ_128M) {
-			zimage = xmalloc(end);
-		} else {
-			zimage = (void *)bank->start + SZ_8M;
-			res = request_sdram_region("zimage",
-					bank->start + SZ_8M, end);
-			if (!res) {
-				printf("can't request region for kernel\n");
-				goto err_out1;
-			}
-		}
-
-		memcpy(zimage, header, sizeof(*header));
-
-		ret = read(fd, zimage + sizeof(*header), end - sizeof(*header));
-		if (ret < end - sizeof(*header)) {
-			printf("could not read %s\n", argv[1]);
-			goto err_out2;
-		}
-	}
-
-	if (swap) {
-		void *ptr;
-		for (ptr = zimage; ptr < zimage + end; ptr += 4)
-			*(u32 *)ptr = swab32(*(u32 *)ptr);
-	}
-
-	printf("loaded zImage from %s with size %d\n", argv[1], end);
-#ifdef CONFIG_OFTREE
-	oftree = of_get_fixed_tree(NULL);
-#endif
-
-	start_linux(zimage, swap, 0, 0, oftree);
-
-	return 0;
-
-err_out2:
-	if (res)
-		release_sdram_region(res);
-err_out1:
-	free(zimage);
-err_out:
-	close(fd);
-
-	return 1;
-}
-
-BAREBOX_CMD_START(bootz)
-	.cmd            = do_bootz,
-	BAREBOX_CMD_DESC("boot Linux zImage")
-	BAREBOX_CMD_OPTS("FILE")
-	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
-BAREBOX_CMD_END
-
diff --git a/arch/arm/lib/copy_template.S b/arch/arm/lib/copy_template.S
deleted file mode 100644
index d8eb063..0000000
--- a/arch/arm/lib/copy_template.S
+++ /dev/null
@@ -1,268 +0,0 @@
-/*
- *  linux/arch/arm/lib/copy_template.s
- *
- *  Code template for optimized memory copy functions
- *
- *  Author:	Nicolas Pitre
- *  Created:	Sep 28, 2005
- *  Copyright:	MontaVista Software, Inc.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  published by the Free Software Foundation.
- */
-
-/*
- * Theory of operation
- * -------------------
- *
- * This file provides the core code for a forward memory copy used in
- * the implementation of memcopy(), copy_to_user() and copy_from_user().
- *
- * The including file must define the following accessor macros
- * according to the need of the given function:
- *
- * ldr1w ptr reg abort
- *
- *	This loads one word from 'ptr', stores it in 'reg' and increments
- *	'ptr' to the next word. The 'abort' argument is used for fixup tables.
- *
- * ldr4w ptr reg1 reg2 reg3 reg4 abort
- * ldr8w ptr, reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
- *
- *	This loads four or eight words starting from 'ptr', stores them
- *	in provided registers and increments 'ptr' past those words.
- *	The'abort' argument is used for fixup tables.
- *
- * ldr1b ptr reg cond abort
- *
- *	Similar to ldr1w, but it loads a byte and increments 'ptr' one byte.
- *	It also must apply the condition code if provided, otherwise the
- *	"al" condition is assumed by default.
- *
- * str1w ptr reg abort
- * str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
- * str1b ptr reg cond abort
- *
- *	Same as their ldr* counterparts, but data is stored to 'ptr' location
- *	rather than being loaded.
- *
- * enter reg1 reg2
- *
- *	Preserve the provided registers on the stack plus any additional
- *	data as needed by the implementation including this code. Called
- *	upon code entry.
- *
- * exit reg1 reg2
- *
- *	Restore registers with the values previously saved with the
- *	'preserv' macro. Called upon code termination.
- *
- * LDR1W_SHIFT
- * STR1W_SHIFT
- *
- *	Correction to be applied to the "ip" register when branching into
- *	the ldr1w or str1w instructions (some of these macros may expand to
- *	than one 32bit instruction in Thumb-2)
- */
-
-
-		enter	r4, lr
-
-		subs	r2, r2, #4
-		blt	8f
-		ands	ip, r0, #3
-	PLD(	pld	[r1, #0]		)
-		bne	9f
-		ands	ip, r1, #3
-		bne	10f
-
-1:		subs	r2, r2, #(28)
-		stmfd	sp!, {r5 - r8}
-		blt	5f
-
-	CALGN(	ands	ip, r0, #31		)
-	CALGN(	rsb	r3, ip, #32		)
-	CALGN(	sbcnes	r4, r3, r2		)  @ C is always set here
-	CALGN(	bcs	2f			)
-	CALGN(	adr	r4, 6f			)
-	CALGN(	subs	r2, r2, r3		)  @ C gets set
-	CALGN(	add	pc, r4, ip		)
-
-	PLD(	pld	[r1, #0]		)
-2:	PLD(	subs	r2, r2, #96		)
-	PLD(	pld	[r1, #28]		)
-	PLD(	blt	4f			)
-	PLD(	pld	[r1, #60]		)
-	PLD(	pld	[r1, #92]		)
-
-3:	PLD(	pld	[r1, #124]		)
-4:		ldr8w	r1, r3, r4, r5, r6, r7, r8, ip, lr, abort=20f
-		subs	r2, r2, #32
-		str8w	r0, r3, r4, r5, r6, r7, r8, ip, lr, abort=20f
-		bge	3b
-	PLD(	cmn	r2, #96			)
-	PLD(	bge	4b			)
-
-5:		ands	ip, r2, #28
-		rsb	ip, ip, #32
-#if LDR1W_SHIFT > 0
-		lsl	ip, ip, #LDR1W_SHIFT
-#endif
-		addne	pc, pc, ip		@ C is always clear here
-		b	7f
-6:
-		.rept	(1 << LDR1W_SHIFT)
-		W(nop)
-		.endr
-		ldr1w	r1, r3, abort=20f
-		ldr1w	r1, r4, abort=20f
-		ldr1w	r1, r5, abort=20f
-		ldr1w	r1, r6, abort=20f
-		ldr1w	r1, r7, abort=20f
-		ldr1w	r1, r8, abort=20f
-		ldr1w	r1, lr, abort=20f
-
-#if LDR1W_SHIFT < STR1W_SHIFT
-		lsl	ip, ip, #STR1W_SHIFT - LDR1W_SHIFT
-#elif LDR1W_SHIFT > STR1W_SHIFT
-		lsr	ip, ip, #LDR1W_SHIFT - STR1W_SHIFT
-#endif
-		add	pc, pc, ip
-		nop
-		.rept	(1 << STR1W_SHIFT)
-		W(nop)
-		.endr
-		str1w	r0, r3, abort=20f
-		str1w	r0, r4, abort=20f
-		str1w	r0, r5, abort=20f
-		str1w	r0, r6, abort=20f
-		str1w	r0, r7, abort=20f
-		str1w	r0, r8, abort=20f
-		str1w	r0, lr, abort=20f
-
-	CALGN(	bcs	2b			)
-
-7:		ldmfd	sp!, {r5 - r8}
-
-8:		movs	r2, r2, lsl #31
-		ldr1b	r1, r3, ne, abort=21f
-		ldr1b	r1, r4, cs, abort=21f
-		ldr1b	r1, ip, cs, abort=21f
-		str1b	r0, r3, ne, abort=21f
-		str1b	r0, r4, cs, abort=21f
-		str1b	r0, ip, cs, abort=21f
-
-		exit	r4, pc
-
-9:		rsb	ip, ip, #4
-		cmp	ip, #2
-		ldr1b	r1, r3, gt, abort=21f
-		ldr1b	r1, r4, ge, abort=21f
-		ldr1b	r1, lr, abort=21f
-		str1b	r0, r3, gt, abort=21f
-		str1b	r0, r4, ge, abort=21f
-		subs	r2, r2, ip
-		str1b	r0, lr, abort=21f
-		blt	8b
-		ands	ip, r1, #3
-		beq	1b
-
-10:		bic	r1, r1, #3
-		cmp	ip, #2
-		ldr1w	r1, lr, abort=21f
-		beq	17f
-		bgt	18f
-
-
-		.macro	forward_copy_shift pull push
-
-		subs	r2, r2, #28
-		blt	14f
-
-	CALGN(	ands	ip, r0, #31		)
-	CALGN(	rsb	ip, ip, #32		)
-	CALGN(	sbcnes	r4, ip, r2		)  @ C is always set here
-	CALGN(	subcc	r2, r2, ip		)
-	CALGN(	bcc	15f			)
-
-11:		stmfd	sp!, {r5 - r9}
-
-	PLD(	pld	[r1, #0]		)
-	PLD(	subs	r2, r2, #96		)
-	PLD(	pld	[r1, #28]		)
-	PLD(	blt	13f			)
-	PLD(	pld	[r1, #60]		)
-	PLD(	pld	[r1, #92]		)
-
-12:	PLD(	pld	[r1, #124]		)
-13:		ldr4w	r1, r4, r5, r6, r7, abort=19f
-		mov	r3, lr, pull #\pull
-		subs	r2, r2, #32
-		ldr4w	r1, r8, r9, ip, lr, abort=19f
-		orr	r3, r3, r4, push #\push
-		mov	r4, r4, pull #\pull
-		orr	r4, r4, r5, push #\push
-		mov	r5, r5, pull #\pull
-		orr	r5, r5, r6, push #\push
-		mov	r6, r6, pull #\pull
-		orr	r6, r6, r7, push #\push
-		mov	r7, r7, pull #\pull
-		orr	r7, r7, r8, push #\push
-		mov	r8, r8, pull #\pull
-		orr	r8, r8, r9, push #\push
-		mov	r9, r9, pull #\pull
-		orr	r9, r9, ip, push #\push
-		mov	ip, ip, pull #\pull
-		orr	ip, ip, lr, push #\push
-		str8w	r0, r3, r4, r5, r6, r7, r8, r9, ip, , abort=19f
-		bge	12b
-	PLD(	cmn	r2, #96			)
-	PLD(	bge	13b			)
-
-		ldmfd	sp!, {r5 - r9}
-
-14:		ands	ip, r2, #28
-		beq	16f
-
-15:		mov	r3, lr, pull #\pull
-		ldr1w	r1, lr, abort=21f
-		subs	ip, ip, #4
-		orr	r3, r3, lr, push #\push
-		str1w	r0, r3, abort=21f
-		bgt	15b
-	CALGN(	cmp	r2, #0			)
-	CALGN(	bge	11b			)
-
-16:		sub	r1, r1, #(\push / 8)
-		b	8b
-
-		.endm
-
-
-		forward_copy_shift	pull=8	push=24
-
-17:		forward_copy_shift	pull=16	push=16
-
-18:		forward_copy_shift	pull=24	push=8
-
-
-/*
- * Abort preamble and completion macros.
- * If a fixup handler is required then those macros must surround it.
- * It is assumed that the fixup code will handle the private part of
- * the exit macro.
- */
-
-	.macro	copy_abort_preamble
-19:	ldmfd	sp!, {r5 - r9}
-	b	21f
-20:	ldmfd	sp!, {r5 - r8}
-21:
-	.endm
-
-	.macro	copy_abort_end
-	ldmfd	sp!, {r4, pc}
-	.endm
-
-
diff --git a/arch/arm/lib/div0.c b/arch/arm/lib/div0.c
deleted file mode 100644
index 852cb72..0000000
--- a/arch/arm/lib/div0.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * (C) Copyright 2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-
-extern void __div0(void);
-
-/* Replacement (=dummy) for GNU/Linux division-by zero handler */
-void __div0 (void)
-{
-	panic("division by zero\n");
-}
diff --git a/arch/arm/lib/findbit.S b/arch/arm/lib/findbit.S
deleted file mode 100644
index ef4caff..0000000
--- a/arch/arm/lib/findbit.S
+++ /dev/null
@@ -1,197 +0,0 @@
-/*
- * Originally from Linux kernel
- *  arch/arm/lib/findbit.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * 16th March 2001 - John Ripley <jripley@sonicblue.com>
- *   Fixed so that "size" is an exclusive not an inclusive quantity.
- *   All users of these functions expect exclusive sizes, and may
- *   also call with zero size.
- * Reworked by rmk.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-                .text
-
-/*
- * Purpose  : Find a 'zero' bit
- * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
- */
-ENTRY(_find_first_zero_bit_le)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eors	r3, r3, #0xff		@ invert bits
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_zero_bit_le)
-
-/*
- * Purpose  : Find next 'zero' bit
- * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
- */
-ENTRY(_find_next_zero_bit_le)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eor	r3, r3, #0xff		@ now looking for a 1 bit
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_zero_bit_le)
-
-/*
- * Purpose  : Find a 'one' bit
- * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
- */
-ENTRY(_find_first_bit_le)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_bit_le)
-
-/*
- * Purpose  : Find next 'one' bit
- * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
- */
-ENTRY(_find_next_bit_le)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
- ARM(		ldrb	r3, [r0, r2, lsr #3]	)
- THUMB(		lsr	r3, r2, #3		)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_bit_le)
-
-#ifdef __ARMEB__
-
-ENTRY(_find_first_zero_bit_be)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eors	r3, r3, #0xff		@ invert bits
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_zero_bit_be)
-
-ENTRY(_find_next_zero_bit_be)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
-		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		eor	r3, r3, #0xff		@ now looking for a 1 bit
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_zero_bit_be)
-
-ENTRY(_find_first_bit_be)
-		teq	r1, #0
-		beq	3f
-		mov	r2, #0
-1:		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3
-		bne	.L_found		@ any now set - found zero bit
-		add	r2, r2, #8		@ next bit pointer
-2:		cmp	r2, r1			@ any more?
-		blo	1b
-3:		mov	r0, r1			@ no free bits
-		mov	pc, lr
-ENDPROC(_find_first_bit_be)
-
-ENTRY(_find_next_bit_be)
-		teq	r1, #0
-		beq	3b
-		ands	ip, r2, #7
-		beq	1b			@ If new byte, goto old routine
-		eor	r3, r2, #0x18		@ big endian byte ordering
- ARM(		ldrb	r3, [r0, r3, lsr #3]	)
- THUMB(		lsr	r3, #3			)
- THUMB(		ldrb	r3, [r0, r3]		)
-		movs	r3, r3, lsr ip		@ shift off unused bits
-		bne	.L_found
-		orr	r2, r2, #7		@ if zero, then no bits here
-		add	r2, r2, #1		@ align bit pointer
-		b	2b			@ loop for next bit
-ENDPROC(_find_next_bit_be)
-
-#endif
-
-/*
- * One or more bits in the LSB of r3 are assumed to be set.
- */
-.L_found:
-#if __LINUX_ARM_ARCH__ >= 5
-		rsb	r0, r3, #0
-		and	r3, r3, r0
-		clz	r3, r3
-		rsb	r3, r3, #31
-		add	r0, r2, r3
-#else
-		tst	r3, #0x0f
-		addeq	r2, r2, #4
-		movne	r3, r3, lsl #4
-		tst	r3, #0x30
-		addeq	r2, r2, #2
-		movne	r3, r3, lsl #2
-		tst	r3, #0x40
-		addeq	r2, r2, #1
-		mov	r0, r2
-#endif
-		cmp	r1, r0			@ Clamp to maxbit
-		movlo	r0, r1
-		mov	pc, lr
-
diff --git a/arch/arm/lib/io-readsb.S b/arch/arm/lib/io-readsb.S
deleted file mode 100644
index 963c455..0000000
--- a/arch/arm/lib/io-readsb.S
+++ /dev/null
@@ -1,125 +0,0 @@
-/*
- *  linux/arch/arm/lib/io-readsb.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section .text.readsb
-
-.Linsb_align:	rsb	ip, ip, #4
-		cmp	ip, r2
-		movgt	ip, r2
-		cmp	ip, #2
-		ldrb	r3, [r0]
-		strb	r3, [r1], #1
-		ldrgeb	r3, [r0]
-		strgeb	r3, [r1], #1
-		ldrgtb	r3, [r0]
-		strgtb	r3, [r1], #1
-		subs	r2, r2, ip
-		bne	.Linsb_aligned
-
-ENTRY(readsb)
-		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
-		ands	ip, r1, #3
-		bne	.Linsb_align
-
-.Linsb_aligned:	stmfd	sp!, {r4 - r6, lr}
-
-		subs	r2, r2, #16
-		bmi	.Linsb_no_16
-
-.Linsb_16_lp:	ldrb	r3, [r0]
-		ldrb	r4, [r0]
-		ldrb	r5, [r0]
-		mov	r3, r3,     put_byte_0
-		ldrb	r6, [r0]
-		orr	r3, r3, r4, put_byte_1
-		ldrb	r4, [r0]
-		orr	r3, r3, r5, put_byte_2
-		ldrb	r5, [r0]
-		orr	r3, r3, r6, put_byte_3
-		ldrb	r6, [r0]
-		mov	r4, r4,     put_byte_0
-		ldrb	ip, [r0]
-		orr	r4, r4, r5, put_byte_1
-		ldrb	r5, [r0]
-		orr	r4, r4, r6, put_byte_2
-		ldrb	r6, [r0]
-		orr	r4, r4, ip, put_byte_3
-		ldrb	ip, [r0]
-		mov	r5, r5,     put_byte_0
-		ldrb	lr, [r0]
-		orr	r5, r5, r6, put_byte_1
-		ldrb	r6, [r0]
-		orr	r5, r5, ip, put_byte_2
-		ldrb	ip, [r0]
-		orr	r5, r5, lr, put_byte_3
-		ldrb	lr, [r0]
-		mov	r6, r6,     put_byte_0
-		orr	r6, r6, ip, put_byte_1
-		ldrb	ip, [r0]
-		orr	r6, r6, lr, put_byte_2
-		orr	r6, r6, ip, put_byte_3
-		stmia	r1!, {r3 - r6}
-
-		subs	r2, r2, #16
-		bpl	.Linsb_16_lp
-
-		tst	r2, #15
-		ldmeqfd	sp!, {r4 - r6, pc}
-
-.Linsb_no_16:	tst	r2, #8
-		beq	.Linsb_no_8
-
-		ldrb	r3, [r0]
-		ldrb	r4, [r0]
-		ldrb	r5, [r0]
-		mov	r3, r3,     put_byte_0
-		ldrb	r6, [r0]
-		orr	r3, r3, r4, put_byte_1
-		ldrb	r4, [r0]
-		orr	r3, r3, r5, put_byte_2
-		ldrb	r5, [r0]
-		orr	r3, r3, r6, put_byte_3
-		ldrb	r6, [r0]
-		mov	r4, r4,     put_byte_0
-		ldrb	ip, [r0]
-		orr	r4, r4, r5, put_byte_1
-		orr	r4, r4, r6, put_byte_2
-		orr	r4, r4, ip, put_byte_3
-		stmia	r1!, {r3, r4}
-
-.Linsb_no_8:	tst	r2, #4
-		beq	.Linsb_no_4
-
-		ldrb	r3, [r0]
-		ldrb	r4, [r0]
-		ldrb	r5, [r0]
-		ldrb	r6, [r0]
-		mov	r3, r3,     put_byte_0
-		orr	r3, r3, r4, put_byte_1
-		orr	r3, r3, r5, put_byte_2
-		orr	r3, r3, r6, put_byte_3
-		str	r3, [r1], #4
-
-.Linsb_no_4:	ands	r2, r2, #3
-		ldmeqfd	sp!, {r4 - r6, pc}
-
-		cmp	r2, #2
-		ldrb	r3, [r0]
-		strb	r3, [r1], #1
-		ldrgeb	r3, [r0]
-		strgeb	r3, [r1], #1
-		ldrgtb	r3, [r0]
-		strgtb	r3, [r1]
-
-		ldmfd	sp!, {r4 - r6, pc}
-ENDPROC(readsb)
diff --git a/arch/arm/lib/io-readsl.S b/arch/arm/lib/io-readsl.S
deleted file mode 100644
index 47a2974..0000000
--- a/arch/arm/lib/io-readsl.S
+++ /dev/null
@@ -1,81 +0,0 @@
-/*
- *  linux/arch/arm/lib/io-readsl.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section .text.readsl
-
-ENTRY(readsl)
-		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
-		ands	ip, r1, #3
-		bne	3f
-
-		subs	r2, r2, #4
-		bmi	2f
-		stmfd	sp!, {r4, lr}
-1:		ldr	r3, [r0, #0]
-		ldr	r4, [r0, #0]
-		ldr	ip, [r0, #0]
-		ldr	lr, [r0, #0]
-		subs	r2, r2, #4
-		stmia	r1!, {r3, r4, ip, lr}
-		bpl	1b
-		ldmfd	sp!, {r4, lr}
-2:		movs	r2, r2, lsl #31
-		ldrcs	r3, [r0, #0]
-		ldrcs	ip, [r0, #0]
-		stmcsia	r1!, {r3, ip}
-		ldrne	r3, [r0, #0]
-		strne	r3, [r1, #0]
-		mov	pc, lr
-
-3:		ldr	r3, [r0]
-		cmp	ip, #2
-		mov	ip, r3, get_byte_0
-		strb	ip, [r1], #1
-		bgt	6f
-		mov	ip, r3, get_byte_1
-		strb	ip, [r1], #1
-		beq	5f
-		mov	ip, r3, get_byte_2
-		strb	ip, [r1], #1
-
-4:		subs	r2, r2, #1
-		mov	ip, r3, pull #24
-		ldrne	r3, [r0]
-		orrne	ip, ip, r3, push #8
-		strne	ip, [r1], #4
-		bne	4b
-		b	8f
-
-5:		subs	r2, r2, #1
-		mov	ip, r3, pull #16
-		ldrne	r3, [r0]
-		orrne	ip, ip, r3, push #16
-		strne	ip, [r1], #4
-		bne	5b
-		b	7f
-
-6:		subs	r2, r2, #1
-		mov	ip, r3, pull #8
-		ldrne	r3, [r0]
-		orrne	ip, ip, r3, push #24
-		strne	ip, [r1], #4
-		bne	6b
-
-		mov	r3, ip, get_byte_2
-		strb	r3, [r1, #2]
-7:		mov	r3, ip, get_byte_1
-		strb	r3, [r1, #1]
-8:		mov	r3, ip, get_byte_0
-		strb	r3, [r1, #0]
-		mov	pc, lr
-ENDPROC(readsl)
diff --git a/arch/arm/lib/io-readsw-armv4.S b/arch/arm/lib/io-readsw-armv4.S
deleted file mode 100644
index f5b34a3..0000000
--- a/arch/arm/lib/io-readsw-armv4.S
+++ /dev/null
@@ -1,133 +0,0 @@
-/*
- *  linux/arch/arm/lib/io-readsw-armv4.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-		.macro	pack, rd, hw1, hw2
-#ifndef __ARMEB__
-		orr	\rd, \hw1, \hw2, lsl #16
-#else
-		orr	\rd, \hw2, \hw1, lsl #16
-#endif
-		.endm
-
-.section .text.readsw
-
-.Linsw_align:	movs	ip, r1, lsl #31
-		bne	.Linsw_noalign
-		ldrh	ip, [r0]
-		sub	r2, r2, #1
-		strh	ip, [r1], #2
-
-ENTRY(readsw)
-		teq	r2, #0
-		moveq	pc, lr
-		tst	r1, #3
-		bne	.Linsw_align
-
-		stmfd	sp!, {r4, r5, lr}
-
-		subs	r2, r2, #8
-		bmi	.Lno_insw_8
-
-.Linsw_8_lp:	ldrh	r3, [r0]
-		ldrh	r4, [r0]
-		pack	r3, r3, r4
-
-		ldrh	r4, [r0]
-		ldrh	r5, [r0]
-		pack	r4, r4, r5
-
-		ldrh	r5, [r0]
-		ldrh	ip, [r0]
-		pack	r5, r5, ip
-
-		ldrh	ip, [r0]
-		ldrh	lr, [r0]
-		pack	ip, ip, lr
-
-		subs	r2, r2, #8
-		stmia	r1!, {r3 - r5, ip}
-		bpl	.Linsw_8_lp
-
-.Lno_insw_8:	tst	r2, #4
-		beq	.Lno_insw_4
-
-		ldrh	r3, [r0]
-		ldrh	r4, [r0]
-		pack	r3, r3, r4
-
-		ldrh	r4, [r0]
-		ldrh	ip, [r0]
-		pack	r4, r4, ip
-
-		stmia	r1!, {r3, r4}
-
-.Lno_insw_4:	movs	r2, r2, lsl #31
-		bcc	.Lno_insw_2
-
-		ldrh	r3, [r0]
-		ldrh	ip, [r0]
-		pack	r3, r3, ip
-		str	r3, [r1], #4
-
-.Lno_insw_2:	ldrneh	r3, [r0]
-		strneh	r3, [r1]
-
-		ldmfd	sp!, {r4, r5, pc}
-
-#ifdef __ARMEB__
-#define _BE_ONLY_(code...)	code
-#define _LE_ONLY_(code...)
-#define push_hbyte0		lsr #8
-#define pull_hbyte1		lsl #24
-#else
-#define _BE_ONLY_(code...)
-#define _LE_ONLY_(code...) code
-#define push_hbyte0		lsl #24
-#define pull_hbyte1		lsr #8
-#endif
-
-.Linsw_noalign:	stmfd	sp!, {r4, lr}
-		ldrccb	ip, [r1, #-1]!
-		bcc	1f
-
-		ldrh	ip, [r0]
-		sub	r2, r2, #1
-   _BE_ONLY_(	mov	ip, ip, ror #8		)
-		strb	ip, [r1], #1
-   _LE_ONLY_(	mov	ip, ip, lsr #8		)
-   _BE_ONLY_(	mov	ip, ip, lsr #24		)
-
-1:		subs	r2, r2, #2
-		bmi	3f
-   _BE_ONLY_(	mov	ip, ip, lsl #24		)
-
-2:		ldrh	r3, [r0]
-		ldrh	r4, [r0]
-		subs	r2, r2, #2
-		orr	ip, ip, r3, lsl #8
-		orr	ip, ip, r4, push_hbyte0
-		str	ip, [r1], #4
-		mov	ip, r4, pull_hbyte1
-		bpl	2b
-
-   _BE_ONLY_(	mov	ip, ip, lsr #24		)
-
-3:		tst	r2, #1
-		strb	ip, [r1], #1
-		ldrneh	ip, [r0]
-   _BE_ONLY_(	movne	ip, ip, ror #8		)
-		strneb	ip, [r1], #1
-   _LE_ONLY_(	movne	ip, ip, lsr #8		)
-   _BE_ONLY_(	movne	ip, ip, lsr #24		)
-		strneb	ip, [r1]
-		ldmfd	sp!, {r4, pc}
-ENDPROC(readsw)
diff --git a/arch/arm/lib/io-writesb.S b/arch/arm/lib/io-writesb.S
deleted file mode 100644
index 1ab8e47..0000000
--- a/arch/arm/lib/io-writesb.S
+++ /dev/null
@@ -1,96 +0,0 @@
-/*
- *  linux/arch/arm/lib/io-writesb.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-		.macro	outword, rd
-#ifndef __ARMEB__
-		strb	\rd, [r0]
-		mov	\rd, \rd, lsr #8
-		strb	\rd, [r0]
-		mov	\rd, \rd, lsr #8
-		strb	\rd, [r0]
-		mov	\rd, \rd, lsr #8
-		strb	\rd, [r0]
-#else
-		mov	lr, \rd, lsr #24
-		strb	lr, [r0]
-		mov	lr, \rd, lsr #16
-		strb	lr, [r0]
-		mov	lr, \rd, lsr #8
-		strb	lr, [r0]
-		strb	\rd, [r0]
-#endif
-		.endm
-
-.section .text.writesb
-
-.Loutsb_align:	rsb	ip, ip, #4
-		cmp	ip, r2
-		movgt	ip, r2
-		cmp	ip, #2
-		ldrb	r3, [r1], #1
-		strb	r3, [r0]
-		ldrgeb	r3, [r1], #1
-		strgeb	r3, [r0]
-		ldrgtb	r3, [r1], #1
-		strgtb	r3, [r0]
-		subs	r2, r2, ip
-		bne	.Loutsb_aligned
-
-ENTRY(writesb)
-		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
-		ands	ip, r1, #3
-		bne	.Loutsb_align
-
-.Loutsb_aligned:
-		stmfd	sp!, {r4, r5, lr}
-
-		subs	r2, r2, #16
-		bmi	.Loutsb_no_16
-
-.Loutsb_16_lp:	ldmia	r1!, {r3, r4, r5, ip}
-		outword	r3
-		outword	r4
-		outword	r5
-		outword	ip
-		subs	r2, r2, #16
-		bpl	.Loutsb_16_lp
-
-		tst	r2, #15
-		ldmeqfd	sp!, {r4, r5, pc}
-
-.Loutsb_no_16:	tst	r2, #8
-		beq	.Loutsb_no_8
-
-		ldmia	r1!, {r3, r4}
-		outword	r3
-		outword	r4
-
-.Loutsb_no_8:	tst	r2, #4
-		beq	.Loutsb_no_4
-
-		ldr	r3, [r1], #4
-		outword	r3
-
-.Loutsb_no_4:	ands	r2, r2, #3
-		ldmeqfd	sp!, {r4, r5, pc}
-
-		cmp	r2, #2
-		ldrb	r3, [r1], #1
-		strb	r3, [r0]
-		ldrgeb	r3, [r1], #1
-		strgeb	r3, [r0]
-		ldrgtb	r3, [r1]
-		strgtb	r3, [r0]
-
-		ldmfd	sp!, {r4, r5, pc}
-ENDPROC(writesb)
diff --git a/arch/arm/lib/io-writesl.S b/arch/arm/lib/io-writesl.S
deleted file mode 100644
index 8a3bcd6..0000000
--- a/arch/arm/lib/io-writesl.S
+++ /dev/null
@@ -1,69 +0,0 @@
-/*
- *  linux/arch/arm/lib/io-writesl.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section .text.writesl
-
-ENTRY(writesl)
-		teq	r2, #0		@ do we have to check for the zero len?
-		moveq	pc, lr
-		ands	ip, r1, #3
-		bne	3f
-
-		subs	r2, r2, #4
-		bmi	2f
-		stmfd	sp!, {r4, lr}
-1:		ldmia	r1!, {r3, r4, ip, lr}
-		subs	r2, r2, #4
-		str	r3, [r0, #0]
-		str	r4, [r0, #0]
-		str	ip, [r0, #0]
-		str	lr, [r0, #0]
-		bpl	1b
-		ldmfd	sp!, {r4, lr}
-2:		movs	r2, r2, lsl #31
-		ldmcsia	r1!, {r3, ip}
-		strcs	r3, [r0, #0]
-		ldrne	r3, [r1, #0]
-		strcs	ip, [r0, #0]
-		strne	r3, [r0, #0]
-		mov	pc, lr
-
-3:		bic	r1, r1, #3
-		ldr	r3, [r1], #4
-		cmp	ip, #2
-		blt	5f
-		bgt	6f
-
-4:		mov	ip, r3, pull #16
-		ldr	r3, [r1], #4
-		subs	r2, r2, #1
-		orr	ip, ip, r3, push #16
-		str	ip, [r0]
-		bne	4b
-		mov	pc, lr
-
-5:		mov	ip, r3, pull #8
-		ldr	r3, [r1], #4
-		subs	r2, r2, #1
-		orr	ip, ip, r3, push #24
-		str	ip, [r0]
-		bne	5b
-		mov	pc, lr
-
-6:		mov	ip, r3, pull #24
-		ldr	r3, [r1], #4
-		subs	r2, r2, #1
-		orr	ip, ip, r3, push #8
-		str	ip, [r0]
-		bne	6b
-		mov	pc, lr
-ENDPROC(writesl)
diff --git a/arch/arm/lib/io-writesw-armv4.S b/arch/arm/lib/io-writesw-armv4.S
deleted file mode 100644
index 9e8308d..0000000
--- a/arch/arm/lib/io-writesw-armv4.S
+++ /dev/null
@@ -1,102 +0,0 @@
-/*
- *  linux/arch/arm/lib/io-writesw-armv4.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-		.macro	outword, rd
-#ifndef __ARMEB__
-		strh	\rd, [r0]
-		mov	\rd, \rd, lsr #16
-		strh	\rd, [r0]
-#else
-		mov	lr, \rd, lsr #16
-		strh	lr, [r0]
-		strh	\rd, [r0]
-#endif
-		.endm
-
-.section .text.__raw_writesw
-
-.Loutsw_align:	movs	ip, r1, lsl #31
-		bne	.Loutsw_noalign
-
-		ldrh	r3, [r1], #2
-		sub	r2, r2, #1
-		strh	r3, [r0]
-
-ENTRY(__raw_writesw)
-		teq	r2, #0
-		moveq	pc, lr
-		ands	r3, r1, #3
-		bne	.Loutsw_align
-
-		stmfd	sp!, {r4, r5, lr}
-
-		subs	r2, r2, #8
-		bmi	.Lno_outsw_8
-
-.Loutsw_8_lp:	ldmia	r1!, {r3, r4, r5, ip}
-		subs	r2, r2, #8
-		outword	r3
-		outword	r4
-		outword	r5
-		outword	ip
-		bpl	.Loutsw_8_lp
-
-.Lno_outsw_8:	tst	r2, #4
-		beq	.Lno_outsw_4
-
-		ldmia	r1!, {r3, ip}
-		outword	r3
-		outword	ip
-
-.Lno_outsw_4:	movs	r2, r2, lsl #31
-		bcc	.Lno_outsw_2
-
-		ldr	r3, [r1], #4
-		outword	r3
-
-.Lno_outsw_2:	ldrneh	r3, [r1]
-		strneh	r3, [r0]
-
-		ldmfd	sp!, {r4, r5, pc}
-
-#ifdef __ARMEB__
-#define pull_hbyte0	lsl #8
-#define push_hbyte1	lsr #24
-#else
-#define pull_hbyte0	lsr #24
-#define push_hbyte1	lsl #8
-#endif
-
-.Loutsw_noalign:
- ARM(		ldr	r3, [r1, -r3]!	)
- THUMB(		rsb	r3, r3, #0	)
- THUMB(		ldr	r3, [r1, r3]	)
- THUMB(		sub	r1, r3		)
-		subcs	r2, r2, #1
-		bcs	2f
-		subs	r2, r2, #2
-		bmi	3f
-
-1:		mov	ip, r3, lsr #8
-		strh	ip, [r0]
-2:		mov	ip, r3, pull_hbyte0
-		ldr	r3, [r1, #4]!
-		subs	r2, r2, #2
-		orr	ip, ip, r3, push_hbyte1
-		strh	ip, [r0]
-		bpl	1b
-
-		tst	r2, #1
-3:		movne	ip, r3, lsr #8
-		strneh	ip, [r0]
-		mov	pc, lr
-ENDPROC(__raw_writesw)
diff --git a/arch/arm/lib/io.c b/arch/arm/lib/io.c
deleted file mode 100644
index abfd887..0000000
--- a/arch/arm/lib/io.c
+++ /dev/null
@@ -1,50 +0,0 @@
-#include <module.h>
-#include <linux/types.h>
-#include <io.h>
-
-/*
- * Copy data from IO memory space to "real" memory space.
- * This needs to be optimized.
- */
-void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
-{
-	unsigned char *t = to;
-	while (count) {
-		count--;
-		*t = readb(from);
-		t++;
-		from++;
-	}
-}
-
-/*
- * Copy data from "real" memory space to IO memory space.
- * This needs to be optimized.
- */
-void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
-{
-	const unsigned char *f = from;
-	while (count) {
-		count--;
-		writeb(*f, to);
-		f++;
-		to++;
-	}
-}
-
-/*
- * "memset" on IO memory space.
- * This needs to be optimized.
- */
-void memset_io(volatile void __iomem *dst, int c, size_t count)
-{
-	while (count) {
-		count--;
-		writeb(c, dst);
-		dst++;
-	}
-}
-
-EXPORT_SYMBOL(memcpy_fromio);
-EXPORT_SYMBOL(memcpy_toio);
-EXPORT_SYMBOL(memset_io);
diff --git a/arch/arm/lib/lib1funcs.S b/arch/arm/lib/lib1funcs.S
deleted file mode 100644
index bf1d019..0000000
--- a/arch/arm/lib/lib1funcs.S
+++ /dev/null
@@ -1,351 +0,0 @@
-/*
- * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
- *
- * Author: Nicolas Pitre <nico@fluxnic.net>
- *   - contributed to gcc-3.4 on Sep 30, 2003
- *   - adapted for the Linux kernel on Oct 2, 2003
- */
-
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-*/
-
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-
-.macro ARM_DIV_BODY dividend, divisor, result, curbit
-
-#if __LINUX_ARM_ARCH__ >= 5
-
-	clz	\curbit, \divisor
-	clz	\result, \dividend
-	sub	\result, \curbit, \result
-	mov	\curbit, #1
-	mov	\divisor, \divisor, lsl \result
-	mov	\curbit, \curbit, lsl \result
-	mov	\result, #0
-
-#else
-
-	@ Initially shift the divisor left 3 bits if possible,
-	@ set curbit accordingly.  This allows for curbit to be located
-	@ at the left end of each 4 bit nibbles in the division loop
-	@ to save one loop in most cases.
-	tst	\divisor, #0xe0000000
-	moveq	\divisor, \divisor, lsl #3
-	moveq	\curbit, #8
-	movne	\curbit, #1
-
-	@ Unless the divisor is very big, shift it up in multiples of
-	@ four bits, since this is the amount of unwinding in the main
-	@ division loop.  Continue shifting until the divisor is
-	@ larger than the dividend.
-1:	cmp	\divisor, #0x10000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #4
-	movlo	\curbit, \curbit, lsl #4
-	blo	1b
-
-	@ For very big divisors, we must shift it a bit at a time, or
-	@ we will be in danger of overflowing.
-1:	cmp	\divisor, #0x80000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #1
-	movlo	\curbit, \curbit, lsl #1
-	blo	1b
-
-	mov	\result, #0
-
-#endif
-
-	@ Division loop
-1:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	orrhs	\result,   \result,   \curbit
-	cmp	\dividend, \divisor,  lsr #1
-	subhs	\dividend, \dividend, \divisor, lsr #1
-	orrhs	\result,   \result,   \curbit,  lsr #1
-	cmp	\dividend, \divisor,  lsr #2
-	subhs	\dividend, \dividend, \divisor, lsr #2
-	orrhs	\result,   \result,   \curbit,  lsr #2
-	cmp	\dividend, \divisor,  lsr #3
-	subhs	\dividend, \dividend, \divisor, lsr #3
-	orrhs	\result,   \result,   \curbit,  lsr #3
-	cmp	\dividend, #0			@ Early termination?
-	movnes	\curbit,   \curbit,  lsr #4	@ No, any more bits to do?
-	movne	\divisor,  \divisor, lsr #4
-	bne	1b
-
-.endm
-
-
-.macro ARM_DIV2_ORDER divisor, order
-
-#if __LINUX_ARM_ARCH__ >= 5
-
-	clz	\order, \divisor
-	rsb	\order, \order, #31
-
-#else
-
-	cmp	\divisor, #(1 << 16)
-	movhs	\divisor, \divisor, lsr #16
-	movhs	\order, #16
-	movlo	\order, #0
-
-	cmp	\divisor, #(1 << 8)
-	movhs	\divisor, \divisor, lsr #8
-	addhs	\order, \order, #8
-
-	cmp	\divisor, #(1 << 4)
-	movhs	\divisor, \divisor, lsr #4
-	addhs	\order, \order, #4
-
-	cmp	\divisor, #(1 << 2)
-	addhi	\order, \order, #3
-	addls	\order, \order, \divisor, lsr #1
-
-#endif
-
-.endm
-
-
-.macro ARM_MOD_BODY dividend, divisor, order, spare
-
-#if __LINUX_ARM_ARCH__ >= 5
-
-	clz	\order, \divisor
-	clz	\spare, \dividend
-	sub	\order, \order, \spare
-	mov	\divisor, \divisor, lsl \order
-
-#else
-
-	mov	\order, #0
-
-	@ Unless the divisor is very big, shift it up in multiples of
-	@ four bits, since this is the amount of unwinding in the main
-	@ division loop.  Continue shifting until the divisor is
-	@ larger than the dividend.
-1:	cmp	\divisor, #0x10000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #4
-	addlo	\order, \order, #4
-	blo	1b
-
-	@ For very big divisors, we must shift it a bit at a time, or
-	@ we will be in danger of overflowing.
-1:	cmp	\divisor, #0x80000000
-	cmplo	\divisor, \dividend
-	movlo	\divisor, \divisor, lsl #1
-	addlo	\order, \order, #1
-	blo	1b
-
-#endif
-
-	@ Perform all needed substractions to keep only the reminder.
-	@ Do comparisons in batch of 4 first.
-	subs	\order, \order, #3		@ yes, 3 is intended here
-	blt	2f
-
-1:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	cmp	\dividend, \divisor,  lsr #1
-	subhs	\dividend, \dividend, \divisor, lsr #1
-	cmp	\dividend, \divisor,  lsr #2
-	subhs	\dividend, \dividend, \divisor, lsr #2
-	cmp	\dividend, \divisor,  lsr #3
-	subhs	\dividend, \dividend, \divisor, lsr #3
-	cmp	\dividend, #1
-	mov	\divisor, \divisor, lsr #4
-	subges	\order, \order, #4
-	bge	1b
-
-	tst	\order, #3
-	teqne	\dividend, #0
-	beq	5f
-
-	@ Either 1, 2 or 3 comparison/substractions are left.
-2:	cmn	\order, #2
-	blt	4f
-	beq	3f
-	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	mov	\divisor,  \divisor,  lsr #1
-3:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-	mov	\divisor,  \divisor,  lsr #1
-4:	cmp	\dividend, \divisor
-	subhs	\dividend, \dividend, \divisor
-5:
-.endm
-
-
-.section .text.__udivsi3
-ENTRY(__udivsi3)
-ENTRY(__aeabi_uidiv)
-
-	subs	r2, r1, #1
-	moveq	pc, lr
-	bcc	Ldiv0
-	cmp	r0, r1
-	bls	11f
-	tst	r1, r2
-	beq	12f
-
-	ARM_DIV_BODY r0, r1, r2, r3
-
-	mov	r0, r2
-	mov	pc, lr
-
-11:	moveq	r0, #1
-	movne	r0, #0
-	mov	pc, lr
-
-12:	ARM_DIV2_ORDER r1, r2
-
-	mov	r0, r0, lsr r2
-	mov	pc, lr
-
-ENDPROC(__udivsi3)
-ENDPROC(__aeabi_uidiv)
-
-.section .text.__umodsi3
-ENTRY(__umodsi3)
-
-	subs	r2, r1, #1			@ compare divisor with 1
-	bcc	Ldiv0
-	cmpne	r0, r1				@ compare dividend with divisor
-	moveq   r0, #0
-	tsthi	r1, r2				@ see if divisor is power of 2
-	andeq	r0, r0, r2
-	movls	pc, lr
-
-	ARM_MOD_BODY r0, r1, r2, r3
-
-	mov	pc, lr
-
-ENDPROC(__umodsi3)
-
-.section .text.__divsi3
-ENTRY(__divsi3)
-ENTRY(__aeabi_idiv)
-
-	cmp	r1, #0
-	eor	ip, r0, r1			@ save the sign of the result.
-	beq	Ldiv0
-	rsbmi	r1, r1, #0			@ loops below use unsigned.
-	subs	r2, r1, #1			@ division by 1 or -1 ?
-	beq	10f
-	movs	r3, r0
-	rsbmi	r3, r0, #0			@ positive dividend value
-	cmp	r3, r1
-	bls	11f
-	tst	r1, r2				@ divisor is power of 2 ?
-	beq	12f
-
-	ARM_DIV_BODY r3, r1, r0, r2
-
-	cmp	ip, #0
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-10:	teq	ip, r0				@ same sign ?
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-11:	movlo	r0, #0
-	moveq	r0, ip, asr #31
-	orreq	r0, r0, #1
-	mov	pc, lr
-
-12:	ARM_DIV2_ORDER r1, r2
-
-	cmp	ip, #0
-	mov	r0, r3, lsr r2
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-ENDPROC(__divsi3)
-ENDPROC(__aeabi_idiv)
-
-.section .text.__modsi3
-ENTRY(__modsi3)
-
-	cmp	r1, #0
-	beq	Ldiv0
-	rsbmi	r1, r1, #0			@ loops below use unsigned.
-	movs	ip, r0				@ preserve sign of dividend
-	rsbmi	r0, r0, #0			@ if negative make positive
-	subs	r2, r1, #1			@ compare divisor with 1
-	cmpne	r0, r1				@ compare dividend with divisor
-	moveq	r0, #0
-	tsthi	r1, r2				@ see if divisor is power of 2
-	andeq	r0, r0, r2
-	bls	10f
-
-	ARM_MOD_BODY r0, r1, r2, r3
-
-10:	cmp	ip, #0
-	rsbmi	r0, r0, #0
-	mov	pc, lr
-
-ENDPROC(__modsi3)
-
-#ifdef CONFIG_AEABI
-
-.section .text.__aeabi_uidivmod
-ENTRY(__aeabi_uidivmod)
-
-	stmfd	sp!, {r0, r1, ip, lr}
-	bl	__aeabi_uidiv
-	ldmfd	sp!, {r1, r2, ip, lr}
-	mul	r3, r0, r2
-	sub	r1, r1, r3
-	mov	pc, lr
-
-ENDPROC(__aeabi_uidivmod)
-
-.section .text.__aeabi_idivmod
-ENTRY(__aeabi_idivmod)
-
-	stmfd	sp!, {r0, r1, ip, lr}
-	bl	__aeabi_idiv
-	ldmfd	sp!, {r1, r2, ip, lr}
-	mul	r3, r0, r2
-	sub	r1, r1, r3
-	mov	pc, lr
-
-ENDPROC(__aeabi_idivmod)
-
-#endif
-
-.section .text.Ldiv0
-Ldiv0:
-
-	str	lr, [sp, #-8]!
-	bl	__div0
-	mov	r0, #0			@ About as wrong as it could be.
-	ldr	pc, [sp], #8
-
-
diff --git a/arch/arm/lib/lshrdi3.S b/arch/arm/lib/lshrdi3.S
deleted file mode 100644
index e77e96c..0000000
--- a/arch/arm/lib/lshrdi3.S
+++ /dev/null
@@ -1,50 +0,0 @@
-/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
-   Free Software Foundation, Inc.
-
-This file is free software; you can redistribute it and/or modify it
-under the terms of the GNU General Public License as published by the
-Free Software Foundation; either version 2, or (at your option) any
-later version.
-
-In addition to the permissions in the GNU General Public License, the
-Free Software Foundation gives you unlimited permission to link the
-compiled version of this file into combinations with other programs,
-and to distribute those combinations without any restriction coming
-from the use of this file.  (The General Public License restrictions
-do apply in other respects; for example, they cover modification of
-the file, and distribution when not linked into a combine
-executable.)
-
-This file is distributed in the hope that it will be useful, but
-WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-General Public License for more details.
-
-*/
-
-#include <linux/linkage.h>
-
-#ifdef __ARMEB__
-#define al r1
-#define ah r0
-#else
-#define al r0
-#define ah r1
-#endif
-
-.section .text.__lshrdi3
-ENTRY(__lshrdi3)
-ENTRY(__aeabi_llsr)
-
-	subs	r3, r2, #32
-	rsb	ip, r2, #32
-	movmi	al, al, lsr r2
-	movpl	al, ah, lsr r3
- ARM(	orrmi	al, al, ah, lsl ip	)
- THUMB(	lslmi	r3, ah, ip		)
- THUMB(	orrmi	al, al, r3		)
-	mov	ah, ah, lsr r2
-	mov	pc, lr
-
-ENDPROC(__lshrdi3)
-ENDPROC(__aeabi_llsr)
diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
deleted file mode 100644
index 5123691..0000000
--- a/arch/arm/lib/memcpy.S
+++ /dev/null
@@ -1,64 +0,0 @@
-/*
- *  linux/arch/arm/lib/memcpy.S
- *
- *  Author:	Nicolas Pitre
- *  Created:	Sep 28, 2005
- *  Copyright:	MontaVista Software, Inc.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  published by the Free Software Foundation.
- */
-
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-#define LDR1W_SHIFT	0
-#define STR1W_SHIFT	0
-
-	.macro ldr1w ptr reg abort
-	W(ldr) \reg, [\ptr], #4
-	.endm
-
-	.macro ldr4w ptr reg1 reg2 reg3 reg4 abort
-	ldmia \ptr!, {\reg1, \reg2, \reg3, \reg4}
-	.endm
-
-	.macro ldr8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
-	ldmia \ptr!, {\reg1, \reg2, \reg3, \reg4, \reg5, \reg6, \reg7, \reg8}
-	.endm
-
-	.macro ldr1b ptr reg cond=al abort
-	ldr\cond\()b \reg, [\ptr], #1
-	.endm
-
-	.macro str1w ptr reg abort
-	W(str) \reg, [\ptr], #4
-	.endm
-
-	.macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
-	stmia \ptr!, {\reg1, \reg2, \reg3, \reg4, \reg5, \reg6, \reg7, \reg8}
-	.endm
-
-	.macro str1b ptr reg cond=al abort
-	str\cond\()b \reg, [\ptr], #1
-	.endm
-
-	.macro enter reg1 reg2
-	stmdb sp!, {r0, \reg1, \reg2}
-	.endm
-
-	.macro exit reg1 reg2
-	ldmfd sp!, {r0, \reg1, \reg2}
-	.endm
-
-	.text
-
-/* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
-
-ENTRY(memcpy)
-
-#include "copy_template.S"
-
-ENDPROC(memcpy)
-
diff --git a/arch/arm/lib/memset.S b/arch/arm/lib/memset.S
deleted file mode 100644
index c4d2672..0000000
--- a/arch/arm/lib/memset.S
+++ /dev/null
@@ -1,124 +0,0 @@
-/*
- *  linux/arch/arm/lib/memset.S
- *
- *  Copyright (C) 1995-2000 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- *  ASM optimised string functions
- */
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-	.text
-	.align	5
-
-ENTRY(memset)
-	ands	r3, r0, #3		@ 1 unaligned?
-	mov	ip, r0			@ preserve r0 as return value
-	bne	6f			@ 1
-/*
- * we know that the pointer in ip is aligned to a word boundary.
- */
-1:	orr	r1, r1, r1, lsl #8
-	orr	r1, r1, r1, lsl #16
-	mov	r3, r1
-	cmp	r2, #16
-	blt	4f
-
-#if ! CALGN(1)+0
-
-/*
- * We need an 2 extra registers for this loop - use r8 and the LR
- */
-	stmfd	sp!, {r8, lr}
-	mov	r8, r1
-	mov	lr, r1
-
-2:	subs	r2, r2, #64
-	stmgeia	ip!, {r1, r3, r8, lr}	@ 64 bytes at a time.
-	stmgeia	ip!, {r1, r3, r8, lr}
-	stmgeia	ip!, {r1, r3, r8, lr}
-	stmgeia	ip!, {r1, r3, r8, lr}
-	bgt	2b
-	ldmeqfd	sp!, {r8, pc}		@ Now <64 bytes to go.
-/*
- * No need to correct the count; we're only testing bits from now on
- */
-	tst	r2, #32
-	stmneia	ip!, {r1, r3, r8, lr}
-	stmneia	ip!, {r1, r3, r8, lr}
-	tst	r2, #16
-	stmneia	ip!, {r1, r3, r8, lr}
-	ldmfd	sp!, {r8, lr}
-
-#else
-
-/*
- * This version aligns the destination pointer in order to write
- * whole cache lines at once.
- */
-
-	stmfd	sp!, {r4-r8, lr}
-	mov	r4, r1
-	mov	r5, r1
-	mov	r6, r1
-	mov	r7, r1
-	mov	r8, r1
-	mov	lr, r1
-
-	cmp	r2, #96
-	tstgt	ip, #31
-	ble	3f
-
-	and	r8, ip, #31
-	rsb	r8, r8, #32
-	sub	r2, r2, r8
-	movs	r8, r8, lsl #(32 - 4)
-	stmcsia	ip!, {r4, r5, r6, r7}
-	stmmiia	ip!, {r4, r5}
-	tst	r8, #(1 << 30)
-	mov	r8, r1
-	strne	r1, [ip], #4
-
-3:	subs	r2, r2, #64
-	stmgeia	ip!, {r1, r3-r8, lr}
-	stmgeia	ip!, {r1, r3-r8, lr}
-	bgt	3b
-	ldmeqfd	sp!, {r4-r8, pc}
-
-	tst	r2, #32
-	stmneia	ip!, {r1, r3-r8, lr}
-	tst	r2, #16
-	stmneia	ip!, {r4-r7}
-	ldmfd	sp!, {r4-r8, lr}
-
-#endif
-
-4:	tst	r2, #8
-	stmneia	ip!, {r1, r3}
-	tst	r2, #4
-	strne	r1, [ip], #4
-/*
- * When we get here, we've got less than 4 bytes to zero.  We
- * may have an unaligned pointer as well.
- */
-5:	tst	r2, #2
-	strneb	r1, [ip], #1
-	strneb	r1, [ip], #1
-	tst	r2, #1
-	strneb	r1, [ip], #1
-	mov	pc, lr
-
-6:	subs	r2, r2, #4		@ 1 do we have enough
-	blt	5b			@ 1 bytes to align with?
-	cmp	r3, #2			@ 1
-	strltb	r1, [ip], #1		@ 1
-	strleb	r1, [ip], #1		@ 1
-	strb	r1, [ip], #1		@ 1
-	add	r2, r2, r3		@ 1 (r2 = r2 - (4 - r3))
-	b	1b
-ENDPROC(memset)
-
diff --git a/arch/arm/lib/module.c b/arch/arm/lib/module.c
deleted file mode 100644
index be7965d..0000000
--- a/arch/arm/lib/module.c
+++ /dev/null
@@ -1,98 +0,0 @@
-/*
- *  linux/arch/arm/kernel/module.c
- *
- *  Copyright (C) 2002 Russell King.
- *  Modified for nommu by Hyok S. Choi
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * Module allocation method suggested by Andi Kleen.
- */
-
-//#include <asm/pgtable.h>
-#include <common.h>
-#include <elf.h>
-#include <module.h>
-#include <errno.h>
-
-int
-apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
-	       unsigned int relindex, struct module *module)
-{
-	Elf32_Shdr *symsec = sechdrs + symindex;
-	Elf32_Shdr *relsec = sechdrs + relindex;
-	Elf32_Shdr *dstsec = sechdrs + relsec->sh_info;
-	Elf32_Rel *rel = (void *)relsec->sh_addr;
-	unsigned int i;
-
-	for (i = 0; i < relsec->sh_size / sizeof(Elf32_Rel); i++, rel++) {
-		unsigned long loc;
-		Elf32_Sym *sym;
-		s32 offset;
-
-		offset = ELF32_R_SYM(rel->r_info);
-		if (offset < 0 || offset > (symsec->sh_size / sizeof(Elf32_Sym))) {
-			printf("%s: bad relocation, section %u reloc %u\n",
-				module->name, relindex, i);
-			return -ENOEXEC;
-		}
-
-		sym = ((Elf32_Sym *)symsec->sh_addr) + offset;
-
-		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
-			printf("%s: out of bounds relocation, "
-				"section %u reloc %u offset %d size %d\n",
-				module->name, relindex, i, rel->r_offset,
-				dstsec->sh_size);
-			return -ENOEXEC;
-		}
-
-		loc = dstsec->sh_addr + rel->r_offset;
-
-		switch (ELF32_R_TYPE(rel->r_info)) {
-		case R_ARM_ABS32:
-			*(u32 *)loc += sym->st_value;
-			break;
-
-		case R_ARM_PC24:
-		case R_ARM_CALL:
-		case R_ARM_JUMP24:
-			offset = (*(u32 *)loc & 0x00ffffff) << 2;
-			if (offset & 0x02000000)
-				offset -= 0x04000000;
-
-			offset += sym->st_value - loc;
-			if (offset & 3 ||
-			    offset <= (s32)0xfe000000 ||
-			    offset >= (s32)0x02000000) {
-				printf("%s: relocation out of range, section "
-				       "%u reloc %u sym '%s'\n", module->name,
-				       relindex, i, strtab + sym->st_name);
-				return -ENOEXEC;
-			}
-
-			offset >>= 2;
-
-			*(u32 *)loc &= 0xff000000;
-			*(u32 *)loc |= offset & 0x00ffffff;
-			break;
-
-		default:
-			printf("%s: unknown relocation: %u\n",
-			       module->name, ELF32_R_TYPE(rel->r_info));
-			return -ENOEXEC;
-		}
-	}
-	return 0;
-}
-
-int
-apply_relocate_add(Elf32_Shdr *sechdrs, const char *strtab,
-		   unsigned int symindex, unsigned int relsec, struct module *module)
-{
-	printf("module %s: ADD RELOCATION unsupported\n",
-	       module->name);
-	return -ENOEXEC;
-}
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
deleted file mode 100644
index 73baff0..0000000
--- a/arch/arm/lib/pbl.lds.S
+++ /dev/null
@@ -1,96 +0,0 @@
-/*
- * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <linux/sizes.h>
-#include <asm-generic/barebox.lds.h>
-#include <asm-generic/memory_layout.h>
-
-#ifdef CONFIG_PBL_RELOCATABLE
-#define BASE	0x0
-#else
-#define BASE	(TEXT_BASE - SZ_2M)
-#endif
-
-OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
-OUTPUT_ARCH(arm)
-SECTIONS
-{
-	. = BASE;
-
-	PRE_IMAGE
-
-	. = ALIGN(4);
-	.text      :
-	{
-		_stext = .;
-		_text = .;
-		*(.text_head_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
-		*(.text*)
-	}
-
-	/* Discard unwind if enable in barebox */
-	/DISCARD/ : { *(.ARM.ex*) }
-
-	BAREBOX_BARE_INIT_SIZE
-	BAREBOX_PBL_SIZE
-
-	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
-
-	.barebox_imd : { BAREBOX_IMD }
-
-	_etext = .;			/* End of text and rodata section */
-
-	. = ALIGN(4);
-	.data : { *(.data*) }
-
-	.rel.dyn : {
-		__rel_dyn_start = .;
-		*(.rel*)
-		__rel_dyn_end = .;
-	}
-
-	.dynsym : {
-		__dynsym_start = .;
-		*(.dynsym)
-		__dynsym_end = .;
-	}
-
-	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
-	_end = .;
-
-	. = ALIGN(4);
-	__piggydata_start = .;
-	.piggydata : {
-		*(.piggydata)
-	}
-	__piggydata_end = .;
-
-	. = ALIGN(4);
-	.image_end : {
-		KEEP(*(.image_end))
-	}
-	__image_end = .;
-	_barebox_image_size = __image_end - BASE;
-	_barebox_pbl_size = __bss_start - BASE;
-}
diff --git a/arch/arm/lib/runtime-offset.S b/arch/arm/lib/runtime-offset.S
deleted file mode 100644
index f10c4c8..0000000
--- a/arch/arm/lib/runtime-offset.S
+++ /dev/null
@@ -1,52 +0,0 @@
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section ".text_bare_init","ax"
-
-/*
- * Get the offset between the link address and the address
- * we are currently running at.
- */
-ENTRY(get_runtime_offset)
-1:	adr r0, 1b
-	ldr r1, linkadr
-	subs r0, r1, r0
-THUMB(	subs r0, r0, #1)
-	mov pc, lr
-
-linkadr:
-.word get_runtime_offset
-ENDPROC(get_runtime_offset)
-
-.globl __ld_var_base
-__ld_var_base:
-
-/*
- * Functions to calculate selected linker supplied variables during runtime.
- * This is needed for relocatable binaries when the linker variables are
- * needed before finxing up the relocations.
- */
-.macro ld_var_entry name
-	ENTRY(__ld_var_\name)
-		ldr r0, __\name
-		b 1f
-	__\name: .word \name - __ld_var_base
-	ENDPROC(__ld_var_\name)
-.endm
-
-ld_var_entry _text
-ld_var_entry __rel_dyn_start
-ld_var_entry __rel_dyn_end
-ld_var_entry __dynsym_start
-ld_var_entry __dynsym_end
-ld_var_entry _barebox_image_size
-ld_var_entry __bss_start
-ld_var_entry __bss_stop
-#ifdef __PBL__
-ld_var_entry __image_end
-#endif
-
-1:
-	ldr r1, =__ld_var_base
-	adds r0, r0, r1
-	mov pc, lr
diff --git a/arch/arm/lib/semihosting-trap.S b/arch/arm/lib/semihosting-trap.S
deleted file mode 100644
index 9e40ebf..0000000
--- a/arch/arm/lib/semihosting-trap.S
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * semihosting-trap.S -- Assembly code needed to make a semihosting call
- *
- * Copyright (c) 2015 Zodiac Inflight Innovations
- * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#include <linux/linkage.h>
-#include <asm/unified.h>
-
-.section .text.semihosting_trap
-ENTRY(semihosting_trap)
-	@ In supervisor mode SVC would clobber LR
-	push	{lr}
-	ARM(	svc	#0x123456	)
-	THUMB(	svc	#0xAB		)
-	pop	{pc}
-ENDPROC(semihosting_trap)
diff --git a/arch/arm/lib/semihosting.c b/arch/arm/lib/semihosting.c
deleted file mode 100644
index a735196..0000000
--- a/arch/arm/lib/semihosting.c
+++ /dev/null
@@ -1,227 +0,0 @@
-/*
- * semihosting.c -- ARM Semihoting API implementation
- *
- * Copyright (c) 2015 Zodiac Inflight Innovations
- * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
- *
- * based on a smiliar code from U-Boot
- * Copyright (c) 2014 Broadcom Corporation
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <command.h>
-#include <fcntl.h>
-
-#ifndef O_BINARY
-#define O_BINARY	0
-#endif
-
-
-enum {
-	SEMIHOSTING_SYS_OPEN	= 0x01,
-	SEMIHOSTING_SYS_CLOSE	= 0x02,
-	SEMIHOSTING_SYS_WRITEC	= 0x03,
-	SEMIHOSTING_SYS_WRITE0	= 0x04,
-	SEMIHOSTING_SYS_WRITE	= 0x05,
-	SEMIHOSTING_SYS_READ	= 0x06,
-	SEMIHOSTING_SYS_READC	= 0x07,
-	/* SYS_ISERROR is not implemented  */
-	SEMIHOSTING_SYS_ISATTY	= 0x09,
-	SEMIHOSTING_SYS_SEEK	= 0x0a,
-	SEMIHOSTING_SYS_FLEN	= 0x0c,
-	SEMIHOSTING_SYS_REMOVE	= 0x0e,
-	SEMIHOSTING_SYS_RENAME	= 0x0f,
-	SEMIHOSTING_SYS_TIME	= 0x11,
-	SEMIHOSTING_SYS_ERRNO	= 0x13,
-	/* SYS_GET_CMDLINE is not implemented */
-	/* SYS_HEAPINFO is not implemented */
-	/* angel_SWIreason_ReportException is not implemented */
-	SEMIHOSTING_SYS_SYSTEM	= 0x12,
-};
-
-uint32_t semihosting_trap(uint32_t sysnum, void *addr);
-
-static uint32_t semihosting_flags_to_mode(int flags)
-{
-	static const int semihosting_open_modeflags[12] = {
-		O_RDONLY,
-		O_RDONLY | O_BINARY,
-		O_RDWR,
-		O_RDWR | O_BINARY,
-		O_WRONLY | O_CREAT | O_TRUNC,
-		O_WRONLY | O_CREAT | O_TRUNC | O_BINARY,
-		O_RDWR | O_CREAT | O_TRUNC,
-		O_RDWR | O_CREAT | O_TRUNC | O_BINARY,
-		O_WRONLY | O_CREAT | O_APPEND,
-		O_WRONLY | O_CREAT | O_APPEND | O_BINARY,
-		O_RDWR | O_CREAT | O_APPEND,
-		O_RDWR | O_CREAT | O_APPEND | O_BINARY
-	};
-
-	int i;
-	for (i = 0; i < ARRAY_SIZE(semihosting_open_modeflags); i++) {
-		if (semihosting_open_modeflags[i] == flags)
-			return i;
-	}
-
-	return 0;
-}
-
-int semihosting_open(const char *fname, int flags)
-{
-	struct __packed {
-		uint32_t fname;
-		uint32_t mode;
-		uint32_t len;
-	} open = {
-		.fname = (uint32_t)fname,
-		.len = strlen(fname),
-		.mode = semihosting_flags_to_mode(flags),
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_OPEN, &open);
-}
-EXPORT_SYMBOL(semihosting_open);
-
-int semihosting_close(int fd)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_CLOSE, &fd);
-}
-EXPORT_SYMBOL(semihosting_close);
-
-int semihosting_writec(char c)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_WRITEC, &c);
-}
-EXPORT_SYMBOL(semihosting_writec);
-
-int semihosting_write0(const char *str)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_WRITE0, (void *)str);
-}
-EXPORT_SYMBOL(semihosting_write0);
-
-struct __packed semihosting_file_io {
-	uint32_t fd;
-	uint32_t memp;
-	uint32_t len;
-};
-
-ssize_t semihosting_write(int fd, const void *buf, size_t count)
-{
-	struct semihosting_file_io write = {
-		.fd = fd,
-		.memp = (uint32_t)buf,
-		.len = count,
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_WRITE, &write);
-}
-EXPORT_SYMBOL(semihosting_write);
-
-ssize_t semihosting_read(int fd, void *buf, size_t count)
-{
-	struct semihosting_file_io read = {
-		.fd = fd,
-		.memp = (uint32_t)buf,
-		.len = count,
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_READ, &read);
-}
-EXPORT_SYMBOL(semihosting_read);
-
-int semihosting_readc(void)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_READC, NULL);
-}
-EXPORT_SYMBOL(semihosting_readc);
-
-int semihosting_isatty(int fd)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_ISATTY, &fd);
-}
-EXPORT_SYMBOL(semihosting_isatty);
-
-int semihosting_seek(int fd, off_t pos)
-{
-	struct __packed {
-		uint32_t fd;
-		uint32_t pos;
-	} seek = {
-		.fd = fd,
-		.pos = pos,
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_SEEK, &seek);
-}
-EXPORT_SYMBOL(semihosting_seek);
-
-int semihosting_flen(int fd)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_FLEN, &fd);
-}
-EXPORT_SYMBOL(semihosting_flen);
-
-int semihosting_remove(const char *fname)
-{
-	struct __packed {
-		uint32_t fname;
-		uint32_t fname_length;
-	} remove = {
-		.fname = (uint32_t)fname,
-		.fname_length = strlen(fname),
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_REMOVE, &remove);
-}
-EXPORT_SYMBOL(semihosting_remove);
-
-int semihosting_rename(const char *fname1, const char *fname2)
-{
-	struct __packed {
-		uint32_t fname1;
-		uint32_t fname1_length;
-		uint32_t fname2;
-		uint32_t fname2_length;
-	} rename = {
-		.fname1 = (uint32_t)fname1,
-		.fname1_length = strlen(fname1),
-		.fname2 = (uint32_t)fname2,
-		.fname2_length = strlen(fname2),
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_RENAME, &rename);
-}
-EXPORT_SYMBOL(semihosting_rename);
-
-int semihosting_errno(void)
-{
-	return semihosting_trap(SEMIHOSTING_SYS_ERRNO, NULL);
-}
-EXPORT_SYMBOL(semihosting_errno);
-
-
-int semihosting_system(const char *command)
-{
-	struct __packed {
-		uint32_t cmd;
-		uint32_t cmd_len;
-	} system = {
-		.cmd = (uint32_t)command,
-		.cmd_len = strlen(command),
-	};
-
-	return semihosting_trap(SEMIHOSTING_SYS_SYSTEM, &system);
-}
-EXPORT_SYMBOL(semihosting_system);
diff --git a/arch/arm/lib/unwind.c b/arch/arm/lib/unwind.c
deleted file mode 100644
index c3dca5b..0000000
--- a/arch/arm/lib/unwind.c
+++ /dev/null
@@ -1,349 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <asm/stacktrace.h>
-#include <asm/unwind.h>
-#include <asm/sections.h>
-
-/* Dummy functions to avoid linker complaints */
-void __aeabi_unwind_cpp_pr0(void)
-{
-};
-EXPORT_SYMBOL(__aeabi_unwind_cpp_pr0);
-
-void __aeabi_unwind_cpp_pr1(void)
-{
-};
-EXPORT_SYMBOL(__aeabi_unwind_cpp_pr1);
-
-void __aeabi_unwind_cpp_pr2(void)
-{
-};
-EXPORT_SYMBOL(__aeabi_unwind_cpp_pr2);
-
-struct unwind_ctrl_block {
-	unsigned long vrs[16];		/* virtual register set */
-	unsigned long *insn;		/* pointer to the current instructions word */
-	int entries;			/* number of entries left to interpret */
-	int byte;			/* current byte number in the instructions word */
-};
-
-enum regs {
-	FP = 11,
-	SP = 13,
-	LR = 14,
-	PC = 15
-};
-
-#define THREAD_SIZE               8192
-
-extern struct unwind_idx __start_unwind_idx[];
-extern struct unwind_idx __stop_unwind_idx[];
-
-/* Convert a prel31 symbol to an absolute address */
-#define prel31_to_addr(ptr)				\
-({							\
-	/* sign-extend to 32 bits */			\
-	long offset = (((long)*(ptr)) << 1) >> 1;	\
-	(unsigned long)(ptr) + offset;			\
-})
-
-static inline int is_kernel_text(unsigned long addr)
-{
-	if ((addr >= (unsigned long)_stext && addr <= (unsigned long)_etext))
-		return 1;
-	return 0;
-}
-
-void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
-{
-#ifdef CONFIG_KALLSYMS
-	printk("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
-#else
-	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
-#endif
-}
-
-/*
- * Binary search in the unwind index. The entries entries are
- * guaranteed to be sorted in ascending order by the linker.
- */
-static struct unwind_idx *search_index(unsigned long addr,
-				       struct unwind_idx *first,
-				       struct unwind_idx *last)
-{
-	pr_debug("%s(%08lx, %p, %p)\n", __func__, addr, first, last);
-
-	if (addr < first->addr) {
-		pr_warning("unwind: Unknown symbol address %08lx\n", addr);
-		return NULL;
-	} else if (addr >= last->addr)
-		return last;
-
-	while (first < last - 1) {
-		struct unwind_idx *mid = first + ((last - first + 1) >> 1);
-
-		if (addr < mid->addr)
-			last = mid;
-		else
-			first = mid;
-	}
-
-	return first;
-}
-
-static struct unwind_idx *unwind_find_idx(unsigned long addr)
-{
-	struct unwind_idx *idx = NULL;
-
-	pr_debug("%s(%08lx)\n", __func__, addr);
-
-	if (is_kernel_text(addr))
-		/* main unwind table */
-		idx = search_index(addr, __start_unwind_idx,
-				   __stop_unwind_idx - 1);
-	else {
-		/* module unwinding not supported */
-	}
-
-	pr_debug("%s: idx = %p\n", __func__, idx);
-	return idx;
-}
-
-static unsigned long unwind_get_byte(struct unwind_ctrl_block *ctrl)
-{
-	unsigned long ret;
-
-	if (ctrl->entries <= 0) {
-		pr_warning("unwind: Corrupt unwind table\n");
-		return 0;
-	}
-
-	ret = (*ctrl->insn >> (ctrl->byte * 8)) & 0xff;
-
-	if (ctrl->byte == 0) {
-		ctrl->insn++;
-		ctrl->entries--;
-		ctrl->byte = 3;
-	} else
-		ctrl->byte--;
-
-	return ret;
-}
-
-/*
- * Execute the current unwind instruction.
- */
-static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
-{
-	unsigned long insn = unwind_get_byte(ctrl);
-
-	pr_debug("%s: insn = %08lx\n", __func__, insn);
-
-	if ((insn & 0xc0) == 0x00)
-		ctrl->vrs[SP] += ((insn & 0x3f) << 2) + 4;
-	else if ((insn & 0xc0) == 0x40)
-		ctrl->vrs[SP] -= ((insn & 0x3f) << 2) + 4;
-	else if ((insn & 0xf0) == 0x80) {
-		unsigned long mask;
-		unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
-		int load_sp, reg = 4;
-
-		insn = (insn << 8) | unwind_get_byte(ctrl);
-		mask = insn & 0x0fff;
-		if (mask == 0) {
-			pr_warning("unwind: 'Refuse to unwind' instruction %04lx\n",
-				   insn);
-			return -URC_FAILURE;
-		}
-
-		/* pop R4-R15 according to mask */
-		load_sp = mask & (1 << (13 - 4));
-		while (mask) {
-			if (mask & 1)
-				ctrl->vrs[reg] = *vsp++;
-			mask >>= 1;
-			reg++;
-		}
-		if (!load_sp)
-			ctrl->vrs[SP] = (unsigned long)vsp;
-	} else if ((insn & 0xf0) == 0x90 &&
-		   (insn & 0x0d) != 0x0d)
-		ctrl->vrs[SP] = ctrl->vrs[insn & 0x0f];
-	else if ((insn & 0xf0) == 0xa0) {
-		unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
-		int reg;
-
-		/* pop R4-R[4+bbb] */
-		for (reg = 4; reg <= 4 + (insn & 7); reg++)
-			ctrl->vrs[reg] = *vsp++;
-		if (insn & 0x80)
-			ctrl->vrs[14] = *vsp++;
-		ctrl->vrs[SP] = (unsigned long)vsp;
-	} else if (insn == 0xb0) {
-		if (ctrl->vrs[PC] == 0)
-			ctrl->vrs[PC] = ctrl->vrs[LR];
-		/* no further processing */
-		ctrl->entries = 0;
-	} else if (insn == 0xb1) {
-		unsigned long mask = unwind_get_byte(ctrl);
-		unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
-		int reg = 0;
-
-		if (mask == 0 || mask & 0xf0) {
-			pr_warning("unwind: Spare encoding %04lx\n",
-			       (insn << 8) | mask);
-			return -URC_FAILURE;
-		}
-
-		/* pop R0-R3 according to mask */
-		while (mask) {
-			if (mask & 1)
-				ctrl->vrs[reg] = *vsp++;
-			mask >>= 1;
-			reg++;
-		}
-		ctrl->vrs[SP] = (unsigned long)vsp;
-	} else if (insn == 0xb2) {
-		unsigned long uleb128 = unwind_get_byte(ctrl);
-
-		ctrl->vrs[SP] += 0x204 + (uleb128 << 2);
-	} else {
-		pr_warning("unwind: Unhandled instruction %02lx\n", insn);
-		return -URC_FAILURE;
-	}
-
-	pr_debug("%s: fp = %08lx sp = %08lx lr = %08lx pc = %08lx\n", __func__,
-		 ctrl->vrs[FP], ctrl->vrs[SP], ctrl->vrs[LR], ctrl->vrs[PC]);
-
-	return URC_OK;
-}
-
-/*
- * Unwind a single frame starting with *sp for the symbol at *pc. It
- * updates the *pc and *sp with the new values.
- */
-int unwind_frame(struct stackframe *frame)
-{
-	unsigned long high, low;
-	struct unwind_idx *idx;
-	struct unwind_ctrl_block ctrl;
-
-	/* only go to a higher address on the stack */
-	low = frame->sp;
-	high = ALIGN(low, THREAD_SIZE);
-
-	pr_debug("%s(pc = %08lx lr = %08lx sp = %08lx)\n", __func__,
-		 frame->pc, frame->lr, frame->sp);
-
-	if (!is_kernel_text(frame->pc))
-		return -URC_FAILURE;
-
-	idx = unwind_find_idx(frame->pc);
-	if (!idx) {
-		pr_warning("unwind: Index not found %08lx\n", frame->pc);
-		return -URC_FAILURE;
-	}
-
-	ctrl.vrs[FP] = frame->fp;
-	ctrl.vrs[SP] = frame->sp;
-	ctrl.vrs[LR] = frame->lr;
-	ctrl.vrs[PC] = 0;
-
-	if (idx->insn == 1)
-		/* can't unwind */
-		return -URC_FAILURE;
-	else if ((idx->insn & 0x80000000) == 0)
-		/* prel31 to the unwind table */
-		ctrl.insn = (unsigned long *)prel31_to_addr(&idx->insn);
-	else if ((idx->insn & 0xff000000) == 0x80000000)
-		/* only personality routine 0 supported in the index */
-		ctrl.insn = &idx->insn;
-	else {
-		pr_warning("unwind: Unsupported personality routine %08lx in the index at %p\n",
-			   idx->insn, idx);
-		return -URC_FAILURE;
-	}
-
-	/* check the personality routine */
-	if ((*ctrl.insn & 0xff000000) == 0x80000000) {
-		ctrl.byte = 2;
-		ctrl.entries = 1;
-	} else if ((*ctrl.insn & 0xff000000) == 0x81000000) {
-		ctrl.byte = 1;
-		ctrl.entries = 1 + ((*ctrl.insn & 0x00ff0000) >> 16);
-	} else {
-		pr_warning("unwind: Unsupported personality routine %08lx at %p\n",
-			   *ctrl.insn, ctrl.insn);
-		return -URC_FAILURE;
-	}
-
-	while (ctrl.entries > 0) {
-		int urc = unwind_exec_insn(&ctrl);
-		if (urc < 0)
-			return urc;
-		if (ctrl.vrs[SP] < low || ctrl.vrs[SP] >= high)
-			return -URC_FAILURE;
-	}
-
-	if (ctrl.vrs[PC] == 0)
-		ctrl.vrs[PC] = ctrl.vrs[LR];
-
-	/* check for infinite loop */
-	if (frame->pc == ctrl.vrs[PC])
-		return -URC_FAILURE;
-
-	frame->fp = ctrl.vrs[FP];
-	frame->sp = ctrl.vrs[SP];
-	frame->lr = ctrl.vrs[LR];
-	frame->pc = ctrl.vrs[PC];
-
-	return URC_OK;
-}
-
-void unwind_backtrace(struct pt_regs *regs)
-{
-	struct stackframe frame;
-	register unsigned long current_sp asm ("sp");
-
-	pr_debug("%s\n", __func__);
-
-	if (regs) {
-		frame.fp = regs->ARM_fp;
-		frame.sp = regs->ARM_sp;
-		frame.lr = regs->ARM_lr;
-		/* PC might be corrupted, use LR in that case. */
-		frame.pc = is_kernel_text(regs->ARM_pc)
-			 ? regs->ARM_pc : regs->ARM_lr;
-	} else {
-		frame.sp = current_sp;
-		frame.lr = (unsigned long)__builtin_return_address(0);
-		frame.pc = (unsigned long)unwind_backtrace;
-	}
-
-	while (1) {
-		int urc;
-		unsigned long where = frame.pc;
-
-		urc = unwind_frame(&frame);
-		if (urc < 0)
-			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4);
-	}
-}
-
-void dump_stack(void)
-{
-	unwind_backtrace(NULL);
-}
-
-static int unwind_init(void)
-{
-	struct unwind_idx *idx;
-
-	/* Convert the symbol addresses to absolute values */
-	for (idx = __start_unwind_idx; idx < __stop_unwind_idx; idx++)
-		idx->addr = prel31_to_addr(&idx->addr);
-
-	return 0;
-}
-core_initcall(unwind_init);
diff --git a/arch/arm/lib32/.gitignore b/arch/arm/lib32/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/arm/lib32/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
new file mode 100644
index 0000000..cdd0732
--- /dev/null
+++ b/arch/arm/lib32/Makefile
@@ -0,0 +1,27 @@
+obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
+obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
+obj-y	+= div0.o
+obj-y	+= findbit.o
+obj-y	+= io.o
+obj-y	+= io-readsb.o
+obj-y	+= io-readsw-armv4.o
+obj-y	+= io-readsl.o
+obj-y	+= io-writesb.o
+obj-y	+= io-writesw-armv4.o
+obj-y	+= io-writesl.o
+obj-y	+= lib1funcs.o
+obj-y	+= ashrdi3.o
+obj-y	+= ashldi3.o
+obj-y	+= lshrdi3.o
+obj-y	+= runtime-offset.o
+pbl-y	+= runtime-offset.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
+obj-$(CONFIG_ARM_UNWIND) += unwind.o
+obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap.o semihosting.o
+obj-$(CONFIG_MODULES) += module.o
+extra-y += barebox.lds
+
+pbl-y	+= lib1funcs.o
+pbl-y	+= ashldi3.o
+pbl-y	+= div0.o
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
new file mode 100644
index 0000000..47b9bd3
--- /dev/null
+++ b/arch/arm/lib32/armlinux.c
@@ -0,0 +1,281 @@
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
+	if (swap) {
+		u32 reg;
+		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=r" (reg));
+		reg ^= CR_B; /* swap big-endian flag */
+		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
+	}
+
+	kernel(0, architecture, params);
+}
diff --git a/arch/arm/lib32/ashldi3.S b/arch/arm/lib32/ashldi3.S
new file mode 100644
index 0000000..b62e06f
--- /dev/null
+++ b/arch/arm/lib32/ashldi3.S
@@ -0,0 +1,50 @@
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
+   Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+*/
+
+#include <linux/linkage.h>
+
+#ifdef __ARMEB__
+#define al r1
+#define ah r0
+#else
+#define al r0
+#define ah r1
+#endif
+
+.section .text.__ashldi3
+ENTRY(__ashldi3)
+ENTRY(__aeabi_llsl)
+
+	subs	r3, r2, #32
+	rsb	ip, r2, #32
+	movmi	ah, ah, lsl r2
+	movpl	ah, al, lsl r3
+ ARM(	orrmi	ah, ah, al, lsr ip	)
+ THUMB(	lsrmi	r3, al, ip		)
+ THUMB(	orrmi	ah, ah, r3		)
+	mov	al, al, lsl r2
+	mov	pc, lr
+
+ENDPROC(__ashldi3)
+ENDPROC(__aeabi_llsl)
diff --git a/arch/arm/lib32/ashrdi3.S b/arch/arm/lib32/ashrdi3.S
new file mode 100644
index 0000000..db849b6
--- /dev/null
+++ b/arch/arm/lib32/ashrdi3.S
@@ -0,0 +1,50 @@
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
+   Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+*/
+
+#include <linux/linkage.h>
+
+#ifdef __ARMEB__
+#define al r1
+#define ah r0
+#else
+#define al r0
+#define ah r1
+#endif
+
+.section .text.__ashrdi3
+ENTRY(__ashrdi3)
+ENTRY(__aeabi_lasr)
+
+	subs	r3, r2, #32
+	rsb	ip, r2, #32
+	movmi	al, al, lsr r2
+	movpl	al, ah, asr r3
+ ARM(	orrmi	al, al, ah, lsl ip	)
+ THUMB(	lslmi	r3, ah, ip		)
+ THUMB(	orrmi	al, al, r3		)
+	mov	ah, ah, asr r2
+	mov	pc, lr
+
+ENDPROC(__ashrdi3)
+ENDPROC(__aeabi_lasr)
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
new file mode 100644
index 0000000..6dc8bd2
--- /dev/null
+++ b/arch/arm/lib32/barebox.lds.S
@@ -0,0 +1,126 @@
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
+OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
+OUTPUT_ARCH(arm)
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
+		. = ALIGN(4);
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
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
new file mode 100644
index 0000000..5167c9d
--- /dev/null
+++ b/arch/arm/lib32/bootz.c
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
diff --git a/arch/arm/lib32/copy_template.S b/arch/arm/lib32/copy_template.S
new file mode 100644
index 0000000..d8eb063
--- /dev/null
+++ b/arch/arm/lib32/copy_template.S
@@ -0,0 +1,268 @@
+/*
+ *  linux/arch/arm/lib/copy_template.s
+ *
+ *  Code template for optimized memory copy functions
+ *
+ *  Author:	Nicolas Pitre
+ *  Created:	Sep 28, 2005
+ *  Copyright:	MontaVista Software, Inc.
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+/*
+ * Theory of operation
+ * -------------------
+ *
+ * This file provides the core code for a forward memory copy used in
+ * the implementation of memcopy(), copy_to_user() and copy_from_user().
+ *
+ * The including file must define the following accessor macros
+ * according to the need of the given function:
+ *
+ * ldr1w ptr reg abort
+ *
+ *	This loads one word from 'ptr', stores it in 'reg' and increments
+ *	'ptr' to the next word. The 'abort' argument is used for fixup tables.
+ *
+ * ldr4w ptr reg1 reg2 reg3 reg4 abort
+ * ldr8w ptr, reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
+ *
+ *	This loads four or eight words starting from 'ptr', stores them
+ *	in provided registers and increments 'ptr' past those words.
+ *	The'abort' argument is used for fixup tables.
+ *
+ * ldr1b ptr reg cond abort
+ *
+ *	Similar to ldr1w, but it loads a byte and increments 'ptr' one byte.
+ *	It also must apply the condition code if provided, otherwise the
+ *	"al" condition is assumed by default.
+ *
+ * str1w ptr reg abort
+ * str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
+ * str1b ptr reg cond abort
+ *
+ *	Same as their ldr* counterparts, but data is stored to 'ptr' location
+ *	rather than being loaded.
+ *
+ * enter reg1 reg2
+ *
+ *	Preserve the provided registers on the stack plus any additional
+ *	data as needed by the implementation including this code. Called
+ *	upon code entry.
+ *
+ * exit reg1 reg2
+ *
+ *	Restore registers with the values previously saved with the
+ *	'preserv' macro. Called upon code termination.
+ *
+ * LDR1W_SHIFT
+ * STR1W_SHIFT
+ *
+ *	Correction to be applied to the "ip" register when branching into
+ *	the ldr1w or str1w instructions (some of these macros may expand to
+ *	than one 32bit instruction in Thumb-2)
+ */
+
+
+		enter	r4, lr
+
+		subs	r2, r2, #4
+		blt	8f
+		ands	ip, r0, #3
+	PLD(	pld	[r1, #0]		)
+		bne	9f
+		ands	ip, r1, #3
+		bne	10f
+
+1:		subs	r2, r2, #(28)
+		stmfd	sp!, {r5 - r8}
+		blt	5f
+
+	CALGN(	ands	ip, r0, #31		)
+	CALGN(	rsb	r3, ip, #32		)
+	CALGN(	sbcnes	r4, r3, r2		)  @ C is always set here
+	CALGN(	bcs	2f			)
+	CALGN(	adr	r4, 6f			)
+	CALGN(	subs	r2, r2, r3		)  @ C gets set
+	CALGN(	add	pc, r4, ip		)
+
+	PLD(	pld	[r1, #0]		)
+2:	PLD(	subs	r2, r2, #96		)
+	PLD(	pld	[r1, #28]		)
+	PLD(	blt	4f			)
+	PLD(	pld	[r1, #60]		)
+	PLD(	pld	[r1, #92]		)
+
+3:	PLD(	pld	[r1, #124]		)
+4:		ldr8w	r1, r3, r4, r5, r6, r7, r8, ip, lr, abort=20f
+		subs	r2, r2, #32
+		str8w	r0, r3, r4, r5, r6, r7, r8, ip, lr, abort=20f
+		bge	3b
+	PLD(	cmn	r2, #96			)
+	PLD(	bge	4b			)
+
+5:		ands	ip, r2, #28
+		rsb	ip, ip, #32
+#if LDR1W_SHIFT > 0
+		lsl	ip, ip, #LDR1W_SHIFT
+#endif
+		addne	pc, pc, ip		@ C is always clear here
+		b	7f
+6:
+		.rept	(1 << LDR1W_SHIFT)
+		W(nop)
+		.endr
+		ldr1w	r1, r3, abort=20f
+		ldr1w	r1, r4, abort=20f
+		ldr1w	r1, r5, abort=20f
+		ldr1w	r1, r6, abort=20f
+		ldr1w	r1, r7, abort=20f
+		ldr1w	r1, r8, abort=20f
+		ldr1w	r1, lr, abort=20f
+
+#if LDR1W_SHIFT < STR1W_SHIFT
+		lsl	ip, ip, #STR1W_SHIFT - LDR1W_SHIFT
+#elif LDR1W_SHIFT > STR1W_SHIFT
+		lsr	ip, ip, #LDR1W_SHIFT - STR1W_SHIFT
+#endif
+		add	pc, pc, ip
+		nop
+		.rept	(1 << STR1W_SHIFT)
+		W(nop)
+		.endr
+		str1w	r0, r3, abort=20f
+		str1w	r0, r4, abort=20f
+		str1w	r0, r5, abort=20f
+		str1w	r0, r6, abort=20f
+		str1w	r0, r7, abort=20f
+		str1w	r0, r8, abort=20f
+		str1w	r0, lr, abort=20f
+
+	CALGN(	bcs	2b			)
+
+7:		ldmfd	sp!, {r5 - r8}
+
+8:		movs	r2, r2, lsl #31
+		ldr1b	r1, r3, ne, abort=21f
+		ldr1b	r1, r4, cs, abort=21f
+		ldr1b	r1, ip, cs, abort=21f
+		str1b	r0, r3, ne, abort=21f
+		str1b	r0, r4, cs, abort=21f
+		str1b	r0, ip, cs, abort=21f
+
+		exit	r4, pc
+
+9:		rsb	ip, ip, #4
+		cmp	ip, #2
+		ldr1b	r1, r3, gt, abort=21f
+		ldr1b	r1, r4, ge, abort=21f
+		ldr1b	r1, lr, abort=21f
+		str1b	r0, r3, gt, abort=21f
+		str1b	r0, r4, ge, abort=21f
+		subs	r2, r2, ip
+		str1b	r0, lr, abort=21f
+		blt	8b
+		ands	ip, r1, #3
+		beq	1b
+
+10:		bic	r1, r1, #3
+		cmp	ip, #2
+		ldr1w	r1, lr, abort=21f
+		beq	17f
+		bgt	18f
+
+
+		.macro	forward_copy_shift pull push
+
+		subs	r2, r2, #28
+		blt	14f
+
+	CALGN(	ands	ip, r0, #31		)
+	CALGN(	rsb	ip, ip, #32		)
+	CALGN(	sbcnes	r4, ip, r2		)  @ C is always set here
+	CALGN(	subcc	r2, r2, ip		)
+	CALGN(	bcc	15f			)
+
+11:		stmfd	sp!, {r5 - r9}
+
+	PLD(	pld	[r1, #0]		)
+	PLD(	subs	r2, r2, #96		)
+	PLD(	pld	[r1, #28]		)
+	PLD(	blt	13f			)
+	PLD(	pld	[r1, #60]		)
+	PLD(	pld	[r1, #92]		)
+
+12:	PLD(	pld	[r1, #124]		)
+13:		ldr4w	r1, r4, r5, r6, r7, abort=19f
+		mov	r3, lr, pull #\pull
+		subs	r2, r2, #32
+		ldr4w	r1, r8, r9, ip, lr, abort=19f
+		orr	r3, r3, r4, push #\push
+		mov	r4, r4, pull #\pull
+		orr	r4, r4, r5, push #\push
+		mov	r5, r5, pull #\pull
+		orr	r5, r5, r6, push #\push
+		mov	r6, r6, pull #\pull
+		orr	r6, r6, r7, push #\push
+		mov	r7, r7, pull #\pull
+		orr	r7, r7, r8, push #\push
+		mov	r8, r8, pull #\pull
+		orr	r8, r8, r9, push #\push
+		mov	r9, r9, pull #\pull
+		orr	r9, r9, ip, push #\push
+		mov	ip, ip, pull #\pull
+		orr	ip, ip, lr, push #\push
+		str8w	r0, r3, r4, r5, r6, r7, r8, r9, ip, , abort=19f
+		bge	12b
+	PLD(	cmn	r2, #96			)
+	PLD(	bge	13b			)
+
+		ldmfd	sp!, {r5 - r9}
+
+14:		ands	ip, r2, #28
+		beq	16f
+
+15:		mov	r3, lr, pull #\pull
+		ldr1w	r1, lr, abort=21f
+		subs	ip, ip, #4
+		orr	r3, r3, lr, push #\push
+		str1w	r0, r3, abort=21f
+		bgt	15b
+	CALGN(	cmp	r2, #0			)
+	CALGN(	bge	11b			)
+
+16:		sub	r1, r1, #(\push / 8)
+		b	8b
+
+		.endm
+
+
+		forward_copy_shift	pull=8	push=24
+
+17:		forward_copy_shift	pull=16	push=16
+
+18:		forward_copy_shift	pull=24	push=8
+
+
+/*
+ * Abort preamble and completion macros.
+ * If a fixup handler is required then those macros must surround it.
+ * It is assumed that the fixup code will handle the private part of
+ * the exit macro.
+ */
+
+	.macro	copy_abort_preamble
+19:	ldmfd	sp!, {r5 - r9}
+	b	21f
+20:	ldmfd	sp!, {r5 - r8}
+21:
+	.endm
+
+	.macro	copy_abort_end
+	ldmfd	sp!, {r4, pc}
+	.endm
+
+
diff --git a/arch/arm/lib32/div0.c b/arch/arm/lib32/div0.c
new file mode 100644
index 0000000..852cb72
--- /dev/null
+++ b/arch/arm/lib32/div0.c
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
diff --git a/arch/arm/lib32/findbit.S b/arch/arm/lib32/findbit.S
new file mode 100644
index 0000000..ef4caff
--- /dev/null
+++ b/arch/arm/lib32/findbit.S
@@ -0,0 +1,197 @@
+/*
+ * Originally from Linux kernel
+ *  arch/arm/lib/findbit.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * 16th March 2001 - John Ripley <jripley@sonicblue.com>
+ *   Fixed so that "size" is an exclusive not an inclusive quantity.
+ *   All users of these functions expect exclusive sizes, and may
+ *   also call with zero size.
+ * Reworked by rmk.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+                .text
+
+/*
+ * Purpose  : Find a 'zero' bit
+ * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
+ */
+ENTRY(_find_first_zero_bit_le)
+		teq	r1, #0
+		beq	3f
+		mov	r2, #0
+1:
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		eors	r3, r3, #0xff		@ invert bits
+		bne	.L_found		@ any now set - found zero bit
+		add	r2, r2, #8		@ next bit pointer
+2:		cmp	r2, r1			@ any more?
+		blo	1b
+3:		mov	r0, r1			@ no free bits
+		mov	pc, lr
+ENDPROC(_find_first_zero_bit_le)
+
+/*
+ * Purpose  : Find next 'zero' bit
+ * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
+ */
+ENTRY(_find_next_zero_bit_le)
+		teq	r1, #0
+		beq	3b
+		ands	ip, r2, #7
+		beq	1b			@ If new byte, goto old routine
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		eor	r3, r3, #0xff		@ now looking for a 1 bit
+		movs	r3, r3, lsr ip		@ shift off unused bits
+		bne	.L_found
+		orr	r2, r2, #7		@ if zero, then no bits here
+		add	r2, r2, #1		@ align bit pointer
+		b	2b			@ loop for next bit
+ENDPROC(_find_next_zero_bit_le)
+
+/*
+ * Purpose  : Find a 'one' bit
+ * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
+ */
+ENTRY(_find_first_bit_le)
+		teq	r1, #0
+		beq	3f
+		mov	r2, #0
+1:
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		movs	r3, r3
+		bne	.L_found		@ any now set - found zero bit
+		add	r2, r2, #8		@ next bit pointer
+2:		cmp	r2, r1			@ any more?
+		blo	1b
+3:		mov	r0, r1			@ no free bits
+		mov	pc, lr
+ENDPROC(_find_first_bit_le)
+
+/*
+ * Purpose  : Find next 'one' bit
+ * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
+ */
+ENTRY(_find_next_bit_le)
+		teq	r1, #0
+		beq	3b
+		ands	ip, r2, #7
+		beq	1b			@ If new byte, goto old routine
+ ARM(		ldrb	r3, [r0, r2, lsr #3]	)
+ THUMB(		lsr	r3, r2, #3		)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		movs	r3, r3, lsr ip		@ shift off unused bits
+		bne	.L_found
+		orr	r2, r2, #7		@ if zero, then no bits here
+		add	r2, r2, #1		@ align bit pointer
+		b	2b			@ loop for next bit
+ENDPROC(_find_next_bit_le)
+
+#ifdef __ARMEB__
+
+ENTRY(_find_first_zero_bit_be)
+		teq	r1, #0
+		beq	3f
+		mov	r2, #0
+1:		eor	r3, r2, #0x18		@ big endian byte ordering
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		eors	r3, r3, #0xff		@ invert bits
+		bne	.L_found		@ any now set - found zero bit
+		add	r2, r2, #8		@ next bit pointer
+2:		cmp	r2, r1			@ any more?
+		blo	1b
+3:		mov	r0, r1			@ no free bits
+		mov	pc, lr
+ENDPROC(_find_first_zero_bit_be)
+
+ENTRY(_find_next_zero_bit_be)
+		teq	r1, #0
+		beq	3b
+		ands	ip, r2, #7
+		beq	1b			@ If new byte, goto old routine
+		eor	r3, r2, #0x18		@ big endian byte ordering
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		eor	r3, r3, #0xff		@ now looking for a 1 bit
+		movs	r3, r3, lsr ip		@ shift off unused bits
+		bne	.L_found
+		orr	r2, r2, #7		@ if zero, then no bits here
+		add	r2, r2, #1		@ align bit pointer
+		b	2b			@ loop for next bit
+ENDPROC(_find_next_zero_bit_be)
+
+ENTRY(_find_first_bit_be)
+		teq	r1, #0
+		beq	3f
+		mov	r2, #0
+1:		eor	r3, r2, #0x18		@ big endian byte ordering
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		movs	r3, r3
+		bne	.L_found		@ any now set - found zero bit
+		add	r2, r2, #8		@ next bit pointer
+2:		cmp	r2, r1			@ any more?
+		blo	1b
+3:		mov	r0, r1			@ no free bits
+		mov	pc, lr
+ENDPROC(_find_first_bit_be)
+
+ENTRY(_find_next_bit_be)
+		teq	r1, #0
+		beq	3b
+		ands	ip, r2, #7
+		beq	1b			@ If new byte, goto old routine
+		eor	r3, r2, #0x18		@ big endian byte ordering
+ ARM(		ldrb	r3, [r0, r3, lsr #3]	)
+ THUMB(		lsr	r3, #3			)
+ THUMB(		ldrb	r3, [r0, r3]		)
+		movs	r3, r3, lsr ip		@ shift off unused bits
+		bne	.L_found
+		orr	r2, r2, #7		@ if zero, then no bits here
+		add	r2, r2, #1		@ align bit pointer
+		b	2b			@ loop for next bit
+ENDPROC(_find_next_bit_be)
+
+#endif
+
+/*
+ * One or more bits in the LSB of r3 are assumed to be set.
+ */
+.L_found:
+#if __LINUX_ARM_ARCH__ >= 5
+		rsb	r0, r3, #0
+		and	r3, r3, r0
+		clz	r3, r3
+		rsb	r3, r3, #31
+		add	r0, r2, r3
+#else
+		tst	r3, #0x0f
+		addeq	r2, r2, #4
+		movne	r3, r3, lsl #4
+		tst	r3, #0x30
+		addeq	r2, r2, #2
+		movne	r3, r3, lsl #2
+		tst	r3, #0x40
+		addeq	r2, r2, #1
+		mov	r0, r2
+#endif
+		cmp	r1, r0			@ Clamp to maxbit
+		movlo	r0, r1
+		mov	pc, lr
+
diff --git a/arch/arm/lib32/io-readsb.S b/arch/arm/lib32/io-readsb.S
new file mode 100644
index 0000000..963c455
--- /dev/null
+++ b/arch/arm/lib32/io-readsb.S
@@ -0,0 +1,125 @@
+/*
+ *  linux/arch/arm/lib/io-readsb.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section .text.readsb
+
+.Linsb_align:	rsb	ip, ip, #4
+		cmp	ip, r2
+		movgt	ip, r2
+		cmp	ip, #2
+		ldrb	r3, [r0]
+		strb	r3, [r1], #1
+		ldrgeb	r3, [r0]
+		strgeb	r3, [r1], #1
+		ldrgtb	r3, [r0]
+		strgtb	r3, [r1], #1
+		subs	r2, r2, ip
+		bne	.Linsb_aligned
+
+ENTRY(readsb)
+		teq	r2, #0		@ do we have to check for the zero len?
+		moveq	pc, lr
+		ands	ip, r1, #3
+		bne	.Linsb_align
+
+.Linsb_aligned:	stmfd	sp!, {r4 - r6, lr}
+
+		subs	r2, r2, #16
+		bmi	.Linsb_no_16
+
+.Linsb_16_lp:	ldrb	r3, [r0]
+		ldrb	r4, [r0]
+		ldrb	r5, [r0]
+		mov	r3, r3,     put_byte_0
+		ldrb	r6, [r0]
+		orr	r3, r3, r4, put_byte_1
+		ldrb	r4, [r0]
+		orr	r3, r3, r5, put_byte_2
+		ldrb	r5, [r0]
+		orr	r3, r3, r6, put_byte_3
+		ldrb	r6, [r0]
+		mov	r4, r4,     put_byte_0
+		ldrb	ip, [r0]
+		orr	r4, r4, r5, put_byte_1
+		ldrb	r5, [r0]
+		orr	r4, r4, r6, put_byte_2
+		ldrb	r6, [r0]
+		orr	r4, r4, ip, put_byte_3
+		ldrb	ip, [r0]
+		mov	r5, r5,     put_byte_0
+		ldrb	lr, [r0]
+		orr	r5, r5, r6, put_byte_1
+		ldrb	r6, [r0]
+		orr	r5, r5, ip, put_byte_2
+		ldrb	ip, [r0]
+		orr	r5, r5, lr, put_byte_3
+		ldrb	lr, [r0]
+		mov	r6, r6,     put_byte_0
+		orr	r6, r6, ip, put_byte_1
+		ldrb	ip, [r0]
+		orr	r6, r6, lr, put_byte_2
+		orr	r6, r6, ip, put_byte_3
+		stmia	r1!, {r3 - r6}
+
+		subs	r2, r2, #16
+		bpl	.Linsb_16_lp
+
+		tst	r2, #15
+		ldmeqfd	sp!, {r4 - r6, pc}
+
+.Linsb_no_16:	tst	r2, #8
+		beq	.Linsb_no_8
+
+		ldrb	r3, [r0]
+		ldrb	r4, [r0]
+		ldrb	r5, [r0]
+		mov	r3, r3,     put_byte_0
+		ldrb	r6, [r0]
+		orr	r3, r3, r4, put_byte_1
+		ldrb	r4, [r0]
+		orr	r3, r3, r5, put_byte_2
+		ldrb	r5, [r0]
+		orr	r3, r3, r6, put_byte_3
+		ldrb	r6, [r0]
+		mov	r4, r4,     put_byte_0
+		ldrb	ip, [r0]
+		orr	r4, r4, r5, put_byte_1
+		orr	r4, r4, r6, put_byte_2
+		orr	r4, r4, ip, put_byte_3
+		stmia	r1!, {r3, r4}
+
+.Linsb_no_8:	tst	r2, #4
+		beq	.Linsb_no_4
+
+		ldrb	r3, [r0]
+		ldrb	r4, [r0]
+		ldrb	r5, [r0]
+		ldrb	r6, [r0]
+		mov	r3, r3,     put_byte_0
+		orr	r3, r3, r4, put_byte_1
+		orr	r3, r3, r5, put_byte_2
+		orr	r3, r3, r6, put_byte_3
+		str	r3, [r1], #4
+
+.Linsb_no_4:	ands	r2, r2, #3
+		ldmeqfd	sp!, {r4 - r6, pc}
+
+		cmp	r2, #2
+		ldrb	r3, [r0]
+		strb	r3, [r1], #1
+		ldrgeb	r3, [r0]
+		strgeb	r3, [r1], #1
+		ldrgtb	r3, [r0]
+		strgtb	r3, [r1]
+
+		ldmfd	sp!, {r4 - r6, pc}
+ENDPROC(readsb)
diff --git a/arch/arm/lib32/io-readsl.S b/arch/arm/lib32/io-readsl.S
new file mode 100644
index 0000000..47a2974
--- /dev/null
+++ b/arch/arm/lib32/io-readsl.S
@@ -0,0 +1,81 @@
+/*
+ *  linux/arch/arm/lib/io-readsl.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section .text.readsl
+
+ENTRY(readsl)
+		teq	r2, #0		@ do we have to check for the zero len?
+		moveq	pc, lr
+		ands	ip, r1, #3
+		bne	3f
+
+		subs	r2, r2, #4
+		bmi	2f
+		stmfd	sp!, {r4, lr}
+1:		ldr	r3, [r0, #0]
+		ldr	r4, [r0, #0]
+		ldr	ip, [r0, #0]
+		ldr	lr, [r0, #0]
+		subs	r2, r2, #4
+		stmia	r1!, {r3, r4, ip, lr}
+		bpl	1b
+		ldmfd	sp!, {r4, lr}
+2:		movs	r2, r2, lsl #31
+		ldrcs	r3, [r0, #0]
+		ldrcs	ip, [r0, #0]
+		stmcsia	r1!, {r3, ip}
+		ldrne	r3, [r0, #0]
+		strne	r3, [r1, #0]
+		mov	pc, lr
+
+3:		ldr	r3, [r0]
+		cmp	ip, #2
+		mov	ip, r3, get_byte_0
+		strb	ip, [r1], #1
+		bgt	6f
+		mov	ip, r3, get_byte_1
+		strb	ip, [r1], #1
+		beq	5f
+		mov	ip, r3, get_byte_2
+		strb	ip, [r1], #1
+
+4:		subs	r2, r2, #1
+		mov	ip, r3, pull #24
+		ldrne	r3, [r0]
+		orrne	ip, ip, r3, push #8
+		strne	ip, [r1], #4
+		bne	4b
+		b	8f
+
+5:		subs	r2, r2, #1
+		mov	ip, r3, pull #16
+		ldrne	r3, [r0]
+		orrne	ip, ip, r3, push #16
+		strne	ip, [r1], #4
+		bne	5b
+		b	7f
+
+6:		subs	r2, r2, #1
+		mov	ip, r3, pull #8
+		ldrne	r3, [r0]
+		orrne	ip, ip, r3, push #24
+		strne	ip, [r1], #4
+		bne	6b
+
+		mov	r3, ip, get_byte_2
+		strb	r3, [r1, #2]
+7:		mov	r3, ip, get_byte_1
+		strb	r3, [r1, #1]
+8:		mov	r3, ip, get_byte_0
+		strb	r3, [r1, #0]
+		mov	pc, lr
+ENDPROC(readsl)
diff --git a/arch/arm/lib32/io-readsw-armv4.S b/arch/arm/lib32/io-readsw-armv4.S
new file mode 100644
index 0000000..f5b34a3
--- /dev/null
+++ b/arch/arm/lib32/io-readsw-armv4.S
@@ -0,0 +1,133 @@
+/*
+ *  linux/arch/arm/lib/io-readsw-armv4.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+		.macro	pack, rd, hw1, hw2
+#ifndef __ARMEB__
+		orr	\rd, \hw1, \hw2, lsl #16
+#else
+		orr	\rd, \hw2, \hw1, lsl #16
+#endif
+		.endm
+
+.section .text.readsw
+
+.Linsw_align:	movs	ip, r1, lsl #31
+		bne	.Linsw_noalign
+		ldrh	ip, [r0]
+		sub	r2, r2, #1
+		strh	ip, [r1], #2
+
+ENTRY(readsw)
+		teq	r2, #0
+		moveq	pc, lr
+		tst	r1, #3
+		bne	.Linsw_align
+
+		stmfd	sp!, {r4, r5, lr}
+
+		subs	r2, r2, #8
+		bmi	.Lno_insw_8
+
+.Linsw_8_lp:	ldrh	r3, [r0]
+		ldrh	r4, [r0]
+		pack	r3, r3, r4
+
+		ldrh	r4, [r0]
+		ldrh	r5, [r0]
+		pack	r4, r4, r5
+
+		ldrh	r5, [r0]
+		ldrh	ip, [r0]
+		pack	r5, r5, ip
+
+		ldrh	ip, [r0]
+		ldrh	lr, [r0]
+		pack	ip, ip, lr
+
+		subs	r2, r2, #8
+		stmia	r1!, {r3 - r5, ip}
+		bpl	.Linsw_8_lp
+
+.Lno_insw_8:	tst	r2, #4
+		beq	.Lno_insw_4
+
+		ldrh	r3, [r0]
+		ldrh	r4, [r0]
+		pack	r3, r3, r4
+
+		ldrh	r4, [r0]
+		ldrh	ip, [r0]
+		pack	r4, r4, ip
+
+		stmia	r1!, {r3, r4}
+
+.Lno_insw_4:	movs	r2, r2, lsl #31
+		bcc	.Lno_insw_2
+
+		ldrh	r3, [r0]
+		ldrh	ip, [r0]
+		pack	r3, r3, ip
+		str	r3, [r1], #4
+
+.Lno_insw_2:	ldrneh	r3, [r0]
+		strneh	r3, [r1]
+
+		ldmfd	sp!, {r4, r5, pc}
+
+#ifdef __ARMEB__
+#define _BE_ONLY_(code...)	code
+#define _LE_ONLY_(code...)
+#define push_hbyte0		lsr #8
+#define pull_hbyte1		lsl #24
+#else
+#define _BE_ONLY_(code...)
+#define _LE_ONLY_(code...) code
+#define push_hbyte0		lsl #24
+#define pull_hbyte1		lsr #8
+#endif
+
+.Linsw_noalign:	stmfd	sp!, {r4, lr}
+		ldrccb	ip, [r1, #-1]!
+		bcc	1f
+
+		ldrh	ip, [r0]
+		sub	r2, r2, #1
+   _BE_ONLY_(	mov	ip, ip, ror #8		)
+		strb	ip, [r1], #1
+   _LE_ONLY_(	mov	ip, ip, lsr #8		)
+   _BE_ONLY_(	mov	ip, ip, lsr #24		)
+
+1:		subs	r2, r2, #2
+		bmi	3f
+   _BE_ONLY_(	mov	ip, ip, lsl #24		)
+
+2:		ldrh	r3, [r0]
+		ldrh	r4, [r0]
+		subs	r2, r2, #2
+		orr	ip, ip, r3, lsl #8
+		orr	ip, ip, r4, push_hbyte0
+		str	ip, [r1], #4
+		mov	ip, r4, pull_hbyte1
+		bpl	2b
+
+   _BE_ONLY_(	mov	ip, ip, lsr #24		)
+
+3:		tst	r2, #1
+		strb	ip, [r1], #1
+		ldrneh	ip, [r0]
+   _BE_ONLY_(	movne	ip, ip, ror #8		)
+		strneb	ip, [r1], #1
+   _LE_ONLY_(	movne	ip, ip, lsr #8		)
+   _BE_ONLY_(	movne	ip, ip, lsr #24		)
+		strneb	ip, [r1]
+		ldmfd	sp!, {r4, pc}
+ENDPROC(readsw)
diff --git a/arch/arm/lib32/io-writesb.S b/arch/arm/lib32/io-writesb.S
new file mode 100644
index 0000000..1ab8e47
--- /dev/null
+++ b/arch/arm/lib32/io-writesb.S
@@ -0,0 +1,96 @@
+/*
+ *  linux/arch/arm/lib/io-writesb.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+		.macro	outword, rd
+#ifndef __ARMEB__
+		strb	\rd, [r0]
+		mov	\rd, \rd, lsr #8
+		strb	\rd, [r0]
+		mov	\rd, \rd, lsr #8
+		strb	\rd, [r0]
+		mov	\rd, \rd, lsr #8
+		strb	\rd, [r0]
+#else
+		mov	lr, \rd, lsr #24
+		strb	lr, [r0]
+		mov	lr, \rd, lsr #16
+		strb	lr, [r0]
+		mov	lr, \rd, lsr #8
+		strb	lr, [r0]
+		strb	\rd, [r0]
+#endif
+		.endm
+
+.section .text.writesb
+
+.Loutsb_align:	rsb	ip, ip, #4
+		cmp	ip, r2
+		movgt	ip, r2
+		cmp	ip, #2
+		ldrb	r3, [r1], #1
+		strb	r3, [r0]
+		ldrgeb	r3, [r1], #1
+		strgeb	r3, [r0]
+		ldrgtb	r3, [r1], #1
+		strgtb	r3, [r0]
+		subs	r2, r2, ip
+		bne	.Loutsb_aligned
+
+ENTRY(writesb)
+		teq	r2, #0		@ do we have to check for the zero len?
+		moveq	pc, lr
+		ands	ip, r1, #3
+		bne	.Loutsb_align
+
+.Loutsb_aligned:
+		stmfd	sp!, {r4, r5, lr}
+
+		subs	r2, r2, #16
+		bmi	.Loutsb_no_16
+
+.Loutsb_16_lp:	ldmia	r1!, {r3, r4, r5, ip}
+		outword	r3
+		outword	r4
+		outword	r5
+		outword	ip
+		subs	r2, r2, #16
+		bpl	.Loutsb_16_lp
+
+		tst	r2, #15
+		ldmeqfd	sp!, {r4, r5, pc}
+
+.Loutsb_no_16:	tst	r2, #8
+		beq	.Loutsb_no_8
+
+		ldmia	r1!, {r3, r4}
+		outword	r3
+		outword	r4
+
+.Loutsb_no_8:	tst	r2, #4
+		beq	.Loutsb_no_4
+
+		ldr	r3, [r1], #4
+		outword	r3
+
+.Loutsb_no_4:	ands	r2, r2, #3
+		ldmeqfd	sp!, {r4, r5, pc}
+
+		cmp	r2, #2
+		ldrb	r3, [r1], #1
+		strb	r3, [r0]
+		ldrgeb	r3, [r1], #1
+		strgeb	r3, [r0]
+		ldrgtb	r3, [r1]
+		strgtb	r3, [r0]
+
+		ldmfd	sp!, {r4, r5, pc}
+ENDPROC(writesb)
diff --git a/arch/arm/lib32/io-writesl.S b/arch/arm/lib32/io-writesl.S
new file mode 100644
index 0000000..8a3bcd6
--- /dev/null
+++ b/arch/arm/lib32/io-writesl.S
@@ -0,0 +1,69 @@
+/*
+ *  linux/arch/arm/lib/io-writesl.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section .text.writesl
+
+ENTRY(writesl)
+		teq	r2, #0		@ do we have to check for the zero len?
+		moveq	pc, lr
+		ands	ip, r1, #3
+		bne	3f
+
+		subs	r2, r2, #4
+		bmi	2f
+		stmfd	sp!, {r4, lr}
+1:		ldmia	r1!, {r3, r4, ip, lr}
+		subs	r2, r2, #4
+		str	r3, [r0, #0]
+		str	r4, [r0, #0]
+		str	ip, [r0, #0]
+		str	lr, [r0, #0]
+		bpl	1b
+		ldmfd	sp!, {r4, lr}
+2:		movs	r2, r2, lsl #31
+		ldmcsia	r1!, {r3, ip}
+		strcs	r3, [r0, #0]
+		ldrne	r3, [r1, #0]
+		strcs	ip, [r0, #0]
+		strne	r3, [r0, #0]
+		mov	pc, lr
+
+3:		bic	r1, r1, #3
+		ldr	r3, [r1], #4
+		cmp	ip, #2
+		blt	5f
+		bgt	6f
+
+4:		mov	ip, r3, pull #16
+		ldr	r3, [r1], #4
+		subs	r2, r2, #1
+		orr	ip, ip, r3, push #16
+		str	ip, [r0]
+		bne	4b
+		mov	pc, lr
+
+5:		mov	ip, r3, pull #8
+		ldr	r3, [r1], #4
+		subs	r2, r2, #1
+		orr	ip, ip, r3, push #24
+		str	ip, [r0]
+		bne	5b
+		mov	pc, lr
+
+6:		mov	ip, r3, pull #24
+		ldr	r3, [r1], #4
+		subs	r2, r2, #1
+		orr	ip, ip, r3, push #8
+		str	ip, [r0]
+		bne	6b
+		mov	pc, lr
+ENDPROC(writesl)
diff --git a/arch/arm/lib32/io-writesw-armv4.S b/arch/arm/lib32/io-writesw-armv4.S
new file mode 100644
index 0000000..9e8308d
--- /dev/null
+++ b/arch/arm/lib32/io-writesw-armv4.S
@@ -0,0 +1,102 @@
+/*
+ *  linux/arch/arm/lib/io-writesw-armv4.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+		.macro	outword, rd
+#ifndef __ARMEB__
+		strh	\rd, [r0]
+		mov	\rd, \rd, lsr #16
+		strh	\rd, [r0]
+#else
+		mov	lr, \rd, lsr #16
+		strh	lr, [r0]
+		strh	\rd, [r0]
+#endif
+		.endm
+
+.section .text.__raw_writesw
+
+.Loutsw_align:	movs	ip, r1, lsl #31
+		bne	.Loutsw_noalign
+
+		ldrh	r3, [r1], #2
+		sub	r2, r2, #1
+		strh	r3, [r0]
+
+ENTRY(__raw_writesw)
+		teq	r2, #0
+		moveq	pc, lr
+		ands	r3, r1, #3
+		bne	.Loutsw_align
+
+		stmfd	sp!, {r4, r5, lr}
+
+		subs	r2, r2, #8
+		bmi	.Lno_outsw_8
+
+.Loutsw_8_lp:	ldmia	r1!, {r3, r4, r5, ip}
+		subs	r2, r2, #8
+		outword	r3
+		outword	r4
+		outword	r5
+		outword	ip
+		bpl	.Loutsw_8_lp
+
+.Lno_outsw_8:	tst	r2, #4
+		beq	.Lno_outsw_4
+
+		ldmia	r1!, {r3, ip}
+		outword	r3
+		outword	ip
+
+.Lno_outsw_4:	movs	r2, r2, lsl #31
+		bcc	.Lno_outsw_2
+
+		ldr	r3, [r1], #4
+		outword	r3
+
+.Lno_outsw_2:	ldrneh	r3, [r1]
+		strneh	r3, [r0]
+
+		ldmfd	sp!, {r4, r5, pc}
+
+#ifdef __ARMEB__
+#define pull_hbyte0	lsl #8
+#define push_hbyte1	lsr #24
+#else
+#define pull_hbyte0	lsr #24
+#define push_hbyte1	lsl #8
+#endif
+
+.Loutsw_noalign:
+ ARM(		ldr	r3, [r1, -r3]!	)
+ THUMB(		rsb	r3, r3, #0	)
+ THUMB(		ldr	r3, [r1, r3]	)
+ THUMB(		sub	r1, r3		)
+		subcs	r2, r2, #1
+		bcs	2f
+		subs	r2, r2, #2
+		bmi	3f
+
+1:		mov	ip, r3, lsr #8
+		strh	ip, [r0]
+2:		mov	ip, r3, pull_hbyte0
+		ldr	r3, [r1, #4]!
+		subs	r2, r2, #2
+		orr	ip, ip, r3, push_hbyte1
+		strh	ip, [r0]
+		bpl	1b
+
+		tst	r2, #1
+3:		movne	ip, r3, lsr #8
+		strneh	ip, [r0]
+		mov	pc, lr
+ENDPROC(__raw_writesw)
diff --git a/arch/arm/lib32/io.c b/arch/arm/lib32/io.c
new file mode 100644
index 0000000..abfd887
--- /dev/null
+++ b/arch/arm/lib32/io.c
@@ -0,0 +1,50 @@
+#include <module.h>
+#include <linux/types.h>
+#include <io.h>
+
+/*
+ * Copy data from IO memory space to "real" memory space.
+ * This needs to be optimized.
+ */
+void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
+{
+	unsigned char *t = to;
+	while (count) {
+		count--;
+		*t = readb(from);
+		t++;
+		from++;
+	}
+}
+
+/*
+ * Copy data from "real" memory space to IO memory space.
+ * This needs to be optimized.
+ */
+void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
+{
+	const unsigned char *f = from;
+	while (count) {
+		count--;
+		writeb(*f, to);
+		f++;
+		to++;
+	}
+}
+
+/*
+ * "memset" on IO memory space.
+ * This needs to be optimized.
+ */
+void memset_io(volatile void __iomem *dst, int c, size_t count)
+{
+	while (count) {
+		count--;
+		writeb(c, dst);
+		dst++;
+	}
+}
+
+EXPORT_SYMBOL(memcpy_fromio);
+EXPORT_SYMBOL(memcpy_toio);
+EXPORT_SYMBOL(memset_io);
diff --git a/arch/arm/lib32/lib1funcs.S b/arch/arm/lib32/lib1funcs.S
new file mode 100644
index 0000000..bf1d019
--- /dev/null
+++ b/arch/arm/lib32/lib1funcs.S
@@ -0,0 +1,351 @@
+/*
+ * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
+ *
+ * Author: Nicolas Pitre <nico@fluxnic.net>
+ *   - contributed to gcc-3.4 on Sep 30, 2003
+ *   - adapted for the Linux kernel on Oct 2, 2003
+ */
+
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+*/
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+
+.macro ARM_DIV_BODY dividend, divisor, result, curbit
+
+#if __LINUX_ARM_ARCH__ >= 5
+
+	clz	\curbit, \divisor
+	clz	\result, \dividend
+	sub	\result, \curbit, \result
+	mov	\curbit, #1
+	mov	\divisor, \divisor, lsl \result
+	mov	\curbit, \curbit, lsl \result
+	mov	\result, #0
+
+#else
+
+	@ Initially shift the divisor left 3 bits if possible,
+	@ set curbit accordingly.  This allows for curbit to be located
+	@ at the left end of each 4 bit nibbles in the division loop
+	@ to save one loop in most cases.
+	tst	\divisor, #0xe0000000
+	moveq	\divisor, \divisor, lsl #3
+	moveq	\curbit, #8
+	movne	\curbit, #1
+
+	@ Unless the divisor is very big, shift it up in multiples of
+	@ four bits, since this is the amount of unwinding in the main
+	@ division loop.  Continue shifting until the divisor is
+	@ larger than the dividend.
+1:	cmp	\divisor, #0x10000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #4
+	movlo	\curbit, \curbit, lsl #4
+	blo	1b
+
+	@ For very big divisors, we must shift it a bit at a time, or
+	@ we will be in danger of overflowing.
+1:	cmp	\divisor, #0x80000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #1
+	movlo	\curbit, \curbit, lsl #1
+	blo	1b
+
+	mov	\result, #0
+
+#endif
+
+	@ Division loop
+1:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	orrhs	\result,   \result,   \curbit
+	cmp	\dividend, \divisor,  lsr #1
+	subhs	\dividend, \dividend, \divisor, lsr #1
+	orrhs	\result,   \result,   \curbit,  lsr #1
+	cmp	\dividend, \divisor,  lsr #2
+	subhs	\dividend, \dividend, \divisor, lsr #2
+	orrhs	\result,   \result,   \curbit,  lsr #2
+	cmp	\dividend, \divisor,  lsr #3
+	subhs	\dividend, \dividend, \divisor, lsr #3
+	orrhs	\result,   \result,   \curbit,  lsr #3
+	cmp	\dividend, #0			@ Early termination?
+	movnes	\curbit,   \curbit,  lsr #4	@ No, any more bits to do?
+	movne	\divisor,  \divisor, lsr #4
+	bne	1b
+
+.endm
+
+
+.macro ARM_DIV2_ORDER divisor, order
+
+#if __LINUX_ARM_ARCH__ >= 5
+
+	clz	\order, \divisor
+	rsb	\order, \order, #31
+
+#else
+
+	cmp	\divisor, #(1 << 16)
+	movhs	\divisor, \divisor, lsr #16
+	movhs	\order, #16
+	movlo	\order, #0
+
+	cmp	\divisor, #(1 << 8)
+	movhs	\divisor, \divisor, lsr #8
+	addhs	\order, \order, #8
+
+	cmp	\divisor, #(1 << 4)
+	movhs	\divisor, \divisor, lsr #4
+	addhs	\order, \order, #4
+
+	cmp	\divisor, #(1 << 2)
+	addhi	\order, \order, #3
+	addls	\order, \order, \divisor, lsr #1
+
+#endif
+
+.endm
+
+
+.macro ARM_MOD_BODY dividend, divisor, order, spare
+
+#if __LINUX_ARM_ARCH__ >= 5
+
+	clz	\order, \divisor
+	clz	\spare, \dividend
+	sub	\order, \order, \spare
+	mov	\divisor, \divisor, lsl \order
+
+#else
+
+	mov	\order, #0
+
+	@ Unless the divisor is very big, shift it up in multiples of
+	@ four bits, since this is the amount of unwinding in the main
+	@ division loop.  Continue shifting until the divisor is
+	@ larger than the dividend.
+1:	cmp	\divisor, #0x10000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #4
+	addlo	\order, \order, #4
+	blo	1b
+
+	@ For very big divisors, we must shift it a bit at a time, or
+	@ we will be in danger of overflowing.
+1:	cmp	\divisor, #0x80000000
+	cmplo	\divisor, \dividend
+	movlo	\divisor, \divisor, lsl #1
+	addlo	\order, \order, #1
+	blo	1b
+
+#endif
+
+	@ Perform all needed substractions to keep only the reminder.
+	@ Do comparisons in batch of 4 first.
+	subs	\order, \order, #3		@ yes, 3 is intended here
+	blt	2f
+
+1:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	cmp	\dividend, \divisor,  lsr #1
+	subhs	\dividend, \dividend, \divisor, lsr #1
+	cmp	\dividend, \divisor,  lsr #2
+	subhs	\dividend, \dividend, \divisor, lsr #2
+	cmp	\dividend, \divisor,  lsr #3
+	subhs	\dividend, \dividend, \divisor, lsr #3
+	cmp	\dividend, #1
+	mov	\divisor, \divisor, lsr #4
+	subges	\order, \order, #4
+	bge	1b
+
+	tst	\order, #3
+	teqne	\dividend, #0
+	beq	5f
+
+	@ Either 1, 2 or 3 comparison/substractions are left.
+2:	cmn	\order, #2
+	blt	4f
+	beq	3f
+	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	mov	\divisor,  \divisor,  lsr #1
+3:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+	mov	\divisor,  \divisor,  lsr #1
+4:	cmp	\dividend, \divisor
+	subhs	\dividend, \dividend, \divisor
+5:
+.endm
+
+
+.section .text.__udivsi3
+ENTRY(__udivsi3)
+ENTRY(__aeabi_uidiv)
+
+	subs	r2, r1, #1
+	moveq	pc, lr
+	bcc	Ldiv0
+	cmp	r0, r1
+	bls	11f
+	tst	r1, r2
+	beq	12f
+
+	ARM_DIV_BODY r0, r1, r2, r3
+
+	mov	r0, r2
+	mov	pc, lr
+
+11:	moveq	r0, #1
+	movne	r0, #0
+	mov	pc, lr
+
+12:	ARM_DIV2_ORDER r1, r2
+
+	mov	r0, r0, lsr r2
+	mov	pc, lr
+
+ENDPROC(__udivsi3)
+ENDPROC(__aeabi_uidiv)
+
+.section .text.__umodsi3
+ENTRY(__umodsi3)
+
+	subs	r2, r1, #1			@ compare divisor with 1
+	bcc	Ldiv0
+	cmpne	r0, r1				@ compare dividend with divisor
+	moveq   r0, #0
+	tsthi	r1, r2				@ see if divisor is power of 2
+	andeq	r0, r0, r2
+	movls	pc, lr
+
+	ARM_MOD_BODY r0, r1, r2, r3
+
+	mov	pc, lr
+
+ENDPROC(__umodsi3)
+
+.section .text.__divsi3
+ENTRY(__divsi3)
+ENTRY(__aeabi_idiv)
+
+	cmp	r1, #0
+	eor	ip, r0, r1			@ save the sign of the result.
+	beq	Ldiv0
+	rsbmi	r1, r1, #0			@ loops below use unsigned.
+	subs	r2, r1, #1			@ division by 1 or -1 ?
+	beq	10f
+	movs	r3, r0
+	rsbmi	r3, r0, #0			@ positive dividend value
+	cmp	r3, r1
+	bls	11f
+	tst	r1, r2				@ divisor is power of 2 ?
+	beq	12f
+
+	ARM_DIV_BODY r3, r1, r0, r2
+
+	cmp	ip, #0
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+10:	teq	ip, r0				@ same sign ?
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+11:	movlo	r0, #0
+	moveq	r0, ip, asr #31
+	orreq	r0, r0, #1
+	mov	pc, lr
+
+12:	ARM_DIV2_ORDER r1, r2
+
+	cmp	ip, #0
+	mov	r0, r3, lsr r2
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+ENDPROC(__divsi3)
+ENDPROC(__aeabi_idiv)
+
+.section .text.__modsi3
+ENTRY(__modsi3)
+
+	cmp	r1, #0
+	beq	Ldiv0
+	rsbmi	r1, r1, #0			@ loops below use unsigned.
+	movs	ip, r0				@ preserve sign of dividend
+	rsbmi	r0, r0, #0			@ if negative make positive
+	subs	r2, r1, #1			@ compare divisor with 1
+	cmpne	r0, r1				@ compare dividend with divisor
+	moveq	r0, #0
+	tsthi	r1, r2				@ see if divisor is power of 2
+	andeq	r0, r0, r2
+	bls	10f
+
+	ARM_MOD_BODY r0, r1, r2, r3
+
+10:	cmp	ip, #0
+	rsbmi	r0, r0, #0
+	mov	pc, lr
+
+ENDPROC(__modsi3)
+
+#ifdef CONFIG_AEABI
+
+.section .text.__aeabi_uidivmod
+ENTRY(__aeabi_uidivmod)
+
+	stmfd	sp!, {r0, r1, ip, lr}
+	bl	__aeabi_uidiv
+	ldmfd	sp!, {r1, r2, ip, lr}
+	mul	r3, r0, r2
+	sub	r1, r1, r3
+	mov	pc, lr
+
+ENDPROC(__aeabi_uidivmod)
+
+.section .text.__aeabi_idivmod
+ENTRY(__aeabi_idivmod)
+
+	stmfd	sp!, {r0, r1, ip, lr}
+	bl	__aeabi_idiv
+	ldmfd	sp!, {r1, r2, ip, lr}
+	mul	r3, r0, r2
+	sub	r1, r1, r3
+	mov	pc, lr
+
+ENDPROC(__aeabi_idivmod)
+
+#endif
+
+.section .text.Ldiv0
+Ldiv0:
+
+	str	lr, [sp, #-8]!
+	bl	__div0
+	mov	r0, #0			@ About as wrong as it could be.
+	ldr	pc, [sp], #8
+
+
diff --git a/arch/arm/lib32/lshrdi3.S b/arch/arm/lib32/lshrdi3.S
new file mode 100644
index 0000000..e77e96c
--- /dev/null
+++ b/arch/arm/lib32/lshrdi3.S
@@ -0,0 +1,50 @@
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003, 2004, 2005
+   Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+*/
+
+#include <linux/linkage.h>
+
+#ifdef __ARMEB__
+#define al r1
+#define ah r0
+#else
+#define al r0
+#define ah r1
+#endif
+
+.section .text.__lshrdi3
+ENTRY(__lshrdi3)
+ENTRY(__aeabi_llsr)
+
+	subs	r3, r2, #32
+	rsb	ip, r2, #32
+	movmi	al, al, lsr r2
+	movpl	al, ah, lsr r3
+ ARM(	orrmi	al, al, ah, lsl ip	)
+ THUMB(	lslmi	r3, ah, ip		)
+ THUMB(	orrmi	al, al, r3		)
+	mov	ah, ah, lsr r2
+	mov	pc, lr
+
+ENDPROC(__lshrdi3)
+ENDPROC(__aeabi_llsr)
diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
new file mode 100644
index 0000000..5123691
--- /dev/null
+++ b/arch/arm/lib32/memcpy.S
@@ -0,0 +1,64 @@
+/*
+ *  linux/arch/arm/lib/memcpy.S
+ *
+ *  Author:	Nicolas Pitre
+ *  Created:	Sep 28, 2005
+ *  Copyright:	MontaVista Software, Inc.
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+#define LDR1W_SHIFT	0
+#define STR1W_SHIFT	0
+
+	.macro ldr1w ptr reg abort
+	W(ldr) \reg, [\ptr], #4
+	.endm
+
+	.macro ldr4w ptr reg1 reg2 reg3 reg4 abort
+	ldmia \ptr!, {\reg1, \reg2, \reg3, \reg4}
+	.endm
+
+	.macro ldr8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
+	ldmia \ptr!, {\reg1, \reg2, \reg3, \reg4, \reg5, \reg6, \reg7, \reg8}
+	.endm
+
+	.macro ldr1b ptr reg cond=al abort
+	ldr\cond\()b \reg, [\ptr], #1
+	.endm
+
+	.macro str1w ptr reg abort
+	W(str) \reg, [\ptr], #4
+	.endm
+
+	.macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
+	stmia \ptr!, {\reg1, \reg2, \reg3, \reg4, \reg5, \reg6, \reg7, \reg8}
+	.endm
+
+	.macro str1b ptr reg cond=al abort
+	str\cond\()b \reg, [\ptr], #1
+	.endm
+
+	.macro enter reg1 reg2
+	stmdb sp!, {r0, \reg1, \reg2}
+	.endm
+
+	.macro exit reg1 reg2
+	ldmfd sp!, {r0, \reg1, \reg2}
+	.endm
+
+	.text
+
+/* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
+
+ENTRY(memcpy)
+
+#include "copy_template.S"
+
+ENDPROC(memcpy)
+
diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
new file mode 100644
index 0000000..c4d2672
--- /dev/null
+++ b/arch/arm/lib32/memset.S
@@ -0,0 +1,124 @@
+/*
+ *  linux/arch/arm/lib/memset.S
+ *
+ *  Copyright (C) 1995-2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ *  ASM optimised string functions
+ */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+	.text
+	.align	5
+
+ENTRY(memset)
+	ands	r3, r0, #3		@ 1 unaligned?
+	mov	ip, r0			@ preserve r0 as return value
+	bne	6f			@ 1
+/*
+ * we know that the pointer in ip is aligned to a word boundary.
+ */
+1:	orr	r1, r1, r1, lsl #8
+	orr	r1, r1, r1, lsl #16
+	mov	r3, r1
+	cmp	r2, #16
+	blt	4f
+
+#if ! CALGN(1)+0
+
+/*
+ * We need an 2 extra registers for this loop - use r8 and the LR
+ */
+	stmfd	sp!, {r8, lr}
+	mov	r8, r1
+	mov	lr, r1
+
+2:	subs	r2, r2, #64
+	stmgeia	ip!, {r1, r3, r8, lr}	@ 64 bytes at a time.
+	stmgeia	ip!, {r1, r3, r8, lr}
+	stmgeia	ip!, {r1, r3, r8, lr}
+	stmgeia	ip!, {r1, r3, r8, lr}
+	bgt	2b
+	ldmeqfd	sp!, {r8, pc}		@ Now <64 bytes to go.
+/*
+ * No need to correct the count; we're only testing bits from now on
+ */
+	tst	r2, #32
+	stmneia	ip!, {r1, r3, r8, lr}
+	stmneia	ip!, {r1, r3, r8, lr}
+	tst	r2, #16
+	stmneia	ip!, {r1, r3, r8, lr}
+	ldmfd	sp!, {r8, lr}
+
+#else
+
+/*
+ * This version aligns the destination pointer in order to write
+ * whole cache lines at once.
+ */
+
+	stmfd	sp!, {r4-r8, lr}
+	mov	r4, r1
+	mov	r5, r1
+	mov	r6, r1
+	mov	r7, r1
+	mov	r8, r1
+	mov	lr, r1
+
+	cmp	r2, #96
+	tstgt	ip, #31
+	ble	3f
+
+	and	r8, ip, #31
+	rsb	r8, r8, #32
+	sub	r2, r2, r8
+	movs	r8, r8, lsl #(32 - 4)
+	stmcsia	ip!, {r4, r5, r6, r7}
+	stmmiia	ip!, {r4, r5}
+	tst	r8, #(1 << 30)
+	mov	r8, r1
+	strne	r1, [ip], #4
+
+3:	subs	r2, r2, #64
+	stmgeia	ip!, {r1, r3-r8, lr}
+	stmgeia	ip!, {r1, r3-r8, lr}
+	bgt	3b
+	ldmeqfd	sp!, {r4-r8, pc}
+
+	tst	r2, #32
+	stmneia	ip!, {r1, r3-r8, lr}
+	tst	r2, #16
+	stmneia	ip!, {r4-r7}
+	ldmfd	sp!, {r4-r8, lr}
+
+#endif
+
+4:	tst	r2, #8
+	stmneia	ip!, {r1, r3}
+	tst	r2, #4
+	strne	r1, [ip], #4
+/*
+ * When we get here, we've got less than 4 bytes to zero.  We
+ * may have an unaligned pointer as well.
+ */
+5:	tst	r2, #2
+	strneb	r1, [ip], #1
+	strneb	r1, [ip], #1
+	tst	r2, #1
+	strneb	r1, [ip], #1
+	mov	pc, lr
+
+6:	subs	r2, r2, #4		@ 1 do we have enough
+	blt	5b			@ 1 bytes to align with?
+	cmp	r3, #2			@ 1
+	strltb	r1, [ip], #1		@ 1
+	strleb	r1, [ip], #1		@ 1
+	strb	r1, [ip], #1		@ 1
+	add	r2, r2, r3		@ 1 (r2 = r2 - (4 - r3))
+	b	1b
+ENDPROC(memset)
+
diff --git a/arch/arm/lib32/module.c b/arch/arm/lib32/module.c
new file mode 100644
index 0000000..be7965d
--- /dev/null
+++ b/arch/arm/lib32/module.c
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
diff --git a/arch/arm/lib32/pbl.lds.S b/arch/arm/lib32/pbl.lds.S
new file mode 100644
index 0000000..73baff0
--- /dev/null
+++ b/arch/arm/lib32/pbl.lds.S
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
diff --git a/arch/arm/lib32/runtime-offset.S b/arch/arm/lib32/runtime-offset.S
new file mode 100644
index 0000000..f10c4c8
--- /dev/null
+++ b/arch/arm/lib32/runtime-offset.S
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
+1:	adr r0, 1b
+	ldr r1, linkadr
+	subs r0, r1, r0
+THUMB(	subs r0, r0, #1)
+	mov pc, lr
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
+		ldr r0, __\name
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
+	ldr r1, =__ld_var_base
+	adds r0, r0, r1
+	mov pc, lr
diff --git a/arch/arm/lib32/semihosting-trap.S b/arch/arm/lib32/semihosting-trap.S
new file mode 100644
index 0000000..9e40ebf
--- /dev/null
+++ b/arch/arm/lib32/semihosting-trap.S
@@ -0,0 +1,28 @@
+/*
+ * semihosting-trap.S -- Assembly code needed to make a semihosting call
+ *
+ * Copyright (c) 2015 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <linux/linkage.h>
+#include <asm/unified.h>
+
+.section .text.semihosting_trap
+ENTRY(semihosting_trap)
+	@ In supervisor mode SVC would clobber LR
+	push	{lr}
+	ARM(	svc	#0x123456	)
+	THUMB(	svc	#0xAB		)
+	pop	{pc}
+ENDPROC(semihosting_trap)
diff --git a/arch/arm/lib32/semihosting.c b/arch/arm/lib32/semihosting.c
new file mode 100644
index 0000000..a735196
--- /dev/null
+++ b/arch/arm/lib32/semihosting.c
@@ -0,0 +1,227 @@
+/*
+ * semihosting.c -- ARM Semihoting API implementation
+ *
+ * Copyright (c) 2015 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * based on a smiliar code from U-Boot
+ * Copyright (c) 2014 Broadcom Corporation
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fcntl.h>
+
+#ifndef O_BINARY
+#define O_BINARY	0
+#endif
+
+
+enum {
+	SEMIHOSTING_SYS_OPEN	= 0x01,
+	SEMIHOSTING_SYS_CLOSE	= 0x02,
+	SEMIHOSTING_SYS_WRITEC	= 0x03,
+	SEMIHOSTING_SYS_WRITE0	= 0x04,
+	SEMIHOSTING_SYS_WRITE	= 0x05,
+	SEMIHOSTING_SYS_READ	= 0x06,
+	SEMIHOSTING_SYS_READC	= 0x07,
+	/* SYS_ISERROR is not implemented  */
+	SEMIHOSTING_SYS_ISATTY	= 0x09,
+	SEMIHOSTING_SYS_SEEK	= 0x0a,
+	SEMIHOSTING_SYS_FLEN	= 0x0c,
+	SEMIHOSTING_SYS_REMOVE	= 0x0e,
+	SEMIHOSTING_SYS_RENAME	= 0x0f,
+	SEMIHOSTING_SYS_TIME	= 0x11,
+	SEMIHOSTING_SYS_ERRNO	= 0x13,
+	/* SYS_GET_CMDLINE is not implemented */
+	/* SYS_HEAPINFO is not implemented */
+	/* angel_SWIreason_ReportException is not implemented */
+	SEMIHOSTING_SYS_SYSTEM	= 0x12,
+};
+
+uint32_t semihosting_trap(uint32_t sysnum, void *addr);
+
+static uint32_t semihosting_flags_to_mode(int flags)
+{
+	static const int semihosting_open_modeflags[12] = {
+		O_RDONLY,
+		O_RDONLY | O_BINARY,
+		O_RDWR,
+		O_RDWR | O_BINARY,
+		O_WRONLY | O_CREAT | O_TRUNC,
+		O_WRONLY | O_CREAT | O_TRUNC | O_BINARY,
+		O_RDWR | O_CREAT | O_TRUNC,
+		O_RDWR | O_CREAT | O_TRUNC | O_BINARY,
+		O_WRONLY | O_CREAT | O_APPEND,
+		O_WRONLY | O_CREAT | O_APPEND | O_BINARY,
+		O_RDWR | O_CREAT | O_APPEND,
+		O_RDWR | O_CREAT | O_APPEND | O_BINARY
+	};
+
+	int i;
+	for (i = 0; i < ARRAY_SIZE(semihosting_open_modeflags); i++) {
+		if (semihosting_open_modeflags[i] == flags)
+			return i;
+	}
+
+	return 0;
+}
+
+int semihosting_open(const char *fname, int flags)
+{
+	struct __packed {
+		uint32_t fname;
+		uint32_t mode;
+		uint32_t len;
+	} open = {
+		.fname = (uint32_t)fname,
+		.len = strlen(fname),
+		.mode = semihosting_flags_to_mode(flags),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_OPEN, &open);
+}
+EXPORT_SYMBOL(semihosting_open);
+
+int semihosting_close(int fd)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_CLOSE, &fd);
+}
+EXPORT_SYMBOL(semihosting_close);
+
+int semihosting_writec(char c)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_WRITEC, &c);
+}
+EXPORT_SYMBOL(semihosting_writec);
+
+int semihosting_write0(const char *str)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_WRITE0, (void *)str);
+}
+EXPORT_SYMBOL(semihosting_write0);
+
+struct __packed semihosting_file_io {
+	uint32_t fd;
+	uint32_t memp;
+	uint32_t len;
+};
+
+ssize_t semihosting_write(int fd, const void *buf, size_t count)
+{
+	struct semihosting_file_io write = {
+		.fd = fd,
+		.memp = (uint32_t)buf,
+		.len = count,
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_WRITE, &write);
+}
+EXPORT_SYMBOL(semihosting_write);
+
+ssize_t semihosting_read(int fd, void *buf, size_t count)
+{
+	struct semihosting_file_io read = {
+		.fd = fd,
+		.memp = (uint32_t)buf,
+		.len = count,
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_READ, &read);
+}
+EXPORT_SYMBOL(semihosting_read);
+
+int semihosting_readc(void)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_READC, NULL);
+}
+EXPORT_SYMBOL(semihosting_readc);
+
+int semihosting_isatty(int fd)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_ISATTY, &fd);
+}
+EXPORT_SYMBOL(semihosting_isatty);
+
+int semihosting_seek(int fd, off_t pos)
+{
+	struct __packed {
+		uint32_t fd;
+		uint32_t pos;
+	} seek = {
+		.fd = fd,
+		.pos = pos,
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_SEEK, &seek);
+}
+EXPORT_SYMBOL(semihosting_seek);
+
+int semihosting_flen(int fd)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_FLEN, &fd);
+}
+EXPORT_SYMBOL(semihosting_flen);
+
+int semihosting_remove(const char *fname)
+{
+	struct __packed {
+		uint32_t fname;
+		uint32_t fname_length;
+	} remove = {
+		.fname = (uint32_t)fname,
+		.fname_length = strlen(fname),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_REMOVE, &remove);
+}
+EXPORT_SYMBOL(semihosting_remove);
+
+int semihosting_rename(const char *fname1, const char *fname2)
+{
+	struct __packed {
+		uint32_t fname1;
+		uint32_t fname1_length;
+		uint32_t fname2;
+		uint32_t fname2_length;
+	} rename = {
+		.fname1 = (uint32_t)fname1,
+		.fname1_length = strlen(fname1),
+		.fname2 = (uint32_t)fname2,
+		.fname2_length = strlen(fname2),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_RENAME, &rename);
+}
+EXPORT_SYMBOL(semihosting_rename);
+
+int semihosting_errno(void)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_ERRNO, NULL);
+}
+EXPORT_SYMBOL(semihosting_errno);
+
+
+int semihosting_system(const char *command)
+{
+	struct __packed {
+		uint32_t cmd;
+		uint32_t cmd_len;
+	} system = {
+		.cmd = (uint32_t)command,
+		.cmd_len = strlen(command),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_SYSTEM, &system);
+}
+EXPORT_SYMBOL(semihosting_system);
diff --git a/arch/arm/lib32/unwind.c b/arch/arm/lib32/unwind.c
new file mode 100644
index 0000000..c3dca5b
--- /dev/null
+++ b/arch/arm/lib32/unwind.c
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
diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
new file mode 100644
index 0000000..87e26f6
--- /dev/null
+++ b/arch/arm/lib64/Makefile
@@ -0,0 +1,9 @@
+obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
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
index 0000000..020e6d7
--- /dev/null
+++ b/arch/arm/lib64/armlinux.c
@@ -0,0 +1,50 @@
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
+void start_linux(void *adr, int swap, unsigned long initrd_address,
+		unsigned long initrd_size, void *oftree)
+{
+	void (*kernel)(void *dtb) = adr;
+
+	shutdown_barebox();
+
+	kernel(oftree);
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
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
