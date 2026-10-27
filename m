Delivery-date: Tue, 27 Oct 2026 08:50:55 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbxP-003pbw-0y
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:50:55 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C801D201BFB
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:50:54 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HVpGyZn2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087455; a=rsa-sha256;
	cv=none;
	b=CfR5x+NOKZmG4kTP1VWUpZy17Bc6+8L2IZ3s4J+bJQ08LW9YlipkxqV6NZQ5CpVMKWpijg
	Zax2UswKb7pfKrysirojJ+Amqf6REh6oh9s6ukmhexM4C+FxS/Z0wLkGar8BXnfu+MwBCY
	5OvZPAxqa/iP6/lwHd8zkrrCMVwIhsQPwJ7IVKVp1ua49NqHzBAnwYHI5Ux6iYwA6ziksq
	3AnHnX6FUTgUu30Iz9i7RrXEngqm78V8YbyMTAR4bPv5Psc1+E8pmMi1XwIulXm+ryQtOG
	Klti3x053pYA5C8TOlw0LVJvkc1cxuya9Tte1yQdDodHW9N83tDvuFU0zIfifQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HVpGyZn2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087455;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MClszLI+b4sYkIDOSUzHTQw69eO0ZJ+soRvEAJ8Gn9w=;
	b=RFLNNsL7AojOJU2xifd0JiA30vR0WLGIkUVvyG7svkhevHaiapULMnVfsXFkKfbzbtONqG
	Fia5OJgdQpw0e6HDj0BUtA2iSOlsuhudENnbBR7/Ub8LCkQL/tGvynwRiNihlHYZRMWY6h
	J46Y0nFh99V4ECSWjLAYtukX7o7qwz1paYNi9VIoaN6ohhmZVn/2GIWYHsPts9kjIeyk0n
	7UvxSoZK3CRtqMkbbJncOSWLgwQn5HaoXeGFAx63VuKL1vczhaEpWVUVIqlsrwZnxlX1tJ
	WnrunI7G58H3wm4oqvaqyEKPJJaZPzSEOU76iwYsqu9i4mPxS5U7/sX3Asmuiw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=MClszLI+b4sYkIDOSUzHTQw69eO0ZJ+soRvEAJ8Gn9w=; b=HVpGyZn2Dox7uN
	JeAnEBZc71CNl0CwPT8Xf/mDkOg29NQ0HZKNnztQ+eQ9O9yzJp1rdDP2T/9j2I+rFuim1SP/y0Z29
	kblCNxXoX7AIZVr8X/3DUabixdSF9+bt2jAjG820A7oDgrGZNyE9fecACQ22CfHT9m37M6dRWY0MU
	SkVihrO2ym+e18zucUuYlmfg+Pz6F3EgQ9Txnq9GiXLMQvW4XXIUm3RslGFMEPvA3ULPBqwKMyU26
	4DHkop249hyDf05Uy7OH85yyOgHIefj2M5LUt490On9AbN31C5QIdfhE3QE1rWSsyvnzinjwDOy37
	jgU7wMgKESENJ3LiNflg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnL-00000003v5a-1v6X;
	Tue, 27 Oct 2026 07:40:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003uu3-3oJV
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn8-0003zV-0Z; Tue, 27 Oct 2026 08:40:18 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 08/17] RISC-V: add PBL heads for the board info stage dispatch
Date: Tue, 27 Oct 2026 08:24:41 +0100
Message-ID: <20261027074014.3280396-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004021_250883_759F006B 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Unlike on ARM, the privilege mode is part of the RISC-V boot
    protocol and even the cache maintenance during relocation depends on it,
   so the head needs to know which mode it was started in. Let's add two heads:
    one for images that firmware enters in supervisor mode like a Linux kernel,
    with the hart ID in a0 and the device tree in a1, and one for images entered
    in machine mode without a [...] 
 
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
X-Rspamd-Queue-Id: C801D201BFB
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 4wmpa3rxb1nor73o5k3wt8ue9rdm5nq5

