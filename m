Delivery-date: Thu, 07 May 2026 10:05:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtjo-001tP2-3A
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:05:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtjj-0006oE-0h
	for lore@pengutronix.de; Thu, 07 May 2026 10:05:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=Mw1UagiR9eDzwpVELdWslZYOJ6SRJk0Wi1Y9JPqubk4=; b=FsoLeR9jMHpMPT1cBCeIupRKJ1
	FnU7Q4Qmdij5uGs/O5ph3EWNBdnMOTCpreh8bH2oXRRkbIWWKT1fiL4nVL6Dtu2v8ZOAJl/71++j4
	K0re3itrGLUqcFI1jyec8/aSjz+w6seIN8W3/j/1kQVA5LUQMN+qSLkGlyVbYPR4lwnlrtGhOrD5Z
	JFTr5RAsf2TZrTIy8FoyqYQQNvoM49/ZCf1Vfkhnu05pOhYShz3geQMeUHau+9wrT6z4dvH2A8OBc
	daa6MIw0mqe9wvjNt3emD7I9u6QPrUU/A9J/9mNTvh2Z4q6uh1Swp/5IqqO5esUWOZS5CkgTowlLz
	wVJ9I4aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKthS-000000035hd-3K5m;
	Thu, 07 May 2026 08:03:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKthP-000000035gg-0Jbc
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:03:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wKthL-0005Nv-Pj; Thu, 07 May 2026 10:03:07 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wKthL-000soQ-0U;
	Thu, 07 May 2026 10:03:07 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wKthL-00000005iSp-239c;
	Thu, 07 May 2026 10:03:07 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: 79ed02bc-045d-4e0b-a1a4-0158787cb39c@pengutronix.de
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 May 2026 08:03:07 +0000
Message-Id: <E1wKthL-00000005iSp-239c@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_010311_118853_4184DDF1 
X-CRM114-Status: GOOD (  17.13  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, "Claude Opus 4.7" <noreply@anthropic.com>, Sascha
 Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] mci: rockchip-dwcmshc: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-07 09:47, Ahmad Fatoum wrote:
> Hi,
>=20
> On 5/7/26 9:02 AM, Sascha Hauer wrote:
> > At least on RK3588 the dwcmshc core doesn't have an internal clock
> > divider, we fully rely on the clock tree to configure the MMC clock.
> > By default the clock comes from the 24MHz oscillator. For higher MMC
> > clocks we have to reparent to a PLL clock, but if we do this once the
> > 6bit divider iss not enough to scale down to the 400kHz MMC
> > initialization clock. This means we must dynamically reparent the clock.
> > This series adds support for finding the best divider/mux combination
> > for composite clocks.
> >=20
> > This series also adds some fixes to the dwcmshc driver which used to
> > timeout on writing sometimes.
>=20
> \o/
>=20
> How much faster was the reading now in your testing?

I now reach 120MB/s compared to 20MB/s before.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


