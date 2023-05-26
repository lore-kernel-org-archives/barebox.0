Delivery-date: Fri, 26 May 2023 08:39:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6S-00EiMu-Ad
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:39:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6P-0007J1-6N
	for lore@pengutronix.de; Fri, 26 May 2023 08:39:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N7mwTBGdH1czoxLVglnjTkmPwk0wvH6phq1GXPqpVhE=; b=LLjFtne/rBJcFw08qgUUqYtZxy
	1nM4U5GEwSeN+jvLaURYB2LVQx/PGvxKyBpHfpeD0ikTz7mDh9nGSWWI3VCLThRe/ii2nX+HtqPvU
	ZZ2ekuEWgJajtxvZjJuMUs0wsSCewYCNAMwbeN78HYJsiXS3E1ZLCoAxg7U9V/2lEWLfPPr1UXM2F
	CDQCeFWKzrqQJ8kNKbPcTgIVqExv2tK2R9HOCmLXAfG+SisEdfxRVRegA09eDzRGpYYedN4uVZsZ+
	kd3u2vgj6oQK3ooE5Z/ggHEEamaKZwNc8DAiGKt8SVwai7Ys4CddsKJrRfkcFxg9FMJK855OrqXS5
	rykwmtSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5K-001HWg-1q;
	Fri, 26 May 2023 06:37:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5C-001HR4-2a
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5B-0006rD-Hu; Fri, 26 May 2023 08:37:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5A-002tWt-TN; Fri, 26 May 2023 08:37:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R59-004sYf-5z; Fri, 26 May 2023 08:37:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:37:42 +0200
Message-Id: <20230526063746.1155297-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
References: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233751_005995_EC153499 
X-CRM114-Status: GOOD (  18.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/7] include: sync <linux/linkage.h> with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has added new SYM_ macros in the assembly code and deprecated
ENTRY/PROC. Import the necessary definitions to make kernel code
porting easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig          |   6 +
 include/linux/linkage.h | 321 ++++++++++++++++++++++++++++++++++++----
 2 files changed, 298 insertions(+), 29 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index ce94718c848a..5346ba5a623c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1710,3 +1710,9 @@ config DDR_SPD
 
 config HAVE_ARCH_ASAN
 	bool
+
+config ARCH_USE_SYM_ANNOTATIONS
+	bool
+	help
+	  This is selected by architectures that exclusively use the new SYM_
+	  macros in their assembly code and not the deprecated ENTRY/PROC.
diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index efb2d6fa407b..c262c7b36907 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -3,9 +3,16 @@
 #ifndef _LINUX_LINKAGE_H
 #define _LINUX_LINKAGE_H
 
-#include <linux/compiler.h>
+#include <linux/compiler_types.h>
+#include <linux/stringify.h>
+#include <linux/export.h>
 #include <asm/linkage.h>
 
+/* Some toolchains use other characters (e.g. '`') to mark new line in macro */
+#ifndef ASM_NL
+#define ASM_NL		 ;
+#endif
+
 #ifdef __cplusplus
 #define CPP_ASMLINKAGE extern "C"
 #else
@@ -16,12 +23,31 @@
 #define asmlinkage CPP_ASMLINKAGE
 #endif
 
-#ifndef asmregparm
-# define asmregparm
+#ifndef cond_syscall
+#define cond_syscall(x)	asm(				\
+	".weak " __stringify(x) "\n\t"			\
+	".set  " __stringify(x) ","			\
+		 __stringify(sys_ni_syscall))
 #endif
 
