Delivery-date: Mon, 03 Feb 2025 10:21:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1teseS-007vGz-34
	for lore@lore.pengutronix.de;
	Mon, 03 Feb 2025 10:21:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1teseT-0001z8-3D
	for lore@pengutronix.de; Mon, 03 Feb 2025 10:21:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mMaRoYvF+oVtwgjNStN71yjLdLm3oXGwyhLzgcHYDKo=; b=CwhQ/dLrcw/5sbVYdstJYtgVdX
	dIM9iJWGwgkh2OS1oZw3ICIWxT5cLnnfPD6LSiK2Uh0r0cQ9WbC4d62SnWxhS6q7j90jc+spIHXN4
	bn5zrWTcysLyRBSl+xx7+jaia8c0z6JNGqiIOmzd88NdXBhCAKiSTb4IjQtM3k5H8CRZAeqgG3Z/5
	XKDKcngvaW+Fqp0k9d+ODZG5rDYMgaoD3ZtOEVWoei8TVrXHEK/Q6jvo8ktgxhhLSmDt9/mBG0I7T
	HHHT58JKHPfQwf4YUSTWGvbm3pDc3g2C1F54IBbMLShUeB0P9G7Kz5vLrvCZtSTIAamzWBWjDH7wN
	8Q2sGFow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tesdx-0000000EyWa-34Pb;
	Mon, 03 Feb 2025 09:21:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tesaA-0000000Exrh-19Q2
	for barebox@lists.infradead.org;
	Mon, 03 Feb 2025 09:17:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tesa7-0001Pl-Jj; Mon, 03 Feb 2025 10:17:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tesa7-003GhB-1J;
	Mon, 03 Feb 2025 10:17:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tesa7-00EmEy-15;
	Mon, 03 Feb 2025 10:17:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20250203-v2025-01-0-topic-ls1046a-v1-1-2e2c372dbdb9@pengutronix.de>
References: <20250203-v2025-01-0-topic-ls1046a-v1-1-2e2c372dbdb9@pengutronix.de>
Message-Id: <173857424733.3522011.15635100404901542475.b4-ty@pengutronix.de>
Date: Mon, 03 Feb 2025 10:17:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_011730_325735_A8A3B771 
X-CRM114-Status: UNSURE (   5.87  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Layerscape: LS1046a: select early i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Feb 2025 09:23:22 +0100, Steffen Trumtrar wrote:
> The TQMLS1046a board uses i2c to determine the HW variant.
> Therefore early i2c is needed.
> 
> 

Applied, thanks!

[1/1] ARM: Layerscape: LS1046a: select early i2c
      https://git.pengutronix.de/cgit/barebox/commit/?id=0a88e7d52b43 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



