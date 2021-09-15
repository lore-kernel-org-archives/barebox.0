Delivery-date: Wed, 15 Sep 2021 11:40:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQRPE-0003QA-Ts
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 11:40:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQRPD-0005bL-Qc
	for lore@pengutronix.de; Wed, 15 Sep 2021 11:40:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7ajexoAyg8h6iwSnN21h0qoJTLajhocp3aWEecQrm0=; b=0WRgjvbK0nHniv
	KnbQbbvtdNlD+Vml7yxC3gZmweIQWk25XUVFk/R/msAof/xyuYpQYvR5oYfJ2Tc1oBfjKCdLoA8Bk
	TvOejhR2iDonM9LgK/5VwbLjxD5pamMJypAdsjXs6M0nedoDkSPSkQc/Lq/DHkPlc2OiYWl2ikBsf
	gzTCpzQYqMccTEDgbb2HlENPc77whb2KTU2k3tu2hKJtLLOE7IBixnjTzvMORQnpazMapQh71EToW
	UoWzzhMgqtr7jSmkDeZ3czDEGtkC4tPl4xBS3khArjar7zeecOWhK2DlYV306DDpUYFPY8qATBjxu
	WFNzMxW7RsKDS8eU915g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQRNa-008ip7-U2; Wed, 15 Sep 2021 09:38:59 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQRNU-008inu-Qr
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 09:38:54 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a4so4778429lfg.8
 for <barebox@lists.infradead.org>; Wed, 15 Sep 2021 02:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nh4WfRASibJFDL1zSZOexzlyNTyCh0jO2LokaD/eKfY=;
 b=QfXwcW3dNpqyoFzMhmipkhjawyy2XNjGPKuzz/PKA4qylo+fe0tWnh5FJxUChWRy/o
 TgXI2i7KRl2JOZUVHe5km9FEjR/ayI7MoXFK6o0LTi1ib1Pe3/WG071gybjMRQQaeW0q
 uGBXO9MAe9qIjuOvIm8OVElaoo+bQ1G72npnm5L2ZoaA99hHYie17y0tKJ1ifVwH2/MJ
 tY+NK3+4cpoJO6x7jnwyT0t5R1oo7KEG2gX056mBK1U3wy7oM2JEFk4CuQR2aC4FBbqP
 iZDPeR3lkBgpi27Pes4ep9hsNDjTIad0tD1hH18p0vkRgqkdXkpMtKYGa2csMN32A9kg
 rAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nh4WfRASibJFDL1zSZOexzlyNTyCh0jO2LokaD/eKfY=;
 b=I7XUwMou3pL+KEHk3uPsZaXSxFNChg8MaLMWM2TkLgD2Uub0WqN/bijuw4XeJVGKHI
 ZbaVva6w8kktpPUAeU4qR+sw89dMqjbc1QgYzR0JX1C5W4JYdIZmkRwtQzED1T42/7cX
 aif5x5/JkhEAFwfubcKapwrZTF1Rkj/yJQ2+7QURzQn3wRI1pO4byTWorzjYCRyVssV+
 PK0O0DlE2PRVUFTinukcz4ezqa0WmFU655acm+ADCRpw/6Uu34QnsR2TnjI8O/LFIcos
 j2WQukoee3ae8//L6x3fbt89k1a2VvrzvvHgqsmQyeDb0PK7skNkGnBDvEjDurLuvIGx
 loZQ==
X-Gm-Message-State: AOAM532iFB1MA5L2vZZrp1vmHM3VVTZpTafdPLmef74H09v5JZbE2ZqH
 zf6pnofOebJtrITFP5ZdvKak9KXaso+ok8YcVkA1GQ==
X-Google-Smtp-Source: ABdhPJzLyALul4Hcb/k5yjbvAqkrCOuw5CioYlsx0k3Cz8y2x0FG8c8bC9A8MiTzATGl9pDMlCHDxddtaTsb+yLSSW8=
X-Received: by 2002:a05:6512:951:: with SMTP id
 u17mr15628216lft.636.1631698727546; 
 Wed, 15 Sep 2021 02:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-4-a.fatoum@pengutronix.de>
 <CAMHeXxOisX+Nnqk-5SPF3uDwFH4TGOyNv13fX6vdshXJhm3gog@mail.gmail.com>
 <ca70d49c-a4eb-07ce-6615-0d5c52a797a9@pengutronix.de>