-#define __page_aligned_data	__section(.data.page_aligned) __aligned(PAGE_SIZE)
-#define __page_aligned_bss	__section(.bss.page_aligned) __aligned(PAGE_SIZE)
+#ifndef SYSCALL_ALIAS
+#define SYSCALL_ALIAS(alias, name) asm(			\
+	".globl " __stringify(alias) "\n\t"		\
+	".set   " __stringify(alias) ","		\
+		  __stringify(name))
+#endif
+
+#define __page_aligned_data	__section(".data..page_aligned") __aligned(PAGE_SIZE)
+#define __page_aligned_bss	__section(".bss..page_aligned") __aligned(PAGE_SIZE)
+
+/*
+ * For assembly routines.
+ *
+ * Note when using these that you must specify the appropriate
+ * alignment directives yourself
+ */
+#define __PAGE_ALIGNED_DATA	.section ".data..page_aligned", "aw"
+#define __PAGE_ALIGNED_BSS	.section ".bss..page_aligned", "aw"
 
 /*
  * This is used by architectures to keep arguments on the stack
@@ -44,39 +70,69 @@
 #endif
 
 #ifndef __ALIGN
-#define __ALIGN		.align 4,0x90
-#define __ALIGN_STR	".align 4,0x90"
+#define __ALIGN			.balign 4
+#define __ALIGN_STR		__stringify(__ALIGN)
 #endif
 
 #ifdef __ASSEMBLY__
 
+/* SYM_T_FUNC -- type used by assembler to mark functions */
+#ifndef SYM_T_FUNC
+#define SYM_T_FUNC				STT_FUNC
+#endif
+
+/* SYM_T_OBJECT -- type used by assembler to mark data */
+#ifndef SYM_T_OBJECT
+#define SYM_T_OBJECT				STT_OBJECT
+#endif
+
+/* SYM_T_NONE -- type used by assembler to mark entries of unknown type */
+#ifndef SYM_T_NONE
+#define SYM_T_NONE				STT_NOTYPE
+#endif
+
+/* SYM_A_* -- align the symbol? */
+#define SYM_A_ALIGN				ALIGN
+#define SYM_A_NONE				/* nothing */
+
+/* SYM_L_* -- linkage of symbols */
+#define SYM_L_GLOBAL(name)			.globl name
+#define SYM_L_WEAK(name)			.weak name
+#define SYM_L_LOCAL(name)			/* nothing */
+
+#ifndef LINKER_SCRIPT
 #define ALIGN __ALIGN
 #define ALIGN_STR __ALIGN_STR
 
-#ifndef ENTRY
-#define ENTRY(name) \
-  .globl name; \
-  ALIGN; \
-  name:
-#endif
+/* === DEPRECATED annotations === */
 
-#ifndef WEAK
-#define WEAK(name)	   \
-	.weak name;	   \
+#ifndef CONFIG_ARCH_USE_SYM_ANNOTATIONS
+#ifndef GLOBAL
+/* deprecated, use SYM_DATA*, SYM_ENTRY, or similar */
+#define GLOBAL(name) \
+	.globl name ASM_NL \
 	name:
 #endif
 
-#define KPROBE_ENTRY(name) \
-  .pushsection .kprobes.text, "ax"; \
-  ENTRY(name)
+#ifndef ENTRY
+/* deprecated, use SYM_FUNC_START */
+#define ENTRY(name) \
+	SYM_FUNC_START(name)
+#endif
+#endif /* CONFIG_ARCH_USE_SYM_ANNOTATIONS */
+#endif /* LINKER_SCRIPT */
 
-#define KPROBE_END(name) \
-  END(name);		 \
-  .popsection
+#ifndef CONFIG_ARCH_USE_SYM_ANNOTATIONS
+#ifndef WEAK
+/* deprecated, use SYM_FUNC_START_WEAK* */
+#define WEAK(name)	   \
+	SYM_FUNC_START_WEAK(name)
+#endif
 
 #ifndef END
+/* deprecated, use SYM_FUNC_END, SYM_DATA_END, or SYM_END */
 #define END(name) \
-  .size name, .-name
+	.size name, .-name
 #endif
 
 /* If symbol 'name' is treated as a subroutine (gets called, and returns)
@@ -84,15 +140,222 @@
  * static analysis tools such as stack depth analyzer.
  */
 #ifndef ENDPROC
+/* deprecated, use SYM_FUNC_END */
 #define ENDPROC(name) \
-  .type name, @function; \
-  END(name)
+	SYM_FUNC_END(name)
+#endif
+#endif /* CONFIG_ARCH_USE_SYM_ANNOTATIONS */
+
+/* === generic annotations === */
+
+/* SYM_ENTRY -- use only if you have to for non-paired symbols */
+#ifndef SYM_ENTRY
+#define SYM_ENTRY(name, linkage, align...)		\
+	linkage(name) ASM_NL				\
+	align ASM_NL					\
+	name:
 #endif
 
