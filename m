Delivery-date: Tue, 16 Sep 2025 08:29:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPBt-003at4-1q
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 08:29:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPBt-0003u4-1u
	for lore@pengutronix.de; Tue, 16 Sep 2025 08:29:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Luf09Stv4XC1TVx+MaLmSFwzPL7PGOmThcBmZcydxP0=; b=dScizoRaA6VAgWh00BBVczH7/N
	xzKyjkra2TrNzGruDvsV3BjpXNOBLQVxfZ3UA3V/NVsnf4uQGhc2FB1TEmAcTvSaj/KXhAEEiYkuq
	JOZqhdnJIyE2SM5dZvDL8+I4QcZjOFB4F3KOHTYiCh73hg815ob4Z2x5uHGZW+74qnTtZuT7vsRII
	Oj6QjTVx9Eb9oQvZcqgAlIqoPpE0am8CAsN+NWAbwH/W0yReZ09YRbsRteAdetDBo3FiyF+Kg9tpW
	68dPZ7tSpOFIArOin8EBtG7x0gZEG0CcujK+u51U43gXF2NT0kaxzA4OH9mPQjtuZF6n0OZx4MqdE
	dvVm/mIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPBV-00000006uvC-46Oh;
	Tue, 16 Sep 2025 06:29:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPBT-00000006uuY-1Abz
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 06:29:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyPBR-0003mw-Rx; Tue, 16 Sep 2025 08:28:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyPBR-001Xit-2B;
	Tue, 16 Sep 2025 08:28:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyPBR-00000008bmz-2WvO;
	Tue, 16 Sep 2025 08:28:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250915144126.1828195-1-s.hauer@pengutronix.de>
References: <20250915144126.1828195-1-s.hauer@pengutronix.de>
Message-Id: <175800413759.2051874.10100536251737656158.b4-ty@pengutronix.de>
Date: Tue, 16 Sep 2025 08:28:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_232859_330748_71706EB5 
X-CRM114-Status: UNSURE (   5.12  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: k3-am62l: read MAC address from E-Fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Sep 2025 16:41:26 +0200, Sascha Hauer wrote:
> 


Applied, thanks!

[1/1] ARM: dts: k3-am62l: read MAC address from E-Fuse
      https://git.pengutronix.de/cgit/barebox/commit/?id=27764e8ee710 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



