Delivery-date: Fri, 22 May 2026 10:38:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQLON-002XZ8-1N
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 10:38:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQLOM-0004jD-7c
	for lore@pengutronix.de; Fri, 22 May 2026 10:38:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xo9elN3DAE3k5JVvw07k2WziLbouDLYrX3BrA7IDpMc=; b=fY3qIETUnWlqR/
	O6n6ayOmGKQeR9oMXOfy2NknbLlQO/R+5oAjnpqW7SiapP/RC6tQ9HS79u+kd0rtTC4IRAjwBMokp
	oasm7H/mwl1xd2yiD2/4MM6qF9mfz+Tphue1uoKLVD0JyeCcia6j5XL55JY9gsYWGHVS7ZVMJiV9+
	D1d4CrOc8q92tejQxQPpH/LnZL0idAdpqDiVMbK5z1XNTHFXOJfZEDbsz9LXKqGA5J1lq9w/FtdGg
	zn41vfMhUWpGCx3VQw79+/NsHK7bAwHnJkqHMDlZAFLVnHxcrguV/4QLIetoWr8r/TcO5VegkEmU3
	X7zvLPJRhOt9sJdfAMXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQLNE-0000000ADHk-3Qfo;
	Fri, 22 May 2026 08:36:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQLNC-0000000ADH2-0xva
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 08:36:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQLNA-0004Yy-Gl; Fri, 22 May 2026 10:36:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQLN9-001EuM-2s;
	Fri, 22 May 2026 10:36:48 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQLNA-00000009u2y-1WSQ;
	Fri, 22 May 2026 10:36:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 May 2026 10:34:51 +0200
