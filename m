Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZx-0004kJ-P7
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:40 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:33:59 +0000
Message-Id: <1327408443-3519-6-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/9] Update to existing header files.
To: barebox@lists.infradead.org


Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/bitops.h    |  102 ++++++-
 arch/ppc/include/asm/cache.h     |   11 +
 arch/ppc/include/asm/common.h    |   43 ++-
 arch/ppc/include/asm/io.h        |   38 +++
 arch/ppc/include/asm/mmu.h       |  490 ++++++++++++++++++++-------
 arch/ppc/include/asm/processor.h |  685 +++++++++++++++++++++++++-------------
 include/common.h                 |    6 +
 include/linux/bitops.h           |   32 ++
 include/linux/types.h            |    2 +
 include/net.h                    |    2 +
 10 files changed, 1044 insertions(+), 367 deletions(-)

diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index 8048232..f506b62 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -151,6 +151,7 @@ extern __inline__ int test_bit(int nr, __const__ volatile void *addr)
 }
 
 /* Return the bit position of the most significant 1 bit in a word */
+/* - the result is undefined when x == 0 */
 extern __inline__ int __ilog2(unsigned int x)
 {
 	int lz;
@@ -166,6 +167,58 @@ extern __inline__ int ffz(unsigned int x)
 	return __ilog2(x & -x);
 }
 
+/*
+ * fls: find last (most-significant) bit set.
+ * Note fls(0) = 0, fls(1) = 1, fls(0x80000000) = 32.
+ *
+ * On powerpc, __ilog2(0) returns -1, but this is not safe in general
+ */
+static __inline__ int fls(unsigned int x)
+{
+	return __ilog2(x) + 1;
+}
+#define PLATFORM_FLS
+
+/**
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
+#if BITS_PER_LONG == 32
+static inline int fls64(__u64 x)
+{
+	__u32 h = x >> 32;
+	if (h)
+		return fls(h) + 32;
+	return fls(x);
+}
+#elif BITS_PER_LONG == 64
+static inline int fls64(__u64 x)
+{
+	if (x == 0)
+		return 0;
+	return __ilog2(x) + 1;
+}
+#else
+#error BITS_PER_LONG not 32 or 64
+#endif
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
@@ -177,8 +230,16 @@ extern __inline__ int ffs(int x)
 {
 	return __ilog2(x & -x) + 1;
 }
+#define PLATFORM_FFS
+
+/*
+ * hweightN: returns the hamming weight (i.e. the number
+ * of bits set) of a N-bit word
+ */
 
-#include <asm-generic/bitops/hweight.h>
+#define hweight32(x) generic_hweight32(x)
+#define hweight16(x) generic_hweight16(x)
+#define hweight8(x)  generic_hweight8(x)
 
 #endif /* __KERNEL__ */
 
@@ -276,11 +337,44 @@ extern __inline__ int ext2_test_bit(int nr, __const__ void * addr)
  * Linus' asm-alpha/bitops.h and modified for a big-endian machine.
  */
 
-#define ext2_find_first_zero_bit(addr, size) \
+#define	ext2_find_first_zero_bit(addr, size) \
 	ext2_find_next_zero_bit((addr), (size), 0)
 
-#define ext2_find_next_zero_bit(addr, size, off) \
-	generic_find_next_zero_le_bit((unsigned long*)addr, size, off)
+static __inline__ unsigned long ext2_find_next_zero_bit(void *addr,
+	unsigned long size, unsigned long offset)
+{
+	unsigned int *p = ((unsigned int *) addr) + (offset >> 5);
+	unsigned int result = offset & ~31UL;
+	unsigned int tmp;
+
+	if (offset >= size)
+		return size;
+	size -= result;
+	offset &= 31UL;
+	if (offset) {
+		tmp = cpu_to_le32p(p++);
+		tmp |= ~0UL >> (32-offset);
+		if (size < 32)
+			goto found_first;
+		if (tmp != ~0U)
+			goto found_middle;
+		size -= 32;
+		result += 32;
+	}
+	while (size >= 32) {
+		if ((tmp = cpu_to_le32p(p++)) != ~0U)
+			goto found_middle;
+		result += 32;
+		size -= 32;
+	}
+	if (!size)
+		return result;
+	tmp = cpu_to_le32p(p);
+found_first:
+	tmp |= ~0U << size;
+found_middle:
+	return result + ffz(tmp);
+}
 
 /* Bitmap functions for the minix filesystem.  */
 #define minix_test_and_set_bit(nr,addr) ext2_set_bit(nr,addr)
diff --git a/arch/ppc/include/asm/cache.h b/arch/ppc/include/asm/cache.h
index f37af97..84cf9c8 100644
--- a/arch/ppc/include/asm/cache.h
+++ b/arch/ppc/include/asm/cache.h
@@ -10,13 +10,24 @@
 #if !defined(CONFIG_8xx) || defined(CONFIG_8260)
 #if defined(CONFIG_PPC64BRIDGE)
 #define L1_CACHE_BYTES	128
+#define L1_CACHE_SHIFT	7
+#elif defined(CONFIG_E500MC)
+#define L1_CACHE_SHIFT	6
 #else
 #define	L1_CACHE_BYTES  32
+#define L1_CACHE_SHIFT	5
 #endif /* PPC64 */
 #else
 #define	L1_CACHE_BYTES	16
 #endif /* !8xx || 8260 */
 
+/*
+ * For compatibility reasons support the CONFIG_SYS_CACHELINE_SIZE too
+ */
+#ifndef CONFIG_SYS_CACHELINE_SIZE
+#define CONFIG_SYS_CACHELINE_SIZE	L1_CACHE_BYTES
+#endif
+
 #define	L1_CACHE_ALIGN(x)       (((x)+(L1_CACHE_BYTES-1))&~(L1_CACHE_BYTES-1))
 #define	L1_CACHE_PAGES		8
 
diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index b7c524a..51cdc3d 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -5,19 +5,28 @@
 
 extern unsigned long _text_base;
 
-unsigned long long get_ticks(void);
+#ifdef CONFIG_MPC85xx
+#include <asm/global_data.h>
+#include <mach/mpc85xx.h>
+#include <mach/immap_85xx.h>
+#endif
 
-int	cpu_init      (void);
+void	upmconfig (unsigned int, unsigned int *, unsigned int);
+ulong	get_timebase_clock (void);
 
-uint	get_pvr	      (void);
-uint	get_svr	      (void);
+unsigned long long get_ticks (void);
 
-void	trap_init     (ulong);
+int	cpu_init (void);
 
-int cpu_init_board_data(bd_t *bd);
-int init_board_data(bd_t *bd);
+uint	get_pvr	(void);
+uint	get_svr	(void);
 
-static inline unsigned long get_pc(void)
+void	trap_init (ulong);
+
+int cpu_init_board_data (bd_t *bd);
+int init_board_data (bd_t *bd);
+
+static inline unsigned long get_pc (void)
 {
 	unsigned long pc;
 
@@ -33,5 +42,23 @@ static inline unsigned long get_pc(void)
 
 	return pc;
 }
+/* $(CPU)/start.S */
+void	flush_dcache (void);
+void	invalidate_icache (void);
+
+#if defined(CONFIG_MPC85xx)
+typedef MPC85xx_SYS_INFO sys_info_t;
+long int initdram (int);
+void 	get_sys_info (sys_info_t * );
+ulong	get_ddr_freq (ulong);
+int	cpu_numcores (void);
+int	checkcpu (void);
+ulong	get_effective_memsize (void);
+void	relocate_code (ulong, gd_t *, ulong) __attribute__ ((noreturn));
+unsigned long get_bus_freq (ulong dummy);
+#endif
+
+int	board_early_init_r (void);
+int	cpu_init_r (void);
 
 #endif /* __ASM_COMMON_H */
diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index 052ae15..2e9e9c3 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -27,6 +27,8 @@
 #define writel(b,addr) out_le32((volatile u32 *)(addr),(b))
 #endif
 
+
+
 /*
  * The insw/outsw/insl/outsl macros don't do byte-swapping.
  * They are only used in practice for transferring buffers which
@@ -176,6 +178,42 @@ extern inline void out_be32(volatile unsigned *addr, int val)
     __asm__ __volatile__("stw%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
 }
 
+/* Clear and set bits in one shot. These macros can be used to clear and
+ * set multiple bits in a register using a single call. These macros can
+ * also be used to set a multiple-bit bit pattern using a mask, by
+ * specifying the mask in the 'clear' parameter and the new bit pattern
+ * in the 'set' parameter.
+ */
+
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
+#define clrbits_le32(addr, clear) clrbits(le32, addr, clear)
+#define setbits_le32(addr, set) setbits(le32, addr, set)
+#define clrsetbits_le32(addr, clear, set) clrsetbits(le32, addr, clear, set)
+
+#define clrbits_be16(addr, clear) clrbits(be16, addr, clear)
+#define setbits_be16(addr, set) setbits(be16, addr, set)
+#define clrsetbits_be16(addr, clear, set) clrsetbits(be16, addr, clear, set)
+
+#define clrbits_le16(addr, clear) clrbits(le16, addr, clear)
+#define setbits_le16(addr, set) setbits(le16, addr, set)
+#define clrsetbits_le16(addr, clear, set) clrsetbits(le16, addr, clear, set)
+
+#define clrbits_8(addr, clear) clrbits(8, addr, clear)
+#define setbits_8(addr, set) setbits(8, addr, set)
+#define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
+
 /* these ones were originally in config.h */
 unsigned char	in8(unsigned int);
 void		out8(unsigned int, unsigned char);
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index 1667041..1e3d4aa 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -136,35 +136,87 @@ typedef struct _MMU_context {
 extern void _tlbie(unsigned long va);	/* invalidate a TLB entry */
 extern void _tlbia(void);		/* invalidate all TLB entries */
 
+#ifdef CONFIG_ADDR_MAP
+extern void init_addr_map(void);
+#endif
+
 typedef enum {
 	IBAT0 = 0, IBAT1, IBAT2, IBAT3,
-	DBAT0, DBAT1, DBAT2, DBAT3
+	DBAT0, DBAT1, DBAT2, DBAT3,
+#ifdef CONFIG_HIGH_BATS
+	IBAT4, IBAT5, IBAT6, IBAT7,
+	DBAT4, DBAT5, DBAT6, DBAT7
+#endif
 } ppc_bat_t;
 
 extern int read_bat(ppc_bat_t bat, unsigned long *upper, unsigned long *lower);
 extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
+extern void print_bats(void);
 
 #endif /* __ASSEMBLY__ */
 
-/* Block size masks */
-#define BL_128K	0x000
-#define BL_256K 0x001
-#define BL_512K 0x003
-#define BL_1M   0x007
-#define BL_2M   0x00F
-#define BL_4M   0x01F
-#define BL_8M   0x03F
-#define BL_16M  0x07F
-#define BL_32M  0x0FF
-#define BL_64M  0x1FF
-#define BL_128M 0x3FF
-#define BL_256M 0x7FF
+#define BATU_VS 	0x00000002
+#define BATU_VP 	0x00000001
+#define BATU_INVALID	0x00000000
+
+#define BATL_WRITETHROUGH	0x00000040
+#define BATL_CACHEINHIBIT	0x00000020
+#define BATL_MEMCOHERENCE	0x00000010
+#define BATL_GUARDEDSTORAGE	0x00000008
+#define BATL_NO_ACCESS		0x00000000
+
+#define BATL_PP_MSK		0x00000003
+#define BATL_PP_00		0x00000000 /* No access */
+#define BATL_PP_01		0x00000001 /* Read-only */
+#define BATL_PP_10		0x00000002 /* Read-write */
+#define BATL_PP_11		0x00000003
+
+#define BATL_PP_NO_ACCESS	BATL_PP_00
+#define BATL_PP_RO		BATL_PP_01
+#define BATL_PP_RW		BATL_PP_10
+
+/* BAT Block size values */
+#define BATU_BL_128K		0x00000000
+#define BATU_BL_256K		0x00000004
+#define BATU_BL_512K		0x0000000c
+#define BATU_BL_1M		0x0000001c
+#define BATU_BL_2M		0x0000003c
+#define BATU_BL_4M		0x0000007c
+#define BATU_BL_8M		0x000000fc
+#define BATU_BL_16M		0x000001fc
+#define BATU_BL_32M		0x000003fc
+#define BATU_BL_64M		0x000007fc
+#define BATU_BL_128M		0x00000ffc
+#define BATU_BL_256M		0x00001ffc
+
+/* Block lengths for processors that support extended block length */
+#ifdef HID0_XBSEN
+#define BATU_BL_512M		0x00003ffc
+#define BATU_BL_1G		0x00007ffc
+#define BATU_BL_2G		0x0000fffc
+#define BATU_BL_4G		0x0001fffc
+#define BATU_BL_MAX		BATU_BL_4G
+#else
+#define BATU_BL_MAX		BATU_BL_256M
+#endif
 
 /* BAT Access Protection */
 #define BPP_XX	0x00		/* No access */
 #define BPP_RX	0x01		/* Read only */
 #define BPP_RW	0x02		/* Read/write */
 
+/* Macros to get values from BATs, once data is in the BAT register format */
+#define BATU_VALID(x) (x & 0x3)
+#define BATU_VADDR(x) (x & 0xfffe0000)
+#define BATL_PADDR(x) ((phys_addr_t)((x & 0xfffe0000)		\
+				     | ((x & 0x0e00ULL) << 24)	\
+				     | ((x & 0x04ULL) << 30)))
+#define BATU_SIZE(x) (1ULL << (fls((x & BATU_BL_MAX) >> 2) + 17))
+
+/* bytes into BATU_BL */
+#define TO_BATU_BL(x) \
+	(u32)((((1ull << __ilog2_u64((u64)x)) / (128 * 1024)) - 1) * 4)
+
 /* Used to set up SDR1 register */
 #define HASH_TABLE_SIZE_64K	0x00010000
 #define HASH_TABLE_SIZE_128K	0x00020000
