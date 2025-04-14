Delivery-date: Mon, 14 Apr 2025 07:17:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4CBr-000Vfb-00
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 07:17:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4CBq-0008AF-A5
	for lore@pengutronix.de; Mon, 14 Apr 2025 07:17:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8zhaIdTolHgXYgWhf0ExXrUIdWZuBuxcgbr6RyG4JNs=; b=2oTYtc+rz6Up703uxUM4imxPNU
	4HOBxt8mJiO3iYbTVZW/zoMvoiH1FP7ddSVBe+BsRGvZjB5QB9YpPnBw/2UFTaGHc1GjzlfT0BL2i
	l3+jkQ4GSc60Tit2Px/fkM6n8EVJFGQT2ll8rvO9SyaKjQ52oMuU6I/Q0cbGhnQEjiUZHRvZxg8rR
	x6hHlRGLazAiur9J87EpTiLGHS597W9WwRMpCLppQ7sgHq05xVYzufiAf56cBPp+3G9v4y4RXYyRp
	mJx+ZnGl0NloILLbOd+vM8DY5XZ33RaTWhJPjy/TuUja2M3E1OYGXMzrKv0WCa8PHbJo82746YO77
	z7aETWyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4CAx-00000000gjT-0Dff;
	Mon, 14 Apr 2025 05:16:07 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4CAu-00000000giz-0Tnj
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 05:16:05 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-af519c159a8so3553803a12.3
        for <barebox@lists.infradead.org>; Sun, 13 Apr 2025 22:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744607762; x=1745212562; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zhaIdTolHgXYgWhf0ExXrUIdWZuBuxcgbr6RyG4JNs=;
        b=expput4aQGG95Aeu1/7FcHw97VFGocDAmmUZ/oh7e9JqsFpt0nfXFIcWDXzS0h4mtj
         KUv3kilS2O1Q+GzPNpqX3xowbq4vldMGLfcpGZbjWd8Qe8T0pvRtAVq9KlK+mSxWKrgp
         JFdN3Y8jvSbOZnqKuVnkiaspHljCpDlPqMVvTKlHtiDcTUmFeqqqDCV9eNdNHE3dbNpR
         wNOoaYvUgeXrBja/yWVr95CJiqpu2v0Jdlu6CRk4PH8Z8orvOKDUJZAALLVGttjTqVJV
         jxFSOhxmUdyjCSt3KIBAAzR9+5mxXS1YBNd+c8qRYTWCGKrNqDDWX60RCsHJyoKfKH52
         D6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744607762; x=1745212562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zhaIdTolHgXYgWhf0ExXrUIdWZuBuxcgbr6RyG4JNs=;
        b=Tw0BCeu7Or+2Fe8rVKX/9waVlbrZmx9K0fnbl6WIwCN2LeIYPSzNTtngwYDOdhfm8q
         ccs8nEWZhq059SjwH/NIeG/F3BgpFE3FoxmCoDpIZUR1+u0JTABuFsiQ78HFYdInLnVM
         tJSNXxus/5n6abIIVHiQXIm0+EttsRtSMygLaH4yxcPuB/sE3o7DSkoZJtb+17cP2Fhy
         hii+FGHLBI/I1r19XaXy/HC7OkkDpwoYv43AkRfi+/QyQqC0w3Xa6zVhlmLGL1EzRQ0J
         K/Dqb+yHrpq5iwLmR5s8KeDdYqpq2kk6WsX7pet/zetS7xyxZ6tLp+9ozkn/T8NFBbqu
         XjGA==
X-Forwarded-Encrypted: i=1; AJvYcCX/sHYMjbpYFuz1XoygNNGKhNiy40YDzM0Lgms9wjbs/U6fWbAH1h1mYugOmbeqjAzAVaixcdI8@lists.infradead.org
X-Gm-Message-State: AOJu0YztQDCayGZvCxou8CZfAjHzSdM7TWWSwiRoX9xl7sqFZiCBMXhO
	uRpF6WAZwv3p0cE/gzwH1Hke4LnmsJyI3Gir/u68KWnH6rzWnGdfyP4C2UZgGbGyrysP5l4Nnud
	1Y27f786r3hP1LN1KYPN1S+VB1wV713Y1
X-Gm-Gg: ASbGncsvYYSDSbS1nEeaO9Ja+lYek2uW4gTT1i4G1kb5u/n/OGhfV4qvw6MDt9o+I3l
	Dtmehuyji78KWD8w2ymrIlRuXn/n6OvArPq3BlxqFRx3kQfrtN7/MCqUCguozrIO8FYvCqubj8Z
	JmpzuRBUOdOT6yEzrgUyphhA==
X-Google-Smtp-Source: AGHT+IEDwKnjrh7r1kRof1Zz5++PlxZy1j34lA/Zm+/d34C/xHDS0kTg37TwANLqSTfe1foRMRAjtL3ATxK5FXzzv/s=
X-Received: by 2002:a17:90b:17ca:b0:301:6343:1626 with SMTP id
 98e67ed59e1d1-308236281f7mr14088800a91.1.1744607762560; Sun, 13 Apr 2025
 22:16:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250411152020.2783640-1-m.tretter@pengutronix.de> <Z_lBnMOJQNNN4T6l@pengutronix.de>
