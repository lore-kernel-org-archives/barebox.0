Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhV-0005c5-0I
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:09 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:24 +0100
Message-Id: <1266331586-11253-10-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-9-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-6-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-7-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-8-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-9-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 09/11] import recent include/linux/compiler*.h
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/linux/compiler-gcc.h  |   30 +++++++++-
 include/linux/compiler-gcc3.h |   11 +++-
 include/linux/compiler-gcc4.h |   32 ++++++++++-
 include/linux/compiler.h      |  124 ++++++++++++++++++++++++++++++++++++++---
 4 files changed, 180 insertions(+), 17 deletions(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 5c8351b..73dcf80 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -11,9 +11,19 @@
 /* The "volatile" is due to gcc bugs */
 #define barrier() __asm__ __volatile__("": : :"memory")
 
-/* This macro obfuscates arithmetic on a variable address so that gcc
-   shouldn't recognize the original var, and make assumptions about it */
 /*
+ * This macro obfuscates arithmetic on a variable address so that gcc
+ * shouldn't recognize the original var, and make assumptions about it.
+ *
+ * This is needed because the C standard makes it undefined to do
+ * pointer arithmetic on "objects" outside their boundaries and the
+ * gcc optimizers assume this is the case. In particular they
+ * assume such arithmetic does not wrap.
+ *
+ * A miscompilation has been observed because of this on PPC.
+ * To work around it we hide the relationship of the pointer and the object
+ * using this macro.
+ *
  * Versions of the ppc64 compiler before 4.1 had a bug where use of
  * RELOC_HIDE could trash r30. The bug can be worked around by changing
  * the inline assembly constraint from =g to =r, in this particular
@@ -42,7 +52,15 @@
 #define __deprecated			__attribute__((deprecated))
 #define __packed			__attribute__((packed))
 #define __weak				__attribute__((weak))
-#define __naked				__attribute__((naked))
+
+/*
+ * it doesn't make sense on ARM (currently the only user of __naked) to trace
+ * naked functions because then mcount is called without stack and frame pointer
+ * being set up and there is no chance to restore the lr register to the value
+ * before mcount was called.
+ */
+#define __naked				__attribute__((naked)) notrace
+
 #define __noreturn			__attribute__((noreturn))
 
 /*
@@ -61,3 +79,9 @@
 #define  noinline			__attribute__((noinline))
 #define __attribute_const__		__attribute__((__const__))
 #define __maybe_unused			__attribute__((unused))
+#define __always_unused			__attribute__((unused))
+
+#define __gcc_header(x) #x
+#define _gcc_header(x) __gcc_header(linux/compiler-gcc##x.h)
+#define gcc_header(x) _gcc_header(x)
+#include gcc_header(__GNUC__)
diff --git a/include/linux/compiler-gcc3.h b/include/linux/compiler-gcc3.h
index e5eb795..b721129 100644
--- a/include/linux/compiler-gcc3.h
+++ b/include/linux/compiler-gcc3.h
@@ -2,8 +2,9 @@
 #error "Please don't include <linux/compiler-gcc3.h> directly, include <linux/compiler.h> instead."
 #endif
 
-/* These definitions are for GCC v3.x.  */
-#include <linux/compiler-gcc.h>
+#if __GNUC_MINOR__ < 2
+# error Sorry, your compiler is too old - please upgrade it.
+#endif
 
 #if __GNUC_MINOR__ >= 3
 # define __used			__attribute__((__used__))
@@ -15,6 +16,12 @@
 #define __must_check		__attribute__((warn_unused_result))
 #endif
 
+#ifdef CONFIG_GCOV_KERNEL
+# if __GNUC_MINOR__ < 4
+#   error "GCOV profiling support for gcc versions below 3.4 not included"
+# endif /* __GNUC_MINOR__ */
+#endif /* CONFIG_GCOV_KERNEL */
+
 /*
  * A trick to suppress uninitialized variable warning without generating any
  * code
diff --git a/include/linux/compiler-gcc4.h b/include/linux/compiler-gcc4.h
index 974f5b7..94dea3f 100644
--- a/include/linux/compiler-gcc4.h
+++ b/include/linux/compiler-gcc4.h
@@ -2,8 +2,12 @@
 #error "Please don't include <linux/compiler-gcc4.h> directly, include <linux/compiler.h> instead."
 #endif
 
-/* These definitions are for GCC v4.x.  */
-#include <linux/compiler-gcc.h>
+/* GCC 4.1.[01] miscompiles __weak */
+#ifdef __KERNEL__
+# if __GNUC_MINOR__ == 1 && __GNUC_PATCHLEVEL__ <= 1
+#  error Your version of gcc miscompiles the __weak directive
+# endif
+#endif
 
 #define __used			__attribute__((__used__))
 #define __must_check 		__attribute__((warn_unused_result))
@@ -16,7 +20,7 @@
  */
 #define uninitialized_var(x) x = x
 
-#if !(__GNUC__ == 4 && __GNUC_MINOR__ < 3)
+#if __GNUC_MINOR__ >= 3
 /* Mark functions as cold. gcc will assume any path leading to a call
    to them will be unlikely.  This means a lot of manual unlikely()s
    are unnecessary now for any paths leading to the usual suspects
@@ -32,4 +36,26 @@
    the kernel context */
 #define __cold			__attribute__((__cold__))
 
+
+#if __GNUC_MINOR__ >= 5
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
+#endif
+
+#endif
+
+#if __GNUC_MINOR__ > 0
+#define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
+#endif
+#if __GNUC_MINOR__ >= 4
+#define __compiletime_warning(message) __attribute__((warning(message)))
+#define __compiletime_error(message) __attribute__((error(message)))
 #endif
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index c8bd2da..5be3dab 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -36,14 +36,12 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 
 #ifdef __KERNEL__
 
-#if __GNUC__ >= 4
-# include <linux/compiler-gcc4.h>
-#elif __GNUC__ == 3 && __GNUC_MINOR__ >= 2
-# include <linux/compiler-gcc3.h>
-#else
-# error Sorry, your compiler is too old/not recognized.
+#ifdef __GNUC__
+#include <linux/compiler-gcc.h>
 #endif
 
+#define notrace __attribute__((no_instrument_function))
+
 /* Intel compiler defines __GNUC__. So we will overwrite implementations
  * coming from above header files here
  */
@@ -57,14 +55,100 @@ extern void __chk_io_ptr(const volatile void __iomem *);
  * specific implementations come from the above header files
  */
 
-#define likely(x)	__builtin_expect(!!(x), 1)
-#define unlikely(x)	__builtin_expect(!!(x), 0)
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
+/*
+ * Note: DISABLE_BRANCH_PROFILING can be used by special lowlevel code
+ * to disable branch tracing on a per file basis.
+ */
+#if defined(CONFIG_TRACE_BRANCH_PROFILING) \
+    && !defined(DISABLE_BRANCH_PROFILING) && !defined(__CHECKER__)
+void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect);
+
+#define likely_notrace(x)	__builtin_expect(!!(x), 1)
+#define unlikely_notrace(x)	__builtin_expect(!!(x), 0)
+
+#define __branch_check__(x, expect) ({					\
+			int ______r;					\
+			static struct ftrace_branch_data		\
+				__attribute__((__aligned__(4)))		\
+				__attribute__((section("_ftrace_annotated_branch"))) \
+				______f = {				\
+				.func = __func__,			\
+				.file = __FILE__,			\
+				.line = __LINE__,			\
+			};						\
+			______r = likely_notrace(x);			\
+			ftrace_likely_update(&______f, ______r, expect); \
+			______r;					\
+		})
+
+/*
+ * Using __builtin_constant_p(x) to ignore cases where the return
+ * value is always the same.  This idea is taken from a similar patch
+ * written by Daniel Walker.
+ */
+# ifndef likely
+#  define likely(x)	(__builtin_constant_p(x) ? !!(x) : __branch_check__(x, 1))
+# endif
+# ifndef unlikely
+#  define unlikely(x)	(__builtin_constant_p(x) ? !!(x) : __branch_check__(x, 0))
+# endif
+
+#ifdef CONFIG_PROFILE_ALL_BRANCHES
+/*
+ * "Define 'is'", Bill Clinton
+ * "Define 'if'", Steven Rostedt
+ */
+#define if(cond, ...) __trace_if( (cond , ## __VA_ARGS__) )
+#define __trace_if(cond) \
+	if (__builtin_constant_p((cond)) ? !!(cond) :			\
+	({								\
+		int ______r;						\
+		static struct ftrace_branch_data			\
+			__attribute__((__aligned__(4)))			\
+			__attribute__((section("_ftrace_branch")))	\
+			______f = {					\
+				.func = __func__,			\
+				.file = __FILE__,			\
+				.line = __LINE__,			\
+			};						\
+		______r = !!(cond);					\
+		______f.miss_hit[______r]++;					\
+		______r;						\
+	}))
+#endif /* CONFIG_PROFILE_ALL_BRANCHES */
+
+#else
+# define likely(x)	__builtin_expect(!!(x), 1)
+# define unlikely(x)	__builtin_expect(!!(x), 0)
+#endif
 
 /* Optimization barrier */
 #ifndef barrier
 # define barrier() __memory_barrier()
 #endif
 
