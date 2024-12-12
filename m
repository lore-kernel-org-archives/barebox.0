Delivery-date: Thu, 12 Dec 2024 10:07:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLfAZ-00784M-0C
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 10:07:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLfAZ-0000Xo-01
	for lore@pengutronix.de; Thu, 12 Dec 2024 10:07:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sLiBT9D7pQ84nroEmaixUmvjubJ67zpFEIVtp/a3Xq4=; b=KkBKu3+HapqObVciUoPF8qYgrR
	QBamhuNeXVpCOIIPHXwy5ReOcXqgB3XIpZU8AHg+GfMupIsWRpU1yyLSv76QYiYMJ5cwvNSmPGb4z
	MFBi0sItG0QU3oiq1PSa9oPKR7kgTOW5XqQE7wJK78jAOlbJYFNaCnOV0YA5X7hIL6Si0nUpNckxh
	076c4q4Oo6Jk21mmAnKJImx0OnSgIevTbHSJVhcSW6lJyNJSMvJRB1GvgHfHpgfmWfibaOiYPrGpT
	Co8Yx9saQCmk085gLze4VJpu7jGGx7QspOH7ogbklB+NS+s8BfdxKXY8kzC0atJZUqbECUwbvV3gy
	+zm+6Hrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLfA6-0000000HQTl-3xJa;
	Thu, 12 Dec 2024 09:07:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLfA3-0000000HQT6-3jAZ
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 09:07:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLfA2-0000OX-PB; Thu, 12 Dec 2024 10:07:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLfA1-0030RK-0b;
	Thu, 12 Dec 2024 10:07:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLfA1-00GIzM-2t;
	Thu, 12 Dec 2024 10:07:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, Dang Huynh <danct12@riseup.net>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20241203-pt2-init-v2-1-d6c625e1e455@riseup.net>
References: <20241203-pt2-init-v2-1-d6c625e1e455@riseup.net>
Message-Id: <173399442589.3885759.5664845669793486076.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 10:07:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_010707_929876_8B52AF8C 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: rockchip: Add support for Pine64 PineTab 2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Dec 2024 17:24:09 +0700, Dang Huynh wrote:
> The Pine64 PineTab 2 tablet is basically the Quartz64 but as
> a finished product.
> 
> There are (currently) two revisions, v0.1 and v2.0.
> 
> v0.1 was sent to developers and there are a few units around
> (probably less than 10?)
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: Add support for Pine64 PineTab 2
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f3cc21bf254 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



