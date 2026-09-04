Delivery-date: Fri, 04 Sep 2026 12:14:58 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Qwj-00AhIH-2x
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 12:14:58 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=stDxohMU;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7D8362058BD
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 12:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xy3MeDcV7isojSdqmdco9uSYwhb7X3pE8vJVVRziPlE=; b=stDxohMUx8IgCP15vGNtWfQhA4
	GgKPz8qVOl0kWfakHbax3/5rA/DtdmB+SmyovVWzDwNgERUazs5rTRNqF9VB/PAaIFvwEY6Mtmb2I
	ve7i4S8R11bTTuYYnn3y7LxmOH1cVCTWmR9KYtSLZJ35ZzQ4rnIahaygjrASCn6rmHmLm1lFBi9gy
	iVPzOSRoXdn0sg0JKctLewjUS7R5MdiTz1vevI2ICo9GW7CMHqtGQYc4whuxfuFNKH7kFjxOlv5F8
	6wg5A5p5IIwJgttGcq66YQqytMpk1XPHl/5WHQC/NzHIp0BUfZPM/HLqHQaYtxDXTZ2Nv+2WXSCB0
	Tn9AU/kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Qvf-00000001dL4-05io;
	Fri, 04 Sep 2026 10:13:51 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Qvc-00000001dKP-1Roj
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 10:13:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9030B2032FF;
	Fri, 04 Sep 2026 12:13:46 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2Qva-004uBk-1V;
	Fri, 04 Sep 2026 12:13:46 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2Qva-00000001fwr-1V4y;
	Fri, 04 Sep 2026 12:13:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH master] ARM64: clocksource: drop too early error message
Date: Fri,  4 Sep 2026 12:13:45 +0200
Message-ID: <20260904101345.399568-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_031348_554919_81C13FFC 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Constructors are executed directly after relocations were
   applied. But only after applying relocations is it safe to run arbitrary C
    code. This causes an issue: If arm_arch_timer_init() fails and CONFIG_DEBUG_LL
    is enabled, the hardcoded serial port will be used, which may hang the system
    if serial setup has not happened yet. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: rmdk968h14ggr8ieq6kk3f6cg7ywoc5w
X-Rspamd-Queue-Id: 7D8362058BD
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

Constructors are executed directly after relocations were applied.
But only after applying relocations is it safe to run arbitrary C code.

This causes an issue: If arm_arch_timer_init() fails and CONFIG_DEBUG_LL
is enabled, the hardcoded serial port will be used, which may hang the
system if serial setup has not happened yet.

Avoid this issue by skipping the error message.

I have declarative PBL entry point support in the works, which would side
step this issue anyway, so doing anything fancy here right now is not
worth the effort.

Reported-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/clocksource.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/lib64/clocksource.c b/arch/arm/lib64/clocksource.c
index f992be09b8a7..f5fef1f3d410 100644
--- a/arch/arm/lib64/clocksource.c
+++ b/arch/arm/lib64/clocksource.c
@@ -5,6 +5,5 @@
 
 __attribute__((constructor)) static void init_arch_clock(void)
 {
-	if (arm_arch_timer_init(0))
-		puts_ll("Failed to setup architected timer\n");
+	arm_arch_timer_init(0);
 }
-- 
2.47.3



