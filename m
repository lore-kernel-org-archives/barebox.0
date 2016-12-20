Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-00028Z-5o
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnl-00039l-4b
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:39 +0100
Message-Id: <20161220093340.14404-8-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 8/9] lib: add generic find_bit implementation from Linux and
 use in ARMv8
To: barebox@lists.infradead.org

ARMv8 doesn't have an optimized version of the find_bit operations,
pull in the generic ones from the Linux kernel.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/bitops.h |   6 +-
 lib/Makefile                  |   1 +
 lib/find_bit.c                | 185 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 191 insertions(+), 1 deletion(-)
 create mode 100644 lib/find_bit.c

diff --git a/arch/arm/include/asm/bitops.h b/arch/arm/include/asm/bitops.h
index b51225efe5b8..abf7d0cb0922 100644
--- a/arch/arm/include/asm/bitops.h
+++ b/arch/arm/include/asm/bitops.h
@@ -82,6 +82,7 @@ static inline int test_bit(int nr, const void * addr)
 #define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
 #define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
 
+#if defined(__LINUX_ARM_ARCH__) && (__LINUX_ARM_ARCH__ < 8)
 #ifndef __ARMEB__
 /*
  * These are the little endian definitions.
@@ -114,6 +115,7 @@ extern int _find_next_bit_be(const unsigned long *p, int size, int offset);
 #define WORD_BITOFF_TO_LE(x)		((x) ^ 0x18)
 
 #endif		/* __ARMEB__ */
+#endif		/* < ARMv8 */
 
 #if defined(__LINUX_ARM_ARCH__) && (__LINUX_ARM_ARCH__ >= 5)
 static inline int constant_fls(int x)
@@ -178,8 +180,10 @@ static inline unsigned long ffz(unsigned long word)
 #include <asm-generic/bitops/fls.h>
 #endif		/* __ARM__USE_GENERIC_FF */
 
-#if __LINUX_ARM_ARCH__ == 8
 #include <asm-generic/bitops/__fls.h>
+
+#if __LINUX_ARM_ARCH__ == 8
+#include <asm-generic/bitops/find.h>
 #endif
 
 #include <asm-generic/bitops/fls64.h>
diff --git a/lib/Makefile b/lib/Makefile
index 1be1742499b8..9078d8e93af1 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -59,3 +59,4 @@ obj-y			+= reed_solomon/
 obj-$(CONFIG_RATP)	+= ratp.o
 obj-y			+= list_sort.o
 obj-y			+= int_sqrt.o
