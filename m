Delivery-date: Sun, 16 Aug 2026 20:13:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfMJ-003qOJ-0E
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:13:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B1562201CD3
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:13:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qXmdYHMw;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 198.137.202.133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XAzh5416jaWLR3VbFp4N30rPtGtLRHLCoOX63Y2bTQQ=; b=qXmdYHMwlL+xReKvPkprEUXKvJ
	1FWNSRPjgnW8z/3WAgx+rBfYMhhsGoTGBKtfpo+oO7bzHhIgvbEaUiY5j0LfQBJvEabKbWC/9pduZ
	CbeFH+3PzvMdXrvnvu/WAgYH+KNgNmzQMRil+AuFrz0cisSWjYB81C7gdx2EhHweKFp6zeFcHhshZ
	VXOEIPkC+7+9FGKafM4zvDPEbzvWgZ3ubWJQWWDgZqmyZLNj5ZhFkvbNZeILLmVigge2r1OfLggJ/
	h5lRMNmviVGXN0xhcqD9ai15E5tc1qatzi+6DgQvN0o11Qb5/usoJb9TFcZgZKpopuPDus2MnYHqt
	78JIC/GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBP-00000004xS1-1vlH;
	Sun, 16 Aug 2026 18:02:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBL-00000004xN0-2lrP
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DE791201D09;
	Sun, 16 Aug 2026 20:01:58 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBG-001orb-2g;
	Sun, 16 Aug 2026 20:01:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1CD0;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:45 +0200
Subject: [PATCH 25/27] ARM: pxa: reset straight away and without
 complaining
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-25-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=2523;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VS/Xo9Y7M0P8W55T7+ZCs1PoI/qEKOSjF/WkK1tsyXk=;
 b=UEbfsv+paO5myLGKPvft6U66Kwlt8sv90VHLZFHfhCscAvw/3hmgUKnQrvIHZs0dlq0hORIHS
 MiR0LWJJ7rTB2pvGO73Nj7e1a0+JJjmbFPyV5e06XWLFNLHGGUefnsI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110203_874471_D851E7BC 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Two things made a working reset look like a failure. It waited
    113ms for the watchdog match, and it spent them inside hang(), which prints
    "### ERROR ### Please RESET the board ###" - so a reset annou [...] 
 
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
X-Stat-Signature: n1symtmwci7pifbgzuwhfiokr3atud33
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,198.137.202.133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: B1562201CD3

Two things made a working reset look like a failure. It waited 113ms for
the watchdog match, and it spent them inside hang(), which prints
"### ERROR ### Please RESET the board ###" - so a reset announced itself
as a board that needs one.

There is no reason to wait. Park the counter just below the match instead
of computing the match from the counter: both writes are absolute, so the
match is still ahead whenever the second one lands, and the margin no
longer has to cover the store that sets it up. 16 ticks is about 5us at
this part's 3.25MHz. Computing it the other way round has to guess that
margin, and losing the race costs a full 32bit wrap of the counter rather
than a retry.

Then spin quietly rather than calling hang().

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/common.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index fea570c5fa..d76167438a 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -27,6 +27,13 @@
 #define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
 #define OSSR_M3		(1 << 3)	/* Match status channel 3 */
 
+/*
+ * Where to park the counter, and how far below the match to park it. The
+ * counter runs at 3.25MHz on PXA3xx, so 16 ticks is around 5us.
+ */
+#define RESET_MATCH	0x1000
+#define RESET_MARGIN	16
+
 static void __noreturn pxa_restart_soc(struct restart_handler *rst,
 				       unsigned long flags)
 {
@@ -36,9 +43,23 @@ static void __noreturn pxa_restart_soc(struct restart_handler *rst,
 	/* Initialize the watchdog and let it fire */
 	writel(OWER_WME, OWER);
 	writel(OSSR_M3, OSSR);
-	writel(readl(OSCR) + 368640, OSMR3);  /* ... in 100 ms */
 
-	hang();
+	/*
+	 * Set the match, then put the counter just below it. Both writes are
+	 * absolute, so the match is still ahead of the counter whenever the
+	 * second one lands - unlike computing the match from the counter,
+	 * which has to leave enough margin for its own store to get there and
+	 * misses a whole 32bit wrap of the counter if it does not.
+	 */
+	writel(RESET_MATCH, OSMR3);
+	writel(RESET_MATCH - RESET_MARGIN, OSCR);
+
+	/*
+	 * A few microseconds out. Deliberately not hang(), which complains
+	 * about a board needing a reset while it is being reset.
+	 */
+	for (;;)
+		;
 }
 
 static int restart_register_feature(void)

-- 
2.47.3