Unlike on ARM, the privilege mode is part of the RISC-V boot protocol and
even the cache maintenance during relocation depends on it, so the head
needs to know which mode it was started in.

Let's add two heads: one for images that firmware enters in supervisor
mode like a Linux kernel, with the hart ID in a0 and the device tree in
a1, and one for images entered in machine mode without a boot protocol,
like Erizo and LiteX. Both lay out the same header as
__barebox_riscv_head(), so the image tools keep working, and branch to
pbl_head_start_v1(), which RISC-V implements in assembly.

Boards whose stage describes the memory for barebox proper can use the
new pbl_stage_barebox_entry() as chainload callback.

Assisted-by: Claude:fable-5.1
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/Kconfig                     |   2 +
 arch/riscv/boot/Makefile               |   2 +-
 arch/riscv/boot/entry.c                |  16 ++
 arch/riscv/boot/head.S                 | 198 +++++++++++++++++++++++++
 arch/riscv/include/asm/barebox-riscv.h |   6 +
 arch/riscv/lib/asm-offsets.c           |  27 ++++
 arch/riscv/lib/pbl.lds.S               |  13 +-
 7 files changed, 262 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/boot/entry.c
 create mode 100644 arch/riscv/boot/head.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 40a79b6834ff..0041269123e3 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -20,6 +20,8 @@ config RISCV
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
 	select PBL_CONSTRUCTORS
+	select ARCH_HAS_PBL_ENTRY
+	select ARCH_HAS_PBL_HEAD_START_ASM
 	select PBL_IMAGE_ELF
 	select HAVE_ARCH_BOARD_GENERIC_DT
 	select HAVE_ARCH_BOOTM_OFTREE
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 2cd6f098d5ef..d98adf7f724b 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-pbl-y += entry_ll.o uncompress.o
+pbl-y += head.o entry.o entry_ll.o uncompress.o
 pbl-y += nmon_entry.o
 pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o
