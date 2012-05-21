Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWNeb-0002jC-Rn
 for barebox@lists.infradead.org; Mon, 21 May 2012 08:07:48 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so4852784bkw.36
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 01:07:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 May 2012 12:07:10 +0400
Message-Id: <1337587631-16650-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1337587631-16650-1-git-send-email-antonynpavlov@gmail.com>
References: <1337587631-16650-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/3] MIPS: import CPU and cache detection code from Linux
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/main_entry.c          |    9 ++
 arch/mips/include/asm/bitops.h       |    2 +-
 arch/mips/include/asm/cpu-features.h |  254 ++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/cpu-info.h     |   71 ++++++++++
 arch/mips/include/asm/cpu.h          |  153 ++++++++++++++++++++
 arch/mips/lib/Makefile               |    4 +
 arch/mips/lib/c-r4k.c                |   85 ++++++++++++
 arch/mips/lib/cpu-probe.c            |  103 ++++++++++++++
 8 files changed, 680 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/include/asm/cpu-features.h
 create mode 100644 arch/mips/include/asm/cpu-info.h
 create mode 100644 arch/mips/include/asm/cpu.h
 create mode 100644 arch/mips/lib/c-r4k.c
 create mode 100644 arch/mips/lib/cpu-probe.c

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index fa072de..da482cf 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -26,6 +26,7 @@
 #include <common.h>
 #include <string.h>
 #include <asm/sections.h>
+#include <asm/cpu-features.h>
 
 extern void start_barebox(void);
 
@@ -41,5 +42,13 @@ void main_entry(void)
 	/* clear the BSS first */
 	memset(__bss_start, 0x00, __bss_stop - __bss_start);
 
+	cpu_probe();
+
+	if (cpu_has_4k_cache) {
+		extern void __weak r4k_cache_init(void);
+
+		r4k_cache_init();
+	}
+
 	start_barebox();
 }
diff --git a/arch/mips/include/asm/bitops.h b/arch/mips/include/asm/bitops.h
index 36d34b6..001ebf2 100644
--- a/arch/mips/include/asm/bitops.h
+++ b/arch/mips/include/asm/bitops.h
@@ -27,6 +27,6 @@
 #ifndef _ASM_MIPS_BITOPS_H_
 #define _ASM_MIPS_BITOPS_H_
 
-/* nothing special yet */
+#include <asm-generic/bitops/__ffs.h>
 
 #endif /* _ASM_MIPS_BITOPS_H_ */
