Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c62fj-0000GN-AH
 for barebox@lists.infradead.org; Sun, 13 Nov 2016 21:51:14 +0000
Received: by mail-lf0-x243.google.com with SMTP id o141so5452072lff.1
 for <barebox@lists.infradead.org>; Sun, 13 Nov 2016 13:50:24 -0800 (PST)
Received: from localhost.localdomain (ppp109-252-108-239.pppoe.spdop.ru.
 [109.252.108.239])
 by smtp.gmail.com with ESMTPSA id c2sm3977454ljb.8.2016.11.13.13.50.20
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Nov 2016 13:50:21 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Nov 2016 00:50:15 +0300
Message-Id: <20161113215015.9399-3-antonynpavlov@gmail.com>
In-Reply-To: <20161113215015.9399-1-antonynpavlov@gmail.com>
References: <20161113215015.9399-1-antonynpavlov@gmail.com>
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
Subject: [RFCv2 2/2] add initial RISC-V architecture support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---

TODOs:

  * split this patch.
  * use sifive timer IP-block.

 Documentation/boards/riscv.rst                 | 63 +++++++++++++++++++
 arch/riscv/Kconfig                             | 42 +++++++++++++
 arch/riscv/Makefile                            | 51 +++++++++++++++
 arch/riscv/boards/qemu-sifive/.gitignore       |  1 +
 arch/riscv/boards/qemu-sifive/Makefile         |  1 +
 arch/riscv/boards/qemu-sifive/board.c          | 28 +++++++++
 arch/riscv/boot/Makefile                       |  2 +
 arch/riscv/boot/main_entry.c                   | 40 ++++++++++++
 arch/riscv/boot/start.S                        | 44 +++++++++++++
 arch/riscv/configs/qemu-sifive_defconfig       | 75 ++++++++++++++++++++++
 arch/riscv/dts/.gitignore                      |  1 +
 arch/riscv/dts/Makefile                        |  9 +++
 arch/riscv/dts/qemu-sifive.dts                 | 19 ++++++
 arch/riscv/dts/skeleton.dtsi                   | 13 ++++
 arch/riscv/include/asm/barebox.h               |  1 +
 arch/riscv/include/asm/bitops.h                | 35 +++++++++++
 arch/riscv/include/asm/bitsperlong.h           | 10 +++
 arch/riscv/include/asm/byteorder.h             | 12 ++++
 arch/riscv/include/asm/common.h                |  6 ++
 arch/riscv/include/asm/elf.h                   | 11 ++++
 arch/riscv/include/asm/io.h                    |  8 +++
 arch/riscv/include/asm/posix_types.h           |  1 +
 arch/riscv/include/asm/sections.h              |  1 +
 arch/riscv/include/asm/string.h                |  1 +
 arch/riscv/include/asm/swab.h                  |  6 ++
 arch/riscv/include/asm/types.h                 | 60 ++++++++++++++++++
 arch/riscv/include/asm/unaligned.h             | 19 ++++++
 arch/riscv/lib/.gitignore                      |  1 +
 arch/riscv/lib/Makefile                        |  3 +
 arch/riscv/lib/asm-offsets.c                   | 12 ++++
 arch/riscv/lib/barebox.lds.S                   | 87 ++++++++++++++++++++++++++
 arch/riscv/lib/dtb.c                           | 41 ++++++++++++
 arch/riscv/mach-sifive/Kconfig                 | 16 +++++
 arch/riscv/mach-sifive/Makefile                |  3 +
 arch/riscv/mach-sifive/include/mach/debug_ll.h | 38 +++++++++++
 drivers/of/Kconfig                             |  2 +-
 36 files changed, 762 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
