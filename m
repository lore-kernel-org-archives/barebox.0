Delivery-date: Tue, 27 Oct 2026 08:45:19 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbry-003pTt-2N
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:45:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 98B5D202845
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:45:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kZtQmDYZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087118; a=rsa-sha256;
	cv=none;
	b=dvnGp4iwZZeF3QtaGZ64Rv6atD2s667s9rUpvXR2r+JhJfqc+100we5G0f+kxiszwwmSR/
	zjkApzIkYLLA+GDyCVTcSZ3ZNljVP0wa+58VVi4Ft2uFNRO8W5m/nhpJYutzzF8HoDwylz
	EIJ8Y/SyzEH3C5NrTi3z1oNVl7QGtx3dm1MOrEkibLslwE89C2aXCgclKB+XqCF+cpV6Gx
	vCG6vxSV+Evd2+X1M1v/MthogIFfVS1fNdQIlyp6pNnZj0tEGEiwspcgDsATFS0EO1gr2P
	DeMlnqclof8NAa8LB75FQv+NZdPmLSFxUoLD17kgNnNOqcxMlWpPrFqzyFhyLA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kZtQmDYZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087118;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=nqyyJeMxbSdDf8xn28Vft8QYhKMgFXtWYfU+B17k0pk=;
	b=BeOjmFZHbmemYIJZxl02E+IwTZX9AjWyUVLqm/ewZDBNbIDGYyRovFd8/VsTb5ejy82wbk
	T83sVlvn80VirnBNvt2xyz9DUmSodhMDWCgfc0Mq4STzH4tyDhf3Gb4BtH4IfT3u2c3LNZ
	w26N9IkViaBILC+56n6eRFnC8eLYQNMJkkgyR2baUsF63PSQMmoegYLdzyA+x02e+GGfzi
	mrkshdNUWFDhDFkxN50sdktsUc/do70WZspshOTbrmajvonVxfota+Y1hegS3WSZX774Dy
	74N1PUxA7c6RnAYjdEDUtHPQmT4koliY4q4txfmKHGQt3a8io+NaI4LVn6u+cQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=nqyyJeMxbSdDf8xn28Vft8QYhKMgFXtWYfU+B17k0pk=; b=kZtQmDYZ54h0yV
	GYB2iZAMZq2HqY3edXUGl7GI8g1K31Ye6FR/28ayjZVoNUETfNKp6rxTsnFhRqgThyBjS3UgvZWvJ
	inEIOpAvVatrELLMOnFHCtnU5qP6+wKl24NQVwhv/ROmwFY4NP97NuxPhuzAkgeqAG59cPl42PWX/
	gI7goHFcV/ZQZ6IDEoqNkqpBL/VVriPNvxTuT82FtDg2RVLrt0oE9mDrnSE0rtaDFwcrdG9+rPRSz
	0GQgj8afmd8KlneZxhS3/atA+gdAsKMexBAOHBMmW+wOOMiQA7Ggru3f/NM68OtU3hbMFA1WRJibY
	YTEgx762+hXLaeHOF3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnM-00000003v71-0ICH;
	Tue, 27 Oct 2026 07:40:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003uu2-2N93
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn7-0003zV-Nk; Tue, 27 Oct 2026 08:40:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 07/17] RISC-V: make barebox_riscv_entry() non-naked
Date: Tue, 27 Oct 2026 08:24:40 +0100
Message-ID: <20261027074014.3280396-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_606555_D196E300 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox_riscv_entry() is a naked function that switches the
    stack with inline assembly and then continues in C. GCC only supports basic
    asm in naked functions and clang rejects anything else outright. 
 
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
X-Rspamd-Queue-Id: 98B5D202845
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: goupbbzpm3afhtanfncgyyz8ojwr7urr

barebox_riscv_entry() is a naked function that switches the stack with
inline assembly and then continues in C. GCC only supports basic asm in
naked functions and clang rejects anything else outright.