diff --git a/arch/mips/include/asm/cpu-features.h b/arch/mips/include/asm/cpu-features.h
new file mode 100644
index 0000000..168d854
--- /dev/null
+++ b/arch/mips/include/asm/cpu-features.h
@@ -0,0 +1,254 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 2003, 2004 Ralf Baechle
+ * Copyright (C) 2004  Maciej W. Rozycki
+ */
+#ifndef __ASM_CPU_FEATURES_H
+#define __ASM_CPU_FEATURES_H
+
+#include <asm/cpu.h>
+#include <asm/cpu-info.h>
+
+#ifndef current_cpu_type
+#define current_cpu_type()      current_cpu_data.cputype
+#endif
+
+/*
+ * SMP assumption: Options of CPU 0 are a superset of all processors.
+ * This is true for all known MIPS systems.
+ */
+#ifndef cpu_has_tlb
+#define cpu_has_tlb		(cpu_data[0].options & MIPS_CPU_TLB)
+#endif
+#ifndef cpu_has_4kex
+#define cpu_has_4kex		(cpu_data[0].options & MIPS_CPU_4KEX)
+#endif
+#ifndef cpu_has_3k_cache
+#define cpu_has_3k_cache	(cpu_data[0].options & MIPS_CPU_3K_CACHE)
+#endif
+#define cpu_has_6k_cache	0
+#define cpu_has_8k_cache	0
+#ifndef cpu_has_4k_cache
+#define cpu_has_4k_cache	(cpu_data[0].options & MIPS_CPU_4K_CACHE)
+#endif
+#ifndef cpu_has_tx39_cache
+#define cpu_has_tx39_cache	(cpu_data[0].options & MIPS_CPU_TX39_CACHE)
+#endif
+#ifndef cpu_has_octeon_cache
+#define cpu_has_octeon_cache	0
+#endif
+#ifndef cpu_has_fpu
+#define cpu_has_fpu		(current_cpu_data.options & MIPS_CPU_FPU)
+#define raw_cpu_has_fpu		(raw_current_cpu_data.options & MIPS_CPU_FPU)
+#else
+#define raw_cpu_has_fpu		cpu_has_fpu
+#endif
+#ifndef cpu_has_32fpr
+#define cpu_has_32fpr		(cpu_data[0].options & MIPS_CPU_32FPR)
+#endif
+#ifndef cpu_has_counter
+#define cpu_has_counter		(cpu_data[0].options & MIPS_CPU_COUNTER)
+#endif
+#ifndef cpu_has_watch
+#define cpu_has_watch		(cpu_data[0].options & MIPS_CPU_WATCH)
+#endif
+#ifndef cpu_has_divec
+#define cpu_has_divec		(cpu_data[0].options & MIPS_CPU_DIVEC)
+#endif
+#ifndef cpu_has_vce
+#define cpu_has_vce		(cpu_data[0].options & MIPS_CPU_VCE)
+#endif
+#ifndef cpu_has_cache_cdex_p
+#define cpu_has_cache_cdex_p	(cpu_data[0].options & MIPS_CPU_CACHE_CDEX_P)
+#endif
+#ifndef cpu_has_cache_cdex_s
+#define cpu_has_cache_cdex_s	(cpu_data[0].options & MIPS_CPU_CACHE_CDEX_S)
+#endif
+#ifndef cpu_has_prefetch
+#define cpu_has_prefetch	(cpu_data[0].options & MIPS_CPU_PREFETCH)
+#endif
+#ifndef cpu_has_mcheck
+#define cpu_has_mcheck		(cpu_data[0].options & MIPS_CPU_MCHECK)
+#endif
+#ifndef cpu_has_ejtag
+#define cpu_has_ejtag		(cpu_data[0].options & MIPS_CPU_EJTAG)
+#endif
+#ifndef cpu_has_llsc
+#define cpu_has_llsc		(cpu_data[0].options & MIPS_CPU_LLSC)
+#endif
+#ifndef kernel_uses_llsc
+#define kernel_uses_llsc	cpu_has_llsc
+#endif
+#ifndef cpu_has_mips16
+#define cpu_has_mips16		(cpu_data[0].ases & MIPS_ASE_MIPS16)
+#endif
+#ifndef cpu_has_mdmx
+#define cpu_has_mdmx           (cpu_data[0].ases & MIPS_ASE_MDMX)
+#endif
+#ifndef cpu_has_mips3d
+#define cpu_has_mips3d         (cpu_data[0].ases & MIPS_ASE_MIPS3D)
+#endif
+#ifndef cpu_has_smartmips
+#define cpu_has_smartmips      (cpu_data[0].ases & MIPS_ASE_SMARTMIPS)
+#endif
+#ifndef kernel_uses_smartmips_rixi
+#define kernel_uses_smartmips_rixi 0
+#endif
+#ifndef cpu_has_vtag_icache
+#define cpu_has_vtag_icache	(cpu_data[0].icache.flags & MIPS_CACHE_VTAG)
+#endif
+#ifndef cpu_has_dc_aliases
+#define cpu_has_dc_aliases	(cpu_data[0].dcache.flags & MIPS_CACHE_ALIASES)
+#endif
+#ifndef cpu_has_ic_fills_f_dc
+#define cpu_has_ic_fills_f_dc	(cpu_data[0].icache.flags & MIPS_CACHE_IC_F_DC)
+#endif
+#ifndef cpu_has_pindexed_dcache
+#define cpu_has_pindexed_dcache	(cpu_data[0].dcache.flags & MIPS_CACHE_PINDEX)
+#endif
+
+/*
+ * I-Cache snoops remote store.  This only matters on SMP.  Some multiprocessors
+ * such as the R10000 have I-Caches that snoop local stores; the embedded ones
+ * don't.  For maintaining I-cache coherency this means we need to flush the
+ * D-cache all the way back to whever the I-cache does refills from, so the
+ * I-cache has a chance to see the new data at all.  Then we have to flush the
+ * I-cache also.
+ * Note we may have been rescheduled and may no longer be running on the CPU
+ * that did the store so we can't optimize this into only doing the flush on
+ * the local CPU.
+ */
+#ifndef cpu_icache_snoops_remote_store
+#ifdef CONFIG_SMP
+#define cpu_icache_snoops_remote_store	(cpu_data[0].icache.flags & MIPS_IC_SNOOPS_REMOTE)
+#else
+#define cpu_icache_snoops_remote_store	1
+#endif
+#endif
+
+# ifndef cpu_has_mips32r1
+# define cpu_has_mips32r1	(cpu_data[0].isa_level & MIPS_CPU_ISA_M32R1)
+# endif
+# ifndef cpu_has_mips32r2
+# define cpu_has_mips32r2	(cpu_data[0].isa_level & MIPS_CPU_ISA_M32R2)
+# endif
+# ifndef cpu_has_mips64r1
+# define cpu_has_mips64r1	(cpu_data[0].isa_level & MIPS_CPU_ISA_M64R1)
+# endif
+# ifndef cpu_has_mips64r2
+# define cpu_has_mips64r2	(cpu_data[0].isa_level & MIPS_CPU_ISA_M64R2)
+# endif
+
+/*
+ * Shortcuts ...
+ */
+#define cpu_has_mips32	(cpu_has_mips32r1 | cpu_has_mips32r2)
+#define cpu_has_mips64	(cpu_has_mips64r1 | cpu_has_mips64r2)
+#define cpu_has_mips_r1	(cpu_has_mips32r1 | cpu_has_mips64r1)
+#define cpu_has_mips_r2	(cpu_has_mips32r2 | cpu_has_mips64r2)
+#define cpu_has_mips_r	(cpu_has_mips32r1 | cpu_has_mips32r2 | \
+			 cpu_has_mips64r1 | cpu_has_mips64r2)
+
+#ifndef cpu_has_mips_r2_exec_hazard
+#define cpu_has_mips_r2_exec_hazard cpu_has_mips_r2
+#endif
+
+/*
+ * MIPS32, MIPS64, VR5500, IDT32332, IDT32334 and maybe a few other
+ * pre-MIPS32/MIPS53 processors have CLO, CLZ.  The IDT RC64574 is 64-bit and
+ * has CLO and CLZ but not DCLO nor DCLZ.  For 64-bit kernels
+ * cpu_has_clo_clz also indicates the availability of DCLO and DCLZ.
+ */
+# ifndef cpu_has_clo_clz
+# define cpu_has_clo_clz	cpu_has_mips_r
+# endif
+
+#ifndef cpu_has_dsp
+#define cpu_has_dsp		(cpu_data[0].ases & MIPS_ASE_DSP)
+#endif
+
+#ifndef cpu_has_mipsmt
+#define cpu_has_mipsmt		(cpu_data[0].ases & MIPS_ASE_MIPSMT)
+#endif
+
+#ifndef cpu_has_userlocal
+#define cpu_has_userlocal	(cpu_data[0].options & MIPS_CPU_ULRI)
+#endif
+
+#ifdef CONFIG_32BIT
+# ifndef cpu_has_nofpuex
+# define cpu_has_nofpuex	(cpu_data[0].options & MIPS_CPU_NOFPUEX)
+# endif
+# ifndef cpu_has_64bits
+# define cpu_has_64bits		(cpu_data[0].isa_level & MIPS_CPU_ISA_64BIT)
+# endif
+# ifndef cpu_has_64bit_zero_reg
+# define cpu_has_64bit_zero_reg	(cpu_data[0].isa_level & MIPS_CPU_ISA_64BIT)
+# endif
+# ifndef cpu_has_64bit_gp_regs
+# define cpu_has_64bit_gp_regs		0
+# endif
+# ifndef cpu_has_64bit_addresses
+# define cpu_has_64bit_addresses	0
+# endif
+# ifndef cpu_vmbits
+# define cpu_vmbits 31
+# endif
+#endif
+
+#ifdef CONFIG_64BIT
+# ifndef cpu_has_nofpuex
+# define cpu_has_nofpuex		0
+# endif
+# ifndef cpu_has_64bits
+# define cpu_has_64bits			1
+# endif
+# ifndef cpu_has_64bit_zero_reg
+# define cpu_has_64bit_zero_reg		1
+# endif
+# ifndef cpu_has_64bit_gp_regs
+# define cpu_has_64bit_gp_regs		1
+# endif
+# ifndef cpu_has_64bit_addresses
+# define cpu_has_64bit_addresses	1
+# endif
+# ifndef cpu_vmbits
+# define cpu_vmbits cpu_data[0].vmbits
+# define __NEED_VMBITS_PROBE
+# endif
+#endif
+
+#if defined(CONFIG_CPU_MIPSR2_IRQ_VI) && !defined(cpu_has_vint)
+# define cpu_has_vint		(cpu_data[0].options & MIPS_CPU_VINT)
+#elif !defined(cpu_has_vint)
+# define cpu_has_vint			0
+#endif
+
+#if defined(CONFIG_CPU_MIPSR2_IRQ_EI) && !defined(cpu_has_veic)
+# define cpu_has_veic		(cpu_data[0].options & MIPS_CPU_VEIC)
+#elif !defined(cpu_has_veic)
+# define cpu_has_veic			0
+#endif
+
+#ifndef cpu_has_inclusive_pcaches
+#define cpu_has_inclusive_pcaches	(cpu_data[0].options & MIPS_CPU_INCLUSIVE_CACHES)
+#endif
+
+#ifndef cpu_dcache_line_size
+#define cpu_dcache_line_size()	cpu_data[0].dcache.linesz
+#endif
+#ifndef cpu_icache_line_size
+#define cpu_icache_line_size()	cpu_data[0].icache.linesz
+#endif
+#ifndef cpu_scache_line_size
+#define cpu_scache_line_size()	cpu_data[0].scache.linesz
+#endif
+
+#ifndef cpu_hwrena_impl_bits
+#define cpu_hwrena_impl_bits		0
+#endif
+
+#endif /* __ASM_CPU_FEATURES_H */
diff --git a/arch/mips/include/asm/cpu-info.h b/arch/mips/include/asm/cpu-info.h
new file mode 100644
index 0000000..6701730
--- /dev/null
+++ b/arch/mips/include/asm/cpu-info.h
@@ -0,0 +1,71 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 Waldorf GMBH
+ * Copyright (C) 1995, 1996, 1997, 1998, 1999, 2001, 2002, 2003 Ralf Baechle
+ * Copyright (C) 1996 Paul M. Antoine
+ * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
+ * Copyright (C) 2004  Maciej W. Rozycki
+ */
+#ifndef __ASM_CPU_INFO_H
+#define __ASM_CPU_INFO_H
+
+#include <linux/types.h>
+
+/*
+ * Descriptor for a cache
+ */
+struct cache_desc {
+	unsigned int waysize;	/* Bytes per way */
+	unsigned short sets;	/* Number of lines per set */
+	unsigned char ways;	/* Number of ways */
+	unsigned char linesz;	/* Size of line in bytes */
+	unsigned char waybit;	/* Bits to select in a cache set */
+	unsigned char flags;	/* Flags describing cache properties */
+};
+
+/*
+ * Flag definitions
+ */
+#define MIPS_CACHE_NOT_PRESENT	0x00000001
+#define MIPS_CACHE_VTAG		0x00000002	/* Virtually tagged cache */
+#define MIPS_CACHE_ALIASES	0x00000004	/* Cache could have aliases */
+#define MIPS_CACHE_IC_F_DC	0x00000008	/* Ic can refill from D-cache */
+#define MIPS_IC_SNOOPS_REMOTE	0x00000010	/* Ic snoops remote stores */
+#define MIPS_CACHE_PINDEX	0x00000020	/* Physically indexed cache */
+
+struct cpuinfo_mips {
+	unsigned int		udelay_val;
+	unsigned int		asid_cache;
+
+	/*
+	 * Capability and feature descriptor structure for MIPS CPU
+	 */
+	unsigned long		options;
+	unsigned long		ases;
+	unsigned int		processor_id;
+	unsigned int		fpu_id;
+	unsigned int		cputype;
+	int			isa_level;
+	int			tlbsize;
+	struct cache_desc	icache;	/* Primary I-cache */
+	struct cache_desc	dcache;	/* Primary D or combined I/D cache */
+	struct cache_desc	scache;	/* Secondary cache */
+	struct cache_desc	tcache;	/* Tertiary/split secondary cache */
+	int			srsets;	/* Shadow register sets */
+	int			core;	/* physical core number */
+#ifdef CONFIG_64BIT
+	int			vmbits;	/* Virtual memory size in bits */
+#endif
+};
+
+extern struct cpuinfo_mips cpu_data[];
+#define current_cpu_data cpu_data[0]
+
+extern void cpu_probe(void);
+
+extern const char *__cpu_name;
+
+#endif /* __ASM_CPU_INFO_H */
diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
new file mode 100644
index 0000000..c1b56f7
--- /dev/null
+++ b/arch/mips/include/asm/cpu.h
@@ -0,0 +1,153 @@
+/*
+ * cpu.h: Values of the PRId register used to match up
+ *        various MIPS cpu types.
+ *
+ * Copyright (C) 1996 David S. Miller (dm@engr.sgi.com)
+ * Copyright (C) 2004  Maciej W. Rozycki
+ */
+#ifndef _ASM_CPU_H
+#define _ASM_CPU_H
+
+/* Assigned Company values for bits 23:16 of the PRId Register
+   (CP0 register 15, select 0).  As of the MIPS32 and MIPS64 specs from
+   MTI, the PRId register is defined in this (backwards compatible)
+   way:
+
+  +----------------+----------------+----------------+----------------+
+  | Company Options| Company ID     | Processor ID   | Revision       |
+  +----------------+----------------+----------------+----------------+
+   31            24 23            16 15             8 7
+
+   I don't have docs for all the previous processors, but my impression is
+   that bits 16-23 have been 0 for all MIPS processors before the MIPS32/64
+   spec.
+*/
+
+#define PRID_COMP_LEGACY	0x000000
+#define PRID_COMP_MIPS		0x010000
+#define PRID_COMP_BROADCOM	0x020000
+#define PRID_COMP_INGENIC	0xd00000
+
+#define PRID_IMP_UNKNOWN	0xff00
+
+/*
+ * These are the PRID's for when 23:16 == PRID_COMP_MIPS
+ */
+
+#define PRID_IMP_24K		0x9300
+#define PRID_IMP_24KE		0x9600
+
+/*
+ * These are the PRID's for when 23:16 == PRID_COMP_BROADCOM
+ */
+
+#define PRID_IMP_BMIPS32_REV4	0x4000
+#define PRID_IMP_BMIPS32_REV8	0x8000
+#define PRID_IMP_BMIPS3300	0x9000
+#define PRID_IMP_BMIPS3300_ALT	0x9100
+#define PRID_IMP_BMIPS3300_BUG	0x0000
+#define PRID_IMP_BMIPS43XX	0xa000
+#define PRID_IMP_BMIPS5000	0x5a00
+
+#define PRID_REV_BMIPS4380_LO	0x0040
+#define PRID_REV_BMIPS4380_HI	0x006f
+
+/*
+ * These are the PRID's for when 23:16 == PRID_COMP_INGENIC
+ */
+
+#define PRID_IMP_JZRISC        0x0200
+
+/*
+ * Older processors used to encode processor version and revision in two
+ * 4-bit bitfields, the 4K seems to simply count up and even newer MTI cores
+ * have switched to use the 8-bits as 3:3:2 bitfield with the last field as
+ * the patch number.  *ARGH*
+ */
+#define PRID_REV_ENCODE_44(ver, rev)					\
+	((ver) << 4 | (rev))
+#define PRID_REV_ENCODE_332(ver, rev, patch)				\
+	((ver) << 5 | (rev) << 2 | (patch))
+
+/*
+ * FPU implementation/revision register (CP1 control register 0).
+ *
+ * +---------------------------------+----------------+----------------+
+ * | 0                               | Implementation | Revision       |
+ * +---------------------------------+----------------+----------------+
+ *  31                             16 15             8 7              0
+ */
+
+#define FPIR_IMP_NONE		0x0000
+
+enum cpu_type_enum {
+	CPU_UNKNOWN,
+
+	/*
+	 * MIPS32 class processors
+	 */
+	CPU_24K,
+	CPU_BMIPS32, CPU_BMIPS3300, CPU_BMIPS4350,
+	CPU_BMIPS4380, CPU_BMIPS5000,
+	CPU_JZRISC,
+
+	CPU_LAST
+};
+
+/*
+ * ISA Level encodings
+ *
+ */
+#define MIPS_CPU_ISA_I		0x00000001
+#define MIPS_CPU_ISA_II		0x00000002
+#define MIPS_CPU_ISA_III	0x00000004
+#define MIPS_CPU_ISA_IV		0x00000008
+#define MIPS_CPU_ISA_V		0x00000010
+#define MIPS_CPU_ISA_M32R1	0x00000020
+#define MIPS_CPU_ISA_M32R2	0x00000040
+#define MIPS_CPU_ISA_M64R1	0x00000080
+#define MIPS_CPU_ISA_M64R2	0x00000100
+
+#define MIPS_CPU_ISA_32BIT (MIPS_CPU_ISA_I | MIPS_CPU_ISA_II | \
+	MIPS_CPU_ISA_M32R1 | MIPS_CPU_ISA_M32R2 )
+#define MIPS_CPU_ISA_64BIT (MIPS_CPU_ISA_III | MIPS_CPU_ISA_IV | \
+	MIPS_CPU_ISA_V | MIPS_CPU_ISA_M64R1 | MIPS_CPU_ISA_M64R2)
+
+/*
+ * CPU Option encodings
+ */
+#define MIPS_CPU_TLB		0x00000001 /* CPU has TLB */
+#define MIPS_CPU_4KEX		0x00000002 /* "R4K" exception model */
+#define MIPS_CPU_3K_CACHE	0x00000004 /* R3000-style caches */
+#define MIPS_CPU_4K_CACHE	0x00000008 /* R4000-style caches */
+#define MIPS_CPU_TX39_CACHE	0x00000010 /* TX3900-style caches */
+#define MIPS_CPU_FPU		0x00000020 /* CPU has FPU */
+#define MIPS_CPU_32FPR		0x00000040 /* 32 dbl. prec. FP registers */
+#define MIPS_CPU_COUNTER	0x00000080 /* Cycle count/compare */
+#define MIPS_CPU_WATCH		0x00000100 /* watchpoint registers */
+#define MIPS_CPU_DIVEC		0x00000200 /* dedicated interrupt vector */
+#define MIPS_CPU_VCE		0x00000400 /* virt. coherence conflict possible */
+#define MIPS_CPU_CACHE_CDEX_P	0x00000800 /* Create_Dirty_Exclusive CACHE op */
+#define MIPS_CPU_CACHE_CDEX_S	0x00001000 /* ... same for seconary cache ... */
+#define MIPS_CPU_MCHECK		0x00002000 /* Machine check exception */
+#define MIPS_CPU_EJTAG		0x00004000 /* EJTAG exception */
+#define MIPS_CPU_NOFPUEX	0x00008000 /* no FPU exception */
+#define MIPS_CPU_LLSC		0x00010000 /* CPU has ll/sc instructions */
+#define MIPS_CPU_INCLUSIVE_CACHES	0x00020000 /* P-cache subset enforced */
+#define MIPS_CPU_PREFETCH	0x00040000 /* CPU has usable prefetch */
+#define MIPS_CPU_VINT		0x00080000 /* CPU supports MIPSR2 vectored interrupts */
+#define MIPS_CPU_VEIC		0x00100000 /* CPU supports MIPSR2 external interrupt controller mode */
+#define MIPS_CPU_ULRI		0x00200000 /* CPU has ULRI feature */
+#define MIPS_CPU_CP2		0x00400000 /* CPU has CP2 */
+
+/*
+ * CPU ASE encodings
+ */
+#define MIPS_ASE_MIPS16		0x00000001 /* code compression */
+#define MIPS_ASE_MDMX		0x00000002 /* MIPS digital media extension */
+#define MIPS_ASE_MIPS3D		0x00000004 /* MIPS-3D */
+#define MIPS_ASE_SMARTMIPS	0x00000008 /* SmartMIPS */
+#define MIPS_ASE_DSP		0x00000010 /* Signal Processing ASE */
+#define MIPS_ASE_MIPSMT		0x00000020 /* CPU supports MIPS MT */
+
+#endif /* _ASM_CPU_H */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 85aa194..b99bb71 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -4,6 +4,10 @@ obj-y += lshrdi3.o
 obj-y += ashldi3.o
 obj-y += ashrdi3.o
 obj-y += memory.o
