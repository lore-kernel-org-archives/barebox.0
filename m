Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005zC-Tb
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:06:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:04:00 +0200
Message-Id: <20181002140403.3735-12-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] compiler: Update to v4.19-rc6
To: Barebox List <barebox@lists.infradead.org>

This updates include/linux/compiler* to Linux-4.19-rc6.

Among other things this gives us __printf

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/compiler-clang.h |  42 +++-
 include/linux/compiler-gcc.h   | 211 ++++++----------
 include/linux/compiler-intel.h |  14 +-
 include/linux/compiler.h       | 440 +++++++++------------------------
 include/linux/compiler_types.h | 285 +++++++++++++++++++++
 5 files changed, 535 insertions(+), 457 deletions(-)
 create mode 100644 include/linux/compiler_types.h

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index d1e49d52b6..b1ce500fe8 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -1,12 +1,46 @@
-#ifndef __LINUX_COMPILER_H
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_COMPILER_TYPES_H
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
 /* Some compiler specific definitions are overwritten here
  * for Clang compiler
  */
-
-#ifdef uninitialized_var
-#undef uninitialized_var
 #define uninitialized_var(x) x = *(&(x))
+
+/* same as gcc, this was present in clang-2.6 so we can assume it works
+ * with any version that can compile the kernel
+ */
+#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
+
+/* all clang versions usable with the kernel support KASAN ABI version 5 */
+#define KASAN_ABI_VERSION 5
+
+/* emulate gcc's __SANITIZE_ADDRESS__ flag */
+#if __has_feature(address_sanitizer)
+#define __SANITIZE_ADDRESS__
 #endif
