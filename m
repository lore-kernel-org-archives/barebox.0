Delivery-date: Tue, 11 Aug 2026 12:13:40 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtjUJ-001wff-2i
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 12:13:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 69466201889
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 12:13:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HWoyy2e0;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+k7381LcKC4cZXEUoUs0Z2gjiDa//H0RsSEdBPFtIIg=; b=HWoyy2e04sDR+1BG2B/fBFNId+
	6x5oxGV9syDKIZ4Q3NbDpX9gqDmAX/0BAWbJ3GZdeS7cdfdcqrn+aDFBKHUJrDZznpfM9M6nEsp7f
	+Qd9g79idlMVyaWzSl0M8xYeyTK2u8WMHVdKf6ulGDQXA8cdXqvDcdgYLcWGnjulCH3FEq7Pk4zee
	6xxGGZc/GvnsCSYqWPbIgypgA7RZO/bWCvMZ+xniFiscSoVLidWrN4McUZmk8KkzvpyAUYX9MIZyV
	xS2eHmxcLKnizB/dK+IXe2x6rWbQgTB36M0BAWFpcVcj+fo2ugmQZ3jLqP981m6AVNl1i5H/Ejeeg
	uTTkpQsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjTt-0000000Dp6Q-2ivs;
	Tue, 11 Aug 2026 10:13:13 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjTq-0000000Dp4b-0ife
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 10:13:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3C6FB201949;
	Tue, 11 Aug 2026 12:13:06 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wtjTm-000vvt-0H;
	Tue, 11 Aug 2026 12:13:06 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wtjTl-00000004RKN-4AWC;
	Tue, 11 Aug 2026 12:13:05 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 11 Aug 2026 12:13:06 +0200
Subject: [PATCH v2 2/3] ARM: lib32: pbl: implement get_time_ns and
 is_timeout
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260811-feature-pbl-get-time-ns-v2-2-754ee021b19d@pengutronix.de>
References: <20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de>
In-Reply-To: <20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_031310_373551_A772F54C 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ARMv7-A cores can implement the optional 64bit wide generic
    timer CNTPCT[1]. If it is present we can use it to implement the get_time_ns
    and is_timeout helpers which in turn enable the whole read_poll [...] 
 
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
X-Stat-Signature: 5z3z8sxidh5yufrw76f9o3nuuzfpzj39
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 69466201889

ARMv7-A cores can implement the optional 64bit wide generic timer
CNTPCT[1]. If it is present we can use it to implement the get_time_ns
and is_timeout helpers which in turn enable the whole read_poll_timeout
class of functions in the PBL. As it is guaranteed that the timer won't
wrap for 40 years no overflow handling is necessary.

[1]: See "ARM Architecture Reference Manual ARMv7-A and ARMv7-R edition
(rev C.d)", Chapter B8 "The Generic Timer"

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/lib32/arm_architected_timer.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/arm_architected_timer.c
index 54eca13f8b..75f74cbc15 100644
--- a/arch/arm/lib32/arm_architected_timer.c
+++ b/arch/arm/lib32/arm_architected_timer.c
@@ -10,8 +10,21 @@ void arm_architected_timer_udelay(unsigned long us)
 	unsigned long long ticks, cntfrq = get_cntfrq();
 	unsigned long long start = get_cntpct();
 
-	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), 1000000);
+	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), MSECOND);
 
 	while ((long)(start + ticks - get_cntpct()) > 0)
 		;
 }
+
+uint64_t get_time_ns(void)
+{
+	return get_cntpct() * SECOND / get_cntfrq();
+}
+
+int is_timeout(uint64_t start, uint64_t time_offset_ns)
+{
+	if ((int64_t)(start + time_offset_ns - get_time_ns()) < 0)
+		return 1;
+	else
+		return 0;
+}

-- 
2.47.3