+obj-y			+= find_bit.o
diff --git a/lib/find_bit.c b/lib/find_bit.c
new file mode 100644
index 000000000000..87929ef93f5a
--- /dev/null
+++ b/lib/find_bit.c
@@ -0,0 +1,185 @@
+/* bit search implementation
+ *
+ * Copyright (C) 2004 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * Copyright (C) 2008 IBM Corporation
+ * 'find_last_bit' is written by Rusty Russell <rusty@rustcorp.com.au>
+ * (Inspired by David Howell's find_next_bit implementation)
+ *
+ * Rewritten by Yury Norov <yury.norov@gmail.com> to decrease
+ * size and improve performance, 2015.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version
+ * 2 of the License, or (at your option) any later version.
+ */
+
+#include <linux/bitops.h>
+#include <linux/bitmap.h>
+#include <linux/kernel.h>
+
+#if !defined(find_next_bit) || !defined(find_next_zero_bit)
+
+/*
+ * This is a common helper function for find_next_bit and
+ * find_next_zero_bit.  The difference is the "invert" argument, which
+ * is XORed with each fetched word before searching it for one bits.
+ */
+static unsigned long _find_next_bit(const unsigned long *addr,
+		unsigned long nbits, unsigned long start, unsigned long invert)
+{
+	unsigned long tmp;
+
+	if (!nbits || start >= nbits)
+		return nbits;
+
+	tmp = addr[start / BITS_PER_LONG] ^ invert;
+
+	/* Handle 1st word. */
+	tmp &= BITMAP_FIRST_WORD_MASK(start);
+	start = round_down(start, BITS_PER_LONG);
+
+	while (!tmp) {
+		start += BITS_PER_LONG;
+		if (start >= nbits)
+			return nbits;
+
+		tmp = addr[start / BITS_PER_LONG] ^ invert;
+	}
+
+	return min(start + __ffs(tmp), nbits);
+}
+#endif
+
+#ifndef find_next_bit
+/*
+ * Find the next set bit in a memory region.
+ */
+unsigned long find_next_bit(const unsigned long *addr, unsigned long size,
+			    unsigned long offset)
+{
+	return _find_next_bit(addr, size, offset, 0UL);
+}
+#endif
+
+#ifndef find_next_zero_bit
+unsigned long find_next_zero_bit(const unsigned long *addr, unsigned long size,
+				 unsigned long offset)
+{
+	return _find_next_bit(addr, size, offset, ~0UL);
+}
+#endif
+
+#ifndef find_first_bit
+/*
+ * Find the first set bit in a memory region.
+ */
+unsigned long find_first_bit(const unsigned long *addr, unsigned long size)
+{
+	unsigned long idx;
+
+	for (idx = 0; idx * BITS_PER_LONG < size; idx++) {
+		if (addr[idx])
+			return min(idx * BITS_PER_LONG + __ffs(addr[idx]), size);
+	}
+
+	return size;
+}
+#endif
+
+#ifndef find_first_zero_bit
+/*
+ * Find the first cleared bit in a memory region.
+ */
+unsigned long find_first_zero_bit(const unsigned long *addr, unsigned long size)
+{
+	unsigned long idx;
+
+	for (idx = 0; idx * BITS_PER_LONG < size; idx++) {
+		if (addr[idx] != ~0UL)
+			return min(idx * BITS_PER_LONG + ffz(addr[idx]), size);
+	}
+
+	return size;
+}
+#endif
+
+#ifndef find_last_bit
+unsigned long find_last_bit(const unsigned long *addr, unsigned long size)
+{
+	if (size) {
+		unsigned long val = BITMAP_LAST_WORD_MASK(size);
+		unsigned long idx = (size-1) / BITS_PER_LONG;
+
+		do {
+			val &= addr[idx];
+			if (val)
+				return idx * BITS_PER_LONG + __fls(val);
+
+			val = ~0ul;
+		} while (idx--);
+	}
+	return size;
+}
+#endif
+
+#ifdef __BIG_ENDIAN
+
+/* include/linux/byteorder does not support "unsigned long" type */
+static inline unsigned long ext2_swab(const unsigned long y)
+{
+#if BITS_PER_LONG == 64
+	return (unsigned long) __swab64((u64) y);
+#elif BITS_PER_LONG == 32
+	return (unsigned long) __swab32((u32) y);
+#else
+#error BITS_PER_LONG not defined
+#endif
+}
+
+#if !defined(find_next_bit_le) || !defined(find_next_zero_bit_le)
+static unsigned long _find_next_bit_le(const unsigned long *addr,
+		unsigned long nbits, unsigned long start, unsigned long invert)
+{
+	unsigned long tmp;
+
+	if (!nbits || start >= nbits)
+		return nbits;
+
+	tmp = addr[start / BITS_PER_LONG] ^ invert;
+
+	/* Handle 1st word. */
+	tmp &= ext2_swab(BITMAP_FIRST_WORD_MASK(start));
+	start = round_down(start, BITS_PER_LONG);
+
+	while (!tmp) {
+		start += BITS_PER_LONG;
+		if (start >= nbits)
+			return nbits;
+
+		tmp = addr[start / BITS_PER_LONG] ^ invert;
+	}
+
+	return min(start + __ffs(ext2_swab(tmp)), nbits);
+}
+#endif
+
+#ifndef find_next_zero_bit_le
+unsigned long find_next_zero_bit_le(const void *addr, unsigned
+		long size, unsigned long offset)
+{
+	return _find_next_bit_le(addr, size, offset, ~0UL);
+}
+#endif
+
+#ifndef find_next_bit_le
+unsigned long find_next_bit_le(const void *addr, unsigned
+		long size, unsigned long offset)
+{
+	return _find_next_bit_le(addr, size, offset, 0UL);
+}
+#endif
+
+#endif /* __BIG_ENDIAN */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
