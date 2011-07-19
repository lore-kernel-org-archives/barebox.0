Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjI0b-0000PL-B5
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 21:39:27 +0000
Received: by mail-fx0-f43.google.com with SMTP id 17so555755fxg.16
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 14:39:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 20 Jul 2011 01:38:58 +0400
Message-Id: <1311111546-888-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
References: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v7 07/15] MIPS: update mipsregs.h for barebox
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/mipsregs.h |  677 --------------------------------------
 1 files changed, 0 insertions(+), 677 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 6a6f8a8..f3d1ae2 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -13,10 +13,6 @@
 #ifndef _ASM_MIPSREGS_H
 #define _ASM_MIPSREGS_H
 
-#include <linux/linkage.h>
-#include <asm/hazards.h>
-#include <asm/war.h>
-
 /*
  * The following macros are especially useful for __asm__
  * inline assembler.
@@ -174,7 +170,6 @@
 #define FPU_CSR_RU      0x2     /* towards +Infinity */
 #define FPU_CSR_RD      0x3     /* towards -Infinity */
 
-
 /*
  * Values for PageMask register
  */
@@ -211,85 +206,6 @@
 #endif
 
 /*
- * Default page size for a given kernel configuration
- */
-#ifdef CONFIG_PAGE_SIZE_4KB
-#define PM_DEFAULT_MASK	PM_4K
-#elif defined(CONFIG_PAGE_SIZE_8KB)
-#define PM_DEFAULT_MASK	PM_8K
-#elif defined(CONFIG_PAGE_SIZE_16KB)
-#define PM_DEFAULT_MASK	PM_16K
-#elif defined(CONFIG_PAGE_SIZE_32KB)
-#define PM_DEFAULT_MASK	PM_32K
-#elif defined(CONFIG_PAGE_SIZE_64KB)
-#define PM_DEFAULT_MASK	PM_64K
-#else
-#error Bad page size configuration!
-#endif
-
-/*
- * Default huge tlb size for a given kernel configuration
- */
-#ifdef CONFIG_PAGE_SIZE_4KB
-#define PM_HUGE_MASK	PM_1M
-#elif defined(CONFIG_PAGE_SIZE_8KB)
-#define PM_HUGE_MASK	PM_4M
-#elif defined(CONFIG_PAGE_SIZE_16KB)
-#define PM_HUGE_MASK	PM_16M
-#elif defined(CONFIG_PAGE_SIZE_32KB)
-#define PM_HUGE_MASK	PM_64M
-#elif defined(CONFIG_PAGE_SIZE_64KB)
-#define PM_HUGE_MASK	PM_256M
-#elif defined(CONFIG_HUGETLB_PAGE)
-#error Bad page size configuration for hugetlbfs!
-#endif
-
-/*
- * Values used for computation of new tlb entries
- */
-#define PL_4K		12
-#define PL_16K		14
-#define PL_64K		16
-#define PL_256K		18
-#define PL_1M		20
-#define PL_4M		22
-#define PL_16M		24
-#define PL_64M		26
-#define PL_256M		28
-
-/*
- * PageGrain bits
- */
-#define PG_RIE		(_ULCAST_(1) <<  31)
-#define PG_XIE		(_ULCAST_(1) <<  30)
-#define PG_ELPA		(_ULCAST_(1) <<  29)
-#define PG_ESP		(_ULCAST_(1) <<  28)
-
-/*
- * R4x00 interrupt enable / cause bits
- */
-#define IE_SW0          (_ULCAST_(1) <<  8)
-#define IE_SW1          (_ULCAST_(1) <<  9)
-#define IE_IRQ0         (_ULCAST_(1) << 10)
-#define IE_IRQ1         (_ULCAST_(1) << 11)
-#define IE_IRQ2         (_ULCAST_(1) << 12)
-#define IE_IRQ3         (_ULCAST_(1) << 13)
-#define IE_IRQ4         (_ULCAST_(1) << 14)
-#define IE_IRQ5         (_ULCAST_(1) << 15)
-
-/*
- * R4x00 interrupt cause bits
- */
-#define C_SW0           (_ULCAST_(1) <<  8)
-#define C_SW1           (_ULCAST_(1) <<  9)
-#define C_IRQ0          (_ULCAST_(1) << 10)
-#define C_IRQ1          (_ULCAST_(1) << 11)
-#define C_IRQ2          (_ULCAST_(1) << 12)
-#define C_IRQ3          (_ULCAST_(1) << 13)
-#define C_IRQ4          (_ULCAST_(1) << 14)
-#define C_IRQ5          (_ULCAST_(1) << 15)
-
-/*
  * Bitfields in the R4xx0 cp0 status register
  */
 #define ST0_IE			0x00000001
