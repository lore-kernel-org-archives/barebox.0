Delivery-date: Tue, 08 Apr 2025 07:08:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u21Cd-009qWh-0I
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 07:08:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u21Cc-0000k2-HG
	for lore@pengutronix.de; Tue, 08 Apr 2025 07:08:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wc2xArtX4Qr12L/P/tqadgjnYrThzYejy5TN1q/i9TQ=; b=RbDPC/i2XZJ10ezikDc8JxjdfJ
	D6rrzbv/8Fv8Rz89ah0oqgb1b68uj/VF6RaLJrhAC+qOVOX5n/XsaCapo7B0rAf5OprMK/eO1ZaHN
	QmsCnkzGcvW/+cN5/oZUAyK0VHstfhQBZmah0iPHNPHOnhIma+N/vDbU40Lvyq+TbqE+BvWfeUYbS
	fJpZMLC+FunCcUBdcQP7G08ae2I5wG0u9THBw1uqHfFUj4xMMU9VjVT7GQzWoior8Y9mZvFc8651b
	AjoSseVqXbVDOQrY8jRVAwimeePTUwZQkEv+h1G6nIPbhBu2/HOf7d7tsYVcjfSYMzMTPbFp20ztM
	l6sUavJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u21Bu-00000002kiq-3z08;
	Tue, 08 Apr 2025 05:08:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u21Br-00000002kiH-0Til
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 05:08:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u21Bp-0000WB-74; Tue, 08 Apr 2025 07:08:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u21Bp-003sR3-04;
	Tue, 08 Apr 2025 07:08:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u21Bo-002FvZ-35;
	Tue, 08 Apr 2025 07:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250407130549.2859220-1-s.hauer@pengutronix.de>
References: <20250407130549.2859220-1-s.hauer@pengutronix.de>
Message-Id: <174408888095.537691.10423740489431808106.b4-ty@pengutronix.de>
Date: Tue, 08 Apr 2025 07:08:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_220803_152423_C6D7ED7F 
X-CRM114-Status: UNSURE (   5.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: fix dryrun support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Apr 2025 15:05:49 +0200, Sascha Hauer wrote:
> The dryrun field set in the static initializer is immediately
> overwritten in bootm_data_init_defaults(), so the dryrun parameter ends
> up without effect. Set it after calling bootm_data_init_defaults().
> 
> 

Applied, thanks!

[1/1] blspec: fix dryrun support
      https://git.pengutronix.de/cgit/barebox/commit/?id=9ca3acf9b36a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



