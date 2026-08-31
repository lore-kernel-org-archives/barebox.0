Delivery-date: Mon, 31 Aug 2026 21:37:10 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17ob-009O04-0g
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:37:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AFEEB202492
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:37:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dCx5IdK+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O0wJsudWGw1PAmkicY16iq8xM4ZpUjeamzl6WgpYDZw=; b=dCx5IdK+Z7pYYzhn+E1yzcnxa6
	rvTlGh9OpH73+mTfD/xnHYMCWAWB5acSK+ypCv2cg82qdd9eZIflSPMPdrNIyNEfU4ktSEuYQP/lu
	gvAEFquois5B5PFWUc1BQixMLjaQrkYt9pi6XXv96MA8xMx2svR0LjnnSRevDW4oLCQZAnLuvUpIO
	1vkowrmfrqP9ruWnCE64CG1KRWUQnOSX0GqdC91YJo3WNF0rA1ys4VbPZ8Vwec+oQRCz4KJ/Y1lDZ
	R7hq2zofjPH2VnYuo7vQl+j+mKG+UdsgHYcZyvslMsi9TjXeBZoXd6QyJ+Zo0LB27pZHMtt1v9ML+
	lbVyOx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17np-0000000ANox-16uA;
	Mon, 31 Aug 2026 19:36:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nm-0000000ANmN-2zuC
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 872462032FE;
	Mon, 31 Aug 2026 21:36:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-004J3n-1P;
	Mon, 31 Aug 2026 21:36:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-00000006Bjz-1Jzx;
	Mon, 31 Aug 2026 21:36:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 8/8] clk: divider: fix calculation of maximal parent rate for a given divider
Date: Mon, 31 Aug 2026 21:35:55 +0200
Message-ID: <20260831193605.1474749-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
References: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123618_936554_339A1D82 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> This is an adoption
    of the corresponding Linux commit: | commit da321133b53caf7889ed3ca1dabe4cc368db2604
    | Author: Uwe Kleine-König <u.kleine-koenig@pengutronix.de> | Date: Sat
   Feb 21 11:40:23 2015 +0100 | | clk: divider: fix calculation of maximal paren
    [...] 
 
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
X-Stat-Signature: w4h1n55jp33qdnbcf6gxmp68b3xqwmga
X-Rspamd-Queue-Id: AFEEB202492
X-Spamd-Result: default: False [-56.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: Ahmad Fatoum <a.fatoum@barebox.org>

This is an adoption of the corresponding Linux commit:

| commit da321133b53caf7889ed3ca1dabe4cc368db2604
| Author: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
| Date:   Sat Feb 21 11:40:23 2015 +0100
|
|     clk: divider: fix calculation of maximal parent rate for a given divider
|
|     The rate provided at the output of a clk-divider is calculated as:
|
|     	DIV_ROUND_UP(parent_rate, div)
|
|     since commit b11d282dbea2 (clk: divider: fix rate calculation for
|     fractional rates). So to yield a rate not bigger than r parent_rate
|     must be <= r * div.
|
|     The effect of choosing a parent rate that is too big as was done before
|     this patch results in wrongly ruling out good dividers.
|
|     Note that this is not a complete fix as __clk_round_rate might return a
|     value >= its 2nd parameter. Also for dividers with
|     CLK_DIVIDER_ROUND_CLOSEST set the calculation is not accurate. But this
|     fixes the test case by Sascha Hauer that uses a chain of three dividers
|     under a fixed clock.
|
|     Fixes: b11d282dbea2 (clk: divider: fix rate calculation for fractional rates)
|     Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
|     Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
|     Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
|     Signed-off-by: Michael Turquette <mturquette@linaro.org>

The "not a complete fix" caveat applies here as well: barebox'
clk_round_rate() falls back to clk_get_rate() for a clock without a
round_rate op, and clk_mux_round_rate() returns the closest parent rate, so
both can return more than they were asked for and clk_divider_bestdiv() can
still end up without a candidate. CLK_DIVIDER_ROUND_CLOSEST doesn't exist in
barebox, so that half of the caveat doesn't apply.

With the previous commit, the i.MX6 IPU pixel clocks now hit their
requested rates exactly, e.g. on a SABRE Lite:

  clk_round_rate ipu1_di0 65000000  ->  65000000 (was 40500000)
  clk_round_rate ipu1_di0 148500000 -> 148500000 (was 148500001)

Fixes: d4aaca3647fe ("clk: clk-divider: sync with kernel code")
Reported-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-divider.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 8e630ccde4e6..2c97742cec0e 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -112,12 +112,6 @@ static unsigned long clk_divider_recalc_rate(struct clk_hw *hw,
 				   divider->flags, divider->width);
 }
 
-/*
- * The reverse of DIV_ROUND_UP: The maximum number which
- * divided by m is r
- */
-#define MULT_ROUND_UP(r, m) ((r) * (m) + (m) - 1)
-
 static bool _is_valid_table_div(const struct clk_div_table *table,
 							 unsigned int div)
 {
@@ -211,8 +205,7 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 			*best_parent_rate = parent_rate_saved;
 			return i;
 		}
-		parent_rate = clk_round_rate(clk_get_parent(clk),
-				MULT_ROUND_UP(rate, i));
+		parent_rate = clk_round_rate(clk_get_parent(clk), rate * i);
 		now = DIV_ROUND_UP_ULL((u64)parent_rate, i);
 		if (now <= rate && now > best) {
 			bestdiv = i;
-- 
2.47.3