+
+#define __no_sanitize_address __attribute__((no_sanitize("address")))
+
+/*
+ * Not all versions of clang implement the the type-generic versions
+ * of the builtin overflow checkers. Fortunately, clang implements
+ * __has_builtin allowing us to avoid awkward version
+ * checks. Unfortunately, we don't know which version of gcc clang
+ * pretends to be, so the macro may or may not be defined.
+ */
+#if __has_builtin(__builtin_mul_overflow) && \
+    __has_builtin(__builtin_add_overflow) && \
+    __has_builtin(__builtin_sub_overflow)
+#define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
+#endif
+
+/* The following are for compatibility with GCC, from compiler-gcc.h,
+ * and may be redefined here because they should not be shared with other
+ * compilers, like ICC.
+ */
+#define barrier() __asm__ __volatile__("" : : : "memory")
+#define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
+#define __assume_aligned(a, ...)	\
+	__attribute__((__assume_aligned__(a, ## __VA_ARGS__)))
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 22ab246fee..4d36b27214 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -1,4 +1,5 @@
-#ifndef __LINUX_COMPILER_H
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_COMPILER_TYPES_H
 #error "Please don't include <linux/compiler-gcc.h> directly, include <linux/compiler.h> instead."
 #endif
 
@@ -9,6 +10,10 @@
 		     + __GNUC_MINOR__ * 100	\
 		     + __GNUC_PATCHLEVEL__)
 
+#if GCC_VERSION < 40600
+# error Sorry, your compiler is too old - please upgrade it.
+#endif
+
 /* Optimization barrier */
 
 /* The "volatile" is due to gcc bugs */
@@ -21,7 +26,7 @@
  * clobbered. The issue is as follows: while the inline asm might
  * access any memory it wants, the compiler could have fit all of
  * @ptr into memory registers instead, and since @ptr never escaped
- * from that, it proofed that the inline asm wasn't touching any of
+ * from that, it proved that the inline asm wasn't touching any of
  * it. This version works well with both compilers, i.e. we're telling
  * the compiler that the inline asm absolutely may see the contents
  * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
@@ -57,6 +62,12 @@
 #define OPTIMIZER_HIDE_VAR(var)						\
 	__asm__ ("" : "=r" (var) : "0" (var))
 
+/*
+ * A trick to suppress uninitialized variable warning without generating any
+ * code
+ */
+#define uninitialized_var(x) x = x
+
 #ifdef __CHECKER__
 #define __must_be_array(a)	0
 #else
@@ -64,129 +75,34 @@
 #define __must_be_array(a)	BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
 #endif
 
-/*
- * Force always-inline if the user requests it so via the .config,
- * or if gcc is too old:
- */
-#if !defined(CONFIG_ARCH_SUPPORTS_OPTIMIZED_INLINING) ||		\
-    !defined(CONFIG_OPTIMIZE_INLINING) || (__GNUC__ < 4)
-#define inline		inline		__attribute__((always_inline)) notrace
-#define __inline__	__inline__	__attribute__((always_inline)) notrace
-#define __inline	__inline	__attribute__((always_inline)) notrace
-#else
-/* A lot of inline functions can cause havoc with function tracing */
-#define inline		inline		notrace
-#define __inline__	__inline__	notrace
-#define __inline	__inline	notrace
-#endif
-
-#define __always_inline	inline __attribute__((always_inline))
-#define  noinline	__attribute__((noinline))
-
-#define __deprecated	__attribute__((deprecated))
-#define __packed	__attribute__((packed))
-#define __weak		__attribute__((weak))
-#define __alias(symbol)	__attribute__((alias(#symbol)))
-
-/*
- * it doesn't make sense on ARM (currently the only user of __naked)
- * to trace naked functions because then mcount is called without
- * stack and frame pointer being set up and there is no chance to
- * restore the lr register to the value before mcount was called.
- *
- * The asm() bodies of naked functions often depend on standard calling
- * conventions, therefore they must be noinline and noclone.
- *
- * GCC 4.[56] currently fail to enforce this, so we must do so ourselves.
- * See GCC PR44290.
- */
-#define __naked		__attribute__((naked)) noinline __noclone notrace
-
-#define __noreturn	__attribute__((noreturn))
-
-/*
- * From the GCC manual:
- *
- * Many functions have no effects except the return value and their
- * return value depends only on the parameters and/or global
- * variables.  Such a function can be subject to common subexpression
- * elimination and loop optimization just as an arithmetic operator
- * would be.
- * [...]
- */
-#define __pure			__attribute__((pure))
-#define __aligned(x)		__attribute__((aligned(x)))
-#define __printf(a, b)		__attribute__((format(printf, a, b)))
-#define __scanf(a, b)		__attribute__((format(scanf, a, b)))
-#define __attribute_const__	__attribute__((__const__))
-#define __maybe_unused		__attribute__((unused))
-#define __always_unused		__attribute__((unused))
-
-/* gcc version specific checks */
-
-#if GCC_VERSION < 30200
-# error Sorry, your compiler is too old - please upgrade it.
-#endif
-
-#if GCC_VERSION < 30300
-# define __used			__attribute__((__unused__))
-#else
-# define __used			__attribute__((__used__))
+#ifdef RETPOLINE
+#define __noretpoline __attribute__((indirect_branch("keep")))
 #endif
 
-#ifdef CONFIG_GCOV_KERNEL
-# if GCC_VERSION < 30400
-#   error "GCOV profiling support for gcc versions below 3.4 not included"
-# endif /* __GNUC_MINOR__ */
-#endif /* CONFIG_GCOV_KERNEL */
-
-#if GCC_VERSION >= 30400
-#define __must_check		__attribute__((warn_unused_result))
-#endif
+#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
 
-#if GCC_VERSION >= 40000
+#define __optimize(level)	__attribute__((__optimize__(level)))
 
-/* GCC 4.1.[01] miscompiles __weak */
-#ifdef __KERNEL__
-# if GCC_VERSION >= 40100 &&  GCC_VERSION <= 40101
-#  error Your version of gcc miscompiles the __weak directive
-# endif
-#endif
+#define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
 
-#define __used			__attribute__((__used__))
-#define __compiler_offsetof(a, b)					\
-	__builtin_offsetof(a, b)
+#ifndef __CHECKER__
+#define __compiletime_warning(message) __attribute__((warning(message)))
+#define __compiletime_error(message) __attribute__((error(message)))
 
-#if GCC_VERSION >= 40100 && GCC_VERSION < 40600
-# define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
+#ifdef LATENT_ENTROPY_PLUGIN
+#define __latent_entropy __attribute__((latent_entropy))
 #endif
+#endif /* __CHECKER__ */
 
-#if GCC_VERSION >= 40300
-/* Mark functions as cold. gcc will assume any path leading to a call
- * to them will be unlikely.  This means a lot of manual unlikely()s
- * are unnecessary now for any paths leading to the usual suspects
- * like BUG(), printk(), panic() etc. [but let's keep them for now for
- * older compilers]
- *
- * Early snapshots of gcc 4.3 don't support this and we can't detect this
- * in the preprocessor, but we can live with this because they're unreleased.
- * Maketime probing would be overkill here.
+/*
+ * calling noreturn functions, __builtin_unreachable() and __builtin_trap()
+ * confuse the stack allocation in gcc, leading to overly large stack
+ * frames, see https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82365
  *
- * gcc also has a __attribute__((__hot__)) to move hot functions into
- * a special section, but I don't see any sense in this right now in
- * the kernel context
+ * Adding an empty inline assembly before it works around the problem
  */
-#define __cold			__attribute__((__cold__))
-
-#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
-
-#ifndef __CHECKER__
-# define __compiletime_warning(message) __attribute__((warning(message)))
-# define __compiletime_error(message) __attribute__((error(message)))
-#endif /* __CHECKER__ */
-#endif /* GCC_VERSION >= 40300 */
+#define barrier_before_unreachable() asm volatile("")
 
-#if GCC_VERSION >= 40500
 /*
  * Mark a position in code as unreachable.  This can be used to
  * suppress control flow warnings after asm blocks that transfer
@@ -196,14 +112,24 @@
  * this in the preprocessor, but we can live with this because they're
  * unreleased.  Really, we need to have autoconf for the kernel.
  */
-#define unreachable() __builtin_unreachable()
+#define unreachable() \
+	do {					\
+		annotate_unreachable();		\
+		barrier_before_unreachable();	\
+		__builtin_unreachable();	\
+	} while (0)
 
 /* Mark a function definition as prohibited from being cloned. */
-#define __noclone	__attribute__((__noclone__))
+#define __noclone	__attribute__((__noclone__, __optimize__("no-tracer")))
 
-#endif /* GCC_VERSION >= 40500 */
+#if defined(RANDSTRUCT_PLUGIN) && !defined(__CHECKER__)
+#define __randomize_layout __attribute__((randomize_layout))
+#define __no_randomize_layout __attribute__((no_randomize_layout))
+/* This anon struct can add padding, so only enable it under randstruct. */
+#define randomized_struct_fields_start	struct {
+#define randomized_struct_fields_end	} __randomize_layout;
+#endif
 
-#if GCC_VERSION >= 40600
 /*
  * When used with Link Time Optimization, gcc can optimize away C functions or
  * variables which are referenced only from assembly code.  __visible tells the
@@ -211,8 +137,8 @@
  * this.
  */
 #define __visible	__attribute__((externally_visible))
-#endif
 
+/* gcc version specific checks */
 
 #if GCC_VERSION >= 40900 && !defined(__CHECKER__)
 /*
@@ -241,17 +167,21 @@
  */
 #define asm_volatile_goto(x...)	do { asm goto(x); asm (""); } while (0)
 
-#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
-#if GCC_VERSION >= 40400
+/*
+ * sparse (__CHECKER__) pretends to be gcc, but can't do constant
+ * folding in __builtin_bswap*() (yet), so don't set these for it.
+ */
+#if defined(CONFIG_ARCH_USE_BUILTIN_BSWAP) && !defined(__CHECKER__)
 #define __HAVE_BUILTIN_BSWAP32__
 #define __HAVE_BUILTIN_BSWAP64__
-#endif
-#if GCC_VERSION >= 40800 || (defined(__powerpc__) && GCC_VERSION >= 40600)
+#if GCC_VERSION >= 40800
 #define __HAVE_BUILTIN_BSWAP16__
 #endif
-#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
+#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP && !__CHECKER__ */
 
-#if GCC_VERSION >= 50000
+#if GCC_VERSION >= 70000
+#define KASAN_ABI_VERSION 5
+#elif GCC_VERSION >= 50000
 #define KASAN_ABI_VERSION 4
 #elif GCC_VERSION >= 40902
 #define KASAN_ABI_VERSION 3
@@ -266,7 +196,14 @@
 #define __no_sanitize_address __attribute__((no_sanitize_address))
 #endif
 
-#endif	/* gcc version >= 40000 specific checks */
+#if GCC_VERSION >= 50100
+/*
+ * Mark structures as requiring designated initializers.
+ * https://gcc.gnu.org/onlinedocs/gcc/Designated-Inits.html
+ */
+#define __designated_init __attribute__((designated_init))
+#define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
+#endif
 
 #if !defined(__noclone)
 #define __noclone	/* not needed */
@@ -277,7 +214,23 @@
 #endif
 
 /*
- * A trick to suppress uninitialized variable warning without generating any
- * code
+ * Turn individual warnings and errors on and off locally, depending
+ * on version.
  */
-#define uninitialized_var(x) x = x
+#define __diag_GCC(version, severity, s) \
+	__diag_GCC_ ## version(__diag_GCC_ ## severity s)
+
+/* Severity used in pragma directives */
+#define __diag_GCC_ignore	ignored
+#define __diag_GCC_warn		warning
+#define __diag_GCC_error	error
+
+#define __diag_str1(s)		#s
+#define __diag_str(s)		__diag_str1(s)
+#define __diag(s)		_Pragma(__diag_str(GCC diagnostic s))
+
+#if GCC_VERSION >= 80000
+#define __diag_GCC_8(s)		__diag(s)
+#else
+#define __diag_GCC_8(s)
+#endif
diff --git a/include/linux/compiler-intel.h b/include/linux/compiler-intel.h
index d4c71132d0..4c7f9befa9 100644
--- a/include/linux/compiler-intel.h
+++ b/include/linux/compiler-intel.h
@@ -1,4 +1,5 @@
-#ifndef __LINUX_COMPILER_H
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_COMPILER_TYPES_H
 #error "Please don't include <linux/compiler-intel.h> directly, include <linux/compiler.h> instead."
 #endif
 
@@ -13,10 +14,6 @@
 /* Intel ECC compiler doesn't support gcc specific asm stmts.
  * It uses intrinsics to do the equivalent things.
  */
-#undef barrier
-#undef barrier_data
-#undef RELOC_HIDE
-#undef OPTIMIZER_HIDE_VAR
 
 #define barrier() __memory_barrier()
 #define barrier_data(ptr) barrier()
@@ -37,9 +34,12 @@
 
 #endif
 
-#ifndef __HAVE_BUILTIN_BSWAP16__
 /* icc has this, but it's called _bswap16 */
 #define __HAVE_BUILTIN_BSWAP16__
 #define __builtin_bswap16 _bswap16
-#endif
 
+/* The following are for compatibility with GCC, from compiler-gcc.h,
+ * and may be redefined here because they should not be shared with other
+ * compilers, like clang.
+ */
+#define __visible	__attribute__((externally_visible))
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 91331dd12f..f597c7abae 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -1,127 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_COMPILER_H
 #define __LINUX_COMPILER_H
 
-#ifndef __ASSEMBLY__
+#include <linux/compiler_types.h>
 
-#ifdef __CHECKER__
-# define __user		/* no user address space in barebox */
-# define __kernel	/* default address space */
-# define __safe		__attribute__((safe))
-# define __force	__attribute__((force))
-# define __nocast	__attribute__((nocast))
-# define __iomem	__attribute__((noderef, address_space(2)))
-# define __must_hold(x)	__attribute__((context(x,1,1)))
-# define __acquires(x)	__attribute__((context(x,0,1)))
-# define __releases(x)	__attribute__((context(x,1,0)))
-# define __acquire(x)	__context__(x,1)
-# define __release(x)	__context__(x,-1)
-# define __cond_lock(x,c)	((c) ? ({ __acquire(x); 1; }) : 0)
-# define __percpu	__attribute__((noderef, address_space(3)))
-# define __pmem		__attribute__((noderef, address_space(5)))
-#ifdef CONFIG_SPARSE_RCU_POINTER
-# define __rcu		__attribute__((noderef, address_space(4)))
-#else
-# define __rcu
-#endif
-extern void __chk_user_ptr(const volatile void __user *);
-extern void __chk_io_ptr(const volatile void __iomem *);
-#else
-# define __user
-# define __kernel
-# define __safe
-# define __force
-# define __nocast
-# define __iomem
-# define __chk_user_ptr(x) (void)0
-# define __chk_io_ptr(x) (void)0
-# define __builtin_warning(x, y...) (1)
-# define __must_hold(x)
-# define __acquires(x)
-# define __releases(x)
-# define __acquire(x) (void)0
-# define __release(x) (void)0
-# define __cond_lock(x,c) (c)
-# define __percpu
-# define __rcu
-# define __pmem
-#endif
-
-/* Indirect macros required for expanded argument pasting, eg. __LINE__. */
-#define ___PASTE(a,b) a##b
-#define __PASTE(a,b) ___PASTE(a,b)
+#ifndef __ASSEMBLY__
 
 #ifdef __KERNEL__
 
-#ifdef __GNUC__
-#include <linux/compiler-gcc.h>
-#endif
-
-#if defined(CC_USING_HOTPATCH) && !defined(__CHECKER__)
-#define notrace __attribute__((hotpatch(0,0)))
-#else
-#define notrace __attribute__((no_instrument_function))
-#endif
-
-/* Intel compiler defines __GNUC__. So we will overwrite implementations
- * coming from above header files here
- */
-#ifdef __INTEL_COMPILER
-# include <linux/compiler-intel.h>
-#endif
-
-/* Clang compiler defines __GNUC__. So we will overwrite implementations
- * coming from above header files here
- */
-#ifdef __clang__
-#include <linux/compiler-clang.h>
-#endif
-
-/*
- * Generic compiler-dependent macros required for kernel
- * build go below this comment. Actual compiler/compiler version
- * specific implementations come from the above header files
- */
-
-struct ftrace_branch_data {
-	const char *func;
-	const char *file;
-	unsigned line;
-	union {
-		struct {
-			unsigned long correct;
-			unsigned long incorrect;
-		};
-		struct {
-			unsigned long miss;
-			unsigned long hit;
-		};
-		unsigned long miss_hit[2];
-	};
-};
-
 /*
  * Note: DISABLE_BRANCH_PROFILING can be used by special lowlevel code
  * to disable branch tracing on a per file basis.
  */
 #if defined(CONFIG_TRACE_BRANCH_PROFILING) \
     && !defined(DISABLE_BRANCH_PROFILING) && !defined(__CHECKER__)
-void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
+void ftrace_likely_update(struct ftrace_likely_data *f, int val,
+			  int expect, int is_constant);
 
 #define likely_notrace(x)	__builtin_expect(!!(x), 1)
 #define unlikely_notrace(x)	__builtin_expect(!!(x), 0)
 
-#define __branch_check__(x, expect) ({					\
-			int ______r;					\
-			static struct ftrace_branch_data		\
+#define __branch_check__(x, expect, is_constant) ({			\
+			long ______r;					\
+			static struct ftrace_likely_data		\
 				__attribute__((__aligned__(4)))		\
 				__attribute__((section("_ftrace_annotated_branch"))) \
 				______f = {				\
-				.func = __func__,			\
-				.file = __FILE__,			\
-				.line = __LINE__,			\
+				.data.func = __func__,			\
+				.data.file = __FILE__,			\
+				.data.line = __LINE__,			\
 			};						\
-			______r = likely_notrace(x);			\
-			ftrace_likely_update(&______f, ______r, expect); \
+			______r = __builtin_expect(!!(x), expect);	\
+			ftrace_likely_update(&______f, ______r,		\
+					     expect, is_constant);	\
 			______r;					\
 		})
 
