Delivery-date: Tue, 16 Mar 2021 09:07:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4jR-0002JY-14
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:07:13 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4jP-0000Xb-7D
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:07:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+36FwaBPzAR4N1MD6KfgdSeiElQGKnw14afe7rANRWQ=; b=M8Pe6xzJV2SIZd+6b3hvcKokS
	g+KU0X2+Ezapt6rtMdvWByhDWRNZudGmUqCUvtXqzDnPMiYuoUZnYlyDnAT6yrOwnNnV84axhV31A
	rIrz90TLXvVuaY0usHJ7+EGrmSX0+sEG6Dq/f+5R6GfXumuORQaehpwWW7OW9+yIvkE6lr1QmfGeG
	ZdJ90hGllBOmPEPT5v0YQqXE6YVrGs9hC5xxQjf1Qbp6DcqHOlqhUFX/giBw0MfoF7sZWEUVqIJRh
	h2RSs1F4e+1Wo7FzzSc4SdI6+/ToOAQ1VO4JzhXrfY5WPQT2J7fvAV0uYPCGzrqxozQskjWPd+gFc
	fWDEmiKMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4iD-0004pm-TM; Tue, 16 Mar 2021 08:05:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4hT-0004XT-TM
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:05:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hS-0007yA-ET; Tue, 16 Mar 2021 09:05:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hR-0006DE-6f; Tue, 16 Mar 2021 09:05:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Mar 2021 09:04:59 +0100
Message-Id: <20210316080505.19361-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316080505.19361-1-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_080512_190265_3BE32D11 
X-CRM114-Status: GOOD (  29.04  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have everything in place to migrate erizo to PBL.
As currently, this is the only board, we can drop all non-PBL support
in the same go.

The board still throws TLSF errors on startup, but that was the case
before the rework as well. Tested with qemu as described in the docs.

Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I assume some memory corruption is happening due to the minimal malloc
area size? It doesn't happen with dlmalloc. It doesn't happen on riscv
virt added later on, so I will likely not pursue this further.
---
 Documentation/boards/riscv.rst             | 13 +++--
 Makefile                                   |  1 +
 arch/riscv/Kconfig                         | 15 ++---
 arch/riscv/Makefile                        | 25 +++-----
 arch/riscv/boards/erizo/Makefile           |  4 +-
 arch/riscv/boards/erizo/board.c            | 25 --------
 arch/riscv/boards/erizo/lowlevel.c         | 37 ++++--------
 arch/riscv/boards/erizo/start.S            | 68 ----------------------
 arch/riscv/configs/erizo_generic_defconfig |  5 --
 arch/riscv/dts/Makefile                    |  9 +--
 arch/riscv/lib/Makefile                    |  2 +-
 arch/riscv/lib/barebox.lds.S               | 36 ++++++++----
 arch/riscv/lib/dtb.c                       | 26 +++++++++
 common/Kconfig                             |  4 +-
 images/Makefile                            |  4 ++
 images/Makefile.riscv                      | 12 ++++
 pbl/Kconfig                                |  2 +-
 17 files changed, 107 insertions(+), 181 deletions(-)
 delete mode 100644 arch/riscv/boards/erizo/board.c
 delete mode 100644 arch/riscv/boards/erizo/start.S
 create mode 100644 arch/riscv/lib/dtb.c
 create mode 100644 images/Makefile.riscv

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index c7fa52aadbee..a1f7e30531ee 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -1,8 +1,11 @@
 RISC-V
 ======
 
-Running RISC-V barebox on qemu
-------------------------------
+Erizo
+-----
+
+Running on qemu
+~~~~~~~~~~~~~~~
 
 Obtain RISC-V GCC/Newlib Toolchain,
 see https://github.com/riscv/riscv-tools/blob/master/README.md
@@ -44,7 +47,7 @@ Next compile barebox::
 Run barebox::
 
   $ <path to riscv-qemu source>/riscv32-softmmu/qemu-system-riscv32 \
-      -nographic -M erizo -bios <path to barebox sources >/barebox.bin \
+      -nographic -M erizo -bios ./images/barebox-erizo-generic.img \
       -serial stdio -monitor none -trace file=/dev/null
   Switch to console [cs0]
   
@@ -59,8 +62,8 @@ Run barebox::
   barebox:/
 
 
-Running RISC-V barebox on DE0-Nano FPGA board
----------------------------------------------
+Running on DE0-Nano FPGA board
+------------------------------
 
 See https://github.com/open-design/riscv-soc-cores/ for instructions
 on DE0-Nano bitstream generation and loading.
diff --git a/Makefile b/Makefile
index 6d44314f0a7e..4cc7bef2bd42 100644
--- a/Makefile
+++ b/Makefile
@@ -776,6 +776,7 @@ define rule_barebox__
 	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
 	$(call cmd,barebox__)
 	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
+	$(call cmd,prelink__)
 	$(call cmd,sysmap)
 endef
 
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index b1b24f2e5764..4a2a547a7b35 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -1,14 +1,16 @@
 config RISCV
 	def_bool y
 	select GENERIC_FIND_NEXT_BIT
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select HAVE_CONFIGURABLE_TEXT_BASE
 	select GPIOLIB
 	select OFTREE
+	select OFDEVICE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select HAS_DMA
+	select HAVE_PBL_IMAGE
+	select HAVE_PBL_MULTI_IMAGES
+	select HAVE_IMAGE_COMPRESSION
 
 config ARCH_TEXT_BASE
 	hex
@@ -24,6 +26,7 @@ config MACH_ERIZO
 	bool "erizo family"
 	select HAS_DEBUG_LL
 	select HAS_NMON
+	select USE_COMPRESSED_DTB
 
 endchoice
 
@@ -56,14 +59,6 @@ config 32BIT
 
 endchoice
 
-config BUILTIN_DTB
-	bool "link a DTB into the barebox image"
-	depends on OFTREE
-
-config BUILTIN_DTB_NAME
-	string "DTB to build into the barebox image"
-	depends on BUILTIN_DTB
-
 source "arch/riscv/mach-erizo/Kconfig"
 
 endmenu
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index df2b5bb681a4..00456ed02ce1 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -3,21 +3,23 @@ KBUILD_DEFCONFIG := erizo_generic_defconfig
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
 ifeq ($(CONFIG_ARCH_RV32I),y)
-	cflags-y += -march=rv32im -mabi=ilp32
-	riscv-ldflags-y += -melf32lriscv
+	riscv-cflags-y := -march=rv32im -mabi=ilp32
+	riscv-ldflags-y := -melf32lriscv
 endif
 
-cflags-y += -fno-pic -Wstrict-prototypes -mcmodel=medany
+riscv-cflags-y += -Wstrict-prototypes -mcmodel=medany -fpic
+riscv-ldflags-y += -pie -static
 
+PBL_CPPFLAGS += $(riscv-cflags-y)
+LDFLAGS_pbl += $(riscv-ldflags-y)
+
+cflags-y += $(riscv-cflags-y)
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
 
 LDFLAGS_barebox += $(riscv-ldflags-y)
 
-TEXT_BASE = $(CONFIG_TEXT_BASE)
-KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
-
 ifndef CONFIG_MODULES
 # Add cleanup flags
 KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
@@ -54,13 +56,4 @@ lds-y	:= arch/riscv/lib/barebox.lds
 
 CLEAN_FILES += arch/riscv/lib/barebox.lds
 
-ifeq ($(CONFIG_MACH_ERIZO),y)
-KBUILD_IMAGE := barebox.erizo.nmon
-endif
-
-quiet_cmd_erizo_nmon_image = MKIMAGE $@
-      cmd_erizo_nmon_image = $(srctree)/scripts/erizo-nmon-image $< $@ || \
-	echo "WARNING: Couldn't create erizo nmon image due to previous errors."
-
-barebox.erizo.nmon: $(KBUILD_BINARY) FORCE
-	$(call if_changed,erizo_nmon_image)
+KBUILD_IMAGE := $(KBUILD_BINARY)
diff --git a/arch/riscv/boards/erizo/Makefile b/arch/riscv/boards/erizo/Makefile
index 72b9a13ba73f..3d217ffe0b93 100644
--- a/arch/riscv/boards/erizo/Makefile
+++ b/arch/riscv/boards/erizo/Makefile
@@ -1,5 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-y += lowlevel.o
-obj-y += start.o
-obj-y += board.o
+pbl-y += lowlevel.o
diff --git a/arch/riscv/boards/erizo/board.c b/arch/riscv/boards/erizo/board.c
deleted file mode 100644
index b9b68fc7f254..000000000000
--- a/arch/riscv/boards/erizo/board.c
+++ /dev/null
@@ -1,25 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2016, 2018 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <of.h>
-
-extern char __dtb_start[];
-
-static int of_riscv_init(void)
-{
-	barebox_register_fdt(__dtb_start);
-
-	return 0;
-}
-core_initcall(of_riscv_init);
diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index f9c640c1123f..d9edb530b746 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -1,35 +1,18 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
 
 #include <common.h>
-#include <memory.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/sections.h>
+#include <asm/barebox-riscv.h>
+#include <debug_ll.h>
 
-void main_entry(void);
-
-/**
- * Called plainly from assembler code
- *
- * @note The C environment isn't initialized yet
- */
-void main_entry(void)
+ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
-	/* clear the BSS first */
-	memset(__bss_start, 0x00, __bss_stop - __bss_start);
+	extern char __dtb_z_erizo_generic_start[];
+
+	debug_ll_ns16550_init();
+	putc_ll('>');
 
-	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+	/* On POR, we are running from read-only memory here. */
 
-	start_barebox();
+	barebox_riscv_entry(0x80000000, SZ_8M,
+			    __dtb_z_erizo_generic_start + get_runtime_offset());
 }
