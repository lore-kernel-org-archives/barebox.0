Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgF6-0006r6-Ng
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 10:49:49 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 15 Jan 2020 11:26:46 +0100
Message-Id: <20200115102650.11739-2-cleger@kalray.eu>
In-Reply-To: <20200115102650.11739-1-cleger@kalray.eu>
References: <20200115102650.11739-1-cleger@kalray.eu>
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
Subject: [PATCH 1/5] k1c: Initial Kalray Coolidge (k1c) architecture support
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

Add kalray coolidge arch/ support.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/k1c/Kconfig                   |  45 ++++++++++
 arch/k1c/Makefile                  |  36 ++++++++
 arch/k1c/boards/generic/Makefile   |   0
 arch/k1c/configs/generic_defconfig |   9 ++
 arch/k1c/cpu/Makefile              |   7 ++
 arch/k1c/cpu/barebox.lds.S         |  98 ++++++++++++++++++++++
 arch/k1c/cpu/cpu.c                 |  22 +++++
 arch/k1c/cpu/exception.S           |  18 ++++
 arch/k1c/cpu/start.S               | 164 ++++++++++++++++++++++++++++++++++++
 arch/k1c/include/asm/barrier.h     |  18 ++++
 arch/k1c/include/asm/bitops.h      |  27 ++++++
 arch/k1c/include/asm/bitsperlong.h |  12 +++
 arch/k1c/include/asm/byteorder.h   |  12 +++
 arch/k1c/include/asm/common.h      |  19 +++++
 arch/k1c/include/asm/elf.h         |  21 +++++
 arch/k1c/include/asm/io.h          |  14 ++++
 arch/k1c/include/asm/linkage.h     |  10 +++
 arch/k1c/include/asm/posix_types.h |  12 +++
 arch/k1c/include/asm/privilege.h   | 166 +++++++++++++++++++++++++++++++++++++
 arch/k1c/include/asm/sections.h    |  12 +++
 arch/k1c/include/asm/sfr.h         |  61 ++++++++++++++
 arch/k1c/include/asm/string.h      |  14 ++++
 arch/k1c/include/asm/swab.h        |  14 ++++
 arch/k1c/include/asm/sys_arch.h    |  46 ++++++++++
 arch/k1c/include/asm/types.h       |  14 ++++
 arch/k1c/include/asm/unaligned.h   |  17 ++++
 arch/k1c/lib/Makefile              |   6 ++
 arch/k1c/lib/asm-offsets.c         |  11 +++
 arch/k1c/lib/board.c               |  20 +++++
 arch/k1c/lib/cpuinfo.c             |  20 +++++
 arch/k1c/lib/dtb.c                 |  31 +++++++
 arch/k1c/lib/poweroff.c            |  43 ++++++++++
 drivers/of/Kconfig                 |   2 +-
 33 files changed, 1020 insertions(+), 1 deletion(-)
 create mode 100644 arch/k1c/Kconfig
 create mode 100644 arch/k1c/Makefile
 create mode 100644 arch/k1c/boards/generic/Makefile
 create mode 100644 arch/k1c/configs/generic_defconfig
 create mode 100644 arch/k1c/cpu/Makefile
 create mode 100644 arch/k1c/cpu/barebox.lds.S
 create mode 100644 arch/k1c/cpu/cpu.c
 create mode 100644 arch/k1c/cpu/exception.S
 create mode 100644 arch/k1c/cpu/start.S
 create mode 100644 arch/k1c/include/asm/barrier.h
 create mode 100644 arch/k1c/include/asm/bitops.h
 create mode 100644 arch/k1c/include/asm/bitsperlong.h
 create mode 100644 arch/k1c/include/asm/byteorder.h
 create mode 100644 arch/k1c/include/asm/common.h
 create mode 100644 arch/k1c/include/asm/elf.h
 create mode 100644 arch/k1c/include/asm/io.h
 create mode 100644 arch/k1c/include/asm/linkage.h
 create mode 100644 arch/k1c/include/asm/posix_types.h
 create mode 100644 arch/k1c/include/asm/privilege.h
 create mode 100644 arch/k1c/include/asm/sections.h
 create mode 100644 arch/k1c/include/asm/sfr.h
 create mode 100644 arch/k1c/include/asm/string.h
 create mode 100644 arch/k1c/include/asm/swab.h
 create mode 100644 arch/k1c/include/asm/sys_arch.h
 create mode 100644 arch/k1c/include/asm/types.h
 create mode 100644 arch/k1c/include/asm/unaligned.h
 create mode 100644 arch/k1c/lib/Makefile
 create mode 100644 arch/k1c/lib/asm-offsets.c
 create mode 100644 arch/k1c/lib/board.c
 create mode 100644 arch/k1c/lib/cpuinfo.c
 create mode 100644 arch/k1c/lib/dtb.c
 create mode 100644 arch/k1c/lib/poweroff.c