@@ -131,10 +42,10 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
  * written by Daniel Walker.
  */
 # ifndef likely
-#  define likely(x)	(__builtin_constant_p(x) ? !!(x) : __branch_check__(x, 1))
+#  define likely(x)	(__branch_check__(x, 1, __builtin_constant_p(x)))
 # endif
 # ifndef unlikely
-#  define unlikely(x)	(__builtin_constant_p(x) ? !!(x) : __branch_check__(x, 0))
+#  define unlikely(x)	(__branch_check__(x, 0, __builtin_constant_p(x)))
 # endif
 
 #ifdef CONFIG_PROFILE_ALL_BRANCHES
@@ -175,9 +86,68 @@ void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
 # define barrier_data(ptr) barrier()
 #endif
 
+/* workaround for GCC PR82365 if needed */
+#ifndef barrier_before_unreachable
+# define barrier_before_unreachable() do { } while (0)
+#endif
+
 /* Unreachable code */
+#ifdef CONFIG_STACK_VALIDATION
+/*
+ * These macros help objtool understand GCC code flow for unreachable code.
+ * The __COUNTER__ based labels are a hack to make each instance of the macros
+ * unique, to convince GCC not to merge duplicate inline asm statements.
+ */
+#define annotate_reachable() ({						\
+	asm volatile("%c0:\n\t"						\
+		     ".pushsection .discard.reachable\n\t"		\
+		     ".long %c0b - .\n\t"				\
+		     ".popsection\n\t" : : "i" (__COUNTER__));		\
+})
+#define annotate_unreachable() ({					\
+	asm volatile("%c0:\n\t"						\
+		     ".pushsection .discard.unreachable\n\t"		\
+		     ".long %c0b - .\n\t"				\
+		     ".popsection\n\t" : : "i" (__COUNTER__));		\
+})
+#define ASM_UNREACHABLE							\
+	"999:\n\t"							\
+	".pushsection .discard.unreachable\n\t"				\
+	".long 999b - .\n\t"						\
+	".popsection\n\t"
+#else
+#define annotate_reachable()
+#define annotate_unreachable()
+#endif
+
+#ifndef ASM_UNREACHABLE
+# define ASM_UNREACHABLE
+#endif
 #ifndef unreachable
