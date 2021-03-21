Delivery-date: Sun, 21 Mar 2021 16:21:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztK-00025M-UK
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:23 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztD-0002gb-5w
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XR4IT2nWtUdaW5GrMKT006/q5ymwGA0+SKyNPTwoUaQ=; b=fjX3TMNqK2bbQACv8uA98Daf7
	Go/pkuiYxCtGbyGKhI9cWOk1eEdSc/hhhUX6YydbfB9dQZGPI14dPGVfduDQzgVUkoo32rCBJd7Eq
	/5l4zRBmiVT3oRas10zdhdzTJvA3eTH6clXi28KXM6IhlLgIcf7IEzEGJLSXFYwouKrR8F9J4/xV0
	AMSxVvaRTIgz14rtaf50cn9ovOD6S2DGBsK/M9kYLGCCnA8W2ZqL+HC1QVaNqFwtlW+ZBOqVHxNvv
	SeDd/Xz/sLx0K9g+KCpdaLQLQptmByuqFNgEabMSpvJ9NJJUod5+PYWZJ9+KJlroGRI8oZgtdZ5pD
	qC6JZErXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrY-00A4aa-JO; Sun, 21 Mar 2021 15:19:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmE-00A41u-8D
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011c-CT; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm1-0007wn-3G; Sun, 21 Mar 2021 16:13:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:42 +0100
Message-Id: <20210321151344.5810-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_875954_77EC0F09 
X-CRM114-Status: GOOD (  22.96  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 19/21] clocksource: add driver for RISC-V and CLINT timers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CLINT is selected by Linux on nommu RISC-V machines, while the RISC-V
timer with SBI is selected on MMU enabled ones.
Both are also available on the Qemu Virt machine, but only SBI
is available on TinyEmu. As we'll add Virt support in a follow-up
commit, import both drivers now. Erizo could in theory make use
of the RISC-V timer, but even a 2GHz timer base is too slow
for it to be accurate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig                |  12 ++
 arch/riscv/Makefile               |   1 +
 arch/riscv/cpu/Makefile           |   3 +
 arch/riscv/cpu/core.c             |  50 +++++++
 arch/riscv/cpu/time.c             |  38 ++++++
 arch/riscv/include/asm/csr.h      | 211 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/sbi.h      | 153 ++++++++++++++++++++++
 arch/riscv/include/asm/timer.h    |   9 ++
 arch/riscv/lib/dtb.c              |   4 +
 drivers/clocksource/Kconfig       |  15 +++
 drivers/clocksource/Makefile      |   2 +
 drivers/clocksource/timer-clint.c |  93 +++++++++++++
 drivers/clocksource/timer-riscv.c |  50 +++++++
 13 files changed, 641 insertions(+)
 create mode 100644 arch/riscv/cpu/Makefile
 create mode 100644 arch/riscv/cpu/core.c
 create mode 100644 arch/riscv/cpu/time.c
 create mode 100644 arch/riscv/include/asm/csr.h
 create mode 100644 arch/riscv/include/asm/sbi.h
 create mode 100644 arch/riscv/include/asm/timer.h
 create mode 100644 drivers/clocksource/timer-clint.c
 create mode 100644 drivers/clocksource/timer-riscv.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index e630ad4ceb98..50c4d145cf54 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -13,6 +13,7 @@ config RISCV
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_ARCH_SJLJ
 	select HAS_KALLSYMS
+	select RISCV_TIMER if RISCV_SBI
 
 config ARCH_TEXT_BASE
 	hex
@@ -30,6 +31,7 @@ config MACH_ERIZO
 	select HAS_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
+	select RISCV_M_MODE
 
 endchoice
 
@@ -113,4 +115,14 @@ config NMON_HELP
 	  Say yes here to get the nmon commands message on
 	  every nmon start.
 