@@ -241,7 +293,7 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
  */
 #define MI_BOOTINIT	0x000001fd
 
-#define MD_CTR		792	/* Data TLB control register */
+#define MD_CTR		792		/* Data TLB control register */
 #define MD_GPM		0x80000000	/* Set domain manager mode */
 #define MD_PPM		0x40000000	/* Set subpage protection */
 #define MD_CIDEF	0x20000000	/* Set cache inhibit when MMU dis */
@@ -333,112 +385,132 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
  * instructions.
  */
 
-#define	TLB_LO          1
-#define	TLB_HI          0
-
-#define	TLB_DATA        TLB_LO
-#define	TLB_TAG         TLB_HI
-
-/* Tag portion */
-
-#define TLB_EPN_MASK    0xFFFFFC00      /* Effective Page Number */
-#define TLB_PAGESZ_MASK 0x00000380
-#define TLB_PAGESZ(x)   (((x) & 0x7) << 7)
-#define   PAGESZ_1K		0
-#define   PAGESZ_4K             1
-#define   PAGESZ_16K            2
-#define   PAGESZ_64K            3
-#define   PAGESZ_256K           4
-#define   PAGESZ_1M             5
-#define   PAGESZ_4M             6
-#define   PAGESZ_16M            7
-#define TLB_VALID       0x00000040      /* Entry is valid */
-
-/* Data portion */
-
-#define TLB_RPN_MASK    0xFFFFFC00      /* Real Page Number */
-#define TLB_PERM_MASK   0x00000300
-#define TLB_EX          0x00000200      /* Instruction execution allowed */
-#define TLB_WR          0x00000100      /* Writes permitted */
-#define TLB_ZSEL_MASK   0x000000F0
-#define TLB_ZSEL(x)     (((x) & 0xF) << 4)
-#define TLB_ATTR_MASK   0x0000000F
-#define TLB_W           0x00000008      /* Caching is write-through */
-#define TLB_I           0x00000004      /* Caching is inhibited */
-#define TLB_M           0x00000002      /* Memory is coherent */
-#define TLB_G           0x00000001      /* Memory is guarded from prefetch */
-
 /*
- * e500 support
+ * FSL Book-E support
  */
 
-#define MAS0_TLBSEL     0x10000000
-#define MAS0_ESEL       0x000F0000
-#define MAS0_NV         0x00000001
-
-#define MAS1_VALID      0x80000000
-#define MAS1_IPROT      0x40000000
-#define MAS1_TID        0x00FF0000
-#define MAS1_TS         0x00001000
-#define MAS1_TSIZE   	0x00000F00
-
-#define MAS2_EPN        0xFFFFF000
-#define MAS2_SHAREN     0x00000200
-#define MAS2_X0         0x00000040
-#define MAS2_X1         0x00000020
-#define MAS2_W          0x00000010
-#define MAS2_I          0x00000008
-#define MAS2_M          0x00000004
-#define MAS2_G          0x00000002
-#define MAS2_E          0x00000001
-
-#define MAS3_RPN        0xFFFFF000
-#define MAS3_U0         0x00000200
-#define MAS3_U1         0x00000100
-#define MAS3_U2         0x00000080
-#define MAS3_U3         0x00000040
-#define MAS3_UX         0x00000020
-#define MAS3_SX         0x00000010
-#define MAS3_UW         0x00000008
-#define MAS3_SW         0x00000004
-#define MAS3_UR         0x00000002
-#define MAS3_SR         0x00000001
-
-#define MAS4_TLBSELD    0x10000000
-#define MAS4_TIDDSEL    0x00030000
-#define MAS4_DSHAREN    0x00001000
-#define MAS4_TSIZED(x)  (x << 8)
-#define MAS4_X0D        0x00000040
-#define MAS4_X1D        0x00000020
-#define MAS4_WD         0x00000010
-#define MAS4_ID         0x00000008
-#define MAS4_MD         0x00000004
-#define MAS4_GD         0x00000002
-#define MAS4_ED         0x00000001
-
-#define MAS6_SPID       0x00FF0000
-#define MAS6_SAS        0x00000001
+#define MAS0_TLBSEL_MSK	0x30000000
+#define MAS0_TLBSEL(x)	((x << 28) & MAS0_TLBSEL_MSK)
+#define MAS0_ESEL_MSK	0x0FFF0000
+#define MAS0_ESEL(x)	((x << 16) & MAS0_ESEL_MSK)
+#define MAS0_NV(x)	((x) & 0x00000FFF)
+
+#define MAS1_VALID	0x80000000
+#define MAS1_IPROT	0x40000000
+#define MAS1_TID(x)	((x << 16) & 0x3FFF0000)
+#define MAS1_TS 	0x00001000
+#define MAS1_TSIZE(x)	((x << 8) & 0x00000F00)
+#define TSIZE_TO_BYTES(x) ((phys_addr_t)(1UL << ((tsize * 2) + 10)))
+
+#define MAS2_EPN	0xFFFFF000
+#define MAS2_X0 	0x00000040
+#define MAS2_X1 	0x00000020
+#define MAS2_W		0x00000010
+#define MAS2_I		0x00000008
+#define MAS2_M		0x00000004
+#define MAS2_G		0x00000002
+#define MAS2_E		0x00000001
+
+#define MAS3_RPN	0xFFFFF000
+#define MAS3_U0 	0x00000200
+#define MAS3_U1 	0x00000100
+#define MAS3_U2 	0x00000080
+#define MAS3_U3 	0x00000040
+#define MAS3_UX 	0x00000020
+#define MAS3_SX 	0x00000010
+#define MAS3_UW 	0x00000008
+#define MAS3_SW 	0x00000004
+#define MAS3_UR 	0x00000002
+#define MAS3_SR 	0x00000001
+
+#define MAS4_TLBSELD(x) MAS0_TLBSEL(x)
+#define MAS4_TIDDSEL	0x000F0000
+#define MAS4_TSIZED(x)	MAS1_TSIZE(x)
+#define MAS4_X0D	0x00000040
+#define MAS4_X1D	0x00000020
+#define MAS4_WD 	0x00000010
+#define MAS4_ID 	0x00000008
+#define MAS4_MD 	0x00000004
+#define MAS4_GD 	0x00000002
+#define MAS4_ED 	0x00000001
+
+#define MAS6_SPID0	0x3FFF0000
+#define MAS6_SPID1	0x00007FFE
+#define MAS6_SAS	0x00000001
+#define MAS6_SPID	MAS6_SPID0
+
+#define MAS7_RPN	0xFFFFFFFF
+
+#define FSL_BOOKE_MAS0(tlbsel,esel,nv) \
+		(MAS0_TLBSEL(tlbsel) | MAS0_ESEL(esel) | MAS0_NV(nv))
+#define FSL_BOOKE_MAS1(v,iprot,tid,ts,tsize) \
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
 
 #define BOOKE_PAGESZ_1K         0
-#define BOOKE_PAGESZ_4K         1
-#define BOOKE_PAGESZ_16K        2
-#define BOOKE_PAGESZ_64K        3
-#define BOOKE_PAGESZ_256K       4
-#define BOOKE_PAGESZ_1M         5
-#define BOOKE_PAGESZ_4M         6
-#define BOOKE_PAGESZ_16M        7
-#define BOOKE_PAGESZ_64M        8
-#define BOOKE_PAGESZ_256M       9
-#define BOOKE_PAGESZ_1GB        10
-#define BOOKE_PAGESZ_4GB        11
-
-#if defined(CONFIG_MPC86xx)
-#define LAWBAR_BASE_ADDR	0x00FFFFFF
-#define LAWAR_TRGT_IF		0x01F00000
-#else
-#define LAWBAR_BASE_ADDR	0x000FFFFF
-#define LAWAR_TRGT_IF		0x00F00000
+#define BOOKE_PAGESZ_4K 	1
+#define BOOKE_PAGESZ_16K	2
+#define BOOKE_PAGESZ_64K	3
+#define BOOKE_PAGESZ_256K	4
+#define BOOKE_PAGESZ_1M 	5
+#define BOOKE_PAGESZ_4M 	6
+#define BOOKE_PAGESZ_16M	7
+#define BOOKE_PAGESZ_64M	8
+#define BOOKE_PAGESZ_256M	9
+#define BOOKE_PAGESZ_1G 	10
+#define BOOKE_PAGESZ_4G 	11
+#define BOOKE_PAGESZ_16GB	12
+#define BOOKE_PAGESZ_64GB	13
+#define BOOKE_PAGESZ_256GB	14
+#define BOOKE_PAGESZ_1TB	15
+
+#ifdef CONFIG_E500
+#ifndef __ASSEMBLY__
+extern void set_tlb(u8 tlb, u32 epn, u64 rpn,
+		    u8 perms, u8 wimge,
+		    u8 ts, u8 esel, u8 tsize, u8 iprot);
+extern void disable_tlb(u8 esel);
+extern void invalidate_tlb(u8 tlb);
+extern void init_tlbs(void);
+extern int find_tlb_idx(void *addr, u8 tlbsel);
+extern void init_used_tlb_cams(void);
+extern int find_free_tlbcam(void);
+extern void print_tlbcam(void);
+
+extern unsigned int setup_ddr_tlbs(unsigned int memsize_in_meg);
+
+extern void write_tlb(u32 _mas0, u32 _mas1, u32 _mas2, u32 _mas3, u32 _mas7);
+
+#define SET_TLB_ENTRY(_tlb, _epn, _rpn, _perms, _wimge, _ts, _esel, _sz, _iprot) \
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
+
+extern struct fsl_e_tlb_entry tlb_table[];
+extern int num_tlb_entries;
+#endif
 #endif
+
+#ifdef CONFIG_E300
 #define LAWAR_EN		0x80000000
 #define LAWAR_SIZE		0x0000003F
 
@@ -446,6 +518,9 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define LAWAR_TRGT_IF_PCI1	0x00000000
 #define LAWAR_TRGT_IF_PCIX	0x00000000
 #define LAWAR_TRGT_IF_PCI2	0x00100000
+#define LAWAR_TRGT_IF_PCIE1	0x00200000
+#define LAWAR_TRGT_IF_PCIE2	0x00100000
+#define LAWAR_TRGT_IF_PCIE3	0x00300000
 #define LAWAR_TRGT_IF_LBC	0x00400000
 #define LAWAR_TRGT_IF_CCSR	0x00800000
 #define LAWAR_TRGT_IF_DDR_INTERLEAVED 0x00B00000
@@ -479,8 +554,169 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define LAWAR_SIZE_8G		(LAWAR_SIZE_BASE+22)
 #define LAWAR_SIZE_16G		(LAWAR_SIZE_BASE+23)
 #define LAWAR_SIZE_32G		(LAWAR_SIZE_BASE+24)
