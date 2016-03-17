Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agUkv-0002yI-Bq
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:02:29 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 0B32727A703
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:20 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:23 +0100
Message-Id: <1458208829-25570-8-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 07/13] compiler*.h: include/linux/compiler*.h with Linux 4.5
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

Include <linux/types.h> instead of uapi/linux/types.h.

This is required for READ_ONCE and WRITE_ONCE for upcoming atomic_t.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 include/linux/compiler-gcc.h   |  35 ++++++++-
 include/linux/compiler-intel.h |   1 +
 include/linux/compiler.h       | 171 ++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 203 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index dfaa7b3..22ab246 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -205,11 +205,31 @@
 
 #if GCC_VERSION >= 40600
 /*
- * Tell the optimizer that something else uses this function or variable.
+ * When used with Link Time Optimization, gcc can optimize away C functions or
+ * variables which are referenced only from assembly code.  __visible tells the
+ * optimizer that something else uses this function or variable, thus preventing
+ * this.
  */
 #define __visible	__attribute__((externally_visible))
 #endif
 
+
+#if GCC_VERSION >= 40900 && !defined(__CHECKER__)
+/*
+ * __assume_aligned(n, k): Tell the optimizer that the returned
+ * pointer can be assumed to be k modulo n. The second argument is
+ * optional (default 0), so we use a variadic macro to make the
+ * shorthand.
+ *
+ * Beware: Do not apply this to functions which may return
+ * ERR_PTRs. Also, it is probably unwise to apply it to functions
+ * returning extra information in the low bits (but in that case the
+ * compiler should see some alignment anyway, when the return value is
+ * massaged by 'flags = ptr & 3; ptr &= ~3;').
+ */
+#define __assume_aligned(a, ...) __attribute__((__assume_aligned__(a, ## __VA_ARGS__)))
+#endif
+
 /*
  * GCC 'asm goto' miscompiles certain code sequences:
  *
@@ -237,12 +257,25 @@
 #define KASAN_ABI_VERSION 3
 #endif
 
+#if GCC_VERSION >= 40902
+/*
+ * Tell the compiler that address safety instrumentation (KASAN)
+ * should not be applied to that function.
+ * Conflicts with inlining: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
+ */
+#define __no_sanitize_address __attribute__((no_sanitize_address))
+#endif
+
 #endif	/* gcc version >= 40000 specific checks */
 
 #if !defined(__noclone)
 #define __noclone	/* not needed */
 #endif
 
+#if !defined(__no_sanitize_address)
+#define __no_sanitize_address
+#endif
+
 /*
  * A trick to suppress uninitialized variable warning without generating any
  * code
diff --git a/include/linux/compiler-intel.h b/include/linux/compiler-intel.h
index 58daccc..d4c7113 100644
--- a/include/linux/compiler-intel.h
+++ b/include/linux/compiler-intel.h
@@ -42,3 +42,4 @@
 #define __HAVE_BUILTIN_BSWAP16__
 #define __builtin_bswap16 _bswap16
 #endif
+
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 8f0c292..020ad16 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -4,8 +4,8 @@
 #ifndef __ASSEMBLY__
 
 #ifdef __CHECKER__
-# define __user		/* no user address space in barebox */
-# define __kernel	/* default address space */
+# define __user		__attribute__((noderef, address_space(1)))
+# define __kernel	__attribute__((address_space(0)))
 # define __safe		__attribute__((safe))
 # define __force	__attribute__((force))
 # define __nocast	__attribute__((nocast))
@@ -16,6 +16,13 @@
 # define __acquire(x)	__context__(x,1)
 # define __release(x)	__context__(x,-1)
 # define __cond_lock(x,c)	((c) ? ({ __acquire(x); 1; }) : 0)
+# define __percpu	__attribute__((noderef, address_space(3)))
+# define __pmem		__attribute__((noderef, address_space(5)))
+#ifdef CONFIG_SPARSE_RCU_POINTER
+# define __rcu		__attribute__((noderef, address_space(4)))
+#else
+# define __rcu
+#endif
 extern void __chk_user_ptr(const volatile void __user *);
 extern void __chk_io_ptr(const volatile void __iomem *);
 #else
@@ -34,6 +41,9 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # define __acquire(x) (void)0
 # define __release(x) (void)0
 # define __cond_lock(x,c) (c)
+# define __percpu
+# define __rcu
+# define __pmem
 #endif
 
 /* Indirect macros required for expanded argument pasting, eg. __LINE__. */
@@ -46,7 +56,11 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 #include <linux/compiler-gcc.h>
 #endif
 
+#if defined(CC_USING_HOTPATCH) && !defined(__CHECKER__)
+#define notrace __attribute__((hotpatch(0,0)))
+#else
 #define notrace __attribute__((no_instrument_function))
+#endif
 
 /* Intel compiler defines __GNUC__. So we will overwrite implementations
  * coming from above header files here
@@ -130,7 +144,7 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
  */
 #define if(cond, ...) __trace_if( (cond , ## __VA_ARGS__) )
 #define __trace_if(cond) \