diff --git a/arch/riscv/boot/entry.c b/arch/riscv/boot/entry.c
new file mode 100644
index 000000000000..11b66ab48b63
--- /dev/null
+++ b/arch/riscv/boot/entry.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <pbl/entry.h>
+#include <asm/barebox-riscv.h>
+
+/*
+ * soc_chainload callback for boards whose stage describes the memory for
+ * barebox proper. The head has already recorded the mode in the flags.
+ */
+void __noreturn pbl_stage_barebox_entry(void *boarddata)
+{
+	struct pbl_stage *stage = pbl_get_stage();
+
+	barebox_riscv_entry(stage->mem_start, stage->mem_minsz, boarddata,
+			    riscv_get_flags());
+}
diff --git a/arch/riscv/boot/head.S b/arch/riscv/boot/head.S
new file mode 100644
index 000000000000..a205965e33ad
--- /dev/null
+++ b/arch/riscv/boot/head.S
@@ -0,0 +1,198 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <linux/linkage.h>
+#include <asm/asm.h>
+#include <asm/asm-offsets.h>
+
+/*
+ * PBL image heads for ENTRY_POINT() boards. The privilege mode is part of
+ * the RISC-V boot protocol and needed as early as the cache maintenance
+ * during relocation, so there is a head per mode, which records it like
+ * riscv_set_flags() would.
+ */
+
+/* Linker will point this at the selected board's struct pbl_board_info */
+.globl __pbl_board_info
+
+/*
+ * Same header as __barebox_riscv_head(), so the image tools keep working.
+ * Execution continues at \setup.
+ */
+.macro	pbl_image_header setup
+	/* Relaxation and compressed instructions would shift the fields */
+	.option push
+	.option norelax
+	.option norvc
+	nop				/* code0 */
+	j	\setup			/* code1 */
+	.balign	8
+	.dword	0			/* Image load offset from start of RAM */
+	.dword	_barebox_image_size	/* Effective Image size */
+	.dword	0			/* Kernel flags */
+	.word	0			/* version */
+	.word	0			/* reserved */
+	.dword	0			/* reserved */
+	.asciz	"barebox"		/* magic 1 */
+	.balign	8
+	.ascii	"RSCV"			/* magic 2 */
+	.word	0			/* reserved (PE-COFF offset) */
+	.option pop
+.endm
+
+/*
+ * Head for images entered like a Linux kernel: supervisor mode, hart ID
+ * in a0 for tp, where riscv_hartid() expects it, and the device tree in
+ * a1, which becomes entry_data.
+ */
+.section .text_head_prologue_v1_supervisor, "ax"
+ENTRY(__barebox_pbl_head_v1_supervisor)
+	pbl_image_header .Lsupervisor_setup
+
+.Lsupervisor_setup:
+	li	fp, 0
+
+	li	t0, RISCV_S_MODE_ASM
+	csrw	sscratch, t0
+	mv	tp, a0
+	mv	a0, a1			/* entry_data = device tree */
+	tail	pbl_head_start_v1
+ENDPROC(__barebox_pbl_head_v1_supervisor)
+
+/*
+ * Head for images entered in machine mode without a boot protocol, e.g.
+ * out of reset. a0 is passed on as entry_data.
+ */
+.section .text_head_prologue_v1_machine, "ax"
+ENTRY(__barebox_pbl_head_v1_machine)
+	pbl_image_header .Lmachine_setup
+
+.Lmachine_setup:
+	li	fp, 0
+
+	li	t0, RISCV_M_MODE_ASM
+	csrw	mscratch, t0
+	tail	pbl_head_start_v1
+ENDPROC(__barebox_pbl_head_v1_machine)
+
+/*
+ * asm_pbl_head_start_v1 - assembly version of pbl_head_start_v1()
+ *
+ *   a0 = entry_data on entry, then struct pbl_board_info *
+ *   a1 = struct pbl_stage * (may be NULL)
+ *   s1 = entry_data
+ *   s2 = runtime offset
+ *   s3 = struct pbl_stage * across the prereloc_cpu_init() call
+ *
+ * s1-s3 are callee-saved, so they survive the callbacks.
+ */
+.section .text.asm_pbl_head_start_v1, "ax"
+ENTRY(asm_pbl_head_start_v1)
+	mv	s1, a0
+
+	/* Board info pointers need the runtime offset until relocation ran */
+	call	get_runtime_offset
+	mv	s2, a0
+
+	lla	a0, __pbl_board_info
+
+	/* Stage determination, mirroring pbl_determine_stage_idx() */
+	REG_L	t0, PBI_LOCATE_PC(a0)
+	beqz	t0, .Lscan
+
+	/* Must be a leaf function: there may be no stack yet */
+	add	t0, t0, s2
+	jalr	t0			/* returns stage index in a0 */
+	mv	t1, a0			/* idx */
+	lla	a0, __pbl_board_info
+	li	a1, 0			/* pbl_stage(): NULL by default */
+
+	/*
+	 * pbl_stage_case - one case of the pbl_stage() switch; the cases
+	 * are mutually exclusive, so each falls through to the next.
+	 */
+	.macro	pbl_stage_case idx, offs
+	li	t2, \idx
+	bne	t1, t2, .Lnext_case\@
+	addi	a1, a0, \offs
+.Lnext_case\@:
+	.endm
+
+	pbl_stage_case	PBL_STAGE_ROM_ASM, PBI_ROM_STAGE
+	pbl_stage_case	PBL_STAGE_OCRAM_ASM, PBI_FIRST_STAGE
+	pbl_stage_case	PBL_STAGE_DRAM_ASM, PBI_SECOND_STAGE
+	j	.Lhave_stage		/* a1 stays NULL for other indices */
+
+.Lscan:
+	li	a1, 0			/* earliest stage with entry */
+	auipc	t3, 0			/* pc, as get_pc() does */
+
+	/*
+	 * pbl_check_stage - one pbl_determine_stage_idx() iteration for the
+	 * stage at byte offset \offs
+	 */
+	.macro	pbl_check_stage offs
+	addi	t0, a0, \offs
+	/* stage_has_entry()? */
+	REG_L	t4, PBS_SOC_INIT(t0)
+	REG_L	t5, PBS_BOARD_INIT(t0)
+	or	t4, t4, t5
+	REG_L	t5, PBS_SOC_CHAINLOAD(t0)
+	or	t4, t4, t5
+	beqz	t4, .Lcheck_pc\@
+	bnez	a1, .Lcheck_pc\@
+	mv	a1, t0			/* earliest ?: stage */
+.Lcheck_pc\@:
+	/* pc_inside(mem_start, mem_maxsz ?: mem_minsz)? */
+	REG_L	t4, PBS_MEM_START(t0)
+	REG_L	t5, PBS_MEM_MAXSZ(t0)
+	bnez	t5, .Lhave_memsz\@
+	REG_L	t5, PBS_MEM_MINSZ(t0)
+.Lhave_memsz\@:
+	sub	t4, t3, t4
+	bltu	t4, t5, .Lfound
+	.endm
+
+	pbl_check_stage	PBI_ROM_STAGE
+	pbl_check_stage	PBI_FIRST_STAGE
+	pbl_check_stage	PBI_SECOND_STAGE
+	j	.Lhave_stage		/* stage = earliest (a1) */
+.Lfound:
+	mv	a1, t0
+
+.Lhave_stage:
+	/* Misconfigured board info; there may be no stack to call with */
+.Lno_stage:
+	beqz	a1, .Lno_stage
+
+	/* stage->stacktop is a stack top or a PBL_STACKTOP_* value */
+	REG_L	t0, PBS_STACKTOP(a1)
+	li	t1, PBS_STACKTOP_BEFORE_BAREBOX
+	bne	t0, t1, .Lnot_before_barebox
+	lla	t0, __image_start
+	j	.Lhave_stacktop
+.Lnot_before_barebox:
+	li	t1, PBS_STACKTOP_AFTER_BAREBOX
+	bne	t0, t1, .Lhave_stacktop
+	lla	t0, __image_end
+	li	t1, CONFIG_STACK_SIZE
+	add	t0, t0, t1
+.Lhave_stacktop:
+	andi	t0, t0, -16		/* ALIGN_DOWN(stacktop, 16) */
+	beqz	t0, .Lstack_set
+	mv	sp, t0
+.Lstack_set:
+	/* CPU init callback, unrelocated like assembly_locate_pc() above */
+	REG_L	t0, PBS_CPU_INIT(a1)
+	beqz	t0, .Lcpu_init_done
+	add	t0, t0, s2
+	mv	s3, a1
+	jalr	t0
+	mv	a1, s3
+.Lcpu_init_done:
+	mv	a0, a1
+	mv	a1, s1
+	tail	pbl_head_reloc_v1	/* (a0 = stage, a1 = entry_data) */
+ENDPROC(asm_pbl_head_start_v1)
+
+#ifdef CONFIG_PBL_HEAD_START_ASM
+SYM_FUNC_ALIAS(pbl_head_start_v1, asm_pbl_head_start_v1)
+#endif
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index 4a7726ddc508..c7ca339607c4 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -33,6 +33,12 @@
 	barebox_riscv_entry(membase, memsize, boarddata, RISCV_S_MODE); \
 } while (0)
 