+# set if we run in machine mode, cleared if we run in supervisor mode
+config RISCV_M_MODE
+	bool
+
+# set if we are running in S-mode and can use SBI calls
+config RISCV_SBI
+	bool
+	depends on !RISCV_M_MODE
+	default y
+
 endmenu
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index c49c1b09ec8e..c0dadead42ad 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -47,6 +47,7 @@ endif
 
 common-y += $(MACH)
 common-y += arch/riscv/boards/
+common-y += arch/riscv/cpu/
 common-y += arch/riscv/lib/
 common-y += arch/riscv/boot/
 
diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
new file mode 100644
index 000000000000..f1312be699a1
--- /dev/null
+++ b/arch/riscv/cpu/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y += core.o time.o
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
new file mode 100644
index 000000000000..bdcd500ed748
--- /dev/null
+++ b/arch/riscv/cpu/core.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ * Copyright (C) 2017 SiFive
+ *
+ * All RISC-V systems have a timer attached to every hart.  These timers can
+ * either be read from the "time" and "timeh" CSRs, and can use the SBI to
+ * setup events, or directly accessed using MMIO registers.
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <errno.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+
+static struct device_d timer_dev;
+
+static int riscv_probe(struct device_d *parent)
+{
+	int ret;
+
+	/* Each hart has a timer, but we only need one */
+	if (IS_ENABLED(CONFIG_RISCV_TIMER) && !timer_dev.parent) {
+		timer_dev.id = DEVICE_ID_SINGLE;
+		timer_dev.device_node = parent->device_node;
+		timer_dev.parent = parent;
+		dev_set_name(&timer_dev, "riscv-timer");
+
+		ret = platform_device_register(&timer_dev);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct of_device_id riscv_dt_ids[] = {
+	{ .compatible = "riscv", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d riscv_driver = {
+	.name = "riscv",
+	.probe = riscv_probe,
+	.of_compatible = riscv_dt_ids,
+};
+postcore_platform_driver(riscv_driver);
diff --git a/arch/riscv/cpu/time.c b/arch/riscv/cpu/time.c
new file mode 100644
index 000000000000..39bb6a5112f7
--- /dev/null
+++ b/arch/riscv/cpu/time.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ * Copyright (C) 2017 SiFive
+ *
+ * All RISC-V systems have a timer attached to every hart.  These timers can
+ * either be read from the "time" and "timeh" CSRs, and can use the SBI to
+ * setup events, or directly accessed using MMIO registers.
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <errno.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+#include <asm/timer.h>
+
+unsigned long riscv_timebase;
+
+int timer_init(void)
+{
+	struct device_node *cpu;
+	u32 prop;
+
+	cpu = of_find_node_by_path("/cpus");
+	if (!cpu || of_property_read_u32(cpu, "timebase-frequency", &prop)) {
+		pr_err("RISC-V system with no 'timebase-frequency' in DTS\n");
+		return -ENOENT;
+	}
+
+	riscv_timebase = prop;
+
+	of_platform_populate(cpu, NULL, NULL);
+
+	return 0;
+}
diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
new file mode 100644
index 000000000000..1a15089cae95
--- /dev/null
+++ b/arch/riscv/include/asm/csr.h
@@ -0,0 +1,211 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2015 Regents of the University of California
+ *
+ * Taken from Linux arch/riscv/include/asm/csr.h
+ */
+
+#ifndef _ASM_RISCV_CSR_H
+#define _ASM_RISCV_CSR_H
+
+#include <asm/asm.h>
+#include <linux/const.h>
+
+/* Status register flags */
+#define SR_SIE		_AC(0x00000002, UL) /* Supervisor Interrupt Enable */
+#define SR_SPIE		_AC(0x00000020, UL) /* Previous Supervisor IE */
+#define SR_SPP		_AC(0x00000100, UL) /* Previously Supervisor */
+#ifdef CONFIG_RISCV_PRIV_1_9
+#define SR_PUM		_AC(0x00040000, UL) /* Protect User Memory Access */
+#else
+#define SR_SUM		_AC(0x00040000, UL) /* Supervisor User Memory Access */
+#endif
+
+#define SR_FS		_AC(0x00006000, UL) /* Floating-point Status */
+#define SR_FS_OFF	_AC(0x00000000, UL)
+#define SR_FS_INITIAL	_AC(0x00002000, UL)
+#define SR_FS_CLEAN	_AC(0x00004000, UL)
+#define SR_FS_DIRTY	_AC(0x00006000, UL)
+
+#define SR_XS		_AC(0x00018000, UL) /* Extension Status */
+#define SR_XS_OFF	_AC(0x00000000, UL)
+#define SR_XS_INITIAL	_AC(0x00008000, UL)
+#define SR_XS_CLEAN	_AC(0x00010000, UL)
+#define SR_XS_DIRTY	_AC(0x00018000, UL)
+
+#ifdef CONFIG_RISCV_PRIV_1_9
+#define SR_VM		_AC(0x1F000000, UL) /* Virtualization Management */
+#define SR_VM_MODE_BARE	_AC(0x00000000, UL) /* No translation or protection */
+#define SR_VM_MODE_BB	_AC(0x01000000, UL) /* Single base-and-bound */
+/* Separate instruction and data base-and-bound */
+#define SR_VM_MODE_BBID	_AC(0x02000000, UL)
+#ifndef CONFIG_64BIT
+#define SR_VM_MODE_32	_AC(0x08000000, UL)
+#define SR_VM_MODE	SR_VM_MODE_32
+#else
+#define SR_VM_MODE_39	_AC(0x09000000, UL)
+#define SR_VM_MODE_48	_AC(0x0A000000, UL)
+#define SR_VM_MODE	SR_VM_MODE_39
+#endif
+#endif
+
+#ifndef CONFIG_64BIT
+#define SR_SD		_AC(0x80000000, UL) /* FS/XS dirty */
+#else
+#define SR_SD		_AC(0x8000000000000000, UL) /* FS/XS dirty */
+#endif
+
+/* SATP flags */
+#ifndef CONFIG_RISCV_PRIV_1_9
+#ifndef CONFIG_64BIT
+#define SATP_PPN	_AC(0x003FFFFF, UL)
+#define SATP_MODE_32	_AC(0x80000000, UL)
+#define SATP_MODE	SATP_MODE_32
+#else
+#define SATP_PPN	_AC(0x00000FFFFFFFFFFF, UL)
+#define SATP_MODE_39	_AC(0x8000000000000000, UL)
+#define SATP_MODE	SATP_MODE_39
+#endif
+#endif
+
+/* SCAUSE */
+#define SCAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
+
+#define IRQ_U_SOFT		0
+#define IRQ_S_SOFT		1
+#define IRQ_M_SOFT		3
+#define IRQ_U_TIMER		4
+#define IRQ_S_TIMER		5
+#define IRQ_M_TIMER		7
+#define IRQ_U_EXT		8
+#define IRQ_S_EXT		9
+#define IRQ_M_EXT		11
+
+#define EXC_INST_MISALIGNED	0
+#define EXC_INST_ACCESS		1
+#define EXC_BREAKPOINT		3
+#define EXC_LOAD_ACCESS		5
+#define EXC_STORE_ACCESS	7
+#define EXC_SYSCALL		8
+#define EXC_INST_PAGE_FAULT	12
+#define EXC_LOAD_PAGE_FAULT	13
+#define EXC_STORE_PAGE_FAULT	15
+
+/* SIE (Interrupt Enable) and SIP (Interrupt Pending) flags */
+#define MIE_MSIE		(_AC(0x1, UL) << IRQ_M_SOFT)
+#define SIE_SSIE		(_AC(0x1, UL) << IRQ_S_SOFT)
+#define SIE_STIE		(_AC(0x1, UL) << IRQ_S_TIMER)
+#define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
+
+#define CSR_FCSR		0x003
+#define CSR_CYCLE		0xc00
+#define CSR_TIME		0xc01
+#define CSR_INSTRET		0xc02
+#define CSR_SSTATUS		0x100
+#define CSR_SIE			0x104
+#define CSR_STVEC		0x105
+#define CSR_SCOUNTEREN		0x106
+#define CSR_SSCRATCH		0x140
+#define CSR_SEPC		0x141
+#define CSR_SCAUSE		0x142
+#define CSR_STVAL		0x143
+#define CSR_SIP			0x144
+#ifdef CONFIG_RISCV_PRIV_1_9
+#define CSR_SPTBR		0x180
+#else
+#define CSR_SATP		0x180
+#endif
+#define CSR_MSTATUS		0x300
+#define CSR_MISA		0x301
+#define CSR_MIE			0x304
+#define CSR_MTVEC		0x305
+#ifdef CONFIG_RISCV_PRIV_1_9
+#define CSR_MUCOUNTEREN         0x320
+#define CSR_MSCOUNTEREN         0x321
+#define CSR_MHCOUNTEREN         0x322
+#else
+#define CSR_MCOUNTEREN		0x306
+#endif
+#define CSR_MSCRATCH		0x340
+#define CSR_MEPC		0x341
+#define CSR_MCAUSE		0x342
+#define CSR_MTVAL		0x343
+#define CSR_MIP			0x344
+#ifdef CONFIG_RISCV_PRIV_1_9
+#define CSR_MBASE		0x380
+#define CSR_MBOUND		0x381
+#define CSR_MIBASE		0x382
+#define CSR_MIBOUND		0x383
+#define CSR_MDBASE		0x384
+#define CSR_MDBOUND		0x385
+#endif
+#define CSR_CYCLEH		0xc80
+#define CSR_TIMEH		0xc81
+#define CSR_INSTRETH		0xc82
+#define CSR_MHARTID		0xf14
+
+#ifndef __ASSEMBLY__
+
+#define csr_swap(csr, val)					\
+({								\
+	unsigned long __v = (unsigned long)(val);		\
+	__asm__ __volatile__ ("csrrw %0, " __ASM_STR(csr) ", %1"\
+			      : "=r" (__v) : "rK" (__v)		\
+			      : "memory");			\
+	__v;							\
+})
+
+#define csr_read(csr)						\
+({								\
+	register unsigned long __v;				\
+	__asm__ __volatile__ ("csrr %0, " __ASM_STR(csr)	\
+			      : "=r" (__v) :			\
+			      : "memory");			\
+	__v;							\
+})
+
+#define csr_write(csr, val)					\
+({								\
+	unsigned long __v = (unsigned long)(val);		\
+	__asm__ __volatile__ ("csrw " __ASM_STR(csr) ", %0"	\
+			      : : "rK" (__v)			\
+			      : "memory");			\
+})
+
+#define csr_read_set(csr, val)					\
+({								\
+	unsigned long __v = (unsigned long)(val);		\
+	__asm__ __volatile__ ("csrrs %0, " __ASM_STR(csr) ", %1"\
+			      : "=r" (__v) : "rK" (__v)		\
+			      : "memory");			\
+	__v;							\
+})
+
+#define csr_set(csr, val)					\
+({								\
+	unsigned long __v = (unsigned long)(val);		\
+	__asm__ __volatile__ ("csrs " __ASM_STR(csr) ", %0"	\
+			      : : "rK" (__v)			\
+			      : "memory");			\
+})
+
+#define csr_read_clear(csr, val)				\
+({								\
+	unsigned long __v = (unsigned long)(val);		\
+	__asm__ __volatile__ ("csrrc %0, " __ASM_STR(csr) ", %1"\
+			      : "=r" (__v) : "rK" (__v)		\
+			      : "memory");			\
+	__v;							\
+})
+
+#define csr_clear(csr, val)					\
+({								\
+	unsigned long __v = (unsigned long)(val);		\
+	__asm__ __volatile__ ("csrc " __ASM_STR(csr) ", %0"	\
+			      : : "rK" (__v)			\
+			      : "memory");			\
+})
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ASM_RISCV_CSR_H */
diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
new file mode 100644
index 000000000000..99895d9c3bdd
--- /dev/null
+++ b/arch/riscv/include/asm/sbi.h
@@ -0,0 +1,153 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2015 Regents of the University of California
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#ifndef _ASM_RISCV_SBI_H
+#define _ASM_RISCV_SBI_H
+
+#include <linux/types.h>
+
+#ifdef CONFIG_RISCV_SBI
+enum sbi_ext_id {
+#ifdef CONFIG_RISCV_SBI_V01
+	SBI_EXT_0_1_SET_TIMER = 0x0,
+	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
+	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
+	SBI_EXT_0_1_CLEAR_IPI = 0x3,
+	SBI_EXT_0_1_SEND_IPI = 0x4,
+	SBI_EXT_0_1_REMOTE_FENCE_I = 0x5,
+	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
+	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
+	SBI_EXT_0_1_SHUTDOWN = 0x8,
+#endif
+	SBI_EXT_BASE = 0x10,
+	SBI_EXT_TIME = 0x54494D45,
+	SBI_EXT_IPI = 0x735049,
+	SBI_EXT_RFENCE = 0x52464E43,
+	SBI_EXT_HSM = 0x48534D,
+};
+
+enum sbi_ext_base_fid {
+	SBI_EXT_BASE_GET_SPEC_VERSION = 0,
+	SBI_EXT_BASE_GET_IMP_ID,
+	SBI_EXT_BASE_GET_IMP_VERSION,
+	SBI_EXT_BASE_PROBE_EXT,
+	SBI_EXT_BASE_GET_MVENDORID,
+	SBI_EXT_BASE_GET_MARCHID,
+	SBI_EXT_BASE_GET_MIMPID,
+};
+
+enum sbi_ext_time_fid {
+	SBI_EXT_TIME_SET_TIMER = 0,
+};
+
+enum sbi_ext_ipi_fid {
+	SBI_EXT_IPI_SEND_IPI = 0,
+};
+
+enum sbi_ext_rfence_fid {
+	SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
+	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
+	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+};
+
+enum sbi_ext_hsm_fid {
+	SBI_EXT_HSM_HART_START = 0,
+	SBI_EXT_HSM_HART_STOP,
+	SBI_EXT_HSM_HART_STATUS,
+};
+
+enum sbi_hsm_hart_status {
+	SBI_HSM_HART_STATUS_STARTED = 0,
+	SBI_HSM_HART_STATUS_STOPPED,
+	SBI_HSM_HART_STATUS_START_PENDING,
+	SBI_HSM_HART_STATUS_STOP_PENDING,
+};
+
+#define SBI_SPEC_VERSION_DEFAULT	0x1
+#define SBI_SPEC_VERSION_MAJOR_SHIFT	24
+#define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
+#define SBI_SPEC_VERSION_MINOR_MASK	0xffffff
+
+/* SBI return error codes */
+#define SBI_SUCCESS		0
+#define SBI_ERR_FAILURE		-1
+#define SBI_ERR_NOT_SUPPORTED	-2
+#define SBI_ERR_INVALID_PARAM	-3
+#define SBI_ERR_DENIED		-4
+#define SBI_ERR_INVALID_ADDRESS	-5
+
+extern unsigned long sbi_spec_version;
+struct sbiret {
+	long error;
+	long value;
+};
+
+void sbi_init(void);
+struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
+			unsigned long arg1, unsigned long arg2,
+			unsigned long arg3, unsigned long arg4,
+			unsigned long arg5);
+
+void sbi_console_putchar(int ch);
+int sbi_console_getchar(void);
+void sbi_set_timer(uint64_t stime_value);
+void sbi_shutdown(void);
+void sbi_clear_ipi(void);
+int sbi_send_ipi(const unsigned long *hart_mask);
+int sbi_remote_fence_i(const unsigned long *hart_mask);
+int sbi_remote_sfence_vma(const unsigned long *hart_mask,
+			   unsigned long start,
+			   unsigned long size);
+
+int sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
+				unsigned long start,
+				unsigned long size,
+				unsigned long asid);
+int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
+			   unsigned long start,
+			   unsigned long size);
+int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
+				unsigned long start,
+				unsigned long size,
+				unsigned long vmid);
+int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
+			   unsigned long start,
+			   unsigned long size);
+int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
+				unsigned long start,
+				unsigned long size,
+				unsigned long asid);
+int sbi_probe_extension(int ext);
+
+/* Check if current SBI specification version is 0.1 or not */
+static inline int sbi_spec_is_0_1(void)
+{
+	return (sbi_spec_version == SBI_SPEC_VERSION_DEFAULT) ? 1 : 0;
+}
+
+/* Get the major version of SBI */
+static inline unsigned long sbi_major_version(void)
+{
+	return (sbi_spec_version >> SBI_SPEC_VERSION_MAJOR_SHIFT) &
+		SBI_SPEC_VERSION_MAJOR_MASK;
+}
+
+/* Get the minor version of SBI */
+static inline unsigned long sbi_minor_version(void)
+{
+	return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
+}
+
+int sbi_err_map_linux_errno(int err);
+#else /* CONFIG_RISCV_SBI */
+static inline int sbi_remote_fence_i(const unsigned long *hart_mask) { return -1; }
+static inline void sbi_init(void) {}
+#endif /* CONFIG_RISCV_SBI */
+#endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/include/asm/timer.h b/arch/riscv/include/asm/timer.h
new file mode 100644
index 000000000000..1f78ef4c0099
--- /dev/null
+++ b/arch/riscv/include/asm/timer.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_RISCV_DELAY_H
+#define _ASM_RISCV_DELAY_H
+
+int timer_init(void);
+extern unsigned long riscv_timebase;
+
+#endif /* _ASM_RISCV_DELAY_H */
diff --git a/arch/riscv/lib/dtb.c b/arch/riscv/lib/dtb.c
index c7fa6b0c31ca..8c2f5b251883 100644
--- a/arch/riscv/lib/dtb.c
+++ b/arch/riscv/lib/dtb.c
@@ -4,6 +4,7 @@
 #include <init.h>
 #include <of.h>
 #include <asm/barebox-riscv.h>