+#endif
+
+#ifdef CONFIG_440
+/* General */
+#define TLB_VALID   0x00000200
+
+/* Supported page sizes */
+
+#define SZ_1K	0x00000000
+#define SZ_4K	0x00000010
+#define SZ_16K	0x00000020
+#define SZ_64K	0x00000030
+#define SZ_256K 0x00000040
+#define SZ_1M   0x00000050
+#define SZ_16M  0x00000070
+#define SZ_256M 0x00000090
+
+/* Storage attributes */
+#define SA_W	0x00000800	/* Write-through */
+#define SA_I	0x00000400	/* Caching inhibited */
+#define SA_M	0x00000200	/* Memory coherence */
+#define SA_G	0x00000100	/* Guarded */
+#define SA_E	0x00000080	/* Endian */
+/* Some additional macros for combinations often used */
+#define SA_IG	(SA_I | SA_G)
+
+/* Access control */
+#define AC_X	0x00000024	/* Execute */
+#define AC_W	0x00000012	/* Write */
+#define AC_R	0x00000009	/* Read */
+/* Some additional macros for combinations often used */
+#define AC_RW	(AC_R | AC_W)
+#define AC_RWX	(AC_R | AC_W | AC_X)
+
+/* Some handy macros */
+
+#define EPN(e)		((e) & 0xfffffc00)
+#define TLB0(epn,sz)	((EPN((epn)) | (sz) | TLB_VALID ))
+#define TLB1(rpn,erpn)	(((rpn) & 0xfffffc00) | (erpn))
+#define TLB2(a)		((a) & 0x00000fbf)
+
+#define tlbtab_start\
+	mflr	r1	;\
+	bl	0f	;
+
+#define tlbtab_end\
+	.long 0, 0, 0	;\
+0:	mflr	r0	;\
+	mtlr	r1	;\
+	blr		;
+
+#define tlbentry(epn,sz,rpn,erpn,attr)\
+	.long TLB0(epn,sz),TLB1(rpn,erpn),TLB2(attr)
+
+/*----------------------------------------------------------------------------+
+| TLB specific defines.
++----------------------------------------------------------------------------*/
+#define TLB_256MB_ALIGN_MASK 0xFF0000000ULL
+#define TLB_16MB_ALIGN_MASK  0xFFF000000ULL
+#define TLB_1MB_ALIGN_MASK   0xFFFF00000ULL
+#define TLB_256KB_ALIGN_MASK 0xFFFFC0000ULL
+#define TLB_64KB_ALIGN_MASK  0xFFFFF0000ULL
+#define TLB_16KB_ALIGN_MASK  0xFFFFFC000ULL
+#define TLB_4KB_ALIGN_MASK   0xFFFFFF000ULL
+#define TLB_1KB_ALIGN_MASK   0xFFFFFFC00ULL
+#define TLB_256MB_SIZE       0x10000000
+#define TLB_16MB_SIZE        0x01000000
+#define TLB_1MB_SIZE         0x00100000
+#define TLB_256KB_SIZE       0x00040000
+#define TLB_64KB_SIZE        0x00010000
+#define TLB_16KB_SIZE        0x00004000
+#define TLB_4KB_SIZE         0x00001000
+#define TLB_1KB_SIZE         0x00000400
+
+#define TLB_WORD0_EPN_MASK   0xFFFFFC00
+#define TLB_WORD0_EPN_ENCODE(n) (((unsigned long)(n))&0xFFFFFC00)
+#define TLB_WORD0_EPN_DECODE(n) (((unsigned long)(n))&0xFFFFFC00)
+#define TLB_WORD0_V_MASK     0x00000200
+#define TLB_WORD0_V_ENABLE   0x00000200
+#define TLB_WORD0_V_DISABLE  0x00000000
+#define TLB_WORD0_TS_MASK    0x00000100
+#define TLB_WORD0_TS_1       0x00000100
+#define TLB_WORD0_TS_0       0x00000000
+#define TLB_WORD0_SIZE_MASK  0x000000F0
+#define TLB_WORD0_SIZE_1KB   0x00000000
+#define TLB_WORD0_SIZE_4KB   0x00000010
+#define TLB_WORD0_SIZE_16KB  0x00000020
+#define TLB_WORD0_SIZE_64KB  0x00000030
+#define TLB_WORD0_SIZE_256KB 0x00000040
+#define TLB_WORD0_SIZE_1MB   0x00000050
+#define TLB_WORD0_SIZE_16MB  0x00000070
+#define TLB_WORD0_SIZE_256MB 0x00000090
+#define TLB_WORD0_TPAR_MASK  0x0000000F
+#define TLB_WORD0_TPAR_ENCODE(n) ((((unsigned long)(n))&0x0F)<<0)
+#define TLB_WORD0_TPAR_DECODE(n) ((((unsigned long)(n))>>0)&0x0F)
+
+#define TLB_WORD1_RPN_MASK   0xFFFFFC00
+#define TLB_WORD1_RPN_ENCODE(n) (((unsigned long)(n))&0xFFFFFC00)
+#define TLB_WORD1_RPN_DECODE(n) (((unsigned long)(n))&0xFFFFFC00)
+#define TLB_WORD1_PAR1_MASK  0x00000300
+#define TLB_WORD1_PAR1_ENCODE(n) ((((unsigned long)(n))&0x03)<<8)
+#define TLB_WORD1_PAR1_DECODE(n) ((((unsigned long)(n))>>8)&0x03)
+#define TLB_WORD1_PAR1_0     0x00000000
+#define TLB_WORD1_PAR1_1     0x00000100
+#define TLB_WORD1_PAR1_2     0x00000200
+#define TLB_WORD1_PAR1_3     0x00000300
+#define TLB_WORD1_ERPN_MASK  0x0000000F
+#define TLB_WORD1_ERPN_ENCODE(n) ((((unsigned long)(n))&0x0F)<<0)
+#define TLB_WORD1_ERPN_DECODE(n) ((((unsigned long)(n))>>0)&0x0F)
+
+#define TLB_WORD2_PAR2_MASK  0xC0000000
+#define TLB_WORD2_PAR2_ENCODE(n) ((((unsigned long)(n))&0x03)<<30)
+#define TLB_WORD2_PAR2_DECODE(n) ((((unsigned long)(n))>>30)&0x03)
+#define TLB_WORD2_PAR2_0     0x00000000
+#define TLB_WORD2_PAR2_1     0x40000000
+#define TLB_WORD2_PAR2_2     0x80000000
+#define TLB_WORD2_PAR2_3     0xC0000000
+#define TLB_WORD2_U0_MASK    0x00008000
+#define TLB_WORD2_U0_ENABLE  0x00008000
+#define TLB_WORD2_U0_DISABLE 0x00000000
+#define TLB_WORD2_U1_MASK    0x00004000
+#define TLB_WORD2_U1_ENABLE  0x00004000
+#define TLB_WORD2_U1_DISABLE 0x00000000
+#define TLB_WORD2_U2_MASK    0x00002000
+#define TLB_WORD2_U2_ENABLE  0x00002000
+#define TLB_WORD2_U2_DISABLE 0x00000000
+#define TLB_WORD2_U3_MASK    0x00001000
+#define TLB_WORD2_U3_ENABLE  0x00001000
+#define TLB_WORD2_U3_DISABLE 0x00000000
+#define TLB_WORD2_W_MASK     0x00000800
+#define TLB_WORD2_W_ENABLE   0x00000800
+#define TLB_WORD2_W_DISABLE  0x00000000
+#define TLB_WORD2_I_MASK     0x00000400
+#define TLB_WORD2_I_ENABLE   0x00000400
+#define TLB_WORD2_I_DISABLE  0x00000000
+#define TLB_WORD2_M_MASK     0x00000200
+#define TLB_WORD2_M_ENABLE   0x00000200
+#define TLB_WORD2_M_DISABLE  0x00000000
+#define TLB_WORD2_G_MASK     0x00000100
+#define TLB_WORD2_G_ENABLE   0x00000100
+#define TLB_WORD2_G_DISABLE  0x00000000
+#define TLB_WORD2_E_MASK     0x00000080
+#define TLB_WORD2_E_ENABLE   0x00000080
+#define TLB_WORD2_E_DISABLE  0x00000000
+#define TLB_WORD2_UX_MASK    0x00000020
+#define TLB_WORD2_UX_ENABLE  0x00000020
+#define TLB_WORD2_UX_DISABLE 0x00000000
+#define TLB_WORD2_UW_MASK    0x00000010
+#define TLB_WORD2_UW_ENABLE  0x00000010
+#define TLB_WORD2_UW_DISABLE 0x00000000
+#define TLB_WORD2_UR_MASK    0x00000008
+#define TLB_WORD2_UR_ENABLE  0x00000008
+#define TLB_WORD2_UR_DISABLE 0x00000000
+#define TLB_WORD2_SX_MASK    0x00000004
+#define TLB_WORD2_SX_ENABLE  0x00000004
+#define TLB_WORD2_SX_DISABLE 0x00000000
+#define TLB_WORD2_SW_MASK    0x00000002
+#define TLB_WORD2_SW_ENABLE  0x00000002
+#define TLB_WORD2_SW_DISABLE 0x00000000
+#define TLB_WORD2_SR_MASK    0x00000001
+#define TLB_WORD2_SR_ENABLE  0x00000001
+#define TLB_WORD2_SR_DISABLE 0x00000000
 
-#ifdef CONFIG_440SPE
 /*----------------------------------------------------------------------------+
 | Following instructions are not available in Book E mode of the GNU assembler.
 +----------------------------------------------------------------------------*/
@@ -511,14 +747,22 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 #define MSYNC				.long 0x7c000000|\
 					(598<<1)
 
-#define MBAR_INST 				.long 0x7c000000|\
+#define MBAR_INST				.long 0x7c000000|\
 					(854<<1)
 
-/*----------------------------------------------------------------------------+
-| Following instruction is not available in PPC405 mode of the GNU assembler.
-+----------------------------------------------------------------------------*/
-#define TLBRE(rt,ra,ws)			.long 0x7c000000|\
-					(rt<<21)|(ra<<16)|(ws<<11)|(946<<1)
+#ifndef __ASSEMBLY__
+/* Prototypes */
+void mttlb1(unsigned long index, unsigned long value);
+void mttlb2(unsigned long index, unsigned long value);
+void mttlb3(unsigned long index, unsigned long value);
+unsigned long mftlb1(unsigned long index);
+unsigned long mftlb2(unsigned long index);
+unsigned long mftlb3(unsigned long index);
+
+void program_tlb(u64 phys_addr, u32 virt_addr, u32 size, u32 tlb_word2_i_value);
+void remove_tlb(u32 vaddr, u32 size);
+void change_tlb(u32 vaddr, u32 size, u32 tlb_word2_i_value);
+#endif /* __ASSEMBLY__ */
 
-#endif
+#endif /* CONFIG_440 */
 #endif /* _PPC_MMU_H_ */
diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 9c6f79a..ed3ffed 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -7,20 +7,21 @@
  */
 #define current_text_addr() ({ __label__ _l; _l: &&_l;})
 
+#include <config.h>
+
 #include <asm/ptrace.h>
 #include <asm/types.h>
-#include <linux/stringify.h>
 
 /* Machine State Register (MSR) Fields */
 
 #ifdef CONFIG_PPC64BRIDGE
-#define MSR_SF		(1<<63)
+#define MSR_SF  	(1<<63)
 #define MSR_ISF		(1<<61)
 #endif /* CONFIG_PPC64BRIDGE */
-#define MSR_UCLE        (1<<26)         /* User-mode cache lock enable (e500) */
-#define MSR_VEC		(1<<25)		/* Enable AltiVec(74xx) */
-#define MSR_SPE         (1<<25)         /* Enable SPE(e500) */
-#define MSR_POW		(1<<18)		/* Enable Power Management */
+#define MSR_UCLE	(1<<26)		/* User-mode cache lock enable (e500) */
+#define MSR_VEC 	(1<<25)		/* Enable AltiVec(74xx) */
+#define MSR_SPE 	(1<<25)		/* Enable SPE(e500) */
+#define MSR_POW 	(1<<18)		/* Enable Power Management */
 #define MSR_WE		(1<<18)		/* Wait State Enable */
 #define MSR_TGPR	(1<<17)		/* TLB Update registers in use */
 #define MSR_CE		(1<<17)		/* Critical Interrupt Enable */
@@ -29,23 +30,23 @@
 #define MSR_PR		(1<<14)		/* Problem State / Privilege Level */
 #define MSR_FP		(1<<13)		/* Floating Point enable */
 #define MSR_ME		(1<<12)		/* Machine Check Enable */
-#define MSR_FE0		(1<<11)		/* Floating Exception mode 0 */
+#define MSR_FE0 	(1<<11)		/* Floating Exception mode 0 */
 #define MSR_SE		(1<<10)		/* Single Step */
-#define MSR_DWE         (1<<10)         /* Debug Wait Enable (4xx) */
-#define MSR_UBLE        (1<<10)         /* BTB lock enable (e500) */
+#define MSR_DWE 	(1<<10)		/* Debug Wait Enable (4xx) */
+#define MSR_UBLE	(1<<10)		/* BTB lock enable (e500) */
 #define MSR_BE		(1<<9)		/* Branch Trace */
-#define MSR_DE		(1<<9) 		/* Debug Exception Enable */
-#define MSR_FE1		(1<<8)		/* Floating Exception mode 1 */
+#define MSR_DE		(1<<9)		/* Debug Exception Enable */
+#define MSR_FE1 	(1<<8)		/* Floating Exception mode 1 */
 #define MSR_IP		(1<<6)		/* Exception prefix 0x000/0xFFF */
-#define MSR_IR		(1<<5) 		/* Instruction Relocate */
-#define MSR_IS          (1<<5)          /* Book E Instruction space */
-#define MSR_DR		(1<<4) 		/* Data Relocate */
-#define MSR_DS          (1<<4)          /* Book E Data space */
+#define MSR_IR		(1<<5)		/* Instruction Relocate */
+#define MSR_IS		(1<<5)		/* Book E Instruction space */
+#define MSR_DR		(1<<4)		/* Data Relocate */
+#define MSR_DS		(1<<4)		/* Book E Data space */
 #define MSR_PE		(1<<3)		/* Protection Enable */
 #define MSR_PX		(1<<2)		/* Protection Exclusive Mode */
-#define MSR_PMM         (1<<2)          /* Performance monitor mark bit (e500) */
+#define MSR_PMM 	(1<<2)		/* Performance monitor mark bit (e500) */
 #define MSR_RI		(1<<1)		/* Recoverable Exception */
-#define MSR_LE		(1<<0) 		/* Little Endian */
+#define MSR_LE		(1<<0)		/* Little Endian */
 
 #ifdef CONFIG_APUS_FAST_EXCEPT
 #define MSR_		MSR_ME|MSR_IP|MSR_RI
@@ -53,11 +54,10 @@
 #define MSR_		MSR_ME|MSR_RI
 #endif
 #ifndef CONFIG_E500
-#define MSR_KERNEL      MSR_|MSR_IR|MSR_DR
+#define MSR_KERNEL	MSR_|MSR_IR|MSR_DR
 #else
 #define MSR_KERNEL	MSR_ME
 #endif
-#define MSR_USER	MSR_KERNEL|MSR_PR|MSR_EE
 
 /* Floating Point Status and Control Register (FPSCR) Fields */
 
@@ -91,6 +91,15 @@
 
 /* Special Purpose Registers (SPRNs)*/
 
+/* PPC440 Architecture is BOOK-E */
+#ifdef CONFIG_440
+#define CONFIG_BOOKE
+#endif
+
+#define SPRN_CCR0	0x3B3	/* Core Configuration Register 0 */
+#ifdef CONFIG_BOOKE
+#define SPRN_CCR1	0x378	/* Core Configuration Register for 440 only */
+#endif
 #define SPRN_CDBCR	0x3D7	/* Cache Debug Control Register */
 #define SPRN_CTR	0x009	/* Count Register */
 #define SPRN_DABR	0x3F5	/* Data Address Breakpoint Register */
