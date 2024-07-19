Delivery-date: Fri, 19 Jul 2024 08:21:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh06-000kdt-1O
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:21:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh05-0006bd-T4
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:21:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AoD27ylDS3v+XSkimYT7HRc01XU7S82wNmpned/KOoA=; b=F1LiPjViJmnyTXS3KvydiPCq0M
	50D1mqeuaxZCLm5vl1FS4glw1dF5sj315hBnrLFGggMJh+OnsiFmuciG8yDgddAmsqIcQBrodZibS
	weQ85f7fdYSKqGcgJoRM9ClYMEkSP0AtYXZEE+Dk/Vo56nFu1bQ3YovLBiLm/Pmk9K/hAkHVEtaln
	gJP47Fa4ckIIH8ABuyZnOlfEkkaQfDScBpweII1Q9famMvviE6jQSlYBVH/K9SoSdWLu3x8zyVgTM
	9fdSQ8O8L5aWzGH8nf+C6zsREfw2EzCtOmyfB0UCogagF0ORxI/1ZKu2bFwpoaLJIiMk7CLI4JWL8
	YGnZWeTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUgzh-00000001nMX-3ePs;
	Fri, 19 Jul 2024 06:21:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUgzf-00000001nLv-06Lx
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:21:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUgzd-0006VQ-O1; Fri, 19 Jul 2024 08:21:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUgzd-000cY4-As; Fri, 19 Jul 2024 08:21:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUgzd-002PXS-0r;
	Fri, 19 Jul 2024 08:21:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716115621.1953788-1-a.fatoum@pengutronix.de>
References: <20240716115621.1953788-1-a.fatoum@pengutronix.de>
Message-Id: <172137008526.574803.10155248640410149992.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:21:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_232127_098694_BA40294B 
X-CRM114-Status: UNSURE (   6.96  )
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
Subject: Re: [PATCH] aiodev: mc13xxx_adc: zero-initialize struct aiochannel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 13:56:21 +0200, Ahmad Fatoum wrote:
> The mc13xxx_adc driver is the only driver that doesn't allocate the
> channels from pre-zeroed memory. The aiodev core doesn't currently
> require it, but we may want to in the future, so let's explicitly
> zero the channel like all other drivers do.
> 
> 

Applied, thanks!

[1/1] aiodev: mc13xxx_adc: zero-initialize struct aiochannel
      https://git.pengutronix.de/cgit/barebox/commit/?id=c331aa78d69d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