In-Reply-To: <Z_lBnMOJQNNN4T6l@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 14 Apr 2025 08:15:50 +0300
X-Gm-Features: ATxdqUEM2oN8UzgrWZ48XD0_vpMM-eNOL5_l1EeVn-hb9l2Q1BUH3K770zBl83Y
Message-ID: <CAP1tNvTVK-Ukt0Y4_iTEOM_gdxnU6rfJ9C08m+ZArPdZOro=5Q@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_221604_159552_D270F268 
X-CRM114-Status: GOOD (  36.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: dmc: fix DRAM for sizes 16+ GiB on rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

This is probably exactly the case I encountered at the time. [1]
For myself, I solved this problem through the device tree. [2]
Let's see which solution to the problem will be better.

[1] https://lore.pengutronix.de/barebox/CAP1tNvS_BwD_gXcDwMH61DY9Vtg1GSY7gs=
y8Wr9vaE+KsqabAg@mail.gmail.com/T/
[2] https://github.com/MacroGroup/barebox/blob/macro/arch/arm/dts/rk3588-di=
asom-btb.dtsi#L234

Thanks!

=D0=BF=D1=82, 11 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 19:22, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Fri, Apr 11, 2025 at 05:20:20PM +0200, Michael Tretter wrote:
> > RK3588 has two known memory gaps when using 16+ GiB DRAM,
> > [0x3fc000000, 0x3fc500000) and [0x3fff00000, 0x400000000).
> >
> > Skip both gaps when initializing the DRAM on rk3588 to avoid running
> > into an exception when running memtest on an rk3588 board with 16+ GiB
> > DRAM.
> >
> > The information about the gaps is taken from a patch by Jonas Karlman t=
o
> > the U-Boot mailing list [0].
> >
> > [0] https://lore.kernel.org/all/20250405153832.1427549-5-jonas@kwiboo.s=
e/
> >
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> > The start and end addresses of the gaps probably should be put into of
> > rockchip_dmc_drvdata and only set for the rk3588. Any suggestion how to
> > implement this more nicely would be very welcome.
>
> Looks like the rk3588 currently is the only SoC that can have that much
> memory that it hits the gaps. You could add a comment that the gaps are
> only verified on rk3588 and need another look once the next SoC is
> added.
>
> Once we are there we can add a function pointer into struct rockchip_dmc_=
drvdata
> doing the right thing, but I think for now it's fine the way you did it.
>
> Sascha
>
> > ---
> >  arch/arm/mach-rockchip/dmc.c | 20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.=
c
> > index 86e61f311661..cf63fdb5a8bb 100644
> > --- a/arch/arm/mach-rockchip/dmc.c
> > +++ b/arch/arm/mach-rockchip/dmc.c
> > @@ -27,6 +27,12 @@
> >  #define RK3568_INT_REG_START         RK3399_INT_REG_START
> >  #define RK3588_INT_REG_START         RK3399_INT_REG_START
> >
> > +/* RK3588 has two known memory gaps when using 16+ GiB DRAM */
> > +#define DRAM_GAP1_START         0x3fc000000
> > +#define DRAM_GAP1_END           0x3fc500000
> > +#define DRAM_GAP2_START         0x3fff00000
> > +#define DRAM_GAP2_END           0x400000000
> > +
> >  struct rockchip_dmc_drvdata {
> >       unsigned int os_reg2;
> >       unsigned int os_reg3;
> > @@ -220,9 +226,19 @@ static int rockchip_dmc_probe(struct device *dev)
> >       arm_add_mem_device("ram0", membase,
> >               min_t(resource_size_t, drvdata->internal_registers_start,=
 memsize) - membase);
> >
> > -     /* ram1, remaining RAM beyond 32bit space */
> > +     /* ram1, RAM beyond 32bit space up to first gap */
> >       if (memsize > SZ_4G)
> > -             arm_add_mem_device("ram1", SZ_4G, memsize - SZ_4G);
> > +             arm_add_mem_device("ram1", SZ_4G,
> > +                     min_t(resource_size_t, DRAM_GAP1_START, memsize) =
- SZ_4G);
> > +
> > +     /* ram2, RAM between first and second gap */
> > +     if (memsize > DRAM_GAP1_END)
> > +             arm_add_mem_device("ram2", DRAM_GAP1_END,
> > +                     min_t(resource_size_t, DRAM_GAP2_START, memsize) =
- DRAM_GAP1_END);
> > +
> > +     /* ram3, remaining RAM after second gap */
> > +     if (memsize > DRAM_GAP2_END)
> > +             arm_add_mem_device("ram3", DRAM_GAP2_END, memsize - DRAM_=
GAP2_END);
> >
> >       return 0;
> >  }
> > --
> > 2.39.5
> >
> >
> >
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>


