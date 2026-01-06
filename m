Delivery-date: Tue, 06 Jan 2026 08:47:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1mq-001oij-3D
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:47:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1mq-0006bW-7Y
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:47:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5H5ZpXFYXHYNnrY5feowcFjDX+i1GvujeSeQ6tC8lyM=; b=TP1MjyJPQk4b+lInmAT0ei/hp+
	z3ODwiBsJd6qzWo6DG3+0dbpmg5pqBgQQAOzZifrIznNrrVDWFIJZqo/Wp7Mm0mgSKBLkWs/8/ecd
	4tc+/p/o1oArMaDhKDFxm7BTXgo8Fs8SKCtJwLwTK0BNQfKB2rH5JaGpZO5+i7dV9tIshGh1YXze+
	jDtdaq5Ws2vVHKat4Ng8QrqUphdhqwFnTA9whsRsu8vL3blJ5VB+wGtdyTfxvCTnlsGNxTA6ZnRA/
	2RTzQ5AQRwbaDwE4IZETWD+3sPUfDus0ogS7aucgSZQ5ToxioCyQqaCW7h3hOgZlo1MaxRMxS99Pd
	gtYirYLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1mM-0000000CXxI-0sXW;
	Tue, 06 Jan 2026 07:46:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1mI-0000000CXuU-4AmJ
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:46:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1mH-0006Qq-Ja; Tue, 06 Jan 2026 08:46:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1mH-009JKb-1J;
	Tue, 06 Jan 2026 08:46:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1mH-0000000894b-1StH;
	Tue, 06 Jan 2026 08:46:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
References: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
Message-Id: <176768561334.1941488.14252429996068812797.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:46:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_234655_047547_2560493C 
X-CRM114-Status: UNSURE (   5.99  )
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
Subject: Re: (subset) [PATCH 0/4] i.MX6 Riotboard related patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 11:44:57 +0100, Sascha Hauer wrote:
> These are patches I came up with while using the i.MX6 Riotboard.
> 
> 

Applied, thanks!

[3/4] gpio: Fix GPIOD_ASIS flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=6436a1dc83dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



