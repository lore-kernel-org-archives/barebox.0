Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cb1Pa-0004i6-PW
 for barebox@lists.infradead.org; Tue, 07 Feb 2017 08:46:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Feb 2017 09:43:26 +0100
Message-Id: <20170207084327.7691-4-s.hauer@pengutronix.de>
In-Reply-To: <20170207084327.7691-1-s.hauer@pengutronix.de>
References: <20170207084327.7691-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: Add PSCI support
To: Barebox List <barebox@lists.infradead.org>

This patch contains the barebox implementation for the ARM
"Power State Coordination Interface" (PSCI).

The interface is aimed at the generalization of code in the following
power management scenarios:
* Core idle management.
* Dynamic addition and removal of cores, and secondary core boot.
* big.LITTLE migration.
* System shutdown and reset.

In practice, all that's currently implemented is a way to enable the
secondary core one some SoCs.

With PSCI the Kernel is either started in nonsecure or in Hypervisor
mode and PSCI is used to apply power to the secondary cores.

The start mode is passed in the global.bootm.secure_state variable. This
enum can contain "secure" (Kernel is started in secure mode, means no
PSCI), "nonsecure" (Kernel is started in nonsecure mode, PSCI available)
or "hyp" (Kernel is started in hyp mode, meaning it can support
virtualization).

We currently only support putting the secure monitor code into SDRAM,
which means we always steal some amount of memory from the Kernel.
To keep things simple for now we simply keep the whole barebox binary in
memory

The PSCI support has been tested on i.MX7 only so far. The only
supported operations are CPU_ON and CPU_OFF.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                |  23 ++++
 arch/arm/cpu/Makefile           |   1 +
 arch/arm/cpu/psci.c             | 298 ++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/sm.c               | 266 +++++++++++++++++++++++++++++++++++
 arch/arm/cpu/sm_as.S            | 168 ++++++++++++++++++++++
 arch/arm/include/asm/armlinux.h |   4 +-
 arch/arm/include/asm/gic.h      | 110 +++++++++++++++
 arch/arm/include/asm/psci.h     | 140 +++++++++++++++++++
 arch/arm/include/asm/ptrace.h   |   1 +
 arch/arm/include/asm/secure.h   |  39 ++++++
 arch/arm/lib/bootm.c            |  14 +-
 arch/arm/lib32/armlinux.c       |  15 +-
 arch/arm/lib32/barebox.lds.S    |  10 ++
 arch/arm/mach-imx/imx7.c        |   1 +
 14 files changed, 1087 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/cpu/psci.c
 create mode 100644 arch/arm/cpu/sm.c
 create mode 100644 arch/arm/cpu/sm_as.S
 create mode 100644 arch/arm/include/asm/gic.h
 create mode 100644 arch/arm/include/asm/psci.h
 create mode 100644 arch/arm/include/asm/secure.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3e8ccf766..e4663ea26 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -383,6 +383,29 @@ config ARM_SEMIHOSTING
 	  the data on the host computer connected to the target via
 	  debugging channel (JTAG, SWD). If unsure say N
 
+config ARM_SECURE_MONITOR
+	bool
+
+config ARM_PSCI
+	bool "enable Power State Coordination Interface (PSCI) support"
+	depends on CPU_V7
+	select ARM_SECURE_MONITOR
+	help
+	  PSCI is used for controlling secondary CPU cores on some systems. Say
+	  yes here if you have one of these.
+
+config ARM_PSCI_DEBUG
+	bool "Enable PSCI debugging"
+	depends on ARM_PSCI
+	help
+	  This enables debug output from the PSCI functions during runtime of the
+	  Kernel. This needs board specific help, the board needs to provide a putc
+	  function using psci_set_putc(). This putc function will then be called
+	  during runtime of the Kernel, so it must be able to cope with that. It may
+	  happen for example that the Kernel has turned off some clocks needed in the
+	  putc function.
+	  Only use for debugging.
+
 endmenu
 
 source common/Kconfig
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index e542f1741..6e4043915 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -35,6 +35,7 @@ obj-y += no-mmu.o
 endif
 
 obj-$(CONFIG_ARM_SECURE_MONITOR) += smccc-call.o
+obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
 
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
new file mode 100644
index 000000000..745b8495e
--- /dev/null
+++ b/arch/arm/cpu/psci.c
@@ -0,0 +1,298 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#define pr_fmt(fmt)  "psci: " fmt
+
+#include <common.h>
+#include <asm/psci.h>
+#include <asm/arm-smccc.h>
+#include <asm/secure.h>
+#include <asm/system.h>
+#include <restart.h>
+#include <globalvar.h>
+#include <init.h>
+#include <magicvar.h>
+
+#ifdef CONFIG_ARM_PSCI_DEBUG
+static void (*__putc)(void *ctx, int c);
+static void *putc_ctx;
+
+void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
+{
+        __putc = putcf;
+        putc_ctx = ctx;
+}
+
+void psci_putc(char c)
+{
+	if (__putc)
+		__putc(putc_ctx, c);
+}
+
+int psci_puts(const char *str)
+{
+	int n = 0;
+
+	while (*str) {
+		if (*str == '\n')
+			psci_putc('\r');
+
+		psci_putc(*str);
+		str++;
+		n++;
+	}
+
+	return n;
+}
+
+int psci_printf(const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[128];
+
+	va_start(args, fmt);
+	i = vsprintf(printbuffer, fmt, args);
+	va_end(args);
+
+	psci_puts(printbuffer);
+
+        return i;
+}
+#endif
+
+static struct psci_ops *psci_ops;
+
+void psci_set_ops(struct psci_ops *ops)
+{
+	psci_ops = ops;
+}
+
+static unsigned long psci_version(void)
+{
+	psci_printf("%s\n", __func__);
+	return ARM_PSCI_VER_1_0;
+}
+
+static unsigned long psci_cpu_suspend(u32 power_state, unsigned long entry,
+				      u32 context_id)
+{
+	psci_printf("%s\n", __func__);
+
+	if (psci_ops->cpu_off)
+		return psci_ops->cpu_suspend(power_state, entry, context_id);
+
+	return ARM_PSCI_RET_NOT_SUPPORTED;
+}
+
+static unsigned long psci_cpu_off(void)
+{
+	psci_printf("%s\n", __func__);
+
+	if (psci_ops->cpu_off)
+		return psci_ops->cpu_off();
+
+	return ARM_PSCI_RET_NOT_SUPPORTED;
+}
+
+static unsigned long cpu_entry[ARM_SECURE_MAX_CPU];
+static unsigned long context[ARM_SECURE_MAX_CPU];
+
+static unsigned long psci_cpu_on(u32 cpu_id, unsigned long entry, u32 context_id)
+{
+	psci_printf("%s: %d 0x%08lx\n", __func__, cpu_id, entry);
+
+	if (cpu_id >= ARM_SECURE_MAX_CPU)
+		return ARM_PSCI_RET_INVAL;
+
+	cpu_entry[cpu_id] = entry;
+	context[cpu_id] = context_id;
+	dsb();
+
+	if (psci_ops->cpu_on)
+		return psci_ops->cpu_on(cpu_id);
+
+	return ARM_PSCI_RET_NOT_SUPPORTED;
+}
+
+static unsigned long psci_system_off(void)
+{
+	psci_printf("%s\n", __func__);
+
+	if (psci_ops->system_reset)
+		psci_ops->system_reset();
+
+	while(1);
+
+	return 0;
+}
+
+static unsigned long psci_system_reset(void)
+{
+	psci_printf("%s\n", __func__);
+
+	if (psci_ops->system_reset)
+		psci_ops->system_reset();
+
+	restart_machine();
+}
+
+void psci_entry(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 r5, u32 r6,
+		struct arm_smccc_res *res)
+{
+	int mmuon;
+	unsigned long ttb;
+
+	mmuon = get_cr() & CR_M;
+	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
+
+	psci_printf("%s entry, function: 0x%08x\n", __func__, r0);
+
+	switch (r0) {
+	case ARM_PSCI_0_2_FN_PSCI_VERSION:
+		res->a0 = psci_version();
+		break;
+	case ARM_PSCI_0_2_FN_CPU_SUSPEND:
+		res->a0 = psci_cpu_suspend(r1, r2, r3);
+		break;
+	case ARM_PSCI_0_2_FN_CPU_OFF:
+		res->a0 = psci_cpu_off();
+		break;
+	case ARM_PSCI_0_2_FN_CPU_ON:
+		res->a0 = psci_cpu_on(r1, r2, r3);
+		break;
+	case ARM_PSCI_0_2_FN_SYSTEM_OFF:
+		psci_system_off();
+		break;
+	case ARM_PSCI_0_2_FN_SYSTEM_RESET:
+		psci_system_reset();
+		break;
+	default:
+		res->a0 = ARM_PSCI_RET_NOT_SUPPORTED;
+		break;
+	}
+}
+
+static int of_psci_fixup(struct device_node *root, void *unused)
+{
+	struct device_node *psci;
+	int ret;
+
+	if (bootm_arm_security_state() < ARM_STATE_NONSECURE)
+		return 0;
+
+	psci = of_create_node(root, "/psci");
+	if (!psci)
+		return -EINVAL;
+
+	ret = of_set_property(psci, "compatible", "arm,psci-1.0",
+			strlen("arm,psci-1.0") + 1, 1);
+	if (ret)
+		return ret;
+
+	ret = of_set_property(psci, "method", "smc",
+			strlen("smc") + 1, 1);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+int psci_cpu_entry_c(void)
+{
+	void (*entry)(u32 context);
+	int cpu;
+	u32 context_id;
+
+	__armv7_secure_monitor_install();
+	cpu = psci_get_cpu_id();
+	entry = (void *)cpu_entry[cpu];
+	context_id = context[cpu];
+
+	if (bootm_arm_security_state() == ARM_STATE_HYP)
+		armv7_switch_to_hyp();
+
+	entry(context_id);
+
+	while (1);
+}
+
+static int armv7_psci_init(void)
+{
+	return of_register_fixup(of_psci_fixup, NULL);
+}
+device_initcall(armv7_psci_init);
+
+#ifdef DEBUG
+
+#include <command.h>
+#include <getopt.h>
+#include "mmu.h"
+
+void second_entry(void)
+{
+	struct arm_smccc_res res;
+
+	psci_printf("2nd CPU online, now turn off again\n");
+
+	arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_OFF,
+		      0, 0, 0, 0, 0, 0, 0, &res);
+
+	psci_printf("2nd CPU still alive?\n");
+
+	while (1);
+}
+
+static int do_smc(int argc, char *argv[])
+{
+	int opt;
+	struct arm_smccc_res res = {
+		.a0 = 0xdeadbee0,
+		.a1 = 0xdeadbee1,
+		.a2 = 0xdeadbee2,
+		.a3 = 0xdeadbee3,
+	};
+
+	while ((opt = getopt(argc, argv, "nicz")) > 0) {
+		switch (opt) {
+		case 'n':
+			armv7_secure_monitor_install();
+			break;
+		case 'i':
+			arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION,
+				      0, 0, 0, 0, 0, 0, 0, &res);
+			printf("found psci version %ld.%ld\n", res.a0 >> 16, res.a0 & 0xffff);
+			break;
+		case 'c':
+			arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_ON,
+				      1, (unsigned long)second_entry, 0, 0, 0, 0, 0, &res);
+			break;
+		}
+	}
+
+
+	return 0;
+}
+BAREBOX_CMD_HELP_START(smc)
+BAREBOX_CMD_HELP_TEXT("Secure monitor code test command")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n",  "Install secure monitor and switch to nonsecure mode")
+BAREBOX_CMD_HELP_OPT ("-i",  "Show information about installed PSCI version")
+BAREBOX_CMD_HELP_OPT ("-c",  "Start secondary CPU core")
+BAREBOX_CMD_HELP_OPT ("-z",  "Turn off secondary CPU core")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(smc)
+        .cmd            = do_smc,
+        BAREBOX_CMD_DESC("secure monitor test command")
+BAREBOX_CMD_END
+#endif
\ No newline at end of file
diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
new file mode 100644
index 000000000..5808dfd92
--- /dev/null
+++ b/arch/arm/cpu/sm.c
@@ -0,0 +1,266 @@
+/*
+ * (C) Copyright 2013
+ * Andre Przywara, Linaro <andre.przywara@linaro.org>
+ *
+ * Routines to transition ARMv7 processors from secure into non-secure state
+ * and from non-secure SVC into HYP mode
+ * needed to enable ARMv7 virtualization for current hypervisors
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+#define pr_fmt(fmt) "secure: " fmt
+
+#include <common.h>
+#include <io.h>
+#include <asm/gic.h>
+#include <asm/system.h>
+#include <init.h>
+#include <globalvar.h>
+#include <asm/arm-smccc.h>
+#include <asm-generic/sections.h>
+#include <asm/secure.h>
+
+#include "mmu.h"
+
+/* valid bits in CBAR register / PERIPHBASE value */
+#define CBAR_MASK			0xFFFF8000
+
+static unsigned int read_id_pfr1(void)
+{
+	unsigned int reg;
+
+	asm("mrc p15, 0, %0, c0, c1, 1\n" : "=r"(reg));
+	return reg;
+}
+
+static u32 read_nsacr(void)
+{
+	unsigned int reg;
+
+	asm("mrc p15, 0, %0, c1, c1, 2\n" : "=r"(reg));
+	return reg;
+}
+
+static void write_nsacr(u32 val)
+{
+	asm("mcr p15, 0, %0, c1, c1, 2" : : "r"(val));
+}
+
+static void write_mvbar(u32 val)
+{
+	asm("mcr p15, 0, %0, c12, c0, 1" : : "r"(val));
+}
+
+static unsigned long get_cbar(void)
+{
+	unsigned periphbase;
+
+	/* get the GIC base address from the CBAR register */
+	asm("mrc p15, 4, %0, c15, c0, 0\n" : "=r" (periphbase));
+
+	/* the PERIPHBASE can be mapped above 4 GB (lower 8 bits used to
+	 * encode this). Bail out here since we cannot access this without
+	 * enabling paging.
+	 */
+	if ((periphbase & 0xff) != 0) {
+		pr_err("PERIPHBASE is above 4 GB, no access.\n");
+		return -1;
+	}
+
+	return periphbase & CBAR_MASK;
+}
+
+static unsigned long get_gicd_base_address(void)
+{
+	return get_cbar() + GIC_DIST_OFFSET;
+}
+
+static int cpu_is_virt_capable(void)
+{
+	return read_id_pfr1() & (1 << 12);
+}
+
+static unsigned long get_gicc_base_address(void)
+{
+	unsigned long adr = get_cbar();
+
+	if (cpu_is_virt_capable())
+		adr += GIC_CPU_OFFSET_A15;
+	else
+		adr += GIC_CPU_OFFSET_A9;
+
+	return adr;
+}
+
+#define GICD_IGROUPRn             0x0080
+
+int armv7_init_nonsec(void)
+{
+	void __iomem *gicd = IOMEM(get_gicd_base_address());
+	unsigned itlinesnr, i;
+	u32 val;
+
+	/*
+	 * the SCR register will be set directly in the monitor mode handler,
+	 * according to the spec one should not tinker with it in secure state
+	 * in SVC mode. Do not try to read it once in non-secure state,
+	 * any access to it will trap.
+	 */
+
+	/* enable the GIC distributor */
+	val = readl(gicd + GICD_CTLR);
+	val |= 0x3;
+	writel(val, gicd + GICD_CTLR);
+
+	/* TYPER[4:0] contains an encoded number of available interrupts */
+	itlinesnr = readl(gicd + GICD_TYPER) & 0x1f;
+
+	/*
+	 * Set all bits in the GIC group registers to one to allow access
+	 * from non-secure state. The first 32 interrupts are private per
+	 * CPU and will be set later when enabling the GIC for each core
+	 */
+	for (i = 1; i <= itlinesnr; i++)
+		writel(0xffffffff, gicd + GICD_IGROUPRn + 4 * i);
+
+	return 0;
+}
+
+/*
+ * armv7_secure_monitor_install - install secure monitor
+ *
+ * This function is entered in secure mode. It installs the secure
+ * monitor code and enters it using a smc call. This function is executed
+ * on every CPU. We leave this function returns in nonsecure mode.
+ */
+int __armv7_secure_monitor_install(void)
+{
+	struct arm_smccc_res res;
+	void __iomem *gicd = IOMEM(get_gicd_base_address());
+	void __iomem *gicc = IOMEM(get_gicc_base_address());
+	u32 nsacr;
+
+	writel(0xffffffff, gicd + GICD_IGROUPRn);
+
+	writel(0x3, gicc + GICC_CTLR);
+	writel(0xff, gicc + GICC_PMR);
+
+	nsacr = read_nsacr();
+	nsacr |= 0x00043fff; /* all copros allowed in non-secure mode */
+	write_nsacr(nsacr);
+
+	write_mvbar((unsigned long)secure_monitor_init_vectors);
+
+	isb();
+
+	/* Initialize the secure monitor */
+	arm_smccc_smc(0, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	/* We're in nonsecure mode now */
+
+	return 0;
+}
+
+static bool armv7_have_security_extensions(void)
+{
+	return (read_id_pfr1() & 0xf0) != 0;
+}
+
+/*
+ * armv7_secure_monitor_install - install secure monitor
+ *
+ * This function is entered in secure mode. It installs the secure
+ * monitor code and enters it using a smc call. This function is executed
+ * once on the primary CPU only. We leave this function returns in nonsecure
+ * mode.
+ */
+int armv7_secure_monitor_install(void)
+{
+	int mmuon;
+	unsigned long ttb, vbar;
+
+	if (!armv7_have_security_extensions()) {
+		pr_err("Security extensions not implemented.\n");
+		return -EINVAL;
+	}
+
+	mmuon = get_cr() & CR_M;
+
+	vbar = get_vbar();
+
+	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
+
+	armv7_init_nonsec();
+	__armv7_secure_monitor_install();
+
+	asm volatile ("mcr p15, 0, %0, c2, c0, 0" : : "r"(ttb));
+
+	set_vbar(vbar);
+
+	if (mmuon) {
+		/*
+		 * If the MMU was already turned on in secure mode, enable it in
+		 * non-secure mode aswell
+		 */
+		__mmu_cache_on();
+	}
+
+	pr_debug("Initialized secure monitor\n");
+
+	return 0;
+}
+
+/*
+ * of_secure_monitor_fixup - reserve memory region for secure monitor
+ *
+ * We currently do not support putting the secure monitor into onchip RAM,
+ * hence it runs in SDRAM and we must reserve the memory region so that we
+ * won't get overwritten from the Kernel.
+ * Beware: despite the name this is not secure in any way. The Kernel obeys
+ * the reserve map, but only because it's nice. It could always overwrite the
+ * secure monitor and hijack secure mode.
+ */
+static int of_secure_monitor_fixup(struct device_node *root, void *unused)
+{
+	unsigned long res_start, res_end;
+
+	res_start = (unsigned long)_stext;
+	res_end = (unsigned long)__bss_stop;
+
+	of_add_reserve_entry(res_start, res_end);
+
+	pr_debug("Reserved memory range from 0x%08lx to 0x%08lx\n", res_start, res_end);
+
+	return 0;
+}
+
+static enum arm_security_state bootm_secure_state;
+
+static const char * const bootm_secure_state_names[] = {
+	[ARM_STATE_SECURE] = "secure",
+	[ARM_STATE_NONSECURE] = "nonsecure",
+	[ARM_STATE_HYP] = "hyp",
+};
+
+enum arm_security_state bootm_arm_security_state(void)
+{
+	return bootm_secure_state;
+}
+
+const char *bootm_arm_security_state_name(enum arm_security_state state)
+{
+	return bootm_secure_state_names[state];
+}
+
+static int sm_init(void)
+{
+	of_register_fixup(of_secure_monitor_fixup, NULL);
+
+	globalvar_add_simple_enum("bootm.secure_state",
+				  (unsigned int *)&bootm_secure_state,
+				  bootm_secure_state_names,
+				  ARRAY_SIZE(bootm_secure_state_names));
+
+	return 0;
+}
+device_initcall(sm_init);
\ No newline at end of file
diff --git a/arch/arm/cpu/sm_as.S b/arch/arm/cpu/sm_as.S
new file mode 100644
index 000000000..09580e75d
--- /dev/null
+++ b/arch/arm/cpu/sm_as.S
@@ -0,0 +1,168 @@
+#include <linux/linkage.h>
+#include <asm/ptrace.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/secure.h>
+#include <asm/system.h>
+
+.arch_extension sec
+.arch_extension virt
+
+	.section ".text","ax"
+	.arm
+
+	.align	5
+.globl secure_monitor_init_vectors
+secure_monitor_init_vectors:
+1:	b 1b			/* reset */
+1:	b 1b			/* undefined instruction */
+	b secure_monitor_init	/* software interrupt (SWI) */
+1:	b 1b			/* prefetch abort */
+1:	b 1b			/* data abort */
+1:	b 1b			/* (reserved) */
+1:	b 1b			/* irq (interrupt) */
+1:	b 1b			/* fiq (fast interrupt) */
+
+#define CPUID_ARM_GENTIMER_MASK		(0xF << CPUID_ARM_GENTIMER_SHIFT)
+#define CPUID_ARM_GENTIMER_SHIFT	16
+
+#define CPUID_ARM_VIRT_MASK		(0xF << CPUID_ARM_VIRT_SHIFT)
+#define CPUID_ARM_VIRT_SHIFT		12
+
+.macro is_cpu_virt_capable	tmp
+	mrc	p15, 0, \tmp, c0, c1, 1		@ read ID_PFR1
+	and	\tmp, \tmp, #CPUID_ARM_VIRT_MASK	@ mask virtualization bits
+	cmp	\tmp, #(1 << CPUID_ARM_VIRT_SHIFT)
+.endm
+
+@ Requires dense and single-cluster CPU ID space
+ENTRY(psci_get_cpu_id)
+	mrc	p15, 0, r0, c0, c0, 5   /* read MPIDR */
+	and	r0, r0, #0xff           /* return CPU ID in cluster */
+	bx	lr
+ENDPROC(psci_get_cpu_id)
+
+ENTRY(secure_monitor_stack_setup)
+	mrc	p15, 0, r0, c0, c0, 5   /* read MPIDR */
+	and	r0, r0, #0xff           /* CPU ID => r0 */
+
+	@ stack top = __secure_stack_end - (cpuid << ARM_PSCI_STACK_SHIFT)
+	ldr	r1, =__secure_stack_end
+	sub	r0, r1, r0, LSL #ARM_SECURE_STACK_SHIFT
+	sub	r0, r0, #4              @ Save space for target PC
+
+	mov	sp, r0
+	bx	lr
+ENDPROC(secure_monitor_stack_setup)
+
+secure_monitor_init:
+	mov	r3, lr
+
+	bl	secure_monitor_stack_setup
+
+	push	{r4-r7}
+	mov	r7, r3
+	ldr	r5, =secure_monitor_vectors	@ Switch MVBAR to secure_monitor_vectors
+	mcr	p15, 0, r5, c12, c0, 1
+	isb
+
+#ifdef CONFIG_MMU
+	mrc	p15, 0, r5, c1, c0, 0
+	tst	r5, #CR_M
+	beq	1f
+	bl	__mmu_cache_off
+1:
+#endif
+	mrc	p15, 0, r5, c1, c1, 0		@ read SCR
+	bic	r5, r5, #0x4a			@ clear IRQ, EA, nET bits
+	orr	r5, r5, #0x31			@ enable NS, AW, FW bits
+						@ FIQ preserved for secure mode
+	mov	r6, #SVC_MODE			@ default mode is SVC
+
+	is_cpu_virt_capable r4
+
+	orreq   r5, r5, #0x100			@ allow HVC instruction
+
+	mcr	p15, 0, r5, c1, c1, 0		@ write SCR (with NS bit set)
+	isb
+
+	mrceq	p15, 0, r0, c12, c0, 1          @ get MVBAR value
+	mcreq	p15, 4, r0, c12, c0, 0          @ write HVBAR
+
+	bne	1f
+
+	@ Reset CNTVOFF to 0 before leaving monitor mode
+	mrc	p15, 0, r4, c0, c1, 1		@ read ID_PFR1
+	ands	r4, r4, #CPUID_ARM_GENTIMER_MASK	@ test arch timer bits
+	movne	r4, #0
+	mcrrne	p15, 4, r4, r4, c14		@ Reset CNTVOFF to zero
+1:
+	mov	lr, r7
+	mov	ip, #(PSR_F_BIT | PSR_I_BIT | PSR_A_BIT)	@ Set A, I and F
+	tst	lr, #1				@ Check for Thumb PC
+	orrne	ip, ip, #PSR_T_BIT		@ Set T if Thumb
+	orr	ip, ip, r6			@ Slot target mode in
+	msr	spsr_cxfs, ip			@ Set full SPSR
+	pop	{r4-r7}
+	movs	pc, lr				@ ERET to non-secure
+
+	.align	5
+secure_monitor_vectors:
+1:	b 1b			/* reset */
+1:	b 1b			/* undefined instruction */
+	b secure_monitor	/* software interrupt (SWI) */
+1:	b 1b			/* prefetch abort */
+1:	b 1b			/* data abort */
+1:	b hyp_trap		/* (reserved) */
+1:	b 1b			/* irq (interrupt) */
+1:	b 1b			/* fiq (fast interrupt) */
+
+secure_monitor:
+	push    {r4-r7,lr}
+
+	@ Switch to secure mode
+	mrc     p15, 0, r7, c1, c1, 0
+	bic     r4, r7, #1
+	mcr     p15, 0, r4, c1, c1, 0
+        isb
+
+	/* r0-r6: Arguments */
+	sub	sp, sp, #4*4			@ allocate result structure on stack
+	mov	r12, sp
+	push	{r4-r6, r12}
+	bl	psci_entry
+	pop	{r4-r6, r12}
+	ldm	r12, {r0-r3}
+	add	sp, sp, #4*4
+	/* r0-r3: results, r4-r14: preserved */
+
+	@ back to non-secure
+	mcr     p15, 0, r7, c1, c1, 0
+
+	pop     {r4-r7, lr}
+	movs	pc, lr
+
+hyp_trap:
+        mrs     lr, elr_hyp     @ for older asm: .byte 0x00, 0xe3, 0x0e, 0xe1
+        mov pc, lr                              @ do no switch modes, but
+                                                @ return to caller
+
+ENTRY(armv7_switch_to_hyp)
+	mov	r0, lr
+	mov	r1, sp		@ save SVC copy of LR and SP
+	isb
+	hvc #0			@ for older asm: .byte 0x70, 0x00, 0x40, 0xe1
+	mov	sp, r1
+	mov	lr, r0		@ restore SVC copy of LR and SP
+
+	bx	lr
+ENDPROC(armv7_switch_to_hyp)
+
+ENTRY(psci_cpu_entry)
+	mrc	p15, 0, r0, c1, c0, 1	@ ACTLR
+	orr	r0, r0, #(1 << 6)	@ Set SMP bit
+	mcr	p15, 0, r0, c1, c0, 1	@ ACTLR
+
+	bl	secure_monitor_stack_setup
+	bl	psci_cpu_entry_c
+
+ENDPROC(psci_cpu_entry)
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 07479fb15..5c39200a0 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -3,6 +3,7 @@
 
 #include <asm/memory.h>
 #include <asm/setup.h>
+#include <asm/secure.h>
 
 #if defined CONFIG_ARM_LINUX
 void armlinux_set_bootparams(void *params);
@@ -38,6 +39,7 @@ static inline void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
 struct image_data;
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
-		unsigned long initrd_size, void *oftree);
+		 unsigned long initrd_size, void *oftree,
+		 enum arm_security_state);
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/include/asm/gic.h b/arch/arm/include/asm/gic.h
new file mode 100644
index 000000000..bd3a80cdf
--- /dev/null
+++ b/arch/arm/include/asm/gic.h
@@ -0,0 +1,110 @@
+#ifndef __GIC_H__
+#define __GIC_H__
+
+/* Register offsets for the ARM generic interrupt controller (GIC) */
+
+#define GIC_DIST_OFFSET		0x1000
+#define GIC_CPU_OFFSET_A9	0x0100
+#define GIC_CPU_OFFSET_A15	0x2000
+
+/* Distributor Registers */
+#define GICD_CTLR		0x0000
+#define GICD_TYPER		0x0004
+#define GICD_IIDR		0x0008
+#define GICD_STATUSR		0x0010
+#define GICD_SETSPI_NSR		0x0040
+#define GICD_CLRSPI_NSR		0x0048
+#define GICD_SETSPI_SR		0x0050
+#define GICD_CLRSPI_SR		0x0058
+#define GICD_SEIR		0x0068
+#define GICD_IGROUPRn		0x0080
+#define GICD_ISENABLERn		0x0100
+#define GICD_ICENABLERn		0x0180
+#define GICD_ISPENDRn		0x0200
+#define GICD_ICPENDRn		0x0280
+#define GICD_ISACTIVERn		0x0300
+#define GICD_ICACTIVERn		0x0380
+#define GICD_IPRIORITYRn	0x0400
+#define GICD_ITARGETSRn		0x0800
+#define GICD_ICFGR		0x0c00
+#define GICD_IGROUPMODRn	0x0d00
+#define GICD_NSACRn		0x0e00
+#define GICD_SGIR		0x0f00
+#define GICD_CPENDSGIRn		0x0f10
+#define GICD_SPENDSGIRn		0x0f20
+#define GICD_IROUTERn		0x6000
+
+/* Cpu Interface Memory Mapped Registers */
+#define GICC_CTLR		0x0000
+#define GICC_PMR		0x0004
+#define GICC_BPR		0x0008
+#define GICC_IAR		0x000C
+#define GICC_EOIR		0x0010
+#define GICC_RPR		0x0014
+#define GICC_HPPIR		0x0018
+#define GICC_ABPR		0x001c
+#define GICC_AIAR		0x0020
+#define GICC_AEOIR		0x0024
+#define GICC_AHPPIR		0x0028
+#define GICC_APRn		0x00d0
+#define GICC_NSAPRn		0x00e0
+#define GICC_IIDR		0x00fc
+#define GICC_DIR		0x1000
+
+/* ReDistributor Registers for Control and Physical LPIs */
+#define GICR_CTLR		0x0000
+#define GICR_IIDR		0x0004
+#define GICR_TYPER		0x0008
+#define GICR_STATUSR		0x0010
+#define GICR_WAKER		0x0014
+#define GICR_SETLPIR		0x0040
+#define GICR_CLRLPIR		0x0048
+#define GICR_SEIR		0x0068
+#define GICR_PROPBASER		0x0070
+#define GICR_PENDBASER		0x0078
+#define GICR_INVLPIR		0x00a0
+#define GICR_INVALLR		0x00b0
+#define GICR_SYNCR		0x00c0
+#define GICR_MOVLPIR		0x0100
+#define GICR_MOVALLR		0x0110
+
+/* ReDistributor Registers for SGIs and PPIs */
+#define GICR_IGROUPRn		0x0080
+#define GICR_ISENABLERn		0x0100
+#define GICR_ICENABLERn		0x0180
+#define GICR_ISPENDRn		0x0200
+#define GICR_ICPENDRn		0x0280
+#define GICR_ISACTIVERn		0x0300
+#define GICR_ICACTIVERn		0x0380
+#define GICR_IPRIORITYRn	0x0400
+#define GICR_ICFGR0		0x0c00
+#define GICR_ICFGR1		0x0c04
+#define GICR_IGROUPMODRn	0x0d00
+#define GICR_NSACRn		0x0e00
+
+/* Cpu Interface System Registers */
+#define ICC_IAR0_EL1		S3_0_C12_C8_0
+#define ICC_IAR1_EL1		S3_0_C12_C12_0
+#define ICC_EOIR0_EL1		S3_0_C12_C8_1
+#define ICC_EOIR1_EL1		S3_0_C12_C12_1
+#define ICC_HPPIR0_EL1		S3_0_C12_C8_2
+#define ICC_HPPIR1_EL1		S3_0_C12_C12_2
+#define ICC_BPR0_EL1		S3_0_C12_C8_3
+#define ICC_BPR1_EL1		S3_0_C12_C12_3
+#define ICC_DIR_EL1		S3_0_C12_C11_1
+#define ICC_PMR_EL1		S3_0_C4_C6_0
+#define ICC_RPR_EL1		S3_0_C12_C11_3
+#define ICC_CTLR_EL1		S3_0_C12_C12_4
+#define ICC_CTLR_EL3		S3_6_C12_C12_4
+#define ICC_SRE_EL1		S3_0_C12_C12_5
+#define ICC_SRE_EL2		S3_4_C12_C9_5
+#define ICC_SRE_EL3		S3_6_C12_C12_5
+#define ICC_IGRPEN0_EL1		S3_0_C12_C12_6
+#define ICC_IGRPEN1_EL1		S3_0_C12_C12_7
+#define ICC_IGRPEN1_EL3		S3_6_C12_C12_7
+#define ICC_SEIEN_EL1		S3_0_C12_C13_0
+#define ICC_SGI0R_EL1		S3_0_C12_C11_7
+#define ICC_SGI1R_EL1		S3_0_C12_C11_5
+#define ICC_ASGI1R_EL1		S3_0_C12_C11_6
+
+#endif /* __GIC_H__ */
diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
new file mode 100644
index 000000000..e0c452538
--- /dev/null
+++ b/arch/arm/include/asm/psci.h
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2013 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
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
+#ifndef __ARM_PSCI_H__
+#define __ARM_PSCI_H__
+
+#define ARM_PSCI_VER_1_0		(0x00010000)
+#define ARM_PSCI_VER_0_2		(0x00000002)
+
+/* PSCI 0.1 interface */
+#define ARM_PSCI_FN_BASE		0x95c1ba5e
+#define ARM_PSCI_FN(n)			(ARM_PSCI_FN_BASE + (n))
+
+#define ARM_PSCI_FN_CPU_SUSPEND		ARM_PSCI_FN(0)
+#define ARM_PSCI_FN_CPU_OFF		ARM_PSCI_FN(1)
+#define ARM_PSCI_FN_CPU_ON		ARM_PSCI_FN(2)
+#define ARM_PSCI_FN_MIGRATE		ARM_PSCI_FN(3)
+
+#define ARM_PSCI_RET_SUCCESS		0
+#define ARM_PSCI_RET_NOT_SUPPORTED	(-1)
+#define ARM_PSCI_RET_INVAL		(-2)
+#define ARM_PSCI_RET_DENIED		(-3)
+#define ARM_PSCI_RET_ALREADY_ON		(-4)
+#define ARM_PSCI_RET_ON_PENDING		(-5)
+#define ARM_PSCI_RET_INTERNAL_FAILURE	(-6)
+#define ARM_PSCI_RET_NOT_PRESENT	(-7)
+#define ARM_PSCI_RET_DISABLED		(-8)
+#define ARM_PSCI_RET_INVALID_ADDRESS	(-9)
+
+/* PSCI 0.2 interface */
+#define ARM_PSCI_0_2_FN_BASE			0x84000000
+#define ARM_PSCI_0_2_FN(n)			(ARM_PSCI_0_2_FN_BASE + (n))
+
+#define ARM_PSCI_0_2_FN64_BASE			0xC4000000
+#define ARM_PSCI_0_2_FN64(n)			(ARM_PSCI_0_2_FN64_BASE + (n))
+
+#define ARM_PSCI_0_2_FN_PSCI_VERSION		ARM_PSCI_0_2_FN(0)
+#define ARM_PSCI_0_2_FN_CPU_SUSPEND		ARM_PSCI_0_2_FN(1)
+#define ARM_PSCI_0_2_FN_CPU_OFF			ARM_PSCI_0_2_FN(2)
+#define ARM_PSCI_0_2_FN_CPU_ON			ARM_PSCI_0_2_FN(3)
+#define ARM_PSCI_0_2_FN_AFFINITY_INFO		ARM_PSCI_0_2_FN(4)
+#define ARM_PSCI_0_2_FN_MIGRATE			ARM_PSCI_0_2_FN(5)
+#define ARM_PSCI_0_2_FN_MIGRATE_INFO_TYPE	ARM_PSCI_0_2_FN(6)
+#define ARM_PSCI_0_2_FN_MIGRATE_INFO_UP_CPU	ARM_PSCI_0_2_FN(7)
+#define ARM_PSCI_0_2_FN_SYSTEM_OFF		ARM_PSCI_0_2_FN(8)
+#define ARM_PSCI_0_2_FN_SYSTEM_RESET		ARM_PSCI_0_2_FN(9)
+
+#define ARM_PSCI_0_2_FN64_CPU_SUSPEND		ARM_PSCI_0_2_FN64(1)
+#define ARM_PSCI_0_2_FN64_CPU_ON		ARM_PSCI_0_2_FN64(3)
+#define ARM_PSCI_0_2_FN64_AFFINITY_INFO		ARM_PSCI_0_2_FN64(4)
+#define ARM_PSCI_0_2_FN64_MIGRATE		ARM_PSCI_0_2_FN64(5)
+#define ARM_PSCI_0_2_FN64_MIGRATE_INFO_UP_CPU	ARM_PSCI_0_2_FN64(7)
+
+/* PSCI 1.0 interface */
+#define ARM_PSCI_1_0_FN_PSCI_FEATURES		ARM_PSCI_0_2_FN(10)
+#define ARM_PSCI_1_0_FN_CPU_FREEZE		ARM_PSCI_0_2_FN(11)
+#define ARM_PSCI_1_0_FN_CPU_DEFAULT_SUSPEND	ARM_PSCI_0_2_FN(12)
+#define ARM_PSCI_1_0_FN_NODE_HW_STATE		ARM_PSCI_0_2_FN(13)
+#define ARM_PSCI_1_0_FN_SYSTEM_SUSPEND		ARM_PSCI_0_2_FN(14)
+#define ARM_PSCI_1_0_FN_SET_SUSPEND_MODE	ARM_PSCI_0_2_FN(15)
+#define ARM_PSCI_1_0_FN_STAT_RESIDENCY		ARM_PSCI_0_2_FN(16)
+#define ARM_PSCI_1_0_FN_STAT_COUNT		ARM_PSCI_0_2_FN(17)
+
+#define ARM_PSCI_1_0_FN64_CPU_DEFAULT_SUSPEND	ARM_PSCI_0_2_FN64(12)
+#define ARM_PSCI_1_0_FN64_NODE_HW_STATE		ARM_PSCI_0_2_FN64(13)
+#define ARM_PSCI_1_0_FN64_SYSTEM_SUSPEND	ARM_PSCI_0_2_FN64(14)
+#define ARM_PSCI_1_0_FN64_STAT_RESIDENCY	ARM_PSCI_0_2_FN64(16)
+#define ARM_PSCI_1_0_FN64_STAT_COUNT		ARM_PSCI_0_2_FN64(17)
+
+/* PSCI affinity level state returned by AFFINITY_INFO */
+#define PSCI_AFFINITY_LEVEL_ON		0
+#define PSCI_AFFINITY_LEVEL_OFF		1
+#define PSCI_AFFINITY_LEVEL_ON_PENDING	2
+
+struct psci_ops {
+	int (*cpu_suspend)(u32 power_state, unsigned long entry, u32 context_id);
+	int (*cpu_off)(void);
+	int (*cpu_on)(u32 cpu_id);
+	int (*affinity_info)(u32 affinity, u32 lowest_affinity_level);
+	int (*migrate)(u32 cpu_id);
+	int (*migrate_info_type)(void);
+	int (*migrate_info_up_cpu)(void);
+	void (*system_off)(void);
+	void (*system_reset)(void);
+};
+
+#ifdef CONFIG_ARM_PSCI
+void psci_set_ops(struct psci_ops *ops);
+#else
+static inline void psci_set_ops(struct psci_ops *ops)
+{
+}
+#endif
+
+void psci_cpu_entry(void);
+
+#ifdef CONFIG_ARM_PSCI_DEBUG
+void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
+void psci_putc(char c);
+int psci_puts(const char *str);
+int psci_printf(const char *fmt, ...)
+            __attribute__ ((format(__printf__, 1, 2)));
+#else
+
+static inline void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
+{
+}
+
+static inline void psci_putc(char c)
+{
+}
+
+static inline int psci_puts(const char *str)
+{
+	return 0;
+}
+
+static inline int psci_printf(const char *fmt, ...)
+{
+	return 0;
+}
+#endif
+
+int psci_get_cpu_id(void);
+
+#endif /* __ARM_PSCI_H__ */
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index 022d365b2..6520a0a73 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -32,6 +32,7 @@
 #define IRQ_MODE	0x00000012
 #define SVC_MODE	0x00000013
 #define ABT_MODE	0x00000017
