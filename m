Delivery-date: Thu, 02 Mar 2023 18:02:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXmKT-006fc3-Ql
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 18:02:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXmKT-0006Pb-GE
	for lore@pengutronix.de; Thu, 02 Mar 2023 18:02:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O2qJx0YLBbjWsaXUG7hwm2X7ATQwzafNlti+ZR9y3FM=; b=HMg8XOmftc0DIM3YSYqLEl+wIh
	VjnpzQQggDY0KqKWa6QSZKToSWpfWdlKJoS22gdiEnPOzm3booFD11HxA9iRhJbtprR80JYTYfJaM
	gr2MMgI+MkYkWwD1aerjF+eLVgl5zRg65HF7nLTPM6EwOHkXgKWQ8jk2DHgREc8CMED9TNDt2JLGP
	RYcwwiWnPe7MrdHzl6Q8cmgh1Gst9M3swyLaYFYRtN0OIoeIkdlwuQUYglVQsNpkMeLA6IzXqhemt
	RwYvSraq1jaoQiTP280UKpCYvGkc67MSzm0ua2Js15T1E4YnP7RQ6LLKYv0uRVDwzl/chLsYnFSEL
	oVGOSdDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXmJ2-002upF-AY; Thu, 02 Mar 2023 17:01:24 +0000
Received: from mailrelay2-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:401::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXmIx-002uoE-ES
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 17:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=O2qJx0YLBbjWsaXUG7hwm2X7ATQwzafNlti+ZR9y3FM=;
	b=k4z0d4X1fz13BS8qe/QPU9vUqfiIoP7zvzUy/WfSjG3LrvW+3Acr+ESHorxWLnS5RPW71gK+6bQxa
	 ZUQb+FAGjDcGJ7Ys63LcXoYTKft68cRfCdSVfF41Zj74rPdjSqcI7uhE5b1lXgH+qYkzNVinzoO7AF
	 lwucuywuaOuMOkJzybe1FR27PEyF5Nurjm1ZGJRgbOLUQrvfgzDJfv+tWYqaCfJXKMOBSvNQsJe16T
	 ppVDbDeRyIZNOJJBiQdIDr2zwuMrtmVLhEj/yeLQ+/U27lEB9o5boT6U4XMEWKNn3FnYf6fz9f9FNn
	 EL7c4GodBAyYKsrhyc0Noz5OwdBkPjA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=O2qJx0YLBbjWsaXUG7hwm2X7ATQwzafNlti+ZR9y3FM=;
	b=gdlU0dgJo8BgSoY6W5WVudeZtnQESDIhFRguy57HmWpq5jk2SNPqhVoDEQFz6/6kICH9mLfuEFhfC
	 yX2BPgnCQ==
X-HalOne-ID: d3ff6dbf-b91b-11ed-adf4-3df7d73157c4
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay2 (Halon) with ESMTPSA
	id d3ff6dbf-b91b-11ed-adf4-3df7d73157c4;
	Thu, 02 Mar 2023 17:01:10 +0000 (UTC)
Date: Thu, 2 Mar 2023 18:01:09 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZADWVZvotcFBtKbM@ravnborg.org>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
 <Y/47xKrQwNGDe2KU@ravnborg.org>
 <20230301075324.GO32097@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230301075324.GO32097@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_090119_677109_20D97897 
X-CRM114-Status: GOOD (  37.23  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] ARM: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha.

