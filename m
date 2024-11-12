Delivery-date: Wed, 13 Nov 2024 22:04:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBKWx-001Zl4-1n
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 22:04:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBKWw-0003wF-VG
	for lore@pengutronix.de; Wed, 13 Nov 2024 22:04:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:Reply-To:
	Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=hoBWjDDQMvpcebxAzbbRcTqFs+xIbCuCcC7UwvhYpfQ=; b=n/nm0DwLh978KDIQs+8i0i1Ia4
	jirVs7Mw5iDycQA4H40tTgSk8/B/7SORgiq5dMuw+HfcNJmSQHhsTYPo60PqEMLn5l650KClPPsIn
	LH8z5FNlsRtdesFMKkRqPJEPa6B6sKz0r7c7Ke92ZHPud+fSND1iZq3xmlMIH9hsModApTCDcbc01
	Ym23kHkn2/OR7gCyr62Wx69PqZWeu6Z8KqHYz5Bn/sRhdvV1V58RL+NpBNuk5wSLUPAFK6eotdEAP
	3eui3zUd/3NSJm32uZFFAVk8bNoqDoyU3DC9PyxzhG9Eys0wuCegiF3p/9H6QgMJ1FsVD1Q6D90Hk
	6wNZ7YIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBKWG-000000081PW-1h9X;
	Wed, 13 Nov 2024 21:03:20 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBKWC-000000081Oy-3ECv
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 21:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1731531790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:resent-to:
	 resent-from:resent-message-id:in-reply-to:in-reply-to:  references:references;
	bh=hoBWjDDQMvpcebxAzbbRcTqFs+xIbCuCcC7UwvhYpfQ=;
	b=jguApc15/zX7W3xiHJSKfynMdsDNhYs0Me+Myojd1fzdba9nQbTZQKGBTPBL7EbOSCvcwf
	E138gyQijlmWaLg9TM7bWPUl+y+rtvFIXruKsLL9taJXOoIhiQ65ikcbhUoVkGp1aNPWNu
	peDX+wHmw/o2l0FtAD45ad6JYcnszZxLK5MNQFWoVE9fI44oFEEbiS87G7Spo3NPmOwVYW
	/MR9nApohh1jF/2Pq1TqSyK/dbZznL8JF9VZK+XYAEKUOlnQm+NxGUbx5xLOuLLXnBykbK
	gJDmE3JrMeE+mSPzYDtNYcFDM//qQF4MDiNvPGb90iRbakiWiY8Fca/bOVwhdg==
Received: from localhost (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id b152f9f6 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <barebox@lists.infradead.org>;
	Wed, 13 Nov 2024 22:03:10 +0100 (CET)
Resent-From: "Jules Maselbas" <jmaselbas@zdiv.net>
Resent-Date: Wed, 13 Nov 2024 22:03:10 +0100
Resent-Message-ID: <D5LCSJ09YMHQ.2T699FOCCFSDV@zdiv.net>
Resent-To: barebox@lists.infradead.org
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 12 Nov 2024 16:58:49 +0100
Message-Id: <D5KBOYOWSVP6.N4RAVEQKZM4U@zdiv.net>
Cc: <barebox@lists.infradead.org>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>
X-Mailer: aerc 0.18.2
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-4-jmaselbas@zdiv.net>
 <Zy3qa6TIqOYksP1K@pengutronix.de> <D5GR0OVKQLUS.3MJMS7VQJ356L@zdiv.net>
 <Zy4LSAP1EC_yQHH6@pengutronix.de>
In-Reply-To: <Zy4LSAP1EC_yQHH6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_130317_139453_ADF64392 
X-CRM114-Status: GOOD (  26.93  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

resent, as i forgot barebox ml in CC

On Fri Nov 8, 2024 at 1:59 PM CET, Sascha Hauer wrote:
> On Fri, Nov 08, 2024 at 12:08:45PM +0100, Jules Maselbas wrote:
> > Hi Sascha,
> >
> > On Fri Nov 8, 2024 at 11:39 AM CET, Sascha Hauer wrote:
> > > Hi Jules,
> > >
> > > On Thu, Nov 07, 2024 at 03:57:19PM +0100, Jules Maselbas wrote:
> > > > Clock driver adapted from Linux.
> > > > The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.
> > >
> > > From which driver did you adapt this from? I tried copying
> > > drivers/clk/sunxi-ng/ccu-sun50i-a64.c from Linux over your driver and=
 it
> > > looks quite different.
> > Yes this is adapted from drivers/clk/sunxi-ng/ccu-sun50i-a64.c, but it =
is very
> > different. This is a very stripped down version. I wanted to avoid havi=
ng to
> > porting all the clock/gate/div code for sunxi and use as much as possib=
le the
> > one available in barebox.
> >
> > > Would it be possible to get closer to the Linux driver? This would pa=
y
> > > off once we want to do an update from Linux.
> > Humm...
> > I could try to get it closer, i would like to not having to copy all th=
e ccu*
> > drivers, but maybe i could define barebox version of SUNXI_CCU_* macros
>
> In my experience Linux clk drivers fit quite nicely into barebox when
> just blindly throwing the code into it. I haven't got any experience
> with the allwinner clk code though, so your mileage may vary.

Allwinner clk driver doesn't uses any common clk such as generic div/mux/ga=
te,
but redefines a lot of different small clk driver.

I tried to port the Allwinner clk into barebox, but it requires some change=
s:
 - get_parent function signatures doesn't match barebox's callback signatur=
es
 - include <linux/delay.h> is missing and should include clock.h
 - clk drivers uses `struct notifier_block` which isn't supported
 - clk drivers uses get_rate_range which isn't supported either

> Putting the (mostly) unmodified versions into barebox has the advantage
> that updating from Linux is easy and adding new SoC support is easy as
> well.
>
> That said, it's fine to have heavily modified ckl driver versions in
> barebox and we can try that if you like. We can always revisit this
> decision should we have to.

I think that right now i don't have the energy to look further into porting
the Linux sunxi clock code to barebox.
I am fine with keeping this modified clk driver.
However, i would like for the V2 to put some functions into a common file
so they can be shared with other sunxi SoC.

Jules



