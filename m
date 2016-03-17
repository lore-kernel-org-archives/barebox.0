Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1agUky-0003g7-Pm
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:02:18 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id CA4D527A705
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:24 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:25 +0100
Message-Id: <1458208829-25570-10-git-send-email-alexander.stein@systec-electronic.com>
In-Reply-To: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 09/13] ARM: Add atomic.h from u-boot v2016.03
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

atomic-long.h:
* Replace __UBOOT__ with __BAREBOX__

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 arch/arm/include/asm/atomic.h           | 111 ++++++++++++++
 arch/arm/include/asm/proc-armv/system.h | 224 +++++++++++++++++++++++++++
 include/asm-generic/atomic-long.h       | 260 ++++++++++++++++++++++++++++++++
 3 files changed, 595 insertions(+)
 create mode 100644 arch/arm/include/asm/atomic.h
 create mode 100644 arch/arm/include/asm/proc-armv/system.h
 create mode 100644 include/asm-generic/atomic-long.h

diff --git a/arch/arm/include/asm/atomic.h b/arch/arm/include/asm/atomic.h
new file mode 100644
index 0000000..9b79506
--- /dev/null
+++ b/arch/arm/include/asm/atomic.h
@@ -0,0 +1,111 @@
+/*
+ *  linux/include/asm-arm/atomic.h
+ *
+ *  Copyright (c) 1996 Russell King.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ *  Changelog:
+ *   27-06-1996	RMK	Created
+ *   13-04-1997	RMK	Made functions atomic!
+ *   07-12-1997	RMK	Upgraded for v2.1.
+ *   26-08-1998	PJB	Added #ifdef __KERNEL__
+ */
+#ifndef __ASM_ARM_ATOMIC_H
+#define __ASM_ARM_ATOMIC_H
+
+#ifdef CONFIG_SMP
+#error SMP not supported
+#endif
+
+typedef struct { volatile int counter; } atomic_t;
+
+#define ATOMIC_INIT(i)	{ (i) }
+
+#ifdef __KERNEL__
+#include <asm/proc-armv/system.h>
+
+#define atomic_read(v)	((v)->counter)
+#define atomic_set(v,i)	(((v)->counter) = (i))
+
+static inline void atomic_add(int i, volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter += i;
+	local_irq_restore(flags);
+}
+
+static inline void atomic_sub(int i, volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter -= i;
+	local_irq_restore(flags);
+}
+
+static inline void atomic_inc(volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter += 1;
+	local_irq_restore(flags);
+}
+
+static inline void atomic_dec(volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter -= 1;
+	local_irq_restore(flags);
+}
+
+static inline int atomic_dec_and_test(volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+	int val;
+
+	local_irq_save(flags);
+	val = v->counter;
+	v->counter = val -= 1;
+	local_irq_restore(flags);
+
+	return val == 0;
+}
+
+static inline int atomic_add_negative(int i, volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+	int val;
+
+	local_irq_save(flags);
+	val = v->counter;
+	v->counter = val += i;
+	local_irq_restore(flags);
+
+	return val < 0;
+}
+
+static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	*addr &= ~mask;
+	local_irq_restore(flags);
+}
+
+/* Atomic operations are already serializing on ARM */
+#define smp_mb__before_atomic_dec()	barrier()
+#define smp_mb__after_atomic_dec()	barrier()
+#define smp_mb__before_atomic_inc()	barrier()
+#define smp_mb__after_atomic_inc()	barrier()
+
+#endif
+#endif
diff --git a/arch/arm/include/asm/proc-armv/system.h b/arch/arm/include/asm/proc-armv/system.h
new file mode 100644
index 0000000..c61374e
--- /dev/null
+++ b/arch/arm/include/asm/proc-armv/system.h
@@ -0,0 +1,224 @@
+/*
+ *  linux/include/asm-arm/proc-armv/system.h
+ *
+ *  Copyright (C) 1996 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef __ASM_PROC_SYSTEM_H
+#define __ASM_PROC_SYSTEM_H
+
+/*
+ * Save the current interrupt enable state & disable IRQs
+ */
+#ifdef CONFIG_ARM64
+
+/*
+ * Save the current interrupt enable state
+ * and disable IRQs/FIQs
+ */
+#define local_irq_save(flags)					\
+	({							\
+	asm volatile(						\
+	"mrs	%0, daif\n"					\
+	"msr	daifset, #3"					\
+	: "=r" (flags)						\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * restore saved IRQ & FIQ state
+ */
+#define local_irq_restore(flags)				\
+	({							\
+	asm volatile(						\
+	"msr	daif, %0"					\
+	:							\
+	: "r" (flags)						\
+	: "memory");						\
+	})
+
+/*
+ * Enable IRQs/FIQs
+ */
+#define local_irq_enable()					\
+	({							\
+	asm volatile(						\
+	"msr	daifclr, #3"					\
+	:							\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * Disable IRQs/FIQs
+ */
+#define local_irq_disable()					\
+	({							\
+	asm volatile(						\
+	"msr	daifset, #3"					\
+	:							\
+	:							\
+	: "memory");						\
+	})
+
+#else	/* CONFIG_ARM64 */
+
+#define local_irq_save(x)					\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ local_irq_save\n"	\
+"	orr	%1, %0, #128\n"					\
+"	msr	cpsr_c, %1"					\
+	: "=r" (x), "=r" (temp)					\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * Enable IRQs
+ */
+#define local_irq_enable()					\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ local_irq_enable\n"	\
+"	bic	%0, %0, #128\n"					\
+"	msr	cpsr_c, %0"					\
+	: "=r" (temp)						\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * Disable IRQs
+ */
+#define local_irq_disable()					\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ local_irq_disable\n"	\
+"	orr	%0, %0, #128\n"					\
+"	msr	cpsr_c, %0"					\
+	: "=r" (temp)						\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * Enable FIQs
+ */
+#define __stf()							\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ stf\n"		\
+"	bic	%0, %0, #64\n"					\
+"	msr	cpsr_c, %0"					\
+	: "=r" (temp)						\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * Disable FIQs
+ */
+#define __clf()							\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ clf\n"		\
+"	orr	%0, %0, #64\n"					\
+"	msr	cpsr_c, %0"					\
+	: "=r" (temp)						\
+	:							\
+	: "memory");						\
+	})
+
+/*
+ * Save the current interrupt enable state.
+ */
+#define local_save_flags(x)					\
+	({							\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ local_save_flags\n"	\
+	  : "=r" (x)						\
+	  :							\
+	  : "memory");						\
+	})
+
+/*
+ * restore saved IRQ & FIQ state
+ */
+#define local_irq_restore(x)					\
+	__asm__ __volatile__(					\
+	"msr	cpsr_c, %0		@ local_irq_restore\n"	\
+	:							\
+	: "r" (x)						\
+	: "memory")
+
+#endif	/* CONFIG_ARM64 */
+
+#if defined(CONFIG_CPU_SA1100) || defined(CONFIG_CPU_SA110) || \
+	defined(CONFIG_ARM64)
+/*
+ * On the StrongARM, "swp" is terminally broken since it bypasses the
+ * cache totally.  This means that the cache becomes inconsistent, and,
+ * since we use normal loads/stores as well, this is really bad.
+ * Typically, this causes oopsen in filp_close, but could have other,
+ * more disasterous effects.  There are two work-arounds:
+ *  1. Disable interrupts and emulate the atomic swap
+ *  2. Clean the cache, perform atomic swap, flush the cache
+ *
+ * We choose (1) since its the "easiest" to achieve here and is not
+ * dependent on the processor type.
+ */
+#define swp_is_buggy
+#endif
+
+static inline unsigned long __xchg(unsigned long x, volatile void *ptr, int size)
+{
+	extern void __bad_xchg(volatile void *, int);
+	unsigned long ret;
+#ifdef swp_is_buggy
+	unsigned long flags;
+#endif
+
+	switch (size) {
+#ifdef swp_is_buggy
+		case 1:
+			local_irq_save(flags);
+			ret = *(volatile unsigned char *)ptr;
+			*(volatile unsigned char *)ptr = x;
+			local_irq_restore(flags);
+			break;
+
+		case 4:
+			local_irq_save(flags);
+			ret = *(volatile unsigned long *)ptr;
+			*(volatile unsigned long *)ptr = x;
+			local_irq_restore(flags);
+			break;
+#else
+		case 1:	__asm__ __volatile__ ("swpb %0, %1, [%2]"
+					: "=&r" (ret)
+					: "r" (x), "r" (ptr)
+					: "memory");
+			break;
+		case 4:	__asm__ __volatile__ ("swp %0, %1, [%2]"
+					: "=&r" (ret)
+					: "r" (x), "r" (ptr)
+					: "memory");
+			break;
+#endif
+		default: __bad_xchg(ptr, size), ret = 0;
+	}
+
+	return ret;
+}
+
+#endif
diff --git a/include/asm-generic/atomic-long.h b/include/asm-generic/atomic-long.h
new file mode 100644
index 0000000..322d510
--- /dev/null
+++ b/include/asm-generic/atomic-long.h
@@ -0,0 +1,260 @@
+#ifndef _ASM_GENERIC_ATOMIC_LONG_H
+#define _ASM_GENERIC_ATOMIC_LONG_H
+/*
+ * Copyright (C) 2005 Silicon Graphics, Inc.
+ *	Christoph Lameter
+ *
+ * Allows to provide arch independent atomic definitions without the need to
+ * edit all arch specific atomic.h files.
+ */
+
+#include <asm/types.h>
+
+/*
+ * Suppport for atomic_long_t
+ *
+ * Casts for parameters are avoided for existing atomic functions in order to
+ * avoid issues with cast-as-lval under gcc 4.x and other limitations that the
+ * macros of a platform may have.
+ */
+
+#if BITS_PER_LONG == 64
+
+typedef atomic64_t atomic_long_t;
+
+#define ATOMIC_LONG_INIT(i)	ATOMIC64_INIT(i)
+
+static inline long atomic_long_read(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return (long)atomic64_read(v);
+}
+
+static inline void atomic_long_set(atomic_long_t *l, long i)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	atomic64_set(v, i);
+}
+
+static inline void atomic_long_inc(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	atomic64_inc(v);
+}
+
+static inline void atomic_long_dec(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	atomic64_dec(v);
+}
+
+static inline void atomic_long_add(long i, atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	atomic64_add(i, v);
+}
+
+static inline void atomic_long_sub(long i, atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	atomic64_sub(i, v);
+}
+
+static inline int atomic_long_sub_and_test(long i, atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return atomic64_sub_and_test(i, v);
+}
+
+static inline int atomic_long_dec_and_test(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return atomic64_dec_and_test(v);
+}
+
+static inline int atomic_long_inc_and_test(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return atomic64_inc_and_test(v);
+}
+
+static inline int atomic_long_add_negative(long i, atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return atomic64_add_negative(i, v);
+}
+
+static inline long atomic_long_add_return(long i, atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return (long)atomic64_add_return(i, v);
+}
+
+static inline long atomic_long_sub_return(long i, atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return (long)atomic64_sub_return(i, v);
+}
+
+static inline long atomic_long_inc_return(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return (long)atomic64_inc_return(v);
+}
+
+static inline long atomic_long_dec_return(atomic_long_t *l)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return (long)atomic64_dec_return(v);
+}
+
+static inline long atomic_long_add_unless(atomic_long_t *l, long a, long u)
+{
+	atomic64_t *v = (atomic64_t *)l;
+
+	return (long)atomic64_add_unless(v, a, u);
+}
+
+#define atomic_long_inc_not_zero(l) atomic64_inc_not_zero((atomic64_t *)(l))
+
+#define atomic_long_cmpxchg(l, old, new) \
+	(atomic64_cmpxchg((atomic64_t *)(l), (old), (new)))
+#define atomic_long_xchg(v, new) \
+	(atomic64_xchg((atomic64_t *)(v), (new)))
+
+#else  /*  BITS_PER_LONG == 64  */
+
+typedef atomic_t atomic_long_t;
+
+#define ATOMIC_LONG_INIT(i)	ATOMIC_INIT(i)
+static inline long atomic_long_read(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return (long)atomic_read(v);
+}
+
+static inline void atomic_long_set(atomic_long_t *l, long i)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	atomic_set(v, i);
+}
+
+static inline void atomic_long_inc(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	atomic_inc(v);
+}
+
+static inline void atomic_long_dec(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	atomic_dec(v);
+}
+
+static inline void atomic_long_add(long i, atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	atomic_add(i, v);
+}
+
+static inline void atomic_long_sub(long i, atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	atomic_sub(i, v);
+}
+
+#ifndef __BAREBOX__
+static inline int atomic_long_sub_and_test(long i, atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return atomic_sub_and_test(i, v);
+}
+
+static inline int atomic_long_dec_and_test(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return atomic_dec_and_test(v);
+}
+
+static inline int atomic_long_inc_and_test(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return atomic_inc_and_test(v);
+}
+
+static inline int atomic_long_add_negative(long i, atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return atomic_add_negative(i, v);
+}
+
+static inline long atomic_long_add_return(long i, atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return (long)atomic_add_return(i, v);
+}
+
+static inline long atomic_long_sub_return(long i, atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return (long)atomic_sub_return(i, v);
+}
+
+static inline long atomic_long_inc_return(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return (long)atomic_inc_return(v);
+}
+
+static inline long atomic_long_dec_return(atomic_long_t *l)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return (long)atomic_dec_return(v);
+}
+
+static inline long atomic_long_add_unless(atomic_long_t *l, long a, long u)
+{
+	atomic_t *v = (atomic_t *)l;
+
+	return (long)atomic_add_unless(v, a, u);
+}
+
+#define atomic_long_inc_not_zero(l) atomic_inc_not_zero((atomic_t *)(l))
+
+#define atomic_long_cmpxchg(l, old, new) \
+	(atomic_cmpxchg((atomic_t *)(l), (old), (new)))
+#define atomic_long_xchg(v, new) \
+	(atomic_xchg((atomic_t *)(v), (new)))
+#endif  /*  __BAREBOX__ */
+
+#endif  /*  BITS_PER_LONG == 64  */
+
+#endif  /*  _ASM_GENERIC_ATOMIC_LONG_H  */
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