In-Reply-To: <ca70d49c-a4eb-07ce-6615-0d5c52a797a9@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 15 Sep 2021 02:38:36 -0700
Message-ID: <CAMHeXxOWaVhOxdusBwB7go9QARanQMRbB=Yj+H+EJke1W0crVQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, ejo@pengutronix.de,
 rhi@pengutronix.de, uol@pengutronix.de, renaud.barbier@abaco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_023853_038703_CB33367D 
X-CRM114-Status: GOOD (  35.31  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] scripts: allow building USB loader tools for target
 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 15, 2021 at 1:50 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> On 14.09.21 21:11, Trent Piepho wrote:
> > On Tue, Sep 14, 2021 at 6:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> Users can override it as necessary, for example, with Yocto, pkg-config
> >> will be for the cross environment, so target tools can now be built
> >> with:
> >
> > I just added support to Buildroot for building imx-usb-loader from
> > Barebox, since it's nicer than the standalone version of the program.
> >
> > Since pkgconfig was only used for host tools, I didn't need to make
> > both host and target pkgconfig work.  But of course that will no
> > longer be true after this patch.
>
> It still wouldn't break your workflow, imx-usb-loader wasn't built
> for target so far.

But it wouldn't work for anyone who wanted both the host and target versions.

> > There is a problem with only supplying CROSS_PKG_CONFIG.  To get both
> > host and target pkgconfig to work, I also need to supply the env
> > variables used by pkgconfig, PKG_CONFIG_SYSROOT and PKG_CONFIG_LIBDIR.
>
> You can set these on the environment before starting barebox build.
> If you have a $(CROSS_COMPILE)pkg-config that doesn't need any further
> configuration, you can use that.

The problem is they need different values for the target and for the
host version of the package config.  The way you have done this it is
only possible for there to be one value that is used both when the
host version is called and the same values when the cross pkg-config
is called.

> > The former makes the paths returned by pkgconfig correct and the
> > latter controls which set, target or host, of .pc files will be used.
> >
> > Maybe something like this in the Makefile:
> >
> > CROSS_PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
> > CROSS_PKG_CONFIG_SYSROOT ?= $(PKG_CONFIG_SYSROOT)
> > CROSS_PKG_CONFIG_LIBDIR ?= $(PKG_CONFIG_LIBDIR)
> > CROSS_PKG_CONFIG_ENV := \
> >        PKG_CONFIG_LIBDIR=$(CROSS_PKG_CONFIG_LIBDIR) \
> >        PKG_CONFIG_SYSROOT=$(CROSS_PKG_CONFIG_SYSROOT)
> >
> > HOST_LIBUSB_CFLAGS := $(shell $(PKG_CONFIG) --cflags)
> > CROSS_LIBUSB_CFLAGS := $(shell $(CROSS_PKG_CONFIG_ENV)
> > $(CROSS_PKG_CONFIG) --cflags)
> >
> > Then use those everywhere someone wants the libusb cflags.  Repeat for LDFLAGS.
>
> I am not really sold on this. Linux doesn't mess with PKG_CONFIG_ variables
> either. For perf the assume $(CROSS_COMPILE)pkg-config to be available.
> I think it's a suitbale default for us too. The lines above can go into
> a shell script wrapper.

Linux allows you to build the tools individually,  e.g. for tmon we have this:

make -C $(LINUX_DIR)/tools CC=$(TARGET_CC)
PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig tmon

Can Barebox build do this?  This way there are multiple make calls,
with different options, to build a kernel for the target, dtc for the
host, tmon for the target, and so on.

So Linux build may not be an ideal pattern to copy.  It can not build
a tool for both host and target in one build.

> > You'll get fewer repeated invocations of pkg-config this way too.
>
> Ye, I thought about that as well, but we do it like this for the host tools,
> so I left it for now. It's not much overhead and it makes it a bit easier
> to follow what is used.

It looks like Linux build assigns pkg-config output to a variable in
every instance but dtc's build.  I think the existing Barebox
makefiles are just a bit sloppy in how they call pkg-config.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

