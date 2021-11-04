Delivery-date: Thu, 04 Nov 2021 22:42:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mikUk-00047h-3F
	for lore@lore.pengutronix.de; Thu, 04 Nov 2021 22:42:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mikUj-0004Q6-2t
	for lore@pengutronix.de; Thu, 04 Nov 2021 22:42:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0HNN4QkWE+ctkekyEiUhbBDzjI4ltErkKiP/RYfBeQ=; b=mUg+E+khc0hA9p
	Tz9ouCEDGaqzzILWH8w5nOhDkiDVUUWelMyImCsoWnl7hYiaVdiE1GjjurL0u54jpNQJ4cp+6Tqi8
	k3mZAicrqwy58Wyb3jVQSaOpVnDk8ill3WhsFRCOVGRJbUF43a0B3etIhOhqyPDvbICxs0Zqc60oE
	Q5zZAWNfeLHsqMPHhTp7pOdJGrPSpaFspriGjW3ZI5cnaoPFI355JqZCh1ySXrwvM3GEUHiWo7mja
	vMUc1IsanfOJrIuk+L8YONa3VRemBOtMrjZxYSkwi+MGYtJfd2sLpZ+5xwL4Dg/5/QV4MKtllf9tb
	kS1B/Wqare+hSTAMskSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mikTC-00A14t-Aw; Thu, 04 Nov 2021 21:40:26 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mikT6-00A13x-Nr
 for barebox@lists.infradead.org; Thu, 04 Nov 2021 21:40:22 +0000
Received: by mail-lj1-x235.google.com with SMTP id d23so11750849ljj.10
 for <barebox@lists.infradead.org>; Thu, 04 Nov 2021 14:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6gI0sNS5TEwswJXL3A6x8Y1P0my9Ubmqxjz9M3roY6g=;
 b=eFE9RQ+N+k/ypvabQ2z2POWiHkO0f/fodiOHwY7GUjYDQs2d46n/AoSlO7GABQgrsC
 cy++/1eYN+HimgAHhta+RskyftNjpEhueHU0/m/aOPXQBSvQdIRS7/18i0r/wsqo0B3L
 gSZbehsdmLYjTJava6IU8F7rLXIkYC8NwJsR84Zyv5IGDF855DSkBdnMGKrKfL1K5IDQ
 He5YCfcVpfTwbg/r3TMyn5EcxLq+4ndwDS0zJgR2q58jAjXOx3fOnBmF95V2NAoUAmz1
 aRgWvghtL1S9xfJPpP2aJuFRVr4VbikUiDBUt8OMgpYM+tAcMsu6cxHrdEk1oNbHrDJY
 CEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6gI0sNS5TEwswJXL3A6x8Y1P0my9Ubmqxjz9M3roY6g=;
 b=vHyI9K5WAuKkM/iZlGUR3u3EhuXRjM+GXsDYFL3fTnAopubdPNDBYc+yIevb2e674q
 ok2RvZBHD0HaQKAZQbAkfjwUFw8IGTIwRRKR+j8ai2dXnrYcryEBj9ffAqAGok85yQ1q
 ext86439igaK7QiLVUFrEH4OkiFG/oekTXo47Di92l26asSbFkwy3TtY2xtbU4yYAal/
 qfsVcXquF5xIi8apjPqeAxsgHhh7JQZ54nnY3FkGALLhiIVGRvYsgN+mBXPGnVz6WbS8
 JUklLVj1pK9K3Nkg0oB5XetIvTscCbSwx9g/nxUlqbctCEk7XA+PBDD9QZ/DVpaPAxHp
 1hvg==
X-Gm-Message-State: AOAM531mE6vAKr0lk8loaZNrrjRzTs+B9ekMAnLT5E0v8iaXh3t9thwM
 eTGIwnjGILWBvHaTvkKPD0gHzJWxeI3BgBdaA6lE+G64ZYRvXw==
X-Google-Smtp-Source: ABdhPJyHFP2huhpEXZIPSn/HHE5m9PWey3QP+kXOi3PqQDiO6HFhCxgw6rydxDpblqwdb2pTmH8mDQudTFZcj5ZJdwo=
X-Received: by 2002:a2e:8115:: with SMTP id d21mr17653916ljg.411.1636062019051; 
 Thu, 04 Nov 2021 14:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
 <20211102074048.GW25698@pengutronix.de>
 <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
 <20211104200222.GE25698@pengutronix.de>
