Delivery-date: Tue, 27 Jan 2026 08:35:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdbQ-005owB-0L
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:35:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdbP-0002ge-4m
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:35:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=auynN7H1WuKloVFlN1aN6vzxITrh7iJO8nZBM/kO080=; b=LF8okCSgExXK00ot8hXRnNzOIK
	1YkToRS1A1RUZ/X2r6ySqAcHJMFe8qWvXxfZHVz/pK7yy/5A3I5WBi1MlHXkuTc0lrIZU8bC9WO/u
	aSuU4S3RxjZOXyOn5I0e8aSqW+iO6t2M/t3KeS4B7S/kfJMWiEAk7LPSuEcVTrytbnPPw+uehi4mr
	gRUywF1VprdNLoLjbtQywIBmJvQn01aiHZIieGm2DI6GKqyoaVReMsUoHzs/96b9p5lVLmcg5QcqG
	kkVI2x34WPq9cgJfAN7RhOjc2BHOd1ft6FexpR2fvXvr7BF7xfSh5pUe4c6kHE00TtNDxrvB4IWso
	q/izClTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdb3-0000000Dmoq-1MCt;
	Tue, 27 Jan 2026 07:34:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdb1-0000000DmoU-0Ffg
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:34:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdaz-0002d6-CI; Tue, 27 Jan 2026 08:34:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdaz-002iF0-2m;
	Tue, 27 Jan 2026 08:34:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdaz-00000006Nf7-2Xe4;
	Tue, 27 Jan 2026 08:34:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126105606.1887423-1-a.fatoum@pengutronix.de>
References: <20260126105606.1887423-1-a.fatoum@pengutronix.de>
Message-Id: <176949928113.1520664.15100729148807164998.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:34:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_233443_105033_99F0262E 
X-CRM114-Status: UNSURE (   6.67  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] KASan: turn warning into panic if
 CONFIG_BUG_ON_DATA_CORRUPTION=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:56:05 +0100, Ahmad Fatoum wrote:
> Especially for use during automated testing, it's useful to have barebox
> panic on KASAN issues.
> 
> Let's do so when CONFIG_BUG_ON_DATA_CORRUPTION=y.
> 
> 

Applied, thanks!

[1/1] KASan: turn warning into panic if CONFIG_BUG_ON_DATA_CORRUPTION=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=41924a330054 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