+#define HYP_MODE	0x0000001a
 #define UND_MODE	0x0000001b
 #define SYSTEM_MODE	0x0000001f
 #define MODE32_BIT	0x00000010
diff --git a/arch/arm/include/asm/secure.h b/arch/arm/include/asm/secure.h
new file mode 100644
index 000000000..a4cb1f6c1
--- /dev/null
+++ b/arch/arm/include/asm/secure.h
@@ -0,0 +1,39 @@
+#ifndef __ASM_ARM_SECURE_H
+#define __ASM_ARM_SECURE_H
+
+#ifndef __ASSEMBLY__
+
+int armv7_secure_monitor_install(void);
+int __armv7_secure_monitor_install(void);
+void armv7_switch_to_hyp(void);
+
+extern unsigned char secure_monitor_init_vectors[];
+
+enum arm_security_state {
+	ARM_STATE_SECURE,
+	ARM_STATE_NONSECURE,
+	ARM_STATE_HYP,
+};
+
+#ifdef CONFIG_ARM_SECURE_MONITOR
+enum arm_security_state bootm_arm_security_state(void);
+const char *bootm_arm_security_state_name(enum arm_security_state state);
+#else
+static inline enum arm_security_state bootm_arm_security_state(void)
+{
+	return ARM_STATE_SECURE;
+}
+
+static inline const char *bootm_arm_security_state_name(
+	enum arm_security_state state)
+{
+	return "secure";
+}
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#define ARM_SECURE_STACK_SHIFT		10
+#define ARM_SECURE_MAX_CPU		8
+
+#endif /* __ASM_ARM_SECURE_H */
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 9bd92f618..8068a53be 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -18,6 +18,7 @@
 #include <magicvar.h>
 #include <binfmt.h>
 #include <restart.h>
