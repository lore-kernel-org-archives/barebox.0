Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpQ9-0002bO-MM
 for barebox@lists.infradead.org; Sat, 04 Apr 2020 20:29:42 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sat,  4 Apr 2020 22:29:05 +0200
Message-Id: <20200404202910.12524-2-cleger@kalray.eu>
In-Reply-To: <20200404202910.12524-1-cleger@kalray.eu>
References: <20200404202910.12524-1-cleger@kalray.eu>
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
Subject: [PATCH v2 1/6] kvx: Initial Kalray Coolidge (kv3) architecture support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Add kalray coolidge arch/ support.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/Kconfig                   |  33 +++++
 arch/kvx/Makefile                  |  36 ++++++
 arch/kvx/configs/generic_defconfig |   9 ++
 arch/kvx/cpu/Makefile              |   7 ++
 arch/kvx/cpu/barebox.lds.S         |  95 ++++++++++++++
 arch/kvx/cpu/cpu.c                 |  32 +++++
 arch/kvx/cpu/exception.S           |  24 ++++
 arch/kvx/cpu/start.S               | 184 +++++++++++++++++++++++++++
 arch/kvx/include/asm/barrier.h     |  18 +++
 arch/kvx/include/asm/bitops.h      |  27 ++++
 arch/kvx/include/asm/bitsperlong.h |  12 ++
 arch/kvx/include/asm/byteorder.h   |  12 ++
 arch/kvx/include/asm/common.h      |  27 ++++
 arch/kvx/include/asm/elf.h         |  18 +++
 arch/kvx/include/asm/io.h          |  14 +++
 arch/kvx/include/asm/linkage.h     |  10 ++
 arch/kvx/include/asm/posix_types.h |  12 ++
 arch/kvx/include/asm/privilege.h   | 192 +++++++++++++++++++++++++++++
 arch/kvx/include/asm/sections.h    |  12 ++
 arch/kvx/include/asm/sfr.h         |  47 +++++++
 arch/kvx/include/asm/string.h      |  14 +++
 arch/kvx/include/asm/swab.h        |  14 +++
 arch/kvx/include/asm/sys_arch.h    |  46 +++++++
 arch/kvx/include/asm/types.h       |  14 +++
 arch/kvx/include/asm/unaligned.h   |  17 +++
 arch/kvx/lib/Makefile              |   6 +
 arch/kvx/lib/asm-offsets.c         |  11 ++
 arch/kvx/lib/board.c               | 119 ++++++++++++++++++
 arch/kvx/lib/cpuinfo.c             |  20 +++
 arch/kvx/lib/dtb.c                 |  29 +++++
 arch/kvx/lib/poweroff.c            |  43 +++++++
 drivers/of/Kconfig                 |   2 +-
 32 files changed, 1155 insertions(+), 1 deletion(-)
 create mode 100644 arch/kvx/Kconfig
 create mode 100644 arch/kvx/Makefile
 create mode 100644 arch/kvx/configs/generic_defconfig
 create mode 100644 arch/kvx/cpu/Makefile
 create mode 100644 arch/kvx/cpu/barebox.lds.S
 create mode 100644 arch/kvx/cpu/cpu.c
 create mode 100644 arch/kvx/cpu/exception.S
 create mode 100644 arch/kvx/cpu/start.S
 create mode 100644 arch/kvx/include/asm/barrier.h
 create mode 100644 arch/kvx/include/asm/bitops.h
 create mode 100644 arch/kvx/include/asm/bitsperlong.h
 create mode 100644 arch/kvx/include/asm/byteorder.h
 create mode 100644 arch/kvx/include/asm/common.h
 create mode 100644 arch/kvx/include/asm/elf.h
 create mode 100644 arch/kvx/include/asm/io.h
 create mode 100644 arch/kvx/include/asm/linkage.h
 create mode 100644 arch/kvx/include/asm/posix_types.h
 create mode 100644 arch/kvx/include/asm/privilege.h
 create mode 100644 arch/kvx/include/asm/sections.h
 create mode 100644 arch/kvx/include/asm/sfr.h
 create mode 100644 arch/kvx/include/asm/string.h
 create mode 100644 arch/kvx/include/asm/swab.h
 create mode 100644 arch/kvx/include/asm/sys_arch.h
 create mode 100644 arch/kvx/include/asm/types.h
 create mode 100644 arch/kvx/include/asm/unaligned.h
 create mode 100644 arch/kvx/lib/Makefile
 create mode 100644 arch/kvx/lib/asm-offsets.c
 create mode 100644 arch/kvx/lib/board.c
 create mode 100644 arch/kvx/lib/cpuinfo.c
 create mode 100644 arch/kvx/lib/dtb.c
 create mode 100644 arch/kvx/lib/poweroff.c

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
new file mode 100644
index 000000000..589ee3f04
--- /dev/null
+++ b/arch/kvx/Kconfig
@@ -0,0 +1,33 @@
+config KVX
+	bool
+	select 64BIT
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select FLEXIBLE_BOOTARGS
+	select GENERIC_FIND_NEXT_BIT
+	select LIBFDT
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
+	default 0x110000000
+
+menu "Kalray specific"
+
+config ARCHINFO
+	string
+	default "coolidge"
+endmenu
diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
new file mode 100644
index 000000000..9ed952bf3
--- /dev/null
+++ b/arch/kvx/Makefile
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
+CROSS_COMPILE    := kvx-elf-
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
+LDFLAGS += -m elf64kvx
+
+archprepare: maketools
+
+PHONY += maketools
+
+common-y += arch/kvx/lib/
+common-y += arch/kvx/cpu/
+
+lds-y += arch/kvx/cpu/barebox.lds
+
+cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+      -T $(BAREBOX_LDS) \
+      --start-group $(BAREBOX_OBJS) --end-group \
+      -L$(LIBGCC_PATH) -lgcc \
+      $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
new file mode 100644
index 000000000..535f1cf8b
--- /dev/null
+++ b/arch/kvx/configs/generic_defconfig
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
diff --git a/arch/kvx/cpu/Makefile b/arch/kvx/cpu/Makefile
new file mode 100644
index 000000000..1d0635206
--- /dev/null
+++ b/arch/kvx/cpu/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Copyright (C) 2019 Kalray Inc.
+#
+
+obj-y 		+= start.o cpu.o exception.o
+extra-y 	+= barebox.lds
diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
new file mode 100644
index 000000000..8d1944afb
--- /dev/null
+++ b/arch/kvx/cpu/barebox.lds.S
@@ -0,0 +1,95 @@
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
+OUTPUT_FORMAT("elf64-kvx")
+OUTPUT_ARCH("kvx:kv3-1:64")
+
+#define DTB_DEFAULT_SIZE	(24 * 1024)
+
+SECTIONS
+{
+	. = CONFIG_ARCH_TEXT_BASE;
+	.text ALIGN(4) : {
+		*(.startup);
+		_stext = .;
+		*(.text)
+	}
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
+	}
+
+	.rodata ALIGN(8) : {
+		*(.rodata*)
+		. = ALIGN(8);
+		RO_DATA_SECTION
+	}
+
+	.dtb ALIGN(16):
+	{
+		__dtb_start = .;
+		. += DTB_DEFAULT_SIZE;
+		__dtb_end = .;
+	}
+
+	_etext = .; /* End of text and rodata section */
+
+	.data ALIGN(4): {
+		sdata = .;
+		_sdata = .;
+		*(.data)
+		. = ALIGN(8);
+		__stack_end = .;
+		. += CONFIG_STACK_SIZE;
+		__stack_start = .;
+	}
+
+	.gdb_page ALIGN(4 * 1024) :
+	{
+		_debug_start = ABSOLUTE(.);
+		_debug_phy_start = ABSOLUTE(.);
+		. += 4 * 1024;
+	}
+	__debug_phy_end = ABSOLUTE(.);
+	_edata = .;
+
+	/* We use store quad for bss init so align on 16 bytes */
+	.bss ALIGN(16):
+	{
+		__bss_start = .;
+		*(.bss)
+		. = ALIGN(16);
+		__bss_stop = .;
+	}
+	__end = .;
+}
diff --git a/arch/kvx/cpu/cpu.c b/arch/kvx/cpu/cpu.c
new file mode 100644
index 000000000..788d3194f
--- /dev/null
+++ b/arch/kvx/cpu/cpu.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <common.h>
+#include <asm/sfr.h>
+#include <asm/sys_arch.h>
+
+extern char __dtb_start[];
+
+/* Default to builtin dtb */
+void *boot_dtb = __dtb_start;
+
+void kvx_lowlevel_setup(unsigned long r0, void *dtb_ptr)
+{
+	uint64_t ev_val = (uint64_t) &_exception_start | EXCEPTION_STRIDE;
+
+	if (r0 == FSBL_PARAM_MAGIC) {
+		boot_dtb = dtb_ptr;
+		pr_info("Using DTB provided by FSBL\n");
+	}
+
+	/* Install exception handlers */
+	kvx_sfr_set(EV, ev_val);
+
+	/* Clear exception taken bit now that we setup our handlers */
+	kvx_sfr_set_field(PS, ET, 0);
+
+	/* Finally, make sure nobody disabled hardware trap before us */
+	kvx_sfr_set_field(PS, HTD, 0);
+}
diff --git a/arch/kvx/cpu/exception.S b/arch/kvx/cpu/exception.S
new file mode 100644
index 000000000..0017e8ea1
--- /dev/null
+++ b/arch/kvx/cpu/exception.S
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <linux/linkage.h>
+
+/**
+ * We do not aim at handling exceptions but at least, we want the CPU to
+ * stop when taking one.
+ * Note that we can not expect to be able to issue a print since
+ * it might be the cause of trap...
+ */
+#define exception_stub(__type) \
+.section .exception.## __type, "ax", @progbits ;\
+ENTRY(kvx_## __type ##_early_handler): ;\
+	goto . ;\
+	;; ;\
+ENDPROC(kvx_ ## __type ## _early_handler)
+
+exception_stub(debug)
+exception_stub(trap)
+exception_stub(interrupt)
+exception_stub(syscall)
diff --git a/arch/kvx/cpu/start.S b/arch/kvx/cpu/start.S
new file mode 100644
index 000000000..a02900fb9
--- /dev/null
+++ b/arch/kvx/cpu/start.S
@@ -0,0 +1,184 @@
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
+#define WS_ENABLE_WU2		(KVX_SFR_WS_WU2_MASK)
+
+#define WS_WFXL_VALUE		(WS_ENABLE_WU2)
+
+/*
+ * This is our entry point. When entering from bootloader,
+ * the following registers are set:
+ * $r0 is a magic "KALARGV1" (FSBL_PARAM_MAGIC) indicating parameters are passed
+ * $r1 Device tree pointer
+ *
+ * WARNING WARNING WARNING
+ * ! DO NOT CLOBBER THEM !
+ * WARNING WARNING WARNING
+ *
+ * Try to use register above $r20 to ease parameter adding in future
+ */
+.section .startup, "ax"
+ENTRY(kvx_start)
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
+	make $sp, __stack_start
+	;;
+	call kvx_lowlevel_setup
+	;;
+	call kvx_start_barebox
+	;;
+	goto kvx_proc_power_off
+	;;
+ENDPROC(kvx_start)
+
+#define request_ownership(__pl) ;\
+	make $r21 = SYO_WFXL_VALUE_##__pl ;\
+	;; ;\
+	wfxl $syow = $r21 ;\
+	;; ;\
+	make $r21 = HTO_WFXL_VALUE_##__pl ;\
+	;; ;\
+	wfxl $htow = $r21 ;\
+	;; ;\
+	make $r21 = MO_WFXL_VALUE_##__pl ;\
+	make $r22 = MO_WFXM_VALUE_##__pl ;\
+	;; ;\
+	wfxl $mow = $r21 ;\
+	;; ;\
+	wfxm $mow = $r22 ;\
+	;; ;\
+	make $r21 = ITO_WFXL_VALUE_##__pl ;\
+	make $r22 = ITO_WFXM_VALUE_##__pl ;\
+	;; ;\
+	wfxl $itow = $r21 ;\
+	;; ;\
+	wfxm $itow = $r22 ;\
+	;; ;\
+	make $r21 = PSO_WFXL_VALUE_##__pl ;\
+	make $r22 = PSO_WFXM_VALUE_##__pl ;\
+	;; ;\
+	wfxl $psow = $r21 ;\
+	;; ;\
+	wfxm $psow = $r22 ;\
+	;;
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
+	extfz $r20 = $r21, KVX_SFR_END(PS_PL), KVX_SFR_START(PS_PL)
+	;;
+	/* If our privilege level is 0, then we need to lower in execution level
+	 * to ring 1 in order to let the debug routines be inserted at runtime
+	 * by the JTAG. In both case, we will request the resources we need for
+	 * barebox to run.
+	 */
+	cb.deqz $r20? delegate_pl
+	;;
+	/*
+	 * When someone is already above us, request the resources we need to
+	 * run barebox . No need to request double exception or ECC traps for
+	 * instance. When doing so, the more privileged level will trap for
+	 * permission and delegate us the required resources.
+	 */
+	request_ownership(PL_CUR)
+	;;
+	ret
+	;;
+delegate_pl:
+	request_ownership(PL_CUR_PLUS_1)
+	;;
+	/* Copy our $ps into $sps for 1:1 restoration */
+	get $r22 = $ps
+	;;
+	/* We will return to $ra after rfe */
+	get $r21 = $ra
+	/* Set privilege level to +1 in $sps (relative level from the
+	 * current one)
+	 */
+	addd $r22 = $r22, PL_CUR_PLUS_1
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
+ENTRY(kvx_proc_power_off):
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
+ENDPROC(kvx_proc_power_off)
diff --git a/arch/kvx/include/asm/barrier.h b/arch/kvx/include/asm/barrier.h
new file mode 100644
index 000000000..616b5f90a
--- /dev/null
+++ b/arch/kvx/include/asm/barrier.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_BARRIER_H
+#define _ASM_KVX_BARRIER_H
+
+/* fence is sufficient to guarantee write ordering */
+#define wmb()	__builtin_kvx_fence()
+
+/* no L2 coherency, therefore rmb is D$ invalidation */
+#define rmb()   __builtin_kvx_dinval()
+
+/* general memory barrier */
+#define mb()    do { wmb(); rmb(); } while (0)
+
+#endif /* _ASM_KVX_BARRIER_H */
diff --git a/arch/kvx/include/asm/bitops.h b/arch/kvx/include/asm/bitops.h
new file mode 100644
index 000000000..a78b8a0ce
--- /dev/null
+++ b/arch/kvx/include/asm/bitops.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_BITOPS_H
+#define _ASM_KVX_BITOPS_H
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
+#endif	/* _ASM_KVX_BITOPS_H */
+
diff --git a/arch/kvx/include/asm/bitsperlong.h b/arch/kvx/include/asm/bitsperlong.h
new file mode 100644
index 000000000..9157b3a8e
--- /dev/null
+++ b/arch/kvx/include/asm/bitsperlong.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_BITSPERLONG_H
+#define _ASM_KVX_BITSPERLONG_H
+
+#include <asm-generic/bitsperlong.h>
+
+#endif	/* _ASM_KVX_BITSPERLONG_H */
+
diff --git a/arch/kvx/include/asm/byteorder.h b/arch/kvx/include/asm/byteorder.h
new file mode 100644
index 000000000..2dbd079d2
--- /dev/null
+++ b/arch/kvx/include/asm/byteorder.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_BYTEORDER_H
+#define _ASM_KVX_BYTEORDER_H
+
+#include <linux/byteorder/little_endian.h>
+
+#endif	/* _ASM_KVX_BYTEORDER_H */
+
diff --git a/arch/kvx/include/asm/common.h b/arch/kvx/include/asm/common.h
new file mode 100644
index 000000000..a7e301e53
--- /dev/null
+++ b/arch/kvx/include/asm/common.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_COMMON_H
+#define _ASM_KVX_COMMON_H
+
+#ifndef __ASSEMBLY__
+
+/*
+ * Magic value passed in r0 to indicate valid parameters from FSBL when booting
+ * If $r0 contains this value, then $r1 contains dtb pointer.
+ */
+#define FSBL_PARAM_MAGIC	0x31564752414C414BULL
+
+extern char _exception_start;
+extern char __end;
+extern void *boot_dtb;
+
+void kvx_start_barebox(void);
+void kvx_lowlevel_setup(unsigned long r0, void *dtb_ptr);
+
+#endif
+
+#endif	/* _ASM_KVX_COMMON_H */
+
diff --git a/arch/kvx/include/asm/elf.h b/arch/kvx/include/asm/elf.h
new file mode 100644
index 000000000..7cc09d7ba
--- /dev/null
+++ b/arch/kvx/include/asm/elf.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_ELF_H
+#define _ASM_KVX_ELF_H
+
+/*
+ * ELF register definitions..
+ */
+#include <linux/types.h>
+
+#define ELF_CLASS	ELFCLASS32
+#define ELF_DATA	ELFDATA2MSB
+
+#endif	/* _ASM_KVX_ELF_H */
+
diff --git a/arch/kvx/include/asm/io.h b/arch/kvx/include/asm/io.h
new file mode 100644
index 000000000..d9993f14b
--- /dev/null
+++ b/arch/kvx/include/asm/io.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_IO_H
+#define _ASM_KVX_IO_H
+
+#define IO_SPACE_LIMIT		0x0
+
+#include <asm/byteorder.h>
+#include <asm-generic/io.h>
+
+#endif	/* _ASM_KVX_IO_H */
diff --git a/arch/kvx/include/asm/linkage.h b/arch/kvx/include/asm/linkage.h
new file mode 100644
index 000000000..3d2a26508
--- /dev/null
+++ b/arch/kvx/include/asm/linkage.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_LINKAGE_H
+#define _ASM_KVX_LINKAGE_H
+
+
+#endif	/* _ASM_KVX_LINKAGE_H */
diff --git a/arch/kvx/include/asm/posix_types.h b/arch/kvx/include/asm/posix_types.h
new file mode 100644
index 000000000..fc650c326
--- /dev/null
+++ b/arch/kvx/include/asm/posix_types.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_POSIX_TYPES_H
+#define _ASM_KVX_POSIX_TYPES_H
+
+#include <asm-generic/posix_types.h>
+
+#endif	/* _ASM_KVX_POSIX_TYPES_H */
+
diff --git a/arch/kvx/include/asm/privilege.h b/arch/kvx/include/asm/privilege.h
new file mode 100644
index 000000000..36b9ade49
--- /dev/null
+++ b/arch/kvx/include/asm/privilege.h
@@ -0,0 +1,192 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_PRIVILEGE_H
+#define _ASM_KVX_PRIVILEGE_H
+
+#include <asm/sys_arch.h>
+
+/**
+ * Privilege level stuff
+ */
+
+/*
+ * When manipulating ring levels, we always use relative values. This means that
+ * settings a resource owner to value 1 means "Current privilege level + 1.
+ * Setting it to 0 means "Current privilege level"
+ */
+#define PL_CUR_PLUS_1	1
+#define PL_CUR		0
+
+/**
+ * Syscall owner configuration
+ */
+#define SYO_WFXL_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXL(SYO, __field, __pl)
+
+#define SYO_WFXL_VALUE(__pl) (SYO_WFXL_OWN(Q0, __pl) | \
+			      SYO_WFXL_OWN(Q1, __pl) | \
+			      SYO_WFXL_OWN(Q2, __pl) | \
+			      SYO_WFXL_OWN(Q3, __pl))
+
+#define SYO_WFXL_VALUE_PL_CUR_PLUS_1	SYO_WFXL_VALUE(PL_CUR_PLUS_1)
+#define SYO_WFXL_VALUE_PL_CUR		SYO_WFXL_VALUE(PL_CUR)
+
+/**
+ * hardware trap owner configuration
+ */
+#define HTO_WFXL_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXL(HTO, __field, __pl)
+
+
+#define HTO_WFXL_VALUE_BASE(__pl)	(HTO_WFXL_OWN(OPC, __pl) | \
+					 HTO_WFXL_OWN(DMIS, __pl) | \
+					 HTO_WFXL_OWN(PSYS, __pl) | \
+					 HTO_WFXL_OWN(DSYS, __pl) | \
+					 HTO_WFXL_OWN(NOMAP, __pl) | \
+					 HTO_WFXL_OWN(PROT, __pl) | \
+					 HTO_WFXL_OWN(W2CL, __pl) | \
+					 HTO_WFXL_OWN(A2CL, __pl) | \
+					 HTO_WFXL_OWN(VSFR, __pl) | \
+					 HTO_WFXL_OWN(PLO, __pl))
+
+/*
+ * When alone on the processor, we need to request all traps or the processor
+ * will die badly without any information at all by jumping to the more
+ * privilege level even if nobody is there.
+ */
+#define HTO_WFXL_VALUE_PL_CUR_PLUS_1	(HTO_WFXL_VALUE_BASE(PL_CUR_PLUS_1) | \
+					 HTO_WFXL_OWN(DECCG, PL_CUR_PLUS_1) | \
+					 HTO_WFXL_OWN(SECCG, PL_CUR_PLUS_1) | \
+					 HTO_WFXL_OWN(DE, PL_CUR_PLUS_1))
+
+#define HTO_WFXL_VALUE_PL_CUR		HTO_WFXL_VALUE_BASE(PL_CUR)
+
+/**
+ * Interrupt owner configuration
+ */
+#define ITO_WFXL_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXL(ITO, __field, __pl)
+
+#define ITO_WFXL_VALUE(__pl)	(ITO_WFXL_OWN(IT0, __pl) | \
+				 ITO_WFXL_OWN(IT1, __pl) | \
+				 ITO_WFXL_OWN(IT2, __pl) | \
+				 ITO_WFXL_OWN(IT3, __pl) | \
+				 ITO_WFXL_OWN(IT4, __pl) | \
+				 ITO_WFXL_OWN(IT5, __pl) | \
+				 ITO_WFXL_OWN(IT6, __pl) | \
+				 ITO_WFXL_OWN(IT7, __pl) | \
+				 ITO_WFXL_OWN(IT8, __pl) | \
+				 ITO_WFXL_OWN(IT9, __pl) | \
+				 ITO_WFXL_OWN(IT10, __pl) | \
+				 ITO_WFXL_OWN(IT11, __pl) | \
+				 ITO_WFXL_OWN(IT12, __pl) | \
+				 ITO_WFXL_OWN(IT13, __pl) | \
+				 ITO_WFXL_OWN(IT14, __pl) | \
+				 ITO_WFXL_OWN(IT15, __pl))
+
+#define ITO_WFXL_VALUE_PL_CUR_PLUS_1	ITO_WFXL_VALUE(PL_CUR_PLUS_1)
+#define ITO_WFXL_VALUE_PL_CUR		ITO_WFXL_VALUE(PL_CUR)
+
+#define ITO_WFXM_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXM(ITO, __field, __pl)
+
+#define ITO_WFXM_VALUE(__pl) (ITO_WFXM_OWN(IT16, __pl) | \
+			      ITO_WFXM_OWN(IT17, __pl) | \
+			      ITO_WFXM_OWN(IT18, __pl) | \
+			      ITO_WFXM_OWN(IT19, __pl) | \
+			      ITO_WFXM_OWN(IT20, __pl) | \
+			      ITO_WFXM_OWN(IT21, __pl) | \
+			      ITO_WFXM_OWN(IT22, __pl) | \
+			      ITO_WFXM_OWN(IT23, __pl) | \
+			      ITO_WFXM_OWN(IT24, __pl) | \
+			      ITO_WFXM_OWN(IT25, __pl) | \
+			      ITO_WFXM_OWN(IT26, __pl) | \
+			      ITO_WFXM_OWN(IT27, __pl) | \
+			      ITO_WFXM_OWN(IT28, __pl) | \
+			      ITO_WFXM_OWN(IT29, __pl) | \
+			      ITO_WFXM_OWN(IT30, __pl) | \
+			      ITO_WFXM_OWN(IT31, __pl))
+
+#define ITO_WFXM_VALUE_PL_CUR_PLUS_1	ITO_WFXM_VALUE(PL_CUR_PLUS_1)
+#define ITO_WFXM_VALUE_PL_CUR		ITO_WFXM_VALUE(PL_CUR)
+
+/**
+ * Misc owner configuration
+ */
+#define MO_WFXL_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXL(MO, __field, __pl)
+
+#define MO_WFXL_VALUE(__pl)	(MO_WFXL_OWN(MMI, __pl) | \
+				 MO_WFXL_OWN(RFE, __pl) | \
+				 MO_WFXL_OWN(STOP, __pl) | \
+				 MO_WFXL_OWN(SYNC, __pl) | \
+				 MO_WFXL_OWN(PCR, __pl) | \
+				 MO_WFXL_OWN(MSG, __pl) | \
+				 MO_WFXL_OWN(MEN, __pl) | \
+				 MO_WFXL_OWN(MES, __pl) | \
+				 MO_WFXL_OWN(CSIT, __pl) | \
+				 MO_WFXL_OWN(T0, __pl) | \
+				 MO_WFXL_OWN(T1, __pl) | \
+				 MO_WFXL_OWN(WD, __pl) | \
+				 MO_WFXL_OWN(PM0, __pl) | \
+				 MO_WFXL_OWN(PM1, __pl) | \
+				 MO_WFXL_OWN(PM2, __pl) | \
+				 MO_WFXL_OWN(PM3, __pl))
+
+#define MO_WFXL_VALUE_PL_CUR_PLUS_1	MO_WFXL_VALUE(PL_CUR_PLUS_1)
+#define MO_WFXL_VALUE_PL_CUR		MO_WFXL_VALUE(PL_CUR)
+
+#define MO_WFXM_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXM(MO, __field, __pl)
+
+#define MO_WFXM_VALUE(__pl)	(MO_WFXM_OWN(PMIT, __pl))
+
+#define MO_WFXM_VALUE_PL_CUR_PLUS_1	MO_WFXM_VALUE(PL_CUR_PLUS_1)
+#define MO_WFXM_VALUE_PL_CUR		MO_WFXM_VALUE(PL_CUR)
+
+/**
+ * $ps owner configuration
+ */
+#define PSO_WFXL_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXL(PSO, __field, __pl)
+
+#define PSO_WFXL_BASE_VALUE(__pl)	(PSO_WFXL_OWN(PL0, __pl) | \
+					 PSO_WFXL_OWN(PL1, __pl) | \
+					 PSO_WFXL_OWN(ET, __pl) | \
+					 PSO_WFXL_OWN(HTD, __pl) | \
+					 PSO_WFXL_OWN(IE, __pl) | \
+					 PSO_WFXL_OWN(HLE, __pl) | \
+					 PSO_WFXL_OWN(SRE, __pl) | \
+					 PSO_WFXL_OWN(ICE, __pl) | \
+					 PSO_WFXL_OWN(USE, __pl) | \
+					 PSO_WFXL_OWN(DCE, __pl) | \
+					 PSO_WFXL_OWN(MME, __pl) | \
+					 PSO_WFXL_OWN(IL0, __pl) | \
+					 PSO_WFXL_OWN(IL1, __pl) | \
+					 PSO_WFXL_OWN(VS0, __pl))
+/* Request additionnal VS1 when alone */
+#define PSO_WFXL_VALUE_PL_CUR_PLUS_1	(PSO_WFXL_BASE_VALUE(PL_CUR_PLUS_1) | \
+					 PSO_WFXL_OWN(VS1, PL_CUR_PLUS_1))
+#define PSO_WFXL_VALUE_PL_CUR		PSO_WFXL_BASE_VALUE(PL_CUR)
+
+#define PSO_WFXM_OWN(__field, __pl) \
+	SFR_SET_VAL_WFXM(PSO, __field, __pl)
+
+#define PSO_WFXM_VALUE(__pl)	(PSO_WFXM_OWN(V64, __pl) | \
+				 PSO_WFXM_OWN(L2E, __pl)  | \
+				 PSO_WFXM_OWN(SME, __pl)  | \
+				 PSO_WFXM_OWN(SMR, __pl)  | \
+				 PSO_WFXM_OWN(PMJ0, __pl) | \
+				 PSO_WFXM_OWN(PMJ1, __pl) | \
+				 PSO_WFXM_OWN(PMJ2, __pl) | \
+				 PSO_WFXM_OWN(PMJ3, __pl) | \
+				 PSO_WFXM_OWN(MMUP, __pl))
+
+/* Request additionnal VS1 */
+#define PSO_WFXM_VALUE_PL_CUR_PLUS_1	PSO_WFXM_VALUE(PL_CUR_PLUS_1)
+#define PSO_WFXM_VALUE_PL_CUR		PSO_WFXM_VALUE(PL_CUR)
+
+#endif /* _ASM_KVX_PRIVILEGE_H */
diff --git a/arch/kvx/include/asm/sections.h b/arch/kvx/include/asm/sections.h
new file mode 100644
index 000000000..51376bd99
--- /dev/null
+++ b/arch/kvx/include/asm/sections.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_SECTIONS_H
+#define _ASM_KVX_SECTIONS_H
+
+#include <asm-generic/sections.h>
+
+#endif	/* _ASM_KVX_SECTIONS_H */
+
diff --git a/arch/kvx/include/asm/sfr.h b/arch/kvx/include/asm/sfr.h
new file mode 100644
index 000000000..5b93cee34
--- /dev/null
+++ b/arch/kvx/include/asm/sfr.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_SFR_H
+#define _ASM_KVX_SFR_H
+
+#include <asm/sfr_defs.h>
+
+#define wfxl(_sfr, _val)	__builtin_kvx_wfxl(_sfr, _val)
+
+#define wfxm(_sfr, _val)	__builtin_kvx_wfxm(_sfr, _val)
+
+static inline uint64_t make_sfr_val(uint64_t mask, uint64_t value)
+{
+	return ((value & 0xFFFFFFFF) << 32) | (mask & 0xFFFFFFFF);
+}
+
+static inline void
+kvx_sfr_set_mask(unsigned char sfr, uint64_t mask, uint64_t value)
+{
+	uint64_t wf_val;
+	/* Least significant bits */
+	if (mask & 0xFFFFFFFF) {
+		wf_val = make_sfr_val(mask, value);
+		wfxl(sfr, wf_val);
+	}
+
+	/* Most significant bits */
+	if (mask & (0xFFFFFFFFULL << 32)) {
+		value >>= 32;
+		mask >>= 32;
+		wf_val = make_sfr_val(mask, value);
+		wfxm(sfr, wf_val);
+	}
+}
+
+#define kvx_sfr_set_field(sfr, field, value) \
+	kvx_sfr_set_mask(KVX_SFR_ ## sfr, \
+		KVX_SFR_ ## sfr ## _ ## field ## _MASK, \
+		((uint64_t) (value) << KVX_SFR_ ## sfr ## _ ## field ## _SHIFT))
+
+#define kvx_sfr_set(_sfr, _val)	__builtin_kvx_set(KVX_SFR_ ## _sfr, _val)
+#define kvx_sfr_get(_sfr)	__builtin_kvx_get(KVX_SFR_ ## _sfr)
+
+#endif	/* _ASM_KVX_SFR_DEFS_H */
diff --git a/arch/kvx/include/asm/string.h b/arch/kvx/include/asm/string.h
new file mode 100644
index 000000000..6e98910c3
--- /dev/null
+++ b/arch/kvx/include/asm/string.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_STRING_H
+#define _ASM_KVX_STRING_H
+
+/**
+ * FIXME AUTO: Implement optimized memcpy and memset for kvx
+ */
+
+#endif	/* _ASM_KVX_STRING_H */
+
diff --git a/arch/kvx/include/asm/swab.h b/arch/kvx/include/asm/swab.h
new file mode 100644
index 000000000..35ca77305
--- /dev/null
+++ b/arch/kvx/include/asm/swab.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_SWAB_H
+#define _ASM_KVX_SWAB_H
+
+/**
+ * FIXME AUTO: Implement optimized byte swap using sbmm for kvx
+ */
+
+#endif	/* _ASM_KVX_SWAB_H */
+
diff --git a/arch/kvx/include/asm/sys_arch.h b/arch/kvx/include/asm/sys_arch.h
new file mode 100644
index 000000000..9df32c4e7
--- /dev/null
+++ b/arch/kvx/include/asm/sys_arch.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_SYS_ARCH_H
+#define _ASM_KVX_SYS_ARCH_H
+
+#include <asm/sfr_defs.h>
+
+#define EXCEPTION_STRIDE	0x40
+#define EXCEPTION_ALIGNMENT	0x100
+
+#define KVX_SFR_START(__sfr_reg) \
+	(KVX_SFR_## __sfr_reg ## _SHIFT)
+
+#define KVX_SFR_END(__sfr_reg) \
+	(KVX_SFR_## __sfr_reg ## _SHIFT + KVX_SFR_## __sfr_reg ## _WIDTH - 1)
+
+/**
+ * Get the value to clear a sfr
+ */
+#define SFR_CLEAR(__sfr, __field, __lm) \
+	KVX_SFR_## __sfr ## _ ## __field ## _ ## __lm ## _CLEAR
+
+#define SFR_CLEAR_WFXL(__sfr, __field)  SFR_CLEAR(__sfr, __field, WFXL)
+#define SFR_CLEAR_WFXM(__sfr, __field)  SFR_CLEAR(__sfr, __field, WFXM)
+
+/**
+ * Get the value to set a sfr.
+ */
+#define SFR_SET_WFXL(__sfr, __field, __val) \
+	(__val << (KVX_SFR_ ## __sfr ## _ ## __field ## _SHIFT + 32))
+
+#define SFR_SET_WFXM(__sfr, __field, __val) \
+	(__val << (KVX_SFR_ ## __sfr ## _ ## __field ## _SHIFT))
+
+/**
+ * Generate the mask to clear and set a value using wfx{m|l}.
+ */
+#define SFR_SET_VAL_WFXL(__sfr, __field, __val) \
+	(SFR_SET_WFXL(__sfr, __field, __val) | SFR_CLEAR_WFXL(__sfr, __field))
+#define SFR_SET_VAL_WFXM(__sfr, __field, __val) \
+	(SFR_SET_WFXM(__sfr, __field, __val) | SFR_CLEAR_WFXM(__sfr, __field))
+
+#endif /* _ASM_KVX_SYS_ARCH_H */
diff --git a/arch/kvx/include/asm/types.h b/arch/kvx/include/asm/types.h
new file mode 100644
index 000000000..a24f70db5
--- /dev/null
+++ b/arch/kvx/include/asm/types.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_TYPES_H
+#define _ASM_KVX_TYPES_H
+
+#include <asm-generic/int-ll64.h>
+
+typedef unsigned short umode_t;
+
+#endif	/* _ASM_KVX_TYPES_H */
+
diff --git a/arch/kvx/include/asm/unaligned.h b/arch/kvx/include/asm/unaligned.h
new file mode 100644
index 000000000..74b3f34c1
--- /dev/null
+++ b/arch/kvx/include/asm/unaligned.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef _ASM_KVX_UNALIGNED_H
+#define _ASM_KVX_UNALIGNED_H
+
+#include <linux/unaligned/le_struct.h>
+#include <linux/unaligned/be_byteshift.h>
+#include <linux/unaligned/generic.h>
+
+#define get_unaligned __get_unaligned_le
+#define put_unaligned __put_unaligned_le
+
+#endif	/* _ASM_KVX_UNALIGNED_H */
+
diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
new file mode 100644
index 000000000..352e7034a
--- /dev/null
+++ b/arch/kvx/lib/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Copyright (C) 2019 Kalray Inc.
+#
+
+obj-y	+= cpuinfo.o board.o dtb.o poweroff.o
diff --git a/arch/kvx/lib/asm-offsets.c b/arch/kvx/lib/asm-offsets.c
new file mode 100644
index 000000000..9ab4fc4d4
--- /dev/null
+++ b/arch/kvx/lib/asm-offsets.c
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
diff --git a/arch/kvx/lib/board.c b/arch/kvx/lib/board.c
new file mode 100644
index 000000000..4d6ca6983
--- /dev/null
+++ b/arch/kvx/lib/board.c
@@ -0,0 +1,119 @@
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
+static int find_memory_malloc(u32 na, u32 ns, u64 addr, u64 *membase,
+			      u64 *memsize, const __be32 *reg)
+{
+	int i;
+	u64 memsize64 = 0, membase64 = 0;
+
+	for (i = 0; i < na; i++)
+		membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
+
+	for (i = 0; i < ns; i++)
+		memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
+
+	if (addr > membase64 && addr < (membase64 + memsize64)) {
+		*membase = membase64;
+		*memsize = memsize64;
+		return 1;
+	}
+
+	return 0;
+}
+
+/**
+ * of_find_mem - Find the first memory range (from fdt) in which an address is
+ * contained
+ * @fdt: fdt blob containing memory nodes
+ * @addr: Address to search in available memories
+ * @membase: Returned memory base address
+ * @memsize: Returned memory size
+ */
+static void of_find_mem(void *fdt, u64 addr, u64 *membase, u64 *memsize)
+{
+	const __be32 *nap, *nsp, *reg;
+	u32 na, ns, reg_size;
+	int node, size, i, ret;
+
+	/* Make sure FDT blob is sane */
+	if (fdt_check_header(fdt) != 0) {
+		pr_err("Invalid device tree blob\n");
+		goto err;
+	}
+
+	/* Find the #address-cells and #size-cells properties */
+	node = fdt_path_offset(fdt, "/");
+	if (node < 0) {
+		pr_err("Cannot find root node\n");
+		goto err;
+	}
+
+	nap = fdt_getprop(fdt, node, "#address-cells", &size);
+	if (!nap || (size != 4)) {
+		pr_err("Cannot find #address-cells property");
+		goto err;
+	}
+	na = fdt32_to_cpu(*nap);
+
+	nsp = fdt_getprop(fdt, node, "#size-cells", &size);
+	if (!nsp || (size != 4)) {
+		pr_err("Cannot find #size-cells property");
+		goto err;
+	}
+	ns = fdt32_to_cpu(*nap);
+
+	node = -1;
+	/* Iterate on the memory devices */
+	while (1) {
+		/* Find the memory node */
+		node = fdt_node_offset_by_prop_value(fdt, node, "device_type",
+						     "memory",
+						     sizeof("memory"));
+		if (node < 0) {
+			pr_err("Cannot find memory node\n");
+			goto err;
+		}
+
+		reg_size = na + ns * sizeof(u32);
+		reg = fdt_getprop(fdt, node, "reg", &size);
+		if (size < reg_size) {
+			pr_err("cannot get memory range\n");
+			goto err;
+		}
+
+		/* Iterate on reg content */
+		for (i = 0; i < size; i += reg_size) {
+			ret = find_memory_malloc(na, ns, addr, membase, memsize,
+						 reg);
+			if (ret)
+				return;
+			reg += na + ns;
+		}
+	}
+err:
+	pr_err("No memory, cannot continue\n");
+	while (1);
+}
+
+void __noreturn kvx_start_barebox(void)
+{
+	u64 memsize = 0, membase = 0;
+	u64 barebox_text_end = (u64) &__end;
+
+	of_find_mem(boot_dtb, barebox_text_end, &membase, &memsize);
+
+	mem_malloc_init((void *) barebox_text_end,
+			(void *) (membase + memsize));
+
+	start_barebox();
+
+	hang();
+}
diff --git a/arch/kvx/lib/cpuinfo.c b/arch/kvx/lib/cpuinfo.c
new file mode 100644
index 000000000..f17a0dc6b
--- /dev/null
+++ b/arch/kvx/lib/cpuinfo.c
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
diff --git a/arch/kvx/lib/dtb.c b/arch/kvx/lib/dtb.c
new file mode 100644
index 000000000..17dcab197
--- /dev/null
+++ b/arch/kvx/lib/dtb.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+static int of_kvx_init(void)
+{
+	int ret;
+	struct device_node *root;
+
+	root = of_unflatten_dtb(boot_dtb);
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
+core_initcall(of_kvx_init);
diff --git a/arch/kvx/lib/poweroff.c b/arch/kvx/lib/poweroff.c
new file mode 100644
index 000000000..f2683a583
--- /dev/null
+++ b/arch/kvx/lib/poweroff.c
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
+static void __noreturn kvx_poweroff(struct poweroff_handler *handler)
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
+static int kvx_scall_poweroff_probe(struct device_d *dev)
+{
+	poweroff_handler_register_fn(kvx_poweroff);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id kvx_scall_poweroff_id[] = {
+	{
+		.compatible = "kalray,kvx-scall-poweroff",
+	}, {
+	}
+};
+
+static struct driver_d kvx_scall_poweroff = {
+	.name  = "kvx_scall_poweroff",
+	.probe = kvx_scall_poweroff_probe,
+	.of_compatible = DRV_OF_COMPAT(kvx_scall_poweroff_id),
+};
+
+device_platform_driver(kvx_scall_poweroff);
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 7436fc2de..9ed86afd7 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -4,7 +4,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV
+	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV || KVX
 	def_bool y
 
 config DTC
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