+/* PBL image heads for ENTRY_POINT_HEAD(), see arch/riscv/boot/head.S */
+extern char __barebox_pbl_head_v1_supervisor[];
+extern char __barebox_pbl_head_v1_machine[];
+
+void __noreturn pbl_stage_barebox_entry(void *boarddata);
+
 static inline unsigned long riscv_mem_stack_top(unsigned long membase,
 						unsigned long endmem)
 {
diff --git a/arch/riscv/lib/asm-offsets.c b/arch/riscv/lib/asm-offsets.c
index 48960e58a6bc..a7a092cb5d72 100644
--- a/arch/riscv/lib/asm-offsets.c
+++ b/arch/riscv/lib/asm-offsets.c
@@ -9,6 +9,8 @@
 #include <linux/kbuild.h>
 #include <linux/kernel.h>
 #include <asm/ptrace.h>
+#include <asm/system.h>
+#include <pbl/entry.h>
 
 #define STACK_ALIGN		16
 
@@ -56,5 +58,30 @@ int main(void)
 	 * We allocate a pt_regs on the stack. This ensures the alignment is sane.
 	 */
 	DEFINE(PT_SIZE_ON_STACK, ALIGN(sizeof(struct pt_regs), STACK_ALIGN));
+	BLANK();
+	COMMENT("struct pbl_board_info offsets");
+	OFFSET(PBI_LOCATE_PC,		pbl_board_info, assembly_locate_pc);
+	OFFSET(PBI_ROM_STAGE,		pbl_board_info, rom_stage);
+	OFFSET(PBI_FIRST_STAGE,		pbl_board_info, first_stage);
+	OFFSET(PBI_SECOND_STAGE,	pbl_board_info, second_stage);
+	DEFINE(PBI_SIZEOF,		sizeof(struct pbl_board_info));
+	BLANK();
+	COMMENT("struct pbl_stage offsets");
+	OFFSET(PBS_STACKTOP,		pbl_stage, stacktop);
+	OFFSET(PBS_MEM_START,		pbl_stage, mem_start);
+	OFFSET(PBS_MEM_MINSZ,		pbl_stage, mem_minsz);
+	OFFSET(PBS_MEM_MAXSZ,		pbl_stage, mem_maxsz);
+	OFFSET(PBS_CPU_INIT,		pbl_stage, prereloc_cpu_init);
+	OFFSET(PBS_SOC_INIT,		pbl_stage, soc_init);
+	OFFSET(PBS_BOARD_INIT,		pbl_stage, board_init);
+	OFFSET(PBS_SOC_CHAINLOAD,	pbl_stage, soc_chainload);
+	BLANK();
+	DEFINE(PBL_STAGE_ROM_ASM,	PBL_STAGE_ROM);
+	DEFINE(PBL_STAGE_OCRAM_ASM,	PBL_STAGE_OCRAM);
+	DEFINE(PBL_STAGE_DRAM_ASM,	PBL_STAGE_DRAM);
+	DEFINE(PBS_STACKTOP_BEFORE_BAREBOX,	PBL_STACKTOP_BEFORE_BAREBOX);
+	DEFINE(PBS_STACKTOP_AFTER_BAREBOX,	PBL_STACKTOP_AFTER_BAREBOX);
+	DEFINE(RISCV_S_MODE_ASM,	RISCV_S_MODE);
+	DEFINE(RISCV_M_MODE_ASM,	RISCV_M_MODE);
 	return 0;
 }
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index e580ec06f32c..84c4917e67ad 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -5,6 +5,7 @@
 #include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 #include <asm-generic/pointer.h>
+#include <asm/asm-offsets.h>
 
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
@@ -18,6 +19,9 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
+		/* Custom image headers go before the common heads */
+		*(.text_image_header*)
+		*(.text_head_prologue*)
 		*(.text_head_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
@@ -28,8 +32,15 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 	BAREBOX_PBL_SIZE
 
-	. = ALIGN(4);
+	. = ALIGN(ASM_SZPTR);
 	__start_rodata = .;
+	__pbl_board_info = .;
+	.rodata.pbl_board_info : {
+		*(.pbl_board_info_*)
+	}
+	ASSERT(. - __pbl_board_info <= PBI_SIZEOF, "Only one PBL per image allowed")
+
+	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
 	. = ALIGN(ASM_SZPTR);
-- 
2.47.3



