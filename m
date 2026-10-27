Delivery-date: Tue, 27 Oct 2026 08:41:36 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLboO-003pKG-0r
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:41:36 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 01DE620292B
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:41:36 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eM41mLsr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086896; a=rsa-sha256;
	cv=none;
	b=OjUcWMBZ5wpFJzFwWv/YUpDOlWVQLG3HTkG4GLU6LzKks/EH64ewgPe54He5Zwkh/38p0D
	uA5hCGtNPpe+opvXuiNmBebPj/bsWX3T9Ju1ynMdGqQ/GTdWAaHsBl0BLZH5X/tlqNonJ/
	JU3e3+vHLyKH7ps7yw1Y5/P5eeT83zqtRTsbbNV1RwAhTVYRLeS4Wcz3U451m4Hxk/eoKZ
	O/5MSUWXviXPMVWT7oJJNQ3PDiyjf0uh2/JGRwHfvMdf9nLzbzRjdjAvjfizyeouPoO9gR
	5q/aUWbbit0Eu7KFPbA1fpjlrmJTmBdrloHkZlZEN/UWknz9JDxQyMLE5bb8HA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eM41mLsr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086896;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LPlNfkWqOdowulehUde+1WelFeqM06xWnzMxfkeXC8U=;
	b=AxkxnnayhkEQBClWVEwH23u0pkht3F/9GXNecoCTySMqy/bG8QSbeSgC421UEyCuhLv9fg
	eCrhnX5Riwjad+vzbT4Lcf4L312aidUlWsayRgiNcOtT6rlha32kB+ejSAMXYV1W/2ZI9Q
	2mPWQAkRFOwkVBvlKlHOuX6ad/a7x2jHB4QRqCPZDCoVgcePwes1uBwDMyG7pAGpFAkgur
	tbueies2Zk/zHsKj8GLlr/7LMcit3suBAMrGKNcz3COc9pNcjCYsyzp1XKw/quGF5fL68W
	pfZGxE7yC/T65Twy9hz3pqXtWnsYIGnmje3ycYTQdV8xP+rWZ7RnMEiLHidjdg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=LPlNfkWqOdowulehUde+1WelFeqM06xWnzMxfkeXC8U=; b=eM41mLsriH6mpc
	sQA4fju2shVadAJvUR265Z5pIGSQuCgTTncnkiC0yfdDVeP/NMiO7T3+t9n9lE8erVtebpA9RRT4S
	IkFrDdNZn46S9Tl3GotKu1D57+wK4wTDutR80+77nf6GvJMykbeOKwp6Ue11Yg7/+CVqiHtkUpQSR
	tCZONm9lGOx9yMsAKVocJFA6aD96Qv+hVIU6M1FQKWLS6011jSEzr68HhSkHPFztkuyFLDVS1jSQ5
	YyN/oUu6aZFPwU0EN6J5SPqFMy2xnFNy9+Knr/ILdLJzhGlVajh/Y3FBh5WvNQZ9K2VTIHs5lWCbu
	C7Aw6kkAN0skX1Bzz1kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnH-00000003v06-1tRk;
	Tue, 27 Oct 2026 07:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003utz-1JU0
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn7-0003zV-42; Tue, 27 Oct 2026 08:40:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 05/17] PBL: introduce board info based entry point framework
Date: Tue, 27 Oct 2026 08:24:38 +0100
Message-ID: <20261027074014.3280396-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_764259_FB05E680 
X-CRM114-Status: GOOD (  35.76  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Every board open-codes its PBL entry point: set up the stack,
    relocate, call setup_c(), do the lowlevel init and so on, all in code that
    runs before the C environment is ready. This is easy to get wro [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 01DE620292B
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: rg7yw3kbwo7mw3bjrajw33jy4cz3zxww

Every board open-codes its PBL entry point: set up the stack, relocate,
call setup_c(), do the lowlevel init and so on, all in code that runs
before the C environment is ready. This is easy to get wrong and leaves
common code with no idea of what the boot flow looks like.

Let's have boards describe it instead: struct pbl_board_info has up to
three stages (ROM, OCRAM, DRAM), each with a memory region, a stack, an
optional relocation address and callbacks for CPU, SoC and board init
and for chainloading. ENTRY_POINT() defines it with the image head and
defaults of the given SoC, which the board may override, hence the
__diag_ignore_all() imported from Linux.

The image head branches to pbl_head_start_v1(), which determines the
stage from the PC, sets up its stack and runs the CPU init callback,
before relocating, clearing BSS and running the remaining callbacks.

As this runs before there is a stack, which C can't guarantee,
architectures are meant to implement pbl_head_start_v1() in assembly
and select ARCH_HAS_PBL_HEAD_START_ASM. The C implementation added here
is weak and serves as reference. With COMPILE_TEST, PBL_HEAD_START_ASM
can be disabled to test it. It's naked where the compiler allows C in
naked functions, which GCC does for ARM32 and RISC-V, but clang doesn't.

Everything is versioned, so we can add a v2 alongside should the scheme
ever need to change incompatibly.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/Kconfig                   |  28 ++++++
 include/linux/compiler-clang.h |  21 +++++
 include/linux/compiler-gcc.h   |   3 +
 include/linux/compiler_types.h |  10 ++
 include/pbl/entry.h            | 158 +++++++++++++++++++++++++++++++
 pbl/Makefile                   |   1 +
 pbl/entry.c                    | 165 +++++++++++++++++++++++++++++++++
 7 files changed, 386 insertions(+)
 create mode 100644 include/pbl/entry.h
 create mode 100644 pbl/entry.c

diff --git a/arch/Kconfig b/arch/Kconfig
index d24cf525b029..f36eab86d891 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -95,6 +95,34 @@ config ARCH_HAS_DATA_ABORT_MASK_PBL
 config ARCH_HAS_ZERO_PAGE
 	bool
 
+config ARCH_HAS_NAKED
+	def_bool y
+	depends on (ARM && CPU_32) || RISCV
+	# clang allows only basic asm statements in naked functions
+	depends on !CC_IS_CLANG
+	help
+	  The compiler supports C in naked functions: it emits neither
+	  prologue nor epilogue, but may still spill to the stack.
+
+config ARCH_HAS_PBL_ENTRY
+	bool
+	help
+	  The architecture has PBL image heads for ENTRY_POINT() boards.
+
+config ARCH_HAS_PBL_HEAD_START_ASM
+	bool
+	help
+	  The architecture implements pbl_head_start_v1() in assembly.
+
+config PBL_HEAD_START_ASM
+	bool "Use the assembly PBL stage dispatch" if COMPILE_TEST
+	depends on ARCH_HAS_PBL_HEAD_START_ASM
+	default y
+	help
+	  Say N to use the C pbl_head_start_v1() in pbl/entry.c instead,
+	  which may spill to the stack before it is set up. Only useful
+	  for testing.
+
 config ARCH_HAS_MALLOC_SIZE
 	bool
 	help
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 681e347283b2..4b83885a9255 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -55,3 +55,24 @@
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
 #define __assume_aligned(a, ...)	\
 	__attribute__((__assume_aligned__(a, ## __VA_ARGS__)))
+
+/*
+ * Turn individual warnings and errors on and off locally, depending
+ * on version.
+ */
+#define __diag_str1(s)		#s
+#define __diag_str(s)		__diag_str1(s)
+#define __diag(s)		_Pragma(__diag_str(clang diagnostic s))
+
+#define __diag_clang(version, severity, s) \
+	__diag_clang_ ## version(__diag_clang_ ## severity s)
+
+/* Severity used in pragma directives */
+#define __diag_clang_ignore	ignored
+#define __diag_clang_warn	warning
+#define __diag_clang_error	error
+
+#define __diag_clang_13(s)	__diag(s)
+
+#define __diag_ignore_all(option, comment) \
+	__diag_clang(13, ignore, option)
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 2534386d040f..79d23ba62072 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -235,6 +235,9 @@
 #define __diag_GCC_8(s)
 #endif
 
+#define __diag_ignore_all(option, comment) \
+	__diag(__diag_GCC_ignore option)
+
 /*
  * Prior to 9.1, -Wno-alloc-size-larger-than (and therefore the "alloc_size"
  * attribute) do not work, and must be disabled.
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 0e49c6795409..7837f45efca2 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -313,6 +313,10 @@ struct ftrace_likely_data {
 #define __diag_GCC(version, severity, string)
 #endif
 
+#ifndef __diag_ignore_all
+#define __diag_ignore_all(option, comment)
+#endif
+
 #define __diag_push()	__diag(push)
 #define __diag_pop()	__diag(pop)
 
@@ -452,4 +456,10 @@ struct ftrace_likely_data {
 #define __prereloc \
 	notrace __no_sanitize_address __no_stack_protector
 
+/*
+ * Marks functions that may run before the stack is set up and thus must
+ * not spill. Documentation only, nothing enforces it.
+ */
+#define __unsafe_prestack
+
 #endif /* __LINUX_COMPILER_TYPES_H */
diff --git a/include/pbl/entry.h b/include/pbl/entry.h
new file mode 100644
index 000000000000..17056a3ab1ca
--- /dev/null
+++ b/include/pbl/entry.h
@@ -0,0 +1,158 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: 2026 Ahmad Fatoum */
+
+#ifndef __PBL_ENTRY_H_
+#define __PBL_ENTRY_H_
+
+#include <linux/bits.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <asm-generic/memory_layout.h>
+#include <pbl/soc-type.h>
+
+/* Special stacktop values, a real stack top is 16-byte aligned */
+#define PBL_STACKTOP_KEEP		0	/* leave SP as it is */
+#define PBL_STACKTOP_BEFORE_BAREBOX	1	/* grows down from the image start */
+#define PBL_STACKTOP_AFTER_BAREBOX	2	/* CONFIG_STACK_SIZE behind the image end */
+
+enum pbl_stage_idx {
+	PBL_STAGE_ROM,		/* pre-sram */
+	PBL_STAGE_OCRAM,	/* pre-ram */
+	PBL_STAGE_DRAM,		/* some ram */
+	PBL_STAGE_FINAL,	/* all ram */
+	PBL_STAGE_COUNT,	/* sentinel */
+};
+
+typedef void (*pbl_board_fn_t)(void);
+typedef enum pbl_stage_idx (*pbl_locate_pc_fn_t)(void);
+
+/*
+ * Only the callbacks of the stage the PBL was entered in are run.
+ *
+ * prereloc_cpu_init runs on the stage's stack, but unrelocated and before
+ * BSS is cleared, so it must be __prereloc and may not use globals.
+ * The other callbacks run relocated with BSS cleared.
+ */
+struct pbl_stage {
+	unsigned long stacktop;		/* stack top or PBL_STACKTOP_* */
+	unsigned long relocaddr;	/* 0: don't relocate to specific addr */
+
+	/*
+	 * Memory the stage runs from: barebox proper starts out with
+	 * mem_minsz, mem_maxsz (default: mem_minsz) is only used to find
+	 * the stage by PC.
+	 */
+	unsigned long mem_start;
+	unsigned long mem_minsz;
+	unsigned long mem_maxsz;
+
+	void *board_data;
+
+	pbl_board_fn_t prereloc_cpu_init;
+	pbl_board_fn_t soc_init;
+	void (*board_init)(unsigned long entry_data);
+	void (*soc_chainload)(void *board_data);
+};
+
+struct pbl_board_info {
+	unsigned int soc_type;		/* see pbl_set_soc_type() */
+
+	/* Called without a stack, so it must not spill */
+	pbl_locate_pc_fn_t assembly_locate_pc;
+
+	struct pbl_stage rom_stage;	/* PBL_STAGE_ROM */
+	struct pbl_stage first_stage;	/* PBL_STAGE_OCRAM */
+	struct pbl_stage second_stage;	/* PBL_STAGE_DRAM */
+};
+
+extern struct pbl_board_info __pbl_board_info;
+
+/* Always inlined, because it's called before relocation */
+static __always_inline struct pbl_stage *
+pbl_stage(struct pbl_board_info *pbi, int idx)
+{
+	switch (idx) {
+	case PBL_STAGE_ROM:
+		return &pbi->rom_stage;
+	case PBL_STAGE_OCRAM:
+		return &pbi->first_stage;
+	case PBL_STAGE_DRAM:
+		return &pbi->second_stage;
+	default:
+		return NULL;
+	}
+}
+
+struct pbl_stage *pbl_get_stage(void);
+
+void setup_c(void);
+
+#ifdef CONFIG_ARCH_HAS_NAKED
+#define __pbl_naked __naked
+#else
+#define __pbl_naked
+#endif
+
+/*
+ * pbl_head_start_v1 - stage dispatch the image head branches to
+ *
+ * Runs unrelocated and without a stack: determines the stage, switches
+ * to its stack, runs prereloc_cpu_init and continues in
+ * pbl_head_reloc_v1(). entry_data is a boot register the head passes on
+ * to board_init.
+ *
+ * The C implementation in pbl/entry.c is weak, so the architecture can
+ * override it with one in assembly, see CONFIG_PBL_HEAD_START_ASM.
+ */
+void __noreturn pbl_head_start_v1(unsigned long entry_data);
+
+/* Relocates, clears BSS and runs the remaining callbacks. Needs a stack */
+void __noreturn pbl_head_reloc_v1(unsigned long stage,
+				  unsigned long entry_data);
+
+/*
+ * ENTRY_POINT_HEAD - define entry point @name with image head @head
+ *
+ * Opens the board info, ENTRY_POINT_END closes it. The function only
+ * keeps head and board info from being garbage collected, but ARM's
+ * ENTRY_FUNCTION() will branch to it, so it may not use the stack.
+ */
+#define ENTRY_POINT_HEAD(name, head)					\
+	void name(ulong r0, ulong r1, ulong r2);			\
+	void __pbl_naked __unsafe_prestack				\
+		__section(.text_head_entry_##name) name			\
+			(ulong r0, ulong r1, ulong r2)			\
+	{								\
+		__keep_symbolref(head);					\
+	__diag_push();							\
+	__diag_ignore_all("-Woverride-init",				\
+			  "Allow board overrides for SoC defaults");	\
+		static __section(.pbl_board_info_##name)		\
+			struct pbl_board_info __board_info = {		\
+				/* unset fields are zero (static) */
+
+/* Closes the board info, but not the function, for ARM's ENTRY_FUNCTION() */
+#define ENTRY_POINT_CONTINUE						\
+			};						\
+		__diag_pop();						\
+		__keep_symbolref(__board_info);
+
+#define ENTRY_POINT_END							\
+	ENTRY_POINT_CONTINUE						\
+	}
+
+#define PBL_SOC_PASTE2(soc, field)	PBL_SOC_##soc##_##field
+#define PBL_SOC_PASTE(soc, field)	PBL_SOC_PASTE2(soc, field)
+
+/*
+ * ENTRY_POINT - define entry point @name for a board with SoC @soc
+ *
+ * Head and board info defaults come from PBL_SOC_<soc>_HEAD and
+ * PBL_SOC_<soc>_DEFAULTS. The board info fields that follow override
+ * the defaults.
+ */
+#define ENTRY_POINT(soc, name)				\
+	ENTRY_POINT_HEAD(name, PBL_SOC_PASTE(soc, HEAD))\
+	PBL_SOC_PASTE(soc, DEFAULTS),
+
+#endif
diff --git a/pbl/Makefile b/pbl/Makefile
index 5d7c9b06015d..3255feb9d645 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -4,6 +4,7 @@
 # only unsed by the pbl
 #
 pbl-$(CONFIG_PBL_CONSTRUCTORS) += ctors.o
+pbl-$(CONFIG_ARCH_HAS_PBL_ENTRY) += entry.o
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += malloc.o
diff --git a/pbl/entry.c b/pbl/entry.c
new file mode 100644
index 000000000000..1349e7c56a93
--- /dev/null
+++ b/pbl/entry.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2026 Ahmad Fatoum
+/*
+ * Stage dispatch for ENTRY_POINT() boards. pbl_head_start_v1() runs
+ * before there is a stack, but even naked, the compiler may spill, so
+ * the C version here is weak for architectures to override in assembly.
+ */
+
+#include <linux/types.h>
+#include <linux/align.h>
+#include <asm/reloc.h>
+#include <asm/sections.h>
+#include <asm-generic/registers.h>
+#include <barebox.h>
+#include <pbl/entry.h>
+#include <pbl/soc-type.h>
+#include <pbl/handoff-data.h>
+
+/*
+ * runtime_address() without the volatile, which would cost a stack slot.
+ * It's only needed across relocation, which doesn't happen this early.
+ */
+#define prestack_runtime_address(sym) \
+	((void *)RELOC_HIDE((char *)(sym), global_variable_offset()))
+
+static struct pbl_stage *current_stage;
+
+struct pbl_stage *pbl_get_stage(void)
+{
+	return current_stage;
+}
+
+static __always_inline __prereloc __unsafe_prestack bool
+stage_has_entry(const struct pbl_stage *stage)
+{
+	return stage->soc_init || stage->board_init || stage->soc_chainload;
+}
+
+static __always_inline __prereloc __unsafe_prestack int
+pbl_determine_stage_idx(struct pbl_board_info *pbi)
+{
+	int earliest_stage_idx = -1;
+	int stage_idx;
+
+	if (pbi->assembly_locate_pc) {
+		pbl_locate_pc_fn_t locate_pc;
+
+		locate_pc = (void *)((ulong)pbi->assembly_locate_pc +
+				     get_runtime_offset());
+		return locate_pc();
+	}
+
+	for (stage_idx = 0; stage_idx < PBL_STAGE_COUNT; stage_idx++) {
+		struct pbl_stage *stage = pbl_stage(pbi, stage_idx);
+
+		if (!stage)
+			continue;
+
+		if (stage_has_entry(stage) && earliest_stage_idx < 0)
+			earliest_stage_idx = stage_idx;
+
+		if (pc_inside(stage->mem_start,
+			      stage->mem_maxsz ?: stage->mem_minsz))
+			return stage_idx;
+	}
+
+	return earliest_stage_idx;
+}
+
+static void __noreturn pbl_head_cpu_init_v1(ulong stage_ul, ulong entry_data);
+static void __noreturn pbl_head_entry_v1(ulong entry_data);
+
+void __weak __pbl_naked __prereloc __unsafe_prestack
+pbl_head_start_v1(unsigned long entry_data)
+{
+	struct pbl_board_info *pbi =
+		prestack_runtime_address(&__pbl_board_info);
+	struct pbl_stage *stage;
+	ulong stage_ul;
+	ulong stacktop;
+
+	stage = pbl_stage(pbi, pbl_determine_stage_idx(pbi));
+	if (!stage)
+		__hang();
+
+	stage_ul = (ulong)stage;
+	stacktop = stage->stacktop;
+
+	if (stacktop == PBL_STACKTOP_BEFORE_BAREBOX)
+		stacktop = (ulong)prestack_runtime_address(__image_start);
+	else if (stacktop == PBL_STACKTOP_AFTER_BAREBOX)
+		stacktop = (ulong)prestack_runtime_address(__image_end) +
+			CONFIG_STACK_SIZE;
+
+	stacktop = ALIGN_DOWN(stacktop, 16);
+
+	if (stacktop)
+		call_with_stack(stacktop, pbl_head_cpu_init_v1,
+				stage_ul, entry_data);
+	else
+		pbl_head_cpu_init_v1(stage_ul, entry_data);
+}
+
+/* Runs on the stage's stack, but still unrelocated */
+static void __noreturn __prereloc
+pbl_head_cpu_init_v1(ulong stage_ul, ulong entry_data)
+{
+	struct pbl_stage *stage = (void *)stage_ul;
+
+	if (stage && stage->prereloc_cpu_init) {
+		pbl_board_fn_t cpu_init;
+
+		cpu_init = (void *)((ulong)stage->prereloc_cpu_init +
+				    get_runtime_offset());
+		cpu_init();
+	}
+
+	pbl_head_reloc_v1(stage_ul, entry_data);
+}
+
+void __prereloc noinline
+pbl_head_reloc_v1(ulong stage_ul, ulong entry_data)
+{
+	struct pbl_stage *stage = (void *)stage_ul;
+
+	if (!stage)
+		__hang();
+
+	if (stage->relocaddr)
+		relocate_to_adr_full(stage->relocaddr);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	pbl_head_entry_v1(entry_data);
+}
+
+/* noinline, so &__pbl_board_info isn't computed before relocation */
+static void noinline pbl_head_entry_v1(ulong entry_data)
+{
+	struct pbl_board_info *pbi = &__pbl_board_info;
+	struct pbl_stage *stage;
+	int stage_idx;
+
+	stage_idx = pbl_determine_stage_idx(pbi);
+	stage = pbl_stage(pbi, stage_idx);
+	if (!stage)
+		hang();
+
+	/* A multi-SoC image may still override this from its board init */
+	pbl_set_soc_type(pbi->soc_type);
+	pbl_handoff_soc_type();
+
+	current_stage = stage;
+
+	if (stage->soc_init)
+		stage->soc_init();
+	if (stage->board_init)
+		stage->board_init(entry_data);
+	if (stage->soc_chainload)
+		stage->soc_chainload(stage->board_data);
+
+	hang();
+}
-- 
2.47.3