new file mode 100644
index 0000000..f22504a
--- /dev/null
+++ b/Documentation/boards/riscv.rst
@@ -0,0 +1,63 @@
+RISC-V
+======
+
+At the moment only qemu emulator is supported (see https://github.com/riscv/riscv-isa-sim
+for details).
+
+Running RISC-V barebox
+----------------------
+
+Obtain RISC-V GCC/Newlib Toolchain,
+see https://github.com/riscv/riscv-tools/blob/master/README.md
+for details. The ``build.sh`` script from ``riscv-tools`` should
+create toolchain.
+
+Next compile qemu emulator::
+
+  $ git clone https://github.com/riscv/riscv-qemu
+  $ cd riscv-qemu
+  $ cap="no" ./configure \
+    --extra-cflags="-Wno-maybe-uninitialized" \
+    --audio-drv-list="" \
+    --disable-attr \
+    --disable-blobs \
+    --disable-bluez \
+    --disable-brlapi \
+    --disable-curl \
+    --disable-curses \
+    --disable-docs \
+    --disable-kvm \
+    --disable-spice \
+    --disable-sdl \
+    --disable-vde \
+    --disable-vnc-sasl \
+    --disable-werror \
+    --enable-trace-backend=simple \
+    --disable-stack-protector \
+    --target-list=riscv32-softmmu,riscv64-softmmu
+  $ make
+
+Next compile barebox::
+
+  $ make qemu-sifive_defconfig ARCH=riscv
+  ...
+  $ make ARCH=riscv CROSS_COMPILE=<path to your riscv toolchain>/riscv64-unknown-elf-
+
+Run barebox::
+
+  $ <path to riscv-qemu source>/riscv64-softmmu/qemu-system-riscv64 \
+      -nographic -M sifive -kernel <path to barebox sources >/barebox \
+      -serial stdio -monitor none -trace file=/dev/null
+
+  Switch to console [cs0]
+  
+  
+  barebox 2016.11.0-00006-g3c29f61 #1 Mon Nov 13 22:21:03 MSK 2016
+  
+  
+  Board: QEMU SiFive
+  Warning: Using dummy clocksource
+  malloc space: 0x00800000 -> 0x00bfffff (size 4 MiB)
+  running /env/bin/init...
+  /env/bin/init not found
+  barebox:/
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
new file mode 100644
index 0000000..baf9ce0
--- /dev/null
+++ b/arch/riscv/Kconfig
@@ -0,0 +1,42 @@
+config RISCV
+	bool
+	select GENERIC_FIND_NEXT_BIT
+	select OFTREE
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select HAVE_CONFIGURABLE_TEXT_BASE
+	default y
+
+config GENERIC_LINKER_SCRIPT
+	bool
+	default y
+
+menu "Machine selection"
+
+choice
+	prompt "System type"
+	default MACH_SIFIVE
+
+config MACH_SIFIVE
+	bool "SiFive"
+
+endchoice
+
+config BUILTIN_DTB
+	bool "link a DTB into the barebox image"
+	depends on OFTREE
+
+config BUILTIN_DTB_NAME
+	string "DTB to build into the barebox image"
+	depends on BUILTIN_DTB
+
+source arch/riscv/mach-sifive/Kconfig
+
+endmenu
+
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
+source crypto/Kconfig
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
new file mode 100644
index 0000000..cebcce5
--- /dev/null
+++ b/arch/riscv/Makefile
@@ -0,0 +1,51 @@
+CPPFLAGS += -fno-strict-aliasing
+
+cflags-y += -fno-pic -pipe
+cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
+	-Wno-uninitialized -Wno-format -Wno-main
+
+LDFLAGS += $(ldflags-y)
+LDFLAGS_barebox += -nostdlib
+
+machine-$(CONFIG_MACH_SIFIVE)	:= sifive
+board-$(CONFIG_BOARD_QEMU_SIFIVE)	:= qemu-sifive
+
+TEXT_BASE = $(CONFIG_TEXT_BASE)
+CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+
+machdirs := $(patsubst %,arch/riscv/mach-%/,$(machine-y))
+
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+else
+CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+endif
+
+archprepare: maketools
+
+PHONY += maketools
+
+ifneq ($(machine-y),)
+MACH  := arch/riscv/mach-$(machine-y)/
+else
+MACH  :=
+endif
+
+ifneq ($(board-y),)
+BOARD := arch/riscv/boards/$(board-y)/
+else
+BOARD :=
+endif
+
+common-y += $(BOARD) $(MACH)
+common-y += arch/riscv/lib/
+common-y += arch/riscv/boot/
+
+common-$(CONFIG_OFTREE) += arch/riscv/dts/
+
+CPPFLAGS += $(cflags-y)
+CFLAGS += $(cflags-y)
+
+lds-y	:= arch/riscv/lib/barebox.lds
+
+CLEAN_FILES += arch/riscv/lib/barebox.lds
diff --git a/arch/riscv/boards/qemu-sifive/.gitignore b/arch/riscv/boards/qemu-sifive/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/riscv/boards/qemu-sifive/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/riscv/boards/qemu-sifive/Makefile b/arch/riscv/boards/qemu-sifive/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/riscv/boards/qemu-sifive/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/riscv/boards/qemu-sifive/board.c b/arch/riscv/boards/qemu-sifive/board.c
new file mode 100644
index 0000000..ecda850
--- /dev/null
+++ b/arch/riscv/boards/qemu-sifive/board.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+
+static int hostname_init(void)
+{
+	barebox_set_hostname("barebox");
+
+	return 0;
+}
+postcore_initcall(hostname_init);
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
new file mode 100644
index 0000000..d6d28ce
--- /dev/null
+++ b/arch/riscv/boot/Makefile
@@ -0,0 +1,2 @@
+obj-y += start.o
+obj-y += main_entry.o
diff --git a/arch/riscv/boot/main_entry.c b/arch/riscv/boot/main_entry.c
new file mode 100644
index 0000000..18db86d
--- /dev/null
+++ b/arch/riscv/boot/main_entry.c
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
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
+
+#include <common.h>
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
+
+void main_entry(void);
+
+/**
+ * Called plainly from assembler code
+ *
+ * @note The C environment isn't initialized yet
+ */
+void main_entry(void)
+{
+	/* clear the BSS first */
+	memset(__bss_start, 0x00, __bss_stop - __bss_start);
+
+	mem_malloc_init((void *)MALLOC_BASE,
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+
+	start_barebox();
+}
diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
new file mode 100644
index 0000000..1c7612c
--- /dev/null
+++ b/arch/riscv/boot/start.S
@@ -0,0 +1,44 @@
+/*
+ * Startup Code for MIPS CPU
+ *
+ * based on coreboot/src/arch/riscv/bootblock.S
+ *
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm-generic/memory_layout.h>
+
+	.text
+	.section ".text_bare_init"
+	.align 4
+
+.globl _start
+_start:
+
+	li sp, STACK_BASE + STACK_SIZE
+
+	# make room for HLS and initialize it
+	addi sp, sp, -64 /* MENTRY_FRAME_SIZE */
+
+	# poison the stack
+	li t1, STACK_BASE
+	li t0, 0xdeadbeef
+	sd t0, 0(t1)
+
+	# clear any pending interrupts
+	csrwi mip, 0
+
+	tail main_entry
diff --git a/arch/riscv/configs/qemu-sifive_defconfig b/arch/riscv/configs/qemu-sifive_defconfig
new file mode 100644
index 0000000..774dfad
--- /dev/null
+++ b/arch/riscv/configs/qemu-sifive_defconfig
@@ -0,0 +1,75 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="qemu-sifive"
+# CONFIG_GLOBALVAR is not set
+CONFIG_TEXT_BASE=0x00001000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x007f0000
+CONFIG_STACK_SIZE=0x10000
+CONFIG_MALLOC_BASE=0x00800000
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_BOOTM is not set
+CONFIG_PARTITION=y
+# CONFIG_ENV_HANDLING is not set
+CONFIG_DEFAULT_COMPRESSION_GZIP=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_BASENAME=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_SHA384SUM=y
+CONFIG_CMD_SHA512SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_SERIAL_SIFIVE=y
+# CONFIG_SPI is not set
+# CONFIG_PINCTRL is not set
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_LZ4_DECOMPRESS=y
+CONFIG_XZ_DECOMPRESS=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_DIGEST_HMAC_GENERIC=y
diff --git a/arch/riscv/dts/.gitignore b/arch/riscv/dts/.gitignore
new file mode 100644
index 0000000..077903c
--- /dev/null
+++ b/arch/riscv/dts/.gitignore
@@ -0,0 +1 @@
+*dtb*
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
new file mode 100644
index 0000000..f8380b1
--- /dev/null
+++ b/arch/riscv/dts/Makefile
@@ -0,0 +1,9 @@
+BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+
+# just to build a built-in.o. Otherwise compilation fails when no devicetree is
+# created.
+obj- += dummy.o
+
+always := $(dtb-y)
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/qemu-sifive.dts b/arch/riscv/dts/qemu-sifive.dts
new file mode 100644
index 0000000..61945f2
--- /dev/null
+++ b/arch/riscv/dts/qemu-sifive.dts
@@ -0,0 +1,19 @@
+/dts-v1/;
+
+#include "skeleton.dtsi"
+
+/ {
+	model = "QEMU SiFive";
+	compatible = "sifive,qemu";
+
+	/* Digilent Arty has 256MB DDR3L */
+	memory {
+		device_type = "memory";
+		reg = <0 0x0 0x10000000>;
+	};
+
+	uart: uart {
+		compatible = "sifive,uart";
+		reg = <0 0x40002000 0x10>;
+	};
+};
diff --git a/arch/riscv/dts/skeleton.dtsi b/arch/riscv/dts/skeleton.dtsi
new file mode 100644
index 0000000..38ead82
--- /dev/null
+++ b/arch/riscv/dts/skeleton.dtsi
@@ -0,0 +1,13 @@
+/*
+ * Skeleton device tree; the bare minimum needed to boot; just include and
+ * add a compatible value.  The bootloader will typically populate the memory
+ * node.
+ */
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <1>;
+	chosen { };
+	aliases { };
+	memory { device_type = "memory"; reg = <0 0 0>; };
+};
diff --git a/arch/riscv/include/asm/barebox.h b/arch/riscv/include/asm/barebox.h
new file mode 100644
index 0000000..2997587
--- /dev/null
+++ b/arch/riscv/include/asm/barebox.h
@@ -0,0 +1 @@
+/* dummy */
diff --git a/arch/riscv/include/asm/bitops.h b/arch/riscv/include/asm/bitops.h
new file mode 100644
index 0000000..e77ab83
--- /dev/null
+++ b/arch/riscv/include/asm/bitops.h
@@ -0,0 +1,35 @@
+/*
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
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
+
+#include <asm-generic/bitops/__ffs.h>
+#include <asm-generic/bitops/__fls.h>
+#include <asm-generic/bitops/ffs.h>
+#include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
+#include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
+
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
+
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/riscv/include/asm/bitsperlong.h b/arch/riscv/include/asm/bitsperlong.h
new file mode 100644
index 0000000..4641e7e
--- /dev/null
+++ b/arch/riscv/include/asm/bitsperlong.h
@@ -0,0 +1,10 @@
+#ifndef __ASM_BITSPERLONG_H
+#define __ASM_BITSPERLONG_H
+
+#ifdef __riscv64
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif
+
+#endif /* __ASM_BITSPERLONG_H */
diff --git a/arch/riscv/include/asm/byteorder.h b/arch/riscv/include/asm/byteorder.h
new file mode 100644
index 0000000..994a61a
--- /dev/null
+++ b/arch/riscv/include/asm/byteorder.h
@@ -0,0 +1,12 @@
+#ifndef _ASM_RISCV_BYTEORDER_H
+#define _ASM_RISCV_BYTEORDER_H
+
+#if defined(__RISCVEL__)
+#include <linux/byteorder/little_endian.h>
+#elif defined(__RISCVEB__)
+#include <linux/byteorder/big_endian.h>
+#else
+#error "Unknown endianness"
+#endif
+
+#endif /* _ASM_RISCV_BYTEORDER_H */
diff --git a/arch/riscv/include/asm/common.h b/arch/riscv/include/asm/common.h
new file mode 100644
index 0000000..bc8a17e
--- /dev/null
+++ b/arch/riscv/include/asm/common.h
@@ -0,0 +1,6 @@
+#ifndef ASM_RISCV_COMMON_H
+#define ASM_RISCV_COMMON_H
+
+/* nothing special yet */
+
+#endif /* ASM_RISCV_COMMON_H */
diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
new file mode 100644
index 0000000..7134fa0
--- /dev/null
+++ b/arch/riscv/include/asm/elf.h
@@ -0,0 +1,11 @@
+#ifndef __ASM_RISCV_ELF_H__
+#define __ASM_RISCV_ELF_H__
+
+#if __SIZEOF_POINTER__ == 8
+#define ELF_CLASS	ELFCLASS64
+#define CONFIG_PHYS_ADDR_T_64BIT
+#else
+#define ELF_CLASS	ELFCLASS32
+#endif
+
+#endif /* __ASM_RISCV_ELF_H__ */
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
new file mode 100644
index 0000000..d9aca42
--- /dev/null
+++ b/arch/riscv/include/asm/io.h
@@ -0,0 +1,8 @@
+#ifndef __ASM_RISCV_IO_H
+#define __ASM_RISCV_IO_H
+
+#include <asm-generic/io.h>
+
+#define IO_SPACE_LIMIT 0
+
+#endif /* __ASM_RISCV_IO_H */
diff --git a/arch/riscv/include/asm/posix_types.h b/arch/riscv/include/asm/posix_types.h
new file mode 100644
index 0000000..22cae62
--- /dev/null
+++ b/arch/riscv/include/asm/posix_types.h
@@ -0,0 +1 @@
+#include <asm-generic/posix_types.h>
diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/riscv/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/riscv/include/asm/string.h b/arch/riscv/include/asm/string.h
new file mode 100644
index 0000000..2997587
--- /dev/null
+++ b/arch/riscv/include/asm/string.h
@@ -0,0 +1 @@
+/* dummy */
diff --git a/arch/riscv/include/asm/swab.h b/arch/riscv/include/asm/swab.h
new file mode 100644
index 0000000..60a9012
--- /dev/null
+++ b/arch/riscv/include/asm/swab.h
@@ -0,0 +1,6 @@
+#ifndef _ASM_SWAB_H
+#define _ASM_SWAB_H
+
+/* nothing. use generic functions */
+
+#endif /* _ASM_SWAB_H */
diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
new file mode 100644
index 0000000..ba386ab
--- /dev/null
+++ b/arch/riscv/include/asm/types.h
@@ -0,0 +1,60 @@
+#ifndef __ASM_RISCV_TYPES_H
+#define __ASM_RISCV_TYPES_H
+
+#ifdef __riscv64
+/*
+ * This is used in dlmalloc. On RISCV64 we need it to be 64 bit
+ */
+#define INTERNAL_SIZE_T unsigned long
+
+/*
+ * This is a Kconfig variable in the Kernel, but we want to detect
+ * this during compile time, so we set it here.
+ */
+#define CONFIG_PHYS_ADDR_T_64BIT
+
+#endif
+
+typedef unsigned short umode_t;
+
+/*
+ * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
+ * header files exported to user space
+ */
+
+typedef __signed__ char __s8;
+typedef unsigned char __u8;
+
+typedef __signed__ short __s16;
+typedef unsigned short __u16;
+
+typedef __signed__ int __s32;
+typedef unsigned int __u32;
+
+#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#endif
+
+/*
+ * These aren't exported outside the kernel to avoid name space clashes
+ */
+#ifdef __KERNEL__
+
+typedef signed char s8;
+typedef unsigned char u8;
+
+typedef signed short s16;
+typedef unsigned short u16;
+
+typedef signed int s32;
+typedef unsigned int u32;
+
+typedef signed long long s64;
+typedef unsigned long long u64;
+
+#include <asm/bitsperlong.h>
+
+#endif /* __KERNEL__ */
+
+#endif /* __ASM_RISCV_TYPES_H */
diff --git a/arch/riscv/include/asm/unaligned.h b/arch/riscv/include/asm/unaligned.h
new file mode 100644
index 0000000..aaebc06
--- /dev/null
+++ b/arch/riscv/include/asm/unaligned.h
@@ -0,0 +1,19 @@
+#ifndef _ASM_RISCV_UNALIGNED_H
+#define _ASM_RISCV_UNALIGNED_H
+
+/*
+ * FIXME: this file is copy-n-pasted from sandbox's unaligned.h
+ */
+
+#include <linux/unaligned/access_ok.h>
+#include <linux/unaligned/generic.h>
+
+#if __BYTE_ORDER == __LITTLE_ENDIAN
+#define get_unaligned __get_unaligned_le
+#define put_unaligned __put_unaligned_le
+#else
+#define get_unaligned __get_unaligned_be
+#define put_unaligned __put_unaligned_be
+#endif
+
+#endif /* _ASM_RISCV_UNALIGNED_H */
diff --git a/arch/riscv/lib/.gitignore b/arch/riscv/lib/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/riscv/lib/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
new file mode 100644
index 0000000..07a1b2b
--- /dev/null
+++ b/arch/riscv/lib/Makefile
@@ -0,0 +1,3 @@
+extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
+
+obj-$(CONFIG_BUILTIN_DTB) += dtb.o
diff --git a/arch/riscv/lib/asm-offsets.c b/arch/riscv/lib/asm-offsets.c
new file mode 100644
index 0000000..22f382b
--- /dev/null
+++ b/arch/riscv/lib/asm-offsets.c
@@ -0,0 +1,12 @@
+/*
+ * Generate definitions needed by assembly language modules.
+ * This code generates raw asm output which is post-processed to extract
+ * and format the required data.
+ */
+
+#include <linux/kbuild.h>
+
+int main(void)
+{
+	return 0;
+}
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
new file mode 100644
index 0000000..831c3e4
--- /dev/null
+++ b/arch/riscv/lib/barebox.lds.S
@@ -0,0 +1,87 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm-generic/barebox.lds.h>
+
+OUTPUT_ARCH(riscv)
+ENTRY(_start)
+SECTIONS
+{
+	. = TEXT_BASE;
+
+	. = ALIGN(8);
+	.text      :
+	{
+		_start = .;
+		*(.text_entry*)
+		_stext = .;
+		_text = .;
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		*(.text*)
+	}
+	BAREBOX_BARE_INIT_SIZE
+
+	PRE_IMAGE
+
+	. = ALIGN(8);
+	.rodata : { *(.rodata*) }
+
+	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
+
+	. = ALIGN(8);
+	.data : { *(.data*) }
+
+	.barebox_imd : { BAREBOX_IMD }
+
+	. = ALIGN(8);
+	.got : { *(.got*) }
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
+	_edata = .;
+	. = ALIGN(8);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+}
diff --git a/arch/riscv/lib/dtb.c b/arch/riscv/lib/dtb.c
new file mode 100644
index 0000000..09f519d
--- /dev/null
+++ b/arch/riscv/lib/dtb.c
@@ -0,0 +1,41 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+extern char __dtb_start[];
+
+static int of_riscv_init(void)
+{
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root)
+		return 0;
+
+	root = of_unflatten_dtb(__dtb_start);
+	if (!IS_ERR(root)) {
+		pr_debug("using internal DTB\n");
+		of_set_root_node(root);
+		if (IS_ENABLED(CONFIG_OFDEVICE))
+			of_probe();
+	}
+
+	return 0;
+}
+core_initcall(of_riscv_init);
diff --git a/arch/riscv/mach-sifive/Kconfig b/arch/riscv/mach-sifive/Kconfig
new file mode 100644
index 0000000..11251dd
--- /dev/null
+++ b/arch/riscv/mach-sifive/Kconfig
@@ -0,0 +1,16 @@
+if MACH_SIFIVE
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00001000
+
+choice
+	prompt "Board type"
+
+config BOARD_QEMU_SIFIVE
+	bool "qemu sifive"
+	select HAS_DEBUG_LL
+
+endchoice
+
+endif
diff --git a/arch/riscv/mach-sifive/Makefile b/arch/riscv/mach-sifive/Makefile
new file mode 100644
index 0000000..d9c51e7
--- /dev/null
+++ b/arch/riscv/mach-sifive/Makefile
@@ -0,0 +1,3 @@
+# just to build a built-in.o. Otherwise compilation fails when no o-files is
+# created.
+obj- += dummy.o
diff --git a/arch/riscv/mach-sifive/include/mach/debug_ll.h b/arch/riscv/mach-sifive/include/mach/debug_ll.h
new file mode 100644
index 0000000..b2dbfc2
--- /dev/null
+++ b/arch/riscv/mach-sifive/include/mach/debug_ll.h
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_SIFIVE_DEBUG_LL__
+#define __MACH_SIFIVE_DEBUG_LL__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+
+#include <linux/kconfig.h>
+#include <asm/io.h>
+
+#define UART_BASE 0x40002000
+#define R_DATA          (0 << 2)
+#define R_RXCNT         (2 << 2)
+
+static inline void PUTC_LL(int ch)
+{
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		__raw_writeb(ch, (u8 *)UART_BASE + R_DATA);
+}
+
+#endif /* __MACH_SIFIVE_DEBUG_LL__ */
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index d0a62bd..0824b04 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -4,7 +4,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || ARCH_EFI || OPENRISC || SANDBOX
+	depends on PPC || ARM || ARCH_EFI || OPENRISC || SANDBOX || RISCV
 	def_bool y
 
 config DTC
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
