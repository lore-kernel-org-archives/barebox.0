Delivery-date: Mon, 31 Aug 2026 21:37:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17oY-009Nzc-35
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:37:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 77D342032FD
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:37:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0HWRWNvP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7hxMinGN3wDqposO2WOjMYZhwkLQES0c8Pp8MCXDVKo=; b=0HWRWNvPiqkldcymGQHgEe5xwZ
	iIGVDF13CwMKJ98/R+9ETZ+x/VkBKmlQVJOOdmTSUjRF/wtjNzFOnArjE2vRt4f7uORMOnvrFBeem
	SIQX/rjzUDtEyWXnhB8F00xaBN6NkmeMdL9mtoZTKkiS7qdV+e078PlcfAKOfP6ude90EpjutBKZt
	nCtOBCK8SyrHd7ZEbUMlRZVso46YtJecclakAUhmv4HhY3a+UdcSHABxxJJ4NKEB1epLAb6nzu/Pj
	JMb80VQF5bd7u/z6OYkcKzouzIB23lFG429yE+qC5x0imw0M/J09KRE15aku95tXAW6QgzjCQn6Kc
	Alah0MDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17np-0000000ANob-0Urd;
	Mon, 31 Aug 2026 19:36:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nm-0000000ANmD-1QLx
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:36:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7C0C92032FD;
	Mon, 31 Aug 2026 21:36:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-004J3k-1G;
	Mon, 31 Aug 2026 21:36:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-00000006Bjz-18Ww;
	Mon, 31 Aug 2026 21:36:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 7/8] clk: divider: round up when searching for the best divider
Date: Mon, 31 Aug 2026 21:35:54 +0200
Message-ID: <20260831193605.1474749-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
References: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123618_563813_DEF9EA1D 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> clk_divider_bestdiv()
    compares candidates with a truncating division, while divider_recalc_rate()
    rounds up. The search thus accepts a divider whose reported rate is 1 Hz
   above the request, making clk [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: dnnknthmemp7xd1zp58aimxns7kapq3w
X-Rspamd-Queue-Id: 77D342032FD
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: Ahmad Fatoum <a.fatoum@barebox.org>

clk_divider_bestdiv() compares candidates with a truncating division,
while divider_recalc_rate() rounds up. The search thus accepts a divider
whose reported rate is 1 Hz above the request, making clk_round_rate()
non-idempotent. Use DIV_ROUND_UP_ULL() there as well, as Linux commit
b11d282dbea2 ("clk: divider: fix rate calculation for fractional
rates") does; its other hunks barebox already has.

On i.MX6, clk_round_rate(ipu1_di0, 65 MHz) now yields 64800000 instead
of 40500000.

Fixes: e27c0b64db01 ("clk: add divider_recalc_rate helper")
Reported-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-divider.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 97dc9679c91c..8e630ccde4e6 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -213,7 +213,7 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 		}
 		parent_rate = clk_round_rate(clk_get_parent(clk),
 				MULT_ROUND_UP(rate, i));
-		now = parent_rate / i;
+		now = DIV_ROUND_UP_ULL((u64)parent_rate, i);
 		if (now <= rate && now > best) {
 			bestdiv = i;
 			best = now;
-- 
2.47.3



