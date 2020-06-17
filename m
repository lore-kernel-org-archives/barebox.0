Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOz9-00027i-QO
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:37 +0000
Received: by mail-qt1-x842.google.com with SMTP id e16so535853qtg.0
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:35 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:44:01 -0400
Message-Id: <20200617034404.5904-6-dgienda125@gmail.com>
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
Subject: [RFC PATCH 5/8] module: Implement HAVE_MOD_ARCH_SPECIFIC
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Implement HAVE_MOD_ARCH_SPECIFIC Kconfig and module_frob_arch_sections()
function prototype from Linux module subsystem.
module_frob_arch_sections() should be implemented by any architecture
that selects HAVE_MOD_ARCH_SPECIFIC, and is called from load_module()

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 common/Kconfig               |  8 ++++++
 common/module.c              |  6 +++++
 include/asm-generic/module.h | 49 ++++++++++++++++++++++++++++++++++++
 include/module.h             | 18 +++++++++++++
 4 files changed, 81 insertions(+)
 create mode 100644 include/asm-generic/module.h

diff --git a/common/Kconfig b/common/Kconfig
index ac282d895..9bade375e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -326,6 +326,14 @@ config MODULES
 	  way to compile modules and the list of exported symbols to actually
 	  make use of modules is short to nonexistent
 
+config HAVE_MOD_ARCH_SPECIFIC
+	depends on MODULES
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
index b08df1199..964369755 100644
--- a/common/module.c
+++ b/common/module.c
@@ -271,6 +271,12 @@ struct module * load_module(void *mod_image, unsigned long len)
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
index 37c48f065..2751c86cd 100644
--- a/include/module.h
+++ b/include/module.h
@@ -142,6 +142,24 @@ int apply_relocate_add(Elf_Shdr *sechdrs,
 		       unsigned int symindex,
 		       unsigned int relsec,
 		       struct module *mod);
+
+#ifdef CONFIG_HAVE_MOD_ARCH_SPECIFIC
+/* Adjust arch-specific sections.  Return 0 on success.  */
+int module_frob_arch_sections(Elf_Ehdr *hdr,
+			      Elf_Shdr *sechdrs,
+			      char *secstrings,
+			      struct module *mod);
+#else
+static inline
+int module_frob_arch_sections(Elf_Ehdr *hdr,
+			      Elf_Shdr *sechdrs,
+			      char *secstrings,
+			      struct module *mod)
+{
+	return 0;
+}
+#endif
+
 #endif /* CONFIG_MODULES */
 
 extern struct list_head module_list;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
