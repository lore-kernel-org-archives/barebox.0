Delivery-date: Mon, 11 Sep 2023 14:57:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTu-00BViH-Or
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:57:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTs-0007TG-PA
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:57:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/Q+YjclPqtgfK80w9x1q8hbaMKvgRBWwGMpDMA98BE=; b=dQk4FZe7G2pwlTjy6cXstsVskn
	dN0wr865fUrF0/KgHIEHLQmi4sDMNSHL7DOq7B1h9P8h+vJWYoXpllgv6dvbu10DOFe/HttGn7Iit
	ENc1V8QDYwn+v2j5DjKUmrgcyyldYbOP09ZpNSkubI3+Db7eKdYHkkwctQX2n5ybkmRFijkrAQB7g
	r9YUkYuoHaG0/qGTHSPyqHEX8iH/uv+T3gZbGLy0TFv2Z8jr4e4cJHBViuy7Kjzd1JdqlUFENYx7/
	sd+mfatS1dgsdcJ1gTK9YxJuVnzcsfzO2Oo6836LKoP74apx3618Dpnkx01nxyq3rV2b1WrLIC8VO
	U+DHsVUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSs-000XDM-13;
	Mon, 11 Sep 2023 12:56:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSl-000X9Z-2M
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-0007A8-KX; Mon, 11 Sep 2023 14:56:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-005YTc-7k; Mon, 11 Sep 2023 14:56:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSj-00Bg1K-1t;
	Mon, 11 Sep 2023 14:56:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:56:16 +0200
Message-Id: <20230911125619.2782229-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
References: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_055623_771294_B1AAD5A3 
X-CRM114-Status: GOOD (  15.91  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: unwind: don't allocate while printing stack trace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Calling dump_stack() in response to failing assertions can be useful to
pinpoint where things started going awry. This is also done in TLSF
code, but dump_stack actually calls malloc, because it uses the logging
functions instead of printing directly to console.

To avoid circular dependencies and dump_stack() falsifying debugging
results, let's use eprintf instead of pr_*: That way, the output still
makes it to stderr, but it's no longer logged. This also removes the
orange WARNING: prefix, but that can be added back if needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/unwind.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/lib32/unwind.c b/arch/arm/lib32/unwind.c
index 6f73cb1b7300..c355bba1b7a4 100644
--- a/arch/arm/lib32/unwind.c
+++ b/arch/arm/lib32/unwind.c
@@ -65,9 +65,9 @@ static void dump_backtrace_entry(unsigned long where, unsigned long from,
 				 unsigned long frame)
 {
 #ifdef CONFIG_KALLSYMS
-	pr_warning("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+	eprintf("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
 #else
-	pr_warning("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+	eprintf("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
 #endif
 }
 
@@ -124,7 +124,7 @@ static const struct unwind_idx *search_index(unsigned long addr,
 	if (likely(start->addr_offset <= addr_prel31))
 		return start;
 	else {
-		pr_warning("unwind: Unknown symbol address %08lx\n", addr);
+		eprintf("unwind: Unknown symbol address %08lx\n", addr);
 		return NULL;
 	}
 }
@@ -177,7 +177,7 @@ static unsigned long unwind_get_byte(struct unwind_ctrl_block *ctrl)
 	unsigned long ret;
 
 	if (ctrl->entries <= 0) {
-		pr_warning("unwind: Corrupt unwind table\n");
+		eprintf("unwind: Corrupt unwind table\n");
 		return 0;
 	}
 
@@ -214,7 +214,7 @@ static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
 		insn = (insn << 8) | unwind_get_byte(ctrl);
 		mask = insn & 0x0fff;
 		if (mask == 0) {
-			pr_warning("unwind: 'Refuse to unwind' instruction %04lx\n",
+			eprintf("unwind: 'Refuse to unwind' instruction %04lx\n",
 				   insn);
 			return -URC_FAILURE;
 		}
@@ -253,7 +253,7 @@ static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
 		int reg = 0;
 
 		if (mask == 0 || mask & 0xf0) {
-			pr_warning("unwind: Spare encoding %04lx\n",
+			eprintf("unwind: Spare encoding %04lx\n",
 			       (insn << 8) | mask);
 			return -URC_FAILURE;
 		}
@@ -271,7 +271,7 @@ static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
 
 		ctrl->vrs[SP] += 0x204 + (uleb128 << 2);
 	} else {
-		pr_warning("unwind: Unhandled instruction %02lx\n", insn);
+		eprintf("unwind: Unhandled instruction %02lx\n", insn);
 		return -URC_FAILURE;
 	}
 
@@ -303,7 +303,7 @@ int unwind_frame(struct stackframe *frame)
 
 	idx = unwind_find_idx(frame->pc);
 	if (!idx) {
-		pr_warning("unwind: Index not found %08lx\n", frame->pc);
+		eprintf("unwind: Index not found %08lx\n", frame->pc);
 		return -URC_FAILURE;
 	}
 
@@ -322,7 +322,7 @@ int unwind_frame(struct stackframe *frame)
 		/* only personality routine 0 supported in the index */
 		ctrl.insn = &idx->insn;
 	else {
-		pr_warning("unwind: Unsupported personality routine %08lx in the index at %p\n",
+		eprintf("unwind: Unsupported personality routine %08lx in the index at %p\n",
 			   idx->insn, idx);
 		return -URC_FAILURE;
 	}
@@ -335,7 +335,7 @@ int unwind_frame(struct stackframe *frame)
 		ctrl.byte = 1;
 		ctrl.entries = 1 + ((*ctrl.insn & 0x00ff0000) >> 16);
 	} else {
-		pr_warning("unwind: Unsupported personality routine %08lx at %p\n",
+		eprintf("unwind: Unsupported personality routine %08lx at %p\n",
 			   *ctrl.insn, ctrl.insn);
 		return -URC_FAILURE;
 	}
-- 
2.39.2