+#include <asm/timer.h>
 
 static int of_riscv_init(void)
 {
@@ -21,6 +22,9 @@ static int of_riscv_init(void)
 
 	barebox_register_fdt(fdt);
 
+	/* do it now, before clocksource drivers run postcore */
+	timer_init();
+
 	return 0;
 }
 core_initcall(of_riscv_init);
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 6dfe6151ac98..2d8f5113ad8d 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -99,4 +99,19 @@ config CLOCKSOURCE_TI_DM
 config CLOCKSOURCE_TI_32K
 	bool
 
+config RISCV_TIMER
+	bool "Timer for the RISC-V platform" if COMPILE_TEST
+	depends on RISCV && RISCV_SBI
+	help
+	  This enables the per-hart timer built into all RISC-V systems, which
+	  is accessed via both the SBI and the rdcycle instruction.  This is
+	  required for all RISC-V systems.
+
+config CLINT_TIMER
+	bool "CLINT Timer for the RISC-V platform" if COMPILE_TEST
+	depends on OFDEVICE
+	help
+	  This option enables the CLINT timer for RISC-V systems.  The CLINT
+	  driver is usually used for NoMMU RISC-V systems.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index b4607f787fcf..e3d243eb9423 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -21,3 +21,5 @@ obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
 obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
 obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
 obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
+obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
+obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
new file mode 100644
index 000000000000..b7360010bdb6
--- /dev/null
+++ b/drivers/clocksource/timer-clint.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ *
+ * Most of the M-mode (i.e. NoMMU) RISC-V systems usually have a
+ * CLINT MMIO timer device.
+ */
+
+#define pr_fmt(fmt) "clint: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <errno.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+#include <asm/timer.h>
+
+#define CLINT_TIMER_VAL_OFF	0xbff8
+
+#ifdef CONFIG_64BIT
+#define clint_get_cycles()	readq(clint_timer_val)
+#else
+#define clint_get_cycles()	readl(clint_timer_val)
+#define clint_get_cycles_hi()	readl(((u32 *)clint_timer_val) + 1)
+#endif
+
+static void __iomem *clint_timer_val;
+
+#ifdef CONFIG_64BIT
+static u64 notrace clint_get_cycles64(void)
+{
+	return clint_get_cycles();
+}
+#else /* CONFIG_64BIT */
+static u64 notrace clint_get_cycles64(void)
+{
+	u32 hi, lo;
+
+	do {
+		hi = clint_get_cycles_hi();
+		lo = clint_get_cycles();
+	} while (hi != clint_get_cycles_hi());
+
+	return ((u64)hi << 32) | lo;
+}
+#endif /* CONFIG_64BIT */
+
+static u64 clint_rdtime(void)
+{
+	return clint_get_cycles64();
+}
+
+static struct clocksource clint_clocksource = {
+	.read		= clint_rdtime,
+	.mask		= CLOCKSOURCE_MASK(64),
+	.priority	= 200,
+};
+
+static int clint_timer_init_dt(struct device_d* dev)
+{
+	struct resource *iores;
+
+	/* one timer is enough */
+	if (clint_timer_val)
+		return 0;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	clint_timer_val = IOMEM(iores->start) + CLINT_TIMER_VAL_OFF;
+
+	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
+
+	clint_clocksource.mult = clocksource_hz2mult(riscv_timebase, clint_clocksource.shift);
+
+	return init_clock(&clint_clocksource);
+}
+
+static struct of_device_id timer_clint_dt_ids[] = {
+	{ .compatible = "riscv,clint0", },
+	{ .compatible = "sifive,clint0" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d clint_timer_driver = {
+	.name = "clint-timer",
+	.probe = clint_timer_init_dt,
+	.of_compatible = timer_clint_dt_ids,
+};
+postcore_platform_driver(clint_timer_driver);
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
new file mode 100644
index 000000000000..637285fd78a7
--- /dev/null
+++ b/drivers/clocksource/timer-riscv.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ * Copyright (C) 2017 SiFive
+ *
+ * All RISC-V systems have a timer attached to every hart.  These timers can
+ * either be read from the "time" and "timeh" CSRs, and can use the SBI to
+ * setup events, or directly accessed using MMIO registers.
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/timer.h>
+#include <asm/csr.h>
+
+static u64 notrace riscv_timer_get_count(void)
+{
+	__maybe_unused u32 hi, lo;
+
+	if (IS_ENABLED(CONFIG_64BIT))
+		return csr_read(CSR_TIME);
+
+	do {
+		hi = csr_read(CSR_TIMEH);
+		lo = csr_read(CSR_TIME);
+	} while (hi != csr_read(CSR_TIMEH));
+
+	return ((u64)hi << 32) | lo;
+}
+
+static struct clocksource riscv_clocksource = {
+	.read		= riscv_timer_get_count,
+	.mask		= CLOCKSOURCE_MASK(64),
+	.priority	= 100,
+};
+
+static int riscv_timer_init(struct device_d* dev)
+{
+	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
+
+	riscv_clocksource.mult = clocksource_hz2mult(riscv_timebase, riscv_clocksource.shift);
+
+	return init_clock(&riscv_clocksource);
+}
+
+static struct driver_d riscv_timer_driver = {
+	.name = "riscv-timer",
+	.probe = riscv_timer_init,
+};
+postcore_platform_driver(riscv_timer_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

