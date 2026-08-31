Delivery-date: Mon, 31 Aug 2026 21:36:47 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17oE-009NyD-3A
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:36:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 868DF201ED1
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:36:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Lb/43qz8";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+O5toPBD1RUL7jVHigFnXsnVBDXwzFYfOPOV4nXvNpw=; b=Lb/43qz8M5sl1kC6ad3lszOwcj
	XnzRokIeL8AsJyQflzceDIctip/Tb5YhVpq2hqbRRvmbXNH7LHFsGrLoyeT7RQIgtvEcAk0BBGrZ3
	YuzrAm39tA7OyXdq0ACVqgcMQLjdRoO8H1ZV3x/qwsIFDDDN/4D11Dvh6sP9U9ugeQdHXt7k9hQvg
	13mXGLn2vUNLmnxwbjzkGopbaicbgHodLJFE1kVm9N0Nh9/pO8UFBcDXnO7zg0HjIiEeSzARgczKE
	rAB3po+mGeLMEgGyRdgbmam/DoIVX35hl/0l3Hu2bz/4LhZmb2tI3rWJL+kS3/IvACw7e1cMBQwgl
	2UD7XyOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17no-0000000ANoE-2xMw;
	Mon, 31 Aug 2026 19:36:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nj-0000000ANkh-0vDi
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:36:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 64B872032FB;
	Mon, 31 Aug 2026 21:36:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-004J3f-0v;
	Mon, 31 Aug 2026 21:36:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-00000006Bjz-0jfG;
	Mon, 31 Aug 2026 21:36:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 5/8] clk: imx: pllv3: use 64-bit arithmetic in fractional PLL recalc_rate
Date: Mon, 31 Aug 2026 21:35:52 +0200
Message-ID: <20260831193605.1474749-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
References: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123615_433949_1E44D7AA 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> (parent_rate / mfd)
    * mfn truncates the intermediate division in clk_pllv3_av_recalc_rate() and
    clk_pllv3_sys_vf610_recalc_rate(). Use u64 multiplication and do_div, as
   Linux does since commit ba7f4f5 [...] 
 
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
X-Stat-Signature: 9ygqysyfu9mi6eqjys7ypjdnghwsi4w4
X-Rspamd-Queue-Id: 868DF201ED1
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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

(parent_rate / mfd) * mfn truncates the intermediate division in
clk_pllv3_av_recalc_rate() and clk_pllv3_sys_vf610_recalc_rate(). Use
u64 multiplication and do_div, as Linux does since commit ba7f4f557eb6
("clk: imx: correct AV PLL rate formula") and 5c2f117a22e4 ("clk: imx:
fix integer overflow in AV PLL round rate"), the latter having widened
the truncated result from u32 to unsigned long.

Fixes: 809549b1bf93 ("ARM i.MX: initial clk support")
Fixes: 7a8d295cdf60 ("i.MX: clk: Add IMX_PLLV3_SYS_VF610 subtype")
Reported-by: Claude:opus-4.6
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/imx/clk-pllv3.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index eb806e7f9892..8d41b76df826 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -192,7 +192,12 @@ static unsigned long clk_pllv3_av_recalc_rate(struct clk_hw *hw,
 	u32 mfd = readl(pll->base + PLL_DENOM_OFFSET);
 	u32 div = readl(pll->base) & pll->div_mask;
 
-	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
+	u64 temp64 = (u64)parent_rate;
+
+	temp64 *= mfn;
+	do_div(temp64, mfd);
+
+	return parent_rate * div + (unsigned long)temp64;
 }
 
 static long clk_pllv3_av_round_rate(struct clk_hw *hw, unsigned long rate,
@@ -293,7 +298,12 @@ static unsigned long clk_pllv3_sys_vf610_recalc_rate(struct clk_hw *hw,
 	u32 mfd = readl(pll->base + SYS_VF610_PLL_OFFSET + PLL_DENOM_OFFSET);
 	u32 div = (readl(pll->base) & pll->div_mask) ? 22 : 20;
 
-	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
+	u64 temp64 = (u64)parent_rate;
+
+	temp64 *= mfn;
+	do_div(temp64, mfd);
+
+	return parent_rate * div + (unsigned long)temp64;
 }
 
 static long clk_pllv3_sys_vf610_round_rate(struct clk_hw *hw, unsigned long rate,
-- 
2.47.3