@@ -98,9 +107,10 @@
 #define SPRN_DAC1	0x3F6	/* Data Address Compare 1 */
 #define SPRN_DAC2	0x3F7	/* Data Address Compare 2 */
 #else
-#define SPRN_DAC1       0x13C   /* Book E Data Address Compare 1 */
-#define SPRN_DAC2       0x13D   /* Book E Data Address Compare 2 */
-#endif  /* CONFIG_BOOKE */
+#define SPRN_DAC1	0x13C	/* Book E Data Address Compare 1 */
+#define SPRN_DAC2	0x13D	/* Book E Data Address Compare 2 */
+#endif	/* CONFIG_BOOKE */
+
 #define SPRN_DAR	0x013	/* Data Address Register */
 #define SPRN_DBAT0L	0x219	/* Data BAT 0 Lower Register */
 #define SPRN_DBAT0U	0x218	/* Data BAT 0 Upper Register */
@@ -110,21 +120,21 @@
 #define SPRN_DBAT2U	0x21C	/* Data BAT 2 Upper Register */
 #define SPRN_DBAT3L	0x21F	/* Data BAT 3 Lower Register */
 #define SPRN_DBAT3U	0x21E	/* Data BAT 3 Upper Register */
-#define SPRN_DBAT4L	0x239   /* Data BAT 4 Lower Register */
-#define SPRN_DBAT4U	0x238   /* Data BAT 4 Upper Register */
-#define SPRN_DBAT5L	0x23B   /* Data BAT 5 Lower Register */
-#define SPRN_DBAT5U	0x23A   /* Data BAT 5 Upper Register */
-#define SPRN_DBAT6L	0x23D   /* Data BAT 6 Lower Register */
-#define SPRN_DBAT6U	0x23C   /* Data BAT 6 Upper Register */
-#define SPRN_DBAT7L	0x23F   /* Data BAT 7 Lower Register */
-#define SPRN_DBAT7U	0x23E   /* Data BAT 7 Lower Register */
+#define SPRN_DBAT4L	0x239	/* Data BAT 4 Lower Register */
+#define SPRN_DBAT4U	0x238	/* Data BAT 4 Upper Register */
+#define SPRN_DBAT5L	0x23B	/* Data BAT 5 Lower Register */
+#define SPRN_DBAT5U	0x23A	/* Data BAT 5 Upper Register */
+#define SPRN_DBAT6L	0x23D	/* Data BAT 6 Lower Register */
+#define SPRN_DBAT6U	0x23C	/* Data BAT 6 Upper Register */
+#define SPRN_DBAT7L	0x23F	/* Data BAT 7 Lower Register */
+#define SPRN_DBAT7U	0x23E	/* Data BAT 7 Lower Register */
 #define SPRN_DBCR	0x3F2	/* Debug Control Regsiter */
 #define   DBCR_EDM	0x80000000
 #define   DBCR_IDM	0x40000000
 #define   DBCR_RST(x)	(((x) & 0x3) << 28)
-#define     DBCR_RST_NONE       	0
-#define     DBCR_RST_CORE       	1
-#define     DBCR_RST_CHIP       	2
+#define     DBCR_RST_NONE		0
+#define     DBCR_RST_CORE		1
+#define     DBCR_RST_CHIP		2
 #define     DBCR_RST_SYSTEM		3
 #define   DBCR_IC	0x08000000	/* Instruction Completion Debug Evnt */
 #define   DBCR_BT	0x04000000	/* Branch Taken Debug Event */
@@ -152,22 +162,29 @@
 #define   DBCR_JOI	0x00000002	/* JTAG Serial Outbound Int. Enable */
 #define   DBCR_JII	0x00000001	/* JTAG Serial Inbound Int. Enable */
 #ifndef CONFIG_BOOKE
-#define SPRN_DBCR0      0x3F2           /* Debug Control Register 0 */
+#define SPRN_DBCR0	0x3F2		/* Debug Control Register 0 */
 #else
-#define SPRN_DBCR0      0x134           /* Book E Debug Control Register 0 */
+#define SPRN_DBCR0	0x134		/* Book E Debug Control Register 0 */
 #endif /* CONFIG_BOOKE */
 #ifndef CONFIG_BOOKE
 #define SPRN_DBCR1	0x3BD	/* Debug Control Register 1 */
 #define SPRN_DBSR	0x3F0	/* Debug Status Register */
 #else
-#define SPRN_DBCR1      0x135           /* Book E Debug Control Register 1 */
-#define SPRN_DBSR       0x130           /* Book E Debug Status Register */
-#define   DBSR_IC           0x08000000  /* Book E Instruction Completion  */
-#define   DBSR_TIE          0x01000000  /* Book E Trap Instruction Event */
+#define SPRN_DBCR1	0x135		/* Book E Debug Control Register 1 */
+#ifdef CONFIG_BOOKE
+#define	SPRN_DBDR	0x3f3		/* Debug Data Register */
+#endif
+#define SPRN_DBSR	0x130		/* Book E Debug Status Register */
+#define   DBSR_IC	    0x08000000	/* Book E Instruction Completion  */
+#define   DBSR_TIE	    0x01000000	/* Book E Trap Instruction Event */
 #endif /* CONFIG_BOOKE */
 #define SPRN_DCCR	0x3FA	/* Data Cache Cacheability Register */
 #define   DCCR_NOCACHE		0	/* Noncacheable */
 #define   DCCR_CACHE		1	/* Cacheable */
+#ifndef CONFIG_BOOKE
+#define	SPRN_DCDBTRL	0x39c	/* Data Cache Debug Tag Register Low */
+#define	SPRN_DCDBTRH	0x39d	/* Data Cache Debug Tag Register High */
+#endif
 #define SPRN_DCMP	0x3D1	/* Data TLB Compare Register */
 #define SPRN_DCWR	0x3BA	/* Data Cache Write-thru Register */
 #define   DCWR_COPY		0	/* Copy-back */
@@ -175,16 +192,29 @@
 #ifndef CONFIG_BOOKE
 #define SPRN_DEAR	0x3D5	/* Data Error Address Register */
 #else
-#define SPRN_DEAR       0x03D   /* Book E Data Error Address Register */
+#define SPRN_DEAR	0x03D	/* Book E Data Error Address Register */
 #endif /* CONFIG_BOOKE */
 #define SPRN_DEC	0x016	/* Decrement Register */
 #define SPRN_DMISS	0x3D0	/* Data TLB Miss Register */
+#ifdef CONFIG_BOOKE
+#define	SPRN_DNV0	0x390	/* Data Cache Normal Victim 0 */
+#define	SPRN_DNV1	0x391	/* Data Cache Normal Victim 1 */
+#define	SPRN_DNV2	0x392	/* Data Cache Normal Victim 2 */
+#define	SPRN_DNV3	0x393	/* Data Cache Normal Victim 3 */
+#endif
 #define SPRN_DSISR	0x012	/* Data Storage Interrupt Status Register */
+#ifdef CONFIG_BOOKE
+#define	SPRN_DTV0	0x394	/* Data Cache Transient Victim 0 */
+#define	SPRN_DTV1	0x395	/* Data Cache Transient Victim 1 */
+#define	SPRN_DTV2	0x396	/* Data Cache Transient Victim 2 */
+#define	SPRN_DTV3	0x397	/* Data Cache Transient Victim 3 */
+#define	SPRN_DVLIM	0x398	/* Data Cache Victim Limit */
+#endif
 #define SPRN_EAR	0x11A	/* External Address Register */
 #ifndef CONFIG_BOOKE
 #define SPRN_ESR	0x3D4	/* Exception Syndrome Register */
 #else
-#define SPRN_ESR        0x03E           /* Book E Exception Syndrome Register */
+#define SPRN_ESR	0x03E		/* Book E Exception Syndrome Register */
 #endif /* CONFIG_BOOKE */
 #define   ESR_IMCP	0x80000000	/* Instr. Machine Check - Protection */
 #define   ESR_IMCN	0x40000000	/* Instr. Machine Check - Non-config */
@@ -217,12 +247,14 @@
 #define   HID0_DPM	(1<<20)
 #define   HID0_ICE	(1<<HID0_ICE_SHIFT)	/* Instruction Cache Enable */
 #define   HID0_DCE	(1<<HID0_DCE_SHIFT)	/* Data Cache Enable */
+#define   HID0_TBEN	(1<<14)		/* Time Base Enable */
 #define   HID0_ILOCK	(1<<13)		/* Instruction Cache Lock */
 #define   HID0_DLOCK	(1<<HID0_DLOCK_SHIFT)	/* Data Cache Lock */
 #define   HID0_ICFI	(1<<11)		/* Instr. Cache Flash Invalidate */
 #define   HID0_DCFI	(1<<10)		/* Data Cache Flash Invalidate */
 #define   HID0_DCI	HID0_DCFI
 #define   HID0_SPD	(1<<9)		/* Speculative disable */
+#define   HID0_ENMAS7	(1<<7)		/* Enable MAS7 Update for 36-bit phys */
 #define   HID0_SGE	(1<<7)		/* Store Gathering Enable */
 #define   HID0_SIED	HID_SGE		/* Serial Instr. Execution [Disable] */
 #define   HID0_DCFA	(1<<6)		/* Data Cache Flush Assist */
@@ -231,13 +263,17 @@
 #define   HID0_BHTE	(1<<2)		/* Branch History Table Enable */
 #define   HID0_BTCD	(1<<1)		/* Branch target cache disable */
 #define SPRN_HID1	0x3F1	/* Hardware Implementation Register 1 */
+#define	  HID1_RFXE	(1<<17)		/* Read Fault Exception Enable */
+#define	  HID1_ASTME	(1<<13)		/* Address bus streaming mode */
+#define	  HID1_ABE	(1<<12)		/* Address broadcast enable */
+#define	  HID1_MBDD	(1<<6)		/* optimized sync instruction */
 #define SPRN_IABR	0x3F2	/* Instruction Address Breakpoint Register */
 #ifndef CONFIG_BOOKE
 #define SPRN_IAC1	0x3F4	/* Instruction Address Compare 1 */
 #define SPRN_IAC2	0x3F5	/* Instruction Address Compare 2 */
 #else
-#define SPRN_IAC1       0x138   /* Book E Instruction Address Compare 1 */
-#define SPRN_IAC2       0x139   /* Book E Instruction Address Compare 2 */
+#define SPRN_IAC1	0x138	/* Book E Instruction Address Compare 1 */
+#define SPRN_IAC2	0x139	/* Book E Instruction Address Compare 2 */
 #endif /* CONFIG_BOOKE */
 #define SPRN_IBAT0L	0x211	/* Instruction BAT 0 Lower Register */
 #define SPRN_IBAT0U	0x210	/* Instruction BAT 0 Upper Register */
@@ -247,28 +283,46 @@
 #define SPRN_IBAT2U	0x214	/* Instruction BAT 2 Upper Register */
 #define SPRN_IBAT3L	0x217	/* Instruction BAT 3 Lower Register */
 #define SPRN_IBAT3U	0x216	/* Instruction BAT 3 Upper Register */
-#define SPRN_IBAT4L	0x231   /* Instruction BAT 4 Lower Register */
-#define SPRN_IBAT4U	0x230   /* Instruction BAT 4 Upper Register */
-#define SPRN_IBAT5L	0x233   /* Instruction BAT 5 Lower Register */
-#define SPRN_IBAT5U	0x232   /* Instruction BAT 5 Upper Register */
-#define SPRN_IBAT6L	0x235   /* Instruction BAT 6 Lower Register */
-#define SPRN_IBAT6U	0x234   /* Instruction BAT 6 Upper Register */
-#define SPRN_IBAT7L	0x237   /* Instruction BAT 7 Lower Register */
-#define SPRN_IBAT7U	0x236   /* Instruction BAT 7 Upper Register */
+#define SPRN_IBAT4L	0x231	/* Instruction BAT 4 Lower Register */
+#define SPRN_IBAT4U	0x230	/* Instruction BAT 4 Upper Register */
+#define SPRN_IBAT5L	0x233	/* Instruction BAT 5 Lower Register */
+#define SPRN_IBAT5U	0x232	/* Instruction BAT 5 Upper Register */
+#define SPRN_IBAT6L	0x235	/* Instruction BAT 6 Lower Register */
+#define SPRN_IBAT6U	0x234	/* Instruction BAT 6 Upper Register */
+#define SPRN_IBAT7L	0x237	/* Instruction BAT 7 Lower Register */
+#define SPRN_IBAT7U	0x236	/* Instruction BAT 7 Upper Register */
 #define SPRN_ICCR	0x3FB	/* Instruction Cache Cacheability Register */
 #define   ICCR_NOCACHE		0	/* Noncacheable */
 #define   ICCR_CACHE		1	/* Cacheable */
 #define SPRN_ICDBDR	0x3D3	/* Instruction Cache Debug Data Register */
+#ifdef CONFIG_BOOKE
+#define SPRN_ICDBTRL	0x39e	/* instruction cache debug tag register low */
+#define	SPRN_ICDBTRH	0x39f	/* instruction cache debug tag register high */
+#endif
 #define SPRN_ICMP	0x3D5	/* Instruction TLB Compare Register */
 #define SPRN_ICTC	0x3FB	/* Instruction Cache Throttling Control Reg */
 #define SPRN_IMISS	0x3D4	/* Instruction TLB Miss Register */
