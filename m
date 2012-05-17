Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3tq-0004Oe-OW
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:05 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:45 +0100
Message-Id: <1337273391-20858-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
References: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V5 3/9] e500v2 traps and TLB support code
To: barebox@lists.infradead.org

This patch defines functions to set interrupt vector registers and
functions to handle hardware exceptions.
It also defines support functions to set and search TLBs.
Finally, the Makefile is added.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/Makefile     |    4 +
 arch/ppc/cpu-85xx/fixed_ivor.S |   61 +++++++++
 arch/ppc/cpu-85xx/tlb.c        |  175 ++++++++++++++++++++++++++
 arch/ppc/cpu-85xx/traps.c      |  272 ++++++++++++++++++++++++++++++++++++++++
 4 files changed, 512 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/cpu-85xx/Makefile
 create mode 100644 arch/ppc/cpu-85xx/fixed_ivor.S
 create mode 100644 arch/ppc/cpu-85xx/tlb.c
 create mode 100644 arch/ppc/cpu-85xx/traps.c

diff --git a/arch/ppc/cpu-85xx/Makefile b/arch/ppc/cpu-85xx/Makefile
new file mode 100644
index 0000000..3ee0397
--- /dev/null
+++ b/arch/ppc/cpu-85xx/Makefile
@@ -0,0 +1,4 @@
+obj-y			+= traps.o
+obj-y			+= tlb.o
+extra-y			+= start.o
+extra-y			+= resetvec.o
diff --git a/arch/ppc/cpu-85xx/fixed_ivor.S b/arch/ppc/cpu-85xx/fixed_ivor.S
new file mode 100644
index 0000000..a00a435
--- /dev/null
+++ b/arch/ppc/cpu-85xx/fixed_ivor.S
@@ -0,0 +1,61 @@
+/*
+ * Copyright 2009 Freescale Semiconductor, Inc.
+ *
+ * Kumar Gala <kumar.gala@freescale.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/* This file is intended to be included by other asm code since
+ * we will want to execute this on both the primary core when
+ * it does a bootm and the secondary core's that get released
+ * out of the spin table.
+ */
+
+#define SET_IVOR(vector_number, vector_offset)	\
+	li	r3,vector_offset@l; 		\
+	mtspr	SPRN_IVOR##vector_number,r3;
+
+#define SET_GIVOR(vector_number, vector_offset)	\
+	li	r3,vector_offset@l; 		\
+	mtspr	SPRN_GIVOR##vector_number,r3;
+
+	SET_IVOR(0, 0x020) /* Critical Input */
+	SET_IVOR(1, 0x000) /* Machine Check */
+	SET_IVOR(2, 0x060) /* Data Storage */
+	SET_IVOR(3, 0x080) /* Instruction Storage */
+	SET_IVOR(4, 0x0a0) /* External Input */
+	SET_IVOR(5, 0x0c0) /* Alignment */
+	SET_IVOR(6, 0x0e0) /* Program */
+	SET_IVOR(7, 0x100) /* FP Unavailable */
+	SET_IVOR(8, 0x120) /* System Call */
+	SET_IVOR(9, 0x140) /* Auxiliary Processor Unavailable */
+	SET_IVOR(10, 0x160) /* Decrementer */
+	SET_IVOR(11, 0x180) /* Fixed Interval Timer */
+	SET_IVOR(12, 0x1a0) /* Watchdog Timer */
+	SET_IVOR(13, 0x1c0) /* Data TLB Error */
+	SET_IVOR(14, 0x1e0) /* Instruction TLB Error */
+	SET_IVOR(15, 0x040) /* Debug */
+
+	/* e500v1 & e500v2 only */
+	SET_IVOR(32, 0x200) /* SPE Unavailable */
+	SET_IVOR(33, 0x220) /* Embedded FP Data */
+	SET_IVOR(34, 0x240) /* Embedded FP Round */
+
+	SET_IVOR(35, 0x260) /* Performance monitor */
diff --git a/arch/ppc/cpu-85xx/tlb.c b/arch/ppc/cpu-85xx/tlb.c
new file mode 100644
index 0000000..07ecdef
--- /dev/null
+++ b/arch/ppc/cpu-85xx/tlb.c
@@ -0,0 +1,175 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * Copyright 2008-2009 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2000
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/processor.h>
+#include <asm/config.h>
+#include <asm/bitops.h>
+#include <mach/mmu.h>
+
+void e500_invalidate_tlb(u8 tlb)
+{
+	if (tlb == 0)
+		mtspr(MMUCSR0, 0x4);
+	if (tlb == 1)
+		mtspr(MMUCSR0, 0x2);
+}
+
+void e500_init_tlbs(void)
+{
+	int i;
+
+	for (i = 0; i < num_tlb_entries; i++) {
+		e500_write_tlb(tlb_table[i].mas0,
+			  tlb_table[i].mas1,
+			  tlb_table[i].mas2,
+			  tlb_table[i].mas3,
+			  tlb_table[i].mas7);
+	}
+
+	return ;
+}
+
+static int e500_find_free_tlbcam(void)
+{
+	int ix;
+	u32 _mas1;
+	unsigned int num_cam = mfspr(SPRN_TLB1CFG) & 0xfff;
+
+	for (ix = 0; ix < num_cam; ix++) {
+		mtspr(MAS0, FSL_BOOKE_MAS0(1, ix, 0));
+		asm volatile("tlbre;isync");
+		_mas1 = mfspr(MAS1);
+		if (!(_mas1 & MAS1_VALID))
+			return ix;
+	}
+
+	if (ix >= NUM_TLBCAMS)
+		panic("No more free TLBs");
+
+	return ix;
+}
+
+void e500_set_tlb(u8 tlb, u32 epn, u64 rpn,
+	     u8 perms, u8 wimge,
+	     u8 ts, u8 esel, u8 tsize, u8 iprot)
+{
+	u32 _mas0, _mas1, _mas2, _mas3, _mas7;
+
+	_mas0 = FSL_BOOKE_MAS0(tlb, esel, 0);
+	_mas1 = FSL_BOOKE_MAS1(1, iprot, 0, ts, tsize);
+	_mas2 = FSL_BOOKE_MAS2(epn, wimge);
+	_mas3 = FSL_BOOKE_MAS3(rpn, 0, perms);
+	_mas7 = FSL_BOOKE_MAS7(rpn);
+
+	e500_write_tlb(_mas0, _mas1, _mas2, _mas3, _mas7);
+}
+
+void e500_disable_tlb(u8 esel)
+{
+	mtspr(MAS0, FSL_BOOKE_MAS0(1, esel, 0));
+	mtspr(MAS1, 0);
+	mtspr(MAS2, 0);
+	mtspr(MAS3, 0);
+	asm volatile("isync;msync;tlbwe;isync");
+}
+
+static inline void tlbsx(const unsigned *addr)
+{
+	__asm__ __volatile__ ("tlbsx 0,%0" : : "r" (addr), "m" (*addr));
+}
+
+int e500_find_tlb_idx(void *addr, u8 tlbsel)
+{
+	u32 _mas0, _mas1;
+
+	/* zero out Search PID, AS */
+	mtspr(MAS6, 0);
+	tlbsx(addr);
+
+	_mas0 = mfspr(MAS0);
+	_mas1 = mfspr(MAS1);
+
+	/* we found something, and its in the TLB we expect */
+	if ((MAS1_VALID & _mas1) &&
+		(MAS0_TLBSEL(tlbsel) == (_mas0 & MAS0_TLBSEL_MSK))) {
+		return (_mas0 & MAS0_ESEL_MSK) >> 16;
+	}
+
+	panic("Address 0x%p not found in TLB %d\n", addr, tlbsel);
+}
+
+static unsigned int e500_setup_ddr_tlbs_phys(phys_addr_t p_addr,
+					unsigned int memsize_in_meg)
+{
+	int i;
+	unsigned int tlb_size;
+	unsigned int wimge = 0;
+	unsigned int ram_tlb_address = (unsigned int)CFG_SDRAM_BASE;
+	unsigned int max_cam = (mfspr(SPRN_TLB1CFG) >> 16) & 0xf;
+	u64 size, memsize = (u64)memsize_in_meg << 20;
+
+	size = min((u64)memsize, (u64)MAX_MEM_MAPPED);
+
+	/* Convert (4^max) kB to (2^max) bytes */
+	max_cam = (max_cam * 2) + 10;
+
+	for (i = 0; size && (i < 8); i++) {
+		int ram_tlb_index = e500_find_free_tlbcam();
+		u32 camsize = __ilog2_u64(size) & ~1U;
+		u32 align = __ilog2(ram_tlb_address) & ~1U;
+
+		if (align == -2)
+			align = max_cam;
+		if (camsize > align)
+			camsize = align;
+
+		if (camsize > max_cam)
+			camsize = max_cam;
+
+		tlb_size = (camsize - 10) / 2;
+
+		e500_set_tlb(1, ram_tlb_address, p_addr,
+			MAS3_SX|MAS3_SW|MAS3_SR, wimge,
+			0, ram_tlb_index, tlb_size, 1);
+
+		size -= 1ULL << camsize;
+		memsize -= 1ULL << camsize;
+		ram_tlb_address += 1UL << camsize;
+		p_addr += 1UL << camsize;
+	}
+
+	if (memsize)
+		printf("%lld left unmapped\n", memsize);
+
+	return memsize_in_meg;
+}
+
+inline unsigned int e500_setup_ddr_tlbs(unsigned int memsize_in_meg)
+{
+	return e500_setup_ddr_tlbs_phys(CFG_SDRAM_BASE, memsize_in_meg);
+}
diff --git a/arch/ppc/cpu-85xx/traps.c b/arch/ppc/cpu-85xx/traps.c
new file mode 100644
index 0000000..caead96
--- /dev/null
+++ b/arch/ppc/cpu-85xx/traps.c
@@ -0,0 +1,272 @@
+/*
+ * linux/arch/powerpc/kernel/traps.c
+ *
+ * Copyright 2007 Freescale Semiconductor.
+ * Copyright (C) 2003 Motorola
+ * Modified by Xianghua Xiao(x.xiao@motorola.com)
+ *
+ * Copyright (C) 1995-1996  Gary Thomas (gdt@linuxppc.org)
+ *
+ * Modified by Cort Dougan (cort@cs.nmt.edu)
+ * and Paul Mackerras (paulus@cs.anu.edu.au)
+ *
+ * (C) Copyright 2000
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/*
+ * This file handles the architecture-dependent parts of hardware exceptions
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <asm/processor.h>
+#include <mach/mpc85xx.h>
+
+int machinecheck_count;
+int machinecheck_error;
+
+static inline void set_tsr(unsigned long val)
+{
+	asm volatile("mtspr 0x150, %0" : : "r" (val));
+}
+
+static inline unsigned long get_esr(void)
+{
+	unsigned long val;
+	asm volatile("mfspr %0, 0x03e" : "=r" (val) : );
+	return val;
+}
+
+#define ESR_MCI 0x80000000
+#define ESR_PIL 0x08000000
+#define ESR_PPR 0x04000000
+#define ESR_PTR 0x02000000
+#define ESR_DST 0x00800000
+#define ESR_DIZ 0x00400000
+#define ESR_U0F 0x00008000
+
+/*
+ * Trap & Exception support
+ */
+void print_backtrace(unsigned long *sp)
+{
+	int cnt = 0;
+	unsigned long i;
+
+	printf("Call backtrace: ");
+	while (sp) {
+		if ((uint)sp > END_OF_MEM)
+			break;
+
+		i = sp[1];
+		if ((cnt++ % 7) == 0)
+			printf("\n");
+		printf("%08lX ", i);
+		if (cnt > 32)
+			break;
+		sp = (unsigned long *)*sp;
+	}
+	printf("\n");
+}
+
+void show_regs(struct pt_regs *regs)
+{
+	int i;
+
+	printf("NIP: %08lX XER: %08lX LR: %08lX REGS: %p TRAP: %04lx "
+		"DAR: %08lX\n",
+	       regs->nip, regs->xer, regs->link, regs, regs->trap, regs->dar);
+	printf("MSR: %08lx EE: %01x PR: %01x FP: %01x ME: %01x "
+		"IR/DR: %01x%01x\n",
+	       regs->msr, regs->msr&MSR_EE ? 1 : 0, regs->msr&MSR_PR ? 1 : 0,
+	       regs->msr & MSR_FP ? 1 : 0, regs->msr&MSR_ME ? 1 : 0,
+	       regs->msr&MSR_IR ? 1 : 0,
+	       regs->msr&MSR_DR ? 1 : 0);
+
+	printf("\n");
+	for (i = 0;  i < 32;  i++) {
+		if ((i % 8) == 0)
+			printf("GPR%02d: ", i);
+
+		printf("%08lX ", regs->gpr[i]);
+		if ((i % 8) == 7)
+			printf("\n");
+	}
+}
+
+void _exception(int signr, struct pt_regs *regs)
+{
+	show_regs(regs);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	panic("Exception in kernel pc %lx signal %d", regs->nip, signr);
+}
+
+void CritcalInputException(struct pt_regs *regs)
+{
+	panic("Critical Input Exception");
+}
+
+static int exception_init(void)
+{
+	machinecheck_count = 0;
+	machinecheck_error = 0;
+
+	return 0;
+}
+core_initcall(exception_init);
+
+void MachineCheckException(struct pt_regs *regs)
+{
+	unsigned long fixup;
+	unsigned int mcsr, mcsrr0, mcsrr1, mcar;
+
+	/*
+	 * Probing PCI using config cycles cause this exception
+	 * when a device is not present.  Catch it and return to
+	 * the PCI exception handler.
+	 */
+	fixup = search_exception_table(regs->nip);
+	if (fixup != 0) {
+		regs->nip = fixup;
+		return;
+	}
+
+	mcsrr0 = mfspr(SPRN_MCSRR0);
+	mcsrr1 = mfspr(SPRN_MCSRR1);
+	mcsr = mfspr(SPRN_MCSR);
+	mcar = mfspr(SPRN_MCAR);
+
+	machinecheck_count++;
+	machinecheck_error = 1;
+
+#if defined(CONFIG_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	printf("Machine check in kernel mode.\n");
+	printf("Caused by (from mcsr): ");
+	printf("mcsr = 0x%08x\n", mcsr);
+	if (mcsr & 0x80000000)
+		printf("Machine check input pin\n");
+	if (mcsr & 0x40000000)
+		printf("Instruction cache parity error\n");
+	if (mcsr & 0x20000000)
+		printf("Data cache push parity error\n");
+	if (mcsr & 0x10000000)
+		printf("Data cache parity error\n");
+	if (mcsr & 0x00000080)
+		printf("Bus instruction address error\n");
+	if (mcsr & 0x00000040)
+		printf("Bus Read address error\n");
+	if (mcsr & 0x00000020)
+		printf("Bus Write address error\n");
+	if (mcsr & 0x00000010)
+		printf("Bus Instruction data bus error\n");
+	if (mcsr & 0x00000008)
+		printf("Bus Read data bus error\n");
+	if (mcsr & 0x00000004)
+		printf("Bus Write bus error\n");
+	if (mcsr & 0x00000002)
+		printf("Bus Instruction parity error\n");
+	if (mcsr & 0x00000001)
+		printf("Bus Read parity error\n");
+
+	show_regs(regs);
+	printf("MCSR=0x%08x\tMCSRR0=0x%08x\nMCSRR1=0x%08x\tMCAR=0x%08x\n",
+		mcsr, mcsrr0, mcsrr1, mcar);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+
+	if (machinecheck_count > 10)
+		panic("machine check count too high\n");
+
+	if (machinecheck_count > 1) {
+		regs->nip += 4; /* skip offending instruction */
+		printf("Skipping current instr, Returning to 0x%08lx\n",
+		       regs->nip);
+	} else {
+		printf("Returning back to 0x%08lx\n", regs->nip);
+	}
+}
+
+void AlignmentException(struct pt_regs *regs)
+{
+#if defined(CONFIG_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	show_regs(regs);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	panic("Alignment Exception");
+}
+
+void ProgramCheckException(struct pt_regs *regs)
+{
+	long esr_val;
+
+#if defined(CONFIG_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	show_regs(regs);
+
+	esr_val = get_esr();
+	if (esr_val & ESR_PIL)
+		printf("** Illegal Instruction **\n");
+	else if (esr_val & ESR_PPR)
+		printf("** Privileged Instruction **\n");
+	else if (esr_val & ESR_PTR)
+		printf("** Trap Instruction **\n");
+
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	panic("Program Check Exception");
+}
+
+void PITException(struct pt_regs *regs)
+{
+	/* Reset PIT interrupt */
+	set_tsr(0x0c000000);
+}
+
+void UnknownException(struct pt_regs *regs)
+{
+#if defined(CONFIG_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	printf("Bad trap at PC: %lx, SR: %lx, vector=%lx\n",
+	       regs->nip, regs->msr, regs->trap);
+	_exception(0, regs);
+}
+
+void DebugException(struct pt_regs *regs)
+{
+	printf("Debugger trap at @ %lx\n", regs->nip);
+	show_regs(regs);
+#if defined(CONFIG_BEDBUG)
+	do_bedbug_breakpoint(regs);
+#endif
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
