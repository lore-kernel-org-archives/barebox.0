Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7KjA-0000m0-NG
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:38:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Jul 2014 10:37:51 +0200
Message-Id: <1405499873-6385-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
References: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] consistently use the same bitops.h file
To: barebox@lists.infradead.org

We have many variants of the same bitops.h file. Consistently
use the same file for all architectures which completely use
the generic bitops versions.

Some architectures had static inline versions of functions
identically to the generic versions, these are removed and
the generic versions are used directly now.

Also several architectures depend on the generic find_*_bit
functions but didn't have the GENERIC_FIND_NEXT_BIT Kconfig
option selected. This is added where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/Kconfig              |   1 +
 arch/blackfin/include/asm/bitops.h | 361 ++-----------------------------------
 arch/mips/include/asm/bitops.h     |  26 +--
 arch/nios2/Kconfig                 |   1 +
 arch/nios2/include/asm/bitops.h    |  32 +++-
 arch/openrisc/Kconfig              |   1 +
 arch/openrisc/include/asm/bitops.h |  29 ++-
 arch/sandbox/include/asm/bitops.h  |  25 ++-
 arch/x86/include/asm/bitops.h      |  30 +--
 9 files changed, 119 insertions(+), 387 deletions(-)

diff --git a/arch/blackfin/Kconfig b/arch/blackfin/Kconfig
index bea9f51..6233614 100644
--- a/arch/blackfin/Kconfig
+++ b/arch/blackfin/Kconfig
@@ -5,6 +5,7 @@ config BLACKFIN
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
+	select GENERIC_FIND_NEXT_BIT
 	default y
 
 config BF561
diff --git a/arch/blackfin/include/asm/bitops.h b/arch/blackfin/include/asm/bitops.h
index 4ab1471..e77ab83 100644
--- a/arch/blackfin/include/asm/bitops.h
+++ b/arch/blackfin/include/asm/bitops.h
@@ -1,11 +1,4 @@
 /*
- * barebox - bitops.h Routines for bit operations
- *
- * Copyright (c) 2005 blackfin.uclinux.org
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
  * published by the Free Software Foundation; either version 2 of
@@ -16,349 +9,27 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
+ *
  */
 
