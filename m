Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0tq-0000U1-PD
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 07:33:12 +0000
Received: by wgck11 with SMTP id k11so132115552wgc.0
 for <barebox@lists.infradead.org>; Mon, 06 Jul 2015 00:32:48 -0700 (PDT)
Received: from aga-ws-01 ([212.184.113.251])
 by mx.google.com with ESMTPSA id di7sm27077207wib.23.2015.07.06.00.32.47
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jul 2015 00:32:47 -0700 (PDT)
Date: Mon, 6 Jul 2015 09:32:45 +0200
From: Alexey Galakhov <agalakhov@gmail.com>
Message-ID: <20150706093245.612dd77c@aga-ws-01>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] build: update compiler*.h to newest versions
To: barebox@lists.infradead.org

This adds the support for gcc 5.x and clang.

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 include/linux/compiler-clang.h |  12 +++
 include/linux/compiler-gcc.h   | 227 +++++++++++++++++++++++++++++++++++------
 include/linux/compiler-gcc3.h  |  31 ------
 include/linux/compiler-gcc4.h  |  61 -----------
 include/linux/compiler-intel.h |  16 ++-
 include/linux/compiler.h       |  99 ++++++++++++++++--
 6 files changed, 315 insertions(+), 131 deletions(-)
 create mode 100644 include/linux/compiler-clang.h
 delete mode 100644 include/linux/compiler-gcc3.h
 delete mode 100644 include/linux/compiler-gcc4.h

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
new file mode 100644
index 0000000..d1e49d5
--- /dev/null
+++ b/include/linux/compiler-clang.h
@@ -0,0 +1,12 @@
+#ifndef __LINUX_COMPILER_H
+#error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
+#endif
+
+/* Some compiler specific definitions are overwritten here
+ * for Clang compiler
+ */
+
+#ifdef uninitialized_var
+#undef uninitialized_var
+#define uninitialized_var(x) x = *(&(x))
+#endif
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 73dcf80..dfaa7b3 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -5,11 +5,28 @@
 /*
  * Common definitions for all gcc versions go here.
  */
-
+#define GCC_VERSION (__GNUC__ * 10000		\
+		     + __GNUC_MINOR__ * 100	\
+		     + __GNUC_PATCHLEVEL__)
 
 /* Optimization barrier */
+
 /* The "volatile" is due to gcc bugs */
 #define barrier() __asm__ __volatile__("": : :"memory")
+/*
+ * This version is i.e. to prevent dead stores elimination on @ptr
+ * where gcc and llvm may behave differently when otherwise using
+ * normal barrier(): while gcc behavior gets along with a normal
+ * barrier(), llvm needs an explicit input variable to be assumed
+ * clobbered. The issue is as follows: while the inline asm might
+ * access any memory it wants, the compiler could have fit all of
+ * @ptr into memory registers instead, and since @ptr never escaped
+ * from that, it proofed that the inline asm wasn't touching any of
+ * it. This version works well with both compilers, i.e. we're telling
+ * the compiler that the inline asm absolutely may see the contents
+ * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
+ */
+#define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
 
 /*
  * This macro obfuscates arithmetic on a variable address so that gcc
@@ -29,39 +46,63 @@
  * the inline assembly constraint from =g to =r, in this particular
  * case either is valid.
  */
-#define RELOC_HIDE(ptr, off)					\
-  ({ unsigned long __ptr;					\
-    __asm__ ("" : "=r"(__ptr) : "0"(ptr));		\
-    (typeof(ptr)) (__ptr + (off)); })
+#define RELOC_HIDE(ptr, off)						\
+({									\
+	unsigned long __ptr;						\
+	__asm__ ("" : "=r"(__ptr) : "0"(ptr));				\
+	(typeof(ptr)) (__ptr + (off));					\
+})
 
+/* Make the optimizer believe the variable can be manipulated arbitrarily. */
+#define OPTIMIZER_HIDE_VAR(var)						\
+	__asm__ ("" : "=r" (var) : "0" (var))
+
+#ifdef __CHECKER__
+#define __must_be_array(a)	0
+#else
 /* &a[0] degrades to a pointer: a different type from an array */
