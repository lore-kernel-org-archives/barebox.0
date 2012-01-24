Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZq-0004iq-Ss
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:32 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:33:58 +0000
Message-Id: <1327408443-3519-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/9] Header files added to support the mpc8xxx architecture.
To: barebox@lists.infradead.org


Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/config.h         |   84 ++++++
 arch/ppc/include/asm/config_mpc85xx.h |  188 ++++++++++++
 arch/ppc/include/asm/e500.h           |   31 ++
 arch/ppc/include/asm/fsl_ddr_sdram.h  |  288 ++++++++++++++++++
 arch/ppc/include/asm/fsl_dma.h        |  141 +++++++++
 arch/ppc/include/asm/fsl_enet.h       |   33 ++
 arch/ppc/include/asm/fsl_fman.h       |  212 +++++++++++++
 arch/ppc/include/asm/fsl_law.h        |  123 ++++++++
 arch/ppc/include/asm/fsl_lbc.h        |  531 +++++++++++++++++++++++++++++++++
 arch/ppc/include/asm/fsl_portals.h    |   59 ++++
 arch/ppc/include/asm/fsl_serdes.h     |   56 ++++
 arch/ppc/include/asm/fsl_upm.h        |   48 +++
 arch/ppc/include/asm/global_data.h    |  121 ++++++++
 arch/ppc/include/asm/mp.h             |   31 ++
 include/ddr_spd.h                     |  317 ++++++++++++++++++++
 include/ioports.h                     |   65 ++++
 include/lmb.h                         |   61 ++++
 17 files changed, 2389 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/include/asm/config.h
 create mode 100644 arch/ppc/include/asm/config_mpc85xx.h
 create mode 100644 arch/ppc/include/asm/e500.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_sdram.h
 create mode 100644 arch/ppc/include/asm/fsl_dma.h
 create mode 100644 arch/ppc/include/asm/fsl_enet.h
 create mode 100644 arch/ppc/include/asm/fsl_fman.h
 create mode 100644 arch/ppc/include/asm/fsl_law.h
 create mode 100644 arch/ppc/include/asm/fsl_lbc.h
 create mode 100644 arch/ppc/include/asm/fsl_portals.h
 create mode 100644 arch/ppc/include/asm/fsl_serdes.h
 create mode 100644 arch/ppc/include/asm/fsl_upm.h
 create mode 100644 arch/ppc/include/asm/global_data.h
 create mode 100644 arch/ppc/include/asm/mp.h
 create mode 100644 include/ddr_spd.h
 create mode 100644 include/ioports.h
 create mode 100644 include/lmb.h