diff --git a/arch/riscv/boards/erizo/start.S b/arch/riscv/boards/erizo/start.S
deleted file mode 100644
index d1dbe48b7bd6..000000000000
--- a/arch/riscv/boards/erizo/start.S
+++ /dev/null
@@ -1,68 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Startup Code for RISC-V CPU
- *
- * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * based on coreboot/src/arch/riscv/bootblock.S
- *      and barebox/arch/mips/boot/start.S
- *
- * This file is part of barebox.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <asm-generic/memory_layout.h>
-
-#include "mach/debug_ll.h"
-
-#include "asm/riscv_nmon.h"
-
-	.text
-	.section ".text_entry"
-	.align 2
-
-.globl _start
-_start:
-	debug_ll_ns16550_init
-
-	riscv_nmon
-
-	li	sp, STACK_BASE + STACK_SIZE
-
-	/* copy barebox to link location */
-
-	la	a0, _start	/* a0 <- _start actual address */
-	li	a1, CONFIG_TEXT_BASE	/* a1 <- _start link address */
-
-	beq	a0, a1, main_entry
-
-	la	a2, __bss_start
-
-#define LONGSIZE 4
-
-copy_loop:
-	/* copy from source address [a0] */
-	lw	t0, LONGSIZE * 0(a0)
-	lw	t1, LONGSIZE * 1(a0)
-	lw	t2, LONGSIZE * 2(a0)
-	lw	t3, LONGSIZE * 3(a0)
-	/* copy to target address [a1] */
-	sw	t0, LONGSIZE * 0(a1)
-	sw	t1, LONGSIZE * 1(a1)
-	sw	t2, LONGSIZE * 2(a1)
-	sw	t3, LONGSIZE * 3(a1)
-	addi	a0, a0, LONGSIZE * 4
-	addi	a1, a1, LONGSIZE * 4
-	bgeu	a2, a0, copy_loop
-
-	/* Alas! At the moment I can't load main_entry __link__ address
-	   into a0 with la. Use CONFIG_TEXT_BASE instead. This solution
-	   leads to extra cycles for repeat sp initialization. */
-
-	li	a0, CONFIG_TEXT_BASE
-	jalr	a0
diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
index 2ea1e46cc960..839b652ab53d 100644
--- a/arch/riscv/configs/erizo_generic_defconfig
+++ b/arch/riscv/configs/erizo_generic_defconfig
@@ -1,9 +1,5 @@
 # CONFIG_GLOBALVAR is not set
