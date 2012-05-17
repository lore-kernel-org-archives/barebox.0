Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3tu-0004Qy-KX
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:09 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:48 +0100
Message-Id: <1337273391-20858-7-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 6/9] MPC85xx start-up support code
To: barebox@lists.infradead.org

This patch adds initialization functions used by the e500v2 start-up code
and board specific code (L2 cache initialization).
Other functions help identify the CPU or return the programmed memory size.
Finally, the Makefile and Kconfig file are added.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/Kconfig    |   41 ++++++++++++
 arch/ppc/mach-mpc85xx/Makefile   |    8 +++
 arch/ppc/mach-mpc85xx/cpu.c      |   85 +++++++++++++++++++++++++
 arch/ppc/mach-mpc85xx/cpu_init.c |  127 ++++++++++++++++++++++++++++++++++++++
 arch/ppc/mach-mpc85xx/cpuid.c    |   73 ++++++++++++++++++++++
 5 files changed, 334 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/Kconfig
 create mode 100644 arch/ppc/mach-mpc85xx/Makefile
 create mode 100644 arch/ppc/mach-mpc85xx/cpu.c
 create mode 100644 arch/ppc/mach-mpc85xx/cpu_init.c
 create mode 100644 arch/ppc/mach-mpc85xx/cpuid.c

diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
new file mode 100644
index 0000000..b2af05e
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -0,0 +1,41 @@
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
+config FSL_ELBC
+	bool
+	default y
+endif
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
new file mode 100644
index 0000000..03addaf
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -0,0 +1,8 @@
+obj-y 			+= cpuid.o
+obj-y 			+= cpu.o
+obj-y 			+= cpu_init.o
+obj-y			+= fsl_lbc.o
+obj-y			+= fsl_law.o
+obj-y			+= speed.o
+obj-y			+=time.o
+obj-$(CONFIG_MP)	+= mp.o
diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
new file mode 100644
index 0000000..f730838
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/cpu.c
@@ -0,0 +1,85 @@
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
+#include <asm/fsl_ddr_sdram.h>
+#include <mach/mmu.h>
+#include <mach/immap_85xx.h>
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
+long int initdram(int board_type)
+{
+	phys_size_t dram_size = 0;
+
+	dram_size = fixed_sdram();
+
+	dram_size = e500_setup_ddr_tlbs(dram_size / 0x100000);
+	dram_size *= 0x100000;
+
+	return dram_size;
+}
+
+/*
+ * Return the memory size based on the configuration registers.
+ */
+phys_size_t fsl_get_effective_memsize(void)
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
diff --git a/arch/ppc/mach-mpc85xx/cpu_init.c b/arch/ppc/mach-mpc85xx/cpu_init.c
new file mode 100644
index 0000000..958250d
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/cpu_init.c
@@ -0,0 +1,127 @@
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
+#include <asm/fsl_law.h>
+#include <mach/mpc85xx.h>
+#include <mach/mmu.h>
+#include <mach/immap_85xx.h>
+
+static void fsl_setup_ccsrbar(void)
+{
+	u32 temp;
+	u32 mas0, mas1, mas2, mas3, mas7;
+	u32 *ccsr_virt = (u32 *)(CFG_CCSRBAR + 0x1000);
+
+	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(1);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_TSIZE(BOOKE_PAGESZ_4K);
+	mas2 = FSL_BOOKE_MAS2(CFG_CCSRBAR + 0x1000, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(CFG_CCSRBAR_DEFAULT, 0, MAS3_SW|MAS3_SR);
+	mas7 = FSL_BOOKE_MAS7(CFG_CCSRBAR_DEFAULT);
+
+	e500_write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	temp = in_be32(ccsr_virt);
+	out_be32(ccsr_virt, CFG_CCSRBAR_PHYS >> 12);
+	temp = in_be32((u32 *)CFG_CCSRBAR);
+}
+
+int fsl_l2_cache_init(void)
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
+	e500_write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	/* set up CCSR if we want it moved */
+	if (CFG_CCSRBAR_DEFAULT != CFG_CCSRBAR_PHYS)
+		fsl_setup_ccsrbar();
+
+	fsl_init_laws();
+	e500_invalidate_tlb(0);
+	e500_init_tlbs();
+}
+
+void cpu_init_f(void)
+{
+	e500_disable_tlb(14);
+	e500_disable_tlb(15);
+
+	fsl_init_early_memctl_regs();
+}
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/ppc/mach-mpc85xx/cpuid.c
new file mode 100644
index 0000000..598201b
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
+int fsl_cpu_numcores(void)
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
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