@@ -615,52 +531,6 @@
 #ifndef __ASSEMBLY__
 
 /*
- * Functions to access the R10000 performance counters.  These are basically
- * mfc0 and mtc0 instructions from and to coprocessor register with a 5-bit
- * performance counter number encoded into bits 1 ... 5 of the instruction.
- * Only performance counters 0 to 1 actually exist, so for a non-R10000 aware
- * disassembler these will look like an access to sel 0 or 1.
- */
-#define read_r10k_perf_cntr(counter)				\
-({								\
-	unsigned int __res;					\
-	__asm__ __volatile__(					\
-	"mfpc\t%0, %1"						\
-        : "=r" (__res)						\
-	: "i" (counter));					\
-								\
-        __res;							\
-})
-
-#define write_r10k_perf_cntr(counter,val)                       \
-do {								\
-	__asm__ __volatile__(					\
-	"mtpc\t%0, %1"						\
-	:							\
-	: "r" (val), "i" (counter));				\
-} while (0)
-
-#define read_r10k_perf_event(counter)				\
-({								\
-	unsigned int __res;					\
-	__asm__ __volatile__(					\
-	"mfps\t%0, %1"						\
-        : "=r" (__res)						\
-	: "i" (counter));					\
-								\
-        __res;							\
-})
-
-#define write_r10k_perf_cntl(counter,val)                       \
-do {								\
-	__asm__ __volatile__(					\
-	"mtps\t%0, %1"						\
-	:							\
-	: "r" (val), "i" (counter));				\
-} while (0)
-
-
-/*
  * Macros to access the system control coprocessor
  */
 