Message-ID: <20260522083644.2360282-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_013650_415751_A35BB6B6 
X-CRM114-Status: GOOD (  15.64  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, ore@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: remove non-functional zbarebox.bin target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be able to build zbarebox.bin, HEAD_TEXT_BASE must be defined, but
HEAD_TEXT_BASE is dependent on MALLOC_BASE and this has not been defined
for MIPS since commit 2eecaafe20ff ("MIPS: relocation: do not use
configurable memory layout"). This is more than 6 years ago, so it's
safe to assume this is not needed, so just delete all of it and then
remove HEAD_TEXT_BASE and MALLOC_BASE that are now unused.

This leaves following files in the documentation dangling: uemd.rst and
img-ci20 as they reference the zbarebox.bin file, but I am not sure what
the modern alternative is if any. On the bright side, it's not any more
broken than what it was before..

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/Makefile                  | 14 ---------
 arch/mips/boot/uncompress.c         |  2 +-
 arch/mips/pbl/.gitignore            | 11 -------
 arch/mips/pbl/Makefile              | 44 --------------------------
 arch/mips/pbl/piggy.gzip.S          |  8 -----
 arch/mips/pbl/piggy.lz4.S           |  8 -----
 arch/mips/pbl/piggy.lzo.S           |  8 -----
 arch/mips/pbl/piggy.shipped.S       |  8 -----
 arch/mips/pbl/piggy.xzkern.S        |  8 -----
 arch/mips/pbl/zbarebox.lds.S        | 48 -----------------------------
 common/Kconfig                      |  5 ---
 include/asm-generic/memory_layout.h |  3 --
 12 files changed, 1 insertion(+), 166 deletions(-)
 delete mode 100644 arch/mips/pbl/.gitignore
 delete mode 100644 arch/mips/pbl/Makefile
 delete mode 100644 arch/mips/pbl/piggy.gzip.S
 delete mode 100644 arch/mips/pbl/piggy.lz4.S
 delete mode 100644 arch/mips/pbl/piggy.lzo.S
 delete mode 100644 arch/mips/pbl/piggy.shipped.S
 delete mode 100644 arch/mips/pbl/piggy.xzkern.S
 delete mode 100644 arch/mips/pbl/zbarebox.lds.S

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 8001bb54bed5..702acd83892b 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -79,14 +79,7 @@ KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections --emit-relocs
 endif
 
-ifdef CONFIG_IMAGE_COMPRESSION
-KBUILD_BINARY := arch/mips/pbl/zbarebox.bin
-KBUILD_TARGET := zbarebox.bin
-$(KBUILD_BINARY): $(KBUILD_TARGET)
-else
 KBUILD_BINARY := barebox.bin
-KBUILD_TARGET := barebox.bin
-endif
 
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
 machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
@@ -123,13 +116,6 @@ cmd_barebox__ ?= $(LD) $(LDFLAGS_barebox) -o $@ \
 
 CLEAN_FILES    += arch/mips/lib/barebox.lds barebox.map barebox.S
 
-pbl := arch/mips/pbl
-zbarebox.S zbarebox.bin zbarebox: barebox.bin
-	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
-
-archclean:
-	$(MAKE) $(clean)=$(pbl)
-
 dts := arch/mips/dts
 
 %.dtb: scripts
diff --git a/arch/mips/boot/uncompress.c b/arch/mips/boot/uncompress.c
index 7530054cc24e..c1b429df5c8f 100644
--- a/arch/mips/boot/uncompress.c
+++ b/arch/mips/boot/uncompress.c
@@ -30,7 +30,7 @@ void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
-	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
+	/* set 128 KiB at the end of the malloc area for early malloc */
 	pbl_malloc_init(TEXT_BASE - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
 
 	piggy_len = (unsigned long)&input_data_end - (unsigned long)&input_data;
diff --git a/arch/mips/pbl/.gitignore b/arch/mips/pbl/.gitignore
deleted file mode 100644
index 667b44eaf356..000000000000
--- a/arch/mips/pbl/.gitignore
+++ /dev/null
@@ -1,11 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-piggy.gzip
-piggy.lzo
-piggy.lz4
-piggy.xzkern
-piggy.shipped
-zbarebox
-zbarebox.bin
-zbarebox.lds
-zbarebox.map
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
deleted file mode 100644
index 38dfbd47243c..000000000000
--- a/arch/mips/pbl/Makefile
+++ /dev/null
@@ -1,44 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
-suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
-suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
-suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN)	= xzkern
-suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
-
-OBJCOPYFLAGS_zbarebox.bin = -O binary
-piggy_o := piggy.$(suffix_y).o
-
-targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
-	   $(piggy_o) piggy.$(suffix_y)
-
-# Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
-
-$(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
-	$(call if_changed,objcopy)
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
-	$(Q)$(kecho) '  Barebox: $@ is ready'
-
-$(obj)/zbarebox.S: $(obj)/zbarebox FORCE
-	$(call if_changed,disasm)
-
-PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
-LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map
-LDFLAGS_zbarebox	+= -static --gc-sections
-zbarebox-common := $(BAREBOX_PBL_OBJS) $(obj)/$(piggy_o)
-zbarebox-lds := $(obj)/zbarebox.lds
-
-quiet_cmd_zbarebox__ ?= LD      $@
-      cmd_zbarebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
-      -T $(zbarebox-lds)                                           \
-      --whole-archive $(zbarebox-common) --no-whole-archive        \
-      $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
-
-$(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
-	$(call if_changed,zbarebox__)
-
-$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
-	$(call if_changed,$(suffix_y))
-
-$(obj)/$(piggy_o): $(obj)/piggy.$(suffix_y) FORCE
diff --git a/arch/mips/pbl/piggy.gzip.S b/arch/mips/pbl/piggy.gzip.S
deleted file mode 100644
index b99ba8aeab6f..000000000000
--- a/arch/mips/pbl/piggy.gzip.S
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <asm/asm.h>
-
-	.section .data
-EXPORT(input_data)
-	.incbin "arch/mips/pbl/piggy.gzip"
-EXPORT(input_data_end)
diff --git a/arch/mips/pbl/piggy.lz4.S b/arch/mips/pbl/piggy.lz4.S
deleted file mode 100644
index c3ddbdace01f..000000000000
--- a/arch/mips/pbl/piggy.lz4.S
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <asm/asm.h>
-
-	.section .data
-EXPORT(input_data)
-	.incbin	"arch/mips/pbl/piggy.lz4"
-EXPORT(input_data_end)
diff --git a/arch/mips/pbl/piggy.lzo.S b/arch/mips/pbl/piggy.lzo.S
deleted file mode 100644
index 2c1f4cb34edc..000000000000
--- a/arch/mips/pbl/piggy.lzo.S
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <asm/asm.h>
-
-	.section .data
-EXPORT(input_data)
-	.incbin	"arch/mips/pbl/piggy.lzo"
-EXPORT(input_data_end)
diff --git a/arch/mips/pbl/piggy.shipped.S b/arch/mips/pbl/piggy.shipped.S
deleted file mode 100644
index fc2859e6739f..000000000000
--- a/arch/mips/pbl/piggy.shipped.S
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <asm/asm.h>
-
-	.section .data
-EXPORT(input_data)
-	.incbin	"arch/mips/pbl/piggy.shipped"
-EXPORT(input_data_end)
diff --git a/arch/mips/pbl/piggy.xzkern.S b/arch/mips/pbl/piggy.xzkern.S
deleted file mode 100644
index 8c99d959f80c..000000000000
--- a/arch/mips/pbl/piggy.xzkern.S
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <asm/asm.h>
-
-	.section .data
-EXPORT(input_data)
-	.incbin	"arch/mips/pbl/piggy.xzkern"
-EXPORT(input_data_end)
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
deleted file mode 100644
index 97d77229b6fb..000000000000
--- a/arch/mips/pbl/zbarebox.lds.S
+++ /dev/null
@@ -1,48 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <asm/barebox.lds.h>
-#include <asm-generic/memory_layout.h>
-
-OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-ENTRY(pbl_start)
-SECTIONS
-{
-	. = HEAD_TEXT_BASE;
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
-	BAREBOX_BARE_INIT_SIZE
-
-	. = ALIGN(4);
-	__start_rodata = .;
-	.rodata : { *(.rodata*) }
-
-	.barebox_imd : { BAREBOX_IMD }
-
-	__end_rodata = .;
-	_etext = .;
-
-	. = ALIGN(4);
-	.data : { *(.data*) }
-
-	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
-	_end = .;
-}
diff --git a/common/Kconfig b/common/Kconfig
index 4bed5644c280..077c00f19026 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -289,11 +289,6 @@ config STACK_SIZE
 	default 0x8000
 	prompt "Stack size"
 
-config MALLOC_BASE
-	depends on MEMORY_LAYOUT_FIXED
-	hex
-	prompt "MALLOC_BASE"
-
 config MALLOC_SIZE
 	hex
 	default 0x400000
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index d477f7bbdbf7..b5a0306975be 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -4,13 +4,11 @@
 #define __ASM_GENERIC_MEMORY_LAYOUT_H
 
 #ifdef CONFIG_MEMORY_LAYOUT_DEFAULT
-#define MALLOC_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE)
 #define STACK_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE - CONFIG_STACK_SIZE)
 #endif
 
 #ifdef CONFIG_MEMORY_LAYOUT_FIXED
 #define STACK_BASE CONFIG_STACK_BASE
-#define MALLOC_BASE CONFIG_MALLOC_BASE
 #endif
 
 #ifdef CONFIG_OPTEE_SIZE
@@ -31,7 +29,6 @@
 #define PBL_OPTEE_DTB_MAX_SIZE 0
 #endif
 
-#define HEAD_TEXT_BASE MALLOC_BASE
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
 #define SCRATCH_SIZE	CONFIG_SCRATCH_SIZE
-- 
2.47.3