On Wed, Mar 01, 2023 at 08:53:24AM +0100, Sascha Hauer wrote:
> On Tue, Feb 28, 2023 at 06:37:08PM +0100, Sam Ravnborg wrote:
> > Hi Sascha,
> > 
> > On Tue, Feb 28, 2023 at 03:30:22PM +0100, Sascha Hauer wrote:
> > > I am working on making it possible to build support for multiple
> > > arch/arm/mach-*/ into the same barebox. Here are some misc cleanups
> > > I stumbled upon while preparing multi arch support.
> > > 
> > > Sascha Hauer (9):
> > >   ARM: mxs: remove unused mach/clock.h
> > >   ARM: imx: remove unused mach/clock.h
> > >   ARM: rockchip: drop mach/timer.h
> > >   ARM: i.MX: Move imxfb.h to include/platform_data/
> > >   pinctrl: rockchip: Fix uninitialized var warning
> > >   ARM: at91: remove unnecessary configs
> > >   ARM: at91: Switch all boards to multiimage
> > >   at91: consolidate usb-a963 128m images
> > >   ARM: pxa: Move plat/ include files to mach/
> > 
> > As much as I like the patches I think a more sane course of
> > action for these old at91 boards would be to drop most of them.
> 
> Agreed, and you just motivated me to look into it.
> 
> > A simple algorithm would be:
> >   If not supported in the kernel, drop the board.
> 
> That algorithm doesn't bring us very far. Here is a list of boards
> supported in barebox, the 'x' add the beginning denotes that I
> found a device tree for it in the kernel:
> 
> AT91RM9200
> ==========
> x MACH_AT91RM9200EK	Atmel AT91RM9200-EK Evaluation Kit
> 
> AT91SAM9260
> ===========
> x MACH_ANIMEO_IP	Somfy Animeo IP
> x MACH_AT91SAM9260EK	Atmel AT91SAM9260-EK
> x MACH_QIL_A9260	CALAO QIL-A9260 board
> x MACH_TNY_A9260	CALAO TNY-A9260
> x MACH_USB_A9260	CALAO USB-A9260
>   MACH_GE863		Telit EVK-PRO3
> 
> AT91SAM9261
> ===========
> x MACH_AT91SAM9261EK	Atmel AT91SAM9261-EK Evaluation Kit
>   MACH_PM9261		Ronetix PM9261
> 
> AT91SAM9G10
> ===========
> x MACH_AT91SAM9G10EK	Atmel AT91SAM9G10-EK Evaluation Kit
> 
> AT91SAM9G20
> ===========
> x MACH_AT91SAM9G20EK	Atmel AT91SAM9G20-EK Evaluation Kit
> x MACH_TNY_A9G20	CALAO TNY-A9G20
> x MACH_USB_A9G20	CALAO USB-A9G20
>   MACH_DSS11		aizo dSS11
>   MACH_QIL_A9G20	CALAO QIL-A9G20 board
>   MACH_HABA_KNX_LITE	CALAO HABA-KNX-LITE
> 
> AT91SAM9263
> ===========
>   MACH_PM9263		Ronetix PM9263
> x MACH_TNY_A9263	CALAO TNY-A9263
> x MACH_USB_A9263	CALAO USB-A9263
> 
> AT91SAM9G45 or AT91SAM9M10
> ==========================
>   MACH_AT91SAM9M10IHD	Atmel AT91SAM9M10IDH Tablet
> x MACH_AT91SAM9M10G45EK	Atmel AT91SAM9M10G45-EK Evaluation Kit
> x MACH_PM9G45		Ronetix PM9G45
> 
> AT91SAM9N12
> ===========
> x MACH_AT91SAM9N12EK	Atmel AT91SAM9N12 Evaluation Kit
> 
> SAMA5D3
> =======
> x MACH_SAMA5D3XEK	Atmel SAMA5D3X Evaluation Kit
> 
> SAMA5D4
> =======
> x MACH_SAMA5D4EK	Atmel SAMA5D4 Evaluation Kit
> x MACH_SAMA5D4_XPLAINED	Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit
> 
> It seems most boards are supported in the kernel as well.
Looking closer what I remembered was the removal of the legacy board
support - as the boards all became DT enabled.

> 
> >   
> > The boards that are not in the kernel have not seen any
> > activity in barebox for a long time, so it is not like
> > they look maintained.
> 
> None of the boards has seen any activity except for those that are
> already converted to multiboard.
> 
> Given that we could remove all board and SoC support that has
> not yet been converted to multiboard support.
> 
> The question is: When you want to port over some more board/SoC code
> to multiboard, does the existing code help you or would it be easier
> to do a fresh start?
If I for some reasons should look into adding DT support for a board, I
would have no trouble browsing some older barebox tree.
But I cannot see anyone would care about the older at91sam9* boards.
Keep the sama* boards but drop the at91sam* boards that are not
multi image enabled today.

If someone shows up and needs one of the at91sam* boards it should be
doable to add DT support as the infrastructure is in place.
But I cannot find the motivation to do so today, as I do not see any
potential users.

For the sama* boards Ahmed does a fantastic job migrating them one by
one so we should keep all of them. This is also a much newer SoC than
the at91sam* so there are products using this SoC where it can make
sense to do some new development.

Makes sense?

	Sam


