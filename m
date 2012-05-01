Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og109.obsmtp.com ([64.18.0.188])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SP9La-0007k2-9u
 for barebox@lists.infradead.org; Tue, 01 May 2012 09:26:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  1 May 2012 10:26:01 +0100
Message-Id: <1335864363-18383-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
References: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V4 2/4] Minimal support of the MPC85xx architecture
To: barebox@lists.infradead.org

The directories cpu-85xx and mach-mpc85xx contain a minimal CPU support
suitable for the P2020RDB board. This includes startup code for the CPU,
peripherals and clock source initialization as well as header files
and updates to configuration and build files.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig                                  |    3 +
 arch/ppc/Makefile                                 |    7 +
 arch/ppc/cpu-85xx/Makefile                        |    7 +
 arch/ppc/cpu-85xx/cpu.c                           |  103 ++
 arch/ppc/cpu-85xx/cpu_init.c                      |  130 +++
 arch/ppc/cpu-85xx/fixed_ivor.S                    |   61 ++
 arch/ppc/cpu-85xx/release.S                       |  263 +++++
 arch/ppc/cpu-85xx/resetvec.S                      |    2 +
 arch/ppc/cpu-85xx/start.S                         | 1092 +++++++++++++++++++++
 arch/ppc/cpu-85xx/tlb.c                           |  177 ++++
 arch/ppc/cpu-85xx/traps.c                         |  297 ++++++
 arch/ppc/include/asm/config.h                     |   44 +
 arch/ppc/include/asm/config_mpc85xx.h             |   37 +
 arch/ppc/include/asm/e500.h                       |   39 +
 arch/ppc/include/asm/fsl_ddr_sdram.h              |   34 +
 arch/ppc/include/asm/fsl_law.h                    |   91 ++
 arch/ppc/include/asm/fsl_lbc.h                    |   67 ++
 arch/ppc/lib/Makefile                             |    1 +
 arch/ppc/lib/board.c                              |    9 +-
 arch/ppc/lib/reloc.S                              |   47 +
 arch/ppc/mach-mpc85xx/Kconfig                     |   45 +
 arch/ppc/mach-mpc85xx/Makefile                    |    6 +
 arch/ppc/mach-mpc85xx/cpuid.c                     |   73 ++
 arch/ppc/mach-mpc85xx/fsl_law.c                   |  160 +++
 arch/ppc/mach-mpc85xx/fsl_lbc.c                   |   17 +
 arch/ppc/mach-mpc85xx/include/mach/clocks.h       |   11 +
 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h |   40 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h   |  132 +++
 arch/ppc/mach-mpc85xx/include/mach/mp.h           |   15 +
 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h      |   17 +
 arch/ppc/mach-mpc85xx/mp.c                        |  155 +++
 arch/ppc/mach-mpc85xx/speed.c                     |   96 ++
 arch/ppc/mach-mpc85xx/time.c                      |   54 +
 33 files changed, 3328 insertions(+), 4 deletions(-)
 create mode 100644 arch/ppc/cpu-85xx/Makefile
 create mode 100644 arch/ppc/cpu-85xx/cpu.c
 create mode 100644 arch/ppc/cpu-85xx/cpu_init.c
 create mode 100644 arch/ppc/cpu-85xx/fixed_ivor.S
 create mode 100644 arch/ppc/cpu-85xx/release.S
 create mode 100644 arch/ppc/cpu-85xx/resetvec.S
 create mode 100644 arch/ppc/cpu-85xx/start.S
 create mode 100644 arch/ppc/cpu-85xx/tlb.c
 create mode 100644 arch/ppc/cpu-85xx/traps.c
 create mode 100644 arch/ppc/include/asm/config.h
 create mode 100644 arch/ppc/include/asm/config_mpc85xx.h
 create mode 100644 arch/ppc/include/asm/e500.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_sdram.h
 create mode 100644 arch/ppc/include/asm/fsl_law.h
 create mode 100644 arch/ppc/include/asm/fsl_lbc.h
 create mode 100644 arch/ppc/lib/reloc.S
 create mode 100644 arch/ppc/mach-mpc85xx/Kconfig
 create mode 100644 arch/ppc/mach-mpc85xx/Makefile
 create mode 100644 arch/ppc/mach-mpc85xx/cpuid.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_law.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_lbc.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/clocks.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mp.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/mp.c
 create mode 100644 arch/ppc/mach-mpc85xx/speed.c
 create mode 100644 arch/ppc/mach-mpc85xx/time.c

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 164598f..d124065 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -12,9 +12,12 @@ choice
 config ARCH_MPC5XXX
 	bool "Freescale MPC5xxx"
 
+config ARCH_MPC85XX
+	bool "Freescale MPC85xx"
 endchoice
 
 source arch/ppc/mach-mpc5xxx/Kconfig
+source arch/ppc/mach-mpc85xx/Kconfig
 source common/Kconfig
 source commands/Kconfig
 source net/Kconfig
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 2d9e47f..67eb667 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -7,9 +7,16 @@ ifdef CONFIG_RELOCATABLE
 CPPFLAGS += -fPIC -mrelocatable
 endif
 
