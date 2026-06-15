Delivery-date: Mon, 15 Jun 2026 10:17:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2Vv-0064U2-1S
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:17:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2Vu-0004HY-S1
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:17:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MHiwjds9mDZqq7nkppkDeh8B6/EjyjguM5JV4qtMxZY=; b=VxUES2aQGlpOWPRI9GA23TCO1Z
	nHuWFMBugtArJV5erUzbM+P54ubTKCGLjvasdLXMCpYJ1UpwRYkaY70vDUe36kM4N3zMARhlkS5rM
	3pUxRwEs4N3Nln5KXugf43mWuiFoDyFJz5sd3mHVpQFrPOVrfkneikvZQLSowsEBmbbUitE7Tjfck
	rBQC8ZV+kD94jgVDjdQN/EOT2D70Ap2GrqJqEUWXpqcyRO++y3gevK6Akly4YHkf+v3mRkNuBhE0z
	SLeirn9eagypU7WZ6lgtYNTeUGopge0rs4c/DIyV8QWSwYJHq/VtcCdgxK0hlbP5PlYTzF5HgF+gC
	Zmr8anHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2Us-0000000Dqep-0rhZ;
	Mon, 15 Jun 2026 08:16:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2Up-0000000Dqe2-1SWY
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:16:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2Un-0003xT-0v; Mon, 15 Jun 2026 10:16:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2Um-002pdu-1K;
	Mon, 15 Jun 2026 10:16:36 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2Um-0000000Dmte-1UTT;
	Mon, 15 Jun 2026 10:16:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260611211425.4090757-2-a.fatoum@barebox.org>
References: <20260611211425.4090757-1-a.fatoum@barebox.org>
 <20260611211425.4090757-2-a.fatoum@barebox.org>
Message-Id: <178151139635.3286157.3880827187743438680.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 10:16:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_011639_394594_95ECBE78 
X-CRM114-Status: UNSURE (   7.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 2/3] ARM: stm32mp: lxa: change stdout-path
 baud rate from 9600 to 115200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Jun 2026 23:14:21 +0200, Ahmad Fatoum wrote:
> The LXA boards are the only upstream STM32 boards that set
> stdout-path = &uart* instead of explicitly specifying a baud rate.
> 
> This would mean the default of 9600 is used, but it goes unnoticed when
> booting normally as barebox fixes up a console= line that includes a
> baud rate.
> 
> [...]

Applied, thanks!

[2/3] ARM: stm32mp: lxa: change stdout-path baud rate from 9600 to 115200
      https://git.pengutronix.de/cgit/barebox/commit/?id=5b2e2a7d2066 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