diff --git a/arch/k1c/Kconfig b/arch/k1c/Kconfig
new file mode 100644
index 000000000..f0f9d1728
--- /dev/null
+++ b/arch/k1c/Kconfig
@@ -0,0 +1,45 @@
+config K1C
+	bool
+	select 64BIT
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select FLEXIBLE_BOOTARGS
+	select GENERIC_FIND_NEXT_BIT
+	select OF_BAREBOX_DRIVERS
+	select OFDEVICE
+	select PARTITION
+	default y
+
+config PHYS_ADDR_T_64BIT
+	bool
+
+config 64BIT
+	bool
+	select ARCH_DMA_ADDR_T_64BIT
+	select PHYS_ADDR_T_64BIT
+	default y
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000
+
+menu "Kalray specific settings"
+
+config ARCHINFO
+	string
+	default "coolidge"
+
+config SMEM_SIZE
+	hex
+	default 0x400000
+
+config MALLOC_BASE
+	hex
+	default 0x100000000
+
+config MALLOC_SIZE
+	hex
+	default 0x800000
+	prompt "malloc area size"
+endmenu
diff --git a/arch/k1c/Makefile b/arch/k1c/Makefile
new file mode 100644
index 000000000..10852406f
--- /dev/null
+++ b/arch/k1c/Makefile
@@ -0,0 +1,36 @@
+KBUILD_DEFCONFIG := generic_defconfig
+
+CPPFLAGS += -fno-strict-aliasing
+
+board-$(CONFIG_GENERIC) := generic
+
+KALLSYMS += --symbol-prefix=_
+
+ifeq ($(CROSS_COMPILE),)
+CROSS_COMPILE    := k1-elf-
+endif
+
+DEFAULT_CFLAGS := -nostdlib -fno-builtin -fstrict-align -g
+DEFAULT_CFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+
+LIBGCC_PATH = $(dir $(shell $(CC) $(CFLAGS) --print-libgcc-file-name))
+
+CFLAGS += $(DEFAULT_CFLAGS)
+AFLAGS += $(DEFAULT_CFLAGS)
+
+LDFLAGS += -m elf64k1
+
+archprepare: maketools
+
+PHONY += maketools
+
+common-y += arch/k1c/lib/
+common-y += arch/k1c/cpu/
+
+lds-y += arch/k1c/cpu/barebox.lds
+
+cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+      -T $(barebox-lds)                         \
+      --start-group $(barebox-common) --end-group  	          \
+      -L$(LIBGCC_PATH) -lgcc \
+      $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
diff --git a/arch/k1c/boards/generic/Makefile b/arch/k1c/boards/generic/Makefile
new file mode 100644
index 000000000..e69de29bb
diff --git a/arch/k1c/configs/generic_defconfig b/arch/k1c/configs/generic_defconfig
new file mode 100644
index 000000000..535f1cf8b
--- /dev/null
+++ b/arch/k1c/configs/generic_defconfig
@@ -0,0 +1,9 @@
+CONFIG_AUTO_COMPLETE=y
+CONFIG_BAUDRATE=115200
+# CONFIG_BOOTM is not set
+CONFIG_CMD_CMP=y
+CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_PINCTRL_SINGLE=y
diff --git a/arch/k1c/cpu/Makefile b/arch/k1c/cpu/Makefile
new file mode 100644
index 000000000..1d0635206
--- /dev/null
+++ b/arch/k1c/cpu/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Copyright (C) 2019 Kalray Inc.
+#
+
+obj-y 		+= start.o cpu.o exception.o
+extra-y 	+= barebox.lds
diff --git a/arch/k1c/cpu/barebox.lds.S b/arch/k1c/cpu/barebox.lds.S
new file mode 100644
index 000000000..9b0c338d2
--- /dev/null
+++ b/arch/k1c/cpu/barebox.lds.S
@@ -0,0 +1,98 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <config.h>
+#include <asm/common.h>
+#include <asm/sys_arch.h>
+#include <asm-generic/barebox.lds.h>
+
+OUTPUT_FORMAT("elf64-k1")
+OUTPUT_ARCH("k1:k1c:64")
+
+#define K1C_ENTRY_ADDRESS	0x0
+#define DTB_DEFAULT_SIZE	(24 * 1024)
+
+MEMORY
+{
+	smem	: ORIGIN = 0, LENGTH = CONFIG_SMEM_SIZE
+}
+
+SECTIONS
+{
+	. = K1C_ENTRY_ADDRESS;
+	. = ALIGN(4);
+
+	__start = .;
+	.text : AT (__start) {
+		*(.startup);
+		_stext = .;
+		*(.text)
+		_etext = .;
+	}  > smem
+
+	/* Exception vector must be aligned on a huge frontier */
+	.exception ALIGN(EXCEPTION_ALIGNMENT) :
+	{
+		_exception_start = ABSOLUTE(.);
+		/**
+		 * First handler is at _exception_start + EXCEPTION_STRIDE
+		 * In order to force getting to the next stride, add at
+		 * least 1 byte of data. The next ALIGN will then be
+		 * forced to get to the next stride.
+		 */
+		. += 1;
+		. = ALIGN(EXCEPTION_STRIDE);
+
+		/* Entry for traps */
+		KEEP(*(.exception.trap));
+		. += 1;
+
+		/* Entry for interrupts */
+		. = ALIGN(EXCEPTION_STRIDE);
+		KEEP(*(.exception.interrupt));
+		. += 1;
+
+		/* Entry for syscall */
+		. = ALIGN(EXCEPTION_STRIDE);
+		KEEP(*(.exception.syscall));
+	} > smem
+
+	.rodata ALIGN(8) : {
+		*(.rodata*)
+		. = ALIGN(8);
+		RO_DATA_SECTION
+	} > smem
+
+	__etext = .; /* End of text and rodata section */
+
+	. = ALIGN(4);
+	.data : {
+		sdata = .;
+		_sdata = .;
+		*(.data)
+		edata = .;
+		_edata = .;
+	} > smem
+
+	.gdb_page ALIGN(4 * 1024) :
+	{
+		_debug_start = ABSOLUTE(.);
+		_debug_phy_start = ABSOLUTE(.);
+		. += 4 * 1024;
+	}
+	__debug_phy_end = ABSOLUTE(.);
+
+	/* We use store quad for bss init so align on 16 bytes */
+	.bss ALIGN(16):
+	{
+		__bss_start = .;
+		*(.shbss)
+		*(.bss)
+		*(COMMON)
+	} > smem
+	. = ALIGN(16);
+	__bss_stop = .;
+	__end = .;
+}
diff --git a/arch/k1c/cpu/cpu.c b/arch/k1c/cpu/cpu.c
new file mode 100644
index 000000000..209f333a2
--- /dev/null
+++ b/arch/k1c/cpu/cpu.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <common.h>
+#include <asm/sfr.h>
+#include <asm/sys_arch.h>
+
+void k1c_lowlevel_setup(void)
+{
+	uint64_t ev_val = (uint64_t) &_exception_start | EXCEPTION_STRIDE;
+
+	/* Install exception handlers */
+	k1c_sfr_set(K1C_SFR_EV, ev_val);
+
+	/* Clear exception taken bit now that we setup our handlers */
+	k1c_sfr_clear_bit(K1C_SFR_PS, K1C_SFR_PS_ET_SHIFT);
+
+	/* Finally, make sure nobody disabled hardware trap before us */
+	k1c_sfr_clear_bit(K1C_SFR_PS, K1C_SFR_PS_HTD_SHIFT);
+}
diff --git a/arch/k1c/cpu/exception.S b/arch/k1c/cpu/exception.S
new file mode 100644
index 000000000..d1b44ae22
--- /dev/null
+++ b/arch/k1c/cpu/exception.S
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <linux/linkage.h>
+
+/**
+ * We do not aim at handling traps but at least, we want the CPU to
+ * stop when taking a trap.
+ * Note that we can not expect to be able to issue a print since
+ * it might be the cause of trap...
+ */
+.section .exception.trap, "ax", @progbits
+ENTRY(k1c_trap_handler):
+	goto k1c_trap_handler
+	;;
+ENDPROC(k1c_trap_handler)
diff --git a/arch/k1c/cpu/start.S b/arch/k1c/cpu/start.S
new file mode 100644
index 000000000..4cbd3bbd5
--- /dev/null
+++ b/arch/k1c/cpu/start.S
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <config.h>
+#include <linux/linkage.h>
+#include <asm/privilege.h>
+#include <asm/sys_arch.h>
+
+#define PS_VAL_WFXL(__field, __val) \
+	SFR_SET_VAL_WFXL(PS, __field, __val)
+
+#define PS_WFXL_START_VALUE	PS_VAL_WFXL(HLE, 1) | \
+				PS_VAL_WFXL(USE, 1) | \
+				PS_VAL_WFXL(DCE, 1) | \
+				PS_VAL_WFXL(ICE, 1) | \
+				PS_VAL_WFXL(V64, 1) | \
+				PS_VAL_WFXL(ET, 0)
+
+#define PCR_VAL_WFXM(__field, __val) \
+	SFR_SET_VAL_WFXM(PCR, __field, __val)
+
+#define PCR_WFXM_START_VALUE   PCR_VAL_WFXM(L1CE, 1)
+
+/* Enable STOP in WS */
+#define WS_ENABLE_WU2		(K1C_SFR_WS_WU2_MASK)
+
+#define WS_WFXL_VALUE		(WS_ENABLE_WU2)
+
+.section .startup, "ax"
+ENTRY(k1c_start)
+	/* (Re)initialize performance counter */
+	make $r20 = 0x00000000
+	;;
+	set $pmc = $r20
+	;;
+	call asm_init_pl
+	;;
+	/* Setup default processor status */
+	make $r25 = PS_WFXL_START_VALUE
+	;;
+	wfxl $ps = $r25
+	;;
+	make $r25 = PCR_WFXM_START_VALUE
+	;;
+	wfxm $pcr = $r25
+	;;
+	/* Clear BSS */
+	make $r22 = __bss_stop
+	make $r21 = __bss_start
+	;;
+	sbfd $r22 = $r21, $r22
+	make $r24 = 0
+	;;
+	/* Divide by 16 for hardware loop */
+	srld $r22, $r22, 4
+	make $r25 = 0
+	;;
+	/* Clear bss with hardware loop */
+        loopdo $r22, clear_bss_done
+		;;
+		sq 0[$r21] = $r24r25
+		addd $r21 = $r21, 16
+		;;
+	clear_bss_done:
+	/* Setup stack */
+	make $sp, CONFIG_SMEM_SIZE
+	;;
+	call k1c_lowlevel_setup
+	;;
+	call k1c_start_barebox
+	;;
+	goto k1c_proc_power_off
+	;;
+ENDPROC(k1c_start)
+
+/**
+ * Initialize privilege level
+ */
+ENTRY(asm_init_pl)
+	get $r21 = $ps
+	;;
+	/* Extract privilege level from $ps to check if we need to
+	 * lower our privilege level (we might already be in PL1)
+	 */
+	extfz $r20 = $r21, K1C_SFR_END(PS_PL), K1C_SFR_START(PS_PL)
+	;;
+	/* If our pviliege level is not 0 (ie we are already in a less
+	 * privilege level, then, somebody take care of setting the
+	 * ring settings for us and we can return directly
+	 */
+	cb.deqz $r20? delegate_pl
+	;;
+	ret
+	;;
+delegate_pl:
+	make $r21 = SYO_WFXL_VALUE
+	;;
+	wfxl $syow = $r21
+	;;
+	make $r21 = HTO_WFXL_VALUE
+	;;
+	wfxl $htow = $r21
+	;;
+	make $r21 = DO_WFXL_VALUE
+	;;
+	wfxl $dow = $r21
+	;;
+	make $r21 = MO_WFXL_VALUE
+	make $r22 = MO_WFXM_VALUE
+	;;
+	wfxl $mow = $r21
+	;;
+	wfxm $mow = $r22
+	;;
+	make $r21 = ITO_WFXL_VALUE
+	make $r22 = ITO_WFXM_VALUE
+	;;
+	wfxl $itow = $r21
+	;;
+	wfxm $itow = $r21
+	;;
+	make $r21 = PSO_WFXL_VALUE
+	;;
+	wfxl $psow = $r21
+	;;
+	make $r21 = PSO_WFXM_VALUE
+	;;
+	wfxm $psow = $r21
+	;;
+	/* Copy our $ps into $sps for 1:1 restoration */
+	get $r22 = $ps
+	;;
+	/* We will return to $ra after rfe */
+	get $r21 = $ra
+	/* Set privilege level to +1 in $sps (relative level from the
+	 * current one)
+	 */
+	addd $r22 = $r22, PL_BAREBOX_REL_LEVEL
+	;;
+	set $spc = $r21
+	;;
+	set $sps = $r22
+	;;
+	/* When using rfe, $spc and $sps will be restored in $ps and $pc,
+	 * We will then return to the caller ($ra) in current PL + 1
+	 */
+	rfe
+	;;
+ENDPROC(asm_init_pl)
+
+ENTRY(k1c_proc_power_off):
+	dinval
+	make $r1 = WS_WFXL_VALUE
+	;;
+        /* Enable STOP */
+	wfxl $ws, $r1
+	;;
+1:	stop
+	;;
+	goto 1b
+	;;
+ENDPROC(k1c_proc_power_off)
diff --git a/arch/k1c/include/asm/barrier.h b/arch/k1c/include/asm/barrier.h
new file mode 100644
index 000000000..7c1281e7a
--- /dev/null
+++ b/arch/k1c/include/asm/barrier.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_BARRIER_H
+#define _ASM_K1C_BARRIER_H
+
+/* fence is sufficient to guarantee write ordering */
+#define wmb()	__builtin_k1_fence()
+
+/* no L2 coherency, therefore rmb is D$ invalidation */
+#define rmb()   __builtin_k1_dinval()
+
+/* general memory barrier */
+#define mb()    do { wmb(); rmb(); } while (0)
+
+#endif /* _ASM_K1C_BARRIER_H */
diff --git a/arch/k1c/include/asm/bitops.h b/arch/k1c/include/asm/bitops.h
new file mode 100644
index 000000000..c22e5717b
--- /dev/null
+++ b/arch/k1c/include/asm/bitops.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_BITOPS_H
+#define _ASM_K1C_BITOPS_H
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
+#endif	/* _ASM_K1C_BITOPS_H */
+
diff --git a/arch/k1c/include/asm/bitsperlong.h b/arch/k1c/include/asm/bitsperlong.h
new file mode 100644
index 000000000..42b669ace
--- /dev/null
+++ b/arch/k1c/include/asm/bitsperlong.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_BITSPERLONG_H
+#define _ASM_K1C_BITSPERLONG_H
+
+#include <asm-generic/bitsperlong.h>
+
+#endif	/* _ASM_K1C_BITSPERLONG_H */
+
diff --git a/arch/k1c/include/asm/byteorder.h b/arch/k1c/include/asm/byteorder.h
new file mode 100644
index 000000000..12b90bd66
--- /dev/null
+++ b/arch/k1c/include/asm/byteorder.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_BYTEORDER_H
+#define _ASM_K1C_BYTEORDER_H
+
+#include <linux/byteorder/little_endian.h>
+
+#endif	/* _ASM_K1C_BYTEORDER_H */
+
diff --git a/arch/k1c/include/asm/common.h b/arch/k1c/include/asm/common.h
new file mode 100644
index 000000000..81d31dc4c
--- /dev/null
+++ b/arch/k1c/include/asm/common.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_COMMON_H
+#define _ASM_K1C_COMMON_H
+
+#ifndef __ASSEMBLY__
+
+extern char _exception_start;
+
+void k1c_start_barebox(void);
+void k1c_lowlevel_setup(void);
+
+#endif
+
+#endif	/* _ASM_K1C_COMMON_H */
+
diff --git a/arch/k1c/include/asm/elf.h b/arch/k1c/include/asm/elf.h
new file mode 100644
index 000000000..ff9b8b274
--- /dev/null
+++ b/arch/k1c/include/asm/elf.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_ELF_H
+#define _ASM_K1C_ELF_H
+
+/*
+ * ELF register definitions..
+ */
+#include <linux/types.h>
+
+#define EM_KALRAY 0x1337
+
+#define ELF_ARCH 	EM_KALRAY
+#define ELF_CLASS	ELFCLASS32
+#define ELF_DATA	ELFDATA2MSB
+
+#endif	/* _ASM_K1C_ELF_H */
+
diff --git a/arch/k1c/include/asm/io.h b/arch/k1c/include/asm/io.h
new file mode 100644
index 000000000..0345d05de
--- /dev/null
+++ b/arch/k1c/include/asm/io.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_IO_H
+#define _ASM_K1C_IO_H
+
+#define IO_SPACE_LIMIT		0x0
+
+#include <asm/byteorder.h>
+#include <asm-generic/io.h>
+
+#endif	/* _ASM_K1C_IO_H */
diff --git a/arch/k1c/include/asm/linkage.h b/arch/k1c/include/asm/linkage.h
new file mode 100644
index 000000000..9b0f103f9
--- /dev/null
+++ b/arch/k1c/include/asm/linkage.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_LINKAGE_H
+#define _ASM_K1C_LINKAGE_H
+
+
+#endif	/* _ASM_K1C_LINKAGE_H */
diff --git a/arch/k1c/include/asm/posix_types.h b/arch/k1c/include/asm/posix_types.h
new file mode 100644
index 000000000..0eba70be6
--- /dev/null
+++ b/arch/k1c/include/asm/posix_types.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_POSIX_TYPES_H
+#define _ASM_K1C_POSIX_TYPES_H
+
+#include <asm-generic/posix_types.h>
+
+#endif	/* _ASM_K1C_POSIX_TYPES_H */
+
diff --git a/arch/k1c/include/asm/privilege.h b/arch/k1c/include/asm/privilege.h
new file mode 100644
index 000000000..d3d1810f2
--- /dev/null
+++ b/arch/k1c/include/asm/privilege.h
@@ -0,0 +1,166 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_PRIVILEGE_H
+#define _ASM_K1C_PRIVILEGE_H
+
+#include <asm/sys_arch.h>
+
+/**
+ * Privilege level stuff
+ */
+
+/* Relative kernel level (+1 from current privilege level) */
+#define PL_BAREBOX_REL_LEVEL	1
+
+/**
+ * Syscall owner configuration
+ */
+#define SYO_OWN(__field) \
+	SFR_SET_VAL_WFXL(SYO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define SYO_WFXL_VALUE (SYO_OWN(Q0) | \
+			SYO_OWN(Q1) | \
+			SYO_OWN(Q2) | \
+			SYO_OWN(Q3))
+
+/**
+ * hardware trap owner configuration
+ */
+#define HTO_OWN(__field) \
+	SFR_SET_VAL_WFXL(HTO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define HTO_WFXL_VALUE	(HTO_OWN(OPC) | \
+			HTO_OWN(DMIS) | \
+			HTO_OWN(PSYS) | \
+			HTO_OWN(DSYS) | \
+			HTO_OWN(DECCG) | \
+			HTO_OWN(SECCG) | \
+			HTO_OWN(NOMAP) | \
+			HTO_OWN(PROT) | \
+			HTO_OWN(W2CL) | \
+			HTO_OWN(A2CL) | \
+			HTO_OWN(DE) | \
+			HTO_OWN(VSFR) | \
+			HTO_OWN(PLO))
+
+/**
+ * Interrupt owner configuration
+ */
+#define ITO_WFXL_OWN(__field) \
+	SFR_SET_VAL_WFXL(ITO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define ITO_WFXL_VALUE	(ITO_WFXL_OWN(IT0) | \
+			ITO_WFXL_OWN(IT1) | \
+			ITO_WFXL_OWN(IT2) | \
+			ITO_WFXL_OWN(IT3) | \
+			ITO_WFXL_OWN(IT4) | \
+			ITO_WFXL_OWN(IT5) | \
+			ITO_WFXL_OWN(IT6) | \
+			ITO_WFXL_OWN(IT7) | \
+			ITO_WFXL_OWN(IT8) | \
+			ITO_WFXL_OWN(IT9) | \
+			ITO_WFXL_OWN(IT10) | \
+			ITO_WFXL_OWN(IT11) | \
+			ITO_WFXL_OWN(IT12) | \
+			ITO_WFXL_OWN(IT13) | \
+			ITO_WFXL_OWN(IT14) | \
+			ITO_WFXL_OWN(IT15))
+
+#define ITO_WFXM_OWN(__field) \
+	SFR_SET_VAL_WFXM(ITO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define ITO_WFXM_VALUE (ITO_WFXM_OWN(IT16) | \
+			ITO_WFXM_OWN(IT17) | \
+			ITO_WFXM_OWN(IT18) | \
+			ITO_WFXM_OWN(IT19) | \
+			ITO_WFXM_OWN(IT20) | \
+			ITO_WFXM_OWN(IT21) | \
+			ITO_WFXM_OWN(IT22) | \
+			ITO_WFXM_OWN(IT23) | \
+			ITO_WFXM_OWN(IT24) | \
+			ITO_WFXM_OWN(IT25) | \
+			ITO_WFXM_OWN(IT26) | \
+			ITO_WFXM_OWN(IT27) | \
+			ITO_WFXM_OWN(IT28) | \
+			ITO_WFXM_OWN(IT29) | \
+			ITO_WFXM_OWN(IT30) | \
+			ITO_WFXM_OWN(IT31))
+
+/**
+ * Misc owner configuration
+ */
+#define DO_OWN(__field) \
+	SFR_SET_VAL_WFXL(DO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define DO_WFXL_VALUE	(DO_OWN(B0) | \
+			DO_OWN(B1) | \
+			DO_OWN(W0) | \
+			DO_OWN(W1))
+
+/**
+ * Misc owner configuration
+ */
+#define MO_WFXL_OWN(__field) \
+	SFR_SET_VAL_WFXL(MO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define MO_WFXL_VALUE	(MO_WFXL_OWN(MMI) | \
+			MO_WFXL_OWN(RFE) | \
+			MO_WFXL_OWN(STOP) | \
+			MO_WFXL_OWN(SYNC) | \
+			MO_WFXL_OWN(PCR) | \
+			MO_WFXL_OWN(MSG) | \
+			MO_WFXL_OWN(MEN) | \
+			MO_WFXL_OWN(MES) | \
+			MO_WFXL_OWN(CSIT) | \
+			MO_WFXL_OWN(T0) | \
+			MO_WFXL_OWN(T1) | \
+			MO_WFXL_OWN(WD) | \
+			MO_WFXL_OWN(PM0) | \
+			MO_WFXL_OWN(PM1) | \
+			MO_WFXL_OWN(PM2) | \
+			MO_WFXL_OWN(PM3))
+
+#define MO_WFXM_OWN(__field) \
+	SFR_SET_VAL_WFXM(MO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define MO_WFXM_VALUE	(MO_WFXM_OWN(PMIT))
+
+/**
+ * $ps owner configuration
+ */
+#define PSO_WFXL_OWN(__field) \
+	SFR_SET_VAL_WFXL(PSO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define PSO_WFXL_VALUE	(PSO_WFXL_OWN(PL0) | \
+			PSO_WFXL_OWN(PL1) | \
+			PSO_WFXL_OWN(ET) | \
+			PSO_WFXL_OWN(HTD) | \
+			PSO_WFXL_OWN(IE) | \
+			PSO_WFXL_OWN(HLE) | \
+			PSO_WFXL_OWN(SRE) | \
+			PSO_WFXL_OWN(ICE) | \
+			PSO_WFXL_OWN(USE) | \
+			PSO_WFXL_OWN(DCE) | \
+			PSO_WFXL_OWN(MME) | \
+			PSO_WFXL_OWN(IL0) | \
+			PSO_WFXL_OWN(IL1) | \
+			PSO_WFXL_OWN(VS0) | \
+			PSO_WFXL_OWN(VS1))
+
+#define PSO_WFXM_OWN(__field) \
+	SFR_SET_VAL_WFXM(PSO, __field, PL_BAREBOX_REL_LEVEL)
+
+#define PSO_WFXM_VALUE	(PSO_WFXM_OWN(V64) | \
+			PSO_WFXM_OWN(L2E) | \
+			PSO_WFXM_OWN(SME) | \
+			PSO_WFXM_OWN(SMR) | \
+			PSO_WFXM_OWN(PMJ0) | \
+			PSO_WFXM_OWN(PMJ1) | \
+			PSO_WFXM_OWN(PMJ2) | \
+			PSO_WFXM_OWN(PMJ3) | \
+			PSO_WFXM_OWN(MMUP))
+
+#endif /* _ASM_K1C_PRIVILEGE_H */
diff --git a/arch/k1c/include/asm/sections.h b/arch/k1c/include/asm/sections.h
new file mode 100644
index 000000000..85e76c013
--- /dev/null
+++ b/arch/k1c/include/asm/sections.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_SECTIONS_H
+#define _ASM_K1C_SECTIONS_H
+
+#include <asm-generic/sections.h>
+
+#endif	/* _ASM_K1C_SECTIONS_H */
+
diff --git a/arch/k1c/include/asm/sfr.h b/arch/k1c/include/asm/sfr.h
new file mode 100644
index 000000000..3569924a8
--- /dev/null
+++ b/arch/k1c/include/asm/sfr.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_SFR_H
+#define _ASM_K1C_SFR_H
+
+#include <asm/sfr_defs.h>
+
+#define wfxl(_sfr, _val)	__builtin_k1_wfxl(_sfr, _val)
+
+#define wfxm(_sfr, _val)	__builtin_k1_wfxm(_sfr, _val)
+
+static inline void
+k1c_sfr_set_bit(unsigned char sfr, unsigned char bit)
+{
+	if (bit < 32)
+		wfxl(sfr, (uint64_t) (1 << bit) << 32);
+	else
+		wfxm(sfr, (uint64_t) 1 << bit);
+}
+
+static inline uint64_t make_sfr_val(uint64_t mask, uint64_t value)
+{
+	return ((value & 0xFFFFFFFF) << 32) | (mask & 0xFFFFFFFF);
+}
+
+static inline void
+k1c_sfr_set_mask(unsigned char sfr, uint64_t mask, uint64_t value)
+{
+	uint64_t wf_val;
+	/* Least significant bits */
+	if (mask & 0xFFFFFFFF) {
+		wf_val = make_sfr_val(value, mask);
+		wfxl(sfr, wf_val);
+	}
+
+	/* Most significant bits */
+	if (mask & (0xFFFFFFFFULL << 32)) {
+		value >>= 32;
+		mask >>= 32;
+		wf_val = make_sfr_val(value, mask);
+		wfxm(sfr, wf_val);
+	}
+}
+
+static inline void
+k1c_sfr_clear_bit(unsigned char sfr, unsigned char bit)
+{
+	if (bit < 32)
+		wfxl(sfr, 1 << bit);
+	else
+		wfxm(sfr, 1 << (bit - 32));
+}
+
+#define k1c_sfr_set(_sfr, _val)	__builtin_k1_set(_sfr, _val)
+#define k1c_sfr_get(_sfr)	__builtin_k1_get(_sfr)
+
+
+#endif	/* _ASM_K1C_SFR_DEFS_H */
diff --git a/arch/k1c/include/asm/string.h b/arch/k1c/include/asm/string.h
new file mode 100644
index 000000000..902811b8a
--- /dev/null
+++ b/arch/k1c/include/asm/string.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_STRING_H
+#define _ASM_K1C_STRING_H
+
+/**
+ * FIXME AUTO: Implement optimized memcpy and memset for k1c
+ */
+
+#endif	/* _ASM_K1C_STRING_H */
+
diff --git a/arch/k1c/include/asm/swab.h b/arch/k1c/include/asm/swab.h
new file mode 100644
index 000000000..4149bf50f
--- /dev/null
+++ b/arch/k1c/include/asm/swab.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_SWAB_H
+#define _ASM_K1C_SWAB_H
+
+/**
+ * FIXME AUTO: Implement optimized byte swap using sbmm for k1c
+ */
+
+#endif	/* _ASM_K1C_SWAB_H */
+
diff --git a/arch/k1c/include/asm/sys_arch.h b/arch/k1c/include/asm/sys_arch.h
new file mode 100644
index 000000000..f7049fd37
--- /dev/null
+++ b/arch/k1c/include/asm/sys_arch.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_SYS_ARCH_H
+#define _ASM_K1C_SYS_ARCH_H
+
+#include <asm/sfr_defs.h>
+
+#define EXCEPTION_STRIDE	0x40
+#define EXCEPTION_ALIGNMENT	0x100
+
+#define K1C_SFR_START(__sfr_reg) \
+	(K1C_SFR_## __sfr_reg ## _SHIFT)
+
+#define K1C_SFR_END(__sfr_reg) \
+	(K1C_SFR_## __sfr_reg ## _SHIFT + K1C_SFR_## __sfr_reg ## _WIDTH - 1)
+
+/**
+ * Get the value to clear a sfr
+ */
+#define SFR_CLEAR(__sfr, __field, __lm) \
+	K1C_SFR_## __sfr ## _ ## __field ## _ ## __lm ## _CLEAR
+
+#define SFR_CLEAR_WFXL(__sfr, __field)  SFR_CLEAR(__sfr, __field, WFXL)
+#define SFR_CLEAR_WFXM(__sfr, __field)  SFR_CLEAR(__sfr, __field, WFXM)
+
+/**
+ * Get the value to set a sfr.
+ */
+#define SFR_SET_WFXL(__sfr, __field, __val) \
+	(__val << (K1C_SFR_ ## __sfr ## _ ## __field ## _SHIFT + 32))
+
+#define SFR_SET_WFXM(__sfr, __field, __val) \
+	(__val << (K1C_SFR_ ## __sfr ## _ ## __field ## _SHIFT))
+
+/**
+ * Generate the mask to clear and set a value using wfx{m|l}.
+ */
+#define SFR_SET_VAL_WFXL(__sfr, __field, __val) \
+	(SFR_SET_WFXL(__sfr, __field, __val) | SFR_CLEAR_WFXL(__sfr, __field))
+#define SFR_SET_VAL_WFXM(__sfr, __field, __val) \
+	(SFR_SET_WFXM(__sfr, __field, __val) | SFR_CLEAR_WFXM(__sfr, __field))
+
+#endif /* _ASM_K1C_SYS_ARCH_H */
diff --git a/arch/k1c/include/asm/types.h b/arch/k1c/include/asm/types.h
new file mode 100644
index 000000000..f58746ddf
--- /dev/null
+++ b/arch/k1c/include/asm/types.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_TYPES_H
+#define _ASM_K1C_TYPES_H
+
+#include <asm-generic/int-ll64.h>
+
+typedef unsigned short umode_t;
+
+#endif	/* _ASM_K1C_TYPES_H */
+
diff --git a/arch/k1c/include/asm/unaligned.h b/arch/k1c/include/asm/unaligned.h
new file mode 100644
index 000000000..37a5790a0
--- /dev/null
+++ b/arch/k1c/include/asm/unaligned.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_K1C_UNALIGNED_H
+#define _ASM_K1C_UNALIGNED_H
+
+#include <linux/unaligned/le_struct.h>
+#include <linux/unaligned/be_byteshift.h>
+#include <linux/unaligned/generic.h>
+
+#define get_unaligned __get_unaligned_le
+#define put_unaligned __put_unaligned_le
+
+#endif	/* _ASM_K1C_UNALIGNED_H */
+
diff --git a/arch/k1c/lib/Makefile b/arch/k1c/lib/Makefile
new file mode 100644
index 000000000..352e7034a
--- /dev/null
+++ b/arch/k1c/lib/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Copyright (C) 2019 Kalray Inc.
+#
+
+obj-y	+= cpuinfo.o board.o dtb.o poweroff.o
diff --git a/arch/k1c/lib/asm-offsets.c b/arch/k1c/lib/asm-offsets.c
new file mode 100644
index 000000000..9ab4fc4d4
--- /dev/null
+++ b/arch/k1c/lib/asm-offsets.c
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <linux/kbuild.h>
+
+int main(void)
+{
+	return 0;
+}
diff --git a/arch/k1c/lib/board.c b/arch/k1c/lib/board.c
new file mode 100644
index 000000000..d17a32614
--- /dev/null
+++ b/arch/k1c/lib/board.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
+
+
+void __noreturn k1c_start_barebox(void)
+{
+	mem_malloc_init((void *)CONFIG_MALLOC_BASE,
+			(void *)(CONFIG_MALLOC_BASE + MALLOC_SIZE - 1));
+
+	start_barebox();
+
+	hang();
+}
diff --git a/arch/k1c/lib/cpuinfo.c b/arch/k1c/lib/cpuinfo.c
new file mode 100644
index 000000000..f17a0dc6b
--- /dev/null
+++ b/arch/k1c/lib/cpuinfo.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <common.h>
+#include <command.h>
+
+static int do_cpuinfo(int argc, char *argv[])
+{
+	printf("Kalray Coolidge\n");
+
+	return 0;
+}
+
+BAREBOX_CMD_START(cpuinfo)
+	.cmd            = do_cpuinfo,
+	BAREBOX_CMD_DESC("show CPU information")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+BAREBOX_CMD_END
diff --git a/arch/k1c/lib/dtb.c b/arch/k1c/lib/dtb.c
new file mode 100644
index 000000000..582967e72
--- /dev/null
+++ b/arch/k1c/lib/dtb.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+extern char __dtb_start[];
+
+static int of_k1c_init(void)
+{
+	int ret;
+	struct device_node *root;
+
+	root = of_unflatten_dtb(__dtb_start);
+	if (IS_ERR(root)) {
+		ret = PTR_ERR(root);
+		panic("Failed to parse DTB: %d\n", ret);
+	}
+
+	ret = of_set_root_node(root);
+	if (ret)
+		panic("Failed to set of root node\n");
+
+	of_probe();
+
+	return 0;
+}
+core_initcall(of_k1c_init);
diff --git a/arch/k1c/lib/poweroff.c b/arch/k1c/lib/poweroff.c
new file mode 100644
index 000000000..001ca6b6c
--- /dev/null
+++ b/arch/k1c/lib/poweroff.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <init.h>
+#include <common.h>
+#include <poweroff.h>
+
+static void __noreturn k1c_poweroff(struct poweroff_handler *handler)
+{
+	register int status asm("r0") = 0;
+
+	shutdown_barebox();
+
+	asm volatile ("scall 0xfff\n\t;;"
+			: : "r"(status)
+			: "r1", "r2", "r3", "r4", "r5", "r6", "r7",
+							"r8", "memory");
+	hang();
+}
+
+static int k1c_scall_poweroff_probe(struct device_d *dev)
+{
+	poweroff_handler_register_fn(k1c_poweroff);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id k1c_scall_poweroff_id[] = {
+	{
+		.compatible = "kalray,k1c-scall-poweroff",
+	}, {
+	}
+};
+
+static struct driver_d k1c_scall_poweroff = {
+	.name  = "k1c_scall_poweroff",
+	.probe = k1c_scall_poweroff_probe,
+	.of_compatible = DRV_OF_COMPAT(k1c_scall_poweroff_id),
+};
+
+device_platform_driver(k1c_scall_poweroff);
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 7436fc2de..24ab2eddb 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -4,7 +4,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV
+	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV || K1C
 	def_bool y
 
 config DTC
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