-CONFIG_TEXT_BASE=0x80000000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x800e0000
 CONFIG_STACK_SIZE=0x20000
-CONFIG_MALLOC_BASE=0x80100000
 CONFIG_MALLOC_SIZE=0x100000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PANIC_HANG=y
@@ -36,7 +32,6 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_OF_DUMP=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_DHRYSTONE=y
-CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SPI_GPIO=y
 CONFIG_I2C=y
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 6bd4e5a9250c..4041c34e0c45 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -1,12 +1,9 @@
-BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
-ifneq ($(BUILTIN_DTB),)
-obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
-endif
-
-obj-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+# SPDX-License-Identifier: GPL-2.0
 
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
 
+pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 5f57d9fcd2e2..a9bf68bca597 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -2,7 +2,7 @@
 
 extra-y += barebox.lds
 
-obj-y += riscv_timer.o
+obj-y += riscv_timer.o dtb.o
 obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
 obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index c8a331c577cf..562ad5dc6662 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -14,22 +14,30 @@
 #include <asm-generic/barebox.lds.h>
 
 OUTPUT_ARCH(riscv)
-ENTRY(_start)
+ENTRY(start)
 SECTIONS
 {
-	. = TEXT_BASE;
+	. = 0x0;
 
-	. = ALIGN(8);
+	.image_start : { *(.__image_start) }
+
+	. = ALIGN(4);
+	._text : { *(._text) }
 	.text      :
 	{
 		_stext = .;
-		_start = .;
-		KEEP(*(.text_entry*))
-		_text = .;
+		*(.text_entry*)
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		__exceptions_start = .;
+		KEEP(*(.text_exceptions*))
+		__exceptions_stop = .;
 		*(.text*)
 	}
+	BAREBOX_BARE_INIT_SIZE
 
-	. = ALIGN(8);
+	. = ALIGN(4);
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
@@ -38,7 +46,7 @@ SECTIONS
 	_etext = .;			/* End of text and rodata section */
 	_sdata = .;
 
-	. = ALIGN(8);
+	. = ALIGN(4);
 	.data : { *(.data*) }
 
 	.barebox_imd : { BAREBOX_IMD }
@@ -57,9 +65,13 @@ SECTIONS
 	}
 
 	_edata = .;
