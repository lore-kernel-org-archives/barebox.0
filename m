Delivery-date: Mon, 08 Nov 2021 10:12:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk0hE-00088p-P0
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 10:12:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk0hD-0005Qm-K1
	for lore@pengutronix.de; Mon, 08 Nov 2021 10:12:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cP4FZKeFE29SfjyohCGrvBfswcYd9In2mbQzOT+wLQQ=; b=EU1KA/IUscBIr1
	mE/2Va0mwht6fc5Xq90uhk03yMxQm+KtZeqHqeEhz4i7cIfXJ/p2Arkr2jd6EyfZp3nklujeW33iF
	ix7RG+hX92ykHLp6AzL81wJYZ6nYtskjFAyfzNyJkkYzJdvJoVGZlZ64grtFxCmt2HpA7jE4btpGn
	kmt5C0oqhalVpunFKZ5vOgx6cWDMy5f5NfI8mhPNZQ4KzoaGu4jXJ8PbyzHGbR+V2fWvXMSDPoo8Q
	I22ro2dBvyfaQwBUTmeoI2Z3cR2KH2/gKtVbR+n1P4vweTYWsbyl0DXDLmsksi6NrvBePShmsWT2G
	frI8jE3RfCmZLXeeVYiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk0fe-00Fpwh-6e; Mon, 08 Nov 2021 09:10:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk0fZ-00Fpvx-0S
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 09:10:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mk0fX-00050Q-7z; Mon, 08 Nov 2021 10:10:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mk0fW-00029H-An; Mon, 08 Nov 2021 10:10:22 +0100
Date: Mon, 8 Nov 2021 10:10:22 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
Message-ID: <20211108091022.GK25698@pengutronix.de>
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
 <20211102074048.GW25698@pengutronix.de>
 <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
 <20211104200222.GE25698@pengutronix.de>
 <CAMHeXxOfPsNPHzewPtUKZJ=7bR9ew-hanrokiBF0Cst_oQkcqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxOfPsNPHzewPtUKZJ=7bR9ew-hanrokiBF0Cst_oQkcqQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:58 up 263 days, 12:11, 133 users,  load average: 0.42, 0.79,
 0.59
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_011025_085074_E8635733 
X-CRM114-Status: GOOD (  51.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 04, 2021 at 02:40:08PM -0700, Trent Piepho wrote:
> On Thu, Nov 4, 2021 at 1:02 PM Sascha Hauer <sha@pengutronix.de> wrote:
> > On Wed, Nov 03, 2021 at 03:35:08PM -0700, Trent Piepho wrote:
> > > On Tue, Nov 2, 2021 at 12:40 AM Sascha Hauer <sha@pengutronix.de> wrote:
> > > >
> > > > On Mon, Nov 01, 2021 at 11:33:07AM -0700, Trent Piepho wrote:
> > > > >    On Mon, Nov 1, 2021 at 2:01 AM Sascha Hauer <[1]sha@pengutronix.de> wrote:
> > >  >    >
> > > > >    > The phy is only optional as long as none is specified in the device
> > > > >    > tree. When there is one specified then it's no longer optional. We can't
> > > > >    > do the right thing here without checking the device tree. Given that
> > > > >    > it's simple to enable CONFIG_GENERIC_PHY I think this is the way to go.
> > > > >
> > > > >    But this force enables GENERIC_PHY when it's not needed.
> > > > >
> > > > >    There are commonly many device nodes in Linux dts files that are not used
> > > > >    by an enabled Barebox driver.  It's normal to turn off a driver that might
> > > > >    be or could be used.  Is it necessarily an error if a phy is present in
> > > > >    the dts but we don't wish to include support for it?
> > > >
> > > > We need to distinguish the cases "There is a phy specified, but the
> > > > reset defaults are good enough to go without a driver" and "There is a
> > > > phy specified and we need driver support for it". barebox can't know
> > > > this.
> > >
> > > Could we say that compiling barebox without CONFIG_GENERIC_PHY means
> > > the driver is not needed and compiling it with the driver means that
> > > is it?
> >
> > Please no. Enabling Kconfig options ideally gives you additional
> > features, but it should not break anything. Consider the case when you
> > need to enable CONFIG_GENERIC_PHY for something else like an LVDS phy or
> > whatever, you don't want to end up with broken USB support then and have
> > to choose whether USB or LVDS is working.
> 
> I thought your goal was to prevent less experienced users from
> building a non-functional Barebox and then not understanding what they
> had done.  Turning off a necessary driver and breaking USB while
> producing no warnings nor errors.  But I now gather I was mistaken and
> this isn't really the problem.
> 
> I think the specific situation you are concerned about is where:
> A) the dts does define a phy for usb
> B) This phy does not work in Barebox, e.g. no driver
> C) Despite B, USB will still operate with the desired level
> functionality without a working phy driver.
> 
> With the patch and CONFIG_GENERIC_PHY disabled, we get a non-fatal
> return at step A and everything is good.  But once enabled, we now get
> a fatal error at step B and this is not good.
> 
> Could this be fixed by making the error at B non-fatal?  This is more
> how Linux works here: errors that are non-fatal in Linux's
> phy_optional_get() path are fatal for Barebox.

In Linux phy_optional_get() returns NULL (which is a valid phy) when
a) there is no "phys" property
b) The phy os compatible to "usb-nop-xceiv"
c) The phy has a status = "disabled" property

All other errors are fatal.

When there is a phy specified in the device tree then it's mandatory
and failures in getting it must lead to an error. the "optional" in
phy_optional_get() is only meant for the "there is no phy specified in
the device tree" case, it's only a shortcut for

	if (is_there_a_phy_in_device_tree())
		phy = phy_get();
	else
		phy = NULL;

Once you interpret "optional" as something different you end up
returning NULL for cases where you really need a phy. Only you as a
human know that, in your special case, on your special board, there is a
phy specified, but it can do without initialisation. That's why I
suggested you should add a status = "disabled" property to the phy to
explicitly state that it can work without the phy. By making it explicit
you also document that you thought about the case and not just exploited
a heuristic in barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

