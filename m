Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PeQXy-0007tY-Kp
	for barebox@lists.infradead.org; Sun, 16 Jan 2011 11:13:26 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 16 Jan 2011 12:12:32 +0100
Message-Id: <1295176352-2218-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1295025041-27099-1-git-send-email-plagnioj@jcrosoft.com>
References: <1295025041-27099-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] import swab.h arch implementation form linux v2.3.37
To: barebox@lists.infradead.org

this will avoid __bswapsi2 issue see with gcc 4.5.1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/swab.h             |   69 +++++++
 arch/blackfin/include/asm/bitsperlong.h |    1 +
 arch/blackfin/include/asm/swab.h        |   50 +++++
 arch/ppc/include/asm/byteorder.h        |   91 ++--------
 arch/ppc/include/asm/swab.h             |   90 +++++++++
 arch/x86/include/asm/swab.h             |   61 +++++++
 include/asm-generic/bitsperlong.h       |   32 ++++
 include/asm-generic/swab.h              |   18 ++
 include/linux/byteorder/big_endian.h    |    2 +-
 include/linux/byteorder/little_endian.h |    2 +-
 include/linux/byteorder/swab.h          |  158 ----------------
 include/linux/swab.h                    |  299 +++++++++++++++++++++++++++++++
 12 files changed, 634 insertions(+), 239 deletions(-)
 create mode 100644 arch/arm/include/asm/swab.h
 create mode 100644 arch/blackfin/include/asm/bitsperlong.h
 create mode 100644 arch/blackfin/include/asm/swab.h
 rewrite arch/ppc/include/asm/byteorder.h (97%)
 create mode 100644 arch/ppc/include/asm/swab.h
 create mode 100644 arch/sandbox/include/asm/swab.h
 create mode 100644 arch/x86/include/asm/swab.h
 create mode 100644 include/asm-generic/bitsperlong.h
 create mode 100644 include/asm-generic/swab.h
 delete mode 100644 include/linux/byteorder/swab.h
 create mode 100644 include/linux/swab.h

diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
new file mode 100644
index 0000000..9997ad2
--- /dev/null
+++ b/arch/arm/include/asm/swab.h
@@ -0,0 +1,69 @@
+/*
+ *  arch/arm/include/asm/byteorder.h
+ *
+ * ARM Endian-ness.  In little endian mode, the data bus is connected such
+ * that byte accesses appear as:
+ *  0 = d0...d7, 1 = d8...d15, 2 = d16...d23, 3 = d24...d31
+ * and word accesses (data or instruction) appear as:
+ *  d0...d31
+ *
+ * When in big endian mode, byte accesses appear as:
+ *  0 = d24...d31, 1 = d16...d23, 2 = d8...d15, 3 = d0...d7
+ * and word accesses (data or instruction) appear as:
+ *  d0...d31
+ */
+#ifndef __ASM_ARM_SWAB_H
+#define __ASM_ARM_SWAB_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+#if !defined(__STRICT_ANSI__) || defined(__KERNEL__)
+#  define __SWAB_64_THRU_32__
+#endif
+
+#if defined(__KERNEL__) && __LINUX_ARM_ARCH__ >= 6
+
+static inline __attribute_const__ __u16 __arch_swab16(__u16 x)
+{
+	__asm__ ("rev16 %0, %1" : "=r" (x) : "r" (x));
+	return x;
+}
+#define __arch_swab16 __arch_swab16
+
+static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
+{
+	__asm__ ("rev %0, %1" : "=r" (x) : "r" (x));
+	return x;
+}
+#define __arch_swab32 __arch_swab32
+
+#else
+
+static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
+{
+	__u32 t;
+
+#ifndef __thumb__
+	if (!__builtin_constant_p(x)) {
+		/*
+		 * The compiler needs a bit of a hint here to always do the
+		 * right thing and not screw it up to different degrees
+		 * depending on the gcc version.
+		 */
+		asm ("eor\t%0, %1, %1, ror #16" : "=r" (t) : "r" (x));
+	} else
+#endif
+		t = x ^ ((x << 16) | (x >> 16)); /* eor r1,r0,r0,ror #16 */
+
+	x = (x << 24) | (x >> 8);		/* mov r0,r0,ror #8      */
+	t &= ~0x00FF0000;			/* bic r1,r1,#0x00FF0000 */
+	x ^= (t >> 8);				/* eor r0,r0,r1,lsr #8   */
+
+	return x;
+}
+#define __arch_swab32 __arch_swab32
+
+#endif
+
+#endif
diff --git a/arch/blackfin/include/asm/bitsperlong.h b/arch/blackfin/include/asm/bitsperlong.h
new file mode 100644
index 0000000..6dc0bb0
--- /dev/null
+++ b/arch/blackfin/include/asm/bitsperlong.h
@@ -0,0 +1 @@
+#include <asm-generic/bitsperlong.h>
diff --git a/arch/blackfin/include/asm/swab.h b/arch/blackfin/include/asm/swab.h
new file mode 100644
index 0000000..89de650
--- /dev/null
+++ b/arch/blackfin/include/asm/swab.h
@@ -0,0 +1,50 @@
+/*
+ * Copyright 2009 Analog Devices Inc.
+ *
+ * Licensed under the GPL-2 or later.
+ */
+
+#ifndef _BLACKFIN_SWAB_H
+#define _BLACKFIN_SWAB_H
+
+#include <linux/types.h>
+#include <asm-generic/swab.h>
+
+#ifdef __GNUC__
+
+static __inline__ __attribute_const__ __u32 __arch_swahb32(__u32 xx)
+{
+	__u32 tmp;
+	__asm__("%1 = %0 >> 8 (V);\n\t"
+		"%0 = %0 << 8 (V);\n\t"
+		"%0 = %0 | %1;\n\t"
+		: "+d"(xx), "=&d"(tmp));
+	return xx;
+}
+#define __arch_swahb32 __arch_swahb32
+
+static __inline__ __attribute_const__ __u32 __arch_swahw32(__u32 xx)
+{
+	__u32 rv;
+	__asm__("%0 = PACK(%1.L, %1.H);\n\t": "=d"(rv): "d"(xx));
+	return rv;
+}
+#define __arch_swahw32 __arch_swahw32
+
+static __inline__ __attribute_const__ __u32 __arch_swab32(__u32 xx)
+{
+	return __arch_swahb32(__arch_swahw32(xx));
+}
+#define __arch_swab32 __arch_swab32
+
+static __inline__ __attribute_const__ __u16 __arch_swab16(__u16 xx)
+{
+	__u32 xw = xx;
+	__asm__("%0 <<= 8;\n	%0.L = %0.L + %0.H (NS);\n": "+d"(xw));
+	return (__u16)xw;
+}
+#define __arch_swab16 __arch_swab16
+
+#endif /* __GNUC__ */
+
+#endif				/* _BLACKFIN_SWAB_H */
diff --git a/arch/ppc/include/asm/byteorder.h b/arch/ppc/include/asm/byteorder.h
dissimilarity index 97%
index d3e719b..aa6cc4f 100644
--- a/arch/ppc/include/asm/byteorder.h
+++ b/arch/ppc/include/asm/byteorder.h
@@ -1,79 +1,12 @@
-#ifndef _PPC_BYTEORDER_H
-#define _PPC_BYTEORDER_H
-
-#include <asm/types.h>
-
-#ifdef __GNUC__
-
-extern __inline__ unsigned ld_le16(const volatile unsigned short *addr)
-{
-	unsigned val;
-
-	__asm__ __volatile__ ("lhbrx %0,0,%1" : "=r" (val) : "r" (addr), "m" (*addr));
-	return val;
-}
-
-extern __inline__ void st_le16(volatile unsigned short *addr, const unsigned val)
-{
-	__asm__ __volatile__ ("sthbrx %1,0,%2" : "=m" (*addr) : "r" (val), "r" (addr));
-}
-
-extern __inline__ unsigned ld_le32(const volatile unsigned *addr)
-{
-	unsigned val;
-
-	__asm__ __volatile__ ("lwbrx %0,0,%1" : "=r" (val) : "r" (addr), "m" (*addr));
-	return val;
-}
-
-extern __inline__ void st_le32(volatile unsigned *addr, const unsigned val)
-{
-	__asm__ __volatile__ ("stwbrx %1,0,%2" : "=m" (*addr) : "r" (val), "r" (addr));
-}
-
-/* alas, egcs sounds like it has a bug in this code that doesn't use the
-   inline asm correctly, and can cause file corruption. Until I hear that
-   it's fixed, I can live without the extra speed. I hope. */
-#if !(__GNUC__ >= 2 && __GNUC_MINOR__ >= 90)
-static __inline__ __attribute__((const)) __u16 ___arch__swab16(__u16 value)
-{
-	__u16 result;
-
-	__asm__("rlwimi %0,%1,8,16,23"
-	    : "=r" (result)
-	    : "r" (value), "0" (value >> 8));
-	return result;
-}
-
-static __inline__ __attribute__((const)) __u32 ___arch__swab32(__u32 value)
-{
-	__u32 result;
-
-	__asm__("rlwimi %0,%1,24,16,23\n\t"
-	    "rlwimi %0,%1,8,8,15\n\t"
-	    "rlwimi %0,%1,24,0,7"
-	    : "=r" (result)
-	    : "r" (value), "0" (value >> 24));
-	return result;
-}
-#define __arch__swab32(x) ___arch__swab32(x)
-#define __arch__swab16(x) ___arch__swab16(x)
-
-#endif
-
-/* The same, but returns converted value from the location pointer by addr. */
-#define __arch__swab16p(addr) ld_le16(addr)
-#define __arch__swab32p(addr) ld_le32(addr)
-
-/* The same, but do the conversion in situ, ie. put the value back to addr. */
-#define __arch__swab16s(addr) st_le16(addr,*addr)
-#define __arch__swab32s(addr) st_le32(addr,*addr)
-
-#endif /* __GNUC__ */
-
-#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
-#define __BYTEORDER_HAS_U64__
-#endif
-#include <linux/byteorder/big_endian.h>
-
-#endif /* _PPC_BYTEORDER_H */
+#ifndef _ASM_POWERPC_BYTEORDER_H
+#define _ASM_POWERPC_BYTEORDER_H
+
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version
+ * 2 of the License, or (at your option) any later version.
+ */
+#include <linux/byteorder/big_endian.h>
+
+#endif /* _ASM_POWERPC_BYTEORDER_H */
diff --git a/arch/ppc/include/asm/swab.h b/arch/ppc/include/asm/swab.h
new file mode 100644
index 0000000..c581e3e
--- /dev/null
+++ b/arch/ppc/include/asm/swab.h
@@ -0,0 +1,90 @@
+#ifndef _ASM_POWERPC_SWAB_H
+#define _ASM_POWERPC_SWAB_H
+
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version
+ * 2 of the License, or (at your option) any later version.
+ */
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+
+#ifdef __GNUC__
+
+#ifndef __powerpc64__
+#define __SWAB_64_THRU_32__
+#endif /* __powerpc64__ */
+
+#ifdef __KERNEL__
+
+static __inline__ __u16 ld_le16(const volatile __u16 *addr)
+{
+	__u16 val;
+
+	__asm__ __volatile__ ("lhbrx %0,0,%1" : "=r" (val) : "r" (addr), "m" (*addr));
+	return val;
+}
+#define __arch_swab16p ld_le16
+
+static __inline__ void st_le16(volatile __u16 *addr, const __u16 val)
+{
+	__asm__ __volatile__ ("sthbrx %1,0,%2" : "=m" (*addr) : "r" (val), "r" (addr));
+}
+
+static inline void __arch_swab16s(__u16 *addr)
+{
+	st_le16(addr, *addr);
+}
+#define __arch_swab16s __arch_swab16s
+
+static __inline__ __u32 ld_le32(const volatile __u32 *addr)
+{
+	__u32 val;
+
+	__asm__ __volatile__ ("lwbrx %0,0,%1" : "=r" (val) : "r" (addr), "m" (*addr));
+	return val;
+}
+#define __arch_swab32p ld_le32
+
+static __inline__ void st_le32(volatile __u32 *addr, const __u32 val)
+{
+	__asm__ __volatile__ ("stwbrx %1,0,%2" : "=m" (*addr) : "r" (val), "r" (addr));
+}
+
+static inline void __arch_swab32s(__u32 *addr)
+{
+	st_le32(addr, *addr);
+}
+#define __arch_swab32s __arch_swab32s
+
+static inline __attribute_const__ __u16 __arch_swab16(__u16 value)
+{
+	__u16 result;
+
+	__asm__("rlwimi %0,%1,8,16,23"
+	    : "=r" (result)
+	    : "r" (value), "0" (value >> 8));
+	return result;
+}
+#define __arch_swab16 __arch_swab16
+
+static inline __attribute_const__ __u32 __arch_swab32(__u32 value)
+{
+	__u32 result;
+
+	__asm__("rlwimi %0,%1,24,16,23\n\t"
+	    "rlwimi %0,%1,8,8,15\n\t"
+	    "rlwimi %0,%1,24,0,7"
+	    : "=r" (result)
+	    : "r" (value), "0" (value >> 24));
+	return result;
+}
+#define __arch_swab32 __arch_swab32
+
+#endif /* __KERNEL__ */
+
+#endif /* __GNUC__ */
+
+#endif /* _ASM_POWERPC_SWAB_H */
diff --git a/arch/sandbox/include/asm/swab.h b/arch/sandbox/include/asm/swab.h
new file mode 100644
index 0000000..e69de29
diff --git a/arch/x86/include/asm/swab.h b/arch/x86/include/asm/swab.h
new file mode 100644
index 0000000..557cd9f
--- /dev/null
+++ b/arch/x86/include/asm/swab.h
@@ -0,0 +1,61 @@
+#ifndef _ASM_X86_SWAB_H
+#define _ASM_X86_SWAB_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+
+static inline __attribute_const__ __u32 __arch_swab32(__u32 val)
+{
+#ifdef __i386__
+# ifdef CONFIG_X86_BSWAP
+	asm("bswap %0" : "=r" (val) : "0" (val));
+# else
+	asm("xchgb %b0,%h0\n\t"	/* swap lower bytes	*/
+	    "rorl $16,%0\n\t"	/* swap words		*/
+	    "xchgb %b0,%h0"	/* swap higher bytes	*/
+	    : "=q" (val)
+	    : "0" (val));
+# endif
+
+#else /* __i386__ */
+	asm("bswapl %0"
+	    : "=r" (val)
+	    : "0" (val));
+#endif
+	return val;
+}
+#define __arch_swab32 __arch_swab32
+
+static inline __attribute_const__ __u64 __arch_swab64(__u64 val)
+{
+#ifdef __i386__
+	union {
+		struct {
+			__u32 a;
+			__u32 b;
+		} s;
+		__u64 u;
+	} v;
+	v.u = val;
+# ifdef CONFIG_X86_BSWAP
+	asm("bswapl %0 ; bswapl %1 ; xchgl %0,%1"
+	    : "=r" (v.s.a), "=r" (v.s.b)
+	    : "0" (v.s.a), "1" (v.s.b));
+# else
+	v.s.a = __arch_swab32(v.s.a);
+	v.s.b = __arch_swab32(v.s.b);
+	asm("xchgl %0,%1"
+	    : "=r" (v.s.a), "=r" (v.s.b)
+	    : "0" (v.s.a), "1" (v.s.b));
+# endif
+	return v.u;
+#else /* __i386__ */
+	asm("bswapq %0"
+	    : "=r" (val)
+	    : "0" (val));
+	return val;
+#endif
+}
+#define __arch_swab64 __arch_swab64
+
+#endif /* _ASM_X86_SWAB_H */
diff --git a/include/asm-generic/bitsperlong.h b/include/asm-generic/bitsperlong.h
new file mode 100644
index 0000000..4ae54e0
--- /dev/null
+++ b/include/asm-generic/bitsperlong.h
@@ -0,0 +1,32 @@
+#ifndef __ASM_GENERIC_BITS_PER_LONG
+#define __ASM_GENERIC_BITS_PER_LONG
+
+/*
+ * There seems to be no way of detecting this automatically from user
+ * space, so 64 bit architectures should override this in their
+ * bitsperlong.h. In particular, an architecture that supports
+ * both 32 and 64 bit user space must not rely on CONFIG_64BIT
+ * to decide it, but rather check a compiler provided macro.
+ */
+#ifndef __BITS_PER_LONG
+#define __BITS_PER_LONG 32
+#endif
+
+#ifdef __KERNEL__
+
+#ifdef CONFIG_64BIT
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif /* CONFIG_64BIT */
+
+/*
+ * FIXME: The check currently breaks x86-64 build, so it's
+ * temporarily disabled. Please fix x86-64 and reenable
+ */
+#if 0 && BITS_PER_LONG != __BITS_PER_LONG
+#error Inconsistent word size. Check asm/bitsperlong.h
+#endif
+
+#endif /* __KERNEL__ */
+#endif /* __ASM_GENERIC_BITS_PER_LONG */
diff --git a/include/asm-generic/swab.h b/include/asm-generic/swab.h
new file mode 100644
index 0000000..a8e9029
--- /dev/null
+++ b/include/asm-generic/swab.h
@@ -0,0 +1,18 @@
+#ifndef _ASM_GENERIC_SWAB_H
+#define _ASM_GENERIC_SWAB_H
+
+#include <asm/bitsperlong.h>
+
+/*
+ * 32 bit architectures typically (but not always) want to
+ * set __SWAB_64_THRU_32__. In user space, this is only
+ * valid if the compiler supports 64 bit data types.
+ */
+
+#if __BITS_PER_LONG == 32
+#if defined(__GNUC__) && !defined(__STRICT_ANSI__) || defined(__KERNEL__)
+#define __SWAB_64_THRU_32__
+#endif
+#endif
+
+#endif /* _ASM_GENERIC_SWAB_H */
diff --git a/include/linux/byteorder/big_endian.h b/include/linux/byteorder/big_endian.h
index 19b0c86..09fb188 100644
--- a/include/linux/byteorder/big_endian.h
+++ b/include/linux/byteorder/big_endian.h
@@ -9,7 +9,7 @@
 #endif
 #define	__BYTE_ORDER	__BIG_ENDIAN
 