-	. = ALIGN(8);
-	__bss_start = .;
-	.bss : { *(.bss*) *(.sbss*) }
-	__bss_stop = .;
+
+	.image_end : { *(.__image_end) }
+
+	. = ALIGN(4);
+	.__bss_start :  { *(.__bss_start) }
+	.bss : { *(.bss*) }
+	.__bss_stop :  { *(.__bss_stop) }
 	_end = .;
+	_barebox_image_size = __bss_start;
 }
diff --git a/arch/riscv/lib/dtb.c b/arch/riscv/lib/dtb.c
new file mode 100644
index 000000000000..c7fa6b0c31ca
--- /dev/null
+++ b/arch/riscv/lib/dtb.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <asm/barebox-riscv.h>
+
+static int of_riscv_init(void)
+{
+	void *fdt;
+
+	/* See if we are provided a dtb in boarddata */
+	fdt = barebox_riscv_boot_dtb();
+	if (!fdt) {
+		pr_err("No DTB found\n");
+		return -ENODATA;
+	}
+
+	pr_debug("using boarddata provided DTB\n");
+
+
+	barebox_register_fdt(fdt);
+
+	return 0;
+}
+core_initcall(of_riscv_init);
diff --git a/common/Kconfig b/common/Kconfig
index 36207274f07f..37204fb40a44 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -44,7 +44,7 @@ config BLOCK_WRITE
 
 config USE_COMPRESSED_DTB
 	bool
-	depends on ARM
+	depends on ARM || RISCV
 	select UNCOMPRESS
 	select LZO_DECOMPRESS
 
@@ -358,7 +358,7 @@ config KALLSYMS
 	  This is useful to print a nice backtrace when an exception occurs.
 
 config RELOCATABLE
-	depends on PPC || ARM
+	depends on PPC || ARM || RISCV
 	bool "generate relocatable barebox binary"
 	help
 	  A non relocatable barebox binary will run at it's compiled in
diff --git a/images/Makefile b/images/Makefile
index 84492a154d16..ee1347f6b6bd 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -42,6 +42,8 @@
 # both as entrypoint and as filename
 #
 
+include scripts/Makefile.lib
+
 quiet_cmd_objcopy_bin = OBJCOPYB $@
       cmd_objcopy_bin = \
 		$(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@ && \
@@ -64,6 +66,7 @@ PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
 $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
+	$(call cmd,prelink__)
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
@@ -164,6 +167,7 @@ include $(srctree)/images/Makefile.at91
 include $(srctree)/images/Makefile.zynq
 include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
+include $(srctree)/images/Makefile.riscv
 
 
 pblb-$(CONFIG_BOARD_GENERIC_DT) += start_dt_2nd
diff --git a/images/Makefile.riscv b/images/Makefile.riscv
new file mode 100644
index 000000000000..463c6ce4400d
--- /dev/null
+++ b/images/Makefile.riscv
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+quiet_cmd_erizo_nmon_image = MKIMAGE $@
+      cmd_erizo_nmon_image = $(srctree)/scripts/erizo-nmon-image $< $@ || \
+	echo "WARNING: Couldn't create erizo nmon image due to previous errors."
+
+$(obj)/%.nmon: $(obj)/%.img FORCE
+	$(call if_changed,erizo_nmon_image)
+
+pblb-$(CONFIG_BOARD_ERIZO_GENERIC) += start_erizo_generic
+FILE_barebox-erizo-generic.img = start_erizo_generic.pblb
+image-$(CONFIG_BOARD_ERIZO_GENERIC) += barebox-erizo-generic.img barebox-erizo-generic.nmon
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 2eea5aef7a30..451a278c4088 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -27,7 +27,7 @@ config PBL_SINGLE_IMAGE
 if PBL_IMAGE
 
 config PBL_RELOCATABLE
-	depends on ARM || MIPS
+	depends on ARM || MIPS || RISCV
 	bool "relocatable pbl image"
 	help
 	  Generate a pbl binary which can relocate itself during startup to run
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