-#ifndef _BLACKFIN_BITOPS_H
-#define _BLACKFIN_BITOPS_H
-
-/*
- * Copyright 1992, Linus Torvalds.
- */
-
-#include <asm/byteorder.h>
-#include <asm/system.h>
-
-#ifdef __KERNEL__
-/*
- * Function prototypes to keep gcc -Wall happy
- */
-
-/*
- * The __ functions are not atomic
- */
-
-/*
- * ffz = Find First Zero in word. Undefined if no zero exists,
- * so code should check against ~0UL first..
- */
-static __inline__ unsigned long ffz(unsigned long word)
-{
-	unsigned long result = 0;
-
-	while (word & 1) {
-		result++;
-		word >>= 1;
-	}
-	return result;
-}
-
-static __inline__ void set_bit(int nr, volatile void *addr)
-{
-	int *a = (int *) addr;
-	int mask;
-	unsigned long flags;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	save_and_cli(flags);
-	*a |= mask;
-	restore_flags(flags);
-}
-
-static __inline__ void __set_bit(int nr, volatile void *addr)
-{
-	int *a = (int *) addr;
-	int mask;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	*a |= mask;
-}
-
-/*
- * clear_bit() doesn't provide any barrier for the compiler.
- */
-#define smp_mb__before_clear_bit()	barrier()
-#define smp_mb__after_clear_bit()	barrier()
-
-static __inline__ void clear_bit(int nr, volatile void *addr)
-{
-	int *a = (int *) addr;
-	int mask;
-	unsigned long flags;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	save_and_cli(flags);
-	*a &= ~mask;
-	restore_flags(flags);
-}
-
-static __inline__ void change_bit(int nr, volatile void *addr)
-{
-	int mask, flags;
-	unsigned long *ADDR = (unsigned long *) addr;
-
-	ADDR += nr >> 5;
-	mask = 1 << (nr & 31);
-	save_and_cli(flags);
-	*ADDR ^= mask;
-	restore_flags(flags);
-}
-
-static __inline__ void __change_bit(int nr, volatile void *addr)
-{
-	int mask;
-	unsigned long *ADDR = (unsigned long *) addr;
-
-	ADDR += nr >> 5;
-	mask = 1 << (nr & 31);
-	*ADDR ^= mask;
-}
-
-static __inline__ int test_and_set_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	volatile unsigned int *a = (volatile unsigned int *) addr;
-	unsigned long flags;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	save_and_cli(flags);
-	retval = (mask & *a) != 0;
-	*a |= mask;
-	restore_flags(flags);
-
-	return retval;
-}
-
-static __inline__ int __test_and_set_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	volatile unsigned int *a = (volatile unsigned int *) addr;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	retval = (mask & *a) != 0;
-	*a |= mask;
-	return retval;
-}
-
-static __inline__ int test_and_clear_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	volatile unsigned int *a = (volatile unsigned int *) addr;
-	unsigned long flags;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	save_and_cli(flags);
-	retval = (mask & *a) != 0;
-	*a &= ~mask;
-	restore_flags(flags);
-
-	return retval;
-}
-
-static __inline__ int __test_and_clear_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	volatile unsigned int *a = (volatile unsigned int *) addr;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	retval = (mask & *a) != 0;
-	*a &= ~mask;
-	return retval;
-}
-
-static __inline__ int test_and_change_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	volatile unsigned int *a = (volatile unsigned int *) addr;
-	unsigned long flags;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	save_and_cli(flags);
-	retval = (mask & *a) != 0;
-	*a ^= mask;
-	restore_flags(flags);
-
-	return retval;
-}
-
-static __inline__ int __test_and_change_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	volatile unsigned int *a = (volatile unsigned int *) addr;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	retval = (mask & *a) != 0;
-	*a ^= mask;
-	return retval;
-}
-
-/*
- * This routine doesn't need to be atomic.
- */
-static __inline__ int __constant_test_bit(int nr,
-					  const volatile void *addr)
-{
-	return ((1UL << (nr & 31)) &
-		(((const volatile unsigned int *) addr)[nr >> 5])) != 0;
-}
-
-static __inline__ int __test_bit(int nr, volatile void *addr)
-{
-	int *a = (int *) addr;
-	int mask;
-
-	a += nr >> 5;
-	mask = 1 << (nr & 0x1f);
-	return ((mask & *a) != 0);
-}
-
-#define	test_bit(nr,addr) \
-(__builtin_constant_p(nr) ? \
- __constant_test_bit((nr),(addr)) : \
- __test_bit((nr),(addr)))
-
-#define	find_first_zero_bit(addr, size) \
-	find_next_zero_bit((addr), (size), 0)
-
-static __inline__ int find_next_zero_bit(void *addr, int size, int offset)
-{
-	unsigned long *p = ((unsigned long *) addr) + (offset >> 5);
-	unsigned long result = offset & ~31UL;
-	unsigned long tmp;
-
-	if (offset >= size)
-		return size;
-	size -= result;
-	offset &= 31UL;
-	if (offset) {
-		tmp = *(p++);
-		tmp |= ~0UL >> (32 - offset);
-		if (size < 32)
-			goto found_first;
-		if (~tmp)
-			goto found_middle;
-		size -= 32;
-		result += 32;
-	}
-	while (size & ~31UL) {
-		if (~(tmp = *(p++)))
-			goto found_middle;
-		result += 32;
-		size -= 32;
-	}
-	if (!size)
-		return result;
-	tmp = *p;
-
-      found_first:
-	tmp |= ~0UL >> size;
-      found_middle:
-	return result + ffz(tmp);
-}
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
 
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/ffs.h>
 #include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
 #include <asm-generic/bitops/hweight.h>
-
-static __inline__ int ext2_set_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	unsigned long flags;
-	volatile unsigned char *ADDR = (unsigned char *) addr;
-
-	ADDR += nr >> 3;
-	mask = 1 << (nr & 0x07);
-	save_and_cli(flags);
-	retval = (mask & *ADDR) != 0;
-	*ADDR |= mask;
-	restore_flags(flags);
-	return retval;
-}
-
-static __inline__ int ext2_clear_bit(int nr, volatile void *addr)
-{
-	int mask, retval;
-	unsigned long flags;
-	volatile unsigned char *ADDR = (unsigned char *) addr;
-
-	ADDR += nr >> 3;
-	mask = 1 << (nr & 0x07);
-	save_and_cli(flags);
-	retval = (mask & *ADDR) != 0;
-	*ADDR &= ~mask;
-	restore_flags(flags);
-	return retval;
-}
-
-static __inline__ int ext2_test_bit(int nr, const volatile void *addr)
-{
-	int mask;
-	const volatile unsigned char *ADDR = (const unsigned char *) addr;
-
-	ADDR += nr >> 3;
-	mask = 1 << (nr & 0x07);
-	return ((mask & *ADDR) != 0);
-}
-
-#define ext2_find_first_zero_bit(addr, size) \
-	ext2_find_next_zero_bit((addr), (size), 0)
-
-static __inline__ unsigned long ext2_find_next_zero_bit(void *addr,
-							unsigned long size,
-							unsigned long
-							offset)
-{
-	unsigned long *p = ((unsigned long *) addr) + (offset >> 5);
-	unsigned long result = offset & ~31UL;
-	unsigned long tmp;
-
-	if (offset >= size)
-		return size;
-	size -= result;
-	offset &= 31UL;
-	if (offset) {
-		tmp = *(p++);
-		tmp |= ~0UL >> (32 - offset);
-		if (size < 32)
-			goto found_first;
-		if (~tmp)
-			goto found_middle;
-		size -= 32;
-		result += 32;
-	}
-	while (size & ~31UL) {
-		if (~(tmp = *(p++)))
-			goto found_middle;
-		result += 32;
-		size -= 32;
-	}
-	if (!size)
-		return result;
-	tmp = *p;
-
-      found_first:
-	tmp |= ~0UL >> size;
-      found_middle:
-	return result + ffz(tmp);
-}
-
-/* Bitmap functions for the minix filesystem. */
-#define minix_test_and_set_bit(nr,addr)		test_and_set_bit(nr,addr)
-#define minix_set_bit(nr,addr)			set_bit(nr,addr)
-#define minix_test_and_clear_bit(nr,addr)	test_and_clear_bit(nr,addr)
-#define minix_test_bit(nr,addr)			test_bit(nr,addr)
-#define minix_find_first_zero_bit(addr,size)	find_first_zero_bit(addr,size)
-
-#endif
-
-#endif
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
+
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
+
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/mips/include/asm/bitops.h b/arch/mips/include/asm/bitops.h
index ebf8cf0..e77ab83 100644
--- a/arch/mips/include/asm/bitops.h
+++ b/arch/mips/include/asm/bitops.h
@@ -12,20 +12,24 @@
  *
  */
 
