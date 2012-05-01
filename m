Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SP9La-0007kz-PK
 for barebox@lists.infradead.org; Tue, 01 May 2012 09:26:17 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  1 May 2012 10:26:02 +0100
Message-Id: <1335864363-18383-4-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V4 3/4] Header files update to support the mpc85xx.
To: barebox@lists.infradead.org

The introduction of the new CPU architecture and board support
leads to the update of existing header files. Are added:
 - functions and macros to manipulate bits of registers field values.
 - external declaration of cache handling functions to prevent
   compilation warnings.
 - new processor definitions.
 - macros (in replacement of existing definitions) to set 85xx TLB
   registers.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/bitops.h    |   42 +++++++++++++++++++++++
 arch/ppc/include/asm/cache.h     |    2 +
 arch/ppc/include/asm/common.h    |    1 +
 arch/ppc/include/asm/io.h        |   20 +++++++++++
 arch/ppc/include/asm/mmu.h       |   69 +++++++++++++++++++++++++++++++++----
 arch/ppc/include/asm/processor.h |   44 ++++++++++++++++++++++++
 include/linux/types.h            |    2 +
 7 files changed, 172 insertions(+), 8 deletions(-)

diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index 8048232..3b31d54 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -166,6 +166,48 @@ extern __inline__ int ffz(unsigned int x)
 	return __ilog2(x & -x);
 }
 
+/*
+ * fls: find last (most-significant) bit set.
+ * Note fls(0) = 0, fls(1) = 1, fls(0x80000000) = 32.
+ */
+static inline int fls(unsigned int x)
+{
+	int lz;
+
+	asm ("cntlzw %0,%1" : "=r" (lz) : "r" (x));
+	return 32 - lz;
+}
+
+/*
+ * fls64 - find last set bit in a 64-bit word
+ * @x: the word to search
+ *
+ * This is defined in a similar way as the libc and compiler builtin
+ * ffsll, but returns the position of the most significant set bit.
+ *
+ * fls64(value) returns 0 if value is 0 or the position of the last
+ * set bit if value is nonzero. The last (most significant) bit is
+ * at position 64.
+ */
+
+static inline int fls64(__u64 x)
+{
+	__u32 h = x >> 32;
+	if (h)
+		return fls(h) + 32;
+	return fls(x);
+}
+
+static inline int __ilog2_u64(u64 n)
+{
+	return fls64(n) - 1;
+}
+
+static inline int ffs64(u64 x)
+{
+	return __ilog2_u64(x & -x) + 1ull;
+}
+
 #ifdef __KERNEL__
 
 /*
diff --git a/arch/ppc/include/asm/cache.h b/arch/ppc/include/asm/cache.h
index 4f7ca86..147ceb6 100644
--- a/arch/ppc/include/asm/cache.h
+++ b/arch/ppc/include/asm/cache.h
@@ -31,6 +31,8 @@
 extern void flush_dcache_range(unsigned long start, unsigned long stop);
 extern void clean_dcache_range(unsigned long start, unsigned long stop);
 extern void invalidate_dcache_range(unsigned long start, unsigned long stop);
+extern void flush_dcache(void);
+extern void invalidate_icache(void);
 #ifdef CFG_INIT_RAM_LOCK
 extern void unlock_ram_in_cache(void);
 #endif /* CFG_INIT_RAM_LOCK */
diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index 045817b..689ec23 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -31,5 +31,6 @@ static inline unsigned long get_pc(void)
 	return pc;
 }
 
+int l2_cache_init(void);
 extern unsigned long search_exception_table(unsigned long);
 #endif /* __ASM_COMMON_H */
diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index 052ae15..13187ca 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -176,6 +176,26 @@ extern inline void out_be32(volatile unsigned *addr, int val)
     __asm__ __volatile__("stw%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
 }
 