In-Reply-To: <20211104200222.GE25698@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 4 Nov 2021 14:40:08 -0700
Message-ID: <CAMHeXxOfPsNPHzewPtUKZJ=7bR9ew-hanrokiBF0Cst_oQkcqQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: =?UTF-8?B?RGFuaWVsIEJyw6F0?= <danek.brat@gmail.com>, 
 barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_144020_949015_1D8CB8DA 
X-CRM114-Status: GOOD (  39.63  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 4, 2021 at 1:02 PM Sascha Hauer <sha@pengutronix.de> wrote:
> On Wed, Nov 03, 2021 at 03:35:08PM -0700, Trent Piepho wrote:
> > On Tue, Nov 2, 2021 at 12:40 AM Sascha Hauer <sha@pengutronix.de> wrote:
> > >
> > > On Mon, Nov 01, 2021 at 11:33:07AM -0700, Trent Piepho wrote:
> > > >    On Mon, Nov 1, 2021 at 2:01 AM Sascha Hauer <[1]sha@pengutronix.de> wrote:
> >  >    >
> > > >    > The phy is only optional as long as none is specified in the device
> > > >    > tree. When there is one specified then it's no longer optional. We can't
> > > >    > do the right thing here without checking the device tree. Given that
> > > >    > it's simple to enable CONFIG_GENERIC_PHY I think this is the way to go.
> > > >
> > > >    But this force enables GENERIC_PHY when it's not needed.
> > > >
> > > >    There are commonly many device nodes in Linux dts files that are not used
> > > >    by an enabled Barebox driver.  It's normal to turn off a driver that might
> > > >    be or could be used.  Is it necessarily an error if a phy is present in
> > > >    the dts but we don't wish to include support for it?
> > >
> > > We need to distinguish the cases "There is a phy specified, but the
> > > reset defaults are good enough to go without a driver" and "There is a
> > > phy specified and we need driver support for it". barebox can't know
> > > this.
> >
> > Could we say that compiling barebox without CONFIG_GENERIC_PHY means
> > the driver is not needed and compiling it with the driver means that
> > is it?
>
> Please no. Enabling Kconfig options ideally gives you additional
> features, but it should not break anything. Consider the case when you
> need to enable CONFIG_GENERIC_PHY for something else like an LVDS phy or
> whatever, you don't want to end up with broken USB support then and have
> to choose whether USB or LVDS is working.

I thought your goal was to prevent less experienced users from
building a non-functional Barebox and then not understanding what they
had done.  Turning off a necessary driver and breaking USB while
producing no warnings nor errors.  But I now gather I was mistaken and
this isn't really the problem.

I think the specific situation you are concerned about is where:
A) the dts does define a phy for usb
B) This phy does not work in Barebox, e.g. no driver
C) Despite B, USB will still operate with the desired level
functionality without a working phy driver.

With the patch and CONFIG_GENERIC_PHY disabled, we get a non-fatal
return at step A and everything is good.  But once enabled, we now get
a fatal error at step B and this is not good.

Could this be fixed by making the error at B non-fatal?  This is more
how Linux works here: errors that are non-fatal in Linux's
phy_optional_get() path are fatal for Barebox.

Let phy_optional_get return NULL for any error.  Create a warning if
it appears the error was not: "no phy defined in dts".

But what if there really is an unexpected error with the PHY?  We
won't trigger the phy failure path in the driver!   I think
realistically, this is never going to make a difference for anyone.
Either way, one gets an error message and non-functional usb.  Does it
really matter where the error comes from?

> > Wouldn't it be easier to just delete the phy-names property to disable the phy?
>
> My point is that you sometimes start Linux with the barebox internal
> device tree. We should then pass a device tree Linux can handle
> properly. A barebox,status would just be ignored by Linux whereas a
> status = "disabled" property or deleted phy-names property would disable
> the phy for Linux as well.

If phy_optional_get does not make an unsupported phy an error, then
there isn't really a need to disable the phy anymore.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

