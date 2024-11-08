Delivery-date: Fri, 08 Nov 2024 14:00:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9ObJ-006KM1-0z
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:00:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9ObJ-0001RB-TD
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:00:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b20yz5xpeix/oOj/spLPXasoYvaGqm4u9uEyOpi7F/E=; b=gmzCbyZ71Ec34pm7X2gaaahMr2
	lTAa+dQBcLS4Qsfu3kWlVrCLIrDOGjtBpHSgvVEQ+hJCZPeuY7GbeSGkqgVWLsCv7ScGg62aeTClx
	kT2kGIF6IOqngj96mo5dfHfll4KRR2j287pR5qWeOYmHWax81QD/BXZ3K5tjjr5J/LFoznyyuWbw0
	PqJEEwkoDguz5FiuEl6mua84iuBT+yPwHCNNuHtx5rWvC9cI8NFkP5c/rUj3Il268QUKG3rFPhnq3
	nc4ymMHWC9d3MgkHT2yRk/71otpHczcOJ7mHQTe4xeDFABkMMKcefnXuzp+B/Gv+5OkJhUbDH0Hqa
	bh4COCBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Oaj-0000000AbWn-1tum;
	Fri, 08 Nov 2024 12:59:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Oag-0000000AbVm-1Sng
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 12:59:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t9Oae-0001Fc-W9; Fri, 08 Nov 2024 13:59:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t9Oae-002cf7-2a;
	Fri, 08 Nov 2024 13:59:52 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t9Oae-000ANl-2H;
	Fri, 08 Nov 2024 13:59:52 +0100
Date: Fri, 8 Nov 2024 13:59:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <Zy4LSAP1EC_yQHH6@pengutronix.de>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-4-jmaselbas@zdiv.net>
 <Zy3qa6TIqOYksP1K@pengutronix.de>
 <D5GR0OVKQLUS.3MJMS7VQJ356L@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D5GR0OVKQLUS.3MJMS7VQJ356L@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_045954_409783_C1785FD3 
X-CRM114-Status: GOOD (  29.65  )
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
Subject: Re: [PATCH 3/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 08, 2024 at 12:08:45PM +0100, Jules Maselbas wrote:
> Hi Sascha,
> 
> On Fri Nov 8, 2024 at 11:39 AM CET, Sascha Hauer wrote:
> > Hi Jules,
> >
> > On Thu, Nov 07, 2024 at 03:57:19PM +0100, Jules Maselbas wrote:
> > > Clock driver adapted from Linux.
> > > The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.
> >
> > From which driver did you adapt this from? I tried copying
> > drivers/clk/sunxi-ng/ccu-sun50i-a64.c from Linux over your driver and it
> > looks quite different.
> Yes this is adapted from drivers/clk/sunxi-ng/ccu-sun50i-a64.c, but it is very
> different. This is a very stripped down version. I wanted to avoid having to
> porting all the clock/gate/div code for sunxi and use as much as possible the
> one available in barebox.
> 
> > Would it be possible to get closer to the Linux driver? This would pay
> > off once we want to do an update from Linux.
> Humm...
> I could try to get it closer, i would like to not having to copy all the ccu*
> drivers, but maybe i could define barebox version of SUNXI_CCU_* macros

In my experience Linux clk drivers fit quite nicely into barebox when
just blindly throwing the code into it. I haven't got any experience
with the allwinner clk code though, so your mileage may vary.

Putting the (mostly) unmodified versions into barebox has the advantage
that updating from Linux is easy and adding new SoC support is easy as
well.

That said, it's fine to have heavily modified ckl driver versions in
barebox and we can try that if you like. We can always revisit this
decision should we have to.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


