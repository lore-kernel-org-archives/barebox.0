Delivery-date: Wed, 15 Apr 2026 08:39:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtuo-00CKLC-1c
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:39:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtun-0007xJ-Vu
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:39:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GLQofH79rssQqThj1ln75yRV0l/Qmbe8QKjR4wESw3s=; b=Qvj0vA5oza8vPTks1np2z8R49K
	AHu7VOUVgCp/UvkGL31MJCo08ZnKExG7uHT0NYqlQV2joycXbr9ueO8bNmgx63UaV1R3RI8LHZLdC
	qlxGlROrSs3jWU/OEFjbf5qEJKRt1OkeK6YsCBS4+JO2pOQHXAbtluU4UtRsv8L8ZfZl3+VTzqsvN
	xueC+1VLT37mEtA8BOtojnr4xMsXI4yU38bCY5Shzs1N3HlEw2aI2GjlQXhR5YIAtF1TOutSoSZSx
	C6ZKe9iOGbN7E5Bl87jEdA+6olJfCWsIHl94/q6f3dxbWl3BJ4xDyg3zLw9Dn2+ndfKgzjcXaSFxC
	EqhE6sVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtuS-00000000eyn-0IMG;
	Wed, 15 Apr 2026 06:39:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtuQ-00000000ey6-033D
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:39:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtuO-0007qm-BR; Wed, 15 Apr 2026 08:39:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtuO-005Szn-0X;
	Wed, 15 Apr 2026 08:39:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtuO-0000000Dq1P-0RkW;
	Wed, 15 Apr 2026 08:39:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413200330.1558038-1-a.fatoum@barebox.org>
References: <20260413200330.1558038-1-a.fatoum@barebox.org>
Message-Id: <177623517210.3298136.14214269041515291951.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 08:39:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_233934_052552_437C2906 
X-CRM114-Status: UNSURE (   6.95  )
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
Subject: Re: [PATCH] efi: gop: use screen_base directly instead of shadow
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 22:03:26 +0200, Ahmad Fatoum wrote:
> The EFI GOP protocol operates on the hardware framebuffer and calls
> fb_damage() to notify the driver of updates. Using fb_get_screen_base()
> would return the shadow buffer when enabled, causing GOP writes to go
> into the shadow instead of the actual framebuffer.
> 
> Do as the simplefb fixup does and use the screen_base.
> 
> [...]

Applied, thanks!

[1/1] efi: gop: use screen_base directly instead of shadow buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=0a0f91d20cd6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



