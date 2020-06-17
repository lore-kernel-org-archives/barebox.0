Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOz6-00024r-35
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:33 +0000
Received: by mail-qk1-x744.google.com with SMTP id b4so767821qkn.11
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:31 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:43:58 -0400
Message-Id: <20200617034404.5904-3-dgienda125@gmail.com>
In-Reply-To: <20200617034404.5904-1-dgienda125@gmail.com>
References: <20200617034404.5904-1-dgienda125@gmail.com>
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
Subject: [RFC PATCH 2/8] module: Add init macros to module.h
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Port module initialization macros and initcall redefinition macros from
Linux

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 include/module.h | 91 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/include/module.h b/include/module.h
index cea8c2e18..37c48f065 100644
--- a/include/module.h
+++ b/include/module.h
@@ -2,6 +2,7 @@
 #ifndef __MODULE_H
 #define __MODULE_H
 
+#include <init.h>
 #include <elf.h>
 #include <linux/compiler.h>
 #include <linux/export.h>
@@ -13,6 +14,96 @@
 
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
+#undef core_initcall
+#undef postcore_initcall
+#undef console_initcall
+#undef postconsole_initcall
+#undef mem_initcall
+#undef mmu_initcall
+#undef postmmu_initcall
+#undef coredevice_initcall
+#undef fs_initcall
+#undef device_initcall
+#undef late_initcall
+
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
+#undef early_exitcall
+#undef predevshutdown_exitcall
+#undef devshutdown_exitcall
+#undef postdevshutdown_exitcall
+#undef prearchshutdown_exitcall
+#undef archshutdown_exitcall
+#undef postarchshutdown_exitcall
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