-#define __must_be_array(a) \
-  BUILD_BUG_ON_ZERO(__builtin_types_compatible_p(typeof(a), typeof(&a[0])))
+#define __must_be_array(a)	BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
+#endif
 
 /*
  * Force always-inline if the user requests it so via the .config,
  * or if gcc is too old:
  */
-#if !defined(CONFIG_ARCH_SUPPORTS_OPTIMIZED_INLINING) || \
+#if !defined(CONFIG_ARCH_SUPPORTS_OPTIMIZED_INLINING) ||		\
     !defined(CONFIG_OPTIMIZE_INLINING) || (__GNUC__ < 4)
-# define inline		inline		__attribute__((always_inline))
-# define __inline__	__inline__	__attribute__((always_inline))
-# define __inline	__inline	__attribute__((always_inline))
+#define inline		inline		__attribute__((always_inline)) notrace
+#define __inline__	__inline__	__attribute__((always_inline)) notrace
+#define __inline	__inline	__attribute__((always_inline)) notrace
+#else
+/* A lot of inline functions can cause havoc with function tracing */
+#define inline		inline		notrace
+#define __inline__	__inline__	notrace
+#define __inline	__inline	notrace
 #endif
 
-#define __deprecated			__attribute__((deprecated))
-#define __packed			__attribute__((packed))
-#define __weak				__attribute__((weak))
+#define __always_inline	inline __attribute__((always_inline))
+#define  noinline	__attribute__((noinline))
+
+#define __deprecated	__attribute__((deprecated))
+#define __packed	__attribute__((packed))
+#define __weak		__attribute__((weak))
+#define __alias(symbol)	__attribute__((alias(#symbol)))
 
 /*
- * it doesn't make sense on ARM (currently the only user of __naked) to trace
- * naked functions because then mcount is called without stack and frame pointer
- * being set up and there is no chance to restore the lr register to the value
- * before mcount was called.
+ * it doesn't make sense on ARM (currently the only user of __naked)
+ * to trace naked functions because then mcount is called without
+ * stack and frame pointer being set up and there is no chance to
+ * restore the lr register to the value before mcount was called.
+ *
+ * The asm() bodies of naked functions often depend on standard calling
+ * conventions, therefore they must be noinline and noclone.
+ *
+ * GCC 4.[56] currently fail to enforce this, so we must do so ourselves.
+ * See GCC PR44290.
  */
-#define __naked				__attribute__((naked)) notrace
+#define __naked		__attribute__((naked)) noinline __noclone notrace
 
-#define __noreturn			__attribute__((noreturn))
+#define __noreturn	__attribute__((noreturn))
 
 /*
  * From the GCC manual:
@@ -73,15 +114,137 @@
  * would be.
  * [...]
  */
