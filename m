Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXFuF-0007P1-OT
 for barebox@lists.infradead.org; Sat, 09 May 2020 03:12:05 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat,  9 May 2020 12:11:33 +0900
Message-Id: <20200509031133.836743-1-masahiroy@kernel.org>
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
Subject: [PATCH v2] module.h: split out the EXPORT_SYMBOL into export.h
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Do as Linux commit f50169324df4ad942e544386d136216c8617636a

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - move THIS_MODULE

 include/linux/export.h | 39 +++++++++++++++++++++++++++++++++++++++
 include/module.h       | 28 +---------------------------
 2 files changed, 40 insertions(+), 27 deletions(-)
 create mode 100644 include/linux/export.h

diff --git a/include/linux/export.h b/include/linux/export.h
new file mode 100644
index 000000000..88d318bd8
--- /dev/null
+++ b/include/linux/export.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _LINUX_EXPORT_H
+#define _LINUX_EXPORT_H
+
+#define THIS_MODULE	0
+
+#ifdef CONFIG_MODULES
+
+struct kernel_symbol
+{
+	unsigned long value;
+	const char *name;
+};
+
+/* For every exported symbol, place a struct in the __ksymtab section */
+#define __EXPORT_SYMBOL(sym, sec)				\
+	extern typeof(sym) sym;					\
+	static const char __ustrtab_##sym[]			\
+	__attribute__((section("__usymtab_strings")))		\
+	= MODULE_SYMBOL_PREFIX #sym;                    	\
+	static const struct kernel_symbol __usymtab_##sym	\
+	__used \
+	__attribute__((section("__usymtab" sec), unused))	\
+	= { (unsigned long)&sym, __ustrtab_##sym }
+
+#define EXPORT_SYMBOL(sym)					\
+	__EXPORT_SYMBOL(sym, "")
+
+#define EXPORT_SYMBOL_GPL(sym)					\
+	__EXPORT_SYMBOL(sym, "")
+
+#else
+
+#define EXPORT_SYMBOL(sym)
+#define EXPORT_SYMBOL_GPL(sym)
+
+#endif /* CONFIG_MODULES */
+
+#endif /* _LINUX_EXPORT_H */
diff --git a/include/module.h b/include/module.h
index abf740a78..cea8c2e18 100644
--- a/include/module.h
+++ b/include/module.h
@@ -4,6 +4,7 @@
 
 #include <elf.h>
 #include <linux/compiler.h>
+#include <linux/export.h>
 #include <linux/list.h>
 
 #ifndef MODULE_SYMBOL_PREFIX
@@ -11,36 +12,12 @@
 #endif
 
 #define MODULE_NAME_LEN (64 - sizeof(unsigned long))
-#define THIS_MODULE	0
 
 #ifdef CONFIG_MODULES
 #include <asm/module.h>
 
-struct kernel_symbol
-{
-	unsigned long value;
-	const char *name;
-};
-
 struct module * load_module(void *mod_image, unsigned long len);
 
-/* For every exported symbol, place a struct in the __ksymtab section */
-#define __EXPORT_SYMBOL(sym, sec)				\
-	extern typeof(sym) sym;					\
-	static const char __ustrtab_##sym[]			\
-	__attribute__((section("__usymtab_strings")))		\
-	= MODULE_SYMBOL_PREFIX #sym;                    	\
-	static const struct kernel_symbol __usymtab_##sym	\
-	__used \
-	__attribute__((section("__usymtab" sec), unused))	\
-	= { (unsigned long)&sym, __ustrtab_##sym }
-
-#define EXPORT_SYMBOL(sym)					\
-	__EXPORT_SYMBOL(sym, "")
-
-#define EXPORT_SYMBOL_GPL(sym)					\
-	__EXPORT_SYMBOL(sym, "")
-
 struct module {
 	/* Unique handle for this module */
 	char name[MODULE_NAME_LEN];
@@ -74,9 +51,6 @@ int apply_relocate_add(Elf_Shdr *sechdrs,
 		       unsigned int symindex,
 		       unsigned int relsec,
 		       struct module *mod);
-#else
-#define EXPORT_SYMBOL(sym)
-#define EXPORT_SYMBOL_GPL(sym)
 #endif /* CONFIG_MODULES */
 
 extern struct list_head module_list;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
