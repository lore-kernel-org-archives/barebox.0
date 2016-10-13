Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buc3R-0003pq-Rl
 for barebox@lists.infradead.org; Thu, 13 Oct 2016 09:12:01 +0000
Received: by mail-lf0-x244.google.com with SMTP id l131so8776460lfl.0
 for <barebox@lists.infradead.org>; Thu, 13 Oct 2016 02:11:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Oct 2016 12:11:27 +0300
Message-Id: <20161013091127.3130-1-antonynpavlov@gmail.com>
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
Subject: [RFC] add riscv support
To: barebox@lists.infradead.org

This patch adds initial RISC-V architecture support for barebox.

At the moment only spike emulator is supported (see https://github.com/riscv/riscv-isa-sim
for details). Moreover barebox does not works with spike's emulated
serial port directly. Barebox runs on top of riscv proxy kernel
(pk, see https://github.com/riscv/riscv-pk). In many ways
RISC-V barebox modus operandi is very similar to sandbox barebox.

Current spike and qemu-riscv (https://github.com/riscv/riscv-isa-sim)
emulators support only HTIF (Host-Target InterFace) for serial console,
though adding 8250 UART port support for spike pull request
is exists (see https://github.com/riscv/riscv-isa-sim/pull/53).

Running RISC-V barebox mini-HOWTO
=================================

Obtain RISC-V GCC/Newlib Toolchain and pk (proxy kernel);
see https://github.com/riscv/riscv-tools/blob/master/README.md
for details, the build.sh script from riscv-tools should
create toolchain, pk ELF image and the spike emulator.

Next compile barebox:

    $ git clone -b 20161013.riscv https://github.com/frantony/barebox
    $ cd barebox
    $ make pk_defconfig ARCH=riscv
    ...
    $ make ARCH=riscv CROSS_COMPILE=riscv64-unknown-elf-

Run barebox:

    $ spike pk barebox

    Board: riscv proxy kernel
    Warning: Using dummy clocksource
    malloc space: 0x00067640 -> 0x0046763f (size 4 MiB)
    running /env/bin/init...
    /env/bin/init not found
    barebox:/

TIP: riscv-tools buils.sh script installs pk ELF image into
${TOOLCHAIN_INSTALL_PATH}/riscv64-unknown-elf/bin directory.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                      |  17 +++++
 arch/riscv/Makefile                     |  84 +++++++++++++++++++++++
 arch/riscv/boards/pk/.gitignore         |   1 +
 arch/riscv/boards/pk/Makefile           |   5 ++
 arch/riscv/boards/pk/barebox.lds.S      |  40 +++++++++++
 arch/riscv/boards/pk/console.c          |  43 ++++++++++++
 arch/riscv/boards/pk/devices.c          |  36 ++++++++++
 arch/riscv/boards/pk/dtb.c              |  67 ++++++++++++++++++
 arch/riscv/configs/pk_defconfig         |  70 +++++++++++++++++++
 arch/riscv/dts/.gitignore               |   1 +
 arch/riscv/dts/Makefile                 |  11 +++
 arch/riscv/dts/pk.dts                   |   7 ++
 arch/riscv/dts/skeleton.dtsi            |  13 ++++
 arch/riscv/include/asm/barebox.h        |   1 +
 arch/riscv/include/asm/bitops.h         |  35 ++++++++++
 arch/riscv/include/asm/bitsperlong.h    |  10 +++
 arch/riscv/include/asm/byteorder.h      |  12 ++++
 arch/riscv/include/asm/common.h         |   6 ++
 arch/riscv/include/asm/elf.h            |  11 +++
 arch/riscv/include/asm/io.h             |   8 +++
 arch/riscv/include/asm/posix_types.h    |   1 +
 arch/riscv/include/asm/sections.h       |   1 +
 arch/riscv/include/asm/string.h         |   1 +
 arch/riscv/include/asm/swab.h           |   6 ++
 arch/riscv/include/asm/types.h          |  60 +++++++++++++++++
 arch/riscv/include/asm/unaligned.h      |  19 ++++++
 arch/riscv/lib/asm-offsets.c            |  12 ++++
 arch/riscv/mach-pk/Makefile             |  12 ++++
 arch/riscv/mach-pk/common.c             | 116 ++++++++++++++++++++++++++++++++
 arch/riscv/mach-pk/include/mach/linux.h |  22 ++++++
 drivers/of/Kconfig                      |   2 +-
 drivers/serial/Kconfig                  |   2 +-
 32 files changed, 730 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/Kconfig
 create mode 100644 arch/riscv/Makefile
 create mode 100644 arch/riscv/boards/pk/.gitignore
 create mode 100644 arch/riscv/boards/pk/Makefile
 create mode 100644 arch/riscv/boards/pk/barebox.lds.S
 create mode 100644 arch/riscv/boards/pk/console.c
 create mode 100644 arch/riscv/boards/pk/devices.c
 create mode 100644 arch/riscv/boards/pk/dtb.c
 create mode 100644 arch/riscv/configs/pk_defconfig
 create mode 100644 arch/riscv/dts/.gitignore
 create mode 100644 arch/riscv/dts/Makefile
 create mode 100644 arch/riscv/dts/pk.dts
 create mode 100644 arch/riscv/dts/skeleton.dtsi
 create mode 100644 arch/riscv/include/asm/barebox.h
 create mode 100644 arch/riscv/include/asm/bitops.h
 create mode 100644 arch/riscv/include/asm/bitsperlong.h
 create mode 100644 arch/riscv/include/asm/byteorder.h
 create mode 100644 arch/riscv/include/asm/common.h
 create mode 100644 arch/riscv/include/asm/elf.h
 create mode 100644 arch/riscv/include/asm/io.h
 create mode 100644 arch/riscv/include/asm/posix_types.h
 create mode 100644 arch/riscv/include/asm/sections.h
 create mode 100644 arch/riscv/include/asm/string.h
 create mode 100644 arch/riscv/include/asm/swab.h
 create mode 100644 arch/riscv/include/asm/types.h
 create mode 100644 arch/riscv/include/asm/unaligned.h
 create mode 100644 arch/riscv/lib/asm-offsets.c
 create mode 100644 arch/riscv/mach-pk/Makefile
 create mode 100644 arch/riscv/mach-pk/common.c
 create mode 100644 arch/riscv/mach-pk/include/mach/linux.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
new file mode 100644
index 0000000..2bc49b9
--- /dev/null
+++ b/arch/riscv/Kconfig
@@ -0,0 +1,17 @@
+config RISCV
+	bool
+	select OFTREE
+	select GENERIC_FIND_NEXT_BIT
+	default y
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000
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
index 0000000..7536411
--- /dev/null
+++ b/arch/riscv/Makefile
@@ -0,0 +1,84 @@
+KBUILD_DEFCONFIG := pk_defconfig
+
+CPPFLAGS += -fno-strict-aliasing
+
+machine-y := pk
+board-y := pk
+
+TEXT_BASE = $(CONFIG_TEXT_BASE)
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
+cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
+	-Wl,--start-group $(barebox-common) -Wl,--end-group
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
+
+common-$(CONFIG_OFTREE) += arch/riscv/dts/
+
+lds-y   := $(BOARD)/barebox.lds
+
+CLEAN_FILES += $(BOARD)/barebox.lds
+
+ifeq ($(machine-y),pk)
+CFLAGS += \
+	-Dmalloc=barebox_malloc \
+	-Dcalloc=barebox_calloc \
+	-Dfree=barebox_free \
+	-Drealloc=barebox_realloc \
+	-Dread=barebox_read \
+	-Dwrite=barebox_write \
+	-Dopen=barebox_open \
+	-Dclose=barebox_close \
+	-Dlseek=barebox_lseek \
+	-Dperror=barebox_perror \
+	-Derrno=barebox_errno \
+	-Dgetc=barebox_getc \
+	-Dputc=barebox_putc \
+	-Dfgetc=barebox_fgetc \
+	-Dfputc=barebox_fputc \
+	-Dfgets=barebox_fgets \
+	-Dfputs=barebox_fputs \
+	-Dsetenv=barebox_setenv \
+	-Dgetenv=barebox_getenv \
+	-Dprintf=barebox_printf \
+	-Dglob=barebox_glob \
+	-Dglobfree=barebox_globfree \
+	-Dioctl=barebox_ioctl \
+	-Dfstat=barebox_fstat \
+	-Dlstat=barebox_lstat \
+	-Dstat=barebox_stat \
+	-Dchdir=barebox_chdir \
+	-Dunlink=barebox_unlink \
+	-Dgetcwd=barebox_getcwd \
+	-Dsbrk=barebox_sbrk \
+	-Dgetopt=barebox_getopt \
+	-Doptarg=barebox_optarg \
+	-Doptind=barebox_optind \
+	-Dopterr=barebox_opterr \
+	-Doptopt=barebox_optopt \
+	-Dgetopt_context_store=barebox_getopt_context_store \
+	-Dgetopt_context_restore=barebox_getopt_context_restore
+endif
diff --git a/arch/riscv/boards/pk/.gitignore b/arch/riscv/boards/pk/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/riscv/boards/pk/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/riscv/boards/pk/Makefile b/arch/riscv/boards/pk/Makefile
new file mode 100644
index 0000000..2f921e6
--- /dev/null
+++ b/arch/riscv/boards/pk/Makefile
@@ -0,0 +1,5 @@
+obj-y += console.o
+obj-y += devices.o
+obj-y += dtb.o
+
+extra-y += barebox.lds
diff --git a/arch/riscv/boards/pk/barebox.lds.S b/arch/riscv/boards/pk/barebox.lds.S
new file mode 100644
index 0000000..6ba2814
--- /dev/null
+++ b/arch/riscv/boards/pk/barebox.lds.S
@@ -0,0 +1,40 @@
+#include <asm-generic/barebox.lds.h>
+
+SECTIONS
+{
+	_stext = .;
+	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	. = ALIGN(64);
+	__barebox_initcalls_start = .;
+	__barebox_initcalls : { INITCALLS }
+	__barebox_initcalls_end = .;
+
+	. = ALIGN(64);
+	__barebox_exitcalls_start = .;
+	__barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
+
+	. = ALIGN(64);
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
+	. = ALIGN(64);
+	__barebox_cmd_start = .;
+	__barebox_cmd : { BAREBOX_CMDS }
+	__barebox_cmd_end = .;
+
+	_edata = .;
+	. = ALIGN(8);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+}
+
+INSERT BEFORE .rodata;
diff --git a/arch/riscv/boards/pk/console.c b/arch/riscv/boards/pk/console.c
new file mode 100644
index 0000000..92399f5
--- /dev/null
+++ b/arch/riscv/boards/pk/console.c
@@ -0,0 +1,43 @@
+/*
+ * console.c - register a console device
+ *
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+#include <common.h>
+#include <driver.h>
+#include <mach/linux.h>
+#include <xfuncs.h>
+
+int barebox_register_console(char *name, int stdinfd, int stdoutfd)
+{
+	struct device_d *dev;
+	struct linux_console_data *data;
+
+	dev = xzalloc(sizeof(struct device_d) + sizeof(struct linux_console_data));
+
+	data = (struct linux_console_data *)(dev + 1);
+
+	dev->platform_data = data;
+	strcpy(dev->name, name);
+
+	strcpy(dev->name, "console");
+
+	data->stdoutfd = stdoutfd;
+	data->stdinfd  = stdinfd;
+
+	return sandbox_add_device(dev);
+}
diff --git a/arch/riscv/boards/pk/devices.c b/arch/riscv/boards/pk/devices.c
new file mode 100644
index 0000000..301446a
--- /dev/null
+++ b/arch/riscv/boards/pk/devices.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+
+static LIST_HEAD(sandbox_device_list);
+
+int sandbox_add_device(struct device_d *dev)
+{
+	list_add(&dev->list, &sandbox_device_list);
+
+	return 0;
+}
+
+static int sandbox_device_init(void)
+{
+	struct device_d *dev, *tmp;
+
+	barebox_set_model("riscv proxy kernel");
+	barebox_set_hostname("barebox");
+
+	list_for_each_entry_safe(dev, tmp, &sandbox_device_list, list) {
+		/* reset the list_head before registering for real */
+		dev->list.prev = NULL;
+		dev->list.next = NULL;
+		platform_device_register(dev);
+	}
+
+	return 0;
+}
+postcore_initcall(sandbox_device_init);
diff --git a/arch/riscv/boards/pk/dtb.c b/arch/riscv/boards/pk/dtb.c
new file mode 100644
index 0000000..af4a64a
--- /dev/null
+++ b/arch/riscv/boards/pk/dtb.c
@@ -0,0 +1,67 @@
+/*
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2015 Marc Kleine-Budde <mkl@pengutronix.de>, Pengutronix
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
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+#include <mach/linux.h>
+#include <linux/err.h>
+
+static const void *dtb;
+
+int barebox_register_dtb(const void *new_dtb)
+{
+	if (dtb)
+		return -EBUSY;
+
+	dtb = new_dtb;
+
+	return 0;
+}
+
+static int of_sandbox_init(void)
+{
+	struct device_node *root;
+	int ret;
+
+	if (dtb) {
+		root = of_unflatten_dtb(dtb);
+	} else {
+		root = of_new_node(NULL, NULL);
+
+		ret = of_property_write_u32(root, "#address-cells", 2);
+		if (ret)
+			return ret;
+
+		ret = of_property_write_u32(root, "#size-cells", 1);
+		if (ret)
+			return ret;
+	}
+
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+
+	of_set_root_node(root);
+	of_fix_tree(root);
+	if (IS_ENABLED(CONFIG_OFDEVICE))
+		of_probe();
+
+	return 0;
+}
+core_initcall(of_sandbox_init);
diff --git a/arch/riscv/configs/pk_defconfig b/arch/riscv/configs/pk_defconfig
new file mode 100644
index 0000000..8440898
--- /dev/null
+++ b/arch/riscv/configs/pk_defconfig
@@ -0,0 +1,70 @@
+# CONFIG_GLOBALVAR is not set
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_BOOTM is not set
+CONFIG_PARTITION=y
+# CONFIG_ENV_HANDLING is not set
+CONFIG_DEFAULT_COMPRESSION_GZIP=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
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
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
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
index 0000000..898c3c3
--- /dev/null
+++ b/arch/riscv/dts/Makefile
@@ -0,0 +1,11 @@
+ifeq ($(CONFIG_OFTREE),y)
+dtb-y += \
+	pk.dtb
+endif
+
+# just to build a built-in.o. Otherwise compilation fails when no devicetree is
+# created.
+obj- += dummy.o
+
+always := $(dtb-y)
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/pk.dts b/arch/riscv/dts/pk.dts
new file mode 100644
index 0000000..2595aa1
--- /dev/null
+++ b/arch/riscv/dts/pk.dts
@@ -0,0 +1,7 @@
+/dts-v1/;
+
+#include "skeleton.dtsi"
+
+/ {
+
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
index 0000000..9b8bd2d
--- /dev/null
+++ b/arch/riscv/include/asm/common.h
@@ -0,0 +1,6 @@
+#ifndef ASM_COMMON_H
+#define ASM_COMMON_H
+
+#define ARCH_HAS_CTRLC
+
+#endif /* ASM_COMMON_H */
diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
new file mode 100644
index 0000000..3939336
--- /dev/null
+++ b/arch/riscv/include/asm/elf.h
@@ -0,0 +1,11 @@
+#ifndef __ASM_SANDBOX_ELF_H__
+#define __ASM_SANDBOX_ELF_H__
+
+#if __SIZEOF_POINTER__ == 8
+#define ELF_CLASS	ELFCLASS64
+#define CONFIG_PHYS_ADDR_T_64BIT
+#else
+#define ELF_CLASS	ELFCLASS32
+#endif
+
+#endif /* __ASM_SANDBOX_ELF_H__ */
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
index 0000000..d02da6e
--- /dev/null
+++ b/arch/riscv/include/asm/unaligned.h
@@ -0,0 +1,19 @@
+#ifndef _ASM_SANDBOX_UNALIGNED_H
+#define _ASM_SANDBOX_UNALIGNED_H
+
+/*
+ * The architecture sandbox is compiled on can do unaligned accesses itself.
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
+#endif /* _ASM_SANDBOX_UNALIGNED_H */
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
diff --git a/arch/riscv/mach-pk/Makefile b/arch/riscv/mach-pk/Makefile
new file mode 100644
index 0000000..5f4c97b
--- /dev/null
+++ b/arch/riscv/mach-pk/Makefile
@@ -0,0 +1,12 @@
+machdirs := arch/riscv/mach-pk/
+
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS := $(patsubst %,-I%include,$(machdirs))
+else
+CPPFLAGS := $(patsubst %,-I$(srctree)/%include,$(machdirs))
+endif
+
+CFLAGS := -W -Wall -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
+NOSTDINC_FLAGS :=
+
+obj-y = common.o
diff --git a/arch/riscv/mach-pk/common.c b/arch/riscv/mach-pk/common.c
new file mode 100644
index 0000000..e9b70b4
--- /dev/null
+++ b/arch/riscv/mach-pk/common.c
@@ -0,0 +1,116 @@
+
+/*
+ * common.c - common wrapper functions between barebox and the host
+ *
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+/*
+ * These are host includes. Never include any barebox header
+ * files here...
+ */
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <unistd.h>
+#include <errno.h>
+
+/*
+ * ...except the ones needed to connect with barebox
+ */
+#include <mach/linux.h>
+
+static void cookmode(void)
+{
+	fflush(stdout);
+}
+
+int linux_tstc(int fd)
+{
+	(void)fd;
+
+	return 0;
+}
+
+int ctrlc(void)
+{
+	return 0;
+}
+
+void __attribute__((noreturn)) linux_exit(void)
+{
+	cookmode();
+	exit(0);
+}
+
+int linux_read(int fd, void *buf, size_t count)
+{
+	ssize_t ret;
+
+	if (count == 0)
+		return 0;
+
+	do {
+		ret = read(fd, buf, count);
+
+		if (ret == 0) {
+			printf("read on fd %d returned 0, device gone? - exiting\n", fd);
+			linux_exit();
+		} else if (ret == -1) {
+			if (errno == EAGAIN)
+				return -errno;
+			else if (errno == EINTR)
+				continue;
+			else {
+				printf("read on fd %d returned -1, errno %d - exiting\n", fd, errno);
+				linux_exit();
+			}
+		}
+	} while (ret <= 0);
+
+	return (int)ret;
+}
+
+ssize_t linux_write(int fd, const void *buf, size_t count)
+{
+	return write(fd, buf, count);
+}
+
+extern void start_barebox(void);
+extern void mem_malloc_init(void *start, void *end);
+
+int main(int argc, char *argv[])
+{
+	void *ram;
+	int malloc_size = CONFIG_MALLOC_SIZE;
+
+	(void)argc;
+	(void)argv;
+
+	ram = malloc(malloc_size);
+	if (!ram) {
+		printf("unable to get malloc space\n");
+		exit(1);
+	}
+	mem_malloc_init(ram, ram + malloc_size - 1);
+
+	barebox_register_console("console", fileno(stdin), fileno(stdout));
+
+	start_barebox();
+
+	/* never reached */
+	return 0;
+}
diff --git a/arch/riscv/mach-pk/include/mach/linux.h b/arch/riscv/mach-pk/include/mach/linux.h
new file mode 100644
index 0000000..627ee17
--- /dev/null
+++ b/arch/riscv/mach-pk/include/mach/linux.h
@@ -0,0 +1,22 @@
+#ifndef __ASM_ARCH_LINUX_H
+#define __ASM_ARCH_LINUX_H
+
+struct device_d;
+
+int sandbox_add_device(struct device_d *dev);
+
+int linux_register_device(const char *name, void *start, void *end);
+int linux_read(int fd, void *buf, size_t count);
+ssize_t linux_write(int fd, const void *buf, size_t count);
+int linux_tstc(int fd);
+
+int barebox_register_console(char *name_template, int stdinfd, int stdoutfd);
+
+int barebox_register_dtb(const void *dtb);
+
+struct linux_console_data {
+	int stdinfd;
+	int stdoutfd;
+};
+
+#endif /* __ASM_ARCH_LINUX_H */
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
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b112d7e..85751a2 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -41,7 +41,7 @@ config DRIVER_SERIAL_NETX
 	bool "Netx serial driver"
 
 config DRIVER_SERIAL_LINUX_CONSOLE
-	depends on LINUX
+	depends on LINUX || RISCV
 	default y
 	bool "linux console driver"
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
