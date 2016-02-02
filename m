Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pe-V5
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:49:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:44 +0100
Message-Id: <1454424497-7157-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/34] scripts: Add common header files for tools
To: Barebox List <barebox@lists.infradead.org>

This imports the tools/include dir from the Kernel as of 4.5-rc1 to
barebox.
The Kernel has many useful defines and helpers which are often
duplicated in the different tools. Let's create a copy of them
in a common place for all tools.

Some files have been skipped for now as I currently see no use for them:

include/linux/filter.h
include/linux/hash.h
include/linux/rbtree.h
include/linux/rbtree_augmented.h

They can be added later if needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/include/asm-generic/atomic-gcc.h           |  63 ++
 scripts/include/asm-generic/barrier.h              |  44 ++
 scripts/include/asm-generic/bitops.h               |  29 +
 scripts/include/asm-generic/bitops/__ffs.h         |  43 ++
 scripts/include/asm-generic/bitops/__fls.h         |   1 +
 scripts/include/asm-generic/bitops/arch_hweight.h  |   1 +
 scripts/include/asm-generic/bitops/atomic.h        |  22 +
 scripts/include/asm-generic/bitops/const_hweight.h |   1 +
 scripts/include/asm-generic/bitops/find.h          |  33 +
 scripts/include/asm-generic/bitops/fls.h           |   1 +
 scripts/include/asm-generic/bitops/fls64.h         |   1 +
 scripts/include/asm-generic/bitops/hweight.h       |   7 +
 scripts/include/asm/atomic.h                       |  10 +
 scripts/include/asm/barrier.h                      |  27 +
 scripts/include/asm/bug.h                          |  25 +
 scripts/include/linux/atomic.h                     |   6 +
 scripts/include/linux/bitmap.h                     |  68 ++
 scripts/include/linux/bitops.h                     |  58 ++
 scripts/include/linux/compiler.h                   | 118 ++++
 scripts/include/linux/err.h                        |  49 ++
 scripts/include/linux/export.h                     |  10 +
 scripts/include/linux/kernel.h                     | 107 +++
 scripts/include/linux/list.h                       | 771 +++++++++++++++++++++
 scripts/include/linux/log2.h                       | 185 +++++
 scripts/include/linux/poison.h                     |   1 +
 scripts/include/linux/string.h                     |  15 +
 scripts/include/linux/types.h                      |  83 +++
 scripts/include/tools/be_byteshift.h               |  70 ++
 scripts/include/tools/endian.h                     |  56 ++
 scripts/include/tools/le_byteshift.h               |  70 ++
 30 files changed, 1975 insertions(+)
 create mode 100644 scripts/include/asm-generic/atomic-gcc.h
 create mode 100644 scripts/include/asm-generic/barrier.h
 create mode 100644 scripts/include/asm-generic/bitops.h
 create mode 100644 scripts/include/asm-generic/bitops/__ffs.h
 create mode 100644 scripts/include/asm-generic/bitops/__fls.h
 create mode 100644 scripts/include/asm-generic/bitops/arch_hweight.h
 create mode 100644 scripts/include/asm-generic/bitops/atomic.h
 create mode 100644 scripts/include/asm-generic/bitops/const_hweight.h
 create mode 100644 scripts/include/asm-generic/bitops/find.h
 create mode 100644 scripts/include/asm-generic/bitops/fls.h
 create mode 100644 scripts/include/asm-generic/bitops/fls64.h
 create mode 100644 scripts/include/asm-generic/bitops/hweight.h
 create mode 100644 scripts/include/asm/atomic.h
 create mode 100644 scripts/include/asm/barrier.h
 create mode 100644 scripts/include/asm/bug.h
 create mode 100644 scripts/include/linux/atomic.h
 create mode 100644 scripts/include/linux/bitmap.h
 create mode 100644 scripts/include/linux/bitops.h
 create mode 100644 scripts/include/linux/compiler.h
 create mode 100644 scripts/include/linux/err.h
 create mode 100644 scripts/include/linux/export.h
 create mode 100644 scripts/include/linux/kernel.h
 create mode 100644 scripts/include/linux/list.h
 create mode 100644 scripts/include/linux/log2.h
 create mode 100644 scripts/include/linux/poison.h
 create mode 100644 scripts/include/linux/string.h
 create mode 100644 scripts/include/linux/types.h
 create mode 100644 scripts/include/tools/be_byteshift.h
 create mode 100644 scripts/include/tools/endian.h
 create mode 100644 scripts/include/tools/le_byteshift.h