Let's move the stack switch into an assembly __barebox_riscv_entry() like
on ARM. barebox_riscv_entry() becomes an always inlined function, so the
naked ENTRY_FUNCTION()s, which may run without a stack, can still call it.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boot/Makefile               |  2 +-
 arch/riscv/boot/entry.c                | 31 --------------------------
 arch/riscv/boot/entry_ll.S             | 15 +++++++++++++
 arch/riscv/include/asm/barebox-riscv.h | 30 ++++++++++++++++++++++---
 4 files changed, 43 insertions(+), 35 deletions(-)
 delete mode 100644 arch/riscv/boot/entry.c
 create mode 100644 arch/riscv/boot/entry_ll.S

diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 936f6e2e0391..2cd6f098d5ef 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-pbl-y += entry.o uncompress.o
+pbl-y += entry_ll.o uncompress.o
 pbl-y += nmon_entry.o
 pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o
diff --git a/arch/riscv/boot/entry.c b/arch/riscv/boot/entry.c
deleted file mode 100644
index f5a536fc78a9..000000000000
--- a/arch/riscv/boot/entry.c
+++ /dev/null
@@ -1,31 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#include <types.h>
-
-#include <asm/barebox-riscv.h>
-
-#include "entry.h"
-#include <debug_ll.h>
-
-/*
- * Main RISC-V entry point. Call this with the memory region you can
- * spare for barebox. This doesn't necessarily have to be the full
- * SDRAM. The currently running binary can be inside or outside of
- * this region. The PBL can be running inside or outside of this
- * region.
- *
- * -> membase + memsize
- *   STACK_SIZE              - stack
- *   128KiB                  - early memory space
- * -> maximum end of barebox binary
- */
-
-void __noreturn __naked barebox_riscv_entry(unsigned long membase,
-					    unsigned long memsize, void *boarddata,
-					    unsigned flags)
-{
-	unsigned long stack_top = riscv_mem_stack_top(membase, membase + memsize);
-	asm volatile ("move sp, %0" : : "r"(stack_top));
-	riscv_set_flags(flags);
-	barebox_pbl_start(membase, memsize, boarddata);
-}
-
diff --git a/arch/riscv/boot/entry_ll.S b/arch/riscv/boot/entry_ll.S
new file mode 100644
index 000000000000..3611d72a3a78
--- /dev/null
+++ b/arch/riscv/boot/entry_ll.S
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/linkage.h>
+
+/*
+ * a0: memory base
+ * a1: memory size
+ * a2: board data
+ * a3: new value for SP
+ */
+.section .text.__barebox_riscv_entry
+ENTRY(__barebox_riscv_entry)
+	mv	sp, a3
+	tail	barebox_pbl_start
+ENDPROC(__barebox_riscv_entry)
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index 9fdffb213e8c..4a7726ddc508 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -25,9 +25,6 @@
 #include <asm/reloc.h>
 #include <pbl/handoff-data.h>
 
-void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
-					    void *boarddata, unsigned int flags);
-
 #define barebox_riscv_machine_entry(membase, memsize, boarddata) \
 	barebox_riscv_entry(membase, memsize, boarddata, RISCV_M_MODE)
 
@@ -82,6 +79,33 @@ static inline unsigned long riscv_mem_barebox_image(unsigned long membase,
 	return ALIGN_DOWN(endmem - size, SZ_1M);
 }
 
+void __noreturn __barebox_riscv_entry(unsigned long membase,
+				      unsigned long memsize, void *boarddata,
+				      unsigned long sp);
+
+/*
+ * Main RISC-V entry point. Call this with the memory region you can
+ * spare for barebox. This doesn't necessarily have to be the full
+ * SDRAM. The currently running binary can be inside or outside of
+ * this region. The PBL can be running inside or outside of this
+ * region.
+ *
+ * -> membase + memsize
+ *   STACK_SIZE              - stack
+ *   128KiB                  - early memory space
+ * -> maximum end of barebox binary
+ *
+ * Inline, so naked ENTRY_FUNCTION()s can call it without a stack.
+ */
+static __always_inline void __noreturn
+barebox_riscv_entry(unsigned long membase, unsigned long memsize,
+		    void *boarddata, unsigned int flags)
+{
+	riscv_set_flags(flags);
+	__barebox_riscv_entry(membase, memsize, boarddata,
+			      riscv_mem_stack_top(membase, membase + memsize));
+}
+
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)                          \
 	void name (ulong r0, ulong r1, ulong r2);                       \
 	static void __##name(ulong, ulong, ulong);                      \
-- 
2.47.3



