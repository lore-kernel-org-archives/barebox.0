Delivery-date: Fri, 04 Apr 2025 09:40:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0bf9-0089v6-35
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 09:40:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0bf9-0006hs-Bu
	for lore@pengutronix.de; Fri, 04 Apr 2025 09:40:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z4XzjsFyvVIFA0OW8TvPxVjN508nBrEaCWU8Ona4k3M=; b=oHMcZrHVH8W/2ZwXLe3BykmNrP
	8qYv+mLdGkbflYywcWOXmN1TmeZ96vWs4rmZwdkyaPQm7S/YoSvULVHm/T21cxAbd6ecrt5tCMk7x
	wkNliJGN/6AY1sZcR77D2SlwKi2DK6sdDNtPo6U/ddlYc9S4am+vjRJvjnGd1bCcASPWTcqQk6ws0
	J/wRwsJ5cWhwtesGvWby5CdkA6L5M/vB2GD2PrxMVqPpvPNGdRPaFLYlvhv7tvzdyJ4Quy26HkQLC
	1aVdemDBztJDNMxkrQjxYt0XUchuRhe58/Uj0oonQ0c5BO9Ap/fbLOnQjjPkiUNL3jECLDP869FJc
	4gnRkiqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0beg-0000000B33M-1E0E;
	Fri, 04 Apr 2025 07:39:58 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0bed-0000000B32r-2uJ4
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 07:39:57 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-30572effb26so1578166a91.0
        for <barebox@lists.infradead.org>; Fri, 04 Apr 2025 00:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743752395; x=1744357195; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z4XzjsFyvVIFA0OW8TvPxVjN508nBrEaCWU8Ona4k3M=;
        b=I/Ac2uT6UnelkF8KNWv92AOcj2BBjC9XnlOMfaKckCbXFUhNrXoge6SP4XpiTZjHAb
         AKbUw6rBVnBgNsmrQZ9mRCxrnUPfYMtR7P+OxAzdxIUai9LMkDGjAw9H+vofBwUtAWXO
         qJac2l+8DvUCiCkFYJYWo4nd2xdqLKee9ZDh1dFL8C2KDEkMpP3vh10PW3XHsL4Wii8Q
         dLAzjW2E4HFs58j7koOqnfJ3qhNRn4+zqFOqMjHTaIb64NJCNyMQBP4WtD+Ohh4MPEm1
         39CXnOeIiaraXv9Sxucg3LQaOMHf82jP1MIR55NnFfKeRuAENl08EEGR223WDGEqv0tE
         gDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743752395; x=1744357195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z4XzjsFyvVIFA0OW8TvPxVjN508nBrEaCWU8Ona4k3M=;
        b=IfC7Xi3LM/D+yie5jGNgCT8OEzQL5crqpDAdy3n0QfcTMewQDxzexrc6hsjcxe0MbJ
         NiH5eqhItqQmMLF0u1JBFV9CnEiGN1tW9UCkMOQ79Ltex4+dRGclRNaGeZrB4rG17bnO
         NjVZX4ohtoyln61lihaOqZkmAU0YJ9h/WUVgObHuEX6ZykEPQqRNrWEE5eKVEJV7o0Wn
         kEv4wr0n+oAR+O8BF4Um39tB7mmOa7xXoi7nsGamTkwIZRr0E65VrBskjhFvYX+X8Tlk
         JvbkQylpa705gVhBVDAkswMZppnu5zdNNtxV6Opd+yrilUnHysw/JoSswDUBZtRmhe74
         IK1Q==
X-Gm-Message-State: AOJu0YzASTF9GR55/PfwqZUaaKA1E5Nywf2ba5Yi2MtOMpW9OtkO5PVi
	CUvMCHCoYBlPxd7J5MmCK6jNwFB5i18sKjMdH6oY9NhsjtwNjAkfBkExtsZIqBE+FMhdA7c/JcP
	BhW757D158rR7NzUgX44+INtjZlFtbrfm0IM=
X-Gm-Gg: ASbGncuFApwudunWXQGcYN5uYpGQGoYAO3rH2HodCod/3rr6SiwLl613mMiimlF2BxP
	ruS1jIsHSy0BVz9gw2y3UHAUDDAy6Z+KgoN0g46epdf38HBeB56fFajCP1OvaaLTPHc5MP+tel7
	DVcTQGj7vmwqmmeBkqWZGIBV1TdaA=
X-Google-Smtp-Source: AGHT+IGxc9A2O+xtibnhX878ic2mJdFiUQ9CwrdzjMnmWLLt5bFnBKIj+zJWCEBDSxjl6McB1pGeTZCof5sLLmlu6Ek=
X-Received: by 2002:a17:90b:1d43:b0:2fe:a8b1:7d8 with SMTP id
 98e67ed59e1d1-306a4b6fd75mr3348549a91.25.1743752394713; Fri, 04 Apr 2025
 00:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de> <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de> <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
 <Z--KaWCsJbI7hyxw@pengutronix.de>
In-Reply-To: <Z--KaWCsJbI7hyxw@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 4 Apr 2025 10:39:42 +0300
X-Gm-Features: AQ5f1JpYixq4iX-zjPoIPkLULxOcjQqV57qFTOeiVOiRndQkLpjfJq-OTAudm10
Message-ID: <CAP1tNvREO4fHjf8UsOeDg9kKc9EX71r=wOyL9rukC3CkR5=6tQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_003955_733631_29DDC23B 
X-CRM114-Status: GOOD (  22.58  )
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
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Yes, this is the best option, but it is not possible yet. Any change in CPL=
L
frequency causes the system to freeze. I am still trying to figure this out=
.

Thanks!

=D0=BF=D1=82, 4 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 10:29, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> On Thu, Apr 03, 2025 at 05:20:33PM +0300, Alexander Shiyan wrote:
> > I found this hack:
> > https://github.com/u-boot/u-boot/blob/master/drivers/clk/rockchip/clk_r=
k3588.c#L1933
>
> Let's do the same then.
>
> It would be nicer to have the CPLL setting in the assigned-clock-rates
> property. That should be done in the upstream dtsi though, overwriting
> the assigned-clock-rates in the barebox dtsi would mean we would have to
> copy the many existing settings and hope they don't change upstream.
>
> Sascha
>
> >
> > =D1=87=D1=82, 3 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 17:08, =
Sascha Hauer <s.hauer@pengutronix.de>:
> > >
> > > On Thu, Apr 03, 2025 at 05:01:05PM +0300, Alexander Shiyan wrote:
> > > > Thanks Sascha!
> > > >
> > > > So something is wrong here.
> > > > At least the GMAC0/1 interfaces end up with the wrong frequency.
> > > > I have another image with u-boot and Rockchip kernel where CPLL
> > > > is 1.5GHz and network is ok.
> > >
> > > The only place where the PLL rates are configured in barebox is via
> > > assigned-clock-rates in the clock controller node. PLL_CPLL doesn't s=
how
> > > up there, so I would assume it is just left to the default whatever t=
hat
> > > is.
> > >
> > > You could chainload barebox from U-Boot and see what the CPLL rate is
> > > then.
> > >
> > > Sascha
> > >
> > > --
> > > Pengutronix e.K.                           |                         =
    |
> > > Steuerwalder Str. 21                       | http://www.pengutronix.d=
e/  |
> > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0=
    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5=
555 |
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


