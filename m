Delivery-date: Thu, 04 Nov 2021 21:03:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miixj-0000f4-Mt
	for lore@lore.pengutronix.de; Thu, 04 Nov 2021 21:03:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miixi-0003rg-Mi
	for lore@pengutronix.de; Thu, 04 Nov 2021 21:03:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIiYsC1XwTrUxi9zEWaxM7S8dCQaQO2gZ7K00K4i00U=; b=p10WWgqkOyWKOm
	zx87diFVGZeY9PthaYJHexFI/0lxlU/f4R4AGgqgAW7P49LK/y5rqxiN/fleVF7wtqkxJNEX9SJvp
	fhmczmD+fbx3NuI8qF6SpeinigmekOsOd975vBWJgI7B/T+DYGJcJ2PUtD57ByaBiVjL1cWNnWzHR
	72r7KIN+UqDjgh96KUaGDhh+3AajfiZ72C0jsV6iJMbUfGHXq+Cgt4zcH0Vn1b7ECMtvGk5+rpbHm
	8TUdk8DWQyPbP4wncNqNySNcBoEtQg47MMCFgeK4/NHY2O6s3465euLgpVN/7U7vHwN8Pla7Kvy+5
	5kcKAiYUxMh696VxiOyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miiwP-009ueI-W8; Thu, 04 Nov 2021 20:02:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miiwK-009udq-Of
 for barebox@lists.infradead.org; Thu, 04 Nov 2021 20:02:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1miiwI-0003mH-Rj; Thu, 04 Nov 2021 21:02:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1miiwI-00079H-8Y; Thu, 04 Nov 2021 21:02:22 +0100
Date: Thu, 4 Nov 2021 21:02:22 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
Message-ID: <20211104200222.GE25698@pengutronix.de>
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
 <20211102074048.GW25698@pengutronix.de>
 <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:55:50 up 259 days, 23:19, 117 users,  load average: 0.09, 0.08,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_130224_835677_B5300546 
X-CRM114-Status: GOOD (  53.70  )
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

On Wed, Nov 03, 2021 at 03:35:08PM -0700, Trent Piepho wrote:
> On Tue, Nov 2, 2021 at 12:40 AM Sascha Hauer <sha@pengutronix.de> wrote:
> >
> > On Mon, Nov 01, 2021 at 11:33:07AM -0700, Trent Piepho wrote:
> > >    On Mon, Nov 1, 2021 at 2:01 AM Sascha Hauer <[1]sha@pengutronix.de> wrote:
>  >    >
> > >    > The phy is only optional as long as none is specified in the device
> > >    > tree. When there is one specified then it's no longer optional. We can't
> > >    > do the right thing here without checking the device tree. Given that
> > >    > it's simple to enable CONFIG_GENERIC_PHY I think this is the way to go.
> > >
> > >    But this force enables GENERIC_PHY when it's not needed.
> > >
> > >    There are commonly many device nodes in Linux dts files that are not used
> > >    by an enabled Barebox driver.  It's normal to turn off a driver that might
> > >    be or could be used.  Is it necessarily an error if a phy is present in
> > >    the dts but we don't wish to include support for it?
> >
> > We need to distinguish the cases "There is a phy specified, but the
> > reset defaults are good enough to go without a driver" and "There is a
> > phy specified and we need driver support for it". barebox can't know
> > this.
> 
> Could we say that compiling barebox without CONFIG_GENERIC_PHY means
> the driver is not needed and compiling it with the driver means that
> is it?

Please no. Enabling Kconfig options ideally gives you additional
features, but it should not break anything. Consider the case when you
need to enable CONFIG_GENERIC_PHY for something else like an LVDS phy or
whatever, you don't want to end up with broken USB support then and have
to choose whether USB or LVDS is working.

> 
> One can have the defconfig include drivers that might be needed, but
> at some point an engineer ought to be able to
> 
> > Returning NULL from the phy_optional_get() stub has another problem:
> > Some devices might work with CONFIG_GENERIC_PHY disabled, but stop
> > to work when CONFIG_GENERIC_PHY gets enabled, because we might have
> > no driver for the phy. Having boards that only work with CONFIG_GENERIC_PHY
> > disabled is rather unexpected as well.
> 
> Return NULL if there is no driver.
> 
> > >    struct phy *phy_optional_get(struct device_d *dev, const char *string)
> > >    {
> > >            if (dev->device_node &&
> > >                !of_parse_phandle_with_args(dev->device_node, "phys",
> > >    "#phy-cells", of_property_match_string(dev->device_node, "phy-names",
> > >    string), NULL))
> > >                    dev_warn(dev, "%s phy specified in device tree but
> > >    CONFIG_GENERIC_PHY support is not enabled", string);
> > >            return NULL;
> > >    }
> >
> > I am fine with this approach. We could add a check if the phy node has a
> > status = "disabled" property. That would allow a board to explicitly
> > state that we do not need to support a phy. We could then do the
> > right thing no matter if CONFIG_GENERIC_PHY is enabled or not.
> >
> > Thinking about it I would prefer something like barebox,status = "disabled"
> > to prevent the property from leaking into Linux.
> 
> Wouldn't it be easier to just delete the phy-names property to disable the phy?

My point is that you sometimes start Linux with the barebox internal
device tree. We should then pass a device tree Linux can handle
properly. A barebox,status would just be ignored by Linux whereas a
status = "disabled" property or deleted phy-names property would disable
the phy for Linux as well.

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

