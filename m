Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3tp-0004O9-40
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:03 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:43 +0100
Message-Id: <1337273391-20858-2-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 1/9] Initial Freescale 85xx Headers.
To: barebox@lists.infradead.org

These header files are added to provide a minimal support to the
Freescale 85xx cpu to boot on a P2020RDB platform.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/config.h                      |   44 +++++++
 arch/ppc/include/asm/fsl_ddr_sdram.h               |   33 +++++
 arch/ppc/include/asm/fsl_law.h                     |   91 ++++++++++++++
 arch/ppc/include/asm/fsl_lbc.h                     |   61 +++++++++
 arch/ppc/mach-mpc85xx/include/mach/clocks.h        |   18 +++
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   39 ++++++
 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h  |   40 ++++++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |  132 ++++++++++++++++++++
 arch/ppc/mach-mpc85xx/include/mach/mmu.h           |   47 +++++++
 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h       |   23 ++++
 10 files changed, 528 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/include/asm/config.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_sdram.h
 create mode 100644 arch/ppc/include/asm/fsl_law.h
 create mode 100644 arch/ppc/include/asm/fsl_lbc.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/clocks.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mmu.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h

diff --git a/arch/ppc/include/asm/config.h b/arch/ppc/include/asm/config.h
new file mode 100644
index 0000000..4abded9
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
+#include <mach/config_mpc85xx.h>
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
diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/ppc/include/asm/fsl_ddr_sdram.h
new file mode 100644
index 0000000..ef793c9
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_ddr_sdram.h
@@ -0,0 +1,33 @@
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
+extern phys_size_t fixed_sdram(void);
+
+#endif
diff --git a/arch/ppc/include/asm/fsl_law.h b/arch/ppc/include/asm/fsl_law.h
new file mode 100644
index 0000000..813a8ee
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
+#define FSL_SET_LAW_ENTRY(idx, a, sz, trgt) \
+	{ .index = idx, .addr = a, .size = sz, .trgt_id = trgt }
+
+#define FSL_SET_LAW(a, sz, trgt) \
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
+#define fsl_law_size_bits(sz)	(__ilog2_u64(sz) - 1)
+#define fsl_lawar_size(x)	(1ULL << (((x) & 0x3f) + 1))
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
+extern int fsl_set_ddr_laws(u64 start, u64 sz, enum law_trgt_if id);
+extern void fsl_init_laws(void);
+
+/* define in board code */
+extern struct law_entry law_table[];
+extern int num_law_entries;
+#endif
diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
new file mode 100644
index 0000000..47205e7
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -0,0 +1,61 @@
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
+extern void fsl_init_early_memctl_regs(void);
+
+/* LBC register offsets. */
+#define FSL_LBC_BRX(x)	((x) * 8)	/* bank register offsets.  */
+#define FSL_LBC_ORX(x)	(4 + ((x) * 8)) /* option register offset. */
+#define FSL_LBC_LCCR	0x0d4		/* Clock ration register. */
+
+#define LBC_BASE_ADDR ((void __iomem *)LBC_ADDR)
+#define fsl_get_lbc_br(x) (in_be32((LBC_BASE_ADDR + FSL_LBC_BRX(x))))
+#define fsl_get_lbc_or(x) (in_be32((LBC_BASE_ADDR + FSL_LBC_ORX(x))))
+#define fsl_set_lbc_br(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_BRX(x)), v))
+#define fsl_set_lbc_or(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_ORX(x)), v))
+
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_PPC_FSL_LBC_H */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
new file mode 100644
index 0000000..9477168
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
@@ -0,0 +1,18 @@
+#ifndef __ASM_ARCH_CLOCKS_H
+#define __ASM_ARCH_CLOCKS_H
+
+#include <mach/config_mpc85xx.h>
+
+struct sys_info {
+	unsigned long freqProcessor[MAX_CPUS];
+	unsigned long freqSystemBus;
+	unsigned long freqDDRBus;
+	unsigned long freqLocalBus;
+};
+
+#define NSEC_PER_SEC	1000000000L
+
+unsigned long fsl_get_bus_freq(ulong dummy);
+unsigned long fsl_get_timebase_clock(void);
+void fsl_get_sys_info(struct sys_info *sysInfo);
+#endif /* __ASM_ARCH_CLOCKS_H */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
new file mode 100644
index 0000000..9b095c7
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -0,0 +1,39 @@
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
+#define RESET_VECTOR    0xfffffffc
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
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mmu.h b/arch/ppc/mach-mpc85xx/include/mach/mmu.h
new file mode 100644
index 0000000..00459e2
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/mmu.h
@@ -0,0 +1,47 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef _MPC85XX_MMU_H_
+#define _MPC85XX_MMU_H_
+
+#ifdef CONFIG_E500
+#include <asm/mmu.h>
+
+#ifndef __ASSEMBLY__
+extern void e500_set_tlb(u8 tlb, u32 epn, u64 rpn, u8 perms, u8 wimge,
+		u8 ts, u8 esel, u8 tsize, u8 iprot);
+extern void e500_disable_tlb(u8 esel);
+extern void e500_invalidate_tlb(u8 tlb);
+extern void e500_init_tlbs(void);
+extern int e500_find_tlb_idx(void *addr, u8 tlbsel);
+extern void e500_init_used_tlb_cams(void);
+
+extern unsigned int e500_setup_ddr_tlbs(unsigned int memsize_in_meg);
+extern void e500_write_tlb(u32 _mas0, u32 _mas1, u32 _mas2, u32 _mas3,
+			u32 _mas7);
+
+#define FSL_SET_TLB_ENTRY(_tlb, _epn, _rpn, _perms, _wimge, _ts, _esel, _sz,\
+			_iprot) \
+	{ .mas0 = FSL_BOOKE_MAS0(_tlb, _esel, 0), \
+	  .mas1 = FSL_BOOKE_MAS1(1, _iprot, 0, _ts, _sz), \
+	  .mas2 = FSL_BOOKE_MAS2(_epn, _wimge), \
+	  .mas3 = FSL_BOOKE_MAS3(_rpn, 0, _perms), \
+	  .mas7 = FSL_BOOKE_MAS7(_rpn), }
+
+struct fsl_e_tlb_entry {
+	u32	mas0;
+	u32	mas1;
+	u32	mas2;
+	u32	mas3;
+	u32	mas7;
+};
+extern struct fsl_e_tlb_entry tlb_table[];
+extern int num_tlb_entries;
+#endif
+#endif
+#endif /* _MPC85XX_MMU_H_ */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
new file mode 100644
index 0000000..1d9993a
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright 2004, 2007 Freescale Semiconductor.
+ * Copyright(c) 2003 Motorola Inc.
+ */
+
+#ifndef __MPC85xx_H__
+#define __MPC85xx_H__
+
+/* define for common ppc_asm.tmpl */
+#define EXC_OFF_SYS_RESET	0x100	/* System reset */
+#define _START_OFFSET		0
+
+#ifndef __ASSEMBLY__
+int fsl_l2_cache_init(void);
+int fsl_cpu_numcores(void);
+
+phys_size_t fsl_get_effective_memsize(void);
+
+#endif /* __ASSEMBLY__ */
+
+#define END_OF_MEM (fsl_get_effective_memsize())
+
+#endif	/* __MPC85xx_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