-#define __pure				__attribute__((pure))
-#define __aligned(x)			__attribute__((aligned(x)))
-#define __printf(a,b)			__attribute__((format(printf,a,b)))
-#define  noinline			__attribute__((noinline))
-#define __attribute_const__		__attribute__((__const__))
-#define __maybe_unused			__attribute__((unused))
-#define __always_unused			__attribute__((unused))
-
-#define __gcc_header(x) #x
-#define _gcc_header(x) __gcc_header(linux/compiler-gcc##x.h)
-#define gcc_header(x) _gcc_header(x)
-#include gcc_header(__GNUC__)
+#define __pure			__attribute__((pure))
+#define __aligned(x)		__attribute__((aligned(x)))
+#define __printf(a, b)		__attribute__((format(printf, a, b)))
+#define __scanf(a, b)		__attribute__((format(scanf, a, b)))
+#define __attribute_const__	__attribute__((__const__))
+#define __maybe_unused		__attribute__((unused))
+#define __always_unused		__attribute__((unused))
+
+/* gcc version specific checks */
+
+#if GCC_VERSION < 30200
+# error Sorry, your compiler is too old - please upgrade it.
+#endif
+
+#if GCC_VERSION < 30300
+# define __used			__attribute__((__unused__))
+#else
+# define __used			__attribute__((__used__))
+#endif
+
+#ifdef CONFIG_GCOV_KERNEL
+# if GCC_VERSION < 30400
+#   error "GCOV profiling support for gcc versions below 3.4 not included"
+# endif /* __GNUC_MINOR__ */
+#endif /* CONFIG_GCOV_KERNEL */
+
+#if GCC_VERSION >= 30400
+#define __must_check		__attribute__((warn_unused_result))
+#endif
+
+#if GCC_VERSION >= 40000
+
+/* GCC 4.1.[01] miscompiles __weak */
+#ifdef __KERNEL__
+# if GCC_VERSION >= 40100 &&  GCC_VERSION <= 40101
+#  error Your version of gcc miscompiles the __weak directive
+# endif
+#endif
+
+#define __used			__attribute__((__used__))
+#define __compiler_offsetof(a, b)					\
+	__builtin_offsetof(a, b)
+
+#if GCC_VERSION >= 40100 && GCC_VERSION < 40600
+# define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
+#endif
+
+#if GCC_VERSION >= 40300
+/* Mark functions as cold. gcc will assume any path leading to a call
+ * to them will be unlikely.  This means a lot of manual unlikely()s
+ * are unnecessary now for any paths leading to the usual suspects
+ * like BUG(), printk(), panic() etc. [but let's keep them for now for
+ * older compilers]
+ *
+ * Early snapshots of gcc 4.3 don't support this and we can't detect this
+ * in the preprocessor, but we can live with this because they're unreleased.
+ * Maketime probing would be overkill here.
+ *
+ * gcc also has a __attribute__((__hot__)) to move hot functions into
+ * a special section, but I don't see any sense in this right now in
+ * the kernel context
+ */
+#define __cold			__attribute__((__cold__))
+
+#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
+
+#ifndef __CHECKER__
+# define __compiletime_warning(message) __attribute__((warning(message)))
+# define __compiletime_error(message) __attribute__((error(message)))
+#endif /* __CHECKER__ */
+#endif /* GCC_VERSION >= 40300 */
+
+#if GCC_VERSION >= 40500
+/*
+ * Mark a position in code as unreachable.  This can be used to
+ * suppress control flow warnings after asm blocks that transfer
+ * control elsewhere.
+ *
+ * Early snapshots of gcc 4.5 don't support this and we can't detect
+ * this in the preprocessor, but we can live with this because they're
+ * unreleased.  Really, we need to have autoconf for the kernel.
+ */
+#define unreachable() __builtin_unreachable()
+
+/* Mark a function definition as prohibited from being cloned. */
+#define __noclone	__attribute__((__noclone__))
+
+#endif /* GCC_VERSION >= 40500 */
+
+#if GCC_VERSION >= 40600
+/*
+ * Tell the optimizer that something else uses this function or variable.
+ */
+#define __visible	__attribute__((externally_visible))
+#endif
+
+/*
+ * GCC 'asm goto' miscompiles certain code sequences:
+ *
+ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670
+ *
+ * Work it around via a compiler barrier quirk suggested by Jakub Jelinek.
+ *
+ * (asm goto is automatically volatile - the naming reflects this.)
+ */
+#define asm_volatile_goto(x...)	do { asm goto(x); asm (""); } while (0)
+
+#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
+#if GCC_VERSION >= 40400
+#define __HAVE_BUILTIN_BSWAP32__
+#define __HAVE_BUILTIN_BSWAP64__
+#endif
+#if GCC_VERSION >= 40800 || (defined(__powerpc__) && GCC_VERSION >= 40600)
+#define __HAVE_BUILTIN_BSWAP16__
+#endif
+#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
+
+#if GCC_VERSION >= 50000
+#define KASAN_ABI_VERSION 4
+#elif GCC_VERSION >= 40902
+#define KASAN_ABI_VERSION 3
+#endif
+
+#endif	/* gcc version >= 40000 specific checks */
+
+#if !defined(__noclone)
+#define __noclone	/* not needed */
+#endif
+
+/*
+ * A trick to suppress uninitialized variable warning without generating any
+ * code
+ */
+#define uninitialized_var(x) x = x
diff --git a/include/linux/compiler-gcc3.h b/include/linux/compiler-gcc3.h
deleted file mode 100644
index b721129..0000000
--- a/include/linux/compiler-gcc3.h
+++ /dev/null
@@ -1,31 +0,0 @@
-#ifndef __LINUX_COMPILER_H
-#error "Please don't include <linux/compiler-gcc3.h> directly, include <linux/compiler.h> instead."
-#endif
-
-#if __GNUC_MINOR__ < 2
-# error Sorry, your compiler is too old - please upgrade it.
-#endif
-
-#if __GNUC_MINOR__ >= 3
-# define __used			__attribute__((__used__))
-#else
-# define __used			__attribute__((__unused__))
-#endif
-
-#if __GNUC_MINOR__ >= 4
-#define __must_check		__attribute__((warn_unused_result))
-#endif
-
-#ifdef CONFIG_GCOV_KERNEL
-# if __GNUC_MINOR__ < 4
-#   error "GCOV profiling support for gcc versions below 3.4 not included"
-# endif /* __GNUC_MINOR__ */
-#endif /* CONFIG_GCOV_KERNEL */
-
-/*
- * A trick to suppress uninitialized variable warning without generating any
- * code
- */
-#define uninitialized_var(x) x = x
-
-#define __always_inline		inline __attribute__((always_inline))
diff --git a/include/linux/compiler-gcc4.h b/include/linux/compiler-gcc4.h
deleted file mode 100644
index 94dea3f..0000000
--- a/include/linux/compiler-gcc4.h
+++ /dev/null
@@ -1,61 +0,0 @@
-#ifndef __LINUX_COMPILER_H
-#error "Please don't include <linux/compiler-gcc4.h> directly, include <linux/compiler.h> instead."
-#endif
-
-/* GCC 4.1.[01] miscompiles __weak */
-#ifdef __KERNEL__
-# if __GNUC_MINOR__ == 1 && __GNUC_PATCHLEVEL__ <= 1
-#  error Your version of gcc miscompiles the __weak directive
-# endif
-#endif
-
-#define __used			__attribute__((__used__))
-#define __must_check 		__attribute__((warn_unused_result))
-#define __compiler_offsetof(a,b) __builtin_offsetof(a,b)
-#define __always_inline		inline __attribute__((always_inline))
-
-/*
- * A trick to suppress uninitialized variable warning without generating any
- * code
- */
-#define uninitialized_var(x) x = x
-
-#if __GNUC_MINOR__ >= 3
-/* Mark functions as cold. gcc will assume any path leading to a call
-   to them will be unlikely.  This means a lot of manual unlikely()s
-   are unnecessary now for any paths leading to the usual suspects
-   like BUG(), printk(), panic() etc. [but let's keep them for now for
-   older compilers]
-
-   Early snapshots of gcc 4.3 don't support this and we can't detect this
-   in the preprocessor, but we can live with this because they're unreleased.
-   Maketime probing would be overkill here.
-
-   gcc also has a __attribute__((__hot__)) to move hot functions into
-   a special section, but I don't see any sense in this right now in
-   the kernel context */
-#define __cold			__attribute__((__cold__))
-
-
-#if __GNUC_MINOR__ >= 5
-/*
- * Mark a position in code as unreachable.  This can be used to
- * suppress control flow warnings after asm blocks that transfer
- * control elsewhere.
- *
- * Early snapshots of gcc 4.5 don't support this and we can't detect
- * this in the preprocessor, but we can live with this because they're
- * unreleased.  Really, we need to have autoconf for the kernel.
- */
-#define unreachable() __builtin_unreachable()
-#endif
-
-#endif
-
-#if __GNUC_MINOR__ > 0
-#define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
-#endif
-#if __GNUC_MINOR__ >= 4
-#define __compiletime_warning(message) __attribute__((warning(message)))
-#define __compiletime_error(message) __attribute__((error(message)))
-#endif
diff --git a/include/linux/compiler-intel.h b/include/linux/compiler-intel.h
index d8e636e..d4c7113 100644
--- a/include/linux/compiler-intel.h
+++ b/include/linux/compiler-intel.h
@@ -14,18 +14,32 @@
  * It uses intrinsics to do the equivalent things.
  */
 #undef barrier