+obj-y += cpu-probe.o
+
+obj-$(CONFIG_CPU_MIPS32) += c-r4k.o
+obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
new file mode 100644
index 0000000..6db8f06
--- /dev/null
+++ b/arch/mips/lib/c-r4k.c
@@ -0,0 +1,85 @@
+#include <common.h>
+#include <asm/io.h>
+#include <asm/mipsregs.h>
+#include <asm/cpu.h>
+#include <asm/cpu-info.h>
+#include <asm/bitops.h>
+
+static void probe_pcache(struct cpuinfo_mips *c)
+{
+	unsigned int icache_size, dcache_size;
+	unsigned int config = read_c0_config();
+	unsigned long config1;
+	unsigned int lsize;
+
+	switch (c->cputype) {
+
+	default:
+		/*
+		 * So we seem to be a MIPS32 or MIPS64 CPU
+		 * So let's probe the I-cache ...
+		 */
+		config1 = read_c0_config1();
+
+		if ((lsize = ((config1 >> 19) & 7)))
+			c->icache.linesz = 2 << lsize;
+		else
+			c->icache.linesz = lsize;
+		c->icache.sets = 64 << ((config1 >> 22) & 7);
+		c->icache.ways = 1 + ((config1 >> 16) & 7);
+
+		icache_size = c->icache.sets *
+		              c->icache.ways *
+		              c->icache.linesz;
+		c->icache.waybit = __ffs(icache_size/c->icache.ways);
+
+		if (config & 0x8)		/* VI bit */
+			c->icache.flags |= MIPS_CACHE_VTAG;
+
+		/*
+		 * Now probe the MIPS32 / MIPS64 data cache.
+		 */
+		c->dcache.flags = 0;
+
+		if ((lsize = ((config1 >> 10) & 7)))
+			c->dcache.linesz = 2 << lsize;
+		else
+			c->dcache.linesz= lsize;
+		c->dcache.sets = 64 << ((config1 >> 13) & 7);
+		c->dcache.ways = 1 + ((config1 >> 7) & 7);
+
+		dcache_size = c->dcache.sets *
+		              c->dcache.ways *
+		              c->dcache.linesz;
+		c->dcache.waybit = __ffs(dcache_size/c->dcache.ways);
+
+		c->options |= MIPS_CPU_PREFETCH;
+		break;
+	}
+
+	/* compute a couple of other cache variables */
+	c->icache.waysize = icache_size / c->icache.ways;
+	c->dcache.waysize = dcache_size / c->dcache.ways;
+
+	c->icache.sets = c->icache.linesz ?
+		icache_size / (c->icache.linesz * c->icache.ways) : 0;
+	c->dcache.sets = c->dcache.linesz ?
+		dcache_size / (c->dcache.linesz * c->dcache.ways) : 0;
+
+	/*
+	 * R10000 and R12000 P-caches are odd in a positive way.  They're 32kB
+	 * 2-way virtually indexed so normally would suffer from aliases.  So
+	 * normally they'd suffer from aliases but magic in the hardware deals
+	 * with that for us so we don't need to take care ourselves.
+	 */
+	switch (c->cputype) {
+	default:
+		if (c->dcache.waysize > PAGE_SIZE)
+			c->dcache.flags |= MIPS_CACHE_ALIASES;
+	}
+}
+
+void r4k_cache_init(void)
+{
+	probe_pcache(&current_cpu_data);
+}
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
new file mode 100644
index 0000000..98fd24f
--- /dev/null
+++ b/arch/mips/lib/cpu-probe.c
@@ -0,0 +1,103 @@
+#include <common.h>
+#include <asm/mipsregs.h>
+#include <asm/cpu-info.h>
+#include <asm/cpu.h>
+
+const char *__cpu_name;
+struct cpuinfo_mips cpu_data[1];
+
+static char unknown_isa[] /* __cpuinitdata */ = KERN_ERR \
+	"Unsupported ISA type, c0.config0: %d.";
+
+static inline unsigned int decode_config0(struct cpuinfo_mips *c)
+{
+	unsigned int config0;
+	int isa;
+
+	config0 = read_c0_config();
+
+	if (((config0 & MIPS_CONF_MT) >> 7) == 1)
+		c->options |= MIPS_CPU_TLB;
+	isa = (config0 & MIPS_CONF_AT) >> 13;
+	switch (isa) {
+	case 0:
+		switch ((config0 & MIPS_CONF_AR) >> 10) {
+		case 0:
+			c->isa_level = MIPS_CPU_ISA_M32R1;
+			break;
+		case 1:
+			c->isa_level = MIPS_CPU_ISA_M32R2;
+			break;
+		default:
+			goto unknown;
+		}
+		break;
+	case 2:
+		switch ((config0 & MIPS_CONF_AR) >> 10) {
+		case 0:
+			c->isa_level = MIPS_CPU_ISA_M64R1;
+			break;
+		case 1:
+			c->isa_level = MIPS_CPU_ISA_M64R2;
+			break;
+		default:
+			goto unknown;
+		}
+		break;
+	default:
+		goto unknown;
+	}
+
+	return config0 & MIPS_CONF_M;
+
+unknown:
+	panic(unknown_isa, config0);
+}
+
+static void decode_configs(struct cpuinfo_mips *c)
+{
+	int ok;
+
+	/* MIPS32 or MIPS64 compliant CPU.  */
+	c->options = MIPS_CPU_4KEX | MIPS_CPU_4K_CACHE | MIPS_CPU_COUNTER |
+	             MIPS_CPU_DIVEC | MIPS_CPU_LLSC | MIPS_CPU_MCHECK;
+
+	c->scache.flags = MIPS_CACHE_NOT_PRESENT;
+
+	ok = decode_config0(c);			/* Read Config registers.  */
+	BUG_ON(!ok);				/* Arch spec violation!  */
+}
+
+static inline void cpu_probe_mips(struct cpuinfo_mips *c)
+{
+	decode_configs(c);
+	switch (c->processor_id & 0xff00) {
+	case PRID_IMP_24K:
+	case PRID_IMP_24KE:
+		c->cputype = CPU_24K;
+		__cpu_name = "MIPS 24Kc";
+		break;
+	}
+}
+
+void cpu_probe(void)
+{
+	struct cpuinfo_mips *c = &current_cpu_data;
+
+	c->processor_id	= PRID_IMP_UNKNOWN;
+	c->fpu_id	= FPIR_IMP_NONE;
+	c->cputype	= CPU_UNKNOWN;
+
+	c->processor_id = read_c0_prid();
+	switch (c->processor_id & 0xff0000) {
+	case PRID_COMP_MIPS:
+		cpu_probe_mips(c);
+		break;
+//	case PRID_COMP_BROADCOM:
+//		cpu_probe_broadcom(c);
+//		break;
+//	case PRID_COMP_INGENIC:
+//		cpu_probe_ingenic(c);
+//		break;
+	}
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
