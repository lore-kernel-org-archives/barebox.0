Delivery-date: Tue, 27 Oct 2026 08:41:36 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLboN-003pJz-2l
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:41:36 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BCC1D202845
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:41:35 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I052c3gV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086895; a=rsa-sha256;
	cv=none;
	b=bw//f3eS6ccRyWAD2mvyNoYvSf9HdWYdFisNTf8AEjZWJUqIMsDZfkwSyxESyol7T3qv4t
	MMp1qKR1BzQENDXrnArnsUmFafB0hLyABBOQsyYAKmer1P06PX9j518BdaP4BtxLWEYHNk
	IwJNYY/Fm07HvzFixZhcwiFlmsK+zjJLQUG9MV9aVssONgClRYPOATvyFbtFch3mI/AWtT
	1ck7tgBdjcmrM/NRPpdcgeHjR5/yaVAcXsdooA14Ks6tZ+aBESEY6vD8XQTcmSr0/fc6mw
	ehP5WUV9ntI9D+ahqh8SzNgrsjd7gTU/wfDEaMe5zP8cGicOwcuzBMSUewop/A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I052c3gV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086895;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JGgf8IsjY73sulaAaOSXBjeevaBABbabC9495T5MZVI=;
	b=fEQf3pWV4tcWxNUJhwWNtYok+NtcBldd8mwT8mpqDOeAznTkEUWyqdpVEqxDXQqYMS8K6C
	74EE0HFY2RlULmHvBSD6aVD0jZr62hQN1DWiXh486E5bfp+QRHDluWD/YmtAqPzPTAIXs1
	wXVc0btkgWl1D2Wtm4DW/GLdyySw+oJMnMK5zTrHxnV9z7Eoh81bib4kNX75zDrSCMSiq9
	GujGMarDd+9soWu5zNiFISAXfZa+UGPDOfwtrJYBwIQEEEl/Eld4eay74sdtTRshC2Z4uV
	GYfD+HQZLNPQNxvQ4z/9r2kXMDdDbJLiAOcJlXO8iY5pJeAgm1tlfrsxxG+XTw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=JGgf8IsjY73sulaAaOSXBjeevaBABbabC9495T5MZVI=; b=I052c3gVQeEJc6
	yNJXq5Alo53OOoXqwEJT2RaVlp7QJ0Mxy0TDQkPklIOYoz3T3Jmz4or+anEQigSTwixj49dfeNnm4
	tfKi0AKSe/vq6Ykz+hdmKw7hKWmTyZ9m02Xbig7A2V8US/AiAsc4fvOY+nnIOLZQ+XvwahuRRBtjN
	IiouxexfKZwopHj7wFTNS5vFHOsOl+SVnRysy5dfJPXSJaHDsBk0wd91+eF57dJTrolkBSwd+rJQE
	5MuGDnZdj3Ayy+r4Uzy6sJMIoAmheeDQfuAGtQ0Wrv0cqMsVIL66JHACUiFdYzd+u6csMWagP+igh
	GILGTKJFq365Wz0PAUHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnG-00000003uzE-1evJ;
	Tue, 27 Oct 2026 07:40:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003utv-1MhM
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn6-0003zV-6j; Tue, 27 Oct 2026 08:40:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 02/17] RISC-V: add call_with_stack() helper
Date: Tue, 27 Oct 2026 08:24:35 +0100
Message-ID: <20261027074014.3280396-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_416101_7C2F808C 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Switching stacks in C requires inline assembly inside a naked
    function and even then, the compiler is free to keep using the old stack
   pointer. Let's add call_with_stack() instead, which takes the new stack top,
    a function and two arguments for it. Everything is passed in registers, so
    it's safe to call before a stack has been set up, as the [...] 
 
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
X-Rspamd-Queue-Id: BCC1D202845
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
X-Stat-Signature: dfxnegwnp7waq8mecpnodcxc99axrnr8

Switching stacks in C requires inline assembly inside a naked function
and even then, the compiler is free to keep using the old stack pointer.

Let's add call_with_stack() instead, which takes the new stack top, a
function and two arguments for it. Everything is passed in registers, so
it's safe to call before a stack has been set up, as the upcoming PBL
stage dispatch will do.

The prototype goes into asm-generic/registers.h, as other architectures
will implement the same helper.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/lib/Makefile          |  1 +
 arch/riscv/lib/call_with_stack.S | 12 ++++++++++++
 include/asm-generic/registers.h  | 10 ++++++++++
 3 files changed, 23 insertions(+)
 create mode 100644 arch/riscv/lib/call_with_stack.S

diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 693248080070..13c7c34a487c 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -4,6 +4,7 @@ extra-y += barebox.lds
 
 obj-y += dtb.o
 obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
+obj-pbl-y += call_with_stack.o
 obj-$(CONFIG_ARCH_HAS_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
 obj-$(CONFIG_RISCV_SBI) += sbi.o
diff --git a/arch/riscv/lib/call_with_stack.S b/arch/riscv/lib/call_with_stack.S
new file mode 100644
index 000000000000..f3093d062a59
--- /dev/null
+++ b/arch/riscv/lib/call_with_stack.S
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/linkage.h>
+
+.section .text.call_with_stack
+ENTRY(call_with_stack)
+	mv	t1, a1
+	mv	sp, a0
+	mv	a0, a2
+	mv	a1, a3
+	jr	t1
+ENDPROC(call_with_stack)
diff --git a/include/asm-generic/registers.h b/include/asm-generic/registers.h
index 8ce28f74e1db..ec85476019c7 100644
--- a/include/asm-generic/registers.h
+++ b/include/asm-generic/registers.h
@@ -20,4 +20,14 @@ static __always_inline bool pc_inside(unsigned long start, unsigned long size)
 	return pc - start < size;
 }
 
+/*
+ * call_with_stack - switch to the stack ending at stack_top and call fn
+ *
+ * stack_top must be aligned as the architecture requires and fn must not
+ * return. No memory is accessed, so there needn't be a stack yet.
+ */
+void __noreturn call_with_stack(unsigned long stack_top,
+				void (*fn)(unsigned long, unsigned long),
+				unsigned long arg0, unsigned long arg1);
+
 #endif
-- 
2.47.3