-#define SPRN_IMMR	0x27E  	/* Internal Memory Map Register */
-#define SPRN_LDSTCR	0x3F8   /* Load/Store Control Register */
+#define SPRN_IMMR	0x27E	/* Internal Memory Map Register */
+#ifdef CONFIG_BOOKE
+#define	SPRN_INV0	0x370	/* Instruction Cache Normal Victim 0 */
+#define	SPRN_INV1	0x371	/* Instruction Cache Normal Victim 1 */
+#define	SPRN_INV2	0x372	/* Instruction Cache Normal Victim 2 */
+#define	SPRN_INV3	0x373	/* Instruction Cache Normal Victim 3 */
+#define	SPRN_ITV0	0x374	/* Instruction Cache Transient Victim 0 */
+#define	SPRN_ITV1	0x375	/* Instruction Cache Transient Victim 1 */
+#define	SPRN_ITV2	0x376	/* Instruction Cache Transient Victim 2 */
+#define	SPRN_ITV3	0x377	/* Instruction Cache Transient Victim 3 */
+#define	SPRN_IVLIM	0x399	/* Instruction Cache Victim Limit */
+#endif
+#define SPRN_LDSTCR	0x3F8	/* Load/Store Control Register */
 #define SPRN_L2CR	0x3F9	/* Level 2 Cache Control Regsiter */
 #define SPRN_LR		0x008	/* Link Register */
-#define SPRN_MBAR       0x137   /* System memory base address */
+#define SPRN_MBAR	0x137	/* System memory base address */
 #define SPRN_MMCR0	0x3B8	/* Monitor Mode Control Register 0 */
 #define SPRN_MMCR1	0x3BC	/* Monitor Mode Control Register 1 */
+#ifdef CONFIG_BOOKE
+#define	SPRN_MMUCR	0x3b2	/* MMU Control Register */
+#endif
 #define SPRN_PBL1	0x3FC	/* Protection Bound Lower 1 */
 #define SPRN_PBL2	0x3FE	/* Protection Bound Lower 2 */
 #define SPRN_PBU1	0x3FD	/* Protection Bound Upper 1 */
@@ -277,8 +331,8 @@
 #define SPRN_PID	0x3B1	/* Process ID */
 #define SPRN_PIR	0x3FF	/* Processor Identification Register */
 #else
-#define SPRN_PID        0x030   /* Book E Process ID */
-#define SPRN_PIR        0x11E   /* Book E Processor Identification Register */
+#define SPRN_PID	0x030	/* Book E Process ID */
+#define SPRN_PIR	0x11E	/* Book E Processor Identification Register */
 #endif /* CONFIG_BOOKE */
 #define SPRN_PIT	0x3DB	/* Programmable Interval Timer */
 #define SPRN_PMC1	0x3B9	/* Performance Counter Register 1 */
@@ -287,6 +341,9 @@
 #define SPRN_PMC4	0x3BE	/* Performance Counter Register 4 */
 #define SPRN_PVR	0x11F	/* Processor Version Register */
 #define SPRN_RPA	0x3D6	/* Required Physical Address Register */
+#ifdef CONFIG_BOOKE
+#define	SPRN_RSTCFG	0x39b	/* Reset Configuration */
+#endif
 #define SPRN_SDA	0x3BF	/* Sampled Data Address Register */
 #define SPRN_SDR1	0x019	/* MMU Hash Base Register */
 #define SPRN_SGR	0x3B9	/* Storage Guarded Register */
@@ -297,10 +354,15 @@
 #define SPRN_SPRG1	0x111	/* Special Purpose Register General 1 */
 #define SPRN_SPRG2	0x112	/* Special Purpose Register General 2 */
 #define SPRN_SPRG3	0x113	/* Special Purpose Register General 3 */
+#define SPRN_SPRG4	0x114	/* Special Purpose Register General 4 */
+#define SPRN_SPRG5	0x115	/* Special Purpose Register General 5 */
+#define SPRN_SPRG6	0x116	/* Special Purpose Register General 6 */
+#define SPRN_SPRG7	0x117	/* Special Purpose Register General 7 */
 #define SPRN_SRR0	0x01A	/* Save/Restore Register 0 */
 #define SPRN_SRR1	0x01B	/* Save/Restore Register 1 */
 #define SPRN_SRR2	0x3DE	/* Save/Restore Register 2 */
-#define SPRN_SRR3 	0x3DF	/* Save/Restore Register 3 */
+#define SPRN_SRR3	0x3DF	/* Save/Restore Register 3 */
+
 #ifdef CONFIG_BOOKE
 #define SPRN_SVR	0x3FF	/* System Version Register */
 #else
@@ -317,7 +379,7 @@
 #ifndef CONFIG_BOOKE
 #define SPRN_TCR	0x3DA	/* Timer Control Register */
 #else
-#define SPRN_TCR        0x154   /* Book E Timer Control Register */
+#define SPRN_TCR	0x154	/* Book E Timer Control Register */
 #endif /* CONFIG_BOOKE */
 #define   TCR_WP(x)		(((x)&0x3)<<30)	/* WDT Period */
 #define     WP_2_17		0		/* 2^17 clocks */
@@ -348,11 +410,11 @@
 #define SPRN_THRM2	0x3FD	/* Thermal Management Register 2 */
 #define SPRN_THRM3	0x3FE	/* Thermal Management Register 3 */
 #define   THRM3_E		(1<<31)
-#define SPRN_TLBMISS    0x3D4   /* 980 7450 TLB Miss Register */
+#define SPRN_TLBMISS	0x3D4	/* 980 7450 TLB Miss Register */
 #ifndef CONFIG_BOOKE
 #define SPRN_TSR	0x3D8	/* Timer Status Register */
 #else
-#define SPRN_TSR        0x150   /* Book E Timer Status Register */
+#define SPRN_TSR	0x150	/* Book E Timer Status Register */
 #endif /* CONFIG_BOOKE */
 #define   TSR_ENW		0x80000000	/* Enable Next Watchdog */
 #define   TSR_WIS		0x40000000	/* WDT Interrupt Status */
@@ -408,46 +470,103 @@
 #define SPRN_IVOR13	0x19d	/* Interrupt Vector Offset Register 13 */
 #define SPRN_IVOR14	0x19e	/* Interrupt Vector Offset Register 14 */
 #define SPRN_IVOR15	0x19f	/* Interrupt Vector Offset Register 15 */
+#define SPRN_IVOR38	0x1b0	/* Interrupt Vector Offset Register 38 */
+#define SPRN_IVOR39	0x1b1	/* Interrupt Vector Offset Register 39 */
+#define SPRN_IVOR40	0x1b2	/* Interrupt Vector Offset Register 40 */
+#define SPRN_IVOR41	0x1b3	/* Interrupt Vector Offset Register 41 */
+#define SPRN_GIVOR2	0x1b8	/* Guest Interrupt Vector Offset Register 2 */
+#define SPRN_GIVOR3	0x1b9	/* Guest Interrupt Vector Offset Register 3 */
+#define SPRN_GIVOR4	0x1ba	/* Guest Interrupt Vector Offset Register 4 */
+#define SPRN_GIVOR8	0x1bb	/* Guest Interrupt Vector Offset Register 8 */
+#define SPRN_GIVOR13	0x1bc	/* Guest Interrupt Vector Offset Register 13 */
+#define SPRN_GIVOR14	0x1bd	/* Guest Interrupt Vector Offset Register 14 */
 
 /* e500 definitions */
-#define SPRN_L1CSR0     0x3f2   /* L1 Cache Control and Status Register 0 */
-#define   L1CSR0_DCFI           0x00000002      /* Data Cache Flash Invalidate */
-#define   L1CSR0_DCE            0x00000001      /* Data Cache Enable */
-#define SPRN_L1CSR1     0x3f3   /* L1 Cache Control and Status Register 1 */
-#define   L1CSR1_ICFI           0x00000002      /* Instruction Cache Flash Invalidate */
-#define   L1CSR1_ICE            0x00000001      /* Instruction Cache Enable */
-
+#define SPRN_L1CFG0	0x203	/* L1 Cache Configuration Register 0 */
+#define SPRN_L1CFG1	0x204	/* L1 Cache Configuration Register 1 */
+#define SPRN_L2CFG0	0x207	/* L2 Cache Configuration Register 0 */
+#define SPRN_L1CSR0	0x3f2	/* L1 Data Cache Control and Status Register 0 */
+#define   L1CSR0_CPE		0x00010000	/* Data Cache Parity Enable */
+#define   L1CSR0_DCLFR		0x00000100	/* D-Cache Lock Flash Reset */
+#define   L1CSR0_DCFI		0x00000002	/* Data Cache Flash Invalidate */
+#define   L1CSR0_DCE		0x00000001	/* Data Cache Enable */
+#define SPRN_L1CSR1	0x3f3	/* L1 Instruction Cache Control and Status Register 1 */
+#define   L1CSR1_CPE		0x00010000	/* Instruction Cache Parity Enable */
+#define   L1CSR1_ICLFR		0x00000100	/* I-Cache Lock Flash Reset */
+#define   L1CSR1_ICFI		0x00000002	/* Instruction Cache Flash Invalidate */
+#define   L1CSR1_ICE		0x00000001	/* Instruction Cache Enable */
+#define SPRN_L1CSR2	0x25e	/* L1 Data Cache Control and Status Register 2 */
+#define   L1CSR2_DCWS		0x40000000	/* Data Cache Write Shadow */
+#define SPRN_L2CSR0	0x3f9	/* L2 Data Cache Control and Status Register 0 */
+#define   L2CSR0_L2E		0x80000000	/* L2 Cache Enable */
+#define   L2CSR0_L2PE		0x40000000	/* L2 Cache Parity/ECC Enable */
+#define   L2CSR0_L2WP		0x1c000000	/* L2 I/D Way Partioning */
+#define   L2CSR0_L2CM		0x03000000	/* L2 Cache Coherency Mode */
+#define   L2CSR0_L2FI		0x00200000	/* L2 Cache Flash Invalidate */
+#define   L2CSR0_L2IO		0x00100000	/* L2 Cache Instruction Only */
+#define   L2CSR0_L2DO		0x00010000	/* L2 Cache Data Only */
+#define   L2CSR0_L2REP		0x00003000	/* L2 Line Replacement Algo */
+#define   L2CSR0_L2FL		0x00000800	/* L2 Cache Flush */
+#define   L2CSR0_L2LFC		0x00000400	/* L2 Cache Lock Flash Clear */
+#define   L2CSR0_L2LOA		0x00000080	/* L2 Cache Lock Overflow Allocate */
+#define   L2CSR0_L2LO		0x00000020	/* L2 Cache Lock Overflow */
+#define SPRN_L2CSR1	0x3fa	/* L2 Data Cache Control and Status Register 1 */
+
+#define SPRN_TLB0CFG	0x2B0	/* TLB 0 Config Register */
+#define SPRN_TLB1CFG	0x2B1	/* TLB 1 Config Register */
 #define SPRN_MMUCSR0	0x3f4	/* MMU control and status register 0 */
-#define SPRN_MAS0       0x270   /* MMU Assist Register 0 */
-#define SPRN_MAS1       0x271   /* MMU Assist Register 1 */
-#define SPRN_MAS2       0x272   /* MMU Assist Register 2 */
-#define SPRN_MAS3       0x273   /* MMU Assist Register 3 */
-#define SPRN_MAS4       0x274   /* MMU Assist Register 4 */
-#define SPRN_MAS5       0x275   /* MMU Assist Register 5 */
-#define SPRN_MAS6       0x276   /* MMU Assist Register 6 */
+#define SPRN_MAS0	0x270	/* MMU Assist Register 0 */
+#define SPRN_MAS1	0x271	/* MMU Assist Register 1 */
+#define SPRN_MAS2	0x272	/* MMU Assist Register 2 */
+#define SPRN_MAS3	0x273	/* MMU Assist Register 3 */
+#define SPRN_MAS4	0x274	/* MMU Assist Register 4 */
+#define SPRN_MAS5	0x275	/* MMU Assist Register 5 */
+#define SPRN_MAS6	0x276	/* MMU Assist Register 6 */
 #define SPRN_MAS7	0x3B0	/* MMU Assist Register 7 */
-
-#define SPRN_IVOR32     0x210   /* Interrupt Vector Offset Register 32 */
-#define SPRN_IVOR33     0x211   /* Interrupt Vector Offset Register 33 */
-#define SPRN_IVOR34     0x212   /* Interrupt Vector Offset Register 34 */
-#define SPRN_IVOR35     0x213   /* Interrupt Vector Offset Register 35 */
-#define SPRN_SPEFSCR    0x200   /* SPE & Embedded FP Status & Control */
-
-#define SPRN_MCSRR0     0x23a   /* Machine Check Save and Restore Register 0 */
-#define SPRN_MCSRR1     0x23b   /* Machine Check Save and Restore Register 1 */
+#define SPRN_MAS8 	0x155	/* MMU Assist Register 8 */
+
+#define SPRN_IVOR32	0x210	/* Interrupt Vector Offset Register 32 */
+#define SPRN_IVOR33	0x211	/* Interrupt Vector Offset Register 33 */
+#define SPRN_IVOR34	0x212	/* Interrupt Vector Offset Register 34 */
+#define SPRN_IVOR35	0x213	/* Interrupt Vector Offset Register 35 */
+#define SPRN_IVOR36	0x214	/* Interrupt Vector Offset Register 36 */
+#define SPRN_IVOR37	0x215	/* Interrupt Vector Offset Register 37 */
+#define SPRN_SPEFSCR	0x200	/* SPE & Embedded FP Status & Control */
+
+#define SPRN_MCSRR0	0x23a	/* Machine Check Save and Restore Register 0 */
+#define SPRN_MCSRR1	0x23b	/* Machine Check Save and Restore Register 1 */
 #define SPRN_BUCSR	0x3f5	/* Branch Control and Status Register */