diff --git a/scripts/include/asm-generic/atomic-gcc.h b/scripts/include/asm-generic/atomic-gcc.h
new file mode 100644
index 0000000..2ba78c9
--- /dev/null
+++ b/scripts/include/asm-generic/atomic-gcc.h
@@ -0,0 +1,63 @@
+#ifndef __TOOLS_ASM_GENERIC_ATOMIC_H
+#define __TOOLS_ASM_GENERIC_ATOMIC_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+/*
+ * Atomic operations that C can't guarantee us.  Useful for
+ * resource counting etc..
+ *
+ * Excerpts obtained from the Linux kernel sources.
+ */
+
+#define ATOMIC_INIT(i)	{ (i) }
+
+/**
+ * atomic_read - read atomic variable
+ * @v: pointer of type atomic_t
+ *
+ * Atomically reads the value of @v.
+ */
+static inline int atomic_read(const atomic_t *v)
+{
+	return ACCESS_ONCE((v)->counter);
+}
+
+/**
+ * atomic_set - set atomic variable
+ * @v: pointer of type atomic_t
+ * @i: required value
+ *
+ * Atomically sets the value of @v to @i.
+ */
+static inline void atomic_set(atomic_t *v, int i)
+{
+        v->counter = i;
+}
+
+/**
+ * atomic_inc - increment atomic variable
+ * @v: pointer of type atomic_t
+ *
+ * Atomically increments @v by 1.
+ */
+static inline void atomic_inc(atomic_t *v)
+{
+	__sync_add_and_fetch(&v->counter, 1);
+}
+
+/**
+ * atomic_dec_and_test - decrement and test
+ * @v: pointer of type atomic_t
+ *
+ * Atomically decrements @v by 1 and
+ * returns true if the result is 0, or false for all other
+ * cases.
+ */
+static inline int atomic_dec_and_test(atomic_t *v)
+{
+	return __sync_sub_and_fetch(&v->counter, 1) == 0;
+}
+
+#endif /* __TOOLS_ASM_GENERIC_ATOMIC_H */
diff --git a/scripts/include/asm-generic/barrier.h b/scripts/include/asm-generic/barrier.h
new file mode 100644
index 0000000..47b9339
--- /dev/null
+++ b/scripts/include/asm-generic/barrier.h
@@ -0,0 +1,44 @@
+/*
+ * Copied from the kernel sources to tools/perf/:
+ *
+ * Generic barrier definitions, originally based on MN10300 definitions.
+ *
+ * It should be possible to use these on really simple architectures,
+ * but it serves more as a starting point for new ports.
+ *
+ * Copyright (C) 2007 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public Licence
+ * as published by the Free Software Foundation; either version
+ * 2 of the Licence, or (at your option) any later version.
+ */
+#ifndef __TOOLS_LINUX_ASM_GENERIC_BARRIER_H
+#define __TOOLS_LINUX_ASM_GENERIC_BARRIER_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/compiler.h>
+
+/*
+ * Force strict CPU ordering. And yes, this is required on UP too when we're
+ * talking to devices.
+ *
+ * Fall back to compiler barriers if nothing better is provided.
+ */
+
+#ifndef mb
+#define mb()	barrier()
+#endif
+
+#ifndef rmb
+#define rmb()	mb()
+#endif
+
+#ifndef wmb
+#define wmb()	mb()
+#endif
+
+#endif /* !__ASSEMBLY__ */
+#endif /* __TOOLS_LINUX_ASM_GENERIC_BARRIER_H */
diff --git a/scripts/include/asm-generic/bitops.h b/scripts/include/asm-generic/bitops.h
new file mode 100644
index 0000000..653d1ba
--- /dev/null
+++ b/scripts/include/asm-generic/bitops.h
@@ -0,0 +1,29 @@
+#ifndef __TOOLS_ASM_GENERIC_BITOPS_H
+#define __TOOLS_ASM_GENERIC_BITOPS_H
+
+/*
+ * tools/ copied this from include/asm-generic/bitops.h, bit by bit as it needed
+ * some functions.
+ *
+ * For the benefit of those who are trying to port Linux to another
+ * architecture, here are some C-language equivalents.  You should
+ * recode these in the native assembly language, if at all possible.
+ *
+ * C language equivalents written by Theodore Ts'o, 9/26/92
+ */
+
+#include <asm-generic/bitops/__ffs.h>
+#include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/__fls.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+
+#ifndef _TOOLS_LINUX_BITOPS_H_
+#error only <linux/bitops.h> can be included directly
+#endif
+
+#include <asm-generic/bitops/hweight.h>
+
+#include <asm-generic/bitops/atomic.h>
+
+#endif /* __TOOLS_ASM_GENERIC_BITOPS_H */
diff --git a/scripts/include/asm-generic/bitops/__ffs.h b/scripts/include/asm-generic/bitops/__ffs.h
new file mode 100644
index 0000000..c941750
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/__ffs.h
@@ -0,0 +1,43 @@
+#ifndef _TOOLS_LINUX_ASM_GENERIC_BITOPS___FFS_H_
+#define _TOOLS_LINUX_ASM_GENERIC_BITOPS___FFS_H_
+
+#include <asm/types.h>
+
+/**
+ * __ffs - find first bit in word.
+ * @word: The word to search
+ *
+ * Undefined if no bit exists, so code should check against 0 first.
+ */
+static __always_inline unsigned long __ffs(unsigned long word)
+{
+	int num = 0;
+
+#if __BITS_PER_LONG == 64
+	if ((word & 0xffffffff) == 0) {
+		num += 32;
+		word >>= 32;
+	}
+#endif
+	if ((word & 0xffff) == 0) {
+		num += 16;
+		word >>= 16;
+	}
+	if ((word & 0xff) == 0) {
+		num += 8;
+		word >>= 8;
+	}
+	if ((word & 0xf) == 0) {
+		num += 4;
+		word >>= 4;
+	}
+	if ((word & 0x3) == 0) {
+		num += 2;
+		word >>= 2;
+	}
+	if ((word & 0x1) == 0)
+		num += 1;
+	return num;
+}
+
+#endif /* _TOOLS_LINUX_ASM_GENERIC_BITOPS___FFS_H_ */
diff --git a/scripts/include/asm-generic/bitops/__fls.h b/scripts/include/asm-generic/bitops/__fls.h
new file mode 100644
index 0000000..2218b9a
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/__fls.h
@@ -0,0 +1 @@
+#include <../../../../include/asm-generic/bitops/__fls.h>
diff --git a/scripts/include/asm-generic/bitops/arch_hweight.h b/scripts/include/asm-generic/bitops/arch_hweight.h
new file mode 100644
index 0000000..318bb2b
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/arch_hweight.h
@@ -0,0 +1 @@
+#include "../../../../include/asm-generic/bitops/arch_hweight.h"
diff --git a/scripts/include/asm-generic/bitops/atomic.h b/scripts/include/asm-generic/bitops/atomic.h
new file mode 100644
index 0000000..4bccd7c
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/atomic.h
@@ -0,0 +1,22 @@
+#ifndef _TOOLS_LINUX_ASM_GENERIC_BITOPS_ATOMIC_H_
+#define _TOOLS_LINUX_ASM_GENERIC_BITOPS_ATOMIC_H_
+
+#include <asm/types.h>
+
+static inline void set_bit(int nr, unsigned long *addr)
+{
+	addr[nr / __BITS_PER_LONG] |= 1UL << (nr % __BITS_PER_LONG);
+}
+
+static inline void clear_bit(int nr, unsigned long *addr)
+{
+	addr[nr / __BITS_PER_LONG] &= ~(1UL << (nr % __BITS_PER_LONG));
+}
+
+static __always_inline int test_bit(unsigned int nr, const unsigned long *addr)
+{
+	return ((1UL << (nr % __BITS_PER_LONG)) &
+		(((unsigned long *)addr)[nr / __BITS_PER_LONG])) != 0;
+}
+
+#endif /* _TOOLS_LINUX_ASM_GENERIC_BITOPS_ATOMIC_H_ */
diff --git a/scripts/include/asm-generic/bitops/const_hweight.h b/scripts/include/asm-generic/bitops/const_hweight.h
new file mode 100644
index 0000000..0afd644
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/const_hweight.h
@@ -0,0 +1 @@
+#include "../../../../include/asm-generic/bitops/const_hweight.h"
diff --git a/scripts/include/asm-generic/bitops/find.h b/scripts/include/asm-generic/bitops/find.h
new file mode 100644
index 0000000..31f5154
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/find.h
@@ -0,0 +1,33 @@
+#ifndef _TOOLS_LINUX_ASM_GENERIC_BITOPS_FIND_H_
+#define _TOOLS_LINUX_ASM_GENERIC_BITOPS_FIND_H_
+
+#ifndef find_next_bit
+/**
+ * find_next_bit - find the next set bit in a memory region
+ * @addr: The address to base the search on
+ * @offset: The bitnumber to start searching at
+ * @size: The bitmap size in bits
+ *
+ * Returns the bit number for the next set bit
+ * If no bits are set, returns @size.
+ */
+extern unsigned long find_next_bit(const unsigned long *addr, unsigned long
+		size, unsigned long offset);
+#endif
+
+#ifndef find_first_bit
+
+/**
+ * find_first_bit - find the first set bit in a memory region
+ * @addr: The address to start the search at
+ * @size: The maximum number of bits to search
+ *
+ * Returns the bit number of the first set bit.
+ * If no bits are set, returns @size.
+ */
+extern unsigned long find_first_bit(const unsigned long *addr,
+				    unsigned long size);
+
+#endif /* find_first_bit */
+
+#endif /*_TOOLS_LINUX_ASM_GENERIC_BITOPS_FIND_H_ */
diff --git a/scripts/include/asm-generic/bitops/fls.h b/scripts/include/asm-generic/bitops/fls.h
new file mode 100644
index 0000000..dbf711a
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/fls.h
@@ -0,0 +1 @@
+#include <../../../../include/asm-generic/bitops/fls.h>
diff --git a/scripts/include/asm-generic/bitops/fls64.h b/scripts/include/asm-generic/bitops/fls64.h
new file mode 100644
index 0000000..980b1f6
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/fls64.h
@@ -0,0 +1 @@
+#include <../../../../include/asm-generic/bitops/fls64.h>
diff --git a/scripts/include/asm-generic/bitops/hweight.h b/scripts/include/asm-generic/bitops/hweight.h
new file mode 100644
index 0000000..290120c
--- /dev/null
+++ b/scripts/include/asm-generic/bitops/hweight.h
@@ -0,0 +1,7 @@
+#ifndef _TOOLS_LINUX_ASM_GENERIC_BITOPS_HWEIGHT_H_
+#define _TOOLS_LINUX_ASM_GENERIC_BITOPS_HWEIGHT_H_
+
+#include <asm-generic/bitops/arch_hweight.h>
+#include <asm-generic/bitops/const_hweight.h>
+
+#endif /* _TOOLS_LINUX_ASM_GENERIC_BITOPS_HWEIGHT_H_ */
diff --git a/scripts/include/asm/atomic.h b/scripts/include/asm/atomic.h
new file mode 100644
index 0000000..70794f5
--- /dev/null
+++ b/scripts/include/asm/atomic.h
@@ -0,0 +1,10 @@
+#ifndef __TOOLS_LINUX_ASM_ATOMIC_H
+#define __TOOLS_LINUX_ASM_ATOMIC_H
+
+#if defined(__i386__) || defined(__x86_64__)
+#include "../../arch/x86/include/asm/atomic.h"
+#else
+#include <asm-generic/atomic-gcc.h>
+#endif
+
+#endif /* __TOOLS_LINUX_ASM_ATOMIC_H */
diff --git a/scripts/include/asm/barrier.h b/scripts/include/asm/barrier.h
new file mode 100644
index 0000000..ac66ac5
--- /dev/null
+++ b/scripts/include/asm/barrier.h
@@ -0,0 +1,27 @@
+#if defined(__i386__) || defined(__x86_64__)
+#include "../../arch/x86/include/asm/barrier.h"
+#elif defined(__arm__)
+#include "../../arch/arm/include/asm/barrier.h"
+#elif defined(__aarch64__)
+#include "../../arch/arm64/include/asm/barrier.h"
+#elif defined(__powerpc__)
+#include "../../arch/powerpc/include/asm/barrier.h"
+#elif defined(__s390__)
+#include "../../arch/s390/include/asm/barrier.h"
+#elif defined(__sh__)
+#include "../../arch/sh/include/asm/barrier.h"
+#elif defined(__sparc__)
+#include "../../arch/sparc/include/asm/barrier.h"
+#elif defined(__tile__)
+#include "../../arch/tile/include/asm/barrier.h"
+#elif defined(__alpha__)
+#include "../../arch/alpha/include/asm/barrier.h"
+#elif defined(__mips__)
+#include "../../arch/mips/include/asm/barrier.h"
+#elif defined(__ia64__)
+#include "../../arch/ia64/include/asm/barrier.h"
+#elif defined(__xtensa__)
+#include "../../arch/xtensa/include/asm/barrier.h"
+#else
+#include <asm-generic/barrier.h>
+#endif
diff --git a/scripts/include/asm/bug.h b/scripts/include/asm/bug.h
new file mode 100644
index 0000000..9e5f484
--- /dev/null
+++ b/scripts/include/asm/bug.h
@@ -0,0 +1,25 @@
+#ifndef _TOOLS_ASM_BUG_H
+#define _TOOLS_ASM_BUG_H
+
+#include <linux/compiler.h>
+
+#define __WARN_printf(arg...)	do { fprintf(stderr, arg); } while (0)
+
+#define WARN(condition, format...) ({		\
+	int __ret_warn_on = !!(condition);	\
+	if (unlikely(__ret_warn_on))		\
+		__WARN_printf(format);		\
+	unlikely(__ret_warn_on);		\
+})
+
+#define WARN_ONCE(condition, format...)	({	\
+	static int __warned;			\
+	int __ret_warn_once = !!(condition);	\
+						\
+	if (unlikely(__ret_warn_once))		\
+		if (WARN(!__warned, format)) 	\
+			__warned = 1;		\
+	unlikely(__ret_warn_once);		\
+})
+
+#endif /* _TOOLS_ASM_BUG_H */
diff --git a/scripts/include/linux/atomic.h b/scripts/include/linux/atomic.h
new file mode 100644
index 0000000..4e3d3d1
--- /dev/null
+++ b/scripts/include/linux/atomic.h
@@ -0,0 +1,6 @@
+#ifndef __TOOLS_LINUX_ATOMIC_H
+#define __TOOLS_LINUX_ATOMIC_H
+
+#include <asm/atomic.h>
+
+#endif /* __TOOLS_LINUX_ATOMIC_H */
diff --git a/scripts/include/linux/bitmap.h b/scripts/include/linux/bitmap.h
new file mode 100644
index 0000000..28f5493
--- /dev/null
+++ b/scripts/include/linux/bitmap.h
@@ -0,0 +1,68 @@
+#ifndef _PERF_BITOPS_H
+#define _PERF_BITOPS_H
+
+#include <string.h>
+#include <linux/bitops.h>
+
+#define DECLARE_BITMAP(name,bits) \
+	unsigned long name[BITS_TO_LONGS(bits)]
+
+int __bitmap_weight(const unsigned long *bitmap, int bits);
+void __bitmap_or(unsigned long *dst, const unsigned long *bitmap1,
+		 const unsigned long *bitmap2, int bits);
+
+#define BITMAP_FIRST_WORD_MASK(start) (~0UL << ((start) & (BITS_PER_LONG - 1)))
+
+#define BITMAP_LAST_WORD_MASK(nbits)					\
+(									\
+	((nbits) % BITS_PER_LONG) ?					\
+		(1UL<<((nbits) % BITS_PER_LONG))-1 : ~0UL		\
+)
+
+#define small_const_nbits(nbits) \
+	(__builtin_constant_p(nbits) && (nbits) <= BITS_PER_LONG)
+
+static inline void bitmap_zero(unsigned long *dst, int nbits)
+{
+	if (small_const_nbits(nbits))
+		*dst = 0UL;
+	else {
+		int len = BITS_TO_LONGS(nbits) * sizeof(unsigned long);
+		memset(dst, 0, len);
+	}
+}
+
+static inline int bitmap_weight(const unsigned long *src, int nbits)
+{
+	if (small_const_nbits(nbits))
+		return hweight_long(*src & BITMAP_LAST_WORD_MASK(nbits));
+	return __bitmap_weight(src, nbits);
+}
+
+static inline void bitmap_or(unsigned long *dst, const unsigned long *src1,
+			     const unsigned long *src2, int nbits)
+{
+	if (small_const_nbits(nbits))
+		*dst = *src1 | *src2;
+	else
+		__bitmap_or(dst, src1, src2, nbits);
+}
+
+/**
+ * test_and_set_bit - Set a bit and return its old value
+ * @nr: Bit to set
+ * @addr: Address to count from
+ */
+static inline int test_and_set_bit(int nr, unsigned long *addr)
+{
+	unsigned long mask = BIT_MASK(nr);
+	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
+	unsigned long old;
+
+	old = *p;
+	*p = old | mask;
+
+	return (old & mask) != 0;
+}
+
+#endif /* _PERF_BITOPS_H */
diff --git a/scripts/include/linux/bitops.h b/scripts/include/linux/bitops.h
new file mode 100644
index 0000000..5ad9ee1
--- /dev/null
+++ b/scripts/include/linux/bitops.h
@@ -0,0 +1,58 @@
+#ifndef _TOOLS_LINUX_BITOPS_H_
+#define _TOOLS_LINUX_BITOPS_H_
+
+#include <asm/types.h>
+#include <linux/kernel.h>
+#include <linux/compiler.h>
+
+#ifndef __WORDSIZE
+#define __WORDSIZE (__SIZEOF_LONG__ * 8)
+#endif
+
+#define BITS_PER_LONG __WORDSIZE
+
+#define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
+#define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
+#define BITS_PER_BYTE		8
+#define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(long))
+#define BITS_TO_U64(nr)		DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u64))
+#define BITS_TO_U32(nr)		DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u32))
+#define BITS_TO_BYTES(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE)
+
+extern unsigned int __sw_hweight8(unsigned int w);
+extern unsigned int __sw_hweight16(unsigned int w);
+extern unsigned int __sw_hweight32(unsigned int w);
+extern unsigned long __sw_hweight64(__u64 w);
+
+/*
+ * Include this here because some architectures need generic_ffs/fls in
+ * scope
+ *
+ * XXX: this needs to be asm/bitops.h, when we get to per arch optimizations
+ */
+#include <asm-generic/bitops.h>
+
+#define for_each_set_bit(bit, addr, size) \
+	for ((bit) = find_first_bit((addr), (size));		\
+	     (bit) < (size);					\
+	     (bit) = find_next_bit((addr), (size), (bit) + 1))
+
+/* same as for_each_set_bit() but use bit as value to start with */
+#define for_each_set_bit_from(bit, addr, size) \
+	for ((bit) = find_next_bit((addr), (size), (bit));	\
+	     (bit) < (size);					\
+	     (bit) = find_next_bit((addr), (size), (bit) + 1))
+
+static inline unsigned long hweight_long(unsigned long w)
+{
+	return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
+}
+
+static inline unsigned fls_long(unsigned long l)
+{
+	if (sizeof(l) == 4)
+		return fls(l);
+	return fls64(l);
+}
+
+#endif
diff --git a/scripts/include/linux/compiler.h b/scripts/include/linux/compiler.h
new file mode 100644
index 0000000..fa7208a
--- /dev/null
+++ b/scripts/include/linux/compiler.h
@@ -0,0 +1,118 @@
+#ifndef _TOOLS_LINUX_COMPILER_H_
+#define _TOOLS_LINUX_COMPILER_H_
+
+/* Optimization barrier */
+/* The "volatile" is due to gcc bugs */
+#define barrier() __asm__ __volatile__("": : :"memory")
+
+#ifndef __always_inline
+# define __always_inline	inline __attribute__((always_inline))
+#endif
+
+#define __user
+
+#ifndef __attribute_const__
+# define __attribute_const__
+#endif
+
+#ifndef __maybe_unused
+# define __maybe_unused		__attribute__((unused))
+#endif
+
+#ifndef __packed
+# define __packed		__attribute__((__packed__))
+#endif
+
+#ifndef __force
+# define __force
+#endif
+
+#ifndef __weak
+# define __weak			__attribute__((weak))
+#endif
+
+#ifndef likely
+# define likely(x)		__builtin_expect(!!(x), 1)
+#endif
+
+#ifndef unlikely
+# define unlikely(x)		__builtin_expect(!!(x), 0)
+#endif
+
+#define ACCESS_ONCE(x) (*(volatile typeof(x) *)&(x))
+
+#include <linux/types.h>
+
+/*
+ * Following functions are taken from kernel sources and
+ * break aliasing rules in their original form.
+ *
+ * While kernel is compiled with -fno-strict-aliasing,
+ * perf uses -Wstrict-aliasing=3 which makes build fail
+ * under gcc 4.4.
+ *
+ * Using extra __may_alias__ type to allow aliasing
+ * in this case.
+ */
+typedef __u8  __attribute__((__may_alias__))  __u8_alias_t;
+typedef __u16 __attribute__((__may_alias__)) __u16_alias_t;
+typedef __u32 __attribute__((__may_alias__)) __u32_alias_t;
+typedef __u64 __attribute__((__may_alias__)) __u64_alias_t;
+
+static __always_inline void __read_once_size(const volatile void *p, void *res, int size)
+{
+	switch (size) {
+	case 1: *(__u8_alias_t  *) res = *(volatile __u8_alias_t  *) p; break;
+	case 2: *(__u16_alias_t *) res = *(volatile __u16_alias_t *) p; break;
+	case 4: *(__u32_alias_t *) res = *(volatile __u32_alias_t *) p; break;
+	case 8: *(__u64_alias_t *) res = *(volatile __u64_alias_t *) p; break;
+	default:
+		barrier();
+		__builtin_memcpy((void *)res, (const void *)p, size);
+		barrier();
+	}
+}
+
+static __always_inline void __write_once_size(volatile void *p, void *res, int size)
+{
+	switch (size) {
+	case 1: *(volatile  __u8_alias_t *) p = *(__u8_alias_t  *) res; break;
+	case 2: *(volatile __u16_alias_t *) p = *(__u16_alias_t *) res; break;
+	case 4: *(volatile __u32_alias_t *) p = *(__u32_alias_t *) res; break;
+	case 8: *(volatile __u64_alias_t *) p = *(__u64_alias_t *) res; break;
+	default:
+		barrier();
+		__builtin_memcpy((void *)p, (const void *)res, size);
+		barrier();
+	}
+}
+
+/*
+ * Prevent the compiler from merging or refetching reads or writes. The
+ * compiler is also forbidden from reordering successive instances of
+ * READ_ONCE, WRITE_ONCE and ACCESS_ONCE (see below), but only when the
+ * compiler is aware of some particular ordering.  One way to make the
+ * compiler aware of ordering is to put the two invocations of READ_ONCE,
+ * WRITE_ONCE or ACCESS_ONCE() in different C statements.
+ *
+ * In contrast to ACCESS_ONCE these two macros will also work on aggregate
+ * data types like structs or unions. If the size of the accessed data
+ * type exceeds the word size of the machine (e.g., 32 bits or 64 bits)
+ * READ_ONCE() and WRITE_ONCE()  will fall back to memcpy and print a
+ * compile-time warning.
+ *
+ * Their two major use cases are: (1) Mediating communication between
+ * process-level code and irq/NMI handlers, all running on the same CPU,
+ * and (2) Ensuring that the compiler does not  fold, spindle, or otherwise
+ * mutilate accesses that either do not require ordering or that interact
+ * with an explicit memory barrier or atomic instruction that provides the
+ * required ordering.
+ */
+
+#define READ_ONCE(x) \
+	({ union { typeof(x) __val; char __c[1]; } __u; __read_once_size(&(x), __u.__c, sizeof(x)); __u.__val; })
+
+#define WRITE_ONCE(x, val) \
+	({ union { typeof(x) __val; char __c[1]; } __u = { .__val = (val) }; __write_once_size(&(x), __u.__c, sizeof(x)); __u.__val; })
+
+#endif /* _TOOLS_LINUX_COMPILER_H */
diff --git a/scripts/include/linux/err.h b/scripts/include/linux/err.h
new file mode 100644
index 0000000..bdc3dd8
--- /dev/null
+++ b/scripts/include/linux/err.h
@@ -0,0 +1,49 @@
+#ifndef __TOOLS_LINUX_ERR_H
+#define __TOOLS_LINUX_ERR_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+#include <asm/errno.h>
+
+/*
+ * Original kernel header comment:
+ *
+ * Kernel pointers have redundant information, so we can use a
+ * scheme where we can return either an error code or a normal
+ * pointer with the same return value.
+ *
+ * This should be a per-architecture thing, to allow different
+ * error and pointer decisions.
+ *
+ * Userspace note:
+ * The same principle works for userspace, because 'error' pointers
+ * fall down to the unused hole far from user space, as described
+ * in Documentation/x86/x86_64/mm.txt for x86_64 arch:
+ *
+ * 0000000000000000 - 00007fffffffffff (=47 bits) user space, different per mm hole caused by [48:63] sign extension
+ * ffffffffffe00000 - ffffffffffffffff (=2 MB) unused hole
+ *
+ * It should be the same case for other architectures, because
+ * this code is used in generic kernel code.
+ */
+#define MAX_ERRNO	4095
+
+#define IS_ERR_VALUE(x) unlikely((x) >= (unsigned long)-MAX_ERRNO)
+
+static inline void * __must_check ERR_PTR(long error_)
+{
+	return (void *) error_;
+}
+
+static inline long __must_check PTR_ERR(__force const void *ptr)
+{
+	return (long) ptr;
+}
+
+static inline bool __must_check IS_ERR(__force const void *ptr)
+{
+	return IS_ERR_VALUE((unsigned long)ptr);
+}
+
+#endif /* _LINUX_ERR_H */
diff --git a/scripts/include/linux/export.h b/scripts/include/linux/export.h
new file mode 100644
index 0000000..d07e586
--- /dev/null
+++ b/scripts/include/linux/export.h
@@ -0,0 +1,10 @@
+#ifndef _TOOLS_LINUX_EXPORT_H_
+#define _TOOLS_LINUX_EXPORT_H_
+
+#define EXPORT_SYMBOL(sym)
+#define EXPORT_SYMBOL_GPL(sym)
+#define EXPORT_SYMBOL_GPL_FUTURE(sym)
+#define EXPORT_UNUSED_SYMBOL(sym)
+#define EXPORT_UNUSED_SYMBOL_GPL(sym)
+
+#endif
diff --git a/scripts/include/linux/kernel.h b/scripts/include/linux/kernel.h
new file mode 100644
index 0000000..76df535
--- /dev/null
+++ b/scripts/include/linux/kernel.h
@@ -0,0 +1,107 @@
+#ifndef __TOOLS_LINUX_KERNEL_H
+#define __TOOLS_LINUX_KERNEL_H
+
+#include <stdarg.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <assert.h>
+
+#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
+
+#define PERF_ALIGN(x, a)	__PERF_ALIGN_MASK(x, (typeof(x))(a)-1)
+#define __PERF_ALIGN_MASK(x, mask)	(((x)+(mask))&~(mask))
+
+#ifndef offsetof
+#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
+#endif
+
+#ifndef container_of
+/**
+ * container_of - cast a member of a structure out to the containing structure
+ * @ptr:	the pointer to the member.
+ * @type:	the type of the container struct this is embedded in.
+ * @member:	the name of the member within the struct.
+ *
+ */
+#define container_of(ptr, type, member) ({			\
+	const typeof(((type *)0)->member) * __mptr = (ptr);	\
+	(type *)((char *)__mptr - offsetof(type, member)); })
+#endif
+
+#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:-!!(e); }))
+
+#ifndef max
+#define max(x, y) ({				\
+	typeof(x) _max1 = (x);			\
+	typeof(y) _max2 = (y);			\
+	(void) (&_max1 == &_max2);		\
+	_max1 > _max2 ? _max1 : _max2; })
+#endif
+
+#ifndef min
+#define min(x, y) ({				\
+	typeof(x) _min1 = (x);			\
+	typeof(y) _min2 = (y);			\
+	(void) (&_min1 == &_min2);		\
+	_min1 < _min2 ? _min1 : _min2; })
+#endif
+
+#ifndef roundup
+#define roundup(x, y) (                                \
+{                                                      \
+	const typeof(y) __y = y;		       \
+	(((x) + (__y - 1)) / __y) * __y;	       \
+}                                                      \
+)
+#endif
+
+#ifndef BUG_ON
+#ifdef NDEBUG
+#define BUG_ON(cond) do { if (cond) {} } while (0)
+#else
+#define BUG_ON(cond) assert(!(cond))
+#endif
+#endif
+
+/*
+ * Both need more care to handle endianness
+ * (Don't use bitmap_copy_le() for now)
+ */
+#define cpu_to_le64(x)	(x)
+#define cpu_to_le32(x)	(x)
+
+static inline int
+vscnprintf(char *buf, size_t size, const char *fmt, va_list args)
+{
+	int i;
+	ssize_t ssize = size;
+
+	i = vsnprintf(buf, size, fmt, args);
+
+	return (i >= ssize) ? (ssize - 1) : i;
+}
+
+static inline int scnprintf(char * buf, size_t size, const char * fmt, ...)
+{
+	va_list args;
+	ssize_t ssize = size;
+	int i;
+
+	va_start(args, fmt);
+	i = vsnprintf(buf, size, fmt, args);
+	va_end(args);
+
+	return (i >= ssize) ? (ssize - 1) : i;
+}
+
+/*
+ * This looks more complex than it should be. But we need to
+ * get the type for the ~ right in round_down (it needs to be
+ * as wide as the result!), and we want to evaluate the macro
+ * arguments just once each.
+ */
+#define __round_mask(x, y) ((__typeof__(x))((y)-1))
+#define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
+#define round_down(x, y) ((x) & ~__round_mask(x, y))
+
+#endif
diff --git a/scripts/include/linux/list.h b/scripts/include/linux/list.h
new file mode 100644
index 0000000..1da4238
--- /dev/null
+++ b/scripts/include/linux/list.h
@@ -0,0 +1,771 @@
+#ifndef __TOOLS_LINUX_LIST_H
+#define __TOOLS_LINUX_LIST_H
+
+#include <linux/types.h>
+#include <linux/poison.h>
+#include <linux/kernel.h>
+#include <linux/compiler.h>
+
+/*
+ * Simple doubly linked list implementation.
+ *
+ * Some of the internal functions ("__xxx") are useful when
+ * manipulating whole lists rather than single entries, as
+ * sometimes we already know the next/prev entries and we can
+ * generate better code by using them directly rather than
+ * using the generic single-entry routines.
+ */
+
+#define LIST_HEAD_INIT(name) { &(name), &(name) }
+
+#define LIST_HEAD(name) \
+	struct list_head name = LIST_HEAD_INIT(name)
+
+static inline void INIT_LIST_HEAD(struct list_head *list)
+{
+	list->next = list;
+	list->prev = list;
+}
+
+/*
+ * Insert a new entry between two known consecutive entries.
+ *
+ * This is only for internal list manipulation where we know
+ * the prev/next entries already!
+ */
+#ifndef CONFIG_DEBUG_LIST
+static inline void __list_add(struct list_head *new,
+			      struct list_head *prev,
+			      struct list_head *next)
+{
+	next->prev = new;
+	new->next = next;
+	new->prev = prev;
+	prev->next = new;
+}
+#else
+extern void __list_add(struct list_head *new,
+			      struct list_head *prev,
+			      struct list_head *next);
+#endif
+
+/**
+ * list_add - add a new entry
+ * @new: new entry to be added
+ * @head: list head to add it after
+ *
+ * Insert a new entry after the specified head.
+ * This is good for implementing stacks.
+ */
+static inline void list_add(struct list_head *new, struct list_head *head)
+{
+	__list_add(new, head, head->next);
+}
+
+
+/**
+ * list_add_tail - add a new entry
+ * @new: new entry to be added
+ * @head: list head to add it before
+ *
+ * Insert a new entry before the specified head.
+ * This is useful for implementing queues.
+ */
+static inline void list_add_tail(struct list_head *new, struct list_head *head)
+{
+	__list_add(new, head->prev, head);
+}
+
+/*
+ * Delete a list entry by making the prev/next entries
+ * point to each other.
+ *
+ * This is only for internal list manipulation where we know
+ * the prev/next entries already!
+ */
+static inline void __list_del(struct list_head * prev, struct list_head * next)
+{
+	next->prev = prev;
+	WRITE_ONCE(prev->next, next);
+}
+
+/**
+ * list_del - deletes entry from list.
+ * @entry: the element to delete from the list.
+ * Note: list_empty() on entry does not return true after this, the entry is
+ * in an undefined state.
+ */
+#ifndef CONFIG_DEBUG_LIST
+static inline void __list_del_entry(struct list_head *entry)
+{
+	__list_del(entry->prev, entry->next);
+}
+
+static inline void list_del(struct list_head *entry)
+{
+	__list_del(entry->prev, entry->next);
+	entry->next = LIST_POISON1;
+	entry->prev = LIST_POISON2;
+}
+#else
+extern void __list_del_entry(struct list_head *entry);
+extern void list_del(struct list_head *entry);
+#endif
+
+/**
+ * list_replace - replace old entry by new one
+ * @old : the element to be replaced
+ * @new : the new element to insert
+ *
+ * If @old was empty, it will be overwritten.
+ */
+static inline void list_replace(struct list_head *old,
+				struct list_head *new)
+{
+	new->next = old->next;
+	new->next->prev = new;
+	new->prev = old->prev;
+	new->prev->next = new;
+}
+
+static inline void list_replace_init(struct list_head *old,
+					struct list_head *new)
+{
+	list_replace(old, new);
+	INIT_LIST_HEAD(old);
+}
+
+/**
+ * list_del_init - deletes entry from list and reinitialize it.
+ * @entry: the element to delete from the list.
+ */
+static inline void list_del_init(struct list_head *entry)
+{
+	__list_del_entry(entry);
+	INIT_LIST_HEAD(entry);
+}
+
+/**
+ * list_move - delete from one list and add as another's head
+ * @list: the entry to move
+ * @head: the head that will precede our entry
+ */
+static inline void list_move(struct list_head *list, struct list_head *head)
+{
+	__list_del_entry(list);
+	list_add(list, head);
+}
+
+/**
+ * list_move_tail - delete from one list and add as another's tail
+ * @list: the entry to move
+ * @head: the head that will follow our entry
+ */
+static inline void list_move_tail(struct list_head *list,
+				  struct list_head *head)
+{
+	__list_del_entry(list);
+	list_add_tail(list, head);
+}
+
+/**
+ * list_is_last - tests whether @list is the last entry in list @head
+ * @list: the entry to test
+ * @head: the head of the list
+ */
+static inline int list_is_last(const struct list_head *list,
+				const struct list_head *head)
+{
+	return list->next == head;
+}
+
+/**
+ * list_empty - tests whether a list is empty
+ * @head: the list to test.
+ */
+static inline int list_empty(const struct list_head *head)
+{
+	return head->next == head;
+}
+
+/**
+ * list_empty_careful - tests whether a list is empty and not being modified
+ * @head: the list to test
+ *
+ * Description:
+ * tests whether a list is empty _and_ checks that no other CPU might be
+ * in the process of modifying either member (next or prev)
+ *
+ * NOTE: using list_empty_careful() without synchronization
+ * can only be safe if the only activity that can happen
+ * to the list entry is list_del_init(). Eg. it cannot be used
+ * if another CPU could re-list_add() it.
+ */
+static inline int list_empty_careful(const struct list_head *head)
+{
+	struct list_head *next = head->next;
+	return (next == head) && (next == head->prev);
+}
+
+/**
+ * list_rotate_left - rotate the list to the left
+ * @head: the head of the list
+ */
+static inline void list_rotate_left(struct list_head *head)
+{
+	struct list_head *first;
+
+	if (!list_empty(head)) {
+		first = head->next;
+		list_move_tail(first, head);
+	}
+}
+
+/**
+ * list_is_singular - tests whether a list has just one entry.
+ * @head: the list to test.
+ */
+static inline int list_is_singular(const struct list_head *head)
+{
+	return !list_empty(head) && (head->next == head->prev);
+}
+
+static inline void __list_cut_position(struct list_head *list,
+		struct list_head *head, struct list_head *entry)
+{
+	struct list_head *new_first = entry->next;
+	list->next = head->next;
+	list->next->prev = list;
+	list->prev = entry;
+	entry->next = list;
+	head->next = new_first;
+	new_first->prev = head;
+}
+
+/**
+ * list_cut_position - cut a list into two
+ * @list: a new list to add all removed entries
+ * @head: a list with entries
+ * @entry: an entry within head, could be the head itself
+ *	and if so we won't cut the list
+ *
+ * This helper moves the initial part of @head, up to and
+ * including @entry, from @head to @list. You should
+ * pass on @entry an element you know is on @head. @list
+ * should be an empty list or a list you do not care about
+ * losing its data.
+ *
+ */
+static inline void list_cut_position(struct list_head *list,
+		struct list_head *head, struct list_head *entry)
+{
+	if (list_empty(head))
+		return;
+	if (list_is_singular(head) &&
+		(head->next != entry && head != entry))
+		return;
+	if (entry == head)
+		INIT_LIST_HEAD(list);
+	else
+		__list_cut_position(list, head, entry);
+}
+
+static inline void __list_splice(const struct list_head *list,
+				 struct list_head *prev,
+				 struct list_head *next)
+{
+	struct list_head *first = list->next;
+	struct list_head *last = list->prev;
+
+	first->prev = prev;
+	prev->next = first;
+
+	last->next = next;
+	next->prev = last;
+}
+
+/**
+ * list_splice - join two lists, this is designed for stacks
+ * @list: the new list to add.
+ * @head: the place to add it in the first list.
+ */
+static inline void list_splice(const struct list_head *list,
+				struct list_head *head)
+{
+	if (!list_empty(list))
+		__list_splice(list, head, head->next);
+}
+
+/**
+ * list_splice_tail - join two lists, each list being a queue
+ * @list: the new list to add.
+ * @head: the place to add it in the first list.
+ */
+static inline void list_splice_tail(struct list_head *list,
+				struct list_head *head)
+{
+	if (!list_empty(list))
+		__list_splice(list, head->prev, head);
+}
+
+/**
+ * list_splice_init - join two lists and reinitialise the emptied list.
+ * @list: the new list to add.
+ * @head: the place to add it in the first list.
+ *
+ * The list at @list is reinitialised
+ */
+static inline void list_splice_init(struct list_head *list,
+				    struct list_head *head)
+{
+	if (!list_empty(list)) {
+		__list_splice(list, head, head->next);
+		INIT_LIST_HEAD(list);
+	}
+}
+
+/**
+ * list_splice_tail_init - join two lists and reinitialise the emptied list
+ * @list: the new list to add.
+ * @head: the place to add it in the first list.
+ *
+ * Each of the lists is a queue.
+ * The list at @list is reinitialised
+ */
+static inline void list_splice_tail_init(struct list_head *list,
+					 struct list_head *head)
+{
+	if (!list_empty(list)) {
+		__list_splice(list, head->prev, head);
+		INIT_LIST_HEAD(list);
+	}
+}
+
+/**
+ * list_entry - get the struct for this entry
+ * @ptr:	the &struct list_head pointer.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_head within the struct.
+ */
+#define list_entry(ptr, type, member) \
+	container_of(ptr, type, member)
+
+/**
+ * list_first_entry - get the first element from a list
+ * @ptr:	the list head to take the element from.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Note, that list is expected to be not empty.
+ */
+#define list_first_entry(ptr, type, member) \
+	list_entry((ptr)->next, type, member)
+
+/**
+ * list_last_entry - get the last element from a list
+ * @ptr:	the list head to take the element from.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Note, that list is expected to be not empty.
+ */
+#define list_last_entry(ptr, type, member) \
+	list_entry((ptr)->prev, type, member)
+
+/**
+ * list_first_entry_or_null - get the first element from a list
+ * @ptr:	the list head to take the element from.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Note that if the list is empty, it returns NULL.
+ */
+#define list_first_entry_or_null(ptr, type, member) \
+	(!list_empty(ptr) ? list_first_entry(ptr, type, member) : NULL)
+
+/**
+ * list_next_entry - get the next element in list
+ * @pos:	the type * to cursor
+ * @member:	the name of the list_head within the struct.
+ */
+#define list_next_entry(pos, member) \
+	list_entry((pos)->member.next, typeof(*(pos)), member)
+
+/**
+ * list_prev_entry - get the prev element in list
+ * @pos:	the type * to cursor
+ * @member:	the name of the list_head within the struct.
+ */
+#define list_prev_entry(pos, member) \
+	list_entry((pos)->member.prev, typeof(*(pos)), member)
+
+/**
+ * list_for_each	-	iterate over a list
+ * @pos:	the &struct list_head to use as a loop cursor.
+ * @head:	the head for your list.
+ */
+#define list_for_each(pos, head) \
+	for (pos = (head)->next; pos != (head); pos = pos->next)
+
+/**
+ * list_for_each_prev	-	iterate over a list backwards
+ * @pos:	the &struct list_head to use as a loop cursor.
+ * @head:	the head for your list.
+ */
+#define list_for_each_prev(pos, head) \
+	for (pos = (head)->prev; pos != (head); pos = pos->prev)
+
+/**
+ * list_for_each_safe - iterate over a list safe against removal of list entry
+ * @pos:	the &struct list_head to use as a loop cursor.
+ * @n:		another &struct list_head to use as temporary storage
+ * @head:	the head for your list.
+ */
+#define list_for_each_safe(pos, n, head) \
+	for (pos = (head)->next, n = pos->next; pos != (head); \
+		pos = n, n = pos->next)
+
+/**
+ * list_for_each_prev_safe - iterate over a list backwards safe against removal of list entry
+ * @pos:	the &struct list_head to use as a loop cursor.
+ * @n:		another &struct list_head to use as temporary storage
+ * @head:	the head for your list.
+ */
+#define list_for_each_prev_safe(pos, n, head) \
+	for (pos = (head)->prev, n = pos->prev; \
+	     pos != (head); \
+	     pos = n, n = pos->prev)
+
+/**
+ * list_for_each_entry	-	iterate over list of given type
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ */
+#define list_for_each_entry(pos, head, member)				\
+	for (pos = list_first_entry(head, typeof(*pos), member);	\
+	     &pos->member != (head);					\
+	     pos = list_next_entry(pos, member))
+
+/**
+ * list_for_each_entry_reverse - iterate backwards over list of given type.
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ */
+#define list_for_each_entry_reverse(pos, head, member)			\
+	for (pos = list_last_entry(head, typeof(*pos), member);		\
+	     &pos->member != (head); 					\
+	     pos = list_prev_entry(pos, member))
+
+/**
+ * list_prepare_entry - prepare a pos entry for use in list_for_each_entry_continue()
+ * @pos:	the type * to use as a start point
+ * @head:	the head of the list
+ * @member:	the name of the list_head within the struct.
+ *
+ * Prepares a pos entry for use as a start point in list_for_each_entry_continue().
+ */
+#define list_prepare_entry(pos, head, member) \
+	((pos) ? : list_entry(head, typeof(*pos), member))
+
+/**
+ * list_for_each_entry_continue - continue iteration over list of given type
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Continue to iterate over list of given type, continuing after
+ * the current position.
+ */
+#define list_for_each_entry_continue(pos, head, member) 		\
+	for (pos = list_next_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = list_next_entry(pos, member))
+
+/**
+ * list_for_each_entry_continue_reverse - iterate backwards from the given point
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Start to iterate over list of given type backwards, continuing after
+ * the current position.
+ */
+#define list_for_each_entry_continue_reverse(pos, head, member)		\
+	for (pos = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = list_prev_entry(pos, member))
+
+/**
+ * list_for_each_entry_from - iterate over list of given type from the current point
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Iterate over list of given type, continuing from current position.
+ */
+#define list_for_each_entry_from(pos, head, member) 			\
+	for (; &pos->member != (head);					\
+	     pos = list_next_entry(pos, member))
+
+/**
+ * list_for_each_entry_safe - iterate over list of given type safe against removal of list entry
+ * @pos:	the type * to use as a loop cursor.
+ * @n:		another type * to use as temporary storage
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ */
+#define list_for_each_entry_safe(pos, n, head, member)			\
+	for (pos = list_first_entry(head, typeof(*pos), member),	\
+		n = list_next_entry(pos, member);			\
+	     &pos->member != (head); 					\
+	     pos = n, n = list_next_entry(n, member))
+
+/**
+ * list_for_each_entry_safe_continue - continue list iteration safe against removal
+ * @pos:	the type * to use as a loop cursor.
+ * @n:		another type * to use as temporary storage
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Iterate over list of given type, continuing after current point,
+ * safe against removal of list entry.
+ */
+#define list_for_each_entry_safe_continue(pos, n, head, member) 		\
+	for (pos = list_next_entry(pos, member), 				\
+		n = list_next_entry(pos, member);				\
+	     &pos->member != (head);						\
+	     pos = n, n = list_next_entry(n, member))
+
+/**
+ * list_for_each_entry_safe_from - iterate over list from current point safe against removal
+ * @pos:	the type * to use as a loop cursor.
+ * @n:		another type * to use as temporary storage
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Iterate over list of given type from current point, safe against
+ * removal of list entry.
+ */
+#define list_for_each_entry_safe_from(pos, n, head, member) 			\
+	for (n = list_next_entry(pos, member);					\
+	     &pos->member != (head);						\
+	     pos = n, n = list_next_entry(n, member))
+
+/**
+ * list_for_each_entry_safe_reverse - iterate backwards over list safe against removal
+ * @pos:	the type * to use as a loop cursor.
+ * @n:		another type * to use as temporary storage
+ * @head:	the head for your list.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Iterate backwards over list of given type, safe against removal
+ * of list entry.
+ */
+#define list_for_each_entry_safe_reverse(pos, n, head, member)		\
+	for (pos = list_last_entry(head, typeof(*pos), member),		\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head); 					\
+	     pos = n, n = list_prev_entry(n, member))
+
+/**
+ * list_safe_reset_next - reset a stale list_for_each_entry_safe loop
+ * @pos:	the loop cursor used in the list_for_each_entry_safe loop
+ * @n:		temporary storage used in list_for_each_entry_safe
+ * @member:	the name of the list_head within the struct.
+ *
+ * list_safe_reset_next is not safe to use in general if the list may be
+ * modified concurrently (eg. the lock is dropped in the loop body). An
+ * exception to this is if the cursor element (pos) is pinned in the list,
+ * and list_safe_reset_next is called after re-taking the lock and before
+ * completing the current iteration of the loop body.
+ */
+#define list_safe_reset_next(pos, n, member)				\
+	n = list_next_entry(pos, member)
+
+/*
+ * Double linked lists with a single pointer list head.
+ * Mostly useful for hash tables where the two pointer list head is
+ * too wasteful.
+ * You lose the ability to access the tail in O(1).
+ */
+
+#define HLIST_HEAD_INIT { .first = NULL }
+#define HLIST_HEAD(name) struct hlist_head name = {  .first = NULL }
+#define INIT_HLIST_HEAD(ptr) ((ptr)->first = NULL)
+static inline void INIT_HLIST_NODE(struct hlist_node *h)
+{
+	h->next = NULL;
+	h->pprev = NULL;
+}
+
+static inline int hlist_unhashed(const struct hlist_node *h)
+{
+	return !h->pprev;
+}
+
+static inline int hlist_empty(const struct hlist_head *h)
+{
+	return !h->first;
+}
+
+static inline void __hlist_del(struct hlist_node *n)
+{
+	struct hlist_node *next = n->next;
+	struct hlist_node **pprev = n->pprev;
+
+	WRITE_ONCE(*pprev, next);
+	if (next)
+		next->pprev = pprev;
+}
+
+static inline void hlist_del(struct hlist_node *n)
+{
+	__hlist_del(n);
+	n->next = LIST_POISON1;
+	n->pprev = LIST_POISON2;
+}
+
+static inline void hlist_del_init(struct hlist_node *n)
+{
+	if (!hlist_unhashed(n)) {
+		__hlist_del(n);
+		INIT_HLIST_NODE(n);
+	}
+}
+
+static inline void hlist_add_head(struct hlist_node *n, struct hlist_head *h)
+{
+	struct hlist_node *first = h->first;
+	n->next = first;
+	if (first)
+		first->pprev = &n->next;
+	h->first = n;
+	n->pprev = &h->first;
+}
+
+/* next must be != NULL */
+static inline void hlist_add_before(struct hlist_node *n,
+					struct hlist_node *next)
+{
+	n->pprev = next->pprev;
+	n->next = next;
+	next->pprev = &n->next;
+	*(n->pprev) = n;
+}
+
+static inline void hlist_add_behind(struct hlist_node *n,
+				    struct hlist_node *prev)
+{
+	n->next = prev->next;
+	prev->next = n;
+	n->pprev = &prev->next;
+
+	if (n->next)
+		n->next->pprev  = &n->next;
+}
+
+/* after that we'll appear to be on some hlist and hlist_del will work */
+static inline void hlist_add_fake(struct hlist_node *n)
+{
+	n->pprev = &n->next;
+}
+
+static inline bool hlist_fake(struct hlist_node *h)
+{
+	return h->pprev == &h->next;
+}
+
+/*
+ * Move a list from one list head to another. Fixup the pprev
+ * reference of the first entry if it exists.
+ */
+static inline void hlist_move_list(struct hlist_head *old,
+				   struct hlist_head *new)
+{
+	new->first = old->first;
+	if (new->first)
+		new->first->pprev = &new->first;
+	old->first = NULL;
+}
+
+#define hlist_entry(ptr, type, member) container_of(ptr,type,member)
+
+#define hlist_for_each(pos, head) \
+	for (pos = (head)->first; pos ; pos = pos->next)
+
+#define hlist_for_each_safe(pos, n, head) \
+	for (pos = (head)->first; pos && ({ n = pos->next; 1; }); \
+	     pos = n)
+
+#define hlist_entry_safe(ptr, type, member) \
+	({ typeof(ptr) ____ptr = (ptr); \
+	   ____ptr ? hlist_entry(____ptr, type, member) : NULL; \
+	})
+
+/**
+ * hlist_for_each_entry	- iterate over list of given type
+ * @pos:	the type * to use as a loop cursor.
+ * @head:	the head for your list.
+ * @member:	the name of the hlist_node within the struct.
+ */
+#define hlist_for_each_entry(pos, head, member)				\
+	for (pos = hlist_entry_safe((head)->first, typeof(*(pos)), member);\
+	     pos;							\
+	     pos = hlist_entry_safe((pos)->member.next, typeof(*(pos)), member))
+
+/**
+ * hlist_for_each_entry_continue - iterate over a hlist continuing after current point
+ * @pos:	the type * to use as a loop cursor.
+ * @member:	the name of the hlist_node within the struct.
+ */
+#define hlist_for_each_entry_continue(pos, member)			\
+	for (pos = hlist_entry_safe((pos)->member.next, typeof(*(pos)), member);\
+	     pos;							\
+	     pos = hlist_entry_safe((pos)->member.next, typeof(*(pos)), member))
+
+/**
+ * hlist_for_each_entry_from - iterate over a hlist continuing from current point
+ * @pos:	the type * to use as a loop cursor.
+ * @member:	the name of the hlist_node within the struct.
+ */
+#define hlist_for_each_entry_from(pos, member)				\
+	for (; pos;							\
+	     pos = hlist_entry_safe((pos)->member.next, typeof(*(pos)), member))
+
+/**
+ * hlist_for_each_entry_safe - iterate over list of given type safe against removal of list entry
+ * @pos:	the type * to use as a loop cursor.
+ * @n:		another &struct hlist_node to use as temporary storage
+ * @head:	the head for your list.
+ * @member:	the name of the hlist_node within the struct.
+ */
+#define hlist_for_each_entry_safe(pos, n, head, member) 		\
+	for (pos = hlist_entry_safe((head)->first, typeof(*pos), member);\
+	     pos && ({ n = pos->member.next; 1; });			\
+	     pos = hlist_entry_safe(n, typeof(*pos), member))
+
+/**
+ * list_del_range - deletes range of entries from list.
+ * @begin: first element in the range to delete from the list.
+ * @end: last element in the range to delete from the list.
+ * Note: list_empty on the range of entries does not return true after this,
+ * the entries is in an undefined state.
+ */
+static inline void list_del_range(struct list_head *begin,
+				  struct list_head *end)
+{
+	begin->prev->next = end->next;
+	end->next->prev = begin->prev;
+}
+
+/**
+ * list_for_each_from	-	iterate over a list from one of its nodes
+ * @pos:  the &struct list_head to use as a loop cursor, from where to start
+ * @head: the head for your list.
+ */
+#define list_for_each_from(pos, head) \
+	for (; pos != (head); pos = pos->next)
+
+#endif /* __TOOLS_LINUX_LIST_H */
diff --git a/scripts/include/linux/log2.h b/scripts/include/linux/log2.h
new file mode 100644
index 0000000..4144666
--- /dev/null
+++ b/scripts/include/linux/log2.h
@@ -0,0 +1,185 @@
+/* Integer base 2 logarithm calculation
+ *
+ * Copyright (C) 2006 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version
+ * 2 of the License, or (at your option) any later version.
+ */
+
+#ifndef _TOOLS_LINUX_LOG2_H
+#define _TOOLS_LINUX_LOG2_H
+
+/*
+ * deal with unrepresentable constant logarithms
+ */
+extern __attribute__((const, noreturn))
+int ____ilog2_NaN(void);
+
+/*
+ * non-constant log of base 2 calculators
+ * - the arch may override these in asm/bitops.h if they can be implemented
+ *   more efficiently than using fls() and fls64()
+ * - the arch is not required to handle n==0 if implementing the fallback
+ */
+static inline __attribute__((const))
+int __ilog2_u32(u32 n)
+{
+	return fls(n) - 1;
+}
+
+static inline __attribute__((const))
+int __ilog2_u64(u64 n)
+{
+	return fls64(n) - 1;
+}
+
+/*
+ *  Determine whether some value is a power of two, where zero is
+ * *not* considered a power of two.
+ */
+
+static inline __attribute__((const))
+bool is_power_of_2(unsigned long n)
+{
+	return (n != 0 && ((n & (n - 1)) == 0));
+}
+
+/*
+ * round up to nearest power of two
+ */
+static inline __attribute__((const))
+unsigned long __roundup_pow_of_two(unsigned long n)
+{
+	return 1UL << fls_long(n - 1);
+}
+
+/*
+ * round down to nearest power of two
+ */
+static inline __attribute__((const))
+unsigned long __rounddown_pow_of_two(unsigned long n)
+{
+	return 1UL << (fls_long(n) - 1);
+}
+
+/**
+ * ilog2 - log of base 2 of 32-bit or a 64-bit unsigned value
+ * @n - parameter
+ *
+ * constant-capable log of base 2 calculation
+ * - this can be used to initialise global variables from constant data, hence
+ *   the massive ternary operator construction
+ *
+ * selects the appropriately-sized optimised version depending on sizeof(n)
+ */
+#define ilog2(n)				\
+(						\
+	__builtin_constant_p(n) ? (		\
+		(n) < 1 ? ____ilog2_NaN() :	\
+		(n) & (1ULL << 63) ? 63 :	\
+		(n) & (1ULL << 62) ? 62 :	\
+		(n) & (1ULL << 61) ? 61 :	\
+		(n) & (1ULL << 60) ? 60 :	\
+		(n) & (1ULL << 59) ? 59 :	\
+		(n) & (1ULL << 58) ? 58 :	\
+		(n) & (1ULL << 57) ? 57 :	\
+		(n) & (1ULL << 56) ? 56 :	\
+		(n) & (1ULL << 55) ? 55 :	\
+		(n) & (1ULL << 54) ? 54 :	\
+		(n) & (1ULL << 53) ? 53 :	\
+		(n) & (1ULL << 52) ? 52 :	\
+		(n) & (1ULL << 51) ? 51 :	\
+		(n) & (1ULL << 50) ? 50 :	\
+		(n) & (1ULL << 49) ? 49 :	\
+		(n) & (1ULL << 48) ? 48 :	\
+		(n) & (1ULL << 47) ? 47 :	\
+		(n) & (1ULL << 46) ? 46 :	\
+		(n) & (1ULL << 45) ? 45 :	\
+		(n) & (1ULL << 44) ? 44 :	\
+		(n) & (1ULL << 43) ? 43 :	\
+		(n) & (1ULL << 42) ? 42 :	\
+		(n) & (1ULL << 41) ? 41 :	\
+		(n) & (1ULL << 40) ? 40 :	\
+		(n) & (1ULL << 39) ? 39 :	\
+		(n) & (1ULL << 38) ? 38 :	\
+		(n) & (1ULL << 37) ? 37 :	\
+		(n) & (1ULL << 36) ? 36 :	\
+		(n) & (1ULL << 35) ? 35 :	\
+		(n) & (1ULL << 34) ? 34 :	\
+		(n) & (1ULL << 33) ? 33 :	\
+		(n) & (1ULL << 32) ? 32 :	\
+		(n) & (1ULL << 31) ? 31 :	\
+		(n) & (1ULL << 30) ? 30 :	\
+		(n) & (1ULL << 29) ? 29 :	\
+		(n) & (1ULL << 28) ? 28 :	\
+		(n) & (1ULL << 27) ? 27 :	\
+		(n) & (1ULL << 26) ? 26 :	\
+		(n) & (1ULL << 25) ? 25 :	\
+		(n) & (1ULL << 24) ? 24 :	\
+		(n) & (1ULL << 23) ? 23 :	\
+		(n) & (1ULL << 22) ? 22 :	\
+		(n) & (1ULL << 21) ? 21 :	\
+		(n) & (1ULL << 20) ? 20 :	\
+		(n) & (1ULL << 19) ? 19 :	\
+		(n) & (1ULL << 18) ? 18 :	\
+		(n) & (1ULL << 17) ? 17 :	\
+		(n) & (1ULL << 16) ? 16 :	\
+		(n) & (1ULL << 15) ? 15 :	\
+		(n) & (1ULL << 14) ? 14 :	\
+		(n) & (1ULL << 13) ? 13 :	\
+		(n) & (1ULL << 12) ? 12 :	\
+		(n) & (1ULL << 11) ? 11 :	\
+		(n) & (1ULL << 10) ? 10 :	\
+		(n) & (1ULL <<  9) ?  9 :	\
+		(n) & (1ULL <<  8) ?  8 :	\
+		(n) & (1ULL <<  7) ?  7 :	\
+		(n) & (1ULL <<  6) ?  6 :	\
+		(n) & (1ULL <<  5) ?  5 :	\
+		(n) & (1ULL <<  4) ?  4 :	\
+		(n) & (1ULL <<  3) ?  3 :	\
+		(n) & (1ULL <<  2) ?  2 :	\
+		(n) & (1ULL <<  1) ?  1 :	\
+		(n) & (1ULL <<  0) ?  0 :	\
+		____ilog2_NaN()			\
+				   ) :		\
+	(sizeof(n) <= 4) ?			\
+	__ilog2_u32(n) :			\
+	__ilog2_u64(n)				\
+ )
+
+/**
+ * roundup_pow_of_two - round the given value up to nearest power of two
+ * @n - parameter
+ *
+ * round the given value up to the nearest power of two
+ * - the result is undefined when n == 0
+ * - this can be used to initialise global variables from constant data
+ */
+#define roundup_pow_of_two(n)			\
+(						\
+	__builtin_constant_p(n) ? (		\
+		(n == 1) ? 1 :			\
+		(1UL << (ilog2((n) - 1) + 1))	\
+				   ) :		\
+	__roundup_pow_of_two(n)			\
+ )
+
+/**
+ * rounddown_pow_of_two - round the given value down to nearest power of two
+ * @n - parameter
+ *
+ * round the given value down to the nearest power of two
+ * - the result is undefined when n == 0
+ * - this can be used to initialise global variables from constant data
+ */
+#define rounddown_pow_of_two(n)			\
+(						\
+	__builtin_constant_p(n) ? (		\
+		(1UL << ilog2(n))) :		\
+	__rounddown_pow_of_two(n)		\
+ )
+
+#endif /* _TOOLS_LINUX_LOG2_H */
diff --git a/scripts/include/linux/poison.h b/scripts/include/linux/poison.h
new file mode 100644
index 0000000..0c27bdf
--- /dev/null
+++ b/scripts/include/linux/poison.h
@@ -0,0 +1 @@
+#include "../../../include/linux/poison.h"
diff --git a/scripts/include/linux/string.h b/scripts/include/linux/string.h
new file mode 100644
index 0000000..e26223f
--- /dev/null
+++ b/scripts/include/linux/string.h
@@ -0,0 +1,15 @@
+#ifndef _TOOLS_LINUX_STRING_H_
+#define _TOOLS_LINUX_STRING_H_
+
+
+#include <linux/types.h>	/* for size_t */
+
+void *memdup(const void *src, size_t len);
+
+int strtobool(const char *s, bool *res);
+
+#ifndef __UCLIBC__
+extern size_t strlcpy(char *dest, const char *src, size_t size);
+#endif
+
+#endif /* _LINUX_STRING_H_ */
diff --git a/scripts/include/linux/types.h b/scripts/include/linux/types.h
new file mode 100644
index 0000000..8ebf627
--- /dev/null
+++ b/scripts/include/linux/types.h
@@ -0,0 +1,83 @@
+#ifndef _TOOLS_LINUX_TYPES_H_
+#define _TOOLS_LINUX_TYPES_H_
+
+#include <stdbool.h>
+#include <stddef.h>
+#include <stdint.h>
+
+#define __SANE_USERSPACE_TYPES__	/* For PPC64, to get LL64 types */
+#include <asm/types.h>
+
+struct page;
+struct kmem_cache;
+
+typedef enum {
+	GFP_KERNEL,
+	GFP_ATOMIC,
+	__GFP_HIGHMEM,
+	__GFP_HIGH
+} gfp_t;
+
+/*
+ * We define u64 as uint64_t for every architecture
+ * so that we can print it with "%"PRIx64 without getting warnings.
+ *
+ * typedef __u64 u64;
+ * typedef __s64 s64;
+ */
+typedef uint64_t u64;
+typedef int64_t s64;
+
+typedef __u32 u32;
+typedef __s32 s32;
+
+typedef __u16 u16;
+typedef __s16 s16;
+
+typedef __u8  u8;
+typedef __s8  s8;
+
+#ifdef __CHECKER__
+#define __bitwise__ __attribute__((bitwise))
+#else
+#define __bitwise__
+#endif
+#ifdef __CHECK_ENDIAN__
+#define __bitwise __bitwise__
+#else
+#define __bitwise
+#endif
+
+#define __force
+#define __user
+#define __must_check
+#define __cold
+
+typedef __u16 __bitwise __le16;
+typedef __u16 __bitwise __be16;
+typedef __u32 __bitwise __le32;
+typedef __u32 __bitwise __be32;
+typedef __u64 __bitwise __le64;
+typedef __u64 __bitwise __be64;
+
+typedef struct {
+	int counter;
+} atomic_t;
+
+#ifndef __aligned_u64
+# define __aligned_u64 __u64 __attribute__((aligned(8)))
+#endif
+
+struct list_head {
+	struct list_head *next, *prev;
+};
+
+struct hlist_head {
+	struct hlist_node *first;
+};
+
+struct hlist_node {
+	struct hlist_node *next, **pprev;
+};
+
+#endif /* _TOOLS_LINUX_TYPES_H_ */
diff --git a/scripts/include/tools/be_byteshift.h b/scripts/include/tools/be_byteshift.h
new file mode 100644
index 0000000..84c17d8
--- /dev/null
+++ b/scripts/include/tools/be_byteshift.h
@@ -0,0 +1,70 @@
+#ifndef _TOOLS_BE_BYTESHIFT_H
+#define _TOOLS_BE_BYTESHIFT_H
+
+#include <stdint.h>
+
+static inline uint16_t __get_unaligned_be16(const uint8_t *p)
+{
+	return p[0] << 8 | p[1];
+}
+
+static inline uint32_t __get_unaligned_be32(const uint8_t *p)
+{
+	return p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
+}
+
+static inline uint64_t __get_unaligned_be64(const uint8_t *p)
+{
+	return (uint64_t)__get_unaligned_be32(p) << 32 |
+	       __get_unaligned_be32(p + 4);
+}
+
+static inline void __put_unaligned_be16(uint16_t val, uint8_t *p)
+{
+	*p++ = val >> 8;
+	*p++ = val;
+}
+
+static inline void __put_unaligned_be32(uint32_t val, uint8_t *p)
+{
+	__put_unaligned_be16(val >> 16, p);
+	__put_unaligned_be16(val, p + 2);
+}
+
+static inline void __put_unaligned_be64(uint64_t val, uint8_t *p)
+{
+	__put_unaligned_be32(val >> 32, p);
+	__put_unaligned_be32(val, p + 4);
+}
+
+static inline uint16_t get_unaligned_be16(const void *p)
+{
+	return __get_unaligned_be16((const uint8_t *)p);
+}
+
+static inline uint32_t get_unaligned_be32(const void *p)
+{
+	return __get_unaligned_be32((const uint8_t *)p);
+}
+
+static inline uint64_t get_unaligned_be64(const void *p)
+{
+	return __get_unaligned_be64((const uint8_t *)p);
+}
+
+static inline void put_unaligned_be16(uint16_t val, void *p)
+{
+	__put_unaligned_be16(val, p);
+}
+
+static inline void put_unaligned_be32(uint32_t val, void *p)
+{
+	__put_unaligned_be32(val, p);
+}
+
+static inline void put_unaligned_be64(uint64_t val, void *p)
+{
+	__put_unaligned_be64(val, p);
+}
+
+#endif /* _TOOLS_BE_BYTESHIFT_H */
diff --git a/scripts/include/tools/endian.h b/scripts/include/tools/endian.h
new file mode 100644
index 0000000..8001194
--- /dev/null
+++ b/scripts/include/tools/endian.h
@@ -0,0 +1,56 @@
+#ifndef _TOOLS_ENDIAN_H
+#define _TOOLS_ENDIAN_H
+
+#include <byteswap.h>
+
+#if __BYTE_ORDER == __LITTLE_ENDIAN
+
+#ifndef htole16
+#define htole16(x) (x)
+#endif
+#ifndef htole32
+#define htole32(x) (x)
+#endif
+#ifndef htole64
+#define htole64(x) (x)
+#endif
+
+#ifndef le16toh
+#define le16toh(x) (x)
+#endif
+
+#ifndef le32toh
+#define le32toh(x) (x)
+#endif
+
+#ifndef le64toh
+#define le64toh(x) (x)
+#endif
+
+#else /* __BYTE_ORDER */
+
+#ifndef htole16
+#define htole16(x) __bswap_16(x)
+#endif
+#ifndef htole32
+#define htole32(x) __bswap_32(x)
+#endif
+#ifndef htole64
+#define htole64(x) __bswap_64(x)
+#endif
+
+#ifndef le16toh
+#define le16toh(x) __bswap_16(x)
+#endif
+
+#ifndef le32toh
+#define le32toh(x) __bswap_32(x)
+#endif
+
+#ifndef le64toh
+#define le64toh(x) __bswap_64(x)
+#endif
+
+#endif
+
+#endif /* _TOOLS_ENDIAN_H */
diff --git a/scripts/include/tools/le_byteshift.h b/scripts/include/tools/le_byteshift.h
new file mode 100644
index 0000000..8fe9f24
--- /dev/null
+++ b/scripts/include/tools/le_byteshift.h
@@ -0,0 +1,70 @@
+#ifndef _TOOLS_LE_BYTESHIFT_H
+#define _TOOLS_LE_BYTESHIFT_H
+
+#include <stdint.h>
+
+static inline uint16_t __get_unaligned_le16(const uint8_t *p)
+{
+	return p[0] | p[1] << 8;
+}
+
+static inline uint32_t __get_unaligned_le32(const uint8_t *p)
+{
+	return p[0] | p[1] << 8 | p[2] << 16 | p[3] << 24;
+}
+
+static inline uint64_t __get_unaligned_le64(const uint8_t *p)
+{
+	return (uint64_t)__get_unaligned_le32(p + 4) << 32 |
+	       __get_unaligned_le32(p);
+}
+
+static inline void __put_unaligned_le16(uint16_t val, uint8_t *p)
+{
+	*p++ = val;
+	*p++ = val >> 8;
+}
+
+static inline void __put_unaligned_le32(uint32_t val, uint8_t *p)
+{
+	__put_unaligned_le16(val >> 16, p + 2);
+	__put_unaligned_le16(val, p);
+}
+
+static inline void __put_unaligned_le64(uint64_t val, uint8_t *p)
+{
+	__put_unaligned_le32(val >> 32, p + 4);
+	__put_unaligned_le32(val, p);
+}
+
+static inline uint16_t get_unaligned_le16(const void *p)
+{
+	return __get_unaligned_le16((const uint8_t *)p);
+}
+
+static inline uint32_t get_unaligned_le32(const void *p)
+{
+	return __get_unaligned_le32((const uint8_t *)p);
+}
+
+static inline uint64_t get_unaligned_le64(const void *p)
+{
+	return __get_unaligned_le64((const uint8_t *)p);
+}
+
+static inline void put_unaligned_le16(uint16_t val, void *p)
+{
+	__put_unaligned_le16(val, p);
+}
+
+static inline void put_unaligned_le32(uint32_t val, void *p)
+{
+	__put_unaligned_le32(val, p);
+}
+
+static inline void put_unaligned_le64(uint64_t val, void *p)
+{
+	__put_unaligned_le64(val, p);
+}
+
+#endif /* _TOOLS_LE_BYTESHIFT_H */
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
