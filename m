Delivery-date: Tue, 06 Jan 2026 08:54:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1tj-001ooG-0y
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:54:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1ti-0007jz-QB
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:54:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SF0bxvvQicHucNZRxuyCjeIOU+0qHI52NBhCQKATScc=; b=yaULXfGDkSlyGWv45eBF6d2hHR
	/kMdrfa5rWCCodS0SMh+sN/Qf9RlZr/QnXU46qDD9wUOHkz63gV/P9fIvejuJh9rfv01S450Fg30B
	asoKwuRH+KK1+8831hBPatE9WINTGFTIqyLtLl15cEiaqvtkzp73aZVIjurgBRBbknBG62BJe3hMo
	Fn9DKnsR7wjmbx5J1AWGQ34jAxG9i6qk9ryKQ4zFaJH8NQXF/GW02C/spYNuQtU+HaTTbCnDxZq7Y
	/hkz8KgSaujhg1BiBYhsx3emiyY7/YHaIOjlhgWFaFL0+uY1t+rqbTuMO48yxtxxvlH2dUzd9F2IC
	qqAkqSEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1tI-0000000CZg7-1fyl;
	Tue, 06 Jan 2026 07:54:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1tF-0000000CZfh-35L6
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:54:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1tE-0007fn-6R; Tue, 06 Jan 2026 08:54:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1tE-009JLW-03;
	Tue, 06 Jan 2026 08:54:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1tD-000000089gx-40vH;
	Tue, 06 Jan 2026 08:54:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251201-coverity-schedule-v1-1-fc79a839e6df@pengutronix.de>
References: <20251201-coverity-schedule-v1-1-fc79a839e6df@pengutronix.de>
Message-Id: <176768604395.1943868.17269880132714576601.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:54:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_235405_780308_23D2DE4C 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ci: coverity: Run monthly, on branch next
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 15:47:23 +0100, Jonas Rebmann wrote:
> Coverity should have been set up to run on the next branch in the first
> place, to catch mistakes before they reach master.
> 
> Always run it on branch next, and set a timer to run it in the night to
> the first of every month.
> 
> 
> [...]

Applied, thanks!

[1/1] ci: coverity: Run monthly, on branch next
      https://git.pengutronix.de/cgit/barebox/commit/?id=b88a753ce2d7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



