Delivery-date: Wed, 30 Sep 2026 12:16:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBrMt-0081Y6-2B
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 12:16:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1D7B4201700
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 12:16:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hcDDpii8;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=LzzrF+7Q;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BU7hEMlx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790763415; a=rsa-sha256;
	cv=fail;
	b=f8XtuVJA91NJrbPbhAImPJXpi1ePmM1GvQfBlCxRmOBtWigZpq3dt+pD/fllnNeeZPy1Fh
	ukeGkKMr72S6EtdonXWtG42LL0ZGoEb4+WUT72Yii0sXow8l7k9TuU/rJ3hA+c9lT1E0BL
	NQanQyTm1sf7waTNzas/kfDmw+frdhV3AlKTnL2TqolDeTbal35eISK2Rt/prASBaBjveE
	qpRX6PPtt3YPzPg2khcj3mb9UI4s+AxdP0CZzBVQ5v/pNthzUEpe4pMXTsROmxOtBa2NbI
	zUIXhmjkBfiGaLN2k1HkeexHb+XxeSqFyCla0/G+EllVLZ52V5QHG63lRYHdLg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hcDDpii8;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=LzzrF+7Q;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BU7hEMlx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763415;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=TuA+N3wx29giHSz/edY3q2MLT3qdEGpzg7HQhYv3P6A=;
	b=Kv9zvItEXcLYxpdi4cqHqu9bjz5YWJ1pulpsjk7V6kgFHWhD8V18tA2jlmaKLPvBprCfPQ
	DkxMDE/t9WKeQyCXC66aqvW9DAj74I4AOEgCuAwk3ImNmkXEhcg10RjPQ8ON7h5dyjNjaa
	lPnBY7VPtKHPsuKUPkkDSWve2Z9uBicg89UARj1d18LdjQMJjxBSuNCT8UtcieyMHDA35E
	ZRdyeGQeqsq+zUUZQ0JXcpU34c+lPv4+gPBZYU0rxp9cWJ5ggBWa5vshlEC/J5gpC+gJ/7
	i8aht+7JeX7vucwjZqfF9LBxKooXLmRTeFfh0RcG97GA4PpIUNUIHxtO27FUqA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuA+N3wx29giHSz/edY3q2MLT3qdEGpzg7HQhYv3P6A=; b=hcDDpii8pe4KOz
	18L6EPatTjN/VVfaDji8vFGqs3sHbBtM+wIlFfklRaFdoElE7B1La/wjrxu41ftjBA8LX21n5V1uf
	AFNhd4jL7prRlxWJwhQjsUIxSQ4fvFZNiIgbcDOvf59cVXn+D0MfDm7+qVG813ggM3EaOEjeHYkRC
	KIQ131FK5tB2UYFJQdr8CLtWIHL8QRQw+lbpLDPsxZkhvEGxUHaUJs3j66pVr5WQIGUW2dCoKQ+Rz
	milN57IQsrFDs0tbK2aBEph30fQpTPzVe4kK21z12fv84CVHCxmXmaPRwOqwZ2n5EpnH9jhML4SBP
	19vsj+iyaTxCycsy8nwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrMS-00000005i5n-34TY;
	Wed, 30 Sep 2026 10:16:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrMF-00000005i3N-2qfC
	for barebox@bombadil.infradead.org;
	Wed, 30 Sep 2026 10:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TuA+N3wx29giHSz/edY3q2MLT3qdEGpzg7HQhYv3P6A=; b=LzzrF+7Q64NACyiS7rAkZd62UD
	3rLtnpgYCLoKS2o21YZyj929qRVTCg+ncvj9RWOqBua1bDAK/GxXmbxIkfMjiSgZ3TOoi6+iTTffD
	4pCRF4CEROUQBroexnwhSPRuV8iVyzXM8FH1qBHFPf8VvLpMbspZrYr4F8x0GL6urEOXLolnJrOrx
	E5dm98pBAPO6iEtW/oeoEFkzaU4Cl86CzGCfk0eH4aTAMOwOwSTB9VjmBZZXfC8kwfnuB/YmQXbRw
	pQ7uzJk8tnHMCJlegvo1pz65GjEuwP/DFvT/QdORi5AYt2CYuQhQmcObgDZDv2UGjZpHgwep1jjpD
	gvxpQlxQ==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBrMA-00000003dN1-1DoQ
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 10:16:14 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E9F4B201C7E;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TuA+N3wx29giHSz/edY3q2MLT3qdEGpzg7HQhYv3P6A=;
	b=BU7hEMlxy3SoXC2pr/5BMDzxKs50pVGt7mwR8WVozXXbjkHJMc7v8KB/xh3SYh2F7ow7vt
	pipogANUzjC6F/sco5QVZLsyO6eosGcrEGcLZKY+/YARdKc8jkmGjO25/nFtfSU30gF7cc
	RAODfG6O5Qxa1Oo37hIi0nc/1iCCq200vxBAP8kAAmqwTVKcZXgEJ4TvjRoJhCV1Prkjlh
	YNFau/FBXLObNiLY5GyCDQsHDWhQPdixf+KtZyPmDKZ6Z3pn6ZWCRuRnA4aU2VLwaxcibO
	FB8XdpaReet3FKBpUD1QK4ehBkqpOe/LHvbpcUAIoXLnI49Up46adsix/NXhRQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790763367; a=rsa-sha256;
	cv=none;
	b=E+IiGkUobCbYlK2/Qs/8hFb1eY8TyNLYoEFcSSBwEhF8hgLKOe5/KdsCYv+TqKuYk3nHWm
	sZazU8yd/Z1QP3QUoYVqoMSmiVch97jIAW3CbC8rAVb1bwi2XZHdHHgfygxFouU0uh05VA
	sFTsHf5PEosXNFlnkEAtb/89jpsAhRSYHxkrjzs4CWsND75nUwraPpn6qC39m//VFjcVLC
	NI7LUPa73HnTCg0x53Ah0V5lbJbT2pzbFNddN0QAAFbmT9m2xZE8xGw4DtrZmN7AwI8r6E
	eSl8KhcSDJEV6kkUiMnOdnyibz3XddisWDzoWRHJqDKxtD4yzZ2QRLJNxPRyFw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TuA+N3wx29giHSz/edY3q2MLT3qdEGpzg7HQhYv3P6A=;
	b=dcIMSTRpyJYjFby+DGa3BKrvRiiUb9qGr3Ktkfuqmw/5mCuHHSmk+5MPiU9U2LY8P3zCRa
	q8DxMlZ9cjdMaJPken4COqLq7SOq+7AtjrtbvCEXlYmj5HmZmaY3pESX0KysjmV3VMO9Ye
	SA+ADPvjOi82yX+94J1KvIQxEeOkf02n/4OONCBR/dlEMw+klUS1W0Vx6KlnJDf7XDxQWT
	iH8NRU4A4dJ4mhhBL7HAFRpAmAdRoQ+dskHulkhHKIFWcEqJ51Q8wWC9X1/7wd5Lv0iYJi
	Q0SExX6wfUs+utHgFUIdA2KVBhLE5DhquxiFVVArCjwI2GP7GlaulngC4eyHeA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C775F741FD9;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH 2/4] clk: imx: pll14xx: Drop wrong shifting
