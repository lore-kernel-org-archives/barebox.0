Delivery-date: Wed, 31 Jul 2024 09:14:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xx-004j1D-0Q
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:14:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xw-0006fO-GE
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:14:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P7tkHN/VWq87IZXa87YfJUb9CpVI9TXWrW9b/1HvHQs=; b=a7691itR3aldgYhxl4N5w5fQH1
	3DOjucO+DS8Udlp3R2tCuaGB41QpEPXg1Jm4P5NIFu0q5omB1JoO5g/rMOH/M+quJn+jDuARktUXN
	4dMIr1pbhr2QskuCQVAGEDzi38/8OZZ2q3LX6lJXYbDOjLENkuNgPDZLnyCNkODFoPz6lhxuWhQ9g
	SaXhB1S5C10Q61vGvjEbZ77ROj+Dgt+/Ald5AKSBnGIUmW+GEx6H54HC02w1ZaQXOoYAJUUxiMC6f
	8ajwn3Pztk2qBZ3THQiNObWbM8FeuwAXsVdn7fYxjHzF8PrqFbP9o0qheO2eolhdNTesvwzd4Wq7E
	NZGt3Zrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XV-000000004xI-0GRM;
	Wed, 31 Jul 2024 07:14:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XP-000000004uR-2Drt
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:14:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XO-0006Lm-AA; Wed, 31 Jul 2024 09:14:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-003T7L-S0; Wed, 31 Jul 2024 09:14:17 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-00AjVP-2V;
	Wed, 31 Jul 2024 09:14:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 09:14:16 +0200
Message-Id: <20240731071416.2558182-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
References: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001419_632342_A29E3C27 
X-CRM114-Status: GOOD (  11.99  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] RISC-V: stacktrace: output stack traces to standard error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KASAN splats are currently split between standard output and standard
error, which looks ok, when both are enabled on the same consoles, but
is difficult to follow when mapping standard out/err to different
consoles. Let's move all stack trace dumping to standard error. This is
already the case for ARM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/lib/stacktrace.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/lib/stacktrace.c b/arch/riscv/lib/stacktrace.c
index 663938019ee6..b678ad7d5241 100644
--- a/arch/riscv/lib/stacktrace.c
+++ b/arch/riscv/lib/stacktrace.c
@@ -22,9 +22,9 @@ struct stackframe {
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
 
@@ -60,7 +60,7 @@ void unwind_backtrace(const struct pt_regs *regs)
 		frame.ra = (unsigned long)unwind_backtrace;
 	}
 
-	printf("Call trace:\n");
+	eprintf("Call trace:\n");
 	for (;;) {
 		unsigned long where = frame.ra;
 		int ret;
-- 
2.39.2



