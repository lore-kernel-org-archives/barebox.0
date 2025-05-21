Delivery-date: Wed, 21 May 2025 19:42:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSF-001EjG-1B
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 19:42:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSE-0006vu-0G
	for lore@pengutronix.de; Wed, 21 May 2025 19:42:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8LgsK+aaKyYQR2SR1LBw/xISErrnOmQ6XaTfD6RWrQk=; b=OBwLWlL/GSpn4qICz3qMSALVA8
	qbjsVlJyEvTnrj0kMYZhqZoUY+w4F72gkmxu0uaDl62hS6bjE3l5hTSv6AaREX2eqNnCVPsVk74Hj
	Q7LrBMia1amI5gXbR4+fGIWb01AHmAFTxa3Jjuivizlv0lU0xLLygLCf9YSu33wvQ14uzmJXLKfdw
	RnWMejZjMCiLS85TlVBGDUF2rjhbV0L8WtO7uJBNvEZcAuNL75Qvoqsa6G/yTO1OBjtZ+h7tBUcTC
	PikungWkWxug31PqBnWmbtmF78ewLScQxuNbED9tTNxHAe8FWIQYsrn8KtB+nsoLW+wDVxz8RKQ+h
	DTiHesjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRd-0000000Gb2i-0TpK;
	Wed, 21 May 2025 17:41:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRD-0000000GayB-17hd
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 17:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-0006S3-Ag; Wed, 21 May 2025 19:41:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-000bYB-0Q;
	Wed, 21 May 2025 19:41:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-006bCu-1d;
	Wed, 21 May 2025 19:41:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 May 2025 19:41:01 +0200
Message-Id: <20250521174104.1570239-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
References: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_104107_669498_B70A71D3 
X-CRM114-Status: GOOD (  31.45  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] arch: sync READ_ONCE/WRITE_ONCE with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for using READ_ONCE/WRITE_ONCE in the MMU code, let's
give it a sync with Linux.

This removes ACCESS_ONCE, but we have only a single user in barebox
anyway outside of scripts/.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/porting.rst     |  2 +
 arch/arm/include/asm/barrier.h      |  8 +++
 arch/kvx/include/asm/barrier.h      |  2 +
 arch/mips/include/asm/barrier.h     |  8 +++
 arch/openrisc/include/asm/barrier.h |  8 +++
 arch/powerpc/include/asm/barrier.h  |  8 +++
 arch/sandbox/include/asm/barrier.h  |  8 +++
 arch/x86/include/asm/barrier.h      |  8 +++
 include/asm-generic/barrier.h       | 24 ++++++++
 include/asm-generic/rwonce.h        | 87 ++++++++++++++++++++++++++
 include/linux/bitops.h              |  2 +-
 include/linux/compiler.h            | 94 -----------------------------
 include/linux/compiler_types.h      | 46 ++++++++++++++
 include/linux/list.h                |  1 +
 14 files changed, 211 insertions(+), 95 deletions(-)
 create mode 100644 arch/arm/include/asm/barrier.h
 create mode 100644 arch/mips/include/asm/barrier.h
 create mode 100644 arch/openrisc/include/asm/barrier.h
 create mode 100644 arch/powerpc/include/asm/barrier.h
 create mode 100644 arch/sandbox/include/asm/barrier.h
 create mode 100644 arch/x86/include/asm/barrier.h
 create mode 100644 include/asm-generic/barrier.h
 create mode 100644 include/asm-generic/rwonce.h

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index e3904eea067c..9dab2a301f2a 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -488,6 +488,8 @@ Your architecture needs to implement following headers:
    Only if ``HAS_DMA`` is selected by the architecture.
  - ``<asm/io.h>``
    Defines I/O memory and port accessors
+ - ``<asm/barrier.h>``
+   Can normally just include ``<asm-generic/barrier.h>``
  - ``<asm/mmu.h>``
  - ``<asm/string.h>``
  - ``<asm/swab.h>``
diff --git a/arch/arm/include/asm/barrier.h b/arch/arm/include/asm/barrier.h
new file mode 100644
index 000000000000..5eb06065cd9f
--- /dev/null
+++ b/arch/arm/include/asm/barrier.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_BARRIER_H
+#define _ASM_BARRIER_H
+
+#include <asm-generic/barrier.h>
+
+#endif
diff --git a/arch/kvx/include/asm/barrier.h b/arch/kvx/include/asm/barrier.h
index 616b5f90a230..d08b4a98a62c 100644
--- a/arch/kvx/include/asm/barrier.h
+++ b/arch/kvx/include/asm/barrier.h
@@ -6,6 +6,8 @@
 #ifndef _ASM_KVX_BARRIER_H
 #define _ASM_KVX_BARRIER_H
 
