Delivery-date: Mon, 11 Sep 2023 14:57:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTq-00BVh6-G4
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:57:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTo-0007Rb-AL
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:57:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RJ4Ul3g+c5VUr2aipuXrL7CKhoe86aefztjKiLiswo8=; b=Kkn1AVPIXhyPJhkHprKSsc08S+
	5sFBBpT2BTzTxfCr4arIMSK4LPrFJgkwXQCNp6rTX3zJ3GY8/wKB2zf+Pg4jYViUUqSDXE2PFpLGu
	20+X+JX05Ig1ZfnNFj2Xns74MUcyTP/s00Q4LxH4h2/eT2f/ym6gN5GPFmB/LITRIAa0BsN3bvmyP
	S/HM0h3bJd19pmWxrVNc/O2C0It9SLX7LQL2WXl6EdM48+lM0Q/s5DSEz3hm8AfhAKj2Jrju03/KY
	947WCoCP/yjHinD4uFX71EvMW5yK6N8B6Z5h5JukD9q7PHoOZeT+PSvYz6OhBRcj2paouonj3vbmb
	67giiceQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSp-000XBf-1E;
	Mon, 11 Sep 2023 12:56:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSl-000X9X-2B
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-00079x-Iz; Mon, 11 Sep 2023 14:56:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-005YTb-66; Mon, 11 Sep 2023 14:56:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSj-00Bg1O-1w;
	Mon, 11 Sep 2023 14:56:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:56:17 +0200
Message-Id: <20230911125619.2782229-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
References: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_055623_712022_241C25E6 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 2/4] ARM64: backtrace: print stacktrace to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rule of thumb is to print interactive output to stdout and status
messages to stderr. A stack dump falls into the latter category and part
of the stack trace is already printed to stderr, because of use of the
logging functions, which always prints there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/stacktrace.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib64/stacktrace.c b/arch/arm/lib64/stacktrace.c
index db5691a6098c..76aec734e135 100644
--- a/arch/arm/lib64/stacktrace.c
+++ b/arch/arm/lib64/stacktrace.c
@@ -40,9 +40,9 @@ int unwind_frame(struct stackframe *frame)
 static void dump_backtrace_entry(unsigned long where, unsigned long from)
 {
 #ifdef CONFIG_KALLSYMS
-	printf("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+	eprintf("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
 #else
-	printf("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+	eprintf("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
 #endif
 }
 
@@ -60,7 +60,7 @@ void unwind_backtrace(struct pt_regs *regs)
 		frame.pc = (unsigned long)unwind_backtrace;
 	}
 
-	printf("Call trace:\n");
+	eprintf("Call trace:\n");
 	while (1) {
 		unsigned long where = frame.pc;
 		int ret;
-- 
2.39.2



