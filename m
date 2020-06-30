Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jq4NX-0007jE-RP
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 00:44:04 +0000
Received: by mail-qk1-x741.google.com with SMTP id b185so6505751qkg.1
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 17:44:03 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Mon, 29 Jun 2020 20:38:32 -0400
Message-Id: <20200630003838.7745-3-dgienda125@gmail.com>
In-Reply-To: <20200630003838.7745-1-dgienda125@gmail.com>
References: <20200630003838.7745-1-dgienda125@gmail.com>
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
Subject: [PATCH v2 2/8] module: Add init macros to module.h
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Port module initialization macros and initcall redefinition macros from
Linux

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 include/init.h   | 26 ++++++++++++------
 include/module.h | 71 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 88 insertions(+), 9 deletions(-)

diff --git a/include/init.h b/include/init.h
index d1cef14b0..2d61bc896 100644
--- a/include/init.h
+++ b/include/init.h
@@ -18,6 +18,21 @@
 typedef int (*initcall_t)(void);
 typedef void (*exitcall_t)(void);
 
+/* section for code used very early when
+ * - we're not running from where we linked at
+ * - bss not cleared
+ * - static variables not initialized
+ *
+ * Mainly useful for booting from NAND Controllers
+ */
+#define __bare_init          __section(.text_bare_init.text)
+
+#endif
+
+#ifndef MODULE
+
+#ifndef __ASSEMBLY__
+
 #define __define_initcall(level,fn,id) \
 	static initcall_t __initcall_##fn##id __attribute__((__used__)) \
 	__attribute__((__section__(".initcall." level))) = fn
@@ -58,16 +73,9 @@ typedef void (*exitcall_t)(void);
 #define archshutdown_exitcall(fn)	__define_exitcall("5",fn,5)
 #define postarchshutdown_exitcall(fn)	__define_exitcall("6",fn,6)
 
-/* section for code used very early when
- * - we're not running from where we linked at
- * - bss not cleared
- * - static variables not initialized
- *
- * Mainly useful for booting from NAND Controllers
- */
-#define __bare_init          __section(.text_bare_init.text)
+#endif /* __ASSEMBLY__ */
 
-#endif
+#endif /* MODULE */
 
 #endif /* _INIT_H */
 
diff --git a/include/module.h b/include/module.h
index cea8c2e18..f416cd0ae 100644
--- a/include/module.h
+++ b/include/module.h
@@ -2,6 +2,7 @@
 #ifndef __MODULE_H
 #define __MODULE_H
 
+#include <init.h>
 #include <elf.h>
 #include <linux/compiler.h>
 #include <linux/export.h>
@@ -13,6 +14,76 @@
 
 #define MODULE_NAME_LEN (64 - sizeof(unsigned long))
 
+/* These are either module local, or the kernel's dummy ones. */
+extern int init_module(void);
+extern void cleanup_module(void);
+
+#ifndef MODULE
+/**
+ * module_init() - driver initialization entry point
+ * @x: function to be run at kernel boot time or module insertion
+ *
+ * module_init() will either be called during do_initcalls() (if
+ * builtin) or at module insertion time (if a module).  There can only
+ * be one per module.
+ */
+#define module_init(x)	device_initcall(x);
+
+/**
+ * module_exit() - driver exit entry point
+ * @x: function to be run when driver is removed
+ *
+ * module_exit() will wrap the driver clean-up code
+ * with cleanup_module() when used with rmmod when
+ * the driver is a module.  If the driver is statically
+ * compiled into the kernel, module_exit() has no effect.
+ * There can only be one per module.
+ */
+#define module_exit(x)	devshutdown_exitcall(x);
+
+#else /* MODULE */
+
+/*
+ * In most cases loadable modules do not need custom
+ * initcall levels. There are still some valid cases where
+ * a driver may be needed early if built in, and does not
+ * matter when built as a loadable module. Like bus
+ * snooping debug drivers.
+ */
+#define core_initcall(fn)		module_init(fn)
+#define postcore_initcall(fn)		module_init(fn)
+#define console_initcall(fn)		module_init(fn)
+#define postconsole_initcall(fn)	module_init(fn)
+#define mem_initcall(fn)		module_init(fn)
+#define mmu_initcall(fn)		module_init(fn)
+#define postmmu_initcall(fn)		module_init(fn)
+#define coredevice_initcall(fn)		module_init(fn)
+#define fs_initcall(fn)			module_init(fn)
+#define device_initcall(fn)		module_init(fn)
+#define late_initcall(fn)		module_init(fn)
+
+#define early_exitcall(fn)		module_exit(fn)
+#define predevshutdown_exitcall(fn)	module_exit(fn)
+#define devshutdown_exitcall(fn)	module_exit(fn)
+#define postdevshutdown_exitcall(fn)	module_exit(fn)
+#define prearchshutdown_exitcall(fn)	module_exit(fn)
+#define archshutdown_exitcall(fn)	module_exit(fn)
+#define postarchshutdown_exitcall(fn)	module_exit(fn)
+
+/* Each module must use one module_init(). */
+#define module_init(initfn)					\
+	static inline initcall_t __maybe_unused __inittest(void)		\
+	{ return initfn; }					\
+	int init_module(void) __attribute__((alias(#initfn)));
+
+/* This is only required if you want to be unloadable. */
+#define module_exit(exitfn)					\
+	static inline exitcall_t __maybe_unused __exittest(void)		\
+	{ return exitfn; }					\
+	void cleanup_module(void) __attribute__((alias(#exitfn)));
+
+#endif
+
 #ifdef CONFIG_MODULES
 #include <asm/module.h>
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