+#include <asm-generic/barrier.h>
+
 /* fence is sufficient to guarantee write ordering */
 #define wmb()	__builtin_kvx_fence()
 
diff --git a/arch/mips/include/asm/barrier.h b/arch/mips/include/asm/barrier.h
new file mode 100644
index 000000000000..5eb06065cd9f
--- /dev/null
+++ b/arch/mips/include/asm/barrier.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_BARRIER_H
+#define _ASM_BARRIER_H
+
+#include <asm-generic/barrier.h>
+
+#endif
diff --git a/arch/openrisc/include/asm/barrier.h b/arch/openrisc/include/asm/barrier.h
new file mode 100644
index 000000000000..5eb06065cd9f
--- /dev/null
+++ b/arch/openrisc/include/asm/barrier.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_BARRIER_H
+#define _ASM_BARRIER_H
+
+#include <asm-generic/barrier.h>
+
+#endif
diff --git a/arch/powerpc/include/asm/barrier.h b/arch/powerpc/include/asm/barrier.h
new file mode 100644
index 000000000000..5eb06065cd9f
--- /dev/null
+++ b/arch/powerpc/include/asm/barrier.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_BARRIER_H
+#define _ASM_BARRIER_H
+
+#include <asm-generic/barrier.h>
+
+#endif
diff --git a/arch/sandbox/include/asm/barrier.h b/arch/sandbox/include/asm/barrier.h
new file mode 100644
index 000000000000..5eb06065cd9f
--- /dev/null
+++ b/arch/sandbox/include/asm/barrier.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_BARRIER_H
+#define _ASM_BARRIER_H
+
+#include <asm-generic/barrier.h>
+
+#endif
diff --git a/arch/x86/include/asm/barrier.h b/arch/x86/include/asm/barrier.h
new file mode 100644
index 000000000000..5eb06065cd9f
--- /dev/null
+++ b/arch/x86/include/asm/barrier.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_BARRIER_H
+#define _ASM_BARRIER_H
+
+#include <asm-generic/barrier.h>
+
+#endif
diff --git a/include/asm-generic/barrier.h b/include/asm-generic/barrier.h
new file mode 100644
index 000000000000..fbfb67f3087f
--- /dev/null
+++ b/include/asm-generic/barrier.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Generic barrier definitions.
+ *
+ * It should be possible to use these on really simple architectures,
+ * but it serves more as a starting point for new ports.
+ *
+ * Copyright (C) 2007 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+#ifndef __ASM_GENERIC_BARRIER_H
+#define __ASM_GENERIC_BARRIER_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/compiler.h>
+#include <asm-generic/rwonce.h>
+
+#ifndef nop
+#define nop()	asm volatile ("nop")
+#endif
+
+#endif /* !__ASSEMBLY__ */
+#endif /* __ASM_GENERIC_BARRIER_H */
diff --git a/include/asm-generic/rwonce.h b/include/asm-generic/rwonce.h
new file mode 100644
index 000000000000..53aad037902c
--- /dev/null
+++ b/include/asm-generic/rwonce.h
@@ -0,0 +1,87 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Prevent the compiler from merging or refetching reads or writes. The
+ * compiler is also forbidden from reordering successive instances of
+ * READ_ONCE and WRITE_ONCE, but only when the compiler is aware of some
+ * particular ordering. One way to make the compiler aware of ordering is to
+ * put the two invocations of READ_ONCE or WRITE_ONCE in different C
+ * statements.
+ *
+ * These two macros will also work on aggregate data types like structs or
+ * unions.
+ *
+ * Their two major use cases are: (1) Mediating communication between
+ * process-level code and irq/NMI handlers, all running on the same CPU,
+ * and (2) Ensuring that the compiler does not fold, spindle, or otherwise
+ * mutilate accesses that either do not require ordering or that interact
+ * with an explicit memory barrier or atomic instruction that provides the
+ * required ordering.
+ */
+#ifndef __ASM_GENERIC_RWONCE_H
+#define __ASM_GENERIC_RWONCE_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/compiler_types.h>
+
+/*
+ * Yes, this permits 64-bit accesses on 32-bit architectures. These will
+ * actually be atomic in some cases (namely Armv7 + LPAE), but for others we
+ * rely on the access being split into 2x32-bit accesses for a 32-bit quantity
+ * (e.g. a virtual address) and a strong prevailing wind.
+ */
+#define compiletime_assert_rwonce_type(t)					\
+	compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),	\
+		"Unsupported access size for {READ,WRITE}_ONCE().")
+
+/*
+ * Use __READ_ONCE() instead of READ_ONCE() if you do not require any
+ * atomicity. Note that this may result in tears!
+ */
+#ifndef __READ_ONCE
+#define __READ_ONCE(x)	(*(const volatile __unqual_scalar_typeof(x) *)&(x))
+#endif
+
+#define READ_ONCE(x)							\
+({									\
+	compiletime_assert_rwonce_type(x);				\
+	__READ_ONCE(x);							\
+})
+
+#define __WRITE_ONCE(x, val)						\
+do {									\
+	*(volatile typeof(x) *)&(x) = (val);				\
+} while (0)
+
+#define WRITE_ONCE(x, val)						\
+do {									\
+	compiletime_assert_rwonce_type(x);				\
+	__WRITE_ONCE(x, val);						\
+} while (0)
+
+static __no_sanitize_or_inline
+unsigned long __read_once_word_nocheck(const void *addr)
+{
+	return __READ_ONCE(*(unsigned long *)addr);
+}
+
+/*
+ * Use READ_ONCE_NOCHECK() instead of READ_ONCE() if you need to load a
+ * word from memory atomically but without telling KASAN/KCSAN. This is
+ * usually used by unwinding code when walking the stack of a running process.
+ */
+#define READ_ONCE_NOCHECK(x)						\
+({									\
+	compiletime_assert(sizeof(x) == sizeof(unsigned long),		\
+		"Unsupported access size for READ_ONCE_NOCHECK().");	\
+	(typeof(x))__read_once_word_nocheck(&(x));			\
+})
+
+static __no_kasan_or_inline
+unsigned long read_word_at_a_time(const void *addr)
+{
+	return *(unsigned long *)addr;
+}
+
+#endif /* __ASSEMBLY__ */
+#endif	/* __ASM_GENERIC_RWONCE_H */
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 44602ad5af84..b6500e4630b3 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -210,7 +210,7 @@ static inline void assign_bit(long nr, volatile unsigned long *addr, bool value)
 	typeof(*ptr) old, new;					\
 								\
 	do {							\
-		old = ACCESS_ONCE(*ptr);			\
+		old = READ_ONCE(*ptr);				\
 		new = (old & ~mask) | bits;			\
 	} while (cmpxchg(ptr, old, new) != old);		\
 								\
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 6654c164f594..e7dc9ba0a590 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -168,26 +168,6 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 
 #include <linux/types.h>
 