Date: Wed, 30 Sep 2026 12:15:54 +0200
Message-ID: <20260930101606.2097864-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
References: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_111610_991201_3FB47EE3 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Sascha Hauer <s.hauer@pengutronix.de> The code tries
    to mask the bits in SDIV_MASK from 'tmp'. SDIV_MASK already contains the
   shifted value, so shifting it again is wrong. No functional change though
   as SDIV_SHIFT is zero. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-55.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1D7B4201700
X-Stat-Signature: 68bhirqfn1x5c86inrr54thnkxjhn6j4

From: Sascha Hauer <s.hauer@pengutronix.de>

The code tries to mask the bits in SDIV_MASK from 'tmp'. SDIV_MASK
already contains the shifted value, so shifting it again is wrong.
No functional change though as SDIV_SHIFT is zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Link: https://lore.kernel.org/r/20220304125256.2125023-3-s.hauer@pengutronix.de
Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
[ahmad: cherry-picked from Linux commit d77461a616b659bd88d]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-pll14xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index c1d5a6b88f41..a4aa9ce548cb 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -191,7 +191,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp = readl(pll->base + DIV_CTL0);
 
 	if (!clk_pll14xx_mp_change(rate, tmp)) {
-		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
+		tmp &= ~SDIV_MASK;
 		tmp |= rate->sdiv << SDIV_SHIFT;
 		writel(tmp, pll->base + DIV_CTL0);
 
@@ -273,7 +273,7 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp = readl(pll->base + DIV_CTL0);
 
 	if (!clk_pll14xx_mp_change(rate, tmp)) {
-		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
+		tmp &= ~SDIV_MASK;
 		tmp |= rate->sdiv << SDIV_SHIFT;
 		writel(tmp, pll->base + DIV_CTL0);
 
-- 
2.47.3