+#include <globalvar.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -133,6 +134,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
+	enum arm_security_state state = bootm_arm_security_state();
 	int ret;
 
 	kernel = data->os_res->start + data->os_entry;
@@ -174,10 +176,20 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		printf("...\n");
 	}
 
+	if (IS_ENABLED(CONFIG_ARM_SECURE_MONITOR)) {
+		if (file_detect_type((void *)data->os_res->start, 0x100) ==
+		    filetype_arm_barebox)
+			state = ARM_STATE_SECURE;
+
+		printf("Starting kernel in %s mode\n",
+		       bootm_arm_security_state_name(state));
+	}
+
 	if (data->dryrun)
 		return 0;
 
-	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
+	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree,
+		    state);
 
 	restart_machine();
 
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index 6c7bd101c..fd7938b10 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -38,6 +38,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/armlinux.h>
 #include <asm/system.h>
+#include <asm/secure.h>
 
 static struct tag *params;
 static void *armlinux_bootparams = NULL;
@@ -258,11 +259,19 @@ static void setup_tags(unsigned long initrd_address,
 }
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
-		unsigned long initrd_size, void *oftree)
+		 unsigned long initrd_size, void *oftree,
+		 enum arm_security_state state)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
 	void *params = NULL;
 	int architecture;
+	int ret;
+
+	if (state > ARM_STATE_SECURE) {
+		ret = armv7_secure_monitor_install();
+		if (ret)
+			pr_err("Failed to install secure monitor\n");
+	}
 
 	if (oftree) {
 		pr_debug("booting kernel with devicetree\n");
@@ -274,6 +283,10 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
+
+	if (state == ARM_STATE_HYP)
+		armv7_switch_to_hyp();
+
 	if (swap) {
 		u32 reg;
 		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=r" (reg));
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 6dc8bd2f3..ff088b302 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -19,6 +19,7 @@
  */
 
 #include <asm-generic/barebox.lds.h>
+#include <asm/secure.h>
 
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
@@ -121,6 +122,15 @@ SECTIONS
 	__bss_start = .;
 	.bss : { *(.bss*) }
 	__bss_stop = .;
+
+#ifdef CONFIG_ARM_SECURE_MONITOR
+	. = ALIGN(16);
+	__secure_stack_start = .;
+	. = . + (ARM_SECURE_MAX_CPU << ARM_SECURE_STACK_SHIFT);
+	__secure_stack_end = .;
+	__secure_end = .;
+#endif
+
 	_end = .;
 	_barebox_image_size = __bss_start - TEXT_BASE;
 }
diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 96a9dd244..1cd27a0db 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <io.h>
 #include <linux/sizes.h>
+#include <asm/psci.h>
 #include <mach/imx7.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