+#undef barrier_data
 #undef RELOC_HIDE
+#undef OPTIMIZER_HIDE_VAR
 
 #define barrier() __memory_barrier()
+#define barrier_data(ptr) barrier()
 
 #define RELOC_HIDE(ptr, off)					\
   ({ unsigned long __ptr;					\
      __ptr = (unsigned long) (ptr);				\
     (typeof(ptr)) (__ptr + (off)); })
 
+/* This should act as an optimization barrier on var.
+ * Given that this compiler does not have inline assembly, a compiler barrier
+ * is the best we can do.
+ */
+#define OPTIMIZER_HIDE_VAR(var) barrier()
+
 /* Intel ECC compiler doesn't support __builtin_types_compatible_p() */
 #define __must_be_array(a) 0
 
 #endif
 
-#define uninitialized_var(x) x
+#ifndef __HAVE_BUILTIN_BSWAP16__
+/* icc has this, but it's called _bswap16 */
+#define __HAVE_BUILTIN_BSWAP16__
+#define __builtin_bswap16 _bswap16
+#endif
+
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index cc8c4de..8f0c292 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -10,6 +10,7 @@
 # define __force	__attribute__((force))
 # define __nocast	__attribute__((nocast))
 # define __iomem	__attribute__((noderef, address_space(2)))
