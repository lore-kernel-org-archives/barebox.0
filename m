Delivery-date: Mon, 31 Aug 2026 21:37:47 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17pC-009O1F-1t
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:37:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1DD69201D0F
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:37:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FthvXolR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GX4r8Q5X0BFDjxVPi/QloObZMaaKfn4lHpjeoWUzxgU=; b=FthvXolRc1t8dWBWFOFrnZ7L1P
	9IEkxF2cxPwMdE9igZ/6E4YrUYOJHWahKB/nu4nYH026pg/WMfShEkJ7ii0hZIF0FSeHZixbYKN7F
	rtof+EY9eZmJlWsuTGGEpNirnB55UfZ2AUCH7cB6y31J6iJXsGm/XV1VVPTaABqEJCrRjkj6opZhY
	c3EhTWfC3FsuwRm8JDCGuaMjLodyzKIcxw2+96avLza55my6lWQs3t9ae+Y/uE7I2meyIpxk51Ipw
	SBos7ZJGmL0RXKAfEqOzMFxj2sRw/endcX1JD/PTKndJRAVMICDVYS8nm28LHMx1VXykWRULPU8Eu
	sd9WTQEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17np-0000000ANpE-1h9o;
	Mon, 31 Aug 2026 19:36:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nm-0000000ANmE-1ZbJ
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 734E02032FC;
	Mon, 31 Aug 2026 21:36:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-004J3h-16;
	Mon, 31 Aug 2026 21:36:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-00000006Bjz-0w9Y;
	Mon, 31 Aug 2026 21:36:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 6/8] clk: divider: use 64-bit division in _div_round_up and divider_get_val
Date: Mon, 31 Aug 2026 21:35:53 +0200
Message-ID: <20260831193605.1474749-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
References: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123618_580842_6455CC13 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The parent_rate
   + rate - 1 addition in DIV_ROUND_UP can overflow on 32-bit platforms. Use
   DIV_ROUND_UP_ULL, as Linux does since commit 9556f9dad8f5 ("clk: divider:
   handle integer overflow when dividin [...] 
 
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
X-Stat-Signature: 91izwgtputhupxe85x6p7uo5fhae9bjp
X-Rspamd-Queue-Id: 1DD69201D0F
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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

The parent_rate + rate - 1 addition in DIV_ROUND_UP can overflow on
32-bit platforms. Use DIV_ROUND_UP_ULL, as Linux does since commit
9556f9dad8f5 ("clk: divider: handle integer overflow when dividing
large clock rates").

Fixes: 7d664f98d1ba ("clk: clk-divider: divider calculation in clk_set_rate needs DIV_ROUND_UP")
Fixes: b75025a39c77 ("clk: divider: Fix best div calculation for power-of-two and table dividers")
Reported-by: Claude:opus-4.6
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-divider.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 62d63ef39c7e..97dc9679c91c 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -161,7 +161,7 @@ static int _div_round_up(const struct clk_div_table *table,
 			 unsigned long parent_rate, unsigned long rate,
 			 unsigned long flags)
 {
-	int div = DIV_ROUND_UP(parent_rate, rate);
+	int div = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
 
 	if (flags & CLK_DIVIDER_POWER_OF_TWO)
 		div = __roundup_pow_of_two(div);
@@ -292,7 +292,7 @@ int divider_get_val(unsigned long rate, unsigned long parent_rate,
 {
 	unsigned int div, value;
 
-	div = DIV_ROUND_UP(parent_rate, rate);
+	div = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
 
 	if (!_is_valid_div(table, div, flags))
 		return -EINVAL;
-- 
2.47.3



