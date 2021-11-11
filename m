Delivery-date: Thu, 11 Nov 2021 14:11:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ml9rT-0005Oc-IE
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 14:11:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ml9rS-0007iv-DO
	for lore@pengutronix.de; Thu, 11 Nov 2021 14:11:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ehr9etKDXWMrz1452n53WIxzc5ygdrPYhb2OSlhWzo=; b=ynycgt/YZN6P9A
	LdZMtt4T5XIlRKMtCrGCmuX0E1j/dWtKaGLskXvF7zN/YE/0FJXrxWrRERkapW3I3no7U072WTu0J
	xI8Yc89ts3TDrTGlgTFO9L6nEK7kiXBZM4RUn0wthL2QL+dUPUwkW7/RtGdPH3hIVa6QmzuxwIGRg
	K2vv6gIRsv8WhHXXs/eDsHQhg9NYAMSuHgoandTsKqrAQDR17q1wOKQkwxKQlhsOnWxbNWlC17F65
	V1aJr47sJ0/QZCqemfKvafU7g3yr4nANHv1swSDjkLFT1cUgvAVVI2SLRyIG0ZKZ0wOrHGXECO2Rq
	5Lq0rIwpUwFL9TpNBFjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ml9pY-007vlm-Ue; Thu, 11 Nov 2021 13:09:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ml9pT-007vl0-TS
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 13:09:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ml9pP-0007IC-7E; Thu, 11 Nov 2021 14:09:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ml9pO-0006NB-9f; Thu, 11 Nov 2021 14:09:18 +0100
Date: Thu, 11 Nov 2021 14:09:18 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
Message-ID: <20211111130918.GV25698@pengutronix.de>
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
 <20211102074048.GW25698@pengutronix.de>
 <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
 <20211104200222.GE25698@pengutronix.de>
 <CAMHeXxOfPsNPHzewPtUKZJ=7bR9ew-hanrokiBF0Cst_oQkcqQ@mail.gmail.com>
 <20211108091022.GK25698@pengutronix.de>
 <CAMHeXxNw1qOXS7X+_bE9h7SK5z80=DCsYMopDwJwGCmCe4ROtg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNw1qOXS7X+_bE9h7SK5z80=DCsYMopDwJwGCmCe4ROtg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:56:52 up 266 days, 16:20, 143 users,  load average: 0.23, 0.16,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_050923_975724_9D38BE14 
X-CRM114-Status: GOOD (  52.42  )
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

On Mon, Nov 08, 2021 at 02:01:58PM -0800, Trent Piepho wrote:
> On Mon, Nov 8, 2021 at 1:10 AM Sascha Hauer <sha@pengutronix.de> wrote:
> > On Thu, Nov 04, 2021 at 02:40:08PM -0700, Trent Piepho wrote:
> > >
> > > I think the specific situation you are concerned about is where:
> > > A) the dts does define a phy for usb
> > > B) This phy does not work in Barebox, e.g. no driver
> > > C) Despite B, USB will still operate with the desired level
> > > functionality without a working phy driver.
> > >
> > > With the patch and CONFIG_GENERIC_PHY disabled, we get a non-fatal
> > > return at step A and everything is good.  But once enabled, we now get
> > > a fatal error at step B and this is not good.
> > >
> > > Could this be fixed by making the error at B non-fatal?  This is more
> > > how Linux works here: errors that are non-fatal in Linux's
> > > phy_optional_get() path are fatal for Barebox.
> >
> > In Linux phy_optional_get() returns NULL (which is a valid phy) when
> > a) there is no "phys" property
> > b) The phy os compatible to "usb-nop-xceiv"
> > c) The phy has a status = "disabled" property
> 
> Add to this:
> d) Missing phy-names property.
> e) Named phy is not in phy-names.
> f) Malformed phys property.
> g) PHY's index from phy-names does not exist in phys property.
> h) PHY exists in phys property, but has empty phandle
> i) No '#phy-cells' property for phy.
> j) No of_node for device and phy is not in the global phy list. No
> driver, not defined, error adding, anything could cause this to
> happen.
> 
> And then we go to device specific cases:
> An Allwinner sun4i usb phy provider is given a phy index that is
> greater than the number of defined phys.
> A phy from a sun4i phy provider is marked as missing in the device
> configuration data, i.e. phy 1 or 2 on an Allwinner H6.
> A Broadcom stingray phy can not ioremap its registers with ENODEV.
> And the list goes on, but I think my point is made.

You are right, there are many more cases that lead to a -ENODEV which
causes phy_optional_get() to return a NULL phy. I don't think this is
intended and it doesn't make much sense to me.

> 
> > When there is a phy specified in the device tree then it's mandatory
> > and failures in getting it must lead to an error. the "optional" in
> 
> "Must lead to an error"  Can this be said with certainty?  I can find
> no real case where a warning results in a different end than an error.
> Put another way, suppose it does not lead to an error?  What specific
> bad thing happens?
> 
> > phy_optional_get() is only meant for the "there is no phy specified in
> > the device tree" case, it's only a shortcut for
> >
> >         if (is_there_a_phy_in_device_tree())
> >                 phy = phy_get();
> >         else
> >                 phy = NULL;
> 
> Perhaps that is what it was supposed to mean, I agree these seem like
> sensible semantics, but see the various errors I tracked down above,
> it's far far more complex than that.  IMHO, this complexity is
> evidence of a bad design.  No one can keep straight what errors are
> fatal and which are not.  It is better to just make all errors
> non-fatal and be done with it.  Then at least one knows what to
> expect.
> 
> > Once you interpret "optional" as something different you end up
> > returning NULL for cases where you really need a phy. Only you as a
> > human know that, in your special case, on your special board, there is a
> > phy specified, but it can do without initialisation. That's why I
> > suggested you should add a status = "disabled" property to the phy to
> > explicitly state that it can work without the phy. By making it explicit
> > you also document that you thought about the case and not just exploited
> > a heuristic in barebox.
> 
> I think returning NULL on every error, with a warning message, will
> allow this.  The warning lets the user know there may be an issue with
> the usb phy.  If it works, they can decide the warning is spurious and
> silence it, via existing dts editing methods (/delete-property/,
> status = disabled, etc.).  If it doesn't work, they know they need to
> enable a driver, write a driver, or perhaps disable USB entirely as
> unsupported.

Given that phy_optional_get() returns rather random results I tend to
agree now. Let's insert a warning, return successfully and see what
happens.

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