+/*
+ * Clear and set bits in one shot. These macros can be used to clear and
+ * set multiple bits in a register using a single call. These macros can
+ * also be used to set a multiple-bit bit pattern using a mask, by
+ * specifying the mask in the 'clear' parameter and the new bit pattern
+ * in the 'set' parameter.
+ */
+#define clrbits(type, addr, clear) \
+	out_##type((addr), in_##type(addr) & ~(clear))
+
+#define setbits(type, addr, set) \
+	out_##type((addr), in_##type(addr) | (set))
+
+#define clrsetbits(type, addr, clear, set) \
+	out_##type((addr), (in_##type(addr) & ~(clear)) | (set))
+
+#define clrbits_be32(addr, clear) clrbits(be32, addr, clear)
+#define setbits_be32(addr, set) setbits(be32, addr, set)
+#define clrsetbits_be32(addr, clear, set) clrsetbits(be32, addr, clear, set)
+
 /* these ones were originally in config.h */
 unsigned char	in8(unsigned int);
 void		out8(unsigned int, unsigned char);
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index 1667041..bba5ab5 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -372,15 +372,17 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
  * e500 support
  */
 
-#define MAS0_TLBSEL     0x10000000
-#define MAS0_ESEL       0x000F0000
-#define MAS0_NV         0x00000001
+#define MAS0_TLBSEL_MSK 0x30000000
+#define MAS0_TLBSEL(x)  (((x) << 28) & MAS0_TLBSEL_MSK)
+#define MAS0_ESEL_MSK   0x0FFF0000
+#define MAS0_ESEL(x)    (((x) << 16) & MAS0_ESEL_MSK)
+#define MAS0_NV(x)      ((x) & 0x00000FFF)
 
 #define MAS1_VALID      0x80000000
 #define MAS1_IPROT      0x40000000
-#define MAS1_TID        0x00FF0000
+#define MAS1_TID(x)     (((x) << 16) & 0x3FFF0000)
 #define MAS1_TS         0x00001000
-#define MAS1_TSIZE   	0x00000F00
+#define MAS1_TSIZE(x)   (((x) << 8) & 0x00000F00)
 
 #define MAS2_EPN        0xFFFFF000
 #define MAS2_SHAREN     0x00000200
@@ -404,10 +406,10 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define MAS3_UR         0x00000002
 #define MAS3_SR         0x00000001
 
-#define MAS4_TLBSELD    0x10000000
-#define MAS4_TIDDSEL    0x00030000
+#define MAS4_TLBSELD(x) MAS0_TLBSEL(x)
+#define MAS4_TIDDSEL    0x000F0000
+#define MAS4_TSIZED(x)  MAS1_TSIZE(x)
 #define MAS4_DSHAREN    0x00001000
-#define MAS4_TSIZED(x)  (x << 8)
 #define MAS4_X0D        0x00000040
 #define MAS4_X1D        0x00000020
 #define MAS4_WD         0x00000010
@@ -419,6 +421,23 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define MAS6_SPID       0x00FF0000
 #define MAS6_SAS        0x00000001
 
+#define MAS7_RPN	0xFFFFFFFF
+
+#define FSL_BOOKE_MAS0(tlbsel, esel, nv) \
+		(MAS0_TLBSEL(tlbsel) | MAS0_ESEL(esel) | MAS0_NV(nv))
+#define FSL_BOOKE_MAS1(v, iprot, tid, ts, tsize) \
+		((((v) << 31) & MAS1_VALID)             |\
+		(((iprot) << 30) & MAS1_IPROT)          |\
+		(MAS1_TID(tid))				|\
+		(((ts) << 12) & MAS1_TS)                |\
+		(MAS1_TSIZE(tsize)))
+#define FSL_BOOKE_MAS2(epn, wimge) \
+		(((epn) & MAS3_RPN) | (wimge))
+#define FSL_BOOKE_MAS3(rpn, user, perms) \
+		(((rpn) & MAS3_RPN) | (user) | (perms))
+#define FSL_BOOKE_MAS7(rpn) \
+		(((u64)(rpn)) >> 32)
+
 #define BOOKE_PAGESZ_1K         0
 #define BOOKE_PAGESZ_4K         1
 #define BOOKE_PAGESZ_16K        2
@@ -436,6 +455,40 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define LAWBAR_BASE_ADDR	0x00FFFFFF
 #define LAWAR_TRGT_IF		0x01F00000
 #else