-#define SPRN_BBEAR      0x201   /* Branch Buffer Entry Address Register */
-#define SPRN_BBTAR      0x202   /* Branch Buffer Target Address Register */
-#define SPRN_PID1       0x279   /* Process ID Register 1 */
-#define SPRN_PID2       0x27a   /* Process ID Register 2 */
+#define	  BUCSR_STAC_EN	0x01000000	/* Segment target addr cache enable */
+#define	  BUCSR_LS_EN	0x00400000	/* Link stack enable */
+#define	  BUCSR_BBFI	0x00000200	/* Branch buffer flash invalidate */
+#define	  BUCSR_BPEN	0x00000001	/* Branch prediction enable */
+#define   BUCSR_ENABLE (BUCSR_STAC_EN|BUCSR_LS_EN|BUCSR_BBFI|BUCSR_BPEN)
+#define SPRN_BBEAR	0x201	/* Branch Buffer Entry Address Register */
+#define SPRN_BBTAR	0x202	/* Branch Buffer Target Address Register */
+#define SPRN_PID1	0x279	/* Process ID Register 1 */
+#define SPRN_PID2	0x27a	/* Process ID Register 2 */
 #define SPRN_MCSR	0x23c	/* Machine Check Syndrome register */
-#define ESR_ST          0x00800000      /* Store Operation */
+#define SPRN_MCAR	0x23d	/* Machine Check Address register */
+#define MCSR_MCS	0x80000000	/* Machine Check Summary */
+#define MCSR_IB 	0x40000000	/* Instruction PLB Error */
+#if defined(CONFIG_440)
+#define MCSR_DRB	0x20000000	/* Data Read PLB Error */
+#define MCSR_DWB	0x10000000	/* Data Write PLB Error */
+#else
+#define MCSR_DB		0x20000000	/* Data PLB Error */
+#endif /* defined(CONFIG_440) */
+#define MCSR_TLBP	0x08000000	/* TLB Parity Error */
+#define MCSR_ICP	0x04000000	/* I-Cache Parity Error */
+#define MCSR_DCSP	0x02000000	/* D-Cache Search Parity Error */
+#define MCSR_DCFP	0x01000000	/* D-Cache Flush Parity Error */
+#define MCSR_IMPE	0x00800000	/* Imprecise Machine Check Exception */
+#define ESR_ST		0x00800000	/* Store Operation */
 
 #if defined(CONFIG_MPC86xx)
-#define SPRN_MSSCRO	0x3f6
+#define SPRN_MSSCR0	0x3f6
+#define SPRN_MSSSR0	0x3f7
 #endif
 
-
 /* Short-hand versions for a number of the above SPRNs */
 
 #define CTR	SPRN_CTR	/* Counter Register */
@@ -463,28 +582,28 @@
 #define DBAT2U	SPRN_DBAT2U	/* Data BAT 2 Upper Register */
 #define DBAT3L	SPRN_DBAT3L	/* Data BAT 3 Lower Register */
 #define DBAT3U	SPRN_DBAT3U	/* Data BAT 3 Upper Register */
-#define DBAT4L	SPRN_DBAT4L     /* Data BAT 4 Lower Register */
-#define DBAT4U	SPRN_DBAT4U     /* Data BAT 4 Upper Register */
-#define DBAT5L	SPRN_DBAT5L     /* Data BAT 5 Lower Register */
-#define DBAT5U	SPRN_DBAT5U     /* Data BAT 5 Upper Register */
-#define DBAT6L	SPRN_DBAT6L     /* Data BAT 6 Lower Register */
-#define DBAT6U	SPRN_DBAT6U     /* Data BAT 6 Upper Register */
-#define DBAT7L	SPRN_DBAT7L     /* Data BAT 7 Lower Register */
-#define DBAT7U	SPRN_DBAT7U     /* Data BAT 7 Upper Register */
+#define DBAT4L	SPRN_DBAT4L	/* Data BAT 4 Lower Register */
+#define DBAT4U	SPRN_DBAT4U	/* Data BAT 4 Upper Register */
+#define DBAT5L	SPRN_DBAT5L	/* Data BAT 5 Lower Register */
+#define DBAT5U	SPRN_DBAT5U	/* Data BAT 5 Upper Register */
+#define DBAT6L	SPRN_DBAT6L	/* Data BAT 6 Lower Register */
+#define DBAT6U	SPRN_DBAT6U	/* Data BAT 6 Upper Register */
+#define DBAT7L	SPRN_DBAT7L	/* Data BAT 7 Lower Register */
+#define DBAT7U	SPRN_DBAT7U	/* Data BAT 7 Upper Register */
 #define DBCR0	SPRN_DBCR0	/* Debug Control Register 0 */
 #define DBCR1	SPRN_DBCR1	/* Debug Control Register 1 */
 #define DBSR	SPRN_DBSR	/* Debug Status Register */
-#define DCMP	SPRN_DCMP      	/* Data TLB Compare Register */
-#define DEC	SPRN_DEC       	/* Decrement Register */
-#define DMISS	SPRN_DMISS     	/* Data TLB Miss Register */
+#define DCMP	SPRN_DCMP	/* Data TLB Compare Register */
+#define DEC	SPRN_DEC	/* Decrement Register */
+#define DMISS	SPRN_DMISS	/* Data TLB Miss Register */
 #define DSISR	SPRN_DSISR	/* Data Storage Interrupt Status Register */
-#define EAR	SPRN_EAR       	/* External Address Register */
+#define EAR	SPRN_EAR	/* External Address Register */
 #define ESR	SPRN_ESR	/* Exception Syndrome Register */
 #define HASH1	SPRN_HASH1	/* Primary Hash Address Register */
 #define HASH2	SPRN_HASH2	/* Secondary Hash Address Register */
 #define HID0	SPRN_HID0	/* Hardware Implementation Register 0 */
 #define HID1	SPRN_HID1	/* Hardware Implementation Register 1 */
-#define IABR	SPRN_IABR      	/* Instruction Address Breakpoint Register */
+#define IABR	SPRN_IABR	/* Instruction Address Breakpoint Register */
 #define IAC1	SPRN_IAC1	/* Instruction Address Register 1 */
 #define IAC2	SPRN_IAC2	/* Instruction Address Register 2 */
 #define IBAT0L	SPRN_IBAT0L	/* Instruction BAT 0 Lower Register */
@@ -501,17 +620,17 @@
 #define IBAT5U	SPRN_IBAT5U	/* Instruction BAT 5 Upper Register */
 #define IBAT6L	SPRN_IBAT6L	/* Instruction BAT 6 Lower Register */
 #define IBAT6U	SPRN_IBAT6U	/* Instruction BAT 6 Upper Register */
-#define IBAT7L 	SPRN_IBAT7L	/* Instruction BAT 7 Lower Register */
+#define IBAT7L	SPRN_IBAT7L	/* Instruction BAT 7 Lower Register */
 #define IBAT7U	SPRN_IBAT7U	/* Instruction BAT 7 Lower Register */
 #define ICMP	SPRN_ICMP	/* Instruction TLB Compare Register */
 #define IMISS	SPRN_IMISS	/* Instruction TLB Miss Register */
-#define IMMR	SPRN_IMMR      	/* PPC 860/821 Internal Memory Map Register */
-#define LDSTCR	SPRN_LDSTCR     /* Load/Store Control Register */
-#define L2CR	SPRN_L2CR    	/* PPC 750 L2 control register */
+#define IMMR	SPRN_IMMR	/* PPC 860/821 Internal Memory Map Register */
+#define LDSTCR	SPRN_LDSTCR	/* Load/Store Control Register */
+#define L2CR	SPRN_L2CR	/* PPC 750 L2 control register */
 #define LR	SPRN_LR
-#define MBAR    SPRN_MBAR       /* System memory base address */
+#define MBAR	SPRN_MBAR	/* System memory base address */
 #if defined(CONFIG_MPC86xx)
-#define MSSCR0	SPRN_MSSCRO
+#define MSSCR0	SPRN_MSSCR0
 #endif
 #if defined(CONFIG_E500) || defined(CONFIG_MPC86xx)
 #define PIR	SPRN_PIR
@@ -519,17 +638,23 @@
 #define SVR	SPRN_SVR	/* System-On-Chip Version Register */
 #define PVR	SPRN_PVR	/* Processor Version */
 #define RPA	SPRN_RPA	/* Required Physical Address Register */
-#define SDR1	SPRN_SDR1      	/* MMU hash base register */
+#define SDR1	SPRN_SDR1	/* MMU hash base register */
 #define SPR0	SPRN_SPRG0	/* Supervisor Private Registers */
 #define SPR1	SPRN_SPRG1
 #define SPR2	SPRN_SPRG2
 #define SPR3	SPRN_SPRG3
-#define SPRG0   SPRN_SPRG0
-#define SPRG1   SPRN_SPRG1
-#define SPRG2   SPRN_SPRG2
-#define SPRG3   SPRN_SPRG3
+#define SPRG0	SPRN_SPRG0
+#define SPRG1	SPRN_SPRG1
+#define SPRG2	SPRN_SPRG2
+#define SPRG3	SPRN_SPRG3
+#define SPRG4	SPRN_SPRG4
+#define SPRG5	SPRN_SPRG5
+#define SPRG6	SPRN_SPRG6
+#define SPRG7	SPRN_SPRG7
 #define SRR0	SPRN_SRR0	/* Save and Restore Register 0 */
 #define SRR1	SPRN_SRR1	/* Save and Restore Register 1 */
+#define SRR2	SPRN_SRR2	/* Save and Restore Register 2 */
+#define SRR3	SPRN_SRR3	/* Save and Restore Register 3 */
 #define SVR	SPRN_SVR	/* System Version Register */
 #define TBRL	SPRN_TBRL	/* Time Base Read Lower Register */
 #define TBRU	SPRN_TBRU	/* Time Base Read Upper Register */
@@ -584,8 +709,14 @@
 #define IVOR35	SPRN_IVOR35
 #define MCSRR0	SPRN_MCSRR0
 #define MCSRR1	SPRN_MCSRR1
-#define L1CSR0 	SPRN_L1CSR0
+#define L1CSR0	SPRN_L1CSR0
 #define L1CSR1	SPRN_L1CSR1
+#define L1CSR2	SPRN_L1CSR2
+#define L1CFG0	SPRN_L1CFG0
+#define L1CFG1	SPRN_L1CFG1
+#define L2CFG0	SPRN_L2CFG0
+#define L2CSR0	SPRN_L2CSR0
+#define L2CSR1	SPRN_L2CSR1
 #define MCSR	SPRN_MCSR
 #define MMUCSR0	SPRN_MMUCSR0
 #define BUCSR	SPRN_BUCSR
@@ -593,19 +724,26 @@
 #define PID1	SPRN_PID1
 #define PID2	SPRN_PID2
 #define MAS0	SPRN_MAS0
-#define MAS1 	SPRN_MAS1
+#define MAS1	SPRN_MAS1
 #define MAS2	SPRN_MAS2
 #define MAS3	SPRN_MAS3
 #define MAS4	SPRN_MAS4
 #define MAS5	SPRN_MAS5
 #define MAS6	SPRN_MAS6
 #define MAS7	SPRN_MAS7
+#define MAS8 	SPRN_MAS8
+
+#if defined(CONFIG_4xx) || defined(CONFIG_44x) || defined(CONFIG_MPC85xx)
+#define DAR_DEAR DEAR
+#else
+#define DAR_DEAR DAR
+#endif
 
 /* Device Control Registers */
 
 #define DCRN_BEAR	0x090	/* Bus Error Address Register */
 #define DCRN_BESR	0x091	/* Bus Error Syndrome Register */
-#define   BESR_DSES    	0x80000000	/* Data-Side Error Status */
+#define   BESR_DSES	0x80000000	/* Data-Side Error Status */
 #define   BESR_DMES	0x40000000	/* DMA Error Status */
 #define   BESR_RWS	0x20000000	/* Read/Write Status */
 #define   BESR_ETMASK	0x1C000000	/* Error Type */
@@ -617,25 +755,25 @@
 #define DCRN_DMACC0	0x0C4	/* DMA Chained Count Register 0 */
 #define DCRN_DMACC1	0x0CC	/* DMA Chained Count Register 1 */
 #define DCRN_DMACC2	0x0D4	/* DMA Chained Count Register 2 */