-	if (__builtin_constant_p((cond)) ? !!(cond) :			\
+	if (__builtin_constant_p(!!(cond)) ? !!(cond) :			\
 	({								\
 		int ______r;						\
 		static struct ftrace_branch_data			\
@@ -182,6 +196,126 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 # define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __LINE__)
 #endif
 
+#include <linux/types.h>
+
+#define __READ_ONCE_SIZE						\
+({									\
+	switch (size) {							\
+	case 1: *(__u8 *)res = *(volatile __u8 *)p; break;		\
+	case 2: *(__u16 *)res = *(volatile __u16 *)p; break;		\
+	case 4: *(__u32 *)res = *(volatile __u32 *)p; break;		\
+	case 8: *(__u64 *)res = *(volatile __u64 *)p; break;		\
+	default:							\
+		barrier();						\
+		__builtin_memcpy((void *)res, (const void *)p, size);	\
+		barrier();						\
+	}								\
+})
+
+static __always_inline
+void __read_once_size(const volatile void *p, void *res, int size)
+{
+	__READ_ONCE_SIZE;
+}
+
+#ifdef CONFIG_KASAN
+/*
+ * This function is not 'inline' because __no_sanitize_address confilcts
+ * with inlining. Attempt to inline it may cause a build failure.
+ * 	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
+ * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
+ */
+static __no_sanitize_address __maybe_unused
+void __read_once_size_nocheck(const volatile void *p, void *res, int size)
+{
+	__READ_ONCE_SIZE;
+}
+#else
+static __always_inline
+void __read_once_size_nocheck(const volatile void *p, void *res, int size)
+{
+	__READ_ONCE_SIZE;
+}
+#endif
+
+static __always_inline void __write_once_size(volatile void *p, void *res, int size)
+{
+	switch (size) {
+	case 1: *(volatile __u8 *)p = *(__u8 *)res; break;
+	case 2: *(volatile __u16 *)p = *(__u16 *)res; break;
+	case 4: *(volatile __u32 *)p = *(__u32 *)res; break;
+	case 8: *(volatile __u64 *)p = *(__u64 *)res; break;
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
+#define __READ_ONCE(x, check)						\
+({									\
+	union { typeof(x) __val; char __c[1]; } __u;			\
+	if (check)							\
+		__read_once_size(&(x), __u.__c, sizeof(x));		\
+	else								\
+		__read_once_size_nocheck(&(x), __u.__c, sizeof(x));	\
+	__u.__val;							\
+})
+#define READ_ONCE(x) __READ_ONCE(x, 1)
+
+/*
+ * Use READ_ONCE_NOCHECK() instead of READ_ONCE() if you need
+ * to hide memory access from KASAN.
+ */
+#define READ_ONCE_NOCHECK(x) __READ_ONCE(x, 0)
+
+#define WRITE_ONCE(x, val) \
+({							\
+	union { typeof(x) __val; char __c[1]; } __u =	\
+		{ .__val = (__force typeof(x)) (val) }; \
+	__write_once_size(&(x), __u.__c, sizeof(x));	\
+	__u.__val;					\
+})
+
+/**
+ * smp_cond_acquire() - Spin wait for cond with ACQUIRE ordering
+ * @cond: boolean expression to wait for
+ *
+ * Equivalent to using smp_load_acquire() on the condition variable but employs
+ * the control dependency of the wait to reduce the barrier on many platforms.
+ *
+ * The control dependency provides a LOAD->STORE order, the additional RMB
+ * provides LOAD->LOAD order, together they provide LOAD->{LOAD,STORE} order,
+ * aka. ACQUIRE.
+ */
+#define smp_cond_acquire(cond)	do {		\
+	while (!(cond))				\
+		cpu_relax();			\
+	smp_rmb(); /* ctrl + rmb := acquire */	\
+} while (0)
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
@@ -300,6 +434,14 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 #define __visible
 #endif
 
+/*
+ * Assume alignment of return value.
+ */
+#ifndef __assume_aligned
+#define __assume_aligned(a, ...)
+#endif
+
+
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #ifndef __same_type
 # define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
@@ -387,4 +529,27 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 	(volatile typeof(x) *)&(x); })
 #define ACCESS_ONCE(x) (*__ACCESS_ONCE(x))
 
+/**
+ * lockless_dereference() - safely load a pointer for later dereference
+ * @p: The pointer to load
+ *
+ * Similar to rcu_dereference(), but for situations where the pointed-to
+ * object's lifetime is managed by something other than RCU.  That
+ * "something other" might be reference counting or simple immortality.
+ */
+#define lockless_dereference(p) \
+({ \
+	typeof(p) _________p1 = READ_ONCE(p); \
+	smp_read_barrier_depends(); /* Dependency order vs. p above. */ \
+	(_________p1); \
+})
+
+/* Ignore/forbid kprobes attach on very low level functions marked by this attribute: */
+#ifdef CONFIG_KPROBES
+# define __kprobes	__attribute__((__section__(".kprobes.text")))
+# define nokprobe_inline	__always_inline
+#else
+# define __kprobes
+# define nokprobe_inline	inline
+#endif
 #endif /* __LINUX_COMPILER_H */
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