+#ifdef CONFIG_E500
+#ifndef __ASSEMBLY__
+extern void set_tlb(u8 tlb, u32 epn, u64 rpn,
+		u8 perms, u8 wimge,
+		u8 ts, u8 esel, u8 tsize, u8 iprot);
+extern void disable_tlb(u8 esel);
+extern void invalidate_tlb(u8 tlb);
+extern void init_tlbs(void);
+extern int find_tlb_idx(void *addr, u8 tlbsel);
+extern void init_used_tlb_cams(void);
+
+extern unsigned int setup_ddr_tlbs(unsigned int memsize_in_meg);
+extern void write_tlb(u32 _mas0, u32 _mas1, u32 _mas2, u32 _mas3, u32 _mas7);
+
+#define SET_TLB_ENTRY(_tlb, _epn, _rpn, _perms, _wimge, _ts, _esel, _sz,\
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
+
 #define LAWBAR_BASE_ADDR	0x000FFFFF
 #define LAWAR_TRGT_IF		0x00F00000
 #endif
diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 9c6f79a..29e0622 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -217,6 +217,7 @@
 #define   HID0_DPM	(1<<20)
 #define   HID0_ICE	(1<<HID0_ICE_SHIFT)	/* Instruction Cache Enable */
 #define   HID0_DCE	(1<<HID0_DCE_SHIFT)	/* Data Cache Enable */
+#define   HID0_TBEN	(1<<14)		/* Time Base Enable */
 #define   HID0_ILOCK	(1<<13)		/* Instruction Cache Lock */
 #define   HID0_DLOCK	(1<<HID0_DLOCK_SHIFT)	/* Data Cache Lock */
 #define   HID0_ICFI	(1<<11)		/* Instr. Cache Flash Invalidate */
@@ -231,6 +232,10 @@
 #define   HID0_BHTE	(1<<2)		/* Branch History Table Enable */
 #define   HID0_BTCD	(1<<1)		/* Branch target cache disable */
 #define SPRN_HID1	0x3F1	/* Hardware Implementation Register 1 */
+#define   HID1_RFXE     (1<<17)		/* Read Fault Exception Enable */
+#define   HID1_ASTME    (1<<13)		/* Address bus streaming mode */
+#define   HID1_ABE      (1<<12)		/* Address broadcast enable */
+#define   HID1_MBDD     (1<<6)		/* optimized sync instruction */
 #define SPRN_IABR	0x3F2	/* Instruction Address Breakpoint Register */
 #ifndef CONFIG_BOOKE
 #define SPRN_IAC1	0x3F4	/* Instruction Address Compare 1 */
@@ -410,13 +415,20 @@
 #define SPRN_IVOR15	0x19f	/* Interrupt Vector Offset Register 15 */
 
 /* e500 definitions */
+#define SPRN_L1CFG0     0x203   /* L1 Cache Configuration Register 0 */
 #define SPRN_L1CSR0     0x3f2   /* L1 Cache Control and Status Register 0 */
+#define   L1CSR0_CPE            0x00010000      /* Data Cache Parity Enable */
+#define   L1CSR0_DCLFR          0x00000100      /* D-Cache Lock Flash Reset */
 #define   L1CSR0_DCFI           0x00000002      /* Data Cache Flash Invalidate */
 #define   L1CSR0_DCE            0x00000001      /* Data Cache Enable */
 #define SPRN_L1CSR1     0x3f3   /* L1 Cache Control and Status Register 1 */
+#define   L1CSR1_CPE           0x00010000       /* I-Cache Parity Enable */
+#define   L1CSR1_ICLFR          0x00000100      /* I-Cache Lock Flash Reset */
 #define   L1CSR1_ICFI           0x00000002      /* Instruction Cache Flash Invalidate */
 #define   L1CSR1_ICE            0x00000001      /* Instruction Cache Enable */
 
+#define SPRN_TLB0CFG   0x2B0   /* TLB 0 Config Register */
+#define SPRN_TLB1CFG   0x2B1   /* TLB 1 Config Register */
 #define SPRN_MMUCSR0	0x3f4	/* MMU control and status register 0 */
 #define SPRN_MAS0       0x270   /* MMU Assist Register 0 */
 #define SPRN_MAS1       0x271   /* MMU Assist Register 1 */
