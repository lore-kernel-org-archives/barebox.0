Delivery-date: Thu, 22 Sep 2022 12:08:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obJ8E-00C5Pk-32
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 12:08:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obJ8C-0001eQ-Af
	for lore@pengutronix.de; Thu, 22 Sep 2022 12:08:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bwNVs5kCe60sMnQXuZ9napjXz00KOSJkNQuvs9mE0+E=; b=l6e5cLBs1qEegWcZoC1c6a4L74
	a1fnrtwjNrZ04YzkCeUCfBHjdYuc9LBG2o/gIgTezE+Om9JVZ9LUEQy8Fw3mt+6WmI9w0fwkXkaN7
	Qh+D+Q1QvM03wOp1HWWpiOzjI2b/wKFru1Cb5mn3ibsP5GRUa16C/dGSfzrM7CB5iP1y2UY8zeQ6l
	xtVYRhj9reRjFabmf88s2qW1SB20ffgrs/1RKgTexGnOYla42qaiwIMIaqaDN0hRriw2dhMt6QXty
	5tX/ObJEQU5uiLzc7yk3TiRykzC9Ve2ACpCi9AcAAdF664hRWuPACdVuXkZgC3tl5c3JM0c8lxKSJ
	ULa+28qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJ6l-00ElvG-HF; Thu, 22 Sep 2022 10:07:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obIhs-00EWJD-0W
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 09:41:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obIhn-0005gh-Sj; Thu, 22 Sep 2022 11:41:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obIhn-0006Y9-Hv; Thu, 22 Sep 2022 11:41:15 +0200
Date: Thu, 22 Sep 2022 11:41:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220922094115.GK986@pengutronix.de>
References: <20220916124942.3751131-1-s.hauer@pengutronix.de>
 <20220916131606.GZ6477@pengutronix.de>
 <CAMHeXxOuxZnVcavXvwi1Y13kfRBP+opRgqwyEvSGBjQK6dSX1A@mail.gmail.com>
 <20220920074120.GF6477@pengutronix.de>
 <CAMHeXxPJoHO6_eL9sf-_Fu+oqJQv278f9D8RifBkG2YV_yYYmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMHeXxPJoHO6_eL9sf-_Fu+oqJQv278f9D8RifBkG2YV_yYYmw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_024120_106331_465B26B3 
X-CRM114-Status: GOOD (  30.77  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: Bring up all interfaces before going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 20, 2022 at 02:47:07AM -0700, Trent Piepho wrote:
> On Tue, Sep 20, 2022 at 12:41 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Sep 19, 2022 at 10:20:53AM -0700, Trent Piepho wrote:
> > > On Fri, Sep 16, 2022 at 6:16 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > >
> > > > We could make the user experience even a bit better by doing this call
> > > > before waiting for the autoboot timeout which then speeds up netboot a
> > > > bit.
> > >
> > > The Linux phy driver almost invariably does not bother to avoid
> > > resetting the network phy when not necessary.  So if network
> > > auto-negotiation is started in barebox, it will be reset and then
> > > restarted shortly after in Linux.  The link auto-negotiation impacts
> > > the LAN's spanning tree if that is in use.
> > >
> > > So there is a drawback, besides the small added boot time to
> > > initialize the network hardware, to adding an unneeded network restart
> > > in Barebox in the case where interactive mode is not entered and
> > > network boot is not used.
> >
> > So is this a vote to only do the autonegotiaton when going interactive
> > in barebox, or a vote to do autonegotiation only when the network is
> > being used in barebox?
> 
> I would vote to only do it when going interactive.

I changed the behaviour accordingly.

> 
> It also seems reasonable to bring the network up quickly when network
> booting, but I think determining if the system will network boot,
> before actually trying to boot, is probably unreasonably difficult to
> do.

I don't know how we could determine if we are going to do a network
boot.
We could do the network initialisation earlier based on some globalvar
like Marco suggested, but currently I do not have enough motivation to
implement it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