+/* Unreachable code */
+#ifndef unreachable
+# define unreachable() do { } while (1)
+#endif
+
 #ifndef RELOC_HIDE
 # define RELOC_HIDE(ptr, off)					\
   ({ unsigned long __ptr;					\
@@ -134,6 +218,10 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # define __maybe_unused		/* unimplemented */
 #endif
 
+#ifndef __always_unused
+# define __always_unused	/* unimplemented */
+#endif
+
 #ifndef noinline
 #define noinline
 #endif
@@ -182,6 +270,22 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # define __section(S) __attribute__ ((__section__(#S)))
 #endif
 
+/* Are two types/vars the same type (ignoring qualifiers)? */
+#ifndef __same_type
+# define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
+#endif
+
+/* Compile time object size, -1 for unknown */
+#ifndef __compiletime_object_size
+# define __compiletime_object_size(obj) -1
+#endif
+#ifndef __compiletime_warning
+# define __compiletime_warning(message)
+#endif
+#ifndef __compiletime_error
+# define __compiletime_error(message)
+#endif
+
 /*
  * Prevent the compiler from merging or refetching accesses.  The compiler
  * is also forbidden from reordering successive instances of ACCESS_ONCE(),
@@ -190,7 +294,9 @@ extern void __chk_io_ptr(const volatile void __iomem *);
  * ACCESS_ONCE() in different C statements.
  *
  * This macro does absolutely -nothing- to prevent the CPU from reordering,
- * merging, or refetching absolutely anything at any time.
+ * merging, or refetching absolutely anything at any time.  Its main intended
+ * use is to mediate communication between process-level code and irq/NMI
+ * handlers, all running on the same CPU.
  */
 #define ACCESS_ONCE(x) (*(volatile typeof(x) *)&(x))
 
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