-# define unreachable() do { } while (1)
+# define unreachable() do { annotate_reachable(); do { } while (1); } while (0)
+#endif
+
+/*
+ * KENTRY - kernel entry point
+ * This can be used to annotate symbols (functions or data) that are used
+ * without their linker symbol being referenced explicitly. For example,
+ * interrupt vector handlers, or functions in the kernel image that are found
+ * programatically.
+ *
+ * Not required for symbols exported with EXPORT_SYMBOL, or initcalls. Those
+ * are handled in their own way (with KEEP() in linker scripts).
+ *
+ * KENTRY can be avoided if the symbols in question are marked as KEEP() in the
+ * linker script. For example an architecture could KEEP() its entire
+ * boot/exception vector code rather than annotate each function and data.
+ */
+#ifndef KENTRY
+# define KENTRY(sym)						\
+	extern typeof(sym) sym;					\
+	static const unsigned long __kentry_##sym		\
+	__used							\
+	__attribute__((section("___kentry" "+" #sym ), used))	\
+	= (unsigned long)&sym;
 #endif
 
 #ifndef RELOC_HIDE
@@ -220,23 +190,21 @@ void __read_once_size(const volatile void *p, void *res, int size)
 
 #ifdef CONFIG_KASAN
 /*
- * This function is not 'inline' because __no_sanitize_address confilcts
+ * We can't declare function 'inline' because __no_sanitize_address confilcts
  * with inlining. Attempt to inline it may cause a build failure.
  * 	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
  * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
  */
-static __no_sanitize_address __maybe_unused
-void __read_once_size_nocheck(const volatile void *p, void *res, int size)
-{
-	__READ_ONCE_SIZE;
-}
+# define __no_kasan_or_inline __no_sanitize_address __maybe_unused
 #else
-static __always_inline
+# define __no_kasan_or_inline __always_inline
+#endif
+
+static __no_kasan_or_inline
 void __read_once_size_nocheck(const volatile void *p, void *res, int size)
 {
 	__READ_ONCE_SIZE;
 }
-#endif
 
 static __always_inline void __write_once_size(volatile void *p, void *res, int size)
 {
@@ -255,20 +223,21 @@ static __always_inline void __write_once_size(volatile void *p, void *res, int s
 /*
  * Prevent the compiler from merging or refetching reads or writes. The
  * compiler is also forbidden from reordering successive instances of
- * READ_ONCE, WRITE_ONCE and ACCESS_ONCE (see below), but only when the
- * compiler is aware of some particular ordering.  One way to make the
- * compiler aware of ordering is to put the two invocations of READ_ONCE,
- * WRITE_ONCE or ACCESS_ONCE() in different C statements.
+ * READ_ONCE and WRITE_ONCE, but only when the compiler is aware of some
+ * particular ordering. One way to make the compiler aware of ordering is to
+ * put the two invocations of READ_ONCE or WRITE_ONCE in different C
+ * statements.
  *
- * In contrast to ACCESS_ONCE these two macros will also work on aggregate
- * data types like structs or unions. If the size of the accessed data
- * type exceeds the word size of the machine (e.g., 32 bits or 64 bits)
- * READ_ONCE() and WRITE_ONCE()  will fall back to memcpy and print a
- * compile-time warning.
+ * These two macros will also work on aggregate data types like structs or
+ * unions. If the size of the accessed data type exceeds the word size of
+ * the machine (e.g., 32 bits or 64 bits) READ_ONCE() and WRITE_ONCE() will
+ * fall back to memcpy(). There's at least two memcpy()s: one for the
+ * __builtin_memcpy() and then one for the macro doing the copy of variable
+ * - '__u' allocated on the stack.
  *
  * Their two major use cases are: (1) Mediating communication between
  * process-level code and irq/NMI handlers, all running on the same CPU,
- * and (2) Ensuring that the compiler does not  fold, spindle, or otherwise
+ * and (2) Ensuring that the compiler does not fold, spindle, or otherwise
  * mutilate accesses that either do not require ordering or that interact
  * with an explicit memory barrier or atomic instruction that provides the
  * required ordering.
@@ -281,6 +250,7 @@ static __always_inline void __write_once_size(volatile void *p, void *res, int s
 		__read_once_size(&(x), __u.__c, sizeof(x));		\
 	else								\
 		__read_once_size_nocheck(&(x), __u.__c, sizeof(x));	\
+	smp_read_barrier_depends(); /* Enforce dependency ordering from x */ \
 	__u.__val;							\
 })
 #define READ_ONCE(x) __READ_ONCE(x, 1)
@@ -291,6 +261,12 @@ static __always_inline void __write_once_size(volatile void *p, void *res, int s
  */
 #define READ_ONCE_NOCHECK(x) __READ_ONCE(x, 0)
 
+static __no_kasan_or_inline
+unsigned long read_word_at_a_time(const void *addr)
+{
+	return *(unsigned long *)addr;
+}
+
 #define WRITE_ONCE(x, val) \
 ({							\
 	union { typeof(x) __val; char __c[1]; } __u =	\
@@ -299,157 +275,31 @@ static __always_inline void __write_once_size(volatile void *p, void *res, int s
 	__u.__val;					\
 })
 
-/**
- * smp_cond_acquire() - Spin wait for cond with ACQUIRE ordering
- * @cond: boolean expression to wait for
- *
- * Equivalent to using smp_load_acquire() on the condition variable but employs
- * the control dependency of the wait to reduce the barrier on many platforms.
- *
- * The control dependency provides a LOAD->STORE order, the additional RMB
- * provides LOAD->LOAD order, together they provide LOAD->{LOAD,STORE} order,
- * aka. ACQUIRE.
- */
-#define smp_cond_acquire(cond)	do {		\
-	while (!(cond))				\
-		cpu_relax();			\
-	smp_rmb(); /* ctrl + rmb := acquire */	\
-} while (0)
-
 #endif /* __KERNEL__ */
 
-#endif /* __ASSEMBLY__ */
-
-#ifdef __KERNEL__
 /*
- * Allow us to mark functions as 'deprecated' and have gcc emit a nice
- * warning for each use, in hopes of speeding the functions removal.
- * Usage is:
- * 		int __deprecated foo(void)
+ * Force the compiler to emit 'sym' as a symbol, so that we can reference
+ * it from inline assembler. Necessary in case 'sym' could be inlined
+ * otherwise, or eliminated entirely due to lack of references that are
+ * visible to the compiler.
  */
-#ifndef __deprecated
-# define __deprecated		/* unimplemented */
-#endif
-
-#ifdef MODULE
-#define __deprecated_for_modules __deprecated
-#else
-#define __deprecated_for_modules
-#endif
-
-#ifndef __must_check
-#define __must_check
-#endif
+#define __ADDRESSABLE(sym) \
+	static void * __attribute__((section(".discard.addressable"), used)) \
+		__PASTE(__addressable_##sym, __LINE__) = (void *)&sym;
 
-#ifndef CONFIG_ENABLE_MUST_CHECK
-#undef __must_check
-#define __must_check
-#endif
-#ifndef CONFIG_ENABLE_WARN_DEPRECATED
-#undef __deprecated
-#undef __deprecated_for_modules
-#define __deprecated
-#define __deprecated_for_modules
-#endif
-
-/*
- * Allow us to avoid 'defined but not used' warnings on functions and data,
- * as well as force them to be emitted to the assembly file.
- *
- * As of gcc 3.4, static functions that are not marked with attribute((used))
- * may be elided from the assembly file.  As of gcc 3.4, static data not so
- * marked will not be elided, but this may change in a future gcc version.
- *
- * NOTE: Because distributions shipped with a backported unit-at-a-time
- * compiler in gcc 3.3, we must define __used to be __attribute__((used))
- * for gcc >=3.3 instead of 3.4.
- *
- * In prior versions of gcc, such functions and data would be emitted, but
- * would be warned about except with attribute((unused)).
- *
- * Mark functions that are referenced only in inline assembly as __used so
- * the code is emitted even though it appears to be unreferenced.
- */
-#ifndef __used
-# define __used			/* unimplemented */
-#endif
-
-#ifndef __maybe_unused
-# define __maybe_unused		/* unimplemented */
-#endif
-
-#ifndef __always_unused
-# define __always_unused	/* unimplemented */
-#endif
-
-#ifndef noinline
-#define noinline
-#endif
-
-/*
- * Rather then using noinline to prevent stack consumption, use
- * noinline_for_stack instead.  For documentation reasons.
- */
-#define noinline_for_stack noinline
-
-#ifndef __always_inline
-#define __always_inline inline
-#endif
-
-#endif /* __KERNEL__ */
-
-/*
- * From the GCC manual:
- *
- * Many functions do not examine any values except their arguments,
- * and have no effects except the return value.  Basically this is
- * just slightly more strict class than the `pure' attribute above,
- * since function is not allowed to read global memory.
- *
- * Note that a function that has pointer arguments and examines the
- * data pointed to must _not_ be declared `const'.  Likewise, a
- * function that calls a non-`const' function usually must not be
- * `const'.  It does not make sense for a `const' function to return
- * `void'.
- */
-#ifndef __attribute_const__
-# define __attribute_const__	/* unimplemented */
-#endif
-
-/*
- * Tell gcc if a function is cold. The compiler will assume any path
- * directly leading to the call is unlikely.
- */
-
-#ifndef __cold
-#define __cold
-#endif
-
-/* Simple shorthand for a section definition */
-#ifndef __section
-# define __section(S) __attribute__ ((__section__(#S)))
-#endif
-
-#ifndef __visible
-#define __visible
-#endif
-
-/*
- * Assume alignment of return value.
+/**
+ * offset_to_ptr - convert a relative memory offset to an absolute pointer
+ * @off:	the address of the 32-bit offset value
  */
-#ifndef __assume_aligned
-#define __assume_aligned(a, ...)
-#endif
-
+static inline void *offset_to_ptr(const int *off)
+{
+	return (void *)((unsigned long)off + *off);
+}
 
-/* Are two types/vars the same type (ignoring qualifiers)? */
-#ifndef __same_type
-# define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
-#endif
+#endif /* __ASSEMBLY__ */
 
-/* Is this type a native word size -- useful for atomic operations */
-#ifndef __native_word
-# define __native_word(t) (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
+#ifndef __optimize
+# define __optimize(level)
 #endif
 
 /* Compile time object size, -1 for unknown */
@@ -476,14 +326,18 @@ static __always_inline void __write_once_size(volatile void *p, void *res, int s
 # define __compiletime_error_fallback(condition) do { } while (0)
 #endif
 
-#define __compiletime_assert(condition, msg, prefix, suffix)		\
+#ifdef __OPTIMIZE__
+# define __compiletime_assert(condition, msg, prefix, suffix)		\
 	do {								\
-		bool __cond = !(condition);				\
+		int __cond = !(condition);				\
 		extern void prefix ## suffix(void) __compiletime_error(msg); \
 		if (__cond)						\
 			prefix ## suffix();				\
 		__compiletime_error_fallback(__cond);			\
 	} while (0)
+#else
+# define __compiletime_assert(condition, msg, prefix, suffix) do { } while (0)
+#endif
 
 #define _compiletime_assert(condition, msg, prefix, suffix) \
 	__compiletime_assert(condition, msg, prefix, suffix)
@@ -504,52 +358,4 @@ static __always_inline void __write_once_size(volatile void *p, void *res, int s
 	compiletime_assert(__native_word(t),				\
 		"Need native word sized stores/loads for atomicity.")
 
-/*
- * Prevent the compiler from merging or refetching accesses.  The compiler
- * is also forbidden from reordering successive instances of ACCESS_ONCE(),
- * but only when the compiler is aware of some particular ordering.  One way
- * to make the compiler aware of ordering is to put the two invocations of
- * ACCESS_ONCE() in different C statements.
- *
- * ACCESS_ONCE will only work on scalar types. For union types, ACCESS_ONCE
- * on a union member will work as long as the size of the member matches the
- * size of the union and the size is smaller than word size.
- *
- * The major use cases of ACCESS_ONCE used to be (1) Mediating communication
- * between process-level code and irq/NMI handlers, all running on the same CPU,
- * and (2) Ensuring that the compiler does not  fold, spindle, or otherwise
- * mutilate accesses that either do not require ordering or that interact
- * with an explicit memory barrier or atomic instruction that provides the
- * required ordering.
- *
- * If possible use READ_ONCE()/WRITE_ONCE() instead.
- */
-#define __ACCESS_ONCE(x) ({ \
-	 __maybe_unused typeof(x) __var = (__force typeof(x)) 0; \
-	(volatile typeof(x) *)&(x); })
-#define ACCESS_ONCE(x) (*__ACCESS_ONCE(x))
-
-/**
- * lockless_dereference() - safely load a pointer for later dereference
- * @p: The pointer to load
- *
- * Similar to rcu_dereference(), but for situations where the pointed-to
- * object's lifetime is managed by something other than RCU.  That
- * "something other" might be reference counting or simple immortality.
- */
-#define lockless_dereference(p) \
-({ \
-	typeof(p) _________p1 = READ_ONCE(p); \
-	smp_read_barrier_depends(); /* Dependency order vs. p above. */ \
-	(_________p1); \
-})
-
-/* Ignore/forbid kprobes attach on very low level functions marked by this attribute: */
-#ifdef CONFIG_KPROBES
-# define __kprobes	__attribute__((__section__(".kprobes.text")))
-# define nokprobe_inline	__always_inline
-#else
-# define __kprobes
-# define nokprobe_inline	inline
-#endif
 #endif /* __LINUX_COMPILER_H */
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
new file mode 100644
index 0000000000..db192becfe
--- /dev/null
+++ b/include/linux/compiler_types.h
@@ -0,0 +1,285 @@
+#ifndef __LINUX_COMPILER_TYPES_H
+#define __LINUX_COMPILER_TYPES_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef __CHECKER__
+# define __user		__attribute__((noderef, address_space(1)))
+# define __kernel	__attribute__((address_space(0)))
+# define __safe		__attribute__((safe))
+# define __force	__attribute__((force))
+# define __nocast	__attribute__((nocast))
+# define __iomem	__attribute__((noderef, address_space(2)))
+# define __must_hold(x)	__attribute__((context(x,1,1)))
+# define __acquires(x)	__attribute__((context(x,0,1)))
+# define __releases(x)	__attribute__((context(x,1,0)))
+# define __acquire(x)	__context__(x,1)
+# define __release(x)	__context__(x,-1)
+# define __cond_lock(x,c)	((c) ? ({ __acquire(x); 1; }) : 0)
+# define __percpu	__attribute__((noderef, address_space(3)))
+# define __rcu		__attribute__((noderef, address_space(4)))
+# define __private	__attribute__((noderef))
+extern void __chk_user_ptr(const volatile void __user *);
+extern void __chk_io_ptr(const volatile void __iomem *);
+# define ACCESS_PRIVATE(p, member) (*((typeof((p)->member) __force *) &(p)->member))
+#else /* __CHECKER__ */
+# ifdef STRUCTLEAK_PLUGIN
+#  define __user __attribute__((user))
+# else
+#  define __user
+# endif
+# define __kernel
+# define __safe
+# define __force
+# define __nocast
+# define __iomem
+# define __chk_user_ptr(x) (void)0
+# define __chk_io_ptr(x) (void)0
+# define __builtin_warning(x, y...) (1)
+# define __must_hold(x)
+# define __acquires(x)
+# define __releases(x)
+# define __acquire(x) (void)0
+# define __release(x) (void)0
+# define __cond_lock(x,c) (c)
+# define __percpu
+# define __rcu
+# define __private
+# define ACCESS_PRIVATE(p, member) ((p)->member)
+#endif /* __CHECKER__ */
+
+/* Indirect macros required for expanded argument pasting, eg. __LINE__. */
+#define ___PASTE(a,b) a##b
+#define __PASTE(a,b) ___PASTE(a,b)
+
+#ifdef __KERNEL__
+
+/* Compiler specific macros. */
+#ifdef __clang__
+#include <linux/compiler-clang.h>
+#elif defined(__INTEL_COMPILER)
+#include <linux/compiler-intel.h>
+#elif defined(__GNUC__)
+/* The above compilers also define __GNUC__, so order is important here. */
+#include <linux/compiler-gcc.h>
+#else
+#error "Unknown compiler"
+#endif
+
+/*
+ * Some architectures need to provide custom definitions of macros provided
+ * by linux/compiler-*.h, and can do so using asm/compiler.h. We include that
+ * conditionally rather than using an asm-generic wrapper in order to avoid
+ * build failures if any C compilation, which will include this file via an
+ * -include argument in c_flags, occurs prior to the asm-generic wrappers being
+ * generated.
+ */
+#ifdef CONFIG_HAVE_ARCH_COMPILER_H
+#include <asm/compiler.h>
+#endif
+
+/*
+ * Generic compiler-independent macros required for kernel
+ * build go below this comment. Actual compiler/compiler version
+ * specific implementations come from the above header files
+ */
+
+struct ftrace_branch_data {
+	const char *func;
+	const char *file;
+	unsigned line;
+	union {
+		struct {
+			unsigned long correct;
+			unsigned long incorrect;
+		};
+		struct {
+			unsigned long miss;
+			unsigned long hit;
+		};
+		unsigned long miss_hit[2];
+	};
+};
+
+struct ftrace_likely_data {
+	struct ftrace_branch_data	data;
+	unsigned long			constant;
+};
+
+/* Don't. Just don't. */
+#define __deprecated
+#define __deprecated_for_modules
+
+#endif /* __KERNEL__ */
+
+#endif /* __ASSEMBLY__ */
+
+/*
+ * The below symbols may be defined for one or more, but not ALL, of the above
+ * compilers. We don't consider that to be an error, so set them to nothing.
+ * For example, some of them are for compiler specific plugins.
+ */
+#ifndef __designated_init
+# define __designated_init
+#endif
+
+#ifndef __latent_entropy
+# define __latent_entropy
+#endif
+
+#ifndef __randomize_layout
+# define __randomize_layout __designated_init
+#endif
+
+#ifndef __no_randomize_layout
+# define __no_randomize_layout
+#endif
+
+#ifndef randomized_struct_fields_start
+# define randomized_struct_fields_start
+# define randomized_struct_fields_end
+#endif
+
+#ifndef __visible
+#define __visible
+#endif
+
+/*
+ * Assume alignment of return value.
+ */
+#ifndef __assume_aligned
+#define __assume_aligned(a, ...)
+#endif
+
+/* Are two types/vars the same type (ignoring qualifiers)? */
+#define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
+
+/* Is this type a native word size -- useful for atomic operations */
+#define __native_word(t) \
+	(sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
+	 sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
+
+#ifndef __attribute_const__
+#define __attribute_const__	__attribute__((__const__))
+#endif
+
+#ifndef __noclone
+#define __noclone
+#endif
+
+/* Helpers for emitting diagnostics in pragmas. */
+#ifndef __diag
+#define __diag(string)
+#endif
+
+#ifndef __diag_GCC
+#define __diag_GCC(version, severity, string)
+#endif
+
+#define __diag_push()	__diag(push)
+#define __diag_pop()	__diag(pop)
+
+#define __diag_ignore(compiler, version, option, comment) \
+	__diag_ ## compiler(version, ignore, option)
+#define __diag_warn(compiler, version, option, comment) \
+	__diag_ ## compiler(version, warn, option)
+#define __diag_error(compiler, version, option, comment) \
+	__diag_ ## compiler(version, error, option)
+
+/*
+ * From the GCC manual:
+ *
+ * Many functions have no effects except the return value and their
+ * return value depends only on the parameters and/or global
+ * variables.  Such a function can be subject to common subexpression
+ * elimination and loop optimization just as an arithmetic operator
+ * would be.
+ * [...]
+ */
+#define __pure			__attribute__((pure))
+#define __aligned(x)		__attribute__((aligned(x)))
+#define __aligned_largest	__attribute__((aligned))
+#define __printf(a, b)		__attribute__((format(printf, a, b)))
+#define __scanf(a, b)		__attribute__((format(scanf, a, b)))
+#define __maybe_unused		__attribute__((unused))
+#define __always_unused		__attribute__((unused))
+#define __mode(x)		__attribute__((mode(x)))
+#define __malloc		__attribute__((__malloc__))
+#define __used			__attribute__((__used__))
+#define __noreturn		__attribute__((noreturn))
+#define __packed		__attribute__((packed))
+#define __weak			__attribute__((weak))
+#define __alias(symbol)		__attribute__((alias(#symbol)))
+#define __cold			__attribute__((cold))
+#define __section(S)		__attribute__((__section__(#S)))
+
+
+#ifdef CONFIG_ENABLE_MUST_CHECK
+#define __must_check		__attribute__((warn_unused_result))
+#else
+#define __must_check
+#endif
+
+#if defined(CC_USING_HOTPATCH) && !defined(__CHECKER__)
+#define notrace			__attribute__((hotpatch(0, 0)))
+#else
+#define notrace			__attribute__((no_instrument_function))
+#endif
+
+/*
+ * it doesn't make sense on ARM (currently the only user of __naked)
+ * to trace naked functions because then mcount is called without
+ * stack and frame pointer being set up and there is no chance to
+ * restore the lr register to the value before mcount was called.
+ */
+#define __naked			__attribute__((naked)) notrace
+
+#define __compiler_offsetof(a, b)	__builtin_offsetof(a, b)
+
+/*
+ * Feature detection for gnu_inline (gnu89 extern inline semantics). Either
+ * __GNUC_STDC_INLINE__ is defined (not using gnu89 extern inline semantics,
+ * and we opt in to the gnu89 semantics), or __GNUC_STDC_INLINE__ is not
+ * defined so the gnu89 semantics are the default.
+ */
+#ifdef __GNUC_STDC_INLINE__
+# define __gnu_inline	__attribute__((gnu_inline))
+#else
+# define __gnu_inline
+#endif
+
+/*
+ * Force always-inline if the user requests it so via the .config.
+ * GCC does not warn about unused static inline functions for
+ * -Wunused-function.  This turns out to avoid the need for complex #ifdef
+ * directives.  Suppress the warning in clang as well by using "unused"
+ * function attribute, which is redundant but not harmful for gcc.
+ * Prefer gnu_inline, so that extern inline functions do not emit an
+ * externally visible function. This makes extern inline behave as per gnu89
+ * semantics rather than c99. This prevents multiple symbol definition errors
+ * of extern inline functions at link time.
+ * A lot of inline functions can cause havoc with function tracing.
+ */
+#if !defined(CONFIG_ARCH_SUPPORTS_OPTIMIZED_INLINING) || \
+	!defined(CONFIG_OPTIMIZE_INLINING)
+#define inline \
+	inline __attribute__((always_inline, unused)) notrace __gnu_inline
+#else
+#define inline inline	__attribute__((unused)) notrace __gnu_inline
+#endif
+
+#define __inline__ inline
+#define __inline inline
+#define noinline	__attribute__((noinline))
+
+#ifndef __always_inline
+#define __always_inline inline __attribute__((always_inline))
+#endif
+
+/*
+ * Rather then using noinline to prevent stack consumption, use
+ * noinline_for_stack instead.  For documentation reasons.
+ */
+#define noinline_for_stack noinline
+
+#endif /* __LINUX_COMPILER_TYPES_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