-#define DCRN_DMACC3	0x0DC    /* DMA Chained Count Register 3 */
-#define DCRN_DMACR0	0x0C0    /* DMA Channel Control Register 0 */
-#define DCRN_DMACR1	0x0C8    /* DMA Channel Control Register 1 */
-#define DCRN_DMACR2	0x0D0    /* DMA Channel Control Register 2 */
-#define DCRN_DMACR3	0x0D8    /* DMA Channel Control Register 3 */
-#define DCRN_DMACT0	0x0C1    /* DMA Count Register 0 */
-#define DCRN_DMACT1	0x0C9    /* DMA Count Register 1 */
-#define DCRN_DMACT2	0x0D1    /* DMA Count Register 2 */
-#define DCRN_DMACT3	0x0D9    /* DMA Count Register 3 */
-#define DCRN_DMADA0	0x0C2    /* DMA Destination Address Register 0 */
-#define DCRN_DMADA1	0x0CA    /* DMA Destination Address Register 1 */
-#define DCRN_DMADA2	0x0D2    /* DMA Destination Address Register 2 */
-#define DCRN_DMADA3	0x0DA    /* DMA Destination Address Register 3 */
-#define DCRN_DMASA0	0x0C3    /* DMA Source Address Register 0 */
-#define DCRN_DMASA1	0x0CB    /* DMA Source Address Register 1 */
-#define DCRN_DMASA2	0x0D3    /* DMA Source Address Register 2 */
-#define DCRN_DMASA3	0x0DB    /* DMA Source Address Register 3 */
-#define DCRN_DMASR	0x0E0    /* DMA Status Register */
-#define DCRN_EXIER	0x042    /* External Interrupt Enable Register */
+#define DCRN_DMACC3	0x0DC	 /* DMA Chained Count Register 3 */
+#define DCRN_DMACR0	0x0C0	 /* DMA Channel Control Register 0 */
+#define DCRN_DMACR1	0x0C8	 /* DMA Channel Control Register 1 */
+#define DCRN_DMACR2	0x0D0	 /* DMA Channel Control Register 2 */
+#define DCRN_DMACR3	0x0D8	 /* DMA Channel Control Register 3 */
+#define DCRN_DMACT0	0x0C1	 /* DMA Count Register 0 */
+#define DCRN_DMACT1	0x0C9	 /* DMA Count Register 1 */
+#define DCRN_DMACT2	0x0D1	 /* DMA Count Register 2 */
+#define DCRN_DMACT3	0x0D9	 /* DMA Count Register 3 */
+#define DCRN_DMADA0	0x0C2	 /* DMA Destination Address Register 0 */
+#define DCRN_DMADA1	0x0CA	 /* DMA Destination Address Register 1 */
+#define DCRN_DMADA2	0x0D2	 /* DMA Destination Address Register 2 */
+#define DCRN_DMADA3	0x0DA	 /* DMA Destination Address Register 3 */
+#define DCRN_DMASA0	0x0C3	 /* DMA Source Address Register 0 */
+#define DCRN_DMASA1	0x0CB	 /* DMA Source Address Register 1 */
+#define DCRN_DMASA2	0x0D3	 /* DMA Source Address Register 2 */
+#define DCRN_DMASA3	0x0DB	 /* DMA Source Address Register 3 */
+#define DCRN_DMASR	0x0E0	 /* DMA Status Register */
+#define DCRN_EXIER	0x042	 /* External Interrupt Enable Register */
 #define   EXIER_CIE	0x80000000	/* Critical Interrupt Enable */
 #define   EXIER_SRIE	0x08000000	/* Serial Port Rx Int. Enable */
 #define   EXIER_STIE	0x04000000	/* Serial Port Tx Int. Enable */
@@ -650,8 +788,8 @@
 #define   EXIER_E2IE	0x00000004	/* External Interrupt 2 Enable */
 #define   EXIER_E3IE	0x00000002	/* External Interrupt 3 Enable */
 #define   EXIER_E4IE	0x00000001	/* External Interrupt 4 Enable */
-#define DCRN_EXISR	0x040    /* External Interrupt Status Register */
-#define DCRN_IOCR	0x0A0    /* Input/Output Configuration Register */
+#define DCRN_EXISR	0x040	 /* External Interrupt Status Register */
+#define DCRN_IOCR	0x0A0	 /* Input/Output Configuration Register */
 #define   IOCR_E0TE	0x80000000
 #define   IOCR_E0LP	0x40000000
 #define   IOCR_E1TE	0x20000000
@@ -662,8 +800,8 @@
 #define   IOCR_E3LP	0x01000000
 #define   IOCR_E4TE	0x00800000
 #define   IOCR_E4LP	0x00400000
-#define   IOCR_EDT     	0x00080000
-#define   IOCR_SOR     	0x00040000
+#define   IOCR_EDT	0x00080000
+#define   IOCR_SOR	0x00040000
 #define   IOCR_EDO	0x00008000
 #define   IOCR_2XC	0x00004000
 #define   IOCR_ATC	0x00002000
@@ -684,16 +822,16 @@
 #define SVR_VER(svr)	(((svr) >> 16) & 0xFFFF) /* Version field */
 #define SVR_REV(svr)	(((svr) >>  0) & 0xFFFF) /* Revision field */
 
-#define SVR_CID(svr)	(((svr) >> 28) & 0x0F)   /* Company or manufacturer ID */
-#define SVR_SOCOP(svr)	(((svr) >> 22) & 0x3F)   /* SOC integration options */
-#define SVR_SID(svr)	(((svr) >> 16) & 0x3F)   /* SOC ID */
-#define SVR_PROC(svr)	(((svr) >> 12) & 0x0F)   /* Process revision field */
-#define SVR_MFG(svr)	(((svr) >>  8) & 0x0F)   /* Manufacturing revision */
-#define SVR_MJREV(svr)	(((svr) >>  4) & 0x0F)   /* Major SOC design revision indicator */
-#define SVR_MNREV(svr)	(((svr) >>  0) & 0x0F)   /* Minor SOC design revision indicator */
+#define SVR_CID(svr)	(((svr) >> 28) & 0x0F)	 /* Company or manufacturer ID */
+#define SVR_SOCOP(svr)	(((svr) >> 22) & 0x3F)	 /* SOC integration options */
+#define SVR_SID(svr)	(((svr) >> 16) & 0x3F)	 /* SOC ID */
+#define SVR_PROC(svr)	(((svr) >> 12) & 0x0F)	 /* Process revision field */
+#define SVR_MFG(svr)	(((svr) >>  8) & 0x0F)	 /* Manufacturing revision */
+#define SVR_MJREV(svr)	(((svr) >>  4) & 0x0F)	 /* Major SOC design revision indicator */
+#define SVR_MNREV(svr)	(((svr) >>  0) & 0x0F)	 /* Minor SOC design revision indicator */
 
 /* System-On-Chip Version Numbers (version field only) */
-#define SVR_MPC5200	0x8011
+#define SVR_MPC5200    0x8011
 
 /* Processor Version Register */
 
@@ -714,6 +852,13 @@
 #define PVR_MAJ(pvr)	(((pvr) >>  4) & 0xF)	/* Major revision field */
 #define PVR_MIN(pvr)	(((pvr) >>  0) & 0xF)	/* Minor revision field */
 
+/* e600 core PVR fields */
+
+#define PVR_E600_VER(pvr)	(((pvr) >> 15) & 0xFFFF) /* Version/type */
+#define PVR_E600_TECH(pvr)	(((pvr) >> 12) & 0xF)	 /* Technology */
+#define PVR_E600_MAJ(pvr)	(((pvr) >> 8) & 0xF)	 /* Major revision */
+#define PVR_E600_MIN(pvr)	(((pvr) >> 0) & 0xFF)	 /* Minor revision */
+
 /* Processor Version Numbers */
 
 #define PVR_403GA	0x00200000
@@ -730,6 +875,17 @@
 #define PVR_405CR_RC	0x40110145  /* same as pc405gp rev e */
 #define PVR_405EP_RA	0x51210950
 #define PVR_405GPR_RB	0x50910951
+#define PVR_405EZ_RA	0x41511460
+#define PVR_405EXR2_RA	0x12911471 /* 405EXr rev A/B without Security */
+#define PVR_405EX1_RA	0x12911477 /* 405EX rev A/B with Security */
+#define PVR_405EXR1_RC	0x1291147B /* 405EXr rev C with Security */
+#define PVR_405EXR2_RC	0x12911479 /* 405EXr rev C without Security */
+#define PVR_405EX1_RC	0x1291147F /* 405EX rev C with Security */
+#define PVR_405EX2_RC	0x1291147D /* 405EX rev C without Security */
+#define PVR_405EXR1_RD	0x12911472 /* 405EXr rev D with Security */
+#define PVR_405EXR2_RD	0x12911470 /* 405EXr rev D without Security */
+#define PVR_405EX1_RD	0x12911475 /* 405EX rev D with Security */
+#define PVR_405EX2_RD	0x12911473 /* 405EX rev D without Security */
 #define PVR_440GP_RB	0x40120440
 #define PVR_440GP_RC	0x40120481
 #define PVR_440EP_RA	0x42221850
@@ -737,20 +893,34 @@
 #define PVR_440EP_RC	0x422218D4 /* 440EP rev C and 440GR rev B have same PVR */
 #define PVR_440GR_RA	0x422218D3 /* 440EP rev B and 440GR rev A have same PVR */
 #define PVR_440GR_RB	0x422218D4 /* 440EP rev C and 440GR rev B have same PVR */
-#define PVR_440EPX1_RA  0x216218D0 /* 440EPX rev A with Security / Kasumi */
-#define PVR_440EPX2_RA  0x216218D4 /* 440EPX rev A without Security / Kasumi */
-#define PVR_440GRX1_RA  0x216218D8 /* 440GRX rev A with Security / Kasumi */
-#define PVR_440GRX2_RA  0x216218DC /* 440GRX rev A without Security / Kasumi */
+#define PVR_440EPX1_RA	0x216218D0 /* 440EPX rev A with Security / Kasumi */
+#define PVR_440EPX2_RA	0x216218D4 /* 440EPX rev A without Security / Kasumi */
+#define PVR_440GRX1_RA	0x216218D0 /* 440GRX rev A with Security / Kasumi */
+#define PVR_440GRX2_RA	0x216218D4 /* 440GRX rev A without Security / Kasumi */
 #define PVR_440GX_RA	0x51B21850
 #define PVR_440GX_RB	0x51B21851
 #define PVR_440GX_RC	0x51B21892
 #define PVR_440GX_RF	0x51B21894
 #define PVR_405EP_RB	0x51210950
-#define PVR_440SP_RA	0x53221850
-#define PVR_440SP_RB	0x53221891
-#define PVR_440SP_RC	0x53221892
-#define PVR_440SPe_RA	0x53421890
-#define PVR_440SPe_RB	0x53421891
+#define PVR_440SP_6_RAB 0x53221850 /* 440SP rev A&B with RAID 6 support enabled	*/
+#define PVR_440SP_RAB	0x53321850 /* 440SP rev A&B without RAID 6 support	*/
+#define PVR_440SP_6_RC	0x53221891 /* 440SP rev C with RAID 6 support enabled	*/
+#define PVR_440SP_RC	0x53321891 /* 440SP rev C without RAID 6 support	*/
+#define PVR_440SPe_6_RA 0x53421890 /* 440SPe rev A with RAID 6 support enabled	*/
+#define PVR_440SPe_RA	0x53521890 /* 440SPe rev A without RAID 6 support	*/
+#define PVR_440SPe_6_RB 0x53421891 /* 440SPe rev B with RAID 6 support enabled	*/
+#define PVR_440SPe_RB	0x53521891 /* 440SPe rev B without RAID 6 support	*/
+#define PVR_460EX_SE_RA	0x130218A2 /* 460EX rev A with Security Engine	  */
+#define PVR_460EX_RA	0x130218A3 /* 460EX rev A without Security Engine */
+#define PVR_460EX_RB	0x130218A4 /* 460EX rev B with and without Sec Eng*/
+#define PVR_460GT_SE_RA	0x130218A0 /* 460GT rev A with Security Engine	  */
+#define PVR_460GT_RA	0x130218A1 /* 460GT rev A without Security Engine */
+#define PVR_460GT_RB	0x130218A5 /* 460GT rev B with and without Sec Eng*/
+#define PVR_460SX_RA    0x13541800 /* 460SX rev A                   */
+#define PVR_460SX_RA_V1 0x13541801 /* 460SX rev A Variant 1 Security disabled */
+#define PVR_460GX_RA    0x13541802 /* 460GX rev A                   */
+#define PVR_460GX_RA_V1 0x13541803 /* 460GX rev A Variant 1 Security disabled */
+#define PVR_APM821XX_RA 0x12C41C80 /* APM821XX rev A */
 #define PVR_601		0x00010000
 #define PVR_602		0x00050000
 #define PVR_603		0x00030000
@@ -762,19 +932,20 @@
 #define PVR_604r	0x000A0000
 #define PVR_620		0x00140000
 #define PVR_740		0x00080000
-#define PVR_750		PVR_740
+#define PVR_750 	PVR_740
 #define PVR_740P	0x10080000
 #define PVR_750P	PVR_740P
-#define PVR_7400        0x000C0000
-#define PVR_7410        0x800C0000
-#define PVR_7450        0x80000000
+#define PVR_7400	0x000C0000
+#define PVR_7410	0x800C0000
+#define PVR_7450	0x80000000
 
 #define PVR_85xx	0x80200000
 #define PVR_85xx_REV1	(PVR_85xx | 0x0010)
 #define PVR_85xx_REV2	(PVR_85xx | 0x0020)
 
 #define PVR_86xx	0x80040000
-#define PVR_86xx_REV1	(PVR_86xx | 0x0010)
+
+#define PVR_VIRTEX5     0x7ff21912
 
 /*
  * For the 8xx processors, all of them report the same PVR family for
@@ -786,20 +957,25 @@
 #define PVR_823		PVR_821
 #define PVR_850		PVR_821
 #define PVR_860		PVR_821
-#define PVR_7400       	0x000C0000
+#define PVR_7400	0x000C0000
 #define PVR_8240	0x00810100
 
 /*
  * PowerQUICC II family processors report different PVR values depending
  * on silicon process (HiP3, HiP4, HiP7, etc.)
  */