-/**
- * @file
- * @brief mips bit operations
- *
- * This file is required only to make all sources happy including
- * 'linux/bitops.h'
- */
-
-#ifndef _ASM_MIPS_BITOPS_H_
-#define _ASM_MIPS_BITOPS_H_
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
 
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/ffs.h>
 #include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
+#include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
+
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
 
-#endif /* _ASM_MIPS_BITOPS_H_ */
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
index 116daa9..70a7562 100644
--- a/arch/nios2/Kconfig
+++ b/arch/nios2/Kconfig
@@ -3,6 +3,7 @@ config NIOS2
 	select HAS_KALLSYMS
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select GENERIC_FIND_NEXT_BIT
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/nios2/include/asm/bitops.h b/arch/nios2/include/asm/bitops.h
index 0712845..e77ab83 100644
--- a/arch/nios2/include/asm/bitops.h
+++ b/arch/nios2/include/asm/bitops.h
@@ -1,9 +1,35 @@
-#ifndef _ASM_BITOPS_H
-#define _ASM_BITOPS_H
+/*
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
+ *
+ */
+
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
 
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/ffs.h>
 #include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
+#include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
+
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
 
-#endif /* _ASM_BITOPS_H */
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index d8d4ee9..e21010b 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -2,6 +2,7 @@ config OPENRISC
 	bool
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select GENERIC_FIND_NEXT_BIT
 	default y
 
 # not used
diff --git a/arch/openrisc/include/asm/bitops.h b/arch/openrisc/include/asm/bitops.h
index fa57901..e77ab83 100644
--- a/arch/openrisc/include/asm/bitops.h
+++ b/arch/openrisc/include/asm/bitops.h
@@ -1,6 +1,4 @@
 /*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
- *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
  * published by the Free Software Foundation; either version 2 of
@@ -11,14 +9,27 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
+ *
  */
 
-#ifndef __ASM_OPENRISC_BITOPS_H
-#define __ASM_OPENRISC_BITOPS_H
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
+
+#include <asm-generic/bitops/__ffs.h>
+#include <asm-generic/bitops/__fls.h>
+#include <asm-generic/bitops/ffs.h>
+#include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
+#include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
 
-#define PLATFORM_FLS
-#include <asm/bitops/fls.h>
-#define PLATFORM_FFS
-#include <asm/bitops/ffs.h>
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
 
-#endif /* __ASM_GENERIC_BITOPS_H */
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/sandbox/include/asm/bitops.h b/arch/sandbox/include/asm/bitops.h
index 447023d..e77ab83 100644
--- a/arch/sandbox/include/asm/bitops.h
+++ b/arch/sandbox/include/asm/bitops.h
@@ -1,15 +1,28 @@
-#ifndef _SANDBOX_BITOPS_H
-#define _SANDBOX_BITOPS_H
+/*
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
+ *
+ */
+
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
 
-/* nothing but the defaults.. */
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/ffs.h>
 #include <asm-generic/bitops/fls.h>
 #include <asm-generic/bitops/ffz.h>
-#include <asm-generic/bitops/find.h>
-#include <asm-generic/bitops/fls64.h>
 #include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
 #include <asm-generic/bitops/ops.h>
 
 #define set_bit(x, y)			__set_bit(x, y)
@@ -19,4 +32,4 @@
 #define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
 #define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
 
-#endif
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index e525812..e77ab83 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -12,20 +12,24 @@
  *
  */
 
-/**
- * @file
- * @brief x86 bit operations
- *
- * This file is required only to make all sources happy including
- * 'linux/bitops.h'
- */
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
 
-#ifndef _ASM_X86_BITOPS_H_
-#define _ASM_X86_BITOPS_H_
-
-#include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/__ffs.h>
-#include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/ffs.h>
+#include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
+#include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
+
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
 
-#endif /* _ASM_X86_BITOPS_H_ */
+#endif /* _ASM_BITOPS_H_ */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