@@ -1068,26 +938,6 @@ do {									\
 #define read_c0_ebase()		__read_32bit_c0_register($15, 1)
 #define write_c0_ebase(val)	__write_32bit_c0_register($15, 1, val)
 
-
-/* Cavium OCTEON (cnMIPS) */
-#define read_c0_cvmcount()	__read_ulong_c0_register($9, 6)
-#define write_c0_cvmcount(val)	__write_ulong_c0_register($9, 6, val)
-
-#define read_c0_cvmctl()	__read_64bit_c0_register($9, 7)
-#define write_c0_cvmctl(val)	__write_64bit_c0_register($9, 7, val)
-
-#define read_c0_cvmmemctl()	__read_64bit_c0_register($11, 7)
-#define write_c0_cvmmemctl(val)	__write_64bit_c0_register($11, 7, val)
-/*
- * The cacheerr registers are not standardized.  On OCTEON, they are
- * 64 bits wide.
- */
-#define read_octeon_c0_icacheerr()	__read_64bit_c0_register($27, 0)
-#define write_octeon_c0_icacheerr(val)	__write_64bit_c0_register($27, 0, val)
-
-#define read_octeon_c0_dcacheerr()	__read_64bit_c0_register($27, 1)
-#define write_octeon_c0_dcacheerr(val)	__write_64bit_c0_register($27, 1, val)
-
 /* BMIPS3300 */
 #define read_c0_brcm_config_0()		__read_32bit_c0_register($22, 0)
 #define write_c0_brcm_config_0(val)	__write_32bit_c0_register($22, 0, val)
@@ -1133,533 +983,6 @@ do {									\
 #define read_c0_brcm_sleepcount()	__read_32bit_c0_register($22, 7)
 #define write_c0_brcm_sleepcount(val)	__write_32bit_c0_register($22, 7, val)
 
-/*
- * Macros to access the floating point coprocessor control registers
- */
-#define read_32bit_cp1_register(source)                         \
-({ int __res;                                                   \
-	__asm__ __volatile__(                                   \
-	".set\tpush\n\t"					\
-	".set\treorder\n\t"					\
-	/* gas fails to assemble cfc1 for some archs (octeon).*/ \
-	".set\tmips1\n\t"					\
-        "cfc1\t%0,"STR(source)"\n\t"                            \
-	".set\tpop"						\
-        : "=r" (__res));                                        \
-        __res;})
-
-#define rddsp(mask)							\
-({									\
-	unsigned int __res;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push				\n"		\
-	"	.set	noat				\n"		\
-	"	# rddsp $1, %x1				\n"		\
-	"	.word	0x7c000cb8 | (%x1 << 16)	\n"		\
-	"	move	%0, $1				\n"		\
-	"	.set	pop				\n"		\
-	: "=r" (__res)							\
-	: "i" (mask));							\
-	__res;								\
-})
-
-#define wrdsp(val, mask)						\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# wrdsp $1, %x1					\n"	\
-	"	.word	0x7c2004f8 | (%x1 << 11)		\n"	\
-	"	.set	pop					\n"	\
-        :								\
-	: "r" (val), "i" (mask));					\
-} while (0)
-
-#if 0	/* Need DSP ASE capable assembler ... */
-#define mflo0() ({ long mflo0; __asm__("mflo %0, $ac0" : "=r" (mflo0)); mflo0;})
-#define mflo1() ({ long mflo1; __asm__("mflo %0, $ac1" : "=r" (mflo1)); mflo1;})
-#define mflo2() ({ long mflo2; __asm__("mflo %0, $ac2" : "=r" (mflo2)); mflo2;})
-#define mflo3() ({ long mflo3; __asm__("mflo %0, $ac3" : "=r" (mflo3)); mflo3;})
-
-#define mfhi0() ({ long mfhi0; __asm__("mfhi %0, $ac0" : "=r" (mfhi0)); mfhi0;})
-#define mfhi1() ({ long mfhi1; __asm__("mfhi %0, $ac1" : "=r" (mfhi1)); mfhi1;})
-#define mfhi2() ({ long mfhi2; __asm__("mfhi %0, $ac2" : "=r" (mfhi2)); mfhi2;})
-#define mfhi3() ({ long mfhi3; __asm__("mfhi %0, $ac3" : "=r" (mfhi3)); mfhi3;})
-
-#define mtlo0(x) __asm__("mtlo %0, $ac0" ::"r" (x))
-#define mtlo1(x) __asm__("mtlo %0, $ac1" ::"r" (x))
-#define mtlo2(x) __asm__("mtlo %0, $ac2" ::"r" (x))
-#define mtlo3(x) __asm__("mtlo %0, $ac3" ::"r" (x))
-
-#define mthi0(x) __asm__("mthi %0, $ac0" ::"r" (x))
-#define mthi1(x) __asm__("mthi %0, $ac1" ::"r" (x))
-#define mthi2(x) __asm__("mthi %0, $ac2" ::"r" (x))
-#define mthi3(x) __asm__("mthi %0, $ac3" ::"r" (x))
-
-#else
-
-#define mfhi0()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mfhi	%0, $ac0		\n"			\
-	"	.word	0x00000810		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mfhi1()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mfhi	%0, $ac1		\n"			\
-	"	.word	0x00200810		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mfhi2()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mfhi	%0, $ac2		\n"			\
-	"	.word	0x00400810		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mfhi3()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mfhi	%0, $ac3		\n"			\
-	"	.word	0x00600810		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mflo0()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mflo	%0, $ac0		\n"			\
-	"	.word	0x00000812		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mflo1()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mflo	%0, $ac1		\n"			\
-	"	.word	0x00200812		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mflo2()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mflo	%0, $ac2		\n"			\
-	"	.word	0x00400812		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mflo3()								\
-({									\
-	unsigned long __treg;						\
-									\
-	__asm__ __volatile__(						\
-	"	.set	push			\n"			\
-	"	.set	noat			\n"			\
-	"	# mflo	%0, $ac3		\n"			\
-	"	.word	0x00600812		\n"			\
-	"	move	%0, $1			\n"			\
-	"	.set	pop			\n"			\
-	: "=r" (__treg));						\
-	__treg;								\
-})
-
-#define mthi0(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mthi	$1, $ac0				\n"	\
-	"	.word	0x00200011				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mthi1(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mthi	$1, $ac1				\n"	\
-	"	.word	0x00200811				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mthi2(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mthi	$1, $ac2				\n"	\
-	"	.word	0x00201011				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mthi3(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mthi	$1, $ac3				\n"	\
-	"	.word	0x00201811				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mtlo0(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mtlo	$1, $ac0				\n"	\
-	"	.word	0x00200013				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mtlo1(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mtlo	$1, $ac1				\n"	\
-	"	.word	0x00200813				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mtlo2(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mtlo	$1, $ac2				\n"	\
-	"	.word	0x00201013				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#define mtlo3(x)							\
-do {									\
-	__asm__ __volatile__(						\
-	"	.set	push					\n"	\
-	"	.set	noat					\n"	\
-	"	move	$1, %0					\n"	\
-	"	# mtlo	$1, $ac3				\n"	\
-	"	.word	0x00201813				\n"	\
-	"	.set	pop					\n"	\
-	:								\
-	: "r" (x));							\
-} while (0)
-
-#endif
-
-/*
- * TLB operations.
- *
- * It is responsibility of the caller to take care of any TLB hazards.
- */
-static inline void tlb_probe(void)
-{
-	__asm__ __volatile__(
-		".set noreorder\n\t"
-		"tlbp\n\t"
-		".set reorder");
-}
-
-static inline void tlb_read(void)
-{
-#if MIPS34K_MISSED_ITLB_WAR
-	int res = 0;
-
-	__asm__ __volatile__(
-	"	.set	push					\n"
-	"	.set	noreorder				\n"
-	"	.set	noat					\n"
-	"	.set	mips32r2				\n"
-	"	.word	0x41610001		# dvpe $1	\n"
-	"	move	%0, $1					\n"
-	"	ehb						\n"
-	"	.set	pop					\n"
-	: "=r" (res));
-
-	instruction_hazard();
-#endif
-
-	__asm__ __volatile__(
-		".set noreorder\n\t"
-		"tlbr\n\t"
-		".set reorder");
-
-#if MIPS34K_MISSED_ITLB_WAR
-	if ((res & _ULCAST_(1)))
-		__asm__ __volatile__(
-		"	.set	push				\n"
-		"	.set	noreorder			\n"
-		"	.set	noat				\n"
-		"	.set	mips32r2			\n"
-		"	.word	0x41600021	# evpe		\n"
-		"	ehb					\n"
-		"	.set	pop				\n");
-#endif
-}
-
-static inline void tlb_write_indexed(void)
-{
-	__asm__ __volatile__(
-		".set noreorder\n\t"
-		"tlbwi\n\t"
-		".set reorder");
-}
-
-static inline void tlb_write_random(void)
-{
-	__asm__ __volatile__(
-		".set noreorder\n\t"
-		"tlbwr\n\t"
-		".set reorder");
-}
-
-/*
- * Manipulate bits in a c0 register.
- */
-#ifndef CONFIG_MIPS_MT_SMTC
-/*
- * SMTC Linux requires shutting-down microthread scheduling
- * during CP0 register read-modify-write sequences.
- */
-#define __BUILD_SET_C0(name)					\
-static inline unsigned int					\
-set_c0_##name(unsigned int set)					\
-{								\
-	unsigned int res, new;					\
-								\
-	res = read_c0_##name();					\
-	new = res | set;					\
-	write_c0_##name(new);					\
-								\
-	return res;						\
-}								\
-								\
-static inline unsigned int					\
-clear_c0_##name(unsigned int clear)				\
-{								\
-	unsigned int res, new;					\
-								\
-	res = read_c0_##name();					\
-	new = res & ~clear;					\
-	write_c0_##name(new);					\
-								\
-	return res;						\
-}								\
-								\
-static inline unsigned int					\
-change_c0_##name(unsigned int change, unsigned int val)		\
-{								\
-	unsigned int res, new;					\
-								\
-	res = read_c0_##name();					\
-	new = res & ~change;					\
-	new |= (val & change);					\
-	write_c0_##name(new);					\
-								\
-	return res;						\
-}
-
-#else /* SMTC versions that manage MT scheduling */
-
-#include <linux/irqflags.h>
-
-/*
- * This is a duplicate of dmt() in mipsmtregs.h to avoid problems with
- * header file recursion.
- */
-static inline unsigned int __dmt(void)
-{
-	int res;
-
-	__asm__ __volatile__(
-	"	.set	push						\n"
-	"	.set	mips32r2					\n"
-	"	.set	noat						\n"
-	"	.word	0x41610BC1			# dmt $1	\n"
-	"	ehb							\n"
-	"	move	%0, $1						\n"
-	"	.set	pop						\n"
-	: "=r" (res));
-
-	instruction_hazard();
-
-	return res;
-}
-
-#define __VPECONTROL_TE_SHIFT	15
-#define __VPECONTROL_TE		(1UL << __VPECONTROL_TE_SHIFT)
-
-#define __EMT_ENABLE		__VPECONTROL_TE
-
-static inline void __emt(unsigned int previous)
-{
-	if ((previous & __EMT_ENABLE))
-		__asm__ __volatile__(
-		"	.set	mips32r2				\n"
-		"	.word	0x41600be1		# emt		\n"
-		"	ehb						\n"
-		"	.set	mips0					\n");
-}
-
-static inline void __ehb(void)
-{
-	__asm__ __volatile__(
-	"	.set	mips32r2					\n"
-	"	ehb							\n"		"	.set	mips0						\n");
-}
-
-/*
- * Note that local_irq_save/restore affect TC-specific IXMT state,
- * not Status.IE as in non-SMTC kernel.
- */
-
-#define __BUILD_SET_C0(name)					\
-static inline unsigned int					\
-set_c0_##name(unsigned int set)					\
-{								\
-	unsigned int res;					\
-	unsigned int new;					\
-	unsigned int omt;					\
-	unsigned long flags;					\
-								\
-	local_irq_save(flags);					\
-	omt = __dmt();						\
-	res = read_c0_##name();					\
-	new = res | set;					\
-	write_c0_##name(new);					\
-	__emt(omt);						\
-	local_irq_restore(flags);				\
-								\
-	return res;						\
-}								\
-								\
-static inline unsigned int					\
-clear_c0_##name(unsigned int clear)				\
-{								\
-	unsigned int res;					\
-	unsigned int new;					\
-	unsigned int omt;					\
-	unsigned long flags;					\
-								\
-	local_irq_save(flags);					\
-	omt = __dmt();						\
-	res = read_c0_##name();					\
-	new = res & ~clear;					\
-	write_c0_##name(new);					\
-	__emt(omt);						\
-	local_irq_restore(flags);				\
-								\
-	return res;						\
-}								\
-								\
-static inline unsigned int					\
-change_c0_##name(unsigned int change, unsigned int newbits)	\
-{								\
-	unsigned int res;					\
-	unsigned int new;					\
-	unsigned int omt;					\
-	unsigned long flags;					\
-								\
-	local_irq_save(flags);					\
-								\
-	omt = __dmt();						\
-	res = read_c0_##name();					\
-	new = res & ~change;					\
-	new |= (newbits & change);				\
-	write_c0_##name(new);					\
-	__emt(omt);						\
-	local_irq_restore(flags);				\
-								\
-	return res;						\
-}
-#endif
-
-__BUILD_SET_C0(status)
-__BUILD_SET_C0(cause)
-__BUILD_SET_C0(config)
-__BUILD_SET_C0(intcontrol)
-__BUILD_SET_C0(intctl)
-__BUILD_SET_C0(srsmap)
-
 #endif /* !__ASSEMBLY__ */
 
 #endif /* _ASM_MIPSREGS_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