-#define __READ_ONCE_SIZE						\
-({									\
-	switch (size) {							\
-	case 1: *(__u8 *)res = *(volatile __u8 *)p; break;		\
-	case 2: *(__u16 *)res = *(volatile __u16 *)p; break;		\
-	case 4: *(__u32 *)res = *(volatile __u32 *)p; break;		\
-	case 8: *(__u64 *)res = *(volatile __u64 *)p; break;		\
-	default:							\
-		barrier();						\
-		__builtin_memcpy((void *)res, (const void *)p, size);	\
-		barrier();						\
-	}								\
-})
-
-static __always_inline
-void __read_once_size(const volatile void *p, void *res, int size)
-{
-	__READ_ONCE_SIZE;
-}
-
 #ifdef CONFIG_KASAN
 /*
  * We can't declare function 'inline' because __no_sanitize_address confilcts
@@ -200,80 +180,6 @@ void __read_once_size(const volatile void *p, void *res, int size)
 # define __no_kasan_or_inline __always_inline
 #endif
 
-static __no_kasan_or_inline
-void __read_once_size_nocheck(const volatile void *p, void *res, int size)
-{
-	__READ_ONCE_SIZE;
-}
-
-static __always_inline void __write_once_size(volatile void *p, void *res, int size)
-{
-	switch (size) {
-	case 1: *(volatile __u8 *)p = *(__u8 *)res; break;
-	case 2: *(volatile __u16 *)p = *(__u16 *)res; break;
-	case 4: *(volatile __u32 *)p = *(__u32 *)res; break;
-	case 8: *(volatile __u64 *)p = *(__u64 *)res; break;
-	default:
-		barrier();
-		__builtin_memcpy((void *)p, (const void *)res, size);
-		barrier();
-	}
-}
-
-/*
- * Prevent the compiler from merging or refetching reads or writes. The
- * compiler is also forbidden from reordering successive instances of
- * READ_ONCE and WRITE_ONCE, but only when the compiler is aware of some
- * particular ordering. One way to make the compiler aware of ordering is to
- * put the two invocations of READ_ONCE or WRITE_ONCE in different C
- * statements.
- *
- * These two macros will also work on aggregate data types like structs or
- * unions. If the size of the accessed data type exceeds the word size of
- * the machine (e.g., 32 bits or 64 bits) READ_ONCE() and WRITE_ONCE() will
- * fall back to memcpy(). There's at least two memcpy()s: one for the
- * __builtin_memcpy() and then one for the macro doing the copy of variable
- * - '__u' allocated on the stack.
- *
- * Their two major use cases are: (1) Mediating communication between
- * process-level code and irq/NMI handlers, all running on the same CPU,
- * and (2) Ensuring that the compiler does not fold, spindle, or otherwise
- * mutilate accesses that either do not require ordering or that interact
- * with an explicit memory barrier or atomic instruction that provides the
- * required ordering.
- */
-
-#define __READ_ONCE(x, check)						\
-({									\
-	union { typeof(x) __val; char __c[1]; } __u;			\
-	if (check)							\
-		__read_once_size(&(x), __u.__c, sizeof(x));		\
-	else								\
-		__read_once_size_nocheck(&(x), __u.__c, sizeof(x));	\
-	__u.__val;							\
-})
-#define READ_ONCE(x) __READ_ONCE(x, 1)
-
-/*
- * Use READ_ONCE_NOCHECK() instead of READ_ONCE() if you need
- * to hide memory access from KASAN.
- */
-#define READ_ONCE_NOCHECK(x) __READ_ONCE(x, 0)
-
-static __no_kasan_or_inline
-unsigned long read_word_at_a_time(const void *addr)
-{
-	return *(unsigned long *)addr;
-}
-
-#define WRITE_ONCE(x, val) \
-({							\
-	union { typeof(x) __val; char __c[1]; } __u =	\
-		{ .__val = (__force typeof(x)) (val) }; \
-	__write_once_size(&(x), __u.__c, sizeof(x));	\
-	__u.__val;					\
-})
-
 #endif /* __KERNEL__ */
 
 /**
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index d208004b3989..87ab117aca13 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -222,6 +222,28 @@ struct ftrace_likely_data {
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
 
+/*
+ * __unqual_scalar_typeof(x) - Declare an unqualified scalar type, leaving
+ *			       non-scalar types unchanged.
+ */
+/*
+ * Prefer C11 _Generic for better compile-times and simpler code. Note: 'char'
+ * is not type-compatible with 'signed char', and we define a separate case.
+ */
+#define __scalar_type_to_expr_cases(type)				\
+		unsigned type:	(unsigned type)0,			\
+		signed type:	(signed type)0
+
+#define __unqual_scalar_typeof(x) typeof(				\
+		_Generic((x),						\
+			 char:	(char)0,				\
+			 __scalar_type_to_expr_cases(char),		\
+			 __scalar_type_to_expr_cases(short),		\
+			 __scalar_type_to_expr_cases(int),		\
+			 __scalar_type_to_expr_cases(long),		\
+			 __scalar_type_to_expr_cases(long long),	\
+			 default: (x)))
+
 /* Is this type a native word size -- useful for atomic operations */
 #define __native_word(t) \
 	(sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
@@ -356,6 +378,30 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
+/*
+ * Sanitizer helper attributes: Because using __always_inline and
+ * __no_sanitize_* conflict, provide helper attributes that will either expand
+ * to __no_sanitize_* in compilation units where instrumentation is enabled
+ * (__SANITIZE_*__), or __always_inline in compilation units without
+ * instrumentation (__SANITIZE_*__ undefined).
+ */
+#ifdef __SANITIZE_ADDRESS__
+/*
+ * We can't declare function 'inline' because __no_sanitize_address conflicts
+ * with inlining. Attempt to inline it may cause a build failure.
+ *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
+ * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
+ */
+# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
+# define __no_sanitize_or_inline __no_kasan_or_inline
+#else
+# define __no_kasan_or_inline __always_inline
+#endif
+
+#ifndef __no_sanitize_or_inline
+#define __no_sanitize_or_inline __always_inline
+#endif
+
 /* code that can't be instrumented at all */
 #define noinstr \
 	noinline notrace __no_sanitize_address __no_stack_protector
diff --git a/include/linux/list.h b/include/linux/list.h
index 35b3f573806a..b90ea3e125d0 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -7,6 +7,7 @@
 #include <linux/stddef.h>
 #include <linux/poison.h>
 #include <linux/const.h>
+#include <asm/barrier.h>
 
 /*
  * Simple doubly linked list implementation.
-- 
2.39.5