diff --git a/arch/ppc/include/asm/config.h b/arch/ppc/include/asm/config.h
new file mode 100644
index 0000000..146b3fa
--- /dev/null
+++ b/arch/ppc/include/asm/config.h
@@ -0,0 +1,84 @@
+/*
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
+ *
+ */
+
+#ifndef _ASM_CONFIG_H_
+#define _ASM_CONFIG_H_
+
+#ifdef CONFIG_MPC85xx
+#include <asm/config_mpc85xx.h>
+#endif
+
+#ifdef CONFIG_MPC86xx
+#include <asm/config_mpc86xx.h>
+#endif
+
+#define CONFIG_LMB
+#define CONFIG_SYS_BOOT_RAMDISK_HIGH
+#define CONFIG_SYS_BOOT_GET_CMDLINE
+#define CONFIG_SYS_BOOT_GET_KBD
+
+#ifndef CONFIG_MAX_MEM_MAPPED
+#if defined(CONFIG_4xx) || defined(CONFIG_E500) || defined(CONFIG_MPC86xx)
+#define CONFIG_MAX_MEM_MAPPED	((phys_size_t)2 << 30)
+#else
+#define CONFIG_MAX_MEM_MAPPED	((phys_size_t)256 << 20)
+#endif
+#endif
+
+/* Check if boards need to enable FSL DMA engine for SDRAM init */
+#if !defined(CONFIG_FSL_DMA) && defined(CONFIG_DDR_ECC)
+#if (defined(CONFIG_MPC83xx) && defined(CONFIG_DDR_ECC_INIT_VIA_DMA)) || \
+	((defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx)) && \
+	!defined(CONFIG_ECC_INIT_VIA_DDRCONTROLLER))
+#define CONFIG_FSL_DMA
+#endif
+#endif
+
+#ifndef CONFIG_MAX_CPUS
+#define CONFIG_MAX_CPUS		1
+#endif
+
+/*
+ * Provide a default boot page translation virtual address that lines up with
+ * Freescale's default e500 reset page.
+ */
+#if (defined(CONFIG_E500) && defined(CONFIG_MP))
+#ifndef CONFIG_BPTR_VIRT_ADDR
+#define CONFIG_BPTR_VIRT_ADDR	0xfffff000
+#endif
+#endif
+
+/*
+ * SEC (crypto unit) major compatible version determination
+ */
+#if defined(CONFIG_MPC83xx)
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+#endif
+
+/* Since so many PPC SOCs have a semi-common LBC, define this here */
+#if defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx) || \
+	defined(CONFIG_MPC83xx)
+#define CONFIG_FSL_LBC
+#endif
+
+/* All PPC boards must swap IDE bytes */
+#define CONFIG_IDE_SWAP_IO
+
+#endif /* _ASM_CONFIG_H_ */
diff --git a/arch/ppc/include/asm/config_mpc85xx.h b/arch/ppc/include/asm/config_mpc85xx.h
new file mode 100644
index 0000000..36464aa
--- /dev/null
+++ b/arch/ppc/include/asm/config_mpc85xx.h
@@ -0,0 +1,188 @@
+/*
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
+ *
+ */
+
+#ifndef _ASM_MPC85xx_CONFIG_H_
+#define _ASM_MPC85xx_CONFIG_H_
+
+/* SoC specific defines for Freescale MPC85xx (PQ3) and QorIQ processors */
+
+/* Number of TLB CAM entries we have on FSL Book-E chips */
+#if defined(CONFIG_E500MC)
+#define CONFIG_SYS_NUM_TLBCAMS		64
+#elif defined(CONFIG_E500)
+#define CONFIG_SYS_NUM_TLBCAMS		16
+#endif
+
+#if defined(CONFIG_MPC8536)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8540)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		8
+
+#elif defined(CONFIG_MPC8541)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		8
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8544)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		10
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8548)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		10
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8555)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		8
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8560)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		8
+
+#elif defined(CONFIG_MPC8568)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		10
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8569)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		10
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8572)
+#define CONFIG_MAX_CPUS			2
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P1010)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#elif defined(CONFIG_P1011)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P1012)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P1013)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P1014)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#elif defined(CONFIG_P1020)
+#define CONFIG_MAX_CPUS			2
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P1021)
+#define CONFIG_MAX_CPUS			2
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P1022)
+#define CONFIG_MAX_CPUS			2
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_TSECV2
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P2010)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_P2020)
+#define CONFIG_MAX_CPUS			2
+#define CONFIG_SYS_FSL_NUM_LAWS		12
+#define CONFIG_SYS_FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_PPC_P2040)
+#define CONFIG_MAX_CPUS			4
+#define CONFIG_SYS_FSL_NUM_LAWS		32
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#elif defined(CONFIG_PPC_P3041)
+#define CONFIG_MAX_CPUS			4
+#define CONFIG_SYS_FSL_NUM_LAWS		32
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#elif defined(CONFIG_PPC_P4040)
+#define CONFIG_MAX_CPUS			4
+#define CONFIG_SYS_FSL_NUM_LAWS		32
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#elif defined(CONFIG_PPC_P4080)
+#define CONFIG_MAX_CPUS			8
+#define CONFIG_SYS_FSL_NUM_LAWS		32
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+#define CONFIG_SYS_NUM_FMAN		2
+#define CONFIG_SYS_NUM_FM1_DTSEC	4
+#define CONFIG_SYS_NUM_FM2_DTSEC	4
+#define CONFIG_SYS_NUM_FM1_10GEC	1
+#define CONFIG_SYS_NUM_FM2_10GEC	1
+#define CONFIG_NUM_DDR_CONTROLLERS	2
+#define CONFIG_SYS_FSL_ERRATUM_CPC_A002
+#define CONFIG_SYS_FSL_ERRATUM_CPC_A003
+#define CONFIG_SYS_FSL_ERRATUM_DDR_A003
+#define CONFIG_SYS_FSL_ERRATUM_ELBC_A001
+#define CONFIG_SYS_FSL_ERRATUM_ESDHC111
+#define CONFIG_SYS_FSL_ERRATUM_ESDHC135
+#define CONFIG_SYS_FSL_ERRATUM_ESDHC136
+#define CONFIG_SYS_P4080_ERRATUM_CPU22
+#define CONFIG_SYS_P4080_ERRATUM_SERDES8
+
+#elif defined(CONFIG_PPC_P5010)
+#define CONFIG_MAX_CPUS			1
+#define CONFIG_SYS_FSL_NUM_LAWS		32
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#elif defined(CONFIG_PPC_P5020)
+#define CONFIG_MAX_CPUS			2
+#define CONFIG_SYS_FSL_NUM_LAWS		32
+#define CONFIG_SYS_FSL_SEC_COMPAT	4
+
+#else
+#error Processor type not defined for this platform
+#endif
+
+#endif /* _ASM_MPC85xx_CONFIG_H_ */
diff --git a/arch/ppc/include/asm/e500.h b/arch/ppc/include/asm/e500.h
new file mode 100644
index 0000000..30ee93a
--- /dev/null
+++ b/arch/ppc/include/asm/e500.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright 2003 Motorola,Inc.
+ * Xianghua Xiao(x.xiao@motorola.com)
+ */
+
+#ifndef	__E500_H__
+#define __E500_H__
+
+#ifndef __ASSEMBLY__
+#include <asm/config_mpc85xx.h>
+
+typedef struct
+{
+  unsigned long freqProcessor[CONFIG_MAX_CPUS];
+  unsigned long freqSystemBus;
+  unsigned long freqDDRBus;
+  unsigned long freqLocalBus;
+  unsigned long freqQE;
+#ifdef CONFIG_SYS_DPAA_FMAN
+  unsigned long freqFMan[CONFIG_SYS_NUM_FMAN];
+#endif
+#ifdef CONFIG_SYS_DPAA_PME
+  unsigned long freqPME;
+#endif
+} MPC85xx_SYS_INFO;
+
+#endif  /* _ASMLANGUAGE */
+
+#define RESET_VECTOR	0xfffffffc
+
+#endif	/* __E500_H__ */
diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/ppc/include/asm/fsl_ddr_sdram.h
new file mode 100644
index 0000000..bfb39c3
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_ddr_sdram.h
@@ -0,0 +1,288 @@
+/*
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
+ * Pick a basic DDR Technology.
+ */
+#include <ddr_spd.h>
+
+#define SDRAM_TYPE_DDR1    2
+#define SDRAM_TYPE_DDR2    3
+#define SDRAM_TYPE_LPDDR1  6
+#define SDRAM_TYPE_DDR3    7
+
+#define DDR_BL4		4	/* burst length 4 */
+#define DDR_BC4		DDR_BL4	/* burst chop for ddr3 */
+#define DDR_OTF		6	/* on-the-fly BC4 and BL8 */
+#define DDR_BL8		8	/* burst length 8 */
+
+#define DDR3_RTT_OFF    	0
+#define DDR3_RTT_60_OHM 	1 /* RTT_Nom = RZQ/4 */
+#define DDR3_RTT_120_OHM	2 /* RTT_Nom = RZQ/2 */
+#define DDR3_RTT_40_OHM		3 /* RTT_Nom = RZQ/6 */
+#define DDR3_RTT_20_OHM		4 /* RTT_Nom = RZQ/12 */
+#define DDR3_RTT_30_OHM		5 /* RTT_Nom = RZQ/8 */
+
+#if defined(CONFIG_FSL_DDR1)
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR	(1)
+typedef ddr1_spd_eeprom_t generic_spd_eeprom_t;
+#ifndef CONFIG_FSL_SDRAM_TYPE
+#define CONFIG_FSL_SDRAM_TYPE	SDRAM_TYPE_DDR1
+#endif
+#elif defined(CONFIG_FSL_DDR2)
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR	(3)
+typedef ddr2_spd_eeprom_t generic_spd_eeprom_t;
+#ifndef CONFIG_FSL_SDRAM_TYPE
+#define CONFIG_FSL_SDRAM_TYPE	SDRAM_TYPE_DDR2
+#endif
+#elif defined(CONFIG_FSL_DDR3)
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR	(3)	/* FIXME */
+typedef ddr3_spd_eeprom_t generic_spd_eeprom_t;
+#ifndef CONFIG_FSL_SDRAM_TYPE
+#define CONFIG_FSL_SDRAM_TYPE	SDRAM_TYPE_DDR3
+#endif
+#endif	/* #if defined(CONFIG_FSL_DDR1) */
+
+#define FSL_DDR_ODT_NEVER		0x0
+#define FSL_DDR_ODT_CS			0x1
+#define FSL_DDR_ODT_ALL_OTHER_CS	0x2
+#define FSL_DDR_ODT_OTHER_DIMM		0x3
+#define FSL_DDR_ODT_ALL      		0x4
+#define FSL_DDR_ODT_SAME_DIMM		0x5
+#define FSL_DDR_ODT_CS_AND_OTHER_DIMM	0x6
+#define FSL_DDR_ODT_OTHER_CS_ONSAMEDIMM 0x7
+
+/* define bank(chip select) interleaving mode */
+#define FSL_DDR_CS0_CS1			0x40
+#define FSL_DDR_CS2_CS3			0x20
+#define FSL_DDR_CS0_CS1_AND_CS2_CS3	(FSL_DDR_CS0_CS1 | FSL_DDR_CS2_CS3)
+#define FSL_DDR_CS0_CS1_CS2_CS3		(FSL_DDR_CS0_CS1_AND_CS2_CS3 | 0x04)
+
+/* define memory controller interleaving mode */
+#define FSL_DDR_CACHE_LINE_INTERLEAVING	0x0
+#define FSL_DDR_PAGE_INTERLEAVING	0x1
+#define FSL_DDR_BANK_INTERLEAVING	0x2
+#define FSL_DDR_SUPERBANK_INTERLEAVING	0x3
+
+/* DDR_SDRAM_CFG - DDR SDRAM Control Configuration
+ */
+#define SDRAM_CFG_MEM_EN		0x80000000
+#define SDRAM_CFG_SREN			0x40000000
+#define SDRAM_CFG_ECC_EN		0x20000000
+#define SDRAM_CFG_RD_EN 		0x10000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR1	0x02000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR2	0x03000000
+#define SDRAM_CFG_SDRAM_TYPE_MASK	0x07000000
+#define SDRAM_CFG_SDRAM_TYPE_SHIFT	24
+#define SDRAM_CFG_DYN_PWR		0x00200000
+#define SDRAM_CFG_32_BE  		0x00080000
+#define SDRAM_CFG_8_BE			0x00040000
+#define SDRAM_CFG_NCAP			0x00020000
+#define SDRAM_CFG_2T_EN  		0x00008000
+#define SDRAM_CFG_BI			0x00000001
+
+#if defined(CONFIG_P4080)
+#define RD_TO_PRE_MASK		0xf
+#define RD_TO_PRE_SHIFT		13
+#define WR_DATA_DELAY_MASK	0xf
+#define WR_DATA_DELAY_SHIFT	9
+#else
+#define RD_TO_PRE_MASK		0x7
+#define RD_TO_PRE_SHIFT		13
+#define WR_DATA_DELAY_MASK	0x7
+#define WR_DATA_DELAY_SHIFT	10
+#endif
+
+/* DDR_MD_CNTL */
+#define MD_CNTL_MD_EN		0x80000000
+#define MD_CNTL_CS_SEL_CS0	0x00000000
+#define MD_CNTL_CS_SEL_CS1	0x10000000
+#define MD_CNTL_CS_SEL_CS2	0x20000000
+#define MD_CNTL_CS_SEL_CS3	0x30000000
+#define MD_CNTL_CS_SEL_CS0_CS1	0x40000000
+#define MD_CNTL_CS_SEL_CS2_CS3	0x50000000
+#define MD_CNTL_MD_SEL_MR	0x00000000
+#define MD_CNTL_MD_SEL_EMR	0x01000000
+#define MD_CNTL_MD_SEL_EMR2	0x02000000
+#define MD_CNTL_MD_SEL_EMR3	0x03000000
+#define MD_CNTL_SET_REF		0x00800000
+#define MD_CNTL_SET_PRE		0x00400000
+#define MD_CNTL_CKE_CNTL_LOW	0x00100000
+#define MD_CNTL_CKE_CNTL_HIGH	0x00200000
+#define MD_CNTL_WRCW		0x00080000
+#define MD_CNTL_MD_VALUE(x)	(x & 0x0000FFFF)
+
+/* DDR_CDR1 */
+#define DDR_CDR1_DHC_EN	0x80000000
+
+/* Record of register values computed */
+typedef struct fsl_ddr_cfg_regs_s {
+	struct {
+		unsigned int bnds;
+		unsigned int config;
+		unsigned int config_2;
+	} cs[CONFIG_CHIP_SELECTS_PER_CTRL];
+	unsigned int timing_cfg_3;
+	unsigned int timing_cfg_0;
+	unsigned int timing_cfg_1;
+	unsigned int timing_cfg_2;
+	unsigned int ddr_sdram_cfg;
+	unsigned int ddr_sdram_cfg_2;
+	unsigned int ddr_sdram_mode;
+	unsigned int ddr_sdram_mode_2;
+	unsigned int ddr_sdram_mode_3;
+	unsigned int ddr_sdram_mode_4;
+	unsigned int ddr_sdram_mode_5;
+	unsigned int ddr_sdram_mode_6;
+	unsigned int ddr_sdram_mode_7;
+	unsigned int ddr_sdram_mode_8;
+	unsigned int ddr_sdram_md_cntl;
+	unsigned int ddr_sdram_interval;
+	unsigned int ddr_data_init;
+	unsigned int ddr_sdram_clk_cntl;
+	unsigned int ddr_init_addr;
+	unsigned int ddr_init_ext_addr;
+	unsigned int timing_cfg_4;
+	unsigned int timing_cfg_5;
+	unsigned int ddr_zq_cntl;
+	unsigned int ddr_wrlvl_cntl;
+	unsigned int ddr_sr_cntr;
+	unsigned int ddr_sdram_rcw_1;
+	unsigned int ddr_sdram_rcw_2;
+	unsigned int ddr_eor;
+	unsigned int ddr_cdr1;
+	unsigned int ddr_cdr2;
+	unsigned int err_disable;
+	unsigned int err_int_en;
+	unsigned int debug[32];
+} fsl_ddr_cfg_regs_t;
+
+typedef struct memctl_options_partial_s {
+	unsigned int all_DIMMs_ECC_capable;
+	unsigned int all_DIMMs_tCKmax_ps;
+	unsigned int all_DIMMs_burst_lengths_bitmask;
+	unsigned int all_DIMMs_registered;
+	unsigned int all_DIMMs_unbuffered;
+	/*	unsigned int lowest_common_SPD_caslat; */
+	unsigned int all_DIMMs_minimum_tRCD_ps;
+} memctl_options_partial_t;
+
+/*
+ * Generalized parameters for memory controller configuration,
+ * might be a little specific to the FSL memory controller
+ */
+typedef struct memctl_options_s {
+	/*
+	 * Memory organization parameters
+	 *
+	 * if DIMM is present in the system
+	 * where DIMMs are with respect to chip select
+	 * where chip selects are with respect to memory boundaries
+	 */
+	unsigned int registered_dimm_en;    /* use registered DIMM support */
+
+	/* Options local to a Chip Select */
+	struct cs_local_opts_s {
+		unsigned int auto_precharge;
+		unsigned int odt_rd_cfg;
+		unsigned int odt_wr_cfg;
+		unsigned int odt_rtt_norm;
+		unsigned int odt_rtt_wr;
+	} cs_local_opts[CONFIG_CHIP_SELECTS_PER_CTRL];
+
+	/* Special configurations for chip select */
+	unsigned int memctl_interleaving;
+	unsigned int memctl_interleaving_mode;
+	unsigned int ba_intlv_ctl;
+	unsigned int addr_hash;
+
+	/* Operational mode parameters */
+	unsigned int ECC_mode;	 /* Use ECC? */
+	/* Initialize ECC using memory controller? */
+	unsigned int ECC_init_using_memctl;
+	unsigned int DQS_config;	/* Use DQS? maybe only with DDR2? */
+	/* SREN - self-refresh during sleep */
+	unsigned int self_refresh_in_sleep;
+	unsigned int dynamic_power;	/* DYN_PWR */
+	/* memory data width to use (16-bit, 32-bit, 64-bit) */
+	unsigned int data_bus_width;
+	unsigned int burst_length;	/* BL4, OTF and BL8 */
+	/* On-The-Fly Burst Chop enable */
+	unsigned int OTF_burst_chop_en;
+	/* mirrior DIMMs for DDR3 */
+	unsigned int mirrored_dimm;
+	unsigned int quad_rank_present;
+	unsigned int ap_en;	/* address parity enable for RDIMM */
+
+	/* Global Timing Parameters */
+	unsigned int cas_latency_override;
+	unsigned int cas_latency_override_value;
+	unsigned int use_derated_caslat;
+	unsigned int additive_latency_override;
+	unsigned int additive_latency_override_value;
+
+	unsigned int clk_adjust;		/* */
+	unsigned int cpo_override;
+	unsigned int write_data_delay;		/* DQS adjust */
+
+	unsigned int wrlvl_override;
+	unsigned int wrlvl_sample;		/* Write leveling */
+	unsigned int wrlvl_start;
+
+	unsigned int half_strength_driver_enable;
+	unsigned int twoT_en;
+	unsigned int threeT_en;
+	unsigned int bstopre;
+	unsigned int tCKE_clock_pulse_width_ps;	/* tCKE */
+	unsigned int tFAW_window_four_activates_ps;	/* tFAW --  FOUR_ACT */
+
+	/* Rtt impedance */
+	unsigned int rtt_override;		/* rtt_override enable */
+	unsigned int rtt_override_value;	/* that is Rtt_Nom for DDR3 */
+	unsigned int rtt_wr_override_value;	/* this is Rtt_WR for DDR3 */
+
+	/* Automatic self refresh */
+	unsigned int auto_self_refresh_en;
+	unsigned int sr_it;
+	/* ZQ calibration */
+	unsigned int zq_en;
+	/* Write leveling */
+	unsigned int wrlvl_en;
+	/* RCW override for RDIMM */
+	unsigned int rcw_override;
+	unsigned int rcw_1;
+	unsigned int rcw_2;
+	/* control register 1 */
+	unsigned int ddr_cdr1;
+} memctl_options_t;
+
+extern phys_size_t fsl_ddr_sdram(void);
+extern int fsl_use_spd(void);
+
+/*
+ * The 85xx boards have a common prototype for fixed_sdram so put the
+ * declaration here.
+ */
+#ifdef CONFIG_MPC85xx
+extern phys_size_t fixed_sdram(void);
+#endif
+
+#if defined(CONFIG_DDR_ECC)
+extern void ddr_enable_ecc(unsigned int dram_size);
+#endif
+
+
+typedef struct fixed_ddr_parm{
+	int min_freq;
+	int max_freq;
+	fsl_ddr_cfg_regs_t *ddr_settings;
+} fixed_ddr_parm_t;
+#endif
diff --git a/arch/ppc/include/asm/fsl_dma.h b/arch/ppc/include/asm/fsl_dma.h
new file mode 100644
index 0000000..712a2ff
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_dma.h
@@ -0,0 +1,141 @@
+/*
+ * Freescale DMA Controller
+ *
+ * Copyright 2006 Freescale Semiconductor, Inc.
+ *
+ * This software may be used and distributed according to the
+ * terms of the GNU Public License, Version 2, incorporated
+ * herein by reference.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
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
+#ifndef _ASM_FSL_DMA_H_
+#define _ASM_FSL_DMA_H_
+
+#include <asm/types.h>
+
+#ifdef CONFIG_MPC83xx
+typedef struct fsl_dma {
+	uint	mr;		/* DMA mode register */
+#define FSL_DMA_MR_CS		0x00000001	/* Channel start */
+#define FSL_DMA_MR_CC		0x00000002	/* Channel continue */
+#define FSL_DMA_MR_CTM		0x00000004	/* Channel xfer mode */
+#define FSL_DMA_MR_CTM_DIRECT	0x00000004	/* Direct channel xfer mode */
+#define FSL_DMA_MR_EOTIE	0x00000080	/* End-of-transfer interrupt en */
+#define FSL_DMA_MR_PRC_MASK	0x00000c00	/* PCI read command */
+#define FSL_DMA_MR_SAHE  	0x00001000	/* Source addr hold enable */
+#define FSL_DMA_MR_DAHE  	0x00002000	/* Dest addr hold enable */
+#define FSL_DMA_MR_SAHTS_MASK	0x0000c000	/* Source addr hold xfer size */
+#define FSL_DMA_MR_DAHTS_MASK	0x00030000	/* Dest addr hold xfer size */
+#define FSL_DMA_MR_EMS_EN	0x00040000	/* Ext master start en */
+#define FSL_DMA_MR_IRQS  	0x00080000	/* Interrupt steer */
+#define FSL_DMA_MR_DMSEN	0x00100000	/* Direct mode snooping en */
+#define FSL_DMA_MR_BWC_MASK	0x00e00000	/* Bandwidth/pause ctl */
+#define FSL_DMA_MR_DRCNT	0x0f000000	/* DMA request count */
+	uint	sr;		/* DMA status register */
+#define FSL_DMA_SR_EOCDI	0x00000001	/* End-of-chain/direct interrupt */
+#define FSL_DMA_SR_EOSI 	0x00000002	/* End-of-segment interrupt */
+#define FSL_DMA_SR_CB		0x00000004	/* Channel busy */
+#define FSL_DMA_SR_TE		0x00000080	/* Transfer error */
+	uint	cdar;		/* DMA current descriptor address register */
+	char	res0[4];
+	uint	sar;		/* DMA source address register */
+	char	res1[4];
+	uint	dar;		/* DMA destination address register */
+	char	res2[4];
+	uint	bcr;		/* DMA byte count register */
+	uint	ndar;		/* DMA next descriptor address register */
+	uint	gsr;		/* DMA general status register (DMA3 ONLY!) */
+	char	res3[84];
+} fsl_dma_t;
+#else
+typedef struct fsl_dma {
+	uint	mr;		/* DMA mode register */
+#define FSL_DMA_MR_CS		0x00000001	/* Channel start */
+#define FSL_DMA_MR_CC		0x00000002	/* Channel continue */
+#define FSL_DMA_MR_CTM		0x00000004	/* Channel xfer mode */
+#define FSL_DMA_MR_CTM_DIRECT	0x00000004	/* Direct channel xfer mode */
+#define FSL_DMA_MR_CA		0x00000008	/* Channel abort */
+#define FSL_DMA_MR_CDSM 	0x00000010
+#define FSL_DMA_MR_XFE		0x00000020	/* Extended features en */
+#define FSL_DMA_MR_EIE		0x00000040	/* Error interrupt en */
+#define FSL_DMA_MR_EOLSIE	0x00000080	/* End-of-lists interrupt en */
+#define FSL_DMA_MR_EOLNIE	0x00000100	/* End-of-links interrupt en */
+#define FSL_DMA_MR_EOSIE	0x00000200	/* End-of-seg interrupt en */
+#define FSL_DMA_MR_SRW		0x00000400	/* Single register write */
+#define FSL_DMA_MR_SAHE  	0x00001000	/* Source addr hold enable */
+#define FSL_DMA_MR_DAHE  	0x00002000	/* Dest addr hold enable */
+#define FSL_DMA_MR_SAHTS_MASK	0x0000c000	/* Source addr hold xfer size */
+#define FSL_DMA_MR_DAHTS_MASK	0x00030000	/* Dest addr hold xfer size */
+#define FSL_DMA_MR_EMS_EN	0x00040000	/* Ext master start en */
+#define FSL_DMA_MR_EMP_EN	0x00200000	/* Ext master pause en */
+#define FSL_DMA_MR_BWC_MASK	0x0f000000	/* Bandwidth/pause ctl */
+#define FSL_DMA_MR_BWC_DIS	0x0f000000	/* Bandwidth/pause ctl disable */
+	uint	sr;		/* DMA status register */
+#define FSL_DMA_SR_EOLSI	0x00000001	/* End-of-list interrupt */
+#define FSL_DMA_SR_EOSI  	0x00000002	/* End-of-segment interrupt */
+#define FSL_DMA_SR_CB		0x00000004	/* Channel busy */
+#define FSL_DMA_SR_EOLNI	0x00000008	/* End-of-links interrupt */
+#define FSL_DMA_SR_PE		0x00000010	/* Programming error */
+#define FSL_DMA_SR_CH		0x00000020	/* Channel halted */
+#define FSL_DMA_SR_TE		0x00000080	/* Transfer error */
+	char	res0[4];
+	uint	clndar;		/* DMA current link descriptor address register */
+	uint	satr;		/* DMA source attributes register */
+#define FSL_DMA_SATR_ESAD_MASK		0x000001ff	/* Extended source addr */
+#define FSL_DMA_SATR_SREAD_NO_SNOOP	0x00040000	/* Read, don't snoop */
+#define FSL_DMA_SATR_SREAD_SNOOP	0x00050000	/* Read, snoop */
+#define FSL_DMA_SATR_SREAD_UNLOCK	0x00070000	/* Read, unlock l2 */
+#define FSL_DMA_SATR_STRAN_MASK  	0x00f00000	/* Source interface  */
+#define FSL_DMA_SATR_SSME		0x01000000	/* Source stride en */
+#define FSL_DMA_SATR_SPCIORDER		0x02000000	/* PCI transaction order */
+#define FSL_DMA_SATR_STFLOWLVL_MASK	0x0c000000	/* RIO flow level */
+#define FSL_DMA_SATR_SBPATRMU		0x20000000	/* Bypass ATMU */
+	uint	sar;		/* DMA source address register */
+	uint	datr;		/* DMA destination attributes register */
+#define FSL_DMA_DATR_EDAD_MASK		0x000001ff	/* Extended dest addr */
+#define FSL_DMA_DATR_DWRITE_NO_SNOOP	0x00040000	/* Write, don't snoop */
+#define FSL_DMA_DATR_DWRITE_SNOOP	0x00050000	/* Write, snoop */
+#define FSL_DMA_DATR_DWRITE_ALLOC	0x00060000	/* Write, alloc l2 */
+#define FSL_DMA_DATR_DWRITE_LOCK	0x00070000	/* Write, lock l2 */
+#define FSL_DMA_DATR_DTRAN_MASK 	0x00f00000	/* Dest interface  */
+#define FSL_DMA_DATR_DSME		0x01000000	/* Dest stride en */
+#define FSL_DMA_DATR_DPCIORDER		0x02000000	/* PCI transaction order */
+#define FSL_DMA_DATR_DTFLOWLVL_MASK	0x0c000000	/* RIO flow level */
+#define FSL_DMA_DATR_DBPATRMU		0x20000000	/* Bypass ATMU */
+	uint	dar;		/* DMA destination address register */
+	uint	bcr;		/* DMA byte count register */
+	char	res1[4];
+	uint	nlndar;		/* DMA next link descriptor address register */
+	char	res2[8];
+	uint	clabdar;	/* DMA current List - alternate base descriptor address Register */
+	char	res3[4];
+	uint	nlsdar;		/* DMA next list descriptor address register */
+	uint	ssr;		/* DMA source stride register */
+	uint	dsr;		/* DMA destination stride register */
+	char	res4[56];
+} fsl_dma_t;
+#endif /* !CONFIG_MPC83xx */
+
+#ifdef CONFIG_FSL_DMA
+void dma_init(void);
+int dmacpy(phys_addr_t dest, phys_addr_t src, phys_size_t n);
+#if (defined(CONFIG_DDR_ECC) && !defined(CONFIG_ECC_INIT_VIA_DDRCONTROLLER))
+void dma_meminit(uint val, uint size);
+#endif
+#endif
+
+#endif	/* _ASM_DMA_H_ */
diff --git a/arch/ppc/include/asm/fsl_enet.h b/arch/ppc/include/asm/fsl_enet.h
new file mode 100644
index 0000000..4fb2857
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_enet.h
@@ -0,0 +1,33 @@
+/*
+ * Copyright 2010 Freescale Semiconductor, Inc.
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
+#ifndef __ASM_PPC_FSL_ENET_H
+#define __ASM_PPC_FSL_ENET_H
+
+enum fsl_phy_enet_if {
+	MII,
+	RMII,
+	GMII,
+	RGMII,
+	RGMII_ID,
+	RGMII_RXID,
+	RGMII_TXID,
+	SGMII,
+	TBI,
+	RTBI,
+	XAUI,
+	FSL_ETH_IF_NONE,
+};
+
+int fdt_fixup_phy_connection(void *blob, int offset, enum fsl_phy_enet_if phyc);
+
+#endif /* __ASM_PPC_FSL_ENET_H */
diff --git a/arch/ppc/include/asm/fsl_fman.h b/arch/ppc/include/asm/fsl_fman.h
new file mode 100644
index 0000000..6c01ffc
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_fman.h
@@ -0,0 +1,212 @@
+/*
+ * MPC85xx Internal Memory Map
+ *
+ * Copyright 2010 Freescale Semiconductor, Inc.
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
+#ifndef __FSL_FMAN_H__
+#define __FSL_FMAN_H__
+
+#include <asm/types.h>
+
+typedef struct fm_bmi_common {
+	u32	fmbm_init;	/* BMI initialization */
+	u32	fmbm_cfg1;	/* BMI configuration1 */
+	u32	fmbm_cfg2;	/* BMI configuration2 */
+	u32	res0[0x5];
+	u32	fmbm_ievr;	/* interrupt event register */
+	u32	fmbm_ier;	/* interrupt enable register */
+	u32	fmbm_ifr;	/* interrupt force register */
+	u32	res1[0x5];
+	u32	fmbm_arb[0x8];	/* BMI arbitration */
+	u32	res2[0x28];
+	u32	fmbm_gde;	/* global debug enable */
+	u32	fmbm_pp[0x3f];	/* BMI port parameters */
+	u32	res3;
+	u32	fmbm_pfs[0x3f];	/* BMI port FIFO size */
+	u32	res4;
+	u32	fmbm_ppid[0x3f];/* port partition ID */
+} fm_bmi_common_t;
+
+typedef struct fm_qmi_common {
+	u32	fmqm_gc;	/* general configuration register */
+	u32	res0;
+	u32	fmqm_eie;	/* error interrupt event register */
+	u32	fmqm_eien;	/* error interrupt enable register */
+	u32	fmqm_eif;	/* error interrupt force register */
+	u32	fmqm_ie;	/* interrupt event register */
+	u32	fmqm_ien;	/* interrupt enable register */
+	u32	fmqm_if;	/* interrupt force register */
+	u32	fmqm_gs;	/* global status register */
+	u32	fmqm_ts;	/* task status register */
+	u32	fmqm_etfc;	/* enqueue total frame counter */
+	u32	fmqm_dtfc;	/* dequeue total frame counter */
+	u32	fmqm_dc0;	/* dequeue counter 0 */
+	u32	fmqm_dc1;	/* dequeue counter 1 */
+	u32	fmqm_dc2;	/* dequeue counter 2 */
+	u32	fmqm_dc3;	/* dequeue counter 3 */
+	u32	fmqm_dfnoc;	/* dequeue FQID not override counter */
+	u32	fmqm_dfcc;	/* dequeue FQID from context counter */
+	u32	fmqm_dffc;	/* dequeue FQID from FD counter */
+	u32	fmqm_dcc;	/* dequeue confirm counter */
+	u32	res1[0xc];
+	u32	fmqm_dtrc;	/* debug trap configuration register */
+	u32	fmqm_efddd;	/* enqueue frame descriptor dynamic debug */
+	u32	res3[0x2];
+	u32	res4[0xdc];	/* missing debug regs */
+} fm_qmi_common_t;
+
+typedef struct fm_bmi {
+	u8	res[1024];
+} fm_bmi_t;
+
+typedef struct fm_qmi {
+	u8	res[1024];
+} fm_qmi_t;
+
+typedef struct fm_parser {
+	u8	res[1024];
+} fm_parser_t;
+
+typedef struct fm_policer {
+	u8	res[4*1024];
+} fm_policer_t;
+
+typedef struct fm_keygen {
+	u8	res[4*1024];
+} fm_keygen_t;
+
+typedef struct fm_dma {
+	u32	fmdmsr;		/* status register */
+	u32	fmdmmr;		/* mode register */
+	u32	fmdmtr;		/* bus threshold register */
+	u32	fmdmhy;		/* bus hysteresis register */
+	u32	fmdmsetr;	/* SOS emergency threshold register */
+	u32	fmdmtah;	/* transfer bus address high register */
+	u32	fmdmtal;	/* transfer bus address low register */
+	u32	fmdmtcid;	/* transfer bus communication ID register */
+	u32	fmdmra;		/* DMA bus internal ram address register */
+	u32	fmdmrd;		/* DMA bus internal ram data register */
+	u32	res0[0xb];
+	u32	fmdmdcr;	/* debug counter */
+	u32	fmdmemsr;	/* emrgency smoother register */
+	u32	res1;
+	u32	fmdmplr[32];	/* FM DMA PID-LIODN # register */
+	u32	res[0x3c8];
+} fm_dma_t;
+
+typedef struct fm_fpm {
+	u32	fpmtnc;		/* TNUM control */
+	u32	fpmprc;		/* Port_ID control */
+	u32	res0;
+	u32	fpmflc;		/* flush control */
+	u32	fpmdis1;	/* dispatch thresholds1 */
+	u32	fpmdis2;	/* dispatch thresholds2 */
+	u32	fmepi;		/* error pending interrupts */
+	u32	fmrie;		/* rams interrupt enable */
+	u32	fpmfcevent[0x4];/* FMan controller event 0-3 */
+	u32	res1[0x4];
+	u32	fpmfcmask[0x4];	/* FMan controller mask 0-3 */
+	u32	res2[0x4];
+	u32	fpmtsc1;	/* timestamp control1 */
+	u32	fpmtsc2;	/* timestamp control2 */
+	u32	fpmtsp;		/* time stamp */
+	u32	fpmtsf;		/* time stamp fraction */
+	u32	fpmrcr;		/* rams control and event */
+	u32	res3[0x3];
+	u32	fpmdrd[0x4];	/* data_ram data 0-3 */
+	u32	res4[0xc];
+	u32	fpmdra;		/* data ram access */
+	u32	fm_ip_rev_1;	/* IP block revision 1 */
+	u32	fm_ip_rev_2;	/* IP block revision 2 */
+	u32	fmrstc;		/* reset command */
+	u32	fmcld;		/* classifier debug control */
+	u32	fmnpi;		/* normal pending interrupts */
+	u32	res5;
+	u32	fmnee;		/* event and enable */
+	u32	fpmcev[0x4];	/* CPU event 0-3 */
+	u32	res6[0x4];
+	u32	fmfp_ps[0x40];	/* port status */
+	u32	res7[0x260];
+	u32	fpmts[0x80];	/* task status */
+	u32	res8[0xa0];
+} fm_fpm_t;
+
+typedef struct fm_imem {
+	u8	res[4*1024];
+} fm_imem_t;
+
+typedef struct fm_soft_parser {
+	u8	res[4*1024];
+} fm_soft_parser_t;
+
+typedef struct fm_dtesc {
+	u8	res[4*1024];
+} fm_dtsec_t;
+
+typedef struct fm_mdio {
+	u8	res[4*1024];
+} fm_mdio_t;
+
+typedef struct fm_10gec {
+	u8	res[4*1024];
+} fm_10gec_t;
+
+typedef struct fm_10gec_mdio {
+	u8	res[4*1024];
+} fm_10gec_mdio_t;
+
+typedef struct fm_1588 {
+	u8	res[4*1024];
+} fm_1588_t;
+
+typedef struct ccsr_fman {
+	u8			muram[0x80000];
+	fm_bmi_common_t		fm_bmi_common;
+	fm_qmi_common_t		fm_qmi_common;
+	u8			res0[2048];
+	struct {
+		fm_bmi_t	fm_bmi;
+		fm_qmi_t	fm_qmi;
+		fm_parser_t	fm_parser;
+		u8		res[1024];
+	} port[63];
+	fm_policer_t		fm_policer;
+	fm_keygen_t		fm_keygen;
+	fm_dma_t		fm_dma;
+	fm_fpm_t		fm_fpm;
+	fm_imem_t		fm_imem;
+	u8			res1[8*1024];
+	fm_soft_parser_t	fm_soft_parser;
+	u8			res2[96*1024];
+	struct {
+		fm_dtsec_t	fm_dtesc;
+		fm_mdio_t	fm_mdio;
+	} mac[4];
+	u8			res3[32*1024];
+	fm_10gec_t		fm_10gec;
+	fm_10gec_mdio_t		fm_10gec_mdio;
+	u8			res4[48*1024];
+	fm_1588_t		fm_1588;
+	u8			res5[4*1024];
+} ccsr_fman_t;
+
+#endif /*__FSL_FMAN_H__*/
diff --git a/arch/ppc/include/asm/fsl_law.h b/arch/ppc/include/asm/fsl_law.h
new file mode 100644
index 0000000..6a4279c
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_law.h
@@ -0,0 +1,123 @@
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
+#define lawar_size(x)	(1ULL << ((x & 0x3f) + 1))
+
+#ifdef CONFIG_FSL_CORENET
+enum law_trgt_if {
+	LAW_TRGT_IF_PCIE_1 = 0x00,
+	LAW_TRGT_IF_PCIE_2 = 0x01,
+	LAW_TRGT_IF_PCIE_3 = 0x02,
+	LAW_TRGT_IF_PCIE_4 = 0x03,
+	LAW_TRGT_IF_RIO_1 = 0x08,
+	LAW_TRGT_IF_RIO_2 = 0x09,
+
+	LAW_TRGT_IF_DDR_1 = 0x10,
+	LAW_TRGT_IF_DDR_2 = 0x11,	/* 2nd controller */
+	LAW_TRGT_IF_DDR_INTRLV = 0x14,
+
+	LAW_TRGT_IF_BMAN = 0x18,
+	LAW_TRGT_IF_DCSR = 0x1d,
+	LAW_TRGT_IF_LBC = 0x1f,
+	LAW_TRGT_IF_QMAN = 0x3c,
+};
+#define LAW_TRGT_IF_DDR		LAW_TRGT_IF_DDR_1
+#else
+enum law_trgt_if {
+	LAW_TRGT_IF_PCI = 0x00,
+	LAW_TRGT_IF_PCI_2 = 0x01,
+#ifndef CONFIG_MPC8641
+	LAW_TRGT_IF_PCIE_1 = 0x02,
+#endif
+#if !defined(CONFIG_MPC8572) && !defined(CONFIG_P2020)
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
+#ifdef CONFIG_MPC8641
+#define LAW_TRGT_IF_PCIE_1	LAW_TRGT_IF_PCI
+#endif
+
+#if defined(CONFIG_MPC8572) || defined(CONFIG_P2020)
+#define LAW_TRGT_IF_PCIE_3	LAW_TRGT_IF_PCI
+#endif
+#endif /* CONFIG_FSL_CORENET */
+
+struct law_entry {
+	int index;
+	phys_addr_t addr;
+	enum law_size size;
+	enum law_trgt_if trgt_id;
+};
+
+extern void set_law(u8 idx, phys_addr_t addr, enum law_size sz, enum law_trgt_if id);
+extern int set_next_law(phys_addr_t addr, enum law_size sz, enum law_trgt_if id);
+extern int set_last_law(phys_addr_t addr, enum law_size sz, enum law_trgt_if id);
+extern int set_ddr_laws(u64 start, u64 sz, enum law_trgt_if id);
+extern struct law_entry find_law(phys_addr_t addr);
+extern void disable_law(u8 idx);
+extern void init_laws(void);
+extern void print_laws(void);
+
+/* define in board code */
+extern struct law_entry law_table[];
+extern int num_law_entries;
+#endif
diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
new file mode 100644
index 0000000..c306bba
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -0,0 +1,531 @@
+/*
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
+#ifdef CONFIG_MPC85xx
+void lbc_sdram_init(void);
+#endif
+
+/* BR - Base Registers
+ */
+#define BR0				0x5000		/* Register offset to immr */
+#define BR1				0x5008
+#define BR2				0x5010
+#define BR3				0x5018
+#define BR4				0x5020
+#define BR5				0x5028
+#define BR6				0x5030
+#define BR7				0x5038
+
+#define BR_BA				0xFFFF8000
+#define BR_BA_SHIFT			15
+#define BR_XBA				0x00006000
+#define BR_XBA_SHIFT			13
+#define BR_PS				0x00001800
+#define BR_PS_SHIFT			11
+#define BR_PS_8  			0x00000800	/* Port Size 8 bit */
+#define BR_PS_16			0x00001000	/* Port Size 16 bit */
+#define BR_PS_32			0x00001800	/* Port Size 32 bit */
+#define BR_DECC  			0x00000600
+#define BR_DECC_SHIFT			9
+#define BR_DECC_OFF			0x00000000
+#define BR_DECC_CHK			0x00000200
+#define BR_DECC_CHK_GEN   		0x00000400
+#define BR_WP				0x00000100
+#define BR_WP_SHIFT			8
+#define BR_MSEL    			0x000000E0
+#define BR_MSEL_SHIFT			5
+#define BR_MS_GPCM			0x00000000	/* GPCM */
+#define BR_MS_FCM			0x00000020	/* FCM */
+#ifdef CONFIG_MPC83xx
+#define BR_MS_SDRAM			0x00000060	/* SDRAM */
+#elif defined(CONFIG_MPC85xx)
+#define BR_MS_SDRAM			0x00000000	/* SDRAM */
+#endif
+#define BR_MS_UPMA			0x00000080	/* UPMA */
+#define BR_MS_UPMB			0x000000A0	/* UPMB */
+#define BR_MS_UPMC			0x000000C0	/* UPMC */
+#if !defined(CONFIG_MPC834x)
+#define BR_ATOM				0x0000000C
+#define BR_ATOM_SHIFT			2
+#endif
+#define BR_V				0x00000001
+#define BR_V_SHIFT			0
+
+#define BR_UPMx_TO_MSEL(x)		((x + 4) << BR_MSEL_SHIFT)
+
+#define UPMA			0
+#define UPMB			1
+#define UPMC			2
+
+#if defined(CONFIG_MPC834x)
+#define BR_RES				~(BR_BA | BR_PS | BR_DECC | BR_WP | BR_MSEL | BR_V)
+#else
+#define BR_RES				~(BR_BA | BR_PS | BR_DECC | BR_WP | BR_MSEL | BR_ATOM | BR_V)
+#endif
+
+/* Convert an address into the right format for the BR registers */
+#if defined(CONFIG_PHYS_64BIT) && !defined(CONFIG_FSL_ELBC)
+#define BR_PHYS_ADDR(x)	((unsigned long)((x & 0x0ffff8000ULL) | \
+					 ((x & 0x300000000ULL) >> 19)))
+#else
+#define BR_PHYS_ADDR(x) (x & 0xffff8000)
+#endif
+
+/* OR - Option Registers
+ */
+#define OR0				0x5004		/* Register offset to immr */
+#define OR1				0x500C
+#define OR2				0x5014
+#define OR3				0x501C
+#define OR4				0x5024
+#define OR5				0x502C
+#define OR6				0x5034
+#define OR7				0x503C
+
+#define OR_GPCM_AM			0xFFFF8000
+#define OR_GPCM_AM_SHIFT		15
+#define OR_GPCM_XAM			0x00006000
+#define OR_GPCM_XAM_SHIFT		13
+#define OR_GPCM_BCTLD			0x00001000
+#define OR_GPCM_BCTLD_SHIFT		12
+#define OR_GPCM_CSNT			0x00000800
+#define OR_GPCM_CSNT_SHIFT		11
+#define OR_GPCM_ACS			0x00000600
+#define OR_GPCM_ACS_SHIFT		9
+#define OR_GPCM_ACS_DIV2		0x00000600
+#define OR_GPCM_ACS_DIV4		0x00000400
+#define OR_GPCM_XACS			0x00000100
+#define OR_GPCM_XACS_SHIFT		8
+#define OR_GPCM_SCY			0x000000F0
+#define OR_GPCM_SCY_SHIFT		4
+#define OR_GPCM_SCY_1			0x00000010
+#define OR_GPCM_SCY_2			0x00000020
+#define OR_GPCM_SCY_3			0x00000030
+#define OR_GPCM_SCY_4			0x00000040
+#define OR_GPCM_SCY_5			0x00000050
+#define OR_GPCM_SCY_6			0x00000060
+#define OR_GPCM_SCY_7			0x00000070
+#define OR_GPCM_SCY_8			0x00000080
+#define OR_GPCM_SCY_9			0x00000090
+#define OR_GPCM_SCY_10			0x000000a0
+#define OR_GPCM_SCY_11			0x000000b0
+#define OR_GPCM_SCY_12			0x000000c0
+#define OR_GPCM_SCY_13			0x000000d0
+#define OR_GPCM_SCY_14			0x000000e0
+#define OR_GPCM_SCY_15			0x000000f0
+#define OR_GPCM_SETA			0x00000008
+#define OR_GPCM_SETA_SHIFT		3
+#define OR_GPCM_TRLX			0x00000004
+#define OR_GPCM_TRLX_SHIFT		2
+#define OR_GPCM_TRLX_CLEAR		0x00000000
+#define OR_GPCM_TRLX_SET		0x00000004
+#define OR_GPCM_EHTR			0x00000002
+#define OR_GPCM_EHTR_SHIFT		1
+#define OR_GPCM_EHTR_CLEAR		0x00000000
+#define OR_GPCM_EHTR_SET		0x00000002
+#define OR_GPCM_EAD			0x00000001
+#define OR_GPCM_EAD_SHIFT		0
+
+/* helpers to convert values into an OR address mask (GPCM mode) */
+#define P2SZ_TO_AM(s)	((~((s) - 1)) & 0xffff8000)	/* must be pow of 2 */
+#define MEG_TO_AM(m)	P2SZ_TO_AM((m) << 20)
+
+#define OR_FCM_AM			0xFFFF8000
+#define OR_FCM_AM_SHIFT				15
+#define OR_FCM_XAM			0x00006000
+#define OR_FCM_XAM_SHIFT		13
+#define OR_FCM_BCTLD			0x00001000
+#define OR_FCM_BCTLD_SHIFT			12
+#define OR_FCM_PGS			0x00000400
+#define OR_FCM_PGS_SHIFT			10
+#define OR_FCM_CSCT			0x00000200
+#define OR_FCM_CSCT_SHIFT			 9
+#define OR_FCM_CST			0x00000100
+#define OR_FCM_CST_SHIFT			 8
+#define OR_FCM_CHT			0x00000080
+#define OR_FCM_CHT_SHIFT			 7
+#define OR_FCM_SCY			0x00000070
+#define OR_FCM_SCY_SHIFT			 4
+#define OR_FCM_SCY_1			0x00000010
+#define OR_FCM_SCY_2			0x00000020
+#define OR_FCM_SCY_3			0x00000030
+#define OR_FCM_SCY_4			0x00000040
+#define OR_FCM_SCY_5			0x00000050
+#define OR_FCM_SCY_6			0x00000060
+#define OR_FCM_SCY_7			0x00000070
+#define OR_FCM_RST			0x00000008
+#define OR_FCM_RST_SHIFT			 3
+#define OR_FCM_TRLX			0x00000004
+#define OR_FCM_TRLX_SHIFT			 2
+#define OR_FCM_EHTR			0x00000002
+#define OR_FCM_EHTR_SHIFT			 1
+
+#define OR_UPM_AM			0xFFFF8000
+#define OR_UPM_AM_SHIFT			15
+#define OR_UPM_XAM			0x00006000
+#define OR_UPM_XAM_SHIFT		13
+#define OR_UPM_BCTLD			0x00001000
+#define OR_UPM_BCTLD_SHIFT		12
+#define OR_UPM_BI			0x00000100
+#define OR_UPM_BI_SHIFT			8
+#define OR_UPM_TRLX			0x00000004
+#define OR_UPM_TRLX_SHIFT		2
+#define OR_UPM_EHTR			0x00000002
+#define OR_UPM_EHTR_SHIFT		1
+#define OR_UPM_EAD			0x00000001
+#define OR_UPM_EAD_SHIFT		0
+
+#define OR_SDRAM_AM			0xFFFF8000
+#define OR_SDRAM_AM_SHIFT		15
+#define OR_SDRAM_XAM			0x00006000
+#define OR_SDRAM_XAM_SHIFT		13
+#define OR_SDRAM_COLS			0x00001C00
+#define OR_SDRAM_COLS_SHIFT		10
+#define OR_SDRAM_ROWS			0x000001C0
+#define OR_SDRAM_ROWS_SHIFT		6
+#define OR_SDRAM_PMSEL			0x00000020
+#define OR_SDRAM_PMSEL_SHIFT		5
+#define OR_SDRAM_EAD			0x00000001
+#define OR_SDRAM_EAD_SHIFT		0
+
+#define OR_AM_32KB			0xFFFF8000
+#define OR_AM_64KB			0xFFFF0000
+#define OR_AM_128KB			0xFFFE0000
+#define OR_AM_256KB			0xFFFC0000
+#define OR_AM_512KB			0xFFF80000
+#define OR_AM_1MB			0xFFF00000
+#define OR_AM_2MB			0xFFE00000
+#define OR_AM_4MB			0xFFC00000
+#define OR_AM_8MB			0xFF800000
+#define OR_AM_16MB			0xFF000000
+#define OR_AM_32MB			0xFE000000
+#define OR_AM_64MB			0xFC000000
+#define OR_AM_128MB			0xF8000000
+#define OR_AM_256MB			0xF0000000
+#define OR_AM_512MB			0xE0000000
+#define OR_AM_1GB			0xC0000000
+#define OR_AM_2GB			0x80000000
+#define OR_AM_4GB			0x00000000
+
+/* MxMR - UPM Machine A/B/C Mode Registers
+ */
+#define MxMR_MAD_MSK		0x0000003f /* Machine Address Mask	   */
+#define MxMR_TLFx_MSK		0x000003c0 /* Refresh Loop Field Mask	   */
+#define MxMR_WLFx_MSK		0x00003c00 /* Write Loop Field Mask	   */
+#define MxMR_WLFx_1X		0x00000400 /*	executed 1 time		   */
+#define MxMR_WLFx_2X		0x00000800 /*	executed 2 times	   */
+#define MxMR_WLFx_3X		0x00000c00 /*	executed 3 times	   */
+#define MxMR_WLFx_4X		0x00001000 /*	executed 4 times	   */
+#define MxMR_WLFx_5X		0x00001400 /*	executed 5 times	   */
+#define MxMR_WLFx_6X		0x00001800 /*	executed 6 times	   */
+#define MxMR_WLFx_7X		0x00001c00 /*	executed 7 times	   */
+#define MxMR_WLFx_8X		0x00002000 /*	executed 8 times	   */
+#define MxMR_WLFx_9X		0x00002400 /*	executed 9 times	   */
+#define MxMR_WLFx_10X		0x00002800 /*	executed 10 times	   */
+#define MxMR_WLFx_11X		0x00002c00 /*	executed 11 times	   */
+#define MxMR_WLFx_12X		0x00003000 /*	executed 12 times	   */
+#define MxMR_WLFx_13X		0x00003400 /*	executed 13 times	   */
+#define MxMR_WLFx_14X		0x00003800 /*	executed 14 times	   */
+#define MxMR_WLFx_15X		0x00003c00 /*	executed 15 times	   */
+#define MxMR_WLFx_16X		0x00000000 /*	executed 16 times	   */
+#define MxMR_RLFx_MSK		0x0003c000 /* Read Loop Field Mask	   */
+#define MxMR_GPL_x4DIS		0x00040000 /* GPL_A4 Ouput Line Disable	   */
+#define MxMR_G0CLx_MSK		0x00380000 /* General Line 0 Control Mask  */
+#define MxMR_DSx_1_CYCL 	0x00000000 /* 1 cycle Disable Period	   */
+#define MxMR_DSx_2_CYCL 	0x00400000 /* 2 cycle Disable Period	   */
+#define MxMR_DSx_3_CYCL 	0x00800000 /* 3 cycle Disable Period	   */
+#define MxMR_DSx_4_CYCL 	0x00c00000 /* 4 cycle Disable Period	   */
+#define MxMR_DSx_MSK		0x00c00000 /* Disable Timer Period Mask	   */
+#define MxMR_AMx_MSK		0x07000000 /* Addess Multiplex Size Mask   */
+#define MxMR_UWPL		0x08000000 /* LUPWAIT Polarity Mask	   */
+#define MxMR_OP_NORM		0x00000000 /* Normal Operation		   */
+#define MxMR_OP_WARR		0x10000000 /* Write to Array		   */
+#define MxMR_OP_RARR		0x20000000 /* Read from Array		   */
+#define MxMR_OP_RUNP		0x30000000 /* Run Pattern		   */
+#define MxMR_OP_MSK		0x30000000 /* Command Opcode Mask	   */
+#define MxMR_RFEN		0x40000000 /* Refresh Enable		   */
+#define MxMR_BSEL		0x80000000 /* Bus Select		   */
+
+#define LBLAWAR_EN			0x80000000
+#define LBLAWAR_4KB			0x0000000B
+#define LBLAWAR_8KB			0x0000000C
+#define LBLAWAR_16KB			0x0000000D
+#define LBLAWAR_32KB			0x0000000E
+#define LBLAWAR_64KB			0x0000000F
+#define LBLAWAR_128KB			0x00000010
+#define LBLAWAR_256KB			0x00000011
+#define LBLAWAR_512KB			0x00000012
+#define LBLAWAR_1MB			0x00000013
+#define LBLAWAR_2MB			0x00000014
+#define LBLAWAR_4MB			0x00000015
+#define LBLAWAR_8MB			0x00000016
+#define LBLAWAR_16MB			0x00000017
+#define LBLAWAR_32MB			0x00000018
+#define LBLAWAR_64MB			0x00000019
+#define LBLAWAR_128MB			0x0000001A
+#define LBLAWAR_256MB			0x0000001B
+#define LBLAWAR_512MB			0x0000001C
+#define LBLAWAR_1GB			0x0000001D
+#define LBLAWAR_2GB			0x0000001E
+
+/* LBCR - Local Bus Configuration Register
+ */
+#define LBCR_LDIS			0x80000000
+#define LBCR_LDIS_SHIFT 		31
+#define LBCR_BCTLC			0x00C00000
+#define LBCR_BCTLC_SHIFT		22
+#define LBCR_LPBSE			0x00020000
+#define LBCR_LPBSE_SHIFT		17
+#define LBCR_EPAR			0x00010000
+#define LBCR_EPAR_SHIFT 		16
+#define LBCR_BMT			0x0000FF00
+#define LBCR_BMT_SHIFT			8
+#define LBCR_BMTPS	 		0x0000000F
+#define LBCR_BMTPS_SHIFT 		0
+
+/* LCRR - Clock Ratio Register
+ */
+#define LCRR_DBYP			0x80000000
+#define LCRR_DBYP_SHIFT 		31
+#define LCRR_BUFCMDC			0x30000000
+#define LCRR_BUFCMDC_SHIFT		28
+#define LCRR_BUFCMDC_1			0x10000000
+#define LCRR_BUFCMDC_2			0x20000000
+#define LCRR_BUFCMDC_3			0x30000000
+#define LCRR_BUFCMDC_4			0x00000000
+#define LCRR_ECL			0x03000000
+#define LCRR_ECL_SHIFT 			24
+#define LCRR_ECL_4			0x00000000
+#define LCRR_ECL_5			0x01000000
+#define LCRR_ECL_6			0x02000000
+#define LCRR_ECL_7			0x03000000
+#define LCRR_EADC			0x00030000
+#define LCRR_EADC_SHIFT 		16
+#define LCRR_EADC_1			0x00010000
+#define LCRR_EADC_2			0x00020000
+#define LCRR_EADC_3			0x00030000
+#define LCRR_EADC_4			0x00000000
+/* CLKDIV is five bits only on 8536, 8572, and 8610, so far, but the fifth bit
+ * should always be zero on older parts that have a four bit CLKDIV.
+ */
+#define LCRR_CLKDIV			0x0000001F
+#define LCRR_CLKDIV_SHIFT		0
+#if defined(CONFIG_MPC83xx) || defined (CONFIG_MPC8540) || \
+    defined(CONFIG_MPC8541) || defined (CONFIG_MPC8555) || \
+    defined(CONFIG_MPC8560)
+#define LCRR_CLKDIV_2			0x00000002
+#define LCRR_CLKDIV_4			0x00000004
+#define LCRR_CLKDIV_8			0x00000008
+#elif defined(CONFIG_FSL_CORENET)
+#define LCRR_CLKDIV_8			0x00000002
+#define LCRR_CLKDIV_16			0x00000004
+#define LCRR_CLKDIV_32			0x00000008
+#else
+#define LCRR_CLKDIV_4			0x00000002
+#define LCRR_CLKDIV_8			0x00000004
+#define LCRR_CLKDIV_16			0x00000008
+#endif
+
+/* LTEDR - Transfer Error Check Disable Register
+ */
+#define LTEDR_BMD	0x80000000 /* Bus monitor disable				*/
+#define LTEDR_PARD	0x20000000 /* Parity error checking disabled			*/
+#define LTEDR_WPD	0x04000000 /* Write protect error checking diable		*/
+#define LTEDR_WARA	0x00800000 /* Write-after-read-atomic error checking diable	*/
+#define LTEDR_RAWA	0x00400000 /* Read-after-write-atomic error checking disable	*/
+#define LTEDR_CSD	0x00080000 /* Chip select error checking disable		*/
+
+/* FMR - Flash Mode Register
+ */
+#define FMR_CWTO               0x0000F000
+#define FMR_CWTO_SHIFT         12
+#define FMR_BOOT               0x00000800
+#define FMR_ECCM               0x00000100
+#define FMR_AL                 0x00000030
+#define FMR_AL_SHIFT           4
+#define FMR_OP                 0x00000003
+#define FMR_OP_SHIFT           0
+
+/* FIR - Flash Instruction Register
+ */
+#define FIR_OP0                0xF0000000
+#define FIR_OP0_SHIFT          28
+#define FIR_OP1                0x0F000000
+#define FIR_OP1_SHIFT          24
+#define FIR_OP2                0x00F00000
+#define FIR_OP2_SHIFT          20
+#define FIR_OP3                0x000F0000
+#define FIR_OP3_SHIFT          16
+#define FIR_OP4                0x0000F000
+#define FIR_OP4_SHIFT          12
+#define FIR_OP5                0x00000F00
+#define FIR_OP5_SHIFT          8
+#define FIR_OP6                0x000000F0
+#define FIR_OP6_SHIFT          4
+#define FIR_OP7                0x0000000F
+#define FIR_OP7_SHIFT          0
+#define FIR_OP_NOP             0x0 /* No operation and end of sequence */
+#define FIR_OP_CA              0x1 /* Issue current column address */
+#define FIR_OP_PA              0x2 /* Issue current block+page address */
+#define FIR_OP_UA              0x3 /* Issue user defined address */
+#define FIR_OP_CM0             0x4 /* Issue command from FCR[CMD0] */
+#define FIR_OP_CM1             0x5 /* Issue command from FCR[CMD1] */
+#define FIR_OP_CM2             0x6 /* Issue command from FCR[CMD2] */
+#define FIR_OP_CM3             0x7 /* Issue command from FCR[CMD3] */
+#define FIR_OP_WB              0x8 /* Write FBCR bytes from FCM buffer */
+#define FIR_OP_WS              0x9 /* Write 1 or 2 bytes from MDR[AS] */
+#define FIR_OP_RB              0xA /* Read FBCR bytes to FCM buffer */
+#define FIR_OP_RS              0xB /* Read 1 or 2 bytes to MDR[AS] */
+#define FIR_OP_CW0             0xC /* Wait then issue FCR[CMD0] */
+#define FIR_OP_CW1             0xD /* Wait then issue FCR[CMD1] */
+#define FIR_OP_RBW             0xE /* Wait then read FBCR bytes */
+#define FIR_OP_RSW             0xF /* Wait then read 1 or 2 bytes */
+
+/* FCR - Flash Command Register
+ */
+#define FCR_CMD0               0xFF000000
+#define FCR_CMD0_SHIFT         24
+#define FCR_CMD1               0x00FF0000
+#define FCR_CMD1_SHIFT         16
+#define FCR_CMD2               0x0000FF00
+#define FCR_CMD2_SHIFT         8
+#define FCR_CMD3               0x000000FF
+#define FCR_CMD3_SHIFT         0
+/* FBAR - Flash Block Address Register
+ */
+#define FBAR_BLK               0x00FFFFFF
+
+/* FPAR - Flash Page Address Register
+ */
+#define FPAR_SP_PI             0x00007C00
+#define FPAR_SP_PI_SHIFT       10
+#define FPAR_SP_MS             0x00000200
+#define FPAR_SP_CI             0x000001FF
+#define FPAR_SP_CI_SHIFT       0
+#define FPAR_LP_PI             0x0003F000
+#define FPAR_LP_PI_SHIFT       12
+#define FPAR_LP_MS             0x00000800
+#define FPAR_LP_CI             0x000007FF
+#define FPAR_LP_CI_SHIFT       0
+
+/* LSDMR - SDRAM Machine Mode Register
+ */
+#define LSDMR_RFEN	(1 << (31 -  1))
+#define LSDMR_BSMA1516	(3 << (31 - 10))
+#define LSDMR_BSMA1617	(4 << (31 - 10))
+#define LSDMR_RFCR5	(3 << (31 - 16))
+#define LSDMR_RFCR16	(7 << (31 - 16))
+#define LSDMR_PRETOACT3 (3 << (31 - 19))
+#define LSDMR_PRETOACT7	(7 << (31 - 19))
+#define LSDMR_ACTTORW3	(3 << (31 - 22))
+#define LSDMR_ACTTORW7	(7 << (31 - 22))
+#define LSDMR_ACTTORW6	(6 << (31 - 22))
+#define LSDMR_BL8	(1 << (31 - 23))
+#define LSDMR_WRC2	(2 << (31 - 27))
+#define LSDMR_WRC4	(0 << (31 - 27))
+#define LSDMR_BUFCMD	(1 << (31 - 29))
+#define LSDMR_CL3	(3 << (31 - 31))
+
+#define LSDMR_OP_NORMAL (0 << (31 - 4))
+#define LSDMR_OP_ARFRSH (1 << (31 - 4))
+#define LSDMR_OP_SRFRSH (2 << (31 - 4))
+#define LSDMR_OP_MRW    (3 << (31 - 4))
+#define LSDMR_OP_PRECH  (4 << (31 - 4))
+#define LSDMR_OP_PCHALL (5 << (31 - 4))
+#define LSDMR_OP_ACTBNK (6 << (31 - 4))
+#define LSDMR_OP_RWINV  (7 << (31 - 4))
+
+/* LTESR - Transfer Error Status Register
+ */
+#define LTESR_BM               0x80000000
+#define LTESR_FCT              0x40000000
+#define LTESR_PAR              0x20000000
+#define LTESR_WP               0x04000000
+#define LTESR_ATMW             0x00800000
+#define LTESR_ATMR             0x00400000
+#define LTESR_CS               0x00080000
+#define LTESR_CC               0x00000001
+
+#ifndef __ASSEMBLY__
+#include <asm/io.h>
+
+extern void print_lbc_regs(void);
+extern void init_early_memctl_regs(void);
+extern void upmconfig(uint upm, uint *table, uint size);
+
+#define LBC_BASE_ADDR ((fsl_lbc_t *)CONFIG_SYS_LBC_ADDR)
+#define get_lbc_br(i) (in_be32(&(LBC_BASE_ADDR)->bank[i].br))
+#define get_lbc_or(i) (in_be32(&(LBC_BASE_ADDR)->bank[i].or))
+#define set_lbc_br(i, v) (out_be32(&(LBC_BASE_ADDR)->bank[i].br, v))
+#define set_lbc_or(i, v) (out_be32(&(LBC_BASE_ADDR)->bank[i].or, v))
+
+typedef struct lbc_bank {
+	u32     br;
+	u32     or;
+} lbc_bank_t;
+
+/* Local Bus Controller Registers */
+typedef struct fsl_lbc {
+	lbc_bank_t      bank[8];
+	u8	res1[40];
+	u32     mar;            /* LBC UPM Addr */
+	u8      res2[4];
+	u32     mamr;           /* LBC UPMA Mode */
+	u32     mbmr;           /* LBC UPMB Mode */
+	u32     mcmr;           /* LBC UPMC Mode */
+	u8      res3[8];
+	u32     mrtpr;          /* LBC Memory Refresh Timer Prescaler */
+	u32     mdr;            /* LBC UPM Data */
+#ifdef CONFIG_FSL_ELBC
+	u8      res4[4];
+	u32     lsor;
+	u8      res5[12];
+	u32     lurt;           /* LBC UPM Refresh Timer */
+	u8	res6[4];
+#else
+	u8	res4[8];
+	u32     lsdmr;          /* LBC SDRAM Mode */
+	u8	res5[8];
+	u32     lurt;           /* LBC UPM Refresh Timer */
+	u32     lsrt;           /* LBC SDRAM Refresh Timer */
+#endif
+	u8      res7[8];
+	u32     ltesr;          /* LBC Transfer Error Status */
+	u32     ltedr;          /* LBC Transfer Error Disable */
+	u32     lteir;          /* LBC Transfer Error IRQ */
+	u32     lteatr;         /* LBC Transfer Error Attrs */
+	u32     ltear;          /* LBC Transfer Error Addr */
+	u8      res8[12];
+	u32     lbcr;           /* LBC Configuration */
+	u32     lcrr;           /* LBC Clock Ratio */
+#ifdef CONFIG_NAND_FSL_ELBC
+	u8	res9[0x8];
+	u32     fmr;            /* Flash Mode Register */
+	u32     fir;            /* Flash Instruction Register */
+	u32     fcr;            /* Flash Command Register */
+	u32     fbar;           /* Flash Block Addr Register */
+	u32     fpar;           /* Flash Page Addr Register */
+	u32     fbcr;           /* Flash Byte Count Register */
+	u8      res10[0xF08];
+#else
+	u8      res9[0xF28];
+#endif
+} fsl_lbc_t;
+
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_PPC_FSL_LBC_H */
diff --git a/arch/ppc/include/asm/fsl_portals.h b/arch/ppc/include/asm/fsl_portals.h
new file mode 100644
index 0000000..cb32927
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_portals.h
@@ -0,0 +1,59 @@
+/*
+ * Copyright 2009-2010 Freescale Semiconductor, Inc.
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
+#ifndef _FSL_PORTALS_H_
+#define _FSL_PORTALS_H_
+
+/* entries must be in order and contiguous */
+enum fsl_dpaa_dev {
+	FSL_HW_PORTAL_SEC,
+#ifdef CONFIG_SYS_DPAA_FMAN
+	FSL_HW_PORTAL_FMAN1,
+#if (CONFIG_SYS_NUM_FMAN == 2)
+	FSL_HW_PORTAL_FMAN2,
+#endif
+#endif
+#ifdef CONFIG_SYS_DPAA_PME
+	FSL_HW_PORTAL_PME,
+#endif
+};
+
+struct qportal_info {
+	u16	dliodn;	/* DQRR LIODN */
+	u16	fliodn;	/* frame data LIODN */
+	u16	liodn_offset;
+	u8	sdest;
+};
+
+#define SET_QP_INFO(dqrr, fdata, off, dest) \
+	{ .dliodn = dqrr, .fliodn = fdata, .liodn_offset = off, .sdest = dest }
+
+extern int get_dpaa_liodn(enum fsl_dpaa_dev dpaa_dev,
+			  u32 *liodns, int liodn_offset);
+extern void setup_portals(void);
+extern void fdt_fixup_qportals(void *blob);
+
+extern struct qportal_info qp_info[];
+extern void fdt_portal(void *blob, const char *compat, const char *container,
+			u64 addr, u32 size);
+
+#endif
diff --git a/arch/ppc/include/asm/fsl_serdes.h b/arch/ppc/include/asm/fsl_serdes.h
new file mode 100644
index 0000000..85518eb
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_serdes.h
@@ -0,0 +1,56 @@
+/*
+ * Copyright 2010 Freescale Semiconductor, Inc.
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
+#ifndef __FSL_SERDES_H
+#define __FSL_SERDES_H
+
+#include <config.h>
+
+enum srds_prtcl {
+	NONE = 0,
+	PCIE1,
+	PCIE2,
+	PCIE3,
+	PCIE4,
+	SATA1,
+	SATA2,
+	SRIO1,
+	SRIO2,
+	SGMII_FM1_DTSEC1,
+	SGMII_FM1_DTSEC2,
+	SGMII_FM1_DTSEC3,
+	SGMII_FM1_DTSEC4,
+	SGMII_FM1_DTSEC5,
+	SGMII_FM2_DTSEC1,
+	SGMII_FM2_DTSEC2,
+	SGMII_FM2_DTSEC3,
+	SGMII_FM2_DTSEC4,
+	SGMII_TSEC1,
+	SGMII_TSEC2,
+	SGMII_TSEC3,
+	SGMII_TSEC4,
+	XAUI_FM1,
+	XAUI_FM2,
+	AURORA,
+};
+
+int is_serdes_configured(enum srds_prtcl device);
+void fsl_serdes_init(void);
+
+#endif /* __FSL_SERDES_H */
diff --git a/arch/ppc/include/asm/fsl_upm.h b/arch/ppc/include/asm/fsl_upm.h
new file mode 100644
index 0000000..5d7156f
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_upm.h
@@ -0,0 +1,48 @@
+/*
+ * FSL UPM NAND driver
+ *
+ * Copyright (C) 2007 MontaVista Software, Inc.
+ *                    Anton Vorontsov <avorontsov@ru.mvista.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#ifndef __LINUX_MTD_NAND_FSL_UPM
+#define __LINUX_MTD_NAND_FSL_UPM
+
+#include <linux/mtd/nand.h>
+
+#define FSL_UPM_WAIT_RUN_PATTERN  0x1
+#define FSL_UPM_WAIT_WRITE_BYTE   0x2
+#define FSL_UPM_WAIT_WRITE_BUFFER 0x4
+
+struct fsl_upm {
+	void __iomem *mdr;
+	void __iomem *mxmr;
+	void __iomem *mar;
+	void __iomem *io_addr;
+};
+
+struct fsl_upm_nand {
+	struct fsl_upm upm;
+
+	int width;
+	int upm_cmd_offset;
+	int upm_addr_offset;
+	int upm_mar_chip_offset;
+	int wait_flags;
+	int (*dev_ready)(int chip_nr);
+	int chip_delay;
+	int chip_offset;
+	int chip_nr;
+
+	/* no need to fill */
+	int last_ctrl;
+};
+
+extern int fsl_upm_nand_init(struct nand_chip *chip, struct fsl_upm_nand *fun);
+
+#endif
diff --git a/arch/ppc/include/asm/global_data.h b/arch/ppc/include/asm/global_data.h
new file mode 100644
index 0000000..add3803
--- /dev/null
+++ b/arch/ppc/include/asm/global_data.h
@@ -0,0 +1,121 @@
+/*
+ * (C) Copyright 2002-2010
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
+#ifndef	__ASM_GBL_DATA_H
+#define __ASM_GBL_DATA_H
+
+#include "config.h"
+#include "asm/types.h"
+
+/*
+ * The following data structure is placed in some memory wich is
+ * available very early after boot (like DPRAM on MPC8xx/MPC82xx, or
+ * some locked parts of the data cache) to allow for a minimum set of
+ * global variables during system initialization (until we have set
+ * up the memory controller so that we can use RAM).
+ *
+ * Keep it *SMALL* and remember to set GENERATED_GBL_DATA_SIZE > sizeof(gd_t)
+ */
+
+typedef	struct	global_data {
+	bd_t		*bd;
+	unsigned long	flags;
+	unsigned long	baudrate;
+	unsigned long	cpu_clk;	/* CPU clock in Hz! */
+	unsigned long	bus_clk;
+	unsigned long   mem_clk;
+#if defined(CONFIG_FSL_ESDHC)
+	u32 sdhc_clk;
+#endif
+#if defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx)
+	u32 lbc_clk;
+	void *cpu;
+#endif /* CONFIG_MPC85xx || CONFIG_MPC86xx */
+#if defined(CONFIG_MPC83xx) || defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx)
+	u32 i2c1_clk;
+	u32 i2c2_clk;
+#endif
+#if defined(CONFIG_FSL_LAW)
+	u32 used_laws;
+#endif
+#if defined(CONFIG_E500)
+	u32 used_tlb_cams[(CONFIG_SYS_NUM_TLBCAMS+31)/32];
+#endif
+#if defined(CONFIG_MPC5xxx)
+	unsigned long	ipb_clk;
+	unsigned long	pci_clk;
+#endif
+#if defined(CONFIG_MPC512X)
+	u32 ips_clk;
+	u32 csb_clk;
+	u32 pci_clk;
+#endif /* CONFIG_MPC512X */
+	phys_size_t	ram_size;	/* RAM size */
+	unsigned long	reset_status;	/* reset status register at boot	*/
+	unsigned long	env_addr;	/* Address  of Environment struct	*/
+	unsigned long	env_valid;	/* Checksum of Environment valid?	*/
+	unsigned long	have_console;	/* serial_init() was called		*/
+	unsigned long	relocaddr;	/* Start address of U-Boot in RAM */
+
+#if defined(CONFIG_LCD) || defined(CONFIG_VIDEO)
+	unsigned long	fb_base;	/* Base address of framebuffer memory	*/
+#endif
+
+#if defined(CONFIG_POST) || defined(CONFIG_LOGBUFFER)
+	unsigned long	post_log_word;  /* Record POST activities */
+#ifdef CONFIG_GE
+	unsigned long	post_succ_word;  /* Record POST success */
+#endif
+	unsigned long	post_init_f_time;  /* When post_init_f started */
+#endif
+#ifdef CONFIG_BOARD_TYPES
+	unsigned long	board_type;
+#endif
+#if defined(CONFIG_WD_MAX_RATE)
+	unsigned long long wdt_last;	/* trace watch-dog triggering rate */
+#endif
+	void		**jt;		/* jump table */
+	char		env_buf[32];	/* buffer for getenv() before reloc. */
+} gd_t;
+
+/*
+ * Global Data Flags
+ */
+#define	GD_FLG_RELOC		0x00001	/* Code was relocated to RAM		*/
+#define	GD_FLG_DEVINIT		0x00002	/* Devices have been initialized	*/
+#define	GD_FLG_SILENT		0x00004	/* Silent mode				*/
+#define	GD_FLG_POSTFAIL		0x00008	/* Critical POST test failed		*/
+#define	GD_FLG_POSTSTOP		0x00010	/* POST seqeunce aborted		*/
+#define	GD_FLG_LOGINIT		0x00020	/* Log Buffer has been initialized	*/
+#define GD_FLG_DISABLE_CONSOLE	0x00040	/* Disable console (in & out)		*/
+#define GD_FLG_ENV_READY	0x00080	/* Environment imported into hash table	*/
+
+#if 1
+#define DECLARE_GLOBAL_DATA_PTR     register volatile gd_t *gd asm ("r2")
+#else /* We could use plain global data, but the resulting code is bigger */
+#define XTRN_DECLARE_GLOBAL_DATA_PTR	extern
+#define DECLARE_GLOBAL_DATA_PTR     XTRN_DECLARE_GLOBAL_DATA_PTR \
+				    gd_t *gd
+#endif
+
+#endif /* __ASM_GBL_DATA_H */
diff --git a/arch/ppc/include/asm/mp.h b/arch/ppc/include/asm/mp.h
new file mode 100644
index 0000000..3ffa30b
--- /dev/null
+++ b/arch/ppc/include/asm/mp.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright 2009-2010 Freescale Semiconductor, Inc.
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
+ *
+ */
+
+#ifndef _ASM_MP_H_
+#define _ASM_MP_H_
+
+#include <lmb.h>
+
+void setup_mp(void);
+void cpu_mp_lmb_reserve(struct lmb *lmb);
+u32 determine_mp_bootpg(void);
+int is_core_disabled(int nr);
+
+#endif
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
new file mode 100644
index 0000000..710e528
--- /dev/null
+++ b/include/ddr_spd.h
@@ -0,0 +1,317 @@
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef _DDR_SPD_H_
+#define _DDR_SPD_H_
+
+/*
+ * Format from "JEDEC Standard No. 21-C,
+ * Appendix D: Rev 1.0: SPD's for DDR SDRAM
+ */
+typedef struct ddr1_spd_eeprom_s {
+	unsigned char info_size;   /*  0 # bytes written into serial memory */
+	unsigned char chip_size;   /*  1 Total # bytes of SPD memory device */
+	unsigned char mem_type;    /*  2 Fundamental memory type */
+	unsigned char nrow_addr;   /*  3 # of Row Addresses on this assembly */
+	unsigned char ncol_addr;   /*  4 # of Column Addrs on this assembly */
+	unsigned char nrows;       /*  5 Number of DIMM Banks */
+	unsigned char dataw_lsb;   /*  6 Data Width of this assembly */
+	unsigned char dataw_msb;   /*  7 ... Data Width continuation */
+	unsigned char voltage;     /*  8 Voltage intf std of this assembly */
+	unsigned char clk_cycle;   /*  9 SDRAM Cycle time @ CL=X */
+	unsigned char clk_access;  /* 10 SDRAM Access from Clk @ CL=X (tAC) */
+	unsigned char config;      /* 11 DIMM Configuration type */
+	unsigned char refresh;     /* 12 Refresh Rate/Type */
+	unsigned char primw;       /* 13 Primary SDRAM Width */
+	unsigned char ecw;         /* 14 Error Checking SDRAM width */
+	unsigned char min_delay;   /* 15 for Back to Back Random Address */
+	unsigned char burstl;      /* 16 Burst Lengths Supported */
+	unsigned char nbanks;      /* 17 # of Banks on SDRAM Device */
+	unsigned char cas_lat;     /* 18 CAS# Latencies Supported */
+	unsigned char cs_lat;      /* 19 CS# Latency */
+	unsigned char write_lat;   /* 20 Write Latency (aka Write Recovery) */
+	unsigned char mod_attr;    /* 21 SDRAM Module Attributes */
+	unsigned char dev_attr;    /* 22 SDRAM Device Attributes */
+	unsigned char clk_cycle2;  /* 23 Min SDRAM Cycle time @ CL=X-0.5 */
+	unsigned char clk_access2; /* 24 SDRAM Access from
+				         Clk @ CL=X-0.5 (tAC) */
+	unsigned char clk_cycle3;  /* 25 Min SDRAM Cycle time @ CL=X-1 */
+	unsigned char clk_access3; /* 26 Max Access from Clk @ CL=X-1 (tAC) */
+	unsigned char trp;         /* 27 Min Row Precharge Time (tRP)*/
+	unsigned char trrd;        /* 28 Min Row Active to Row Active (tRRD) */
+	unsigned char trcd;        /* 29 Min RAS to CAS Delay (tRCD) */
+	unsigned char tras;        /* 30 Minimum RAS Pulse Width (tRAS) */
+	unsigned char bank_dens;   /* 31 Density of each bank on module */
+	unsigned char ca_setup;    /* 32 Addr + Cmd Setup Time Before Clk */
+	unsigned char ca_hold;     /* 33 Addr + Cmd Hold Time After Clk */
+	unsigned char data_setup;  /* 34 Data Input Setup Time Before Strobe */
+	unsigned char data_hold;   /* 35 Data Input Hold Time After Strobe */
+	unsigned char res_36_40[5];/* 36-40 reserved for VCSDRAM */
+	unsigned char trc;         /* 41 Min Active to Auto refresh time tRC */
+	unsigned char trfc;        /* 42 Min Auto to Active period tRFC */
+	unsigned char tckmax;      /* 43 Max device cycle time tCKmax */
+	unsigned char tdqsq;       /* 44 Max DQS to DQ skew (tDQSQ max) */
+	unsigned char tqhs;        /* 45 Max Read DataHold skew (tQHS) */
+	unsigned char res_46;      /* 46 Reserved */
+	unsigned char dimm_height; /* 47 DDR SDRAM DIMM Height */
+	unsigned char res_48_61[14]; /* 48-61 Reserved */
+	unsigned char spd_rev;     /* 62 SPD Data Revision Code */
+	unsigned char cksum;       /* 63 Checksum for bytes 0-62 */
+	unsigned char mid[8];      /* 64-71 Mfr's JEDEC ID code per JEP-106 */
+	unsigned char mloc;        /* 72 Manufacturing Location */
+	unsigned char mpart[18];   /* 73 Manufacturer's Part Number */
+	unsigned char rev[2];      /* 91 Revision Code */
+	unsigned char mdate[2];    /* 93 Manufacturing Date */
+	unsigned char sernum[4];   /* 95 Assembly Serial Number */
+	unsigned char mspec[27];   /* 99-127 Manufacturer Specific Data */
+
+} ddr1_spd_eeprom_t;
+
+/*
+ * Format from "JEDEC Appendix X: Serial Presence Detects for DDR2 SDRAM",
+ * SPD Revision 1.2
+ */
+typedef struct ddr2_spd_eeprom_s {
+	unsigned char info_size;   /*  0 # bytes written into serial memory */
+	unsigned char chip_size;   /*  1 Total # bytes of SPD memory device */
+	unsigned char mem_type;    /*  2 Fundamental memory type */
+	unsigned char nrow_addr;   /*  3 # of Row Addresses on this assembly */
+	unsigned char ncol_addr;   /*  4 # of Column Addrs on this assembly */
+	unsigned char mod_ranks;   /*  5 Number of DIMM Ranks */
+	unsigned char dataw;       /*  6 Module Data Width */
+	unsigned char res_7;       /*  7 Reserved */
+	unsigned char voltage;     /*  8 Voltage intf std of this assembly */
+	unsigned char clk_cycle;   /*  9 SDRAM Cycle time @ CL=X */
+	unsigned char clk_access;  /* 10 SDRAM Access from Clk @ CL=X (tAC) */
+	unsigned char config;      /* 11 DIMM Configuration type */
+	unsigned char refresh;     /* 12 Refresh Rate/Type */
+	unsigned char primw;       /* 13 Primary SDRAM Width */
+	unsigned char ecw;         /* 14 Error Checking SDRAM width */
+	unsigned char res_15;      /* 15 Reserved */
+	unsigned char burstl;      /* 16 Burst Lengths Supported */
+	unsigned char nbanks;      /* 17 # of Banks on Each SDRAM Device */
+	unsigned char cas_lat;     /* 18 CAS# Latencies Supported */
+	unsigned char mech_char;   /* 19 DIMM Mechanical Characteristics */
+	unsigned char dimm_type;   /* 20 DIMM type information */
+	unsigned char mod_attr;    /* 21 SDRAM Module Attributes */
+	unsigned char dev_attr;    /* 22 SDRAM Device Attributes */
+	unsigned char clk_cycle2;  /* 23 Min SDRAM Cycle time @ CL=X-1 */
+	unsigned char clk_access2; /* 24 SDRAM Access from Clk @ CL=X-1 (tAC) */
+	unsigned char clk_cycle3;  /* 25 Min SDRAM Cycle time @ CL=X-2 */
+	unsigned char clk_access3; /* 26 Max Access from Clk @ CL=X-2 (tAC) */
+	unsigned char trp;         /* 27 Min Row Precharge Time (tRP)*/
+	unsigned char trrd;        /* 28 Min Row Active to Row Active (tRRD) */
+	unsigned char trcd;        /* 29 Min RAS to CAS Delay (tRCD) */
+	unsigned char tras;        /* 30 Minimum RAS Pulse Width (tRAS) */
+	unsigned char rank_dens;   /* 31 Density of each rank on module */
+	unsigned char ca_setup;    /* 32 Addr+Cmd Setup Time Before Clk (tIS) */
+	unsigned char ca_hold;     /* 33 Addr+Cmd Hold Time After Clk (tIH) */
+	unsigned char data_setup;  /* 34 Data Input Setup Time
+				         Before Strobe (tDS) */
+	unsigned char data_hold;   /* 35 Data Input Hold Time
+				         After Strobe (tDH) */
+	unsigned char twr;         /* 36 Write Recovery time tWR */
+	unsigned char twtr;        /* 37 Int write to read delay tWTR */
+	unsigned char trtp;        /* 38 Int read to precharge delay tRTP */
+	unsigned char mem_probe;   /* 39 Mem analysis probe characteristics */
+	unsigned char trctrfc_ext; /* 40 Extensions to trc and trfc */
+	unsigned char trc;         /* 41 Min Active to Auto refresh time tRC */
+	unsigned char trfc;        /* 42 Min Auto to Active period tRFC */
+	unsigned char tckmax;      /* 43 Max device cycle time tCKmax */
+	unsigned char tdqsq;       /* 44 Max DQS to DQ skew (tDQSQ max) */
+	unsigned char tqhs;        /* 45 Max Read DataHold skew (tQHS) */
+	unsigned char pll_relock;  /* 46 PLL Relock time */
+	unsigned char Tcasemax;    /* 47 Tcasemax */
+	unsigned char psiTAdram;   /* 48 Thermal Resistance of DRAM Package from
+				         Top (Case) to Ambient (Psi T-A DRAM) */
+	unsigned char dt0_mode;    /* 49 DRAM Case Temperature Rise from Ambient
+				         due to Activate-Precharge/Mode Bits
+					 (DT0/Mode Bits) */
+	unsigned char dt2n_dt2q;   /* 50 DRAM Case Temperature Rise from Ambient
+				         due to Precharge/Quiet Standby
+					 (DT2N/DT2Q) */
+	unsigned char dt2p;        /* 51 DRAM Case Temperature Rise from Ambient
+				         due to Precharge Power-Down (DT2P) */
+	unsigned char dt3n;        /* 52 DRAM Case Temperature Rise from Ambient
+				         due to Active Standby (DT3N) */
+	unsigned char dt3pfast;    /* 53 DRAM Case Temperature Rise from Ambient
+				         due to Active Power-Down with
+					 Fast PDN Exit (DT3Pfast) */
+	unsigned char dt3pslow;    /* 54 DRAM Case Temperature Rise from Ambient
+				         due to Active Power-Down with Slow
+					 PDN Exit (DT3Pslow) */
+	unsigned char dt4r_dt4r4w; /* 55 DRAM Case Temperature Rise from Ambient
+				         due to Page Open Burst Read/DT4R4W
+					 Mode Bit (DT4R/DT4R4W Mode Bit) */
+	unsigned char dt5b;        /* 56 DRAM Case Temperature Rise from Ambient
+				         due to Burst Refresh (DT5B) */
+	unsigned char dt7;         /* 57 DRAM Case Temperature Rise from Ambient
+				         due to Bank Interleave Reads with
+					 Auto-Precharge (DT7) */
+	unsigned char psiTApll;    /* 58 Thermal Resistance of PLL Package form
+				         Top (Case) to Ambient (Psi T-A PLL) */
+	unsigned char psiTAreg;    /* 59 Thermal Reisitance of Register Package
+				         from Top (Case) to Ambient
+					 (Psi T-A Register) */
+	unsigned char dtpllactive; /* 60 PLL Case Temperature Rise from Ambient
+				         due to PLL Active (DT PLL Active) */
+	unsigned char dtregact;    /* 61 Register Case Temperature Rise from
+				         Ambient due to Register Active/Mode Bit
+					 (DT Register Active/Mode Bit) */
+	unsigned char spd_rev;     /* 62 SPD Data Revision Code */
+	unsigned char cksum;       /* 63 Checksum for bytes 0-62 */
+	unsigned char mid[8];      /* 64 Mfr's JEDEC ID code per JEP-106 */
+	unsigned char mloc;        /* 72 Manufacturing Location */
+	unsigned char mpart[18];   /* 73 Manufacturer's Part Number */
+	unsigned char rev[2];      /* 91 Revision Code */
+	unsigned char mdate[2];    /* 93 Manufacturing Date */
+	unsigned char sernum[4];   /* 95 Assembly Serial Number */
+	unsigned char mspec[27];   /* 99-127 Manufacturer Specific Data */
+
+} ddr2_spd_eeprom_t;
+
+typedef struct ddr3_spd_eeprom_s {
+	/* General Section: Bytes 0-59 */
+	unsigned char info_size_crc;   /*  0 # bytes written into serial memory,
+					     CRC coverage */
+	unsigned char spd_rev;         /*  1 Total # bytes of SPD mem device */
+	unsigned char mem_type;        /*  2 Key Byte / Fundamental mem type */
+	unsigned char module_type;     /*  3 Key Byte / Module Type */
+	unsigned char density_banks;   /*  4 SDRAM Density and Banks */
+	unsigned char addressing;      /*  5 SDRAM Addressing */
+	unsigned char module_vdd;      /*  6 Module nominal voltage, VDD */
+	unsigned char organization;    /*  7 Module Organization */
+	unsigned char bus_width;       /*  8 Module Memory Bus Width */
+	unsigned char ftb_div;         /*  9 Fine Timebase (FTB)
+					     Dividend / Divisor */
+	unsigned char mtb_dividend;    /* 10 Medium Timebase (MTB) Dividend */
+	unsigned char mtb_divisor;     /* 11 Medium Timebase (MTB) Divisor */
+	unsigned char tCK_min;         /* 12 SDRAM Minimum Cycle Time */
+	unsigned char res_13;          /* 13 Reserved */
+	unsigned char caslat_lsb;      /* 14 CAS Latencies Supported,
+					     Least Significant Byte */
+	unsigned char caslat_msb;      /* 15 CAS Latencies Supported,
+					     Most Significant Byte */
+	unsigned char tAA_min;         /* 16 Min CAS Latency Time */
+	unsigned char tWR_min;         /* 17 Min Write REcovery Time */
+	unsigned char tRCD_min;        /* 18 Min RAS# to CAS# Delay Time */
+	unsigned char tRRD_min;        /* 19 Min Row Active to
+					     Row Active Delay Time */
+	unsigned char tRP_min;         /* 20 Min Row Precharge Delay Time */
+	unsigned char tRAS_tRC_ext;    /* 21 Upper Nibbles for tRAS and tRC */
+	unsigned char tRAS_min_lsb;    /* 22 Min Active to Precharge
+					     Delay Time */
+	unsigned char tRC_min_lsb;     /* 23 Min Active to Active/Refresh
+					     Delay Time, LSB */
+	unsigned char tRFC_min_lsb;    /* 24 Min Refresh Recovery Delay Time */
+	unsigned char tRFC_min_msb;    /* 25 Min Refresh Recovery Delay Time */
+	unsigned char tWTR_min;        /* 26 Min Internal Write to
+					     Read Command Delay Time */
+	unsigned char tRTP_min;        /* 27 Min Internal Read to Precharge
+					     Command Delay Time */
+	unsigned char tFAW_msb;        /* 28 Upper Nibble for tFAW */
+	unsigned char tFAW_min;        /* 29 Min Four Activate Window
+					     Delay Time*/
+	unsigned char opt_features;    /* 30 SDRAM Optional Features */
+	unsigned char therm_ref_opt;   /* 31 SDRAM Thermal and Refresh Opts */
+	unsigned char res_32_59[28];   /* 32-59 Reserved, General Section */
+
+	/* Module-Specific Section: Bytes 60-116 */
+	union {
+		struct {
+			/* 60 (Unbuffered) Module Nominal Height */
+			unsigned char mod_height;
+			/* 61 (Unbuffered) Module Maximum Thickness */
+			unsigned char mod_thickness;
+			/* 62 (Unbuffered) Reference Raw Card Used */
+			unsigned char ref_raw_card;
+			/* 63 (Unbuffered) Address Mapping from
+			      Edge Connector to DRAM */
+			unsigned char addr_mapping;
+			/* 64-116 (Unbuffered) Reserved */
+			unsigned char res_64_116[53];
+		} unbuffered;
+		struct {
+			/* 60 (Registered) Module Nominal Height */
+			unsigned char mod_height;
+			/* 61 (Registered) Module Maximum Thickness */
+			unsigned char mod_thickness;
+			/* 62 (Registered) Reference Raw Card Used */
+			unsigned char ref_raw_card;
+			/* 63 DIMM Module Attributes */
+			unsigned char modu_attr;
+			/* 64 RDIMM Thermal Heat Spreader Solution */
+			unsigned char thermal;
+			/* 65 Register Manufacturer ID Code, Least Significant Byte */
+			unsigned char reg_id_lo;
+			/* 66 Register Manufacturer ID Code, Most Significant Byte */
+			unsigned char reg_id_hi;
+			/* 67 Register Revision Number */
+			unsigned char reg_rev;
+			/* 68 Register Type */
+			unsigned char reg_type;
+			/* 69-76 RC1,3,5...15 (MS Nibble) / RC0,2,4...14 (LS Nibble) */
+			unsigned char rcw[8];
+		} registered;
+		unsigned char uc[57]; /* 60-116 Module-Specific Section */
+	} mod_section;
+
+	/* Unique Module ID: Bytes 117-125 */
+	unsigned char mmid_lsb;        /* 117 Module MfgID Code LSB - JEP-106 */
+	unsigned char mmid_msb;        /* 118 Module MfgID Code MSB - JEP-106 */
+	unsigned char mloc;            /* 119 Mfg Location */
+	unsigned char mdate[2];        /* 120-121 Mfg Date */
+	unsigned char sernum[4];       /* 122-125 Module Serial Number */
+
+	/* CRC: Bytes 126-127 */
+	unsigned char crc[2];          /* 126-127 SPD CRC */
+
+	/* Other Manufacturer Fields and User Space: Bytes 128-255 */
+	unsigned char mpart[18];       /* 128-145 Mfg's Module Part Number */
+	unsigned char mrev[2];         /* 146-147 Module Revision Code */
+
+	unsigned char dmid_lsb;        /* 148 DRAM MfgID Code LSB - JEP-106 */
+	unsigned char dmid_msb;        /* 149 DRAM MfgID Code MSB - JEP-106 */
+
+	unsigned char msd[26];         /* 150-175 Mfg's Specific Data */
+	unsigned char cust[80];        /* 176-255 Open for Customer Use */
+
+} ddr3_spd_eeprom_t;
+
+extern unsigned int ddr1_spd_check(const ddr1_spd_eeprom_t *spd);
+extern void ddr1_spd_dump(const ddr1_spd_eeprom_t *spd);
+extern unsigned int ddr2_spd_check(const ddr2_spd_eeprom_t *spd);
+extern void ddr2_spd_dump(const ddr2_spd_eeprom_t *spd);
+extern unsigned int ddr3_spd_check(const ddr3_spd_eeprom_t *spd);
+
+/*
+ * Byte 2 Fundamental Memory Types.
+ */
+#define SPD_MEMTYPE_FPM		(0x01)
+#define SPD_MEMTYPE_EDO		(0x02)
+#define SPD_MEMTYPE_PIPE_NIBBLE	(0x03)
+#define SPD_MEMTYPE_SDRAM	(0x04)
+#define SPD_MEMTYPE_ROM		(0x05)
+#define SPD_MEMTYPE_SGRAM	(0x06)
+#define SPD_MEMTYPE_DDR		(0x07)
+#define SPD_MEMTYPE_DDR2	(0x08)
+#define SPD_MEMTYPE_DDR2_FBDIMM	(0x09)
+#define SPD_MEMTYPE_DDR2_FBDIMM_PROBE	(0x0A)
+#define SPD_MEMTYPE_DDR3	(0x0B)
+
+/*
+ * Byte 3 Key Byte / Module Type for DDR3 SPD
+ */
+#define SPD_MODULETYPE_RDIMM		(0x01)
+#define SPD_MODULETYPE_UDIMM		(0x02)
+#define SPD_MODULETYPE_SODIMM		(0x03)
+#define SPD_MODULETYPE_MICRODIMM	(0x04)
+#define SPD_MODULETYPE_MINIRDIMM	(0x05)
+#define SPD_MODULETYPE_MINIUDIMM	(0x06)
+
+#endif /* _DDR_SPD_H_ */
diff --git a/include/ioports.h b/include/ioports.h
new file mode 100644
index 0000000..cfba667
--- /dev/null
+++ b/include/ioports.h
@@ -0,0 +1,65 @@
+/*
+ * definitions for MPC8260 I/O Ports
+ *
+ * (in addition to those provided in <asm/immap_8260.h>)
+ *
+ * Murray.Jensen@cmst.csiro.au, 20-Oct-00
+ */
+
+/*
+ * this structure mirrors the layout of the five port registers in
+ * the internal memory map - see iop8260_t in <asm/immap_8260.h>
+ */
+typedef struct {
+    unsigned int pdir;		/* Port Data Direction Register (35-3) */
+    unsigned int ppar;		/* Port Pin Assignment Register (35-4) */
+    unsigned int psor;		/* Port Special Options Register (35-5) */
+    unsigned int podr;		/* Port Open Drain Register (35-2) */
+    unsigned int pdat;		/* Port Data Register (35-3) */
+} ioport_t;
+
+/*
+ * this macro calculates the address within the internal
+ * memory map (im) of the set of registers for a port (idx)
+ *
+ * the internal memory map aligns the above structure on
+ * a 0x20 byte boundary
+ */
+#ifdef CONFIG_MPC85xx
+#define ioport_addr(im, idx) (ioport_t *)((uint)&((im)->im_cpm.im_cpm_iop) + ((idx)*0x20))
+#else
+#define ioport_addr(im, idx) (ioport_t *)((uint)&(im)->im_ioport + ((idx)*0x20))
+#endif
+
+/*
+ * this structure provides configuration
+ * information for one port pin
+ */
+typedef struct {
+    unsigned char conf:1;	/* if 1, configure this port */
+    unsigned char ppar:1;	/* Port Pin Assignment Register (35-4) */
+    unsigned char psor:1;	/* Port Special Options Register (35-2) */
+    unsigned char pdir:1;	/* Port Data Direction Register (35-3) */
+    unsigned char podr:1;	/* Port Open Drain Register (35-2) */
+    unsigned char pdat:1;	/* Port Data Register (35-2) */
+} iop_conf_t;
+
+/*
+ * a table that contains configuration information for all 32 pins
+ * of all four MPC8260 I/O ports.
+ *
+ * NOTE: in the second dimension of this table, index 0 refers to pin 31
+ * and index 31 refers to pin 0. this made the code in the table look more
+ * like the table in the 8260UM (and in the hymod manuals).
+ */
+extern const iop_conf_t iop_conf_tab[4][32];
+
+typedef struct {
+	unsigned char	port;
+	unsigned char	pin;
+	int		dir;
+	int		open_drain;
+	int		assign;
+} qe_iop_conf_t;
+
+#define QE_IOP_TAB_END	(-1)
diff --git a/include/lmb.h b/include/lmb.h
new file mode 100644
index 0000000..43082a3
--- /dev/null
+++ b/include/lmb.h
@@ -0,0 +1,61 @@
+#ifndef _LINUX_LMB_H
+#define _LINUX_LMB_H
+#ifdef __KERNEL__
+
+#include <asm/types.h>
+/*
+ * Logical memory blocks.
+ *
+ * Copyright (C) 2001 Peter Bergner, IBM Corp.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version
+ * 2 of the License, or (at your option) any later version.
+ */
+
+#define MAX_LMB_REGIONS 8
+
+struct lmb_property {
+	phys_addr_t base;
+	phys_size_t size;
+};
+
+struct lmb_region {
+	unsigned long cnt;
+	phys_size_t size;
+	struct lmb_property region[MAX_LMB_REGIONS+1];
+};
+
+struct lmb {
+	struct lmb_region memory;
+	struct lmb_region reserved;
+};
+
+extern struct lmb lmb;
+
+extern void lmb_init(struct lmb *lmb);
+extern long lmb_add(struct lmb *lmb, phys_addr_t base, phys_size_t size);
+extern long lmb_reserve(struct lmb *lmb, phys_addr_t base, phys_size_t size);
+extern phys_addr_t lmb_alloc(struct lmb *lmb, phys_size_t size, ulong align);
+extern phys_addr_t lmb_alloc_base(struct lmb *lmb, phys_size_t size, ulong align,
+			    phys_addr_t max_addr);
+extern phys_addr_t __lmb_alloc_base(struct lmb *lmb, phys_size_t size, ulong align,
+			      phys_addr_t max_addr);
+extern int lmb_is_reserved(struct lmb *lmb, phys_addr_t addr);
+extern long lmb_free(struct lmb *lmb, phys_addr_t base, phys_size_t size);
+
+extern void lmb_dump_all(struct lmb *lmb);
+
+static inline phys_size_t
+lmb_size_bytes(struct lmb_region *type, unsigned long region_nr)
+{
+	return type->region[region_nr].size;
+}
+
+void board_lmb_reserve(struct lmb *lmb);
+void arch_lmb_reserve(struct lmb *lmb);
+
+#endif /* __KERNEL__ */
+
+#endif /* _LINUX_LMB_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