-#define PVR_8260        PVR_8240
-#define PVR_8260_HIP3   0x00810101
-#define PVR_8260_HIP4   0x80811014
-#define PVR_8260_HIP7   0x80822011
+#define PVR_8260	PVR_8240
+#define PVR_8260_HIP3	0x00810101
+#define PVR_8260_HIP4	0x80811014
+#define PVR_8260_HIP7	0x80822011
 #define PVR_8260_HIP7R1 0x80822013
 #define PVR_8260_HIP7RA	0x80822014
 
+/*
+ * MPC 52xx
+ */
+#define PVR_5200	0x80822011
+#define PVR_5200B	0x80822014
 
 /*
  * System Version Register
@@ -818,69 +994,92 @@
 #define SVR_MAJ(svr)	(((svr) >>  4) & 0xF)	/* Major revision field*/
 #define SVR_MIN(svr)	(((svr) >>  0) & 0xF)	/* Minor revision field*/
 
+/* Some parts define SVR[0:23] as the SOC version */
+#define SVR_SOC_VER(svr) (((svr) >> 8) & 0xFFFFFF)	/* SOC Version fields */
 
-/*
- * SVR_VER() Version Values
- */
+/* whether MPC8xxxE (i.e. has SEC) */
+#if defined(CONFIG_MPC85xx)
+#define IS_E_PROCESSOR(svr)	(svr & 0x80000)
+#else
+#if defined(CONFIG_MPC83xx)
+#define IS_E_PROCESSOR(spridr)	(!(spridr & 0x00010000))
+#endif
+#endif
 
-#define SVR_8540	0x8030
-#define SVR_8560	0x8070
-#define SVR_8555	0x8079
-#define SVR_8541	0x807A
-#define SVR_8548	0x8031
-#define SVR_8548_E	0x8039
-#define SVR_8641	0x8090
-
-
-/* I am just adding a single entry for 8260 boards.  I think we may be
- * able to combine mbx, fads, rpxlite, bseip, and classic into a single
- * generic 8xx as well.  The boards containing these processors are either
- * identical at the processor level (due to the high integration) or so
- * wildly different that testing _machine at run time is best replaced by
- * conditional compilation by board type (found in their respective .h file).
- *	-- Dan
- */
-#define _MACH_prep	0x00000001
-#define _MACH_Pmac	0x00000002	/* pmac or pmac clone (non-chrp) */
-#define _MACH_chrp	0x00000004	/* chrp machine */
-#define _MACH_mbx	0x00000008	/* Motorola MBX board */
-#define _MACH_apus	0x00000010	/* amiga with phase5 powerup */
-#define _MACH_fads	0x00000020	/* Motorola FADS board */
-#define _MACH_rpxlite	0x00000040	/* RPCG RPX-Lite 8xx board */
-#define _MACH_bseip	0x00000080	/* Bright Star Engineering ip-Engine */
-#define _MACH_yk	0x00000100	/* Motorola Yellowknife */
-#define _MACH_gemini	0x00000200	/* Synergy Microsystems gemini board */
-#define _MACH_classic	0x00000400	/* RPCG RPX-Classic 8xx board */
-#define _MACH_oak	0x00000800	/* IBM "Oak" 403 eval. board */
-#define _MACH_walnut	0x00001000	/* AMCC "Walnut" 405GP eval. board */
-#define _MACH_8260	0x00002000	/* Generic 8260 */
-#define _MACH_sandpoint 0x00004000	/* Motorola SPS Processor eval board */
-#define _MACH_tqm860	0x00008000	/* TQM860/L */
-#define _MACH_tqm8xxL	0x00010000	/* TQM8xxL */
-#define _MACH_hidden_dragon 0x00020000	/* Motorola Hidden Dragon eval board */
-
-
-/* see residual.h for these */
-#define _PREP_Motorola 0x01  /* motorola prep */
-#define _PREP_Firm     0x02  /* firmworks prep */
-#define _PREP_IBM      0x00  /* ibm prep */
-#define _PREP_Bull     0x03  /* bull prep */
-#define _PREP_Radstone 0x04  /* Radstone Technology PLC prep */
+#define IS_SVR_REV(svr, maj, min) \
+	((SVR_MAJ(svr) == maj) && (SVR_MIN(svr) == min))
 
 /*
- * Radstone board types
+ * SVR_SOC_VER() Version Values
  */
-#define RS_SYS_TYPE_PPC1   0
-#define RS_SYS_TYPE_PPC2   1
-#define RS_SYS_TYPE_PPC1a  2
-#define RS_SYS_TYPE_PPC2a  3
-#define RS_SYS_TYPE_PPC4   4
-#define RS_SYS_TYPE_PPC4a  5
-#define RS_SYS_TYPE_PPC2ep 6
-
-/* these are arbitrary */
-#define _CHRP_Motorola 0x04  /* motorola chrp, the cobra */
-#define _CHRP_IBM      0x05  /* IBM chrp, the longtrail and longtrail 2 */
+
+#define SVR_8533	0x803400
+#define SVR_8533_E	0x803C00
+#define SVR_8535	0x803701
+#define SVR_8535_E	0x803F01
+#define SVR_8536	0x803700
+#define SVR_8536_E	0x803F00
+#define SVR_8540	0x803000
+#define SVR_8541	0x807200
+#define SVR_8541_E	0x807A00
+#define SVR_8543	0x803200
+#define SVR_8543_E	0x803A00
+#define SVR_8544	0x803401
+#define SVR_8544_E	0x803C01
+#define SVR_8545	0x803102
+#define SVR_8545_E	0x803902
+#define SVR_8547_E	0x803901
+#define SVR_8548	0x803100
+#define SVR_8548_E	0x803900
+#define SVR_8555	0x807100
+#define SVR_8555_E	0x807900
+#define SVR_8560	0x807000
+#define SVR_8567	0x807501
+#define SVR_8567_E	0x807D01
+#define SVR_8568	0x807500
+#define SVR_8568_E	0x807D00
+#define SVR_8569	0x808000
+#define SVR_8569_E	0x808800
+#define SVR_8572	0x80E000
+#define SVR_8572_E	0x80E800
+#define SVR_P1010	0x80F100
+#define SVR_P1010_E	0x80F900
+#define SVR_P1011	0x80E500
+#define SVR_P1011_E	0x80ED00
+#define SVR_P1012	0x80E501
+#define SVR_P1012_E	0x80ED01
+#define SVR_P1013	0x80E700
+#define SVR_P1013_E	0x80EF00
+#define SVR_P1014	0x80F101
+#define SVR_P1014_E	0x80F901
+#define SVR_P1020	0x80E400
+#define SVR_P1020_E	0x80EC00
+#define SVR_P1021	0x80E401
+#define SVR_P1021_E	0x80EC01
+#define SVR_P1022	0x80E600
+#define SVR_P1022_E	0x80EE00
+#define SVR_P2010	0x80E300
+#define SVR_P2010_E	0x80EB00
+#define SVR_P2020	0x80E200
+#define SVR_P2020_E	0x80EA00
+#define SVR_P2040	0x821000
+#define SVR_P2040_E	0x821800
+#define SVR_P3041	0x821103
+#define SVR_P3041_E	0x821903
+#define SVR_P4040	0x820100
+#define SVR_P4040_E	0x820900
+#define SVR_P4080	0x820000
+#define SVR_P4080_E	0x820800
+#define SVR_P5010	0x822100
+#define SVR_P5010_E	0x822900
+#define SVR_P5020	0x822000
+#define SVR_P5020_E	0x822800
+
+#define SVR_8610	0x80A000
+#define SVR_8641	0x809000
+#define SVR_8641D	0x809001
+
+#define SVR_Unknown	0xFFFFFF
 
 #define _GLOBAL(n)\
 	.globl n;\
@@ -888,19 +1087,22 @@ n:
 
 /* Macros for setting and retrieving special purpose registers */
 
+#define stringify(s)	tostring(s)
+#define tostring(s)	#s
+
 #define mfdcr(rn)	({unsigned int rval; \
-			asm volatile("mfdcr %0," __stringify(rn) \
+			asm volatile("mfdcr %0," stringify(rn) \
 				     : "=r" (rval)); rval;})
-#define mtdcr(rn, v)	asm volatile("mtdcr " __stringify(rn) ",%0" : : "r" (v))
+#define mtdcr(rn, v)	asm volatile("mtdcr " stringify(rn) ",%0" : : "r" (v))
 
 #define mfmsr()		({unsigned int rval; \
 			asm volatile("mfmsr %0" : "=r" (rval)); rval;})
 #define mtmsr(v)	asm volatile("mtmsr %0" : : "r" (v))
 
 #define mfspr(rn)	({unsigned int rval; \
-			asm volatile("mfspr %0," __stringify(rn) \
+			asm volatile("mfspr %0," stringify(rn) \
 				     : "=r" (rval)); rval;})
-#define mtspr(rn, v)	asm volatile("mtspr " __stringify(rn) ",%0" : : "r" (v))
+#define mtspr(rn, v)	asm volatile("mtspr " stringify(rn) ",%0" : : "r" (v))
 
 #define tlbie(v)	asm volatile("tlbie %0 \n sync" : : "r" (v))
 
@@ -924,6 +1126,25 @@ n:
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
+#if defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx)
+#define CPU_TYPE_ENTRY(n, v, nc) \
+	{ .name = #n, .soc_ver = SVR_##v, .num_cores = (nc), }
+#else
+#if defined(CONFIG_MPC83xx)
+#define CPU_TYPE_ENTRY(x) {#x, SPR_##x}
+#endif
+#endif
+
+
 #ifndef CONFIG_MACH_SPECIFIC
 extern int _machine;
 extern int have_of;
@@ -983,7 +1204,7 @@ struct thread_struct {
 	struct pt_regs	*regs;		/* Pointer to saved register state */
 	mm_segment_t	fs;		/* for get_fs() validation */
 	void		*pgdir;		/* root of page-table tree */
-	signed long     last_syscall;
+	signed long	last_syscall;
 	double		fpr[32];	/* Complete floating point set */
 	unsigned long	fpscr_pad;	/* fpr ... fpscr must be contiguous */
 	unsigned long	fpscr;		/* Floating point status */
@@ -1008,7 +1229,7 @@ struct thread_struct {
 
 /*
  * Note: the vm_start and vm_end fields here should *not*
- * be in kernel space.  (Could vm_end == vm_start perhaps?)
+ * be in kernel space.	(Could vm_end == vm_start perhaps?)
  */
 #define INIT_MMAP { &init_mm, 0, 0x1000, NULL, \
 		    PAGE_SHARED, VM_READ | VM_WRITE | VM_EXEC, \
@@ -1038,7 +1259,7 @@ unsigned long get_wchan(struct task_struct *p);
 #define alloc_task_struct() \
 	((struct task_struct *) __get_free_pages(GFP_KERNEL,1))
 #define free_task_struct(p)	free_pages((unsigned long)(p),1)
-#define get_task_struct(tsk)      atomic_inc(&mem_map[MAP_NR(tsk)].count)
+#define get_task_struct(tsk)	  atomic_inc(&mem_map[MAP_NR(tsk)].count)
 
 /* in process.c - for early bootup debug -- Cort */
 int ll_printk(const char *, ...);
diff --git a/include/common.h b/include/common.h
index 2f37dd8..b3ef785 100644
--- a/include/common.h
+++ b/include/common.h
@@ -112,6 +112,10 @@ ulong	simple_strtoul(const char *cp,char **endp,unsigned int base);
 unsigned long long	simple_strtoull(const char *cp,char **endp,unsigned int base);
 long	simple_strtol(const char *cp,char **endp,unsigned int base);
 
+/* lib/strmhz.c */
+char *  strmhz(char *buf, long hz);
+
+
 /* lib_generic/crc32.c */
 uint32_t crc32(uint32_t, const void*, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
@@ -202,6 +206,8 @@ void barebox_banner(void);
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
+#define DIV_ROUND(n,d)      (((n) + ((d)/2)) / (d))
+
 #define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
 
 #define DIV_ROUND_CLOSEST(x, divisor)(			\
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 127c161..a7125fb 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -12,4 +12,36 @@
 #include <asm/bitops.h>
 
 
+#ifndef PLATFORM__SET_BIT
+# define __set_bit generic_set_bit
+#endif
+
+#ifndef PLATFORM__CLEAR_BIT
+# define __clear_bit generic_clear_bit
+#endif
+
+/**
+ * __set_bit - Set a bit in memory
+ * @nr: the bit to set
+ * @addr: the address to start counting from
+ *
+ * Unlike set_bit(), this function is non-atomic and may be reordered.
+ * If it's called on the same region of memory simultaneously, the effect
+ * may be that only one operation succeeds.
+ */
+static inline void generic_set_bit(int nr, volatile unsigned long *addr)
+{
+	unsigned long mask = BIT_MASK(nr);
+	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
+
+	*p  |= mask;
+}
+
+static inline void generic_clear_bit(int nr, volatile unsigned long *addr)
+{
+	unsigned long mask = BIT_MASK(nr);
+	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
+
+	*p &= ~mask;
+}
 #endif
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
diff --git a/include/net.h b/include/net.h
index d0f8341..2aa926b 100644
--- a/include/net.h
+++ b/include/net.h
@@ -25,6 +25,8 @@
 /* The number of receive packet buffers */
 #define PKTBUFSRX	4
 
+#define PKTSIZE_ALIGN       1536
+
 struct device_d;
 
 struct eth_device {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
