Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jq4Nb-0007jm-41
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 00:44:07 +0000
Received: by mail-qv1-xf43.google.com with SMTP id m9so8565310qvx.5
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 17:44:06 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Mon, 29 Jun 2020 20:38:35 -0400
Message-Id: <20200630003838.7745-6-dgienda125@gmail.com>
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
Subject: [PATCH v2 5/8] module: Implement HAVE_MOD_ARCH_SPECIFIC
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Implement HAVE_MOD_ARCH_SPECIFIC Kconfig and module_frob_arch_sections()
function prototype from Linux module subsystem.
module_frob_arch_sections() should be implemented by any architecture
that selects HAVE_MOD_ARCH_SPECIFIC, and is called from load_module()

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 common/Kconfig               |  7 ++++++
 common/module.c              | 14 +++++++++++
 include/asm-generic/module.h | 49 ++++++++++++++++++++++++++++++++++++
 include/module.h             |  7 ++++++
 4 files changed, 77 insertions(+)
 create mode 100644 include/asm-generic/module.h

diff --git a/common/Kconfig b/common/Kconfig
index f150092af..c84a33266 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -326,6 +326,13 @@ config MODULES
 	  way to compile modules and the list of exported symbols to actually
 	  make use of modules is short to nonexistent
 
+config HAVE_MOD_ARCH_SPECIFIC
+	bool
+	help
+	  The arch uses struct mod_arch_specific to store data.  Many arches
+	  just need a simple module loader without arch specific data - those
+	  should not enable this.
+
 config KALLSYMS
 	depends on HAS_KALLSYMS
 	bool "kallsyms"
diff --git a/common/module.c b/common/module.c
index b08df1199..a79bc734b 100644
--- a/common/module.c
+++ b/common/module.c
@@ -176,6 +176,14 @@ static void layout_sections( struct module *mod,
 	debug("core_size: %ld\n", mod->core_size);
 }
 
+int __weak module_frob_arch_sections(Elf_Ehdr *hdr,
+				     Elf_Shdr *sechdrs,
+				     char *secstrings,
+				     struct module *mod)
+{
+	return 0;
+}
+
 static void register_module_cmds(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex)
 {
 	Elf32_Sym *sym;
@@ -271,6 +279,12 @@ struct module * load_module(void *mod_image, unsigned long len)
 		goto cleanup;
 	}
 
+	/* Allow arches to frob section contents and sizes.  */
+	err = module_frob_arch_sections(ehdr, sechdrs,
+					secstrings, module);
+	if (err < 0)
+		goto cleanup;
+
 	/* Determine total sizes, and put offsets in sh_entsize.  For now
 	   this is done generically; there doesn't appear to be any
 	   special cases for the architectures. */
diff --git a/include/asm-generic/module.h b/include/asm-generic/module.h
new file mode 100644
index 000000000..98e1541b7
--- /dev/null
+++ b/include/asm-generic/module.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_GENERIC_MODULE_H
+#define __ASM_GENERIC_MODULE_H
+
+/*
+ * Many architectures just need a simple module
+ * loader without arch specific data.
+ */
+#ifndef CONFIG_HAVE_MOD_ARCH_SPECIFIC
+struct mod_arch_specific
+{
+};
+#endif
+
+#ifdef CONFIG_64BIT
+#define Elf_Shdr	Elf64_Shdr
+#define Elf_Phdr	Elf64_Phdr
+#define Elf_Sym		Elf64_Sym
+#define Elf_Dyn		Elf64_Dyn
+#define Elf_Ehdr	Elf64_Ehdr
+#define Elf_Addr	Elf64_Addr
+#ifdef CONFIG_MODULES_USE_ELF_REL
+#define Elf_Rel		Elf64_Rel
+#endif
+#ifdef CONFIG_MODULES_USE_ELF_RELA
+#define Elf_Rela	Elf64_Rela
+#endif
+#define ELF_R_TYPE(X)	ELF64_R_TYPE(X)
+#define ELF_R_SYM(X)	ELF64_R_SYM(X)
+
+#else /* CONFIG_64BIT */
+
+#define Elf_Shdr	Elf32_Shdr
+#define Elf_Phdr	Elf32_Phdr
+#define Elf_Sym		Elf32_Sym
+#define Elf_Dyn		Elf32_Dyn
+#define Elf_Ehdr	Elf32_Ehdr
+#define Elf_Addr	Elf32_Addr
+#ifdef CONFIG_MODULES_USE_ELF_REL
+#define Elf_Rel		Elf32_Rel
+#endif
+#ifdef CONFIG_MODULES_USE_ELF_RELA
+#define Elf_Rela	Elf32_Rela
+#endif
+#define ELF_R_TYPE(X)	ELF32_R_TYPE(X)
+#define ELF_R_SYM(X)	ELF32_R_SYM(X)
+#endif
+
+#endif /* __ASM_GENERIC_MODULE_H */
diff --git a/include/module.h b/include/module.h
index f416cd0ae..9099e5aee 100644
--- a/include/module.h
+++ b/include/module.h
@@ -122,6 +122,13 @@ int apply_relocate_add(Elf_Shdr *sechdrs,
 		       unsigned int symindex,
 		       unsigned int relsec,
 		       struct module *mod);
+
+/* Adjust arch-specific sections.  Return 0 on success.  */
+int module_frob_arch_sections(Elf_Ehdr *hdr,
+			      Elf_Shdr *sechdrs,
+			      char *secstrings,
+			      struct module *mod);
+
 #endif /* CONFIG_MODULES */
 
 extern struct list_head module_list;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