@@ -436,11 +448,17 @@
 #define SPRN_MCSRR0     0x23a   /* Machine Check Save and Restore Register 0 */
 #define SPRN_MCSRR1     0x23b   /* Machine Check Save and Restore Register 1 */
 #define SPRN_BUCSR	0x3f5	/* Branch Control and Status Register */
+#define   BUCSR_STAC_EN 0x01000000      /* Segment target addr cache enable */
+#define   BUCSR_LS_EN   0x00400000      /* Link stack enable */
+#define   BUCSR_BBFI    0x00000200      /* Branch buffer flash invalidate */
+#define   BUCSR_BPEN    0x00000001      /* Branch prediction enable */
+#define   BUCSR_ENABLE (BUCSR_STAC_EN|BUCSR_LS_EN|BUCSR_BBFI|BUCSR_BPEN)
 #define SPRN_BBEAR      0x201   /* Branch Buffer Entry Address Register */
 #define SPRN_BBTAR      0x202   /* Branch Buffer Target Address Register */
 #define SPRN_PID1       0x279   /* Process ID Register 1 */
 #define SPRN_PID2       0x27a   /* Process ID Register 2 */
 #define SPRN_MCSR	0x23c	/* Machine Check Syndrome register */
+#define SPRN_MCAR	0x23d	/* Machine Check Address register */
 #define ESR_ST          0x00800000      /* Store Operation */
 
 #if defined(CONFIG_MPC86xx)
@@ -586,6 +604,7 @@
 #define MCSRR1	SPRN_MCSRR1
 #define L1CSR0 	SPRN_L1CSR0
 #define L1CSR1	SPRN_L1CSR1
+#define L1CFG0 SPRN_L1CFG0
 #define MCSR	SPRN_MCSR
 #define MMUCSR0	SPRN_MMUCSR0
 #define BUCSR	SPRN_BUCSR
@@ -600,7 +619,13 @@
 #define MAS5	SPRN_MAS5
 #define MAS6	SPRN_MAS6
 #define MAS7	SPRN_MAS7
+#define MAS8	SPRN_MAS8
 
+#if defined(CONFIG_MPC85xx)
+#define DAR_DEAR DEAR
+#else
+#define DAR_DEAR DAR
+#endif
 /* Device Control Registers */
 
 #define DCRN_BEAR	0x090	/* Bus Error Address Register */
@@ -818,6 +843,8 @@
 #define SVR_MAJ(svr)	(((svr) >>  4) & 0xF)	/* Major revision field*/
 #define SVR_MIN(svr)	(((svr) >>  0) & 0xF)	/* Minor revision field*/
 
+/* Some parts define SVR[0:23] as the SOC version */
+#define SVR_SOC_VER(svr) (((svr) >> 8) & 0xFFFFFF)	/* SOC Version fields */
 
 /*
  * SVR_VER() Version Values
@@ -830,6 +857,10 @@
 #define SVR_8548	0x8031
 #define SVR_8548_E	0x8039
 #define SVR_8641	0x8090
+#define SVR_P2020	0x80E200
+#define SVR_P2020_E	0x80EA00
+
+#define SVR_Unknown	0xFFFFFF
 
 
 /* I am just adding a single entry for 8260 boards.  I think we may be
@@ -924,6 +955,19 @@ n:
 #define SR15	15
 
 #ifndef __ASSEMBLY__
+
+struct cpu_type {
+	char name[15];
+	u32 soc_ver;
+	u32 num_cores;
+};
+
+struct cpu_type *identify_cpu(u32 ver);
+
+#if defined(CONFIG_MPC85xx)
+#define CPU_TYPE_ENTRY(n, v, nc) \
+	{ .name = #n, .soc_ver = SVR_##v, .num_cores = (nc), }
+#endif
 #ifndef CONFIG_MACH_SPECIFIC
 extern int _machine;
 extern int have_of;
diff --git a/include/linux/types.h b/include/linux/types.h
index 16cc3ce..76c6b67 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -144,8 +144,10 @@ typedef __u32 __bitwise __wsum;
 
 #ifdef CONFIG_PHYS_ADDR_T_64BIT
 typedef u64 phys_addr_t;
+typedef u64 phys_size_t;
 #else
 typedef u32 phys_addr_t;
+typedef u32 phys_size_t;
 #endif
 
 typedef phys_addr_t resource_size_t;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