+# define __must_hold(x)	__attribute__((context(x,1,1)))
 # define __acquires(x)	__attribute__((context(x,0,1)))
 # define __releases(x)	__attribute__((context(x,1,0)))
 # define __acquire(x)	__context__(x,1)
@@ -27,6 +28,7 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # define __chk_user_ptr(x) (void)0
 # define __chk_io_ptr(x) (void)0
 # define __builtin_warning(x, y...) (1)
+# define __must_hold(x)
 # define __acquires(x)
 # define __releases(x)
 # define __acquire(x) (void)0
@@ -34,6 +36,10 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # define __cond_lock(x,c) (c)
 #endif
 
+/* Indirect macros required for expanded argument pasting, eg. __LINE__. */
+#define ___PASTE(a,b) a##b
+#define __PASTE(a,b) ___PASTE(a,b)
+
 #ifdef __KERNEL__
 
 #ifdef __GNUC__
@@ -49,6 +55,13 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # include <linux/compiler-intel.h>
 #endif
 
+/* Clang compiler defines __GNUC__. So we will overwrite implementations
+ * coming from above header files here
+ */
+#ifdef __clang__
+#include <linux/compiler-clang.h>
+#endif
+
 /*
  * Generic compiler-dependent macros required for kernel
  * build go below this comment. Actual compiler/compiler version
@@ -144,6 +157,10 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 # define barrier() __memory_barrier()
 #endif
 
+#ifndef barrier_data
+# define barrier_data(ptr) barrier()
+#endif
+
 /* Unreachable code */
 #ifndef unreachable
 # define unreachable() do { } while (1)
@@ -156,6 +173,15 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
     (typeof(ptr)) (__ptr + (off)); })
 #endif
 
+#ifndef OPTIMIZER_HIDE_VAR
+#define OPTIMIZER_HIDE_VAR(var) barrier()
+#endif
+
+/* Not-quite-unique ID. */
+#ifndef __UNIQUE_ID
+# define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __LINE__)
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
@@ -228,7 +254,7 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 
 /*
  * Rather then using noinline to prevent stack consumption, use
- * noinline_for_stack instead.  For documentaiton reasons.
+ * noinline_for_stack instead.  For documentation reasons.
  */
 #define noinline_for_stack noinline
 