+ifdef CONFIG_MPC85xx
+CPPFLAGS += -Wa,-me500x2 -msoft-float -mno-string
+endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
+
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
+machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
+
+cpu-$(CONFIG_ARCH_MPC85XX)			:= 85xx
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
diff --git a/arch/ppc/cpu-85xx/Makefile b/arch/ppc/cpu-85xx/Makefile
new file mode 100644
index 0000000..be1ad21
--- /dev/null
+++ b/arch/ppc/cpu-85xx/Makefile
@@ -0,0 +1,7 @@
+obj-y 			+= cpu.o
+obj-y			+= cpu_init.o
+obj-y			+= traps.o
+obj-y			+= tlb.o
+extra-y			+= start.o
+extra-y			+= resetvec.o
+obj-$(CONFIG_MP)	+= release.o
diff --git a/arch/ppc/cpu-85xx/cpu.c b/arch/ppc/cpu-85xx/cpu.c
new file mode 100644
index 0000000..74eba0f
--- /dev/null
+++ b/arch/ppc/cpu-85xx/cpu.c
@@ -0,0 +1,103 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc
+ * Copyright 2004,2007-2011 Freescale Semiconductor, Inc.
+ * (C) Copyright 2002, 2003 Motorola Inc.
+ * Xianghua Xiao (X.Xiao@motorola.com)
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
+#include <config.h>
+#include <common.h>
+#include <command.h>
+#include <asm/processor.h>
+#include <asm/config_mpc85xx.h>
+#include <asm/e500.h>
+#include <asm/common.h>
+#include <asm/config.h>
+#include <asm/cache.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <mach/immap_85xx.h>
+#include <mach/clocks.h>
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	void __iomem *regs = (void __iomem *)MPC85xx_GUTS_ADDR;
+
+	/* Everything after the first generation of PQ3 parts has RSTCR */
+	out_be32(regs + MPC85xx_GUTS_RSTCR_OFFSET, 0x2);  /* HRESET_REQ */
+	udelay(100);
+
+	while (1)
+		;
+}
+
+unsigned long get_timebase_clock(void)
+{
+	struct sys_info sysinfo;
+
+	get_sys_info(&sysinfo);
+
+	return (sysinfo.freqSystemBus + 4UL)/8UL;
+}
+
+/*
+ * Return the memory size based on the configuration registers.
+ */
+phys_size_t get_effective_memsize(void)
+{
+	void __iomem *regs = (void __iomem *)(MPC85xx_DDR_ADDR);
+	phys_size_t sdram_size;
+	uint san , ean;
+	uint reg;
+	int ix;
+
+	sdram_size = 0;
+
+	for (ix = 0; ix < CFG_CHIP_SELECTS_PER_CTRL; ix++) {
+		if (in_be32(regs + DDR_OFF(CS0_CONFIG) + (ix * 8)) &
+				SDRAM_CFG_MEM_EN) {
+			reg = in_be32(regs + DDR_OFF(CS0_BNDS) + (ix * 8));
+			/* start address */
+			san = (reg & 0x0fff00000) >>  16;
+			/* end address   */
+			ean = (reg & 0x00000fff);
+			sdram_size =  ((ean - san + 1) << 24);
+		}
+	}
+
+	return sdram_size;
+}
+
+long int initdram(int board_type)
+{
+	phys_size_t dram_size = 0;
+
+	dram_size = fixed_sdram();
+
+	dram_size = setup_ddr_tlbs(dram_size / 0x100000);
+	dram_size *= 0x100000;
+
+	return dram_size;
+}
diff --git a/arch/ppc/cpu-85xx/cpu_init.c b/arch/ppc/cpu-85xx/cpu_init.c
new file mode 100644
index 0000000..e127765
--- /dev/null
+++ b/arch/ppc/cpu-85xx/cpu_init.c
@@ -0,0 +1,130 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * Copyright 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2003 Motorola Inc.
+ * Modified by Xianghua Xiao, X.Xiao@motorola.com
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
+#include <init.h>
+#include <asm/processor.h>
+#include <asm/io.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <asm/fsl_law.h>
+#include <mach/immap_85xx.h>
+#include <mach/mp.h>
+
+static void setup_ccsrbar(void)
+{
+	u32 temp;
+	u32 mas0, mas1, mas2, mas3, mas7;
+	u32 *ccsr_virt = (u32 *)(CFG_CCSRBAR + 0x1000);
+
+	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(1);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_TSIZE(BOOKE_PAGESZ_4K);
+	/* mas1 is the same as above */
+	mas2 = FSL_BOOKE_MAS2(CFG_CCSRBAR + 0x1000, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(CFG_CCSRBAR_DEFAULT, 0, MAS3_SW|MAS3_SR);
+	mas7 = FSL_BOOKE_MAS7(CFG_CCSRBAR_DEFAULT);
+
+	write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	temp = in_be32(ccsr_virt);
+	out_be32(ccsr_virt, CFG_CCSRBAR_PHYS >> 12);
+	temp = in_be32((u32 *)CFG_CCSRBAR);
+}
+
+void cpu_init_early_f(void)
+{
+	u32 mas0, mas1, mas2, mas3, mas7;
+
+	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(0);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_TSIZE(BOOKE_PAGESZ_4K);
+	mas2 = FSL_BOOKE_MAS2(CFG_CCSRBAR, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(CFG_CCSRBAR_PHYS, 0, MAS3_SW|MAS3_SR);
+	mas7 = FSL_BOOKE_MAS7(CFG_CCSRBAR_PHYS);
+
+	write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	/* set up CCSR if we want it moved */
+	if (CFG_CCSRBAR_DEFAULT != CFG_CCSRBAR_PHYS)
+		setup_ccsrbar();
+
+	init_laws();
+	invalidate_tlb(0);
+	init_tlbs();
+}
+
+void cpu_init_f(void)
+{
+	disable_tlb(14);
+	disable_tlb(15);
+
+	init_early_memctl_regs();
+}
+
+int l2_cache_init(void)
+{
+	void __iomem *l2cache = (void __iomem *)MPC85xx_L2_ADDR;
+	uint cache_ctl;
+	uint svr, ver;
+	u32 l2siz_field;
+
+	svr = get_svr();
+	ver = SVR_SOC_VER(svr);
+
+	asm("msync;isync");
+	cache_ctl = in_be32(l2cache + MPC85xx_L2_CTL_OFFSET);
+
+	l2siz_field = (cache_ctl >> 28) & 0x3;
+
+	switch (l2siz_field) {
+	case 0x0:
+		return -1;
+		break;
+	case 0x1:
+		cache_ctl = 0xc0000000; /* set L2E=1, L2I=1, L2SRAM=0 */
+		break;
+	case 0x2:
+		/* set L2E=1, L2I=1, & L2SRAM=0 */
+		cache_ctl = 0xc0000000;
+		break;
+	case 0x3:
+		/* set L2E=1, L2I=1, & L2SRAM=0 */
+		cache_ctl = 0xc0000000;
+		break;
+	}
+
+	if (!(in_be32(l2cache + MPC85xx_L2_CTL_OFFSET) & MPC85xx_L2CTL_L2E)) {
+		asm("msync;isync");
+		/* invalidate & enable */
+		out_be32(l2cache + MPC85xx_L2_CTL_OFFSET, cache_ctl);
+		asm("msync;isync");
+	}
+
+	return 0;
+}
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
diff --git a/arch/ppc/cpu-85xx/release.S b/arch/ppc/cpu-85xx/release.S
new file mode 100644
index 0000000..afe1421
--- /dev/null
+++ b/arch/ppc/cpu-85xx/release.S
@@ -0,0 +1,263 @@
+/*
+ * Copyright 2008-2010 Freescale Semiconductor, Inc.
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
+#include <config.h>
+#include <asm/config_mpc85xx.h>
+#include <mach/mpc85xx.h>
+
+#include <asm/ppc_asm.tmpl>
+#include <asm/ppc_defs.h>
+
+#include <asm/cache.h>
+#include <asm/mmu.h>
+
+/* To boot secondary cpus, we need a place for them to start up.
+ * Normally, they start at 0xfffffffc, but that's usually the
+ * firmware, and we don't want to have to run the firmware again.
+ * Instead, the primary cpu will set the BPTR to point here to
+ * this page.  We then set up the core, and head to
+ * start_secondary.  Note that this means that the code below
+ * must never exceed 1023 instructions (the branch at the end
+ * would then be the 1024th).
+ */
+	.globl	__secondary_start_page
+	.align	12
+__secondary_start_page:
+/* First do some preliminary setup */
+	lis	r3, HID0_EMCP@h		/* enable machine check */
+
+	ori	r3,r3,HID0_TBEN@l	/* enable Timebase */
+
+	mtspr	SPRN_HID0,r3
+
+	li	r3,(HID1_ASTME|HID1_ABE)@l	/* Addr streaming & broadcast */
+	mfspr   r0,PVR
+	andi.	r0,r0,0xff
+	cmpwi	r0,0x50@l	/* if we are rev 5.0 or greater set MBDD */
+	blt 1f
+	/* Set MBDD bit also */
+	ori r3, r3, HID1_MBDD@l
+1:
+	mtspr	SPRN_HID1,r3
+
+	/* Enable branch prediction */
+	lis	r3,BUCSR_ENABLE@h
+	ori	r3,r3,BUCSR_ENABLE@l
+	mtspr	SPRN_BUCSR,r3
+
+	/* Ensure TB is 0 */
+	li	r3,0
+	mttbl	r3
+	mttbu	r3
+
+	/* Enable/invalidate the I-Cache */
+	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
+	ori	r2,r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@l
+	mtspr	SPRN_L1CSR1,r2
+1:
+	mfspr	r3,SPRN_L1CSR1
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR1_CPE|L1CSR1_ICE)@h
+	ori	r3,r3,(L1CSR1_CPE|L1CSR1_ICE)@l
+	mtspr	SPRN_L1CSR1,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR1
+	andi.	r1,r3,L1CSR1_ICE@l
+	beq	2b
+
+	/* Enable/invalidate the D-Cache */
+	lis	r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@h
+	ori	r2,r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@l
+	mtspr	SPRN_L1CSR0,r2
+1:
+	mfspr	r3,SPRN_L1CSR0
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR0_CPE|L1CSR0_DCE)@h
+	ori	r3,r3,(L1CSR0_CPE|L1CSR0_DCE)@l
+	mtspr	SPRN_L1CSR0,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR0
+	andi.	r1,r3,L1CSR0_DCE@l
+	beq	2b
+
+#define toreset(x) (x - __secondary_start_page + 0xfffff000)
+
+	/* get our PIR to figure out our table entry */
+	lis	r3,toreset(__spin_table)@h
+	ori	r3,r3,toreset(__spin_table)@l
+
+	/* r10 has the base address for the entry */
+	mfspr	r0,SPRN_PIR
+	mr	r4,r0
+	slwi	r8,r4,5
+	add	r10,r3,r8
+
+#define EPAPR_MAGIC		(0x45504150)
+#define ENTRY_ADDR_UPPER	0
+#define ENTRY_ADDR_LOWER	4
+#define ENTRY_R3_UPPER		8
+#define ENTRY_R3_LOWER		12
+#define ENTRY_RESV		16
+#define ENTRY_PIR		20
+#define ENTRY_R6_UPPER		24
+#define ENTRY_R6_LOWER		28
+#define ENTRY_SIZE		32
+
+	/* setup the entry */
+	li	r3,0
+	li	r8,1
+	stw	r0,ENTRY_PIR(r10)
+	stw	r3,ENTRY_ADDR_UPPER(r10)
+	stw	r8,ENTRY_ADDR_LOWER(r10)
+	stw	r3,ENTRY_R3_UPPER(r10)
+	stw	r4,ENTRY_R3_LOWER(r10)
+	stw	r3,ENTRY_R6_UPPER(r10)
+	stw	r3,ENTRY_R6_LOWER(r10)
+
+	/* load r13 with the address of the 'bootpg' in SDRAM */
+	lis	r13,toreset(__bootpg_addr)@h
+	ori	r13,r13,toreset(__bootpg_addr)@l
+	lwz	r13,0(r13)
+
+	/* setup mapping for AS = 1, and jump there */
+	lis	r11,(MAS0_TLBSEL(1)|MAS0_ESEL(1))@h
+	mtspr	SPRN_MAS0,r11
+	lis	r11,(MAS1_VALID|MAS1_IPROT)@h
+	ori	r11,r11,(MAS1_TS|MAS1_TSIZE(BOOKE_PAGESZ_4K))@l
+	mtspr	SPRN_MAS1,r11
+	oris	r11,r13,(MAS2_I|MAS2_G)@h
+	ori	r11,r13,(MAS2_I|MAS2_G)@l
+	mtspr	SPRN_MAS2,r11
+	oris	r11,r13,(MAS3_SX|MAS3_SW|MAS3_SR)@h
+	ori	r11,r13,(MAS3_SX|MAS3_SW|MAS3_SR)@l
+	mtspr	SPRN_MAS3,r11
+	tlbwe
+
+	bl	1f
+1:	mflr	r11
+	/*
+	 * OR in 0xfff to create a mask of the bootpg SDRAM address.  We use
+	 * this mask to fixup the cpu spin table and the address that we want
+	 * to jump to, eg change them from 0xfffffxxx to 0x7ffffxxx if the
+	 * bootpg is at 0x7ffff000 in SDRAM.
+	 */
+	ori	r13,r13,0xfff
+	and	r11, r11, r13
+	and	r10, r10, r13
+
+	addi	r11,r11,(2f-1b)
+	mfmsr	r13
+	ori	r12,r13,MSR_IS|MSR_DS@l
+
+	mtspr	SPRN_SRR0,r11
+	mtspr	SPRN_SRR1,r12
+	rfi
+
+	/* spin waiting for addr */
+2:
+	lwz	r4,ENTRY_ADDR_LOWER(r10)
+	andi.	r11,r4,1
+	bne	2b
+	isync
+
+	/* setup IVORs to match fixed offsets */
+#include "fixed_ivor.S"
+
+	/* get the upper bits of the addr */
+	lwz	r11,ENTRY_ADDR_UPPER(r10)
+
+	/* setup branch addr */
+	mtspr	SPRN_SRR0,r4
+
+	/* mark the entry as released */
+	li	r8,3
+	stw	r8,ENTRY_ADDR_LOWER(r10)
+
+	/* mask by ~64M to setup our tlb we will jump to */
+	rlwinm	r12,r4,0,0,5
+
+	/* setup r3, r4, r5, r6, r7, r8, r9 */
+	lwz	r3,ENTRY_R3_LOWER(r10)
+	li	r4,0
+	li	r5,0
+	lwz	r6,ENTRY_R6_LOWER(r10)
+	lis	r7,(64*1024*1024)@h
+	li	r8,0
+	li	r9,0
+
+	/* load up the pir */
+	lwz	r0,ENTRY_PIR(r10)
+	mtspr	SPRN_PIR,r0
+	mfspr	r0,SPRN_PIR
+	stw	r0,ENTRY_PIR(r10)
+
+	mtspr	IVPR,r12
+/*
+ * Coming here, we know the cpu has one TLB mapping in TLB1[0]
+ * which maps 0xfffff000-0xffffffff one-to-one.  We set up a
+ * second mapping that maps addr 1:1 for 64M, and then we jump to
+ * addr
+ */
+	lis	r10,(MAS0_TLBSEL(1)|MAS0_ESEL(0))@h
+	mtspr	SPRN_MAS0,r10
+	lis	r10,(MAS1_VALID|MAS1_IPROT)@h
+	ori	r10,r10,(MAS1_TSIZE(BOOKE_PAGESZ_64M))@l
+	mtspr	SPRN_MAS1,r10
+	/* WIMGE = 0b00000 for now */
+	mtspr	SPRN_MAS2,r12
+	ori	r12,r12,(MAS3_SX|MAS3_SW|MAS3_SR)
+	mtspr	SPRN_MAS3,r12
+	tlbwe
+
+/* Now we have another mapping for this page, so we jump to that
+ * mapping
+ */
+	mtspr	SPRN_SRR1,r13
+	rfi
+
+	/*
+	 * Allocate some space for the SDRAM address of the bootpg.
+	 * This variable has to be in the boot page so that it can
+	 * be accessed by secondary cores when they come out of reset.
+	 */
+	.globl __bootpg_addr
+__bootpg_addr:
+	.long	0
+
+	.align L1_CACHE_SHIFT
+	.globl __spin_table
+__spin_table:
+	.space MAX_CPUS*ENTRY_SIZE
+
+	/* Fill in the empty space.  The actual reset vector is
+	 * the last word of the page */
+__secondary_start_code_end:
+	.space 4092 - (__secondary_start_code_end - __secondary_start_page)
+__secondary_reset_vector:
+	b	__secondary_start_page
diff --git a/arch/ppc/cpu-85xx/resetvec.S b/arch/ppc/cpu-85xx/resetvec.S
new file mode 100644
index 0000000..29555d4
--- /dev/null
+++ b/arch/ppc/cpu-85xx/resetvec.S
@@ -0,0 +1,2 @@
+	.section .resetvec,"ax"
+	b _start_e500
diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
new file mode 100644
index 0000000..9fde9cd
--- /dev/null
+++ b/arch/ppc/cpu-85xx/start.S
@@ -0,0 +1,1092 @@
+/*
+ * Copyright 2004, 2007-2011 Freescale Semiconductor, Inc.
+ * Copyright (C) 2003  Motorola,Inc.
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/*
+ * U-Boot Startup Code for Motorola 85xx PowerPC based Embedded Boards
+ *
+ * The processor starts at 0xfffffffc and the code is first executed in the
+ * last 4K page(0xfffff000-0xffffffff) in flash/rom.
+ */
+
+#include <config.h>
+#include <asm/config.h>
+#include <mach/mpc85xx.h>
+
+#include <asm/processor.h>
+#include <asm/ppc_asm.tmpl>
+#include <asm/ppc_defs.h>
+
+#include <asm/cache.h>
+#include <asm/mmu.h>
+
+#undef	MSR_KERNEL
+#define MSR_KERNEL ( MSR_ME )	/* Machine Check */
+
+/*
+ * Set up GOT: Global Offset Table
+ *
+ * Use r12 to access the GOT
+ */
+	START_GOT
+	GOT_ENTRY(_GOT2_TABLE_)
+	GOT_ENTRY(_FIXUP_TABLE_)
+
+	GOT_ENTRY(_start)
+	GOT_ENTRY(_start_of_vectors)
+	GOT_ENTRY(_end_of_vectors)
+	GOT_ENTRY(transfer_to_handler)
+	GOT_ENTRY(__init_end)
+	GOT_ENTRY(_end)
+	GOT_ENTRY(__bss_start)
+	END_GOT
+
+/*
+ * e500 Startup -- after reset only the last 4KB of the effective
+ * address space is mapped in the MMU L2 TLB1 Entry0. The .bootpg
+ * section is located at THIS LAST page and basically does three
+ * things: clear some registers, set up exception tables and
+ * add more TLB entries for 'larger spaces'(e.g. the boot rom) to
+ * continue the boot procedure.
+ * Once the boot rom is mapped by TLB entries we can proceed
+ * with normal startup.
+ */
+
+	.section .bootpg,"ax"
+	.globl _start_e500
+
+_start_e500:
+
+/* clear registers/arrays not reset by hardware */
+
+	/* L1 */
+	li	r0,2
+	mtspr	L1CSR0,r0	/* invalidate d-cache */
+	mtspr	L1CSR1,r0	/* invalidate i-cache */
+
+	mfspr	r1,DBSR
+	mtspr	DBSR,r1		/* Clear all valid bits */
+
+	/* Enable/invalidate the I-Cache */
+	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
+	ori	r2,r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@l
+	mtspr	SPRN_L1CSR1,r2
+1:
+	mfspr	r3,SPRN_L1CSR1
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR1_CPE|L1CSR1_ICE)@h
+	ori	r3,r3,(L1CSR1_CPE|L1CSR1_ICE)@l
+	mtspr	SPRN_L1CSR1,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR1
+	andi.	r1,r3,L1CSR1_ICE@l
+	beq	2b
+
+	/* Enable/invalidate the D-Cache */
+	lis	r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@h
+	ori	r2,r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@l
+	mtspr	SPRN_L1CSR0,r2
+1:
+	mfspr	r3,SPRN_L1CSR0
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR0_CPE|L1CSR0_DCE)@h
+	ori	r3,r3,(L1CSR0_CPE|L1CSR0_DCE)@l
+	mtspr	SPRN_L1CSR0,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR0
+	andi.	r1,r3,L1CSR0_DCE@l
+	beq	2b
+
+	/* Setup interrupt vectors */
+	lis	r1,TEXT_BASE@h
+	mtspr	IVPR,r1
+
+	li	r1,0x0100
+	mtspr	IVOR0,r1	/* 0: Critical input */
+	li	r1,0x0200
+	mtspr	IVOR1,r1	/* 1: Machine check */
+	li	r1,0x0300
+	mtspr	IVOR2,r1	/* 2: Data storage */
+	li	r1,0x0400
+	mtspr	IVOR3,r1	/* 3: Instruction storage */
+	li	r1,0x0500
+	mtspr	IVOR4,r1	/* 4: External interrupt */
+	li	r1,0x0600
+	mtspr	IVOR5,r1	/* 5: Alignment */
+	li	r1,0x0700
+	mtspr	IVOR6,r1	/* 6: Program check */
+	li	r1,0x0800
+	mtspr	IVOR7,r1	/* 7: floating point unavailable */
+	li	r1,0x0900
+	mtspr	IVOR8,r1	/* 8: System call */
+	/* 9: Auxiliary processor unavailable(unsupported) */
+	li	r1,0x0a00
+	mtspr	IVOR10,r1	/* 10: Decrementer */
+	li	r1,0x0b00
+	mtspr	IVOR11,r1	/* 11: Interval timer */
+	li	r1,0x0c00
+	mtspr	IVOR12,r1	/* 12: Watchdog timer */
+	li	r1,0x0d00
+	mtspr	IVOR13,r1	/* 13: Data TLB error */
+	li	r1,0x0e00
+	mtspr	IVOR14,r1	/* 14: Instruction TLB error */
+	li	r1,0x0f00
+	mtspr	IVOR15,r1	/* 15: Debug */
+
+	/* Clear and set up some registers. */
+	li      r0,0x0000
+	lis	r1,0xffff
+	mtspr	DEC,r0			/* prevent dec exceptions */
+	mttbl	r0			/* prevent fit & wdt exceptions */
+	mttbu	r0
+	mtspr	TSR,r1			/* clear all timer exception status */
+	mtspr	TCR,r0			/* disable all */
+	mtspr	ESR,r0			/* clear exception syndrome register */
+	mtspr	MCSR,r0			/* machine check syndrome register */
+	mtxer	r0			/* clear integer exception register */
+
+	/* Enable Time Base and Select Time Base Clock */
+	lis	r0,HID0_EMCP@h		/* Enable machine check */
+	ori	r0,r0,HID0_TBEN@l	/* Enable Timebase */
+	mtspr	HID0,r0
+
+	li	r0,(HID1_ASTME|HID1_ABE)@l	/* Addr streaming & broadcast */
+	mfspr	r3,PVR
+	andi.	r3,r3, 0xff
+	cmpwi	r3,0x50@l	/* if we are rev 5.0 or greater set MBDD */
+	blt 1f
+	/* Set MBDD bit also */
+	ori r0, r0, HID1_MBDD@l
+1:
+	mtspr	HID1,r0
+
+	/* Enable Branch Prediction */
+#if defined(CFG_BTB)
+	lis	r0,BUCSR_ENABLE@h
+	ori	r0,r0,BUCSR_ENABLE@l
+	mtspr	SPRN_BUCSR,r0
+#endif
+
+	lis     r6,FSL_BOOKE_MAS0(1, 15, 0)@h
+	ori     r6,r6,FSL_BOOKE_MAS0(1, 15, 0)@l
+
+	/* create a temp mapping in AS=1 to the 4M boot window */
+	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_4M)@h
+	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_4M)@l
+
+	lis     r8,FSL_BOOKE_MAS2(TEXT_BASE & 0xffc00000, (MAS2_I|MAS2_G))@h
+	ori     r8,r8,FSL_BOOKE_MAS2(TEXT_BASE & 0xffc00000, (MAS2_I|MAS2_G))@l
+
+	/* The 85xx has the default boot window 0xff800000 - 0xffffffff */
+	lis     r9,FSL_BOOKE_MAS3(0xffc00000, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(0xffc00000, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@l
+
+	mtspr   MAS0,r6
+	mtspr   MAS1,r7
+	mtspr   MAS2,r8
+	mtspr   MAS3,r9
+	isync
+	msync
+	tlbwe
+
+	/* create a temp mapping in AS=1 to the stack */
+	lis     r6,FSL_BOOKE_MAS0(1, 14, 0)@h
+	ori     r6,r6,FSL_BOOKE_MAS0(1, 14, 0)@l
+
+	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_16K)@h
+	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_16K)@l
+
+	lis     r8,FSL_BOOKE_MAS2(CFG_INIT_RAM_ADDR, 0)@h
+	ori     r8,r8,FSL_BOOKE_MAS2(CFG_INIT_RAM_ADDR, 0)@l
+
+	lis     r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR, 0,
+                                  (MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR, 0,
+                                     (MAS3_SX|MAS3_SW|MAS3_SR))@l
+
+	mtspr   MAS0,r6
+	mtspr   MAS1,r7
+	mtspr   MAS2,r8
+	mtspr   MAS3,r9
+	isync
+	msync
+	tlbwe
+
+	lis	r6,MSR_IS|MSR_DS@h
+	ori	r6,r6,MSR_IS|MSR_DS@l
+	lis	r7,switch_as@h
+	ori	r7,r7,switch_as@l
+
+	mtspr	SPRN_SRR0,r7
+	mtspr	SPRN_SRR1,r6
+	rfi
+
+switch_as:
+/* L1 DCache is used for initial RAM */
+
+	/* Allocate initial RAM in data cache.  */
+	lis	r3,CFG_INIT_RAM_ADDR@h
+	ori	r3,r3,CFG_INIT_RAM_ADDR@l
+	mfspr	r2, L1CFG0
+	andi.	r2, r2, 0x1ff
+	/* cache size * 1024 / (2 * L1 line size) */
+	slwi	r2, r2, (10 - 1 - L1_CACHE_SHIFT)
+	mtctr	r2
+	li	r0,0
+1:
+	dcbz	r0,r3
+	dcbtls	0,r0,r3
+	addi	r3,r3,CACHELINE_SIZE
+	bdnz	1b
+
+	/*
+	 * Jump out the last 4K page and continue to 'normal' start.
+	 * Calculate absolute address in FLASH and jump there.
+	 */
+	lis	r3,TEXT_BASE@h
+	ori	r3,r3,TEXT_BASE@l
+	addi	r3,r3,_start_cont - _start + _START_OFFSET
+	mtlr	r3
+	blr
+
+	.text
+	.globl	_start
+_start:
+	.long	0x62626F78		/* Magic Number */
+
+	.align	4
+	.globl	_start_cont
+_start_cont:
+	/* Setup the stack in initial RAM,could be L2-as-SRAM or L1 dcache */
+	lis	r1,CFG_INIT_RAM_ADDR@h
+	ori	r1,r1,CFG_INIT_SP_OFFSET@l
+
+	li	r0,0
+	stwu	r0,-4(r1)
+	stwu	r0,-4(r1)		/* Terminate call chain */
+
+	stwu	r1,-8(r1)		/* Save back chain and move SP */
+	lis	r0,RESET_VECTOR@h	/* Address of reset vector */
+	ori	r0,r0,RESET_VECTOR@l
+	stwu	r1,-8(r1)		/* Save back chain and move SP */
+	stw	r0,+12(r1)		/* Save return addr (underflow vect) */
+
+	GET_GOT
+	bl	cpu_init_early_f
+
+	/* switch back to AS = 0 */
+	lis	r3,(MSR_CE|MSR_ME|MSR_DE)@h
+	ori	r3,r3,(MSR_CE|MSR_ME|MSR_DE)@l
+	mtmsr	r3
+	isync
+
+	bl      cpu_init_f
+	bl      initdram
+	b       relocate_code
+	isync
+
+	/* NOTREACHED - board_init_f() does not return */
+
+	. = EXC_OFF_SYS_RESET
+	.globl	_start_of_vectors
+_start_of_vectors:
+
+/* Critical input. */
+	CRIT_EXCEPTION(0x0100, CriticalInput, CritcalInputException)
+
+/* Machine check */
+	MCK_EXCEPTION(0x200, MachineCheck, MachineCheckException)
+
+/* Data Storage exception. */
+	STD_EXCEPTION(0x0300, DataStorage, UnknownException)
+
+/* Instruction Storage exception. */
+	STD_EXCEPTION(0x0400, InstStorage, UnknownException)
+
+/* External Interrupt exception. */
+#ifdef CFG_USE_IRQ
+	STD_EXCEPTION(0x0500, ExtInterrupt, ExtIntException)
+#endif
+
+/* Alignment exception. */
+	. = 0x0600
+Alignment:
+	EXCEPTION_PROLOG(SRR0, SRR1)
+	mfspr	r4,DAR
+	stw	r4,_DAR(r21)
+	mfspr	r5,DSISR
+	stw	r5,_DSISR(r21)
+	addi	r3,r1,STACK_FRAME_OVERHEAD
+	EXC_XFER_TEMPLATE(Alignment, AlignmentException, MSR_KERNEL, COPY_EE)
+
+/* Program check exception */
+	. = 0x0700
+ProgramCheck:
+	EXCEPTION_PROLOG(SRR0, SRR1)
+	addi	r3,r1,STACK_FRAME_OVERHEAD
+	EXC_XFER_TEMPLATE(ProgramCheck, ProgramCheckException,
+		MSR_KERNEL, COPY_EE)
+
+	/* No FPU on MPC85xx.  This exception is not supposed to happen.
+	*/
+	STD_EXCEPTION(0x0800, FPUnavailable, UnknownException)
+
+	. = 0x0900
+/*
+ * r0 - SYSCALL number
+ * r3-... arguments
+ */
+SystemCall:
+	addis	r11,r0,0	/* get functions table addr */
+	ori	r11,r11,0	/* Note: this code is patched in trap_init */
+	addis	r12,r0,0	/* get number of functions */
+	ori	r12,r12,0
+
+	cmplw	0,r0,r12
+	bge	1f
+
+	rlwinm	r0,r0,2,0,31	/* fn_addr = fn_tbl[r0] */
+	add	r11,r11,r0
+	lwz	r11,0(r11)
+
+	li	r20,0xd00-4	/* Get stack pointer */
+	lwz	r12,0(r20)
+	subi	r12,r12,12	/* Adjust stack pointer */
+	li	r0,0xc00+_end_back-SystemCall
+	cmplw	0,r0,r12	/* Check stack overflow */
+	bgt	1f
+	stw	r12,0(r20)
+
+	mflr	r0
+	stw	r0,0(r12)
+	mfspr	r0,SRR0
+	stw	r0,4(r12)
+	mfspr	r0,SRR1
+	stw	r0,8(r12)
+
+	li	r12,0xc00+_back-SystemCall
+	mtlr	r12
+	mtspr	SRR0,r11
+
+1:	SYNC
+	rfi
+_back:
+
+	mfmsr	r11			/* Disable interrupts */
+	li	r12,0
+	ori	r12,r12,MSR_EE
+	andc	r11,r11,r12
+	SYNC				/* Some chip revs need this... */
+	mtmsr	r11
+	SYNC
+
+	li	r12,0xd00-4		/* restore regs */
+	lwz	r12,0(r12)
+
+	lwz	r11,0(r12)
+	mtlr	r11
+	lwz	r11,4(r12)
+	mtspr	SRR0,r11
+	lwz	r11,8(r12)
+	mtspr	SRR1,r11
+
+	addi	r12,r12,12		/* Adjust stack pointer */
+	li	r20,0xd00-4
+	stw	r12,0(r20)
+
+	SYNC
+	rfi
+_end_back:
+
+	STD_EXCEPTION(0x0a00, Decrementer, UnknownException)
+	STD_EXCEPTION(0x0b00, IntervalTimer, UnknownException)
+	STD_EXCEPTION(0x0c00, WatchdogTimer, UnknownException)
+
+	STD_EXCEPTION(0x0d00, DataTLBError, UnknownException)
+	STD_EXCEPTION(0x0e00, InstructionTLBError, UnknownException)
+
+	CRIT_EXCEPTION(0x0f00, DebugBreakpoint, DebugException )
+
+	.globl	_end_of_vectors
+_end_of_vectors:
+
+	. = . + (0x100 - ( . & 0xff ))	/* align for debug */
+
+/*
+ * This code finishes saving the registers to the exception frame
+ * and jumps to the appropriate handler for the exception.
+ * Register r21 is pointer into trap frame, r1 has new stack pointer.
+ */
+	.globl	transfer_to_handler
+transfer_to_handler:
+	stw	r22,_NIP(r21)
+	lis	r22,MSR_POW@h
+	andc	r23,r23,r22
+	stw	r23,_MSR(r21)
+	SAVE_GPR(7, r21)
+	SAVE_4GPRS(8, r21)
+	SAVE_8GPRS(12, r21)
+	SAVE_8GPRS(24, r21)
+
+	mflr	r23
+	andi.	r24,r23,0x3f00		/* get vector offset  */
+	stw	r24,TRAP(r21)
+	li	r22,0
+	stw	r22,RESULT(r21)
+	mtspr	SPRG2,r22		/* r1 is now kernel sp */
+
+	lwz	r24,0(r23)		/* virtual address of handler 	*/
+	lwz	r23,4(r23)		/* where to go when done 	*/
+	mtspr	SRR0,r24
+	mtspr	SRR1,r20
+	mtlr	r23
+	SYNC
+	rfi				/* jump to handler, enable MMU  */
+
+int_return:
+	mfmsr	r28		/* Disable interrupts */
+	li	r4,0
+	ori	r4,r4,MSR_EE
+	andc	r28,r28,r4
+	SYNC			/* Some chip revs need this... */
+	mtmsr	r28
+	SYNC
+	lwz	r2,_CTR(r1)
+	lwz	r0,_LINK(r1)
+	mtctr	r2
+	mtlr	r0
+	lwz	r2,_XER(r1)
+	lwz	r0,_CCR(r1)
+	mtspr	XER,r2
+	mtcrf	0xFF,r0
+	REST_10GPRS(3, r1)
+	REST_10GPRS(13, r1)
+	REST_8GPRS(23, r1)
+	REST_GPR(31, r1)
+	lwz	r2,_NIP(r1)	/* Restore environment */
+	lwz	r0,_MSR(r1)
+	mtspr	SRR0,r2
+	mtspr	SRR1,r0
+	lwz	r0,GPR0(r1)
+	lwz	r2,GPR2(r1)
+	lwz	r1,GPR1(r1)
+	SYNC
+	rfi
+
+crit_return:
+	mfmsr	r28		/* Disable interrupts */
+	li	r4,0
+	ori	r4,r4,MSR_EE
+	andc	r28,r28,r4
+	SYNC			/* Some chip revs need this... */
+	mtmsr	r28
+	SYNC
+	lwz	r2,_CTR(r1)
+	lwz	r0,_LINK(r1)
+	mtctr	r2
+	mtlr	r0
+	lwz	r2,_XER(r1)
+	lwz	r0,_CCR(r1)
+	mtspr	XER,r2
+	mtcrf	0xFF,r0
+	REST_10GPRS(3, r1)
+	REST_10GPRS(13, r1)
+	REST_8GPRS(23, r1)
+	REST_GPR(31, r1)
+	lwz	r2,_NIP(r1)	/* Restore environment */
+	lwz	r0,_MSR(r1)
+	mtspr	SPRN_CSRR0,r2
+	mtspr	SPRN_CSRR1,r0
+	lwz	r0,GPR0(r1)
+	lwz	r2,GPR2(r1)
+	lwz	r1,GPR1(r1)
+	SYNC
+	rfci
+
+mck_return:
+	mfmsr	r28		/* Disable interrupts */
+	li	r4,0
+	ori	r4,r4,MSR_EE
+	andc	r28,r28,r4
+	SYNC			/* Some chip revs need this... */
+	mtmsr	r28
+	SYNC
+	lwz	r2,_CTR(r1)
+	lwz	r0,_LINK(r1)
+	mtctr	r2
+	mtlr	r0
+	lwz	r2,_XER(r1)
+	lwz	r0,_CCR(r1)
+	mtspr	XER,r2
+	mtcrf	0xFF,r0
+	REST_10GPRS(3, r1)
+	REST_10GPRS(13, r1)
+	REST_8GPRS(23, r1)
+	REST_GPR(31, r1)
+	lwz	r2,_NIP(r1)	/* Restore environment */
+	lwz	r0,_MSR(r1)
+	mtspr	SPRN_MCSRR0,r2
+	mtspr	SPRN_MCSRR1,r0
+	lwz	r0,GPR0(r1)
+	lwz	r2,GPR2(r1)
+	lwz	r1,GPR1(r1)
+	SYNC
+	rfmci
+
+/*
+ * Cache functions.
+ */
+.globl invalidate_icache
+invalidate_icache:
+	mfspr	r0,L1CSR1
+	ori	r0,r0,L1CSR1_ICFI
+	msync
+	isync
+	mtspr	L1CSR1,r0
+	isync
+	blr				/* entire I cache */
+
+.globl invalidate_dcache
+invalidate_dcache:
+	mfspr	r0,L1CSR0
+	ori	r0,r0,L1CSR0_DCFI
+	msync
+	isync
+	mtspr	L1CSR0,r0
+	isync
+	blr
+
+	.globl	icache_enable
+icache_enable:
+	mflr	r8
+	bl	invalidate_icache
+	mtlr	r8
+	isync
+	mfspr	r4,L1CSR1
+	ori	r4,r4,0x0001
+	oris	r4,r4,0x0001
+	mtspr	L1CSR1,r4
+	isync
+	blr
+
+	.globl	icache_disable
+icache_disable:
+	mfspr	r0,L1CSR1
+	lis	r3,0
+	ori	r3,r3,L1CSR1_ICE
+	andc	r0,r0,r3
+	mtspr	L1CSR1,r0
+	isync
+	blr
+
+	.globl	icache_status
+icache_status:
+	mfspr	r3,L1CSR1
+	andi.	r3,r3,L1CSR1_ICE
+	blr
+
+	.globl	dcache_enable
+dcache_enable:
+	mflr	r8
+	bl	invalidate_dcache
+	mtlr	r8
+	isync
+	mfspr	r0,L1CSR0
+	ori	r0,r0,0x0001
+	oris	r0,r0,0x0001
+	msync
+	isync
+	mtspr	L1CSR0,r0
+	isync
+	blr
+
+	.globl	dcache_disable
+dcache_disable:
+	mfspr	r3,L1CSR0
+	lis	r4,0
+	ori	r4,r4,L1CSR0_DCE
+	andc	r3,r3,r4
+	mtspr	L1CSR0,r3
+	isync
+	blr
+
+	.globl	dcache_status
+dcache_status:
+	mfspr	r3,L1CSR0
+	andi.	r3,r3,L1CSR0_DCE
+	blr
+
+	.globl get_pir
+get_pir:
+	mfspr	r3,PIR
+	blr
+
+	.globl get_pvr
+get_pvr:
+	mfspr	r3,PVR
+	blr
+
+	.globl get_svr
+get_svr:
+	mfspr	r3,SVR
+	blr
+
+	.globl wr_tcr
+wr_tcr:
+	mtspr	TCR,r3
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 in8
+ * Description:	 Input 8 bits
+ *--------------------------------------------------------------------------- */
+	.globl	in8
+in8:
+	lbz	r3,0x0000(r3)
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 out8
+ * Description:	 Output 8 bits
+ *--------------------------------------------------------------------------- */
+	.globl	out8
+out8:
+	stb	r4,0x0000(r3)
+	sync
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 out16
+ * Description:	 Output 16 bits
+ *--------------------------------------------------------------------------- */
+	.globl	out16
+out16:
+	sth	r4,0x0000(r3)
+	sync
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 out16r
+ * Description:	 Byte reverse and output 16 bits
+ *--------------------------------------------------------------------------- */
+	.globl	out16r
+out16r:
+	sthbrx	r4,r0,r3
+	sync
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 out32
+ * Description:	 Output 32 bits
+ *--------------------------------------------------------------------------- */
+	.globl	out32
+out32:
+	stw	r4,0x0000(r3)
+	sync
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 out32r
+ * Description:	 Byte reverse and output 32 bits
+ *--------------------------------------------------------------------------- */
+	.globl	out32r
+out32r:
+	stwbrx	r4,r0,r3
+	sync
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 in16
+ * Description:	 Input 16 bits
+ *--------------------------------------------------------------------------- */
+	.globl	in16
+in16:
+	lhz	r3,0x0000(r3)
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 in16r
+ * Description:	 Input 16 bits and byte reverse
+ *--------------------------------------------------------------------------- */
+	.globl	in16r
+in16r:
+	lhbrx	r3,r0,r3
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 in32
+ * Description:	 Input 32 bits
+ *--------------------------------------------------------------------------- */
+	.globl	in32
+in32:
+	lwz	3,0x0000(3)
+	blr
+
+/*---------------------------------------------------------------------------
+ * Function:	 in32r
+ * Description:	 Input 32 bits and byte reverse
+ *--------------------------------------------------------------------------- */
+	.globl	in32r
+in32r:
+	lwbrx	r3,r0,r3
+	blr
+
+/*
+ * void write_tlb(mas0, mas1, mas2, mas3, mas7)
+ */
+	.globl	write_tlb
+write_tlb:
+	mtspr	MAS0,r3
+	mtspr	MAS1,r4
+	mtspr	MAS2,r5
+	mtspr	MAS3,r6
+	li	r3,0
+	isync
+	tlbwe
+	msync
+	isync
+	blr
+
+/*
+ * void relocate_code (end of ram)
+ *
+ * This "function" does not return, instead it continues in RAM
+ * after relocating the monitor code.
+ *
+ * r3 = dest
+ * r4 = src
+ * r5 = length in bytes
+ * r6 = cachelinesize
+ */
+	.globl	relocate_code
+relocate_code:
+	mr	r9, r3			/* Save end of RAM 	*/
+
+	lis	r10, (_end - _start)@h	/* Size			*/
+	ori	r10, r10, (_end - _start)@l
+	sub	r3,  r3, r10
+
+	/* 64KB aligned */
+	lis	r10, 0xffff0000@h
+	ori	r10, r10, 0xffff0000@l
+	and	r3, r3, r10
+
+	mr	r1, r3		/* Set new stack just below barebox code */
+	mr	r10, r3 	/* Save copy of Destination Address */
+
+	bl 	calc_source
+calc_source:
+	mfspr	r4, LR	/* r4 = address in memory (flash, RAM) */
+	subi	r4, r4, (calc_source - _start)
+
+	GET_GOT
+	lis	r5, __init_size@h
+	ori	r5, r5, __init_size@l
+
+	li	r6,CACHELINE_SIZE		/* Cache Line Size	*/
+
+	/*
+	 * Fix GOT pointer:
+	 *
+	 * New GOT-PTR = (old GOT-PTR - TEXT_BASE) + Destination Address
+	 *
+	 * Offset:
+	 */
+	sub	r15,r10,r4
+
+	/* First our own GOT */
+	add	r14,r14,r15
+	/* then the one used by the C code */
+	add	r30,r30,r15
+
+	/*
+	 * Now relocate code
+	 */
+
+	cmplw	cr1,r3,r4
+	addi	r0,r5,3
+	srwi.	r0,r0,2
+	beq	cr1,4f		/* In place copy is not necessary	*/
+	beq	7f		/* Protect against 0 count		*/
+	mtctr	r0
+	bge	cr1,2f
+
+	la	r8,-4(r4)
+	la	r7,-4(r3)
+1:	lwzu	r0,4(r8)
+	stwu	r0,4(r7)
+	bdnz	1b
+	b	4f
+
+2:	slwi	r0,r0,2
+	add	r8,r4,r0
+	add	r7,r3,r0
+3:	lwzu	r0,-4(r8)
+	stwu	r0,-4(r7)
+	bdnz	3b
+
+/*
+ * Now flush the cache: note that we must start from a cache aligned
+ * address. Otherwise we might miss one cache line.
+ */
+4:	cmpwi	r6,0
+	add	r5,r3,r5
+	beq	7f		/* Always flush prefetch queue in any case */
+	subi	r0,r6,1
+	andc	r3,r3,r0
+	mr	r4,r3
+5:	dcbst	0,r4
+	add	r4,r4,r6
+	cmplw	r4,r5
+	blt	5b
+	sync			/* Wait for all dcbst to complete on bus */
+	mr	r4,r3
+6:	icbi	0,r4
+	add	r4,r4,r6
+	cmplw	r4,r5
+	blt	6b
+7:	sync			/* Wait for all icbi to complete on bus */
+	isync
+
+	/*
+	 * Re-point the IVPR at RAM
+	 */
+	mtspr	IVPR,r10
+
+/*
+ * We are done. Do not return, instead branch to second part of board
+ * initialization, now running from RAM.
+ */
+
+	addi	r0,r10,in_ram - _start + _START_OFFSET
+	mtlr	r0
+	blr				/* NEVER RETURNS! */
+
+	.globl	in_ram
+in_ram:
+
+	/*
+	 * Relocation Function, r14 point to got2+0x8000
+	 *
+	 * Adjust got2 pointers, no need to check for 0, this code
+	 * already puts a few entries in the table.
+	 */
+	li	r0,__got2_entries@sectoff@l
+	la	r3,GOT(_GOT2_TABLE_)
+	lwz	r11,GOT(_GOT2_TABLE_)
+	mtctr	r0
+	sub	r11,r3,r11
+	addi	r3,r3,-4
+1:	lwzu	r0,4(r3)
+	cmpwi	r0,0
+	beq-	2f
+	add	r0,r0,r11
+	stw	r0,0(r3)
+2:	bdnz	1b
+
+	/*
+	 * Now adjust the fixups and the pointers to the fixups
+	 * in case we need to move ourselves again.
+	 */
+	li	r0,__fixup_entries@sectoff@l
+	lwz	r3,GOT(_FIXUP_TABLE_)
+	cmpwi	r0,0
+	mtctr	r0
+	addi	r3,r3,-4
+	beq	4f
+3:	lwzu	r4,4(r3)
+	lwzux	r0,r4,r11
+	cmpwi	r0,0
+	add	r0,r0,r11
+	stw	r4,0(r3)
+	beq-	5f
+	stw	r0,0(r4)
+5:	bdnz	3b
+4:
+clear_bss:
+	/*
+	 * Now clear BSS segment
+	 */
+	lwz	r3,GOT(__bss_start)
+	lwz	r4,GOT(_end)
+
+	cmplw	0,r3,r4
+	beq	6f
+
+	li	r0,0
+5:
+	stw	r0,0(r3)
+	addi	r3,r3,4
+	cmplw	0,r3,r4
+	bne	5b
+6:
+	mr 	r3, r10		/* Destination Address      */
+	bl 	board_init_r
+
+	/*
+	 * Copy exception vector code to low memory
+	 *
+	 * r3: dest_addr
+	 * r7: source address, r8: end address, r9: target address
+	 */
+	.globl	trap_init
+trap_init:
+	mflr	r4			/* save link register		*/
+	GET_GOT
+	lwz	r7,GOT(_start_of_vectors)
+	lwz	r8,GOT(_end_of_vectors)
+
+	li	r9,0x100		/* reset vector always at 0x100 */
+
+	cmplw	0,r7,r8
+	bgelr				/* return if r7>=r8 - just in case */
+1:
+	lwz	r0,0(r7)
+	stw	r0,0(r9)
+	addi	r7,r7,4
+	addi	r9,r9,4
+	cmplw	0,r7,r8
+	bne	1b
+
+	/*
+	 * relocate `hdlr' and `int_return' entries
+	 */
+	li	r7,.L_CriticalInput - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_MachineCheck - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_DataStorage - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_InstStorage - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_Alignment - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_ProgramCheck - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_FPUnavailable - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_Decrementer - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_IntervalTimer - _start + _START_OFFSET
+	li	r8,_end_of_vectors - _start + _START_OFFSET
+2:
+	bl	trap_reloc
+	addi	r7,r7,0x100		/* next exception vector	*/
+	cmplw	0,r7,r8
+	blt	2b
+
+	lis	r7,0x0
+	mtspr	IVPR,r7
+
+	mtlr	r4			/* restore link register	*/
+	blr
+
+
+.globl _text_base
+_text_base:
+	.long TEXT_BASE
+
+.globl unlock_ram_in_cache
+unlock_ram_in_cache:
+	/* invalidate the INIT_RAM section */
+	lis	r3,(CFG_INIT_RAM_ADDR & ~(CACHELINE_SIZE-1))@h
+	ori	r3,r3,(CFG_INIT_RAM_ADDR & ~(CACHELINE_SIZE-1))@l
+	mfspr	r4,L1CFG0
+	andi.	r4,r4,0x1ff
+	slwi	r4,r4,(10 - 1 - L1_CACHE_SHIFT)
+	mtctr	r4
+1:	dcbi	r0,r3
+	addi	r3,r3,CACHELINE_SIZE
+	bdnz	1b
+	sync
+
+	/* Invalidate the TLB entries for the cache */
+	lis	r3,CFG_INIT_RAM_ADDR@h
+	ori	r3,r3,CFG_INIT_RAM_ADDR@l
+	tlbivax	0,r3
+	addi	r3,r3,0x1000
+	tlbivax	0,r3
+	addi	r3,r3,0x1000
+	tlbivax	0,r3
+	addi	r3,r3,0x1000
+	tlbivax	0,r3
+	isync
+	blr
+
+.globl flush_dcache
+flush_dcache:
+	mfspr	r3,SPRN_L1CFG0
+
+	rlwinm	r5,r3,9,3	/* Extract cache block size */
+	twlgti	r5,1		/* Only 32 and 64 byte cache blocks
+				 * are currently defined.
+				 */
+	li	r4,32
+	subfic	r6,r5,2		/* r6 = log2(1KiB / cache block size) -
+				 *      log2(number of ways)
+				 */
+	slw	r5,r4,r5	/* r5 = cache block size */
+
+	rlwinm	r7,r3,0,0xff	/* Extract number of KiB in the cache */
+	mulli	r7,r7,13	/* An 8-way cache will require 13
+				 * loads per set.
+				 */
+	slw	r7,r7,r6
+
+	/* save off HID0 and set DCFA */
+	mfspr	r8,SPRN_HID0
+	ori	r9,r8,HID0_DCFA@l
+	mtspr	SPRN_HID0,r9
+	isync
+
+	lis	r4,0
+	mtctr	r7
+
+1:	lwz	r3,0(r4)	/* Load... */
+	add	r4,r4,r5
+	bdnz	1b
+
+	msync
+	lis	r4,0
+	mtctr	r7
+
+1:	dcbf	0,r4		/* ...and flush. */
+	add	r4,r4,r5
+	bdnz	1b
+
+	/* restore HID0 */
+	mtspr	SPRN_HID0,r8
+	isync
+
+	blr
+
+.globl setup_ivors
+setup_ivors:
+
+#include "fixed_ivor.S"
+	blr
diff --git a/arch/ppc/cpu-85xx/tlb.c b/arch/ppc/cpu-85xx/tlb.c
new file mode 100644
index 0000000..614fea7
--- /dev/null
+++ b/arch/ppc/cpu-85xx/tlb.c
@@ -0,0 +1,177 @@
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
+#include <asm/config_mpc85xx.h>
+#include <asm/mmu.h>
+#include <asm/bitops.h>
+
+void invalidate_tlb(u8 tlb)
+{
+	if (tlb == 0)
+		mtspr(MMUCSR0, 0x4);
+	if (tlb == 1)
+		mtspr(MMUCSR0, 0x2);
+}
+
+void init_tlbs(void)
+{
+	int i;
+
+	for (i = 0; i < num_tlb_entries; i++) {
+		write_tlb(tlb_table[i].mas0,
+			  tlb_table[i].mas1,
+			  tlb_table[i].mas2,
+			  tlb_table[i].mas3,
+			  tlb_table[i].mas7);
+	}
+
+	return ;
+}
+
+static int find_free_tlbcam(void)
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
+void set_tlb(u8 tlb, u32 epn, u64 rpn,
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
+	write_tlb(_mas0, _mas1, _mas2, _mas3, _mas7);
+
+}
+
+void disable_tlb(u8 esel)
+{
+	mtspr(MAS0, FSL_BOOKE_MAS0(1, esel, 0));
+	mtspr(MAS1, 0);
+	mtspr(MAS2, 0);
+	mtspr(MAS3, 0);
+	asm volatile("isync;msync;tlbwe;isync");
+}
+
+static void tlbsx(const unsigned *addr)
+{
+	__asm__ __volatile__ ("tlbsx 0,%0" : : "r" (addr), "m" (*addr));
+}
+
+int find_tlb_idx(void *addr, u8 tlbsel)
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
+	panic("The TLB was not found");
+}
+
+static unsigned int setup_ddr_tlbs_phys(phys_addr_t p_addr,
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
+		int ram_tlb_index = find_free_tlbcam();
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
+		set_tlb(1, ram_tlb_address, p_addr,
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
+unsigned int setup_ddr_tlbs(unsigned int memsize_in_meg)
+{
+	return setup_ddr_tlbs_phys(CFG_SDRAM_BASE, memsize_in_meg);
+}
diff --git a/arch/ppc/cpu-85xx/traps.c b/arch/ppc/cpu-85xx/traps.c
new file mode 100644
index 0000000..a28a2ce
--- /dev/null
+++ b/arch/ppc/cpu-85xx/traps.c
@@ -0,0 +1,297 @@
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
+#include <kgdb.h>
+#include <asm/processor.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <mach/immap_85xx.h>
+
+int machinecheck_count;
+int machinecheck_error;
+
+/*
+ * End of addressable memory.
+ */
+#define END_OF_MEM (get_effective_memsize())
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
+void ExtIntException(struct pt_regs *regs)
+{
+	void __iomem *pic = (void __iomem *)(MPC8xxx_PIC_ADDR);
+	uint vect;
+
+#if defined(CONFIG_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+	printf("External Interrupt Exception at PC: %lx, SR: %lx, vector=%lx",
+	       regs->nip, regs->msr, regs->trap);
+	vect = in_be32(pic + MPC85xx_PIC_IACK0_OFFSET);
+	printf(" irq IACK0@%05x=%d\n", (int)(pic + MPC85xx_PIC_IACK0_OFFSET),
+		vect);
+	show_regs(regs);
+	print_backtrace((unsigned long *)regs->gpr[1]);
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
diff --git a/arch/ppc/include/asm/config.h b/arch/ppc/include/asm/config.h
new file mode 100644
index 0000000..9c4458b
--- /dev/null
+++ b/arch/ppc/include/asm/config.h
@@ -0,0 +1,44 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef _ASM_CONFIG_H_
+#define _ASM_CONFIG_H_
+
+#ifdef CONFIG_MPC85xx
+#include <asm/config_mpc85xx.h>
+#endif
+
+#ifndef MAX_MEM_MAPPED
+#if defined(CONFIG_E500)
+#define MAX_MEM_MAPPED	((phys_size_t)(2 << 30))
+#endif
+#endif
+
+/*
+ * Provide a default boot page translation virtual address that lines up with
+ * Freescale's default e500 reset page.
+ */
+#if (defined(CONFIG_E500) && defined(CONFIG_MP))
+#ifndef BPTR_VIRT_ADDR
+#define BPTR_VIRT_ADDR	0xfffff000
+#endif
+#endif
+
+#endif /* _ASM_CONFIG_H_ */
diff --git a/arch/ppc/include/asm/config_mpc85xx.h b/arch/ppc/include/asm/config_mpc85xx.h
new file mode 100644
index 0000000..5da4f2f
--- /dev/null
+++ b/arch/ppc/include/asm/config_mpc85xx.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2011 Freescale Semiconductor, Inc.
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
+#ifndef _ASM_MPC85xx_CONFIG_H_
+#define _ASM_MPC85xx_CONFIG_H_
+
+/* Number of TLB CAM entries we have on FSL Book-E chips */
+#if defined(CONFIG_E500)
+#define NUM_TLBCAMS	16
+#endif
+
+#if defined(CONFIG_P2020)
+#define MAX_CPUS	2
+#define FSL_NUM_LAWS	12
+#define FSL_SEC_COMPAT	2
+#else
+#error Processor type not defined for this platform
+#endif
+
+#endif /* _ASM_MPC85xx_CONFIG_H_ */
diff --git a/arch/ppc/include/asm/e500.h b/arch/ppc/include/asm/e500.h
new file mode 100644
index 0000000..ceb28cd
--- /dev/null
+++ b/arch/ppc/include/asm/e500.h
@@ -0,0 +1,39 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2003 Motorola,Inc.
+ * Xianghua Xiao(x.xiao@motorola.com)
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
+#ifndef __E500_H__
+#define __E500_H__
+
+#ifndef __ASSEMBLY__
+#include <asm/config_mpc85xx.h>
+
+struct sys_info {
+	unsigned long freqProcessor[MAX_CPUS];
+	unsigned long freqSystemBus;
+	unsigned long freqDDRBus;
+	unsigned long freqLocalBus;
+};
+
+#endif  /* _ASMLANGUAGE */
+
+#define RESET_VECTOR	0xfffffffc
+
+#endif	/* __E500_H__ */
diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/ppc/include/asm/fsl_ddr_sdram.h
new file mode 100644
index 0000000..5de2d72
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_ddr_sdram.h
@@ -0,0 +1,34 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2008-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef FSL_DDR_MEMCTL_H
+#define FSL_DDR_MEMCTL_H
+
+/*
+ * DDR_SDRAM_CFG - DDR SDRAM Control Configuration
+ */
+#define SDRAM_CFG_MEM_EN		0x80000000
+#define SDRAM_CFG_SREN			0x40000000
+#define SDRAM_CFG_ECC_EN		0x20000000
+#define SDRAM_CFG_RD_EN			0x10000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR1	0x02000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR2	0x03000000
+#define SDRAM_CFG_SDRAM_TYPE_MASK	0x07000000
+#define SDRAM_CFG_SDRAM_TYPE_SHIFT	24
+#define SDRAM_CFG_DYN_PWR		0x00200000
+#define SDRAM_CFG_32_BE			0x00080000
+#define SDRAM_CFG_8_BE			0x00040000
+#define SDRAM_CFG_NCAP			0x00020000
+#define SDRAM_CFG_2T_EN			0x00008000
+#define SDRAM_CFG_BI			0x00000001
+
+extern phys_size_t get_effective_memsize(void);
+extern phys_size_t fixed_sdram(void);
+
+#endif
diff --git a/arch/ppc/include/asm/fsl_law.h b/arch/ppc/include/asm/fsl_law.h
new file mode 100644
index 0000000..14f29e5
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_law.h
@@ -0,0 +1,91 @@
+/*
+ * Copyright 2008-2010 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef _FSL_LAW_H_
+#define _FSL_LAW_H_
+
+#include <asm/io.h>
+
+#define LAW_EN	0x80000000
+
+#define SET_LAW_ENTRY(idx, a, sz, trgt) \
+	{ .index = idx, .addr = a, .size = sz, .trgt_id = trgt }
+
+#define SET_LAW(a, sz, trgt) \
+	{ .index = -1, .addr = a, .size = sz, .trgt_id = trgt }
+
+enum law_size {
+	LAW_SIZE_4K = 0xb,
+	LAW_SIZE_8K,
+	LAW_SIZE_16K,
+	LAW_SIZE_32K,
+	LAW_SIZE_64K,
+	LAW_SIZE_128K,
+	LAW_SIZE_256K,
+	LAW_SIZE_512K,
+	LAW_SIZE_1M,
+	LAW_SIZE_2M,
+	LAW_SIZE_4M,
+	LAW_SIZE_8M,
+	LAW_SIZE_16M,
+	LAW_SIZE_32M,
+	LAW_SIZE_64M,
+	LAW_SIZE_128M,
+	LAW_SIZE_256M,
+	LAW_SIZE_512M,
+	LAW_SIZE_1G,
+	LAW_SIZE_2G,
+	LAW_SIZE_4G,
+	LAW_SIZE_8G,
+	LAW_SIZE_16G,
+	LAW_SIZE_32G,
+};
+
+#define law_size_bits(sz)	(__ilog2_u64(sz) - 1)
+#define lawar_size(x)	(1ULL << (((x) & 0x3f) + 1))
+
+enum law_trgt_if {
+	LAW_TRGT_IF_PCI = 0x00,
+	LAW_TRGT_IF_PCI_2 = 0x01,
+	LAW_TRGT_IF_PCIE_1 = 0x02,
+#if !defined(CONFIG_P2020)
+	LAW_TRGT_IF_PCIE_3 = 0x03,
+#endif
+	LAW_TRGT_IF_LBC = 0x04,
+	LAW_TRGT_IF_CCSR = 0x08,
+	LAW_TRGT_IF_DDR_INTRLV = 0x0b,
+	LAW_TRGT_IF_RIO = 0x0c,
+	LAW_TRGT_IF_RIO_2 = 0x0d,
+	LAW_TRGT_IF_DDR = 0x0f,
+	LAW_TRGT_IF_DDR_2 = 0x16,	/* 2nd controller */
+};
+#define LAW_TRGT_IF_DDR_1	LAW_TRGT_IF_DDR
+#define LAW_TRGT_IF_PCI_1	LAW_TRGT_IF_PCI
+#define LAW_TRGT_IF_PCIX	LAW_TRGT_IF_PCI
+#define LAW_TRGT_IF_PCIE_2	LAW_TRGT_IF_PCI_2
+#define LAW_TRGT_IF_RIO_1	LAW_TRGT_IF_RIO
+
+
+#if defined(CONFIG_P2020)
+#define LAW_TRGT_IF_PCIE_3	LAW_TRGT_IF_PCI
+#endif
+
+struct law_entry {
+	int index;
+	phys_addr_t addr;
+	enum law_size size;
+	enum law_trgt_if trgt_id;
+};
+
+extern int set_ddr_laws(u64 start, u64 sz, enum law_trgt_if id);
+extern void init_laws(void);
+
+/* define in board code */
+extern struct law_entry law_table[];
+extern int num_law_entries;
+#endif
diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
new file mode 100644
index 0000000..8c6b08a
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -0,0 +1,67 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright (C) 2004-2008,2010-2011 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#ifndef __ASM_PPC_FSL_LBC_H
+#define __ASM_PPC_FSL_LBC_H
+
+#include <config.h>
+#include <common.h>
+
+/*
+ * BR - Base Registers
+ */
+#define BR_PS				0x00001800
+#define BR_PS_SHIFT			11
+#define BR_PS_8				0x00000800	/* Port Size 8 bit */
+#define BR_PS_16			0x00001000	/* Port Size 16 bit */
+#define BR_PS_32			0x00001800	/* Port Size 32 bit */
+#define BR_V				0x00000001
+#define BR_V_SHIFT			0
+
+/* Convert an address into the right format for the BR registers */
+#define BR_PHYS_ADDR(x) ((x) & 0xffff8000)
+
+/* helpers to convert values into an OR address mask (GPCM mode) */
+#if 0
+#define P2SZ_TO_AM(s)	((~((s) - 1)) & 0xffff8000)	/* must be pow of 2 */
+#define MEG_TO_AM(m)	P2SZ_TO_AM((m) << 20)
+#endif
+
+/*
+ * CLKDIV is five bits only on 8536, 8572, and 8610, so far, but the fifth bit
+ * should always be zero on older parts that have a four bit CLKDIV.
+ */
+#define LCRR_CLKDIV			0x0000001f
+#define LCRR_CLKDIV_SHIFT		0
+#define LCRR_CLKDIV_4			0x00000002
+#define LCRR_CLKDIV_8			0x00000004
+#define LCRR_CLKDIV_16			0x00000008
+
+#ifndef __ASSEMBLY__
+#include <asm/io.h>
+
+extern void init_early_memctl_regs(void);
+
+/* LBC register offsets. */
+#define FSL_LBC_BRX(x)	((x) * 8)	/* bank register offsets.  */
+#define FSL_LBC_ORX(x)	(4 + ((x) * 8)) /* option register offset. */
+#define FSL_LBC_LCCR	0x0d4		/* Clock ration register. */
+
+#define LBC_BASE_ADDR ((void __iomem *)LBC_ADDR)
+#define get_lbc_br(x) (in_be32((LBC_BASE_ADDR + FSL_LBC_BRX(x))))
+#define get_lbc_or(x) (in_be32((LBC_BASE_ADDR + FSL_LBC_ORX(x))))
+#define set_lbc_br(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_BRX(x)), v))
+#define set_lbc_or(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_ORX(x)), v))
+
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_PPC_FSL_LBC_H */
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index 0f5e017..ba2f078 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -8,4 +8,5 @@ obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-$(CONFIG_MODULES) += module.o
 obj-y += crtsavres.o
+obj-y += reloc.o
 
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index a840c75..f5fea15 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -30,14 +30,11 @@
 #include <net.h>
 #include <asm-generic/memory_layout.h>
 
-/************************************************************************
- *
+/*
  * This is the next part if the initialization sequence: we are now
  * running from RAM and have a "normal" C environment, i. e. global
  * data can be written, BSS has been cleared, the stack size in not
  * that critical any more, etc.
- *
- ************************************************************************
  */
 
 void board_init_r (ulong end_of_ram)
@@ -46,6 +43,10 @@ void board_init_r (ulong end_of_ram)
 
 	asm ("sync ; isync");
 
+#ifdef CONFIG_MPC85xx
+	_text_base = end_of_ram;
+#endif
+
 	/*
 	 * FIXME: 128k stack size. Is this enough? should
 	 *        it be configurable?
diff --git a/arch/ppc/lib/reloc.S b/arch/ppc/lib/reloc.S
new file mode 100644
index 0000000..92ee189
--- /dev/null
+++ b/arch/ppc/lib/reloc.S
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2009 Wolfgang Denk <wd@denx.de>
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
+#include <asm/ppc_asm.tmpl>
+
+	.file	"reloc.S"
+
+	.text
+	/*
+	 * Function: relocate entries for one exception vector
+	 */
+	.globl trap_reloc
+	.type	trap_reloc, @function
+trap_reloc:
+	lwz	r0, 0(r7)		/* hdlr ...		*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 0(r7)
+
+	lwz	r0, 4(r7)		/* int_return ...	*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 4(r7)
+
+	lwz	r0, 8(r7)		/* transfer_to_handler ...*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 8(r7)
+
+	blr
+	.size	trap_reloc, .-trap_reloc
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
new file mode 100644
index 0000000..4758951
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -0,0 +1,45 @@
+if ARCH_MPC85XX
+
+config TEXT_BASE
+	hex
+	default 0xeff80000 if P2020RDB
+
+config BOARDINFO
+	default "P2020_RDB" if P2020RDB
+
+config MPC85xx
+	bool
+	default y if P2020RDB
+
+choice
+	prompt "Select your board"
+
+config P2020RDB
+	bool "P2020RDB"
+	help
+	Say Y here if you are using the Freescale P2020RDB
+
+endchoice
+endif
+
+if P2020RDB
+config P2020
+	bool
+	default y
+
+config BOOKE
+	bool
+	default y
+
+config E500
+	bool
+	default y
+
+config MP
+	bool
+	default y if P2020
+
+config FSL_ELBC
+	bool
+	default y
+endif
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
new file mode 100644
index 0000000..6900108
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -0,0 +1,6 @@
+obj-y 			+= cpuid.o
+obj-y			+= fsl_lbc.o
+obj-y			+= fsl_law.o
+obj-y			+= speed.o
+obj-y			+=time.o
+obj-$(CONFIG_MP)	+= mp.o
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/ppc/mach-mpc85xx/cpuid.c
new file mode 100644
index 0000000..4fe53a4
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/cpuid.c
@@ -0,0 +1,73 @@
+/*
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
+ *
+ * This file is derived from arch/powerpc/cpu/mpc85xx/cpu.c and
+ * arch/powerpc/cpu/mpc86xx/cpu.c. Basically this file contains
+ * cpu specific common code for 85xx/86xx processors.
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
+#include <config.h>
+#include <common.h>
+#include <command.h>
+#include <asm/cache.h>
+#include <asm/io.h>
+#include <mach/immap_85xx.h>
+
+struct cpu_type cpu_type_list[] = {
+	CPU_TYPE_ENTRY(P2020, P2020, 2),
+	CPU_TYPE_ENTRY(P2020, P2020_E, 2),
+};
+
+struct cpu_type cpu_type_unknown = CPU_TYPE_ENTRY(Unknown, Unknown, 1);
+
+struct cpu_type *identify_cpu(u32 ver)
+{
+	int i;
+	for (i = 0; i < ARRAY_SIZE(cpu_type_list); i++) {
+		if (cpu_type_list[i].soc_ver == ver)
+			return &cpu_type_list[i];
+	}
+	return &cpu_type_unknown;
+}
+
+int cpu_numcores(void)
+{
+	void __iomem *pic = (void __iomem *)MPC8xxx_PIC_ADDR;
+	struct cpu_type *cpu;
+	uint svr;
+	uint ver;
+	int tmp;
+
+	svr = get_svr();
+	ver = SVR_SOC_VER(svr);
+	cpu = identify_cpu(ver);
+
+	/* better to query feature reporting register than just assume 1 */
+	if (cpu == &cpu_type_unknown) {
+		tmp = in_be32(pic + MPC85xx_PIC_FRR_OFFSET);
+		tmp = (tmp & MPC8xxx_PICFRR_NCPU_MASK) >>
+			MPC8xxx_PICFRR_NCPU_SHIFT;
+		tmp += 1;
+	} else {
+		tmp = cpu->num_cores;
+	}
+
+	return tmp;
+}
diff --git a/arch/ppc/mach-mpc85xx/fsl_law.c b/arch/ppc/mach-mpc85xx/fsl_law.c
new file mode 100644
index 0000000..fecece5
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fsl_law.c
@@ -0,0 +1,160 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * Copyright 2008-2011 Freescale Semiconductor, Inc.
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
+#include <asm/config.h>
+#include <asm/fsl_law.h>
+#include <asm/io.h>
+
+#define FSL_HW_NUM_LAWS FSL_NUM_LAWS
+
+#define LAW_BASE (CFG_IMMR + 0xc08)
+#define LAWAR_ADDR(x) ((u32 *)LAW_BASE + 8 * (x) + 2)
+#define LAWBAR_ADDR(x) ((u32 *)LAW_BASE + 8 * (x))
+#define LAWBAR_SHIFT 12
+
+static inline phys_addr_t get_law_base_addr(int idx)
+{
+	return (phys_addr_t)in_be32(LAWBAR_ADDR(idx)) << LAWBAR_SHIFT;
+}
+
+static inline void set_law_base_addr(int idx, phys_addr_t addr)
+{
+	out_be32(LAWBAR_ADDR(idx), addr >> LAWBAR_SHIFT);
+}
+
+static void set_law(u8 idx, phys_addr_t addr, enum law_size sz,
+		    enum law_trgt_if id)
+{
+	out_be32(LAWAR_ADDR(idx), 0);
+	set_law_base_addr(idx, addr);
+	out_be32(LAWAR_ADDR(idx), LAW_EN | ((u32)id << 20) | (u32)sz);
+
+	/* Read back so that we sync the writes */
+	in_be32(LAWAR_ADDR(idx));
+}
+
+static int is_free_law(int idx)
+{
+	u32 lawar;
+
+	lawar = in_be32(LAWAR_ADDR(idx));
+	if (!(lawar & LAW_EN))
+		return 1;
+
+	return 0;
+}
+
+static void set_next_law(phys_addr_t addr, enum law_size sz,
+			enum law_trgt_if id)
+{
+	u32 idx;
+
+	for (idx = 0; idx < FSL_HW_NUM_LAWS; idx++) {
+		if (is_free_law(idx)) {
+			set_law(idx, addr, sz, id);
+			break;
+		}
+	}
+
+	if (idx >= FSL_HW_NUM_LAWS)
+		panic("No more LAWS available\n");
+}
+
+static void set_last_law(phys_addr_t addr, enum law_size sz,
+			enum law_trgt_if id)
+{
+	u32 idx;
+
+	for (idx = (FSL_HW_NUM_LAWS - 1); idx >= 0; idx--) {
+		if (is_free_law(idx)) {
+			set_law(idx, addr, sz, id);
+			break;
+		}
+	}
+
+	if (idx < 0)
+		panic("No more LAWS available\n");
+}
+
+/* use up to 2 LAWs for DDR, use the last available LAWs */
+int set_ddr_laws(u64 start, u64 sz, enum law_trgt_if id)
+{
+	u64 start_align, law_sz;
+	int law_sz_enc;
+
+	if (start == 0)
+		start_align = 1ull << (LAW_SIZE_32G + 1);
+	else
+		start_align = 1ull << (ffs64(start) - 1);
+
+	law_sz = min(start_align, sz);
+	law_sz_enc = __ilog2_u64(law_sz) - 1;
+
+	set_last_law(start, law_sz_enc, id);
+
+	/* recalculate size based on what was actually covered by the law */
+	law_sz = 1ull << __ilog2_u64(law_sz);
+
+	/* do we still have anything to map */
+	sz = sz - law_sz;
+	if (sz) {
+		start += law_sz;
+
+		start_align = 1ull << (ffs64(start) - 1);
+		law_sz = min(start_align, sz);
+		law_sz_enc = __ilog2_u64(law_sz) - 1;
+
+		set_last_law(start, law_sz_enc, id);
+	} else {
+		return 0;
+	}
+
+	/* do we still have anything to map */
+	sz = sz - law_sz;
+	if (sz)
+		return 1;
+
+	return 0;
+}
+
+void init_laws(void)
+{
+	int i;
+
+	if (FSL_HW_NUM_LAWS > 32)
+		panic("FSL_HW_NUM_LAWS can not be > 32 w/o code changes");
+
+	for (i = 0; i < num_law_entries; i++) {
+		if (law_table[i].index == -1)
+			set_next_law(law_table[i].addr, law_table[i].size,
+					law_table[i].trgt_id);
+		else
+			set_law(law_table[i].index, law_table[i].addr,
+				law_table[i].size, law_table[i].trgt_id);
+	}
+}
diff --git a/arch/ppc/mach-mpc85xx/fsl_lbc.c b/arch/ppc/mach-mpc85xx/fsl_lbc.c
new file mode 100644
index 0000000..78a46e8
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fsl_lbc.c
@@ -0,0 +1,17 @@
+/*
+ * Copyright 2010-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <asm/fsl_lbc.h>
+#include <mach/immap_85xx.h>
+
+void init_early_memctl_regs(void)
+{
+	set_lbc_br(0, CFG_BR0_PRELIM);
+	set_lbc_or(0, CFG_OR0_PRELIM);
+}
diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
new file mode 100644
index 0000000..99c63be
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
@@ -0,0 +1,11 @@
+#ifndef __ASM_ARCH_CLOCKS_H
+#define __ASM_ARCH_CLOCKS_H
+
+#include <mach/mpc85xx.h>
+
+#define NSEC_PER_SEC	1000000000L
+
+unsigned long get_bus_freq(ulong dummy);
+unsigned long get_timebase_clock(void);
+void get_sys_info(struct sys_info *sysInfo);
+#endif /* __ASM_ARCH_CLOCKS_H */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/early_udelay.h b/arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
new file mode 100644
index 0000000..dc2d8bc
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+
+/* early_udelay: delay execution before timers are initialized
+ *
+ * "usecs * 100" gives a time of around 1 second on a 1Ghz CPU.
+ */
+static inline  void early_udelay(unsigned long usecs)
+{
+	uint64_t start;
+	uint32_t loops = usecs * 100;
+
+	start = get_ticks();
+
+	while ((get_ticks() - start) < loops)
+		;
+}
diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
new file mode 100644
index 0000000..b802249
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -0,0 +1,132 @@
+/*
+ * MPC85xx Internal Memory Map
+ *
+ * Copyright 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * Copyright(c) 2002,2003 Motorola Inc.
+ * Xianghua Xiao (x.xiao@motorola.com)
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
+#ifndef __IMMAP_85xx__
+#define __IMMAP_85xx__
+
+#include <asm/types.h>
+#include <asm/fsl_lbc.h>
+#include <asm/config.h>
+
+#define MPC85xx_LOCAL_OFFSET	0x0000
+#define MPC85xx_ECM_OFFSET	0x1000
+#define MPC85xx_DDR_OFFSET	0x2000
+#define MPC85xx_LBC_OFFSET	0x5000
+
+#define MPC85xx_GPIO_OFFSET	0xf000
+#define MPC85xx_L2_OFFSET	0x20000
+
+#define MPC85xx_PIC_OFFSET	0x40000
+#define MPC85xx_GUTS_OFFSET	0xe0000
+
+#define MPC85xx_LOCAL_ADDR	(CFG_IMMR + MPC85xx_LOCAL_OFFSET)
+#define MPC85xx_ECM_ADDR	(CFG_IMMR + MPC85xx_ECM_OFFSET)
+#define MPC85xx_GUTS_ADDR	(CFG_IMMR + MPC85xx_GUTS_OFFSET)
+#define MPC85xx_DDR_ADDR	(CFG_IMMR + MPC85xx_DDR_OFFSET)
+#define LBC_ADDR		(CFG_IMMR + MPC85xx_LBC_OFFSET)
+#define MPC85xx_GPIO_ADDR	(CFG_IMMR + MPC85xx_GPIO_OFFSET)
+#define MPC85xx_L2_ADDR		(CFG_IMMR + MPC85xx_L2_OFFSET)
+#define MPC8xxx_PIC_ADDR	(CFG_IMMR + MPC85xx_PIC_OFFSET)
+
+/* Local-Access Registers */
+#define MPC85xx_LOCAL_BPTR_OFFSET	0x20 /* Boot Page Translation */
+
+/* ECM Registers */
+#define MPC85xx_ECM_EEBPCR_OFFSET	0x00 /* ECM CCB Port Configuration */
+
+/*
+ * DDR Memory Controller Register Offsets
+ */
+/* Chip Select 0, 1,2, 3 Memory Bounds */
+#define MPC85xx_DDR_CS0_BNDS_OFFSET		0x000
+#define MPC85xx_DDR_CS1_BNDS_OFFSET		0x008
+#define MPC85xx_DDR_CS2_BNDS_OFFSET		0x010
+#define MPC85xx_DDR_CS3_BNDS_OFFSET		0x018
+/* Chip Select 0, 1, 2, 3 Configuration */
+#define MPC85xx_DDR_CS0_CONFIG_OFFSET		0x080
+#define MPC85xx_DDR_CS1_CONFIG_OFFSET		0x084
+#define MPC85xx_DDR_CS2_CONFIG_OFFSET		0x088
+#define MPC85xx_DDR_CS3_CONFIG_OFFSET		0x08c
+/* SDRAM Timing Configuration 0, 1, 2, 3 */
+#define MPC85xx_DDR_TIMING_CFG_3_OFFSET		0x100
+#define MPC85xx_DDR_TIMING_CFG_0_OFFSET		0x104
+#define MPC85xx_DDR_TIMING_CFG_1_OFFSET		0x108
+#define MPC85xx_DDR_TIMING_CFG_2_OFFSET		0x10c
+/* SDRAM Control Configuration */
+#define MPC85xx_DDR_SDRAM_CFG_OFFSET		0x110
+#define MPC85xx_DDR_SDRAM_CFG_2_OFFSET		0x114
+/* SDRAM Mode Configuration */
+#define MPC85xx_DDR_SDRAM_MODE_OFFSET		0x118
+#define MPC85xx_DDR_SDRAM_MODE_2_OFFSET		0x11c
+/* SDRAM Mode Control */
+#define MPC85xx_DDR_SDRAM_MD_CNTL_OFFSET	0x120
+/* SDRAM Interval Configuration */
+#define MPC85xx_DDR_SDRAM_INTERVAL_OFFSET	0x124
+/* SDRAM Data initialization */
+#define MPC85xx_DDR_SDRAM_DATA_INIT_OFFSET	0x128
+/* SDRAM Clock Control */
+#define MPC85xx_DDR_SDRAM_CLK_CNTL_OFFSET	0x130
+/* training init and extended addr */
+#define MPC85xx_DDR_SDRAM_INIT_ADDR_OFFSET	0x148
+#define MPC85xx_DDR_SDRAM_INIT_ADDR_EXT_OFFSET	0x14c
+
+#define DDR_OFF(REGNAME)	(MPC85xx_DDR_##REGNAME##_OFFSET)
+
+/*
+ * GPIO Register Offsets
+ */
+#define MPC85xx_GPIO_GPDIR	0x00
+#define MPC85xx_GPIO_GPDAT	0x08
+
+/*
+ * L2 Cache Register Offsets
+ */
+#define MPC85xx_L2_CTL_OFFSET	0x0		/* L2 configuration 0 */
+#define		MPC85xx_L2CTL_L2E	0x80000000
+
+/* PIC registers offsets */
+#define MPC85xx_PIC_WHOAMI_OFFSET	0x090
+#define MPC85xx_PIC_FRR_OFFSET		0x1000	/* Feature Reporting */
+/* PIC registers fields values and masks. */
+#define MPC8xxx_PICFRR_NCPU_MASK	0x00001f00
+#define MPC8xxx_PICFRR_NCPU_SHIFT	8
+#define MPC85xx_PICGCR_RST		0x80000000
+#define MPC85xx_PICGCR_M		0x20000000
+
+#define MPC85xx_PIC_IACK0_OFFSET	0x600a0	/* IRQ Acknowledge for
+						   Processor 0 */
+
+/* Global Utilities Register Offsets and field values */
+#define MPC85xx_GUTS_PORPLLSR_OFFSET	0x0
+#define		MPC85xx_PORPLLSR_DDR_RATIO		0x00003e00
+#define		MPC85xx_PORPLLSR_DDR_RATIO_SHIFT	9
+#define MPC85xx_GUTS_DEVDISR_OFFSET	0x70
+#define		MPC85xx_DEVDISR_TB0	0x00004000
+#define		MPC85xx_DEVDISR_TB1	0x00001000
+#define MPC85xx_GUTS_RSTCR_OFFSET	0xb0
+
+#endif /*__IMMAP_85xx__*/
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mp.h b/arch/ppc/mach-mpc85xx/include/mach/mp.h
new file mode 100644
index 0000000..19b5c87
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/mp.h
@@ -0,0 +1,15 @@
+#ifndef __MPC85XX_MP_H_
+#define __MPC85XX_MP_H_
+
+void setup_mp(void);
+int cpu_numcores(void);
+
+extern ulong __secondary_start_page;
+extern ulong __spin_table;
+extern ulong __bootpg_addr;
+
+#define BOOT_ENTRY_ADDR_LOWER	1
+#define NUM_BOOT_ENTRY		8
+#define SIZE_BOOT_ENTRY		(NUM_BOOT_ENTRY * sizeof(u32))
+
+#endif
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
new file mode 100644
index 0000000..ba27c64
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
@@ -0,0 +1,17 @@
+/*
+ * Copyright 2004, 2007 Freescale Semiconductor.
+ * Copyright(c) 2003 Motorola Inc.
+ */
+
+#ifndef	__MPC85xx_H__
+#define __MPC85xx_H__
+
+/* define for common ppc_asm.tmpl */
+#define EXC_OFF_SYS_RESET	0x100	/* System reset */
+#define _START_OFFSET		0
+
+#if defined(CONFIG_E500)
+#include <asm/e500.h>
+#endif
+
+#endif	/* __MPC85xx_H__ */
diff --git a/arch/ppc/mach-mpc85xx/mp.c b/arch/ppc/mach-mpc85xx/mp.c
new file mode 100644
index 0000000..3dfc80a
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/mp.c
@@ -0,0 +1,155 @@
+/*
+ * Copyright 2008-2010 Freescale Semiconductor, Inc.
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
+#include <config.h>
+#include <common.h>
+#include <environment.h>
+#include <asm/processor.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <mach/immap_85xx.h>
+#include <mach/early_udelay.h>
+#include <mach/mp.h>
+
+/*
+ * Determine if Barebox should keep secondary cores in reset, or let them out
+ * of reset and hold them in a spinloop.
+ *
+ */
+static int hold_cores_in_reset(int verbose)
+{
+	/* Do not hold core in reset. */
+	return 0;
+}
+
+static u32 determine_mp_bootpg(void)
+{
+	/* if we have 4G or more of memory, put the boot page at 4Gb-4k */
+	if ((u64)get_effective_memsize() > 0xfffff000)
+		return 0xfffff000;
+
+	return get_effective_memsize() - 4096;
+}
+
+static ulong get_spin_virt_addr(void)
+{
+	return BPTR_VIRT_ADDR + (ulong)&__spin_table -
+		(ulong)&__secondary_start_page;
+}
+
+static void plat_mp_up(unsigned long bootpg)
+{
+	u32 up, cpu_up_mask, whoami;
+	u32 *table = (u32 *)get_spin_virt_addr();
+	u32 bpcr;
+	void __iomem *local = (void __iomem *)(MPC85xx_LOCAL_ADDR);
+	void __iomem *ecm = (void __iomem *)(MPC85xx_ECM_ADDR);
+	void __iomem *gur = (void __iomem *)(MPC85xx_GUTS_ADDR);
+	void __iomem *pic = (void __iomem *)(MPC8xxx_PIC_ADDR);
+	u32 devdisr;
+	int timeout = 10;
+
+	whoami = in_be32(pic + MPC85xx_PIC_WHOAMI_OFFSET);
+	out_be32(local + MPC85xx_LOCAL_BPTR_OFFSET,
+		0x80000000 | (bootpg >> 12));
+
+	/* disable time base at the platform */
+	devdisr = in_be32(gur + MPC85xx_GUTS_DEVDISR_OFFSET);
+	if (whoami)
+		devdisr |= MPC85xx_DEVDISR_TB0;
+	else
+		devdisr |= MPC85xx_DEVDISR_TB1;
+	out_be32(gur + MPC85xx_GUTS_DEVDISR_OFFSET, devdisr);
+
+	up = ((1 << cpu_numcores()) - 1);
+	bpcr = in_be32(ecm + MPC85xx_ECM_EEBPCR_OFFSET);
+	bpcr |= (up << 24);
+	out_be32(ecm + MPC85xx_ECM_EEBPCR_OFFSET, bpcr);
+	asm("sync; isync; msync");
+
+	cpu_up_mask = 1 << whoami;
+	/* wait for everyone */
+	while (timeout) {
+		int i;
+		for (i = 0; i < cpu_numcores(); i++) {
+			if (table[i * NUM_BOOT_ENTRY + BOOT_ENTRY_ADDR_LOWER])
+				cpu_up_mask |= (1 << i);
+		};
+
+		if ((cpu_up_mask & up) == up)
+			break;
+
+		early_udelay(100);
+		timeout--;
+	}
+
+	if (timeout == 0)
+		debug("CPU up timeout. CPU up mask is %x should be %x\n",
+			cpu_up_mask, up);
+
+	/* enable time base at the platform */
+	if (whoami)
+		devdisr |= MPC85xx_DEVDISR_TB1;
+	else
+		devdisr |= MPC85xx_DEVDISR_TB0;
+	out_be32(gur + MPC85xx_GUTS_DEVDISR_OFFSET, devdisr);
+	mtspr(SPRN_TBWU, 0);
+	mtspr(SPRN_TBWL, 0);
+
+	devdisr &= ~(MPC85xx_DEVDISR_TB0 | MPC85xx_DEVDISR_TB1);
+	out_be32(gur + MPC85xx_GUTS_DEVDISR_OFFSET, devdisr);
+}
+
+void setup_mp(void)
+{
+	ulong fixup = (ulong)&__secondary_start_page;
+	u32 bootpg = determine_mp_bootpg();
+	int i;
+
+	if (hold_cores_in_reset(0))
+		return;
+
+	/* Store the bootpg's SDRAM address for use by secondary CPU cores */
+	__bootpg_addr = bootpg;
+
+	/* look for the tlb covering the reset page, there better be one */
+	i = find_tlb_idx((void *)BPTR_VIRT_ADDR, 1);
+
+	/* we found a match */
+	if (i != -1) {
+		/* map reset page to bootpg so we can copy code there */
+		disable_tlb(i);
+
+		set_tlb(1, BPTR_VIRT_ADDR, bootpg, /* tlb, epn, rpn */
+			MAS3_SX|MAS3_SW|MAS3_SR,
+			MAS2_I|MAS2_G, /* perms, wimge */
+			0, i, BOOKE_PAGESZ_4K, 1); /* ts, esel, tsize, iprot */
+
+		memcpy((void *)BPTR_VIRT_ADDR, (void *)fixup, 4096);
+
+		plat_mp_up(bootpg);
+	} else {
+		puts("WARNING: No reset page TLB. "
+			"Skipping secondary core setup\n");
+	}
+}
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
new file mode 100644
index 0000000..27ce323
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -0,0 +1,96 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * Copyright 2004, 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2003 Motorola Inc.
+ * Xianghua Xiao, (X.Xiao@motorola.com)
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
+#include <asm/io.h>
+#include <mach/mpc85xx.h>
+#include <mach/immap_85xx.h>
+#include <mach/mp.h>
+
+void get_sys_info(struct sys_info *sysInfo)
+{
+	void __iomem *gur = (void __iomem *)(MPC85xx_GUTS_ADDR);
+	uint plat_ratio, e500_ratio, half_freqSystemBus;
+	uint lcrr_div;
+	int i;
+
+	plat_ratio = in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) & 0x0000003e;
+	plat_ratio >>= 1;
+	sysInfo->freqSystemBus = plat_ratio * CFG_SYS_CLK_FREQ;
+
+	/*
+	 * Divide before multiply to avoid integer
+	 * overflow for processor speeds above 2GHz.
+	 */
+	half_freqSystemBus = sysInfo->freqSystemBus/2;
+	for (i = 0; i < cpu_numcores(); i++) {
+		e500_ratio = (in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) >>
+				(i * 8 + 16)) & 0x3f;
+		sysInfo->freqProcessor[i] = e500_ratio * half_freqSystemBus;
+	}
+
+	/* Note: freqDDRBus is the MCLK frequency, not the data rate. */
+	sysInfo->freqDDRBus = sysInfo->freqSystemBus;
+
+#ifdef CFG_DDR_CLK_FREQ
+	{
+		u32 ddr_ratio = (in_be32(gur + MPC85xx_GUTS_PORPLLSR_OFFSET) &
+					MPC85xx_PORPLLSR_DDR_RATIO) >>
+					MPC85xx_PORPLLSR_DDR_RATIO_SHIFT;
+		if (ddr_ratio != 0x7)
+			sysInfo->freqDDRBus = ddr_ratio * CFG_DDR_CLK_FREQ;
+	}
+#endif
+
+	lcrr_div = in_be32(LBC_BASE_ADDR + FSL_LBC_LCCR) & LCRR_CLKDIV;
+
+	if (lcrr_div == 2 || lcrr_div == 4 || lcrr_div == 8) {
+		/*
+		 * The entire PQ38 family use the same bit-representation
+		 * for twice the clock divider values.
+		 */
+		lcrr_div *= 2;
+
+		sysInfo->freqLocalBus = sysInfo->freqSystemBus / lcrr_div;
+	} else {
+		/* In case anyone cares what the unknown value is */
+		sysInfo->freqLocalBus = lcrr_div;
+	}
+}
+
+unsigned long get_bus_freq(ulong dummy)
+{
+	struct sys_info sys_info;
+
+	get_sys_info(&sys_info);
+
+	return sys_info.freqSystemBus;
+}
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/ppc/mach-mpc85xx/time.c
new file mode 100644
index 0000000..4e36bad
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/time.c
@@ -0,0 +1,54 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * (C) Copyright 2000, 2001
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
+#include <clock.h>
+#include <init.h>
+#include <mach/clocks.h>
+#include <asm/common.h>
+
+uint64_t ppc_clocksource_read(void)
+{
+	return get_ticks();
+}
+
+static struct clocksource cs = {
+	.read	= ppc_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(64),
+};
+
+static int clocksource_init(void)
+{
+	/* reset time base */
+	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
+
+	clocks_calc_mult_shift(&cs.mult, &cs.shift, get_timebase_clock(),
+			       NSEC_PER_SEC, 10);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