+/* SYM_START -- use only if you have to */
+#ifndef SYM_START
+#define SYM_START(name, linkage, align...)		\
+	SYM_ENTRY(name, linkage, align)
 #endif
 
-#define NORET_TYPE    /**/
-#define ATTRIB_NORET  __attribute__((noreturn))
-#define NORET_AND     noreturn,
-
+/* SYM_END -- use only if you have to */
+#ifndef SYM_END
+#define SYM_END(name, sym_type)				\
+	.type name sym_type ASM_NL			\
+	.set .L__sym_size_##name, .-name ASM_NL		\
+	.size name, .L__sym_size_##name
 #endif
+
+/* SYM_ALIAS -- use only if you have to */
+#ifndef SYM_ALIAS
+#define SYM_ALIAS(alias, name, linkage)			\
+	linkage(alias) ASM_NL				\
+	.set alias, name ASM_NL
+#endif
+
+/* === code annotations === */
+
+/*
+ * FUNC -- C-like functions (proper stack frame etc.)
+ * CODE -- non-C code (e.g. irq handlers with different, special stack etc.)
+ *
+ * Objtool validates stack for FUNC, but not for CODE.
+ * Objtool generates debug info for both FUNC & CODE, but needs special
+ * annotations for each CODE's start (to describe the actual stack frame).
+ *
+ * Objtool requires that all code must be contained in an ELF symbol. Symbol
+ * names that have a  .L prefix do not emit symbol table entries. .L
+ * prefixed symbols can be used within a code region, but should be avoided for
+ * denoting a range of code via ``SYM_*_START/END`` annotations.
+ *
+ * ALIAS -- does not generate debug info -- the aliased function will
+ */
+
+/* SYM_INNER_LABEL_ALIGN -- only for labels in the middle of code */
+#ifndef SYM_INNER_LABEL_ALIGN
+#define SYM_INNER_LABEL_ALIGN(name, linkage)	\
+	.type name SYM_T_NONE ASM_NL			\
+	SYM_ENTRY(name, linkage, SYM_A_ALIGN)
+#endif
+
+/* SYM_INNER_LABEL -- only for labels in the middle of code */
+#ifndef SYM_INNER_LABEL
+#define SYM_INNER_LABEL(name, linkage)		\
+	.type name SYM_T_NONE ASM_NL			\
+	SYM_ENTRY(name, linkage, SYM_A_NONE)
+#endif
+
+/* SYM_FUNC_START -- use for global functions */
+#ifndef SYM_FUNC_START
+#define SYM_FUNC_START(name)				\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)
+#endif
+
+/* SYM_FUNC_START_NOALIGN -- use for global functions, w/o alignment */
+#ifndef SYM_FUNC_START_NOALIGN
+#define SYM_FUNC_START_NOALIGN(name)			\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_NONE)
+#endif
+
+/* SYM_FUNC_START_LOCAL -- use for local functions */
+#ifndef SYM_FUNC_START_LOCAL
+#define SYM_FUNC_START_LOCAL(name)			\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)
+#endif
+
+/* SYM_FUNC_START_LOCAL_NOALIGN -- use for local functions, w/o alignment */
+#ifndef SYM_FUNC_START_LOCAL_NOALIGN
+#define SYM_FUNC_START_LOCAL_NOALIGN(name)		\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_NONE)
+#endif
+
+/* SYM_FUNC_START_WEAK -- use for weak functions */
+#ifndef SYM_FUNC_START_WEAK
+#define SYM_FUNC_START_WEAK(name)			\
+	SYM_START(name, SYM_L_WEAK, SYM_A_ALIGN)
+#endif
+
+/* SYM_FUNC_START_WEAK_NOALIGN -- use for weak functions, w/o alignment */
+#ifndef SYM_FUNC_START_WEAK_NOALIGN
+#define SYM_FUNC_START_WEAK_NOALIGN(name)		\
+	SYM_START(name, SYM_L_WEAK, SYM_A_NONE)
+#endif
+
+/*
+ * SYM_FUNC_END -- the end of SYM_FUNC_START_LOCAL, SYM_FUNC_START,
+ * SYM_FUNC_START_WEAK, ...
+ */
+#ifndef SYM_FUNC_END
+#define SYM_FUNC_END(name)				\
+	SYM_END(name, SYM_T_FUNC)
+#endif
+
+/*
+ * SYM_FUNC_ALIAS -- define a global alias for an existing function
+ */
+#ifndef SYM_FUNC_ALIAS
+#define SYM_FUNC_ALIAS(alias, name)					\
+	SYM_ALIAS(alias, name, SYM_L_GLOBAL)
+#endif
+
+/*
+ * SYM_FUNC_ALIAS_LOCAL -- define a local alias for an existing function
+ */
+#ifndef SYM_FUNC_ALIAS_LOCAL
+#define SYM_FUNC_ALIAS_LOCAL(alias, name)				\
+	SYM_ALIAS(alias, name, SYM_L_LOCAL)
+#endif
+
+/*
+ * SYM_FUNC_ALIAS_WEAK -- define a weak global alias for an existing function
+ */
+#ifndef SYM_FUNC_ALIAS_WEAK
+#define SYM_FUNC_ALIAS_WEAK(alias, name)				\
+	SYM_ALIAS(alias, name, SYM_L_WEAK)
+#endif
+
+/* SYM_CODE_START -- use for non-C (special) functions */
+#ifndef SYM_CODE_START
+#define SYM_CODE_START(name)				\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)
+#endif
+
+/* SYM_CODE_START_NOALIGN -- use for non-C (special) functions, w/o alignment */
+#ifndef SYM_CODE_START_NOALIGN
+#define SYM_CODE_START_NOALIGN(name)			\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_NONE)
+#endif
+
+/* SYM_CODE_START_LOCAL -- use for local non-C (special) functions */
+#ifndef SYM_CODE_START_LOCAL
+#define SYM_CODE_START_LOCAL(name)			\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)
+#endif
+
+/*
+ * SYM_CODE_START_LOCAL_NOALIGN -- use for local non-C (special) functions,
+ * w/o alignment
+ */
+#ifndef SYM_CODE_START_LOCAL_NOALIGN
+#define SYM_CODE_START_LOCAL_NOALIGN(name)		\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_NONE)
+#endif
+
+/* SYM_CODE_END -- the end of SYM_CODE_START_LOCAL, SYM_CODE_START, ... */
+#ifndef SYM_CODE_END
+#define SYM_CODE_END(name)				\
+	SYM_END(name, SYM_T_NONE)
+#endif
+
+/* === data annotations === */
+
+/* SYM_DATA_START -- global data symbol */
+#ifndef SYM_DATA_START
+#define SYM_DATA_START(name)				\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_NONE)
+#endif
+
+/* SYM_DATA_START -- local data symbol */
+#ifndef SYM_DATA_START_LOCAL
+#define SYM_DATA_START_LOCAL(name)			\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_NONE)
+#endif
+
+/* SYM_DATA_END -- the end of SYM_DATA_START symbol */
+#ifndef SYM_DATA_END
+#define SYM_DATA_END(name)				\
+	SYM_END(name, SYM_T_OBJECT)
+#endif
+
+/* SYM_DATA_END_LABEL -- the labeled end of SYM_DATA_START symbol */
+#ifndef SYM_DATA_END_LABEL
+#define SYM_DATA_END_LABEL(name, linkage, label)	\
+	linkage(label) ASM_NL				\
+	.type label SYM_T_OBJECT ASM_NL			\
+	label:						\
+	SYM_END(name, SYM_T_OBJECT)
+#endif
+
+/* SYM_DATA -- start+end wrapper around simple global data */
+#ifndef SYM_DATA
+#define SYM_DATA(name, data...)				\
+	SYM_DATA_START(name) ASM_NL				\
+	data ASM_NL						\
+	SYM_DATA_END(name)
+#endif
+
+/* SYM_DATA_LOCAL -- start+end wrapper around simple local data */
+#ifndef SYM_DATA_LOCAL
+#define SYM_DATA_LOCAL(name, data...)			\
+	SYM_DATA_START_LOCAL(name) ASM_NL			\
+	data ASM_NL						\
+	SYM_DATA_END(name)
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _LINUX_LINKAGE_H */
-- 
2.39.2