-#include <linux/byteorder/swab.h>
+#include <linux/swab.h>
 
 #define __constant_htonl(x) ((__u32)(x))
 #define __constant_ntohl(x) ((__u32)(x))
diff --git a/include/linux/byteorder/little_endian.h b/include/linux/byteorder/little_endian.h
index a46f3ec..5870a6e 100644
--- a/include/linux/byteorder/little_endian.h
+++ b/include/linux/byteorder/little_endian.h
@@ -9,7 +9,7 @@
 #endif
 #define	__BYTE_ORDER	__LITTLE_ENDIAN
 
-#include <linux/byteorder/swab.h>
+#include <linux/swab.h>
 
 #define __constant_htonl(x) ___constant_swab32((x))
 #define __constant_ntohl(x) ___constant_swab32((x))
diff --git a/include/linux/byteorder/swab.h b/include/linux/byteorder/swab.h
deleted file mode 100644
index b1d570e..0000000
--- a/include/linux/byteorder/swab.h
+++ /dev/null
@@ -1,158 +0,0 @@
-#ifndef _LINUX_BYTEORDER_SWAB_H
-#define _LINUX_BYTEORDER_SWAB_H
-
-/*
- * linux/byteorder/swab.h
- * Byte-swapping, independently from CPU endianness
- *	swabXX[ps]?(foo)
- *
- * Francois-Rene Rideau <fare@tunes.org> 19971205
- *    separated swab functions from cpu_to_XX,
- *    to clean up support for bizarre-endian architectures.
- *
- * See asm-i386/byteorder.h and suches for examples of how to provide
- * architecture-dependent optimized versions
- *
- */
-
-/* casts are necessary for constants, because we never know how for sure
- * how U/UL/ULL map to __u16, __u32, __u64. At least not in a portable way.
- */
-#define ___swab16(x) \
-	((__u16)( \
-		(((__u16)(x) & (__u16)0x00ffU) << 8) | \
-		(((__u16)(x) & (__u16)0xff00U) >> 8) ))
-#define ___swab32(x) \
-	((__u32)( \
-		(((__u32)(x) & (__u32)0x000000ffUL) << 24) | \
-		(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) | \
-		(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) | \
-		(((__u32)(x) & (__u32)0xff000000UL) >> 24) ))
-#define ___swab64(x) \
-	((__u64)( \
-		(__u64)(((__u64)(x) & (__u64)0x00000000000000ffULL) << 56) | \
-		(__u64)(((__u64)(x) & (__u64)0x000000000000ff00ULL) << 40) | \
-		(__u64)(((__u64)(x) & (__u64)0x0000000000ff0000ULL) << 24) | \
-		(__u64)(((__u64)(x) & (__u64)0x00000000ff000000ULL) <<  8) | \
-		(__u64)(((__u64)(x) & (__u64)0x000000ff00000000ULL) >>  8) | \
-		(__u64)(((__u64)(x) & (__u64)0x0000ff0000000000ULL) >> 24) | \
-		(__u64)(((__u64)(x) & (__u64)0x00ff000000000000ULL) >> 40) | \
-		(__u64)(((__u64)(x) & (__u64)0xff00000000000000ULL) >> 56) ))
-
-/*
- * provide defaults when no architecture-specific optimization is detected
- */
-#ifndef __arch__swab16
-#  define __arch__swab16(x) ___swab16(x)
-#endif
-#ifndef __arch__swab32
-#  define __arch__swab32(x) ___swab32(x)
-#endif
-#ifndef __arch__swab64
-#  define __arch__swab64(x) ___swab64(x)
-#endif
-
-#ifndef __arch__swab16p
-#  define __arch__swab16p(x) __swab16(*(x))
-#endif
-#ifndef __arch__swab32p
-#  define __arch__swab32p(x) __swab32(*(x))
-#endif
-#ifndef __arch__swab64p
-#  define __arch__swab64p(x) __swab64(*(x))
-#endif
-
-#ifndef __arch__swab16s
-#  define __arch__swab16s(x) do { *(x) = __swab16p((x)); } while (0)
-#endif
-#ifndef __arch__swab32s
-#  define __arch__swab32s(x) do { *(x) = __swab32p((x)); } while (0)
-#endif
-#ifndef __arch__swab64s
-#  define __arch__swab64s(x) do { *(x) = __swab64p((x)); } while (0)
-#endif
-
-
-/*
- * Allow constant folding
- */
-#if defined(__GNUC__) && (__GNUC__ >= 2) && defined(__OPTIMIZE__)
-#  define __swab16(x) \
-(__builtin_constant_p((__u16)(x)) ? \
- ___swab16((x)) : \
- __fswab16((x)))
-#  define __swab32(x) \
-(__builtin_constant_p((__u32)(x)) ? \
- ___swab32((x)) : \
- __fswab32((x)))
-#  define __swab64(x) \
-(__builtin_constant_p((__u64)(x)) ? \
- ___swab64((x)) : \
- __fswab64((x)))
-#else
-#  define __swab16(x) __fswab16(x)
-#  define __swab32(x) __fswab32(x)
-#  define __swab64(x) __fswab64(x)
-#endif /* OPTIMIZE */
-
-
-static __inline__ __attribute__((const)) __u16 __fswab16(__u16 x)
-{
-	return __arch__swab16(x);
-}
-static __inline__ __u16 __swab16p(__u16 *x)
-{
-	return __arch__swab16p(x);
-}
-static __inline__ void __swab16s(__u16 *addr)
-{
-	__arch__swab16s(addr);
-}
-
-static __inline__ __attribute__((const)) __u32 __fswab32(__u32 x)
-{
-	return __arch__swab32(x);
-}
-static __inline__ __u32 __swab32p(__u32 *x)
-{
-	return __arch__swab32p(x);
-}
-static __inline__ void __swab32s(__u32 *addr)
-{
-	__arch__swab32s(addr);
-}
-
-#ifdef __BYTEORDER_HAS_U64__
-static __inline__ __attribute__((const)) __u64 __fswab64(__u64 x)
-{
-#  ifdef __SWAB_64_THRU_32__
-	__u32 h = x >> 32;
-	__u32 l = x & ((1ULL<<32)-1);
-	return (((__u64)__swab32(l)) << 32) | ((__u64)(__swab32(h)));
-#  else
-	return __arch__swab64(x);
-#  endif
-}
-static __inline__ __u64 __swab64p(__u64 *x)
-{
-	return __arch__swab64p(x);
-}
-static __inline__ void __swab64s(__u64 *addr)
-{
-	__arch__swab64s(addr);
-}
-#endif /* __BYTEORDER_HAS_U64__ */
-
-#if defined(__KERNEL__)
-#define swab16 __swab16
-#define swab32 __swab32
-#define swab64 __swab64
-#define swab16p __swab16p
-#define swab32p __swab32p
-#define swab64p __swab64p
-#define swab16s __swab16s
-#define swab32s __swab32s
-#define swab64s __swab64s
-#endif
-
-#endif /* _LINUX_BYTEORDER_SWAB_H */
diff --git a/include/linux/swab.h b/include/linux/swab.h
new file mode 100644
index 0000000..ea0c02f
--- /dev/null
+++ b/include/linux/swab.h
@@ -0,0 +1,299 @@
+#ifndef _LINUX_SWAB_H
+#define _LINUX_SWAB_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+#include <asm/swab.h>
+
+/*
+ * casts are necessary for constants, because we never know how for sure
+ * how U/UL/ULL map to __u16, __u32, __u64. At least not in a portable way.
+ */
+#define ___constant_swab16(x) ((__u16)(				\
+	(((__u16)(x) & (__u16)0x00ffU) << 8) |			\
+	(((__u16)(x) & (__u16)0xff00U) >> 8)))
+
+#define ___constant_swab32(x) ((__u32)(				\
+	(((__u32)(x) & (__u32)0x000000ffUL) << 24) |		\
+	(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |		\
+	(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |		\
+	(((__u32)(x) & (__u32)0xff000000UL) >> 24)))
+
+#define ___constant_swab64(x) ((__u64)(				\
+	(((__u64)(x) & (__u64)0x00000000000000ffULL) << 56) |	\
+	(((__u64)(x) & (__u64)0x000000000000ff00ULL) << 40) |	\
+	(((__u64)(x) & (__u64)0x0000000000ff0000ULL) << 24) |	\
+	(((__u64)(x) & (__u64)0x00000000ff000000ULL) <<  8) |	\
+	(((__u64)(x) & (__u64)0x000000ff00000000ULL) >>  8) |	\
+	(((__u64)(x) & (__u64)0x0000ff0000000000ULL) >> 24) |	\
+	(((__u64)(x) & (__u64)0x00ff000000000000ULL) >> 40) |	\
+	(((__u64)(x) & (__u64)0xff00000000000000ULL) >> 56)))
+
+#define ___constant_swahw32(x) ((__u32)(			\
+	(((__u32)(x) & (__u32)0x0000ffffUL) << 16) |		\
+	(((__u32)(x) & (__u32)0xffff0000UL) >> 16)))
+
+#define ___constant_swahb32(x) ((__u32)(			\
+	(((__u32)(x) & (__u32)0x00ff00ffUL) << 8) |		\
+	(((__u32)(x) & (__u32)0xff00ff00UL) >> 8)))
+
+/*
+ * Implement the following as inlines, but define the interface using
+ * macros to allow constant folding when possible:
+ * ___swab16, ___swab32, ___swab64, ___swahw32, ___swahb32
+ */
+
+static inline __attribute_const__ __u16 __fswab16(__u16 val)
+{
+#ifdef __arch_swab16
+	return __arch_swab16(val);
+#else
+	return ___constant_swab16(val);
+#endif
+}
+
+static inline __attribute_const__ __u32 __fswab32(__u32 val)
+{
+#ifdef __arch_swab32
+	return __arch_swab32(val);
+#else
+	return ___constant_swab32(val);
+#endif
+}
+
+static inline __attribute_const__ __u64 __fswab64(__u64 val)
+{
+#ifdef __arch_swab64
+	return __arch_swab64(val);
+#elif defined(__SWAB_64_THRU_32__)
+	__u32 h = val >> 32;
+	__u32 l = val & ((1ULL << 32) - 1);
+	return (((__u64)__fswab32(l)) << 32) | ((__u64)(__fswab32(h)));
+#else
+	return ___constant_swab64(val);
+#endif
+}
+
+static inline __attribute_const__ __u32 __fswahw32(__u32 val)
+{
+#ifdef __arch_swahw32
+	return __arch_swahw32(val);
+#else
+	return ___constant_swahw32(val);
+#endif
+}
+
+static inline __attribute_const__ __u32 __fswahb32(__u32 val)
+{
+#ifdef __arch_swahb32
+	return __arch_swahb32(val);
+#else
+	return ___constant_swahb32(val);
+#endif
+}
+
+/**
+ * __swab16 - return a byteswapped 16-bit value
+ * @x: value to byteswap
+ */
+#define __swab16(x)				\
+	(__builtin_constant_p((__u16)(x)) ?	\
+	___constant_swab16(x) :			\
+	__fswab16(x))
+
+/**
+ * __swab32 - return a byteswapped 32-bit value
+ * @x: value to byteswap
+ */
+#define __swab32(x)				\
+	(__builtin_constant_p((__u32)(x)) ?	\
+	___constant_swab32(x) :			\
+	__fswab32(x))
+
+/**
+ * __swab64 - return a byteswapped 64-bit value
+ * @x: value to byteswap
+ */
+#define __swab64(x)				\
+	(__builtin_constant_p((__u64)(x)) ?	\
+	___constant_swab64(x) :			\
+	__fswab64(x))
+
+/**
+ * __swahw32 - return a word-swapped 32-bit value
+ * @x: value to wordswap
+ *
+ * __swahw32(0x12340000) is 0x00001234
+ */
+#define __swahw32(x)				\
+	(__builtin_constant_p((__u32)(x)) ?	\
+	___constant_swahw32(x) :		\
+	__fswahw32(x))
+
+/**
+ * __swahb32 - return a high and low byte-swapped 32-bit value
+ * @x: value to byteswap
+ *
+ * __swahb32(0x12345678) is 0x34127856
+ */
+#define __swahb32(x)				\
+	(__builtin_constant_p((__u32)(x)) ?	\
+	___constant_swahb32(x) :		\
+	__fswahb32(x))
+
+/**
+ * __swab16p - return a byteswapped 16-bit value from a pointer
+ * @p: pointer to a naturally-aligned 16-bit value
+ */
+static inline __u16 __swab16p(const __u16 *p)
+{
+#ifdef __arch_swab16p
+	return __arch_swab16p(p);
+#else
+	return __swab16(*p);
+#endif
+}
+
+/**
+ * __swab32p - return a byteswapped 32-bit value from a pointer
+ * @p: pointer to a naturally-aligned 32-bit value
+ */
+static inline __u32 __swab32p(const __u32 *p)
+{
+#ifdef __arch_swab32p
+	return __arch_swab32p(p);
+#else
+	return __swab32(*p);
+#endif
+}
+
+/**
+ * __swab64p - return a byteswapped 64-bit value from a pointer
+ * @p: pointer to a naturally-aligned 64-bit value
+ */
+static inline __u64 __swab64p(const __u64 *p)
+{
+#ifdef __arch_swab64p
+	return __arch_swab64p(p);
+#else
+	return __swab64(*p);
+#endif
+}
+
+/**
+ * __swahw32p - return a wordswapped 32-bit value from a pointer
+ * @p: pointer to a naturally-aligned 32-bit value
+ *
+ * See __swahw32() for details of wordswapping.
+ */
+static inline __u32 __swahw32p(const __u32 *p)
+{
+#ifdef __arch_swahw32p
+	return __arch_swahw32p(p);
+#else
+	return __swahw32(*p);
+#endif
+}
+
+/**
+ * __swahb32p - return a high and low byteswapped 32-bit value from a pointer
+ * @p: pointer to a naturally-aligned 32-bit value
+ *
+ * See __swahb32() for details of high/low byteswapping.
+ */
+static inline __u32 __swahb32p(const __u32 *p)
+{
+#ifdef __arch_swahb32p
+	return __arch_swahb32p(p);
+#else
+	return __swahb32(*p);
+#endif
+}
+
+/**
+ * __swab16s - byteswap a 16-bit value in-place
+ * @p: pointer to a naturally-aligned 16-bit value
+ */
+static inline void __swab16s(__u16 *p)
+{
+#ifdef __arch_swab16s
+	__arch_swab16s(p);
+#else
+	*p = __swab16p(p);
+#endif
+}
+/**
+ * __swab32s - byteswap a 32-bit value in-place
+ * @p: pointer to a naturally-aligned 32-bit value
+ */
+static inline void __swab32s(__u32 *p)
+{
+#ifdef __arch_swab32s
+	__arch_swab32s(p);
+#else
+	*p = __swab32p(p);
+#endif
+}
+
+/**
+ * __swab64s - byteswap a 64-bit value in-place
+ * @p: pointer to a naturally-aligned 64-bit value
+ */
+static inline void __swab64s(__u64 *p)
+{
+#ifdef __arch_swab64s
+	__arch_swab64s(p);
+#else
+	*p = __swab64p(p);
+#endif
+}
+
+/**
+ * __swahw32s - wordswap a 32-bit value in-place
+ * @p: pointer to a naturally-aligned 32-bit value
+ *
+ * See __swahw32() for details of wordswapping
+ */
+static inline void __swahw32s(__u32 *p)
+{
+#ifdef __arch_swahw32s
+	__arch_swahw32s(p);
+#else
+	*p = __swahw32p(p);
+#endif
+}
+
+/**
+ * __swahb32s - high and low byteswap a 32-bit value in-place
+ * @p: pointer to a naturally-aligned 32-bit value
+ *
+ * See __swahb32() for details of high and low byte swapping
+ */
+static inline void __swahb32s(__u32 *p)
+{
+#ifdef __arch_swahb32s
+	__arch_swahb32s(p);
+#else
+	*p = __swahb32p(p);
+#endif
+}
+
+#ifdef __KERNEL__
+# define swab16 __swab16
+# define swab32 __swab32
+# define swab64 __swab64
+# define swahw32 __swahw32
+# define swahb32 __swahb32
+# define swab16p __swab16p
+# define swab32p __swab32p
+# define swab64p __swab64p
+# define swahw32p __swahw32p
+# define swahb32p __swahb32p
+# define swab16s __swab16s
+# define swab32s __swab32s
+# define swab64s __swab64s
+# define swahw32s __swahw32s
+# define swahb32s __swahb32s
+#endif /* __KERNEL__ */
+
+#endif /* _LINUX_SWAB_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