@@ -270,11 +296,20 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 # define __section(S) __attribute__ ((__section__(#S)))
 #endif
 
+#ifndef __visible
+#define __visible
+#endif
+
 /* Are two types/vars the same type (ignoring qualifiers)? */
 #ifndef __same_type
 # define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
 #endif
 
+/* Is this type a native word size -- useful for atomic operations */
+#ifndef __native_word
+# define __native_word(t) (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
+#endif
+
 /* Compile time object size, -1 for unknown */
 #ifndef __compiletime_object_size
 # define __compiletime_object_size(obj) -1
@@ -284,8 +319,49 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 #endif
 #ifndef __compiletime_error
 # define __compiletime_error(message)
+/*
+ * Sparse complains of variable sized arrays due to the temporary variable in
+ * __compiletime_assert. Unfortunately we can't just expand it out to make
+ * sparse see a constant array size without breaking compiletime_assert on old
+ * versions of GCC (e.g. 4.2.4), so hide the array from sparse altogether.
+ */
+# ifndef __CHECKER__
+#  define __compiletime_error_fallback(condition) \
+	do { ((void)sizeof(char[1 - 2 * condition])); } while (0)
+# endif
+#endif
+#ifndef __compiletime_error_fallback
+# define __compiletime_error_fallback(condition) do { } while (0)
 #endif
 
+#define __compiletime_assert(condition, msg, prefix, suffix)		\
+	do {								\
+		bool __cond = !(condition);				\
+		extern void prefix ## suffix(void) __compiletime_error(msg); \
+		if (__cond)						\
+			prefix ## suffix();				\
+		__compiletime_error_fallback(__cond);			\
+	} while (0)
+
+#define _compiletime_assert(condition, msg, prefix, suffix) \
+	__compiletime_assert(condition, msg, prefix, suffix)
+
+/**
+ * compiletime_assert - break build and emit msg if condition is false
+ * @condition: a compile-time constant condition to check
+ * @msg:       a message to emit if condition is false
+ *
+ * In tradition of POSIX assert, this macro will break the build if the
+ * supplied condition is *false*, emitting the supplied error message if the
+ * compiler has support to do so.
+ */
+#define compiletime_assert(condition, msg) \
+	_compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
+
+#define compiletime_assert_atomic_type(t)				\
+	compiletime_assert(__native_word(t),				\
+		"Need native word sized stores/loads for atomicity.")
+
 /*
  * Prevent the compiler from merging or refetching accesses.  The compiler
  * is also forbidden from reordering successive instances of ACCESS_ONCE(),
@@ -293,11 +369,22 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
  * to make the compiler aware of ordering is to put the two invocations of
  * ACCESS_ONCE() in different C statements.
  *
- * This macro does absolutely -nothing- to prevent the CPU from reordering,
- * merging, or refetching absolutely anything at any time.  Its main intended
- * use is to mediate communication between process-level code and irq/NMI
- * handlers, all running on the same CPU.
+ * ACCESS_ONCE will only work on scalar types. For union types, ACCESS_ONCE
+ * on a union member will work as long as the size of the member matches the
+ * size of the union and the size is smaller than word size.
+ *
+ * The major use cases of ACCESS_ONCE used to be (1) Mediating communication
+ * between process-level code and irq/NMI handlers, all running on the same CPU,
+ * and (2) Ensuring that the compiler does not  fold, spindle, or otherwise
+ * mutilate accesses that either do not require ordering or that interact
+ * with an explicit memory barrier or atomic instruction that provides the
+ * required ordering.
+ *
+ * If possible use READ_ONCE()/WRITE_ONCE() instead.
  */
-#define ACCESS_ONCE(x) (*(volatile typeof(x) *)&(x))
+#define __ACCESS_ONCE(x) ({ \
+	 __maybe_unused typeof(x) __var = (__force typeof(x)) 0; \
+	(volatile typeof(x) *)&(x); })
+#define ACCESS_ONCE(x) (*__ACCESS_ONCE(x))
 
 #endif /* __LINUX_COMPILER_H */
-- 
2.4.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
