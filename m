Delivery-date: Mon, 07 Apr 2025 14:45:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1lr2-009YJy-36
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 14:45:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1lr2-0006Z1-BI
	for lore@pengutronix.de; Mon, 07 Apr 2025 14:45:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l7JxGQw4QcoUrYNrg8qHWL+ZAt6B+ZTvTf84F7kAxcc=; b=Hvcz2qmkUyMuEnynjh1GRFaE98
	clZULYDJZlV8rKZW3wnm677y2zVcIv2IzmpQStRYDzw5JVoiMX/IVfnwNlom2x61qtJj+fjqMWGFm
	4efUAG1G4QDgq8JP/Jox+7FVcFUhWh4q7IsAyVUtZI+h6euNG6swvNwoCrriEnMKtZI54H7Mo0Zrd
	uRgAObAO4g0YZ4ugMRiRucl1VOJikN2mkURFhF4dG9MzwLXjHw/GHJrI49fedBcdQqEUk3QlBosRv
	/WNgGdgEPXJm1zPTNUZJtKsjp9krYDT2V540ONarV7UM5LWBu0OG6tZ4TiWMlPD/hhfo5na4JLFll
	DjWCO82w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1lqO-00000000Kkc-30Je;
	Mon, 07 Apr 2025 12:44:52 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ldf-00000000FgJ-31fK
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 12:31:45 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-ad51f427054so2831768a12.1
        for <barebox@lists.infradead.org>; Mon, 07 Apr 2025 05:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744029102; x=1744633902; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l7JxGQw4QcoUrYNrg8qHWL+ZAt6B+ZTvTf84F7kAxcc=;
        b=jlWM3TpQe86D9DgAKqBvYlYK5BkvWUZmBqejkvS3JNYEzkD44gpZbvsihemelv8oA5
         zb9UeqiV0rsv0dUXq9Nuxg0ye+sx6uZ7xvcTakPQYwlCPE2tNkYzUBQaLdlnofjUKg4u
         Dcfg4DNU8jgmqv0QkRWlWalZ/A9VKvaveHQY5eynqWbGZuZ8JxCXVzBTFAk6BM3Ps0ld
         x/sIpSELXg55NZsxJD5UFWoCiuK/4u/55Rn4HOiCjiftxW/ahCb8MCh4STBp+7tnlTAt
         b0wvdVfeRrgpH3ExyMsjUJa+V1mVM9UggLtm7cTYeY1V1Illwf0Vowt3yBrsOYnADAFj
         frPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744029102; x=1744633902;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l7JxGQw4QcoUrYNrg8qHWL+ZAt6B+ZTvTf84F7kAxcc=;
        b=uNGRKEME6hWRX+YUc+iORCkG+sekdvQlQnyqg3gnDmWx+92DZQO+YHRFqZvzHu7E0R
         AHJ1Mz2chhs2xkI33kZrg/gwCBWPEOIonDstD4KgHr4kXabNR/jE3zSEWDtpzBBV5vJO
         S4PwMBf22rkhK+/kJrtNP7JcDkE1Fdjg8rGYxZAshcWJzgLdyr2QlbZOuPkXPRPSd33u
         43RcmDvOfzXy8rVAXl/2kX7VyRQwpncqs9jrUcPz91RYsg44EpbFVeGoRd016E/ciMj9
         nfx7OtGVUGtxpLWyDmSwZb2+MJ2TQ5EFcQWCW2Qviggmtr5nRAyXfuqvhe7RT0kapCFI
         uFCA==
X-Gm-Message-State: AOJu0Yw+5Nx4NrDJi6kBJV5EFiB3ySKw+W/DZncdTbOIVQdaJdWoeOCq
	6aFXPApp6DzFpZ88DLHosJEqTMdKxqaLSAPj0fibFULN+00Ox16rRsAdVnSaQzoTTGZpfxgF+rD
	0QfkCBwI6qIv11AM3t+iXhpvM1OvLRnLi
X-Gm-Gg: ASbGncv5M0fXzMbOklJaMHFjr358LV8GkW4CAm6MICrlC0QDSG2CCk9FG1xfJbP+TF7
	ouq9xfQsTR4nQ/Hq+FIpjR1GVxUxgp4sSxA+mWdWUnhTfU++ge28DDtTJn4++RM25uGv/oy+wtq
	Rw095npUh7Rqi3WeHbGsKR+YsnEgI3FyH85TeSuQ==
X-Google-Smtp-Source: AGHT+IHDCulxfeDz5AIlfBfic81waWpcAl//dmLuM2sMYgG2ZOA2GJc6xmd4Bdqke1i7nUSbiZ0yUrXg+Dsh64L0tV0=
X-Received: by 2002:a17:90b:534f:b0:2fa:1a23:c01d with SMTP id
 98e67ed59e1d1-306a4899cb8mr16429089a91.21.1744029102368; Mon, 07 Apr 2025
 05:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de> <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de> <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
 <Z--KaWCsJbI7hyxw@pengutronix.de>
In-Reply-To: <Z--KaWCsJbI7hyxw@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 7 Apr 2025 15:31:30 +0300
X-Gm-Features: ATxdqUFqixqgidmKjwLUdWeZBJ8--UkFEcAZtpWWBEFirVkKJUGdfnZlJ5UvrYE
Message-ID: <CAP1tNvSL6vMx=ePmwHx-=yJGtWi2PdAfpa34PEZFPCgNrP1nhQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_053143_762231_E3571ECC 
X-CRM114-Status: GOOD (  22.35  )
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

Unfortunately, there is still a stupor in this issue
Any PLL can be configured normally, except CPLL.
Changing CPLL freezes the system. I tried to use some tricks from
U-boot, but to no avail...

barebox@Diasom DS-RK3588-BTB-EVB:/ clk_set_parent cpll xin24m
barebox@Diasom DS-RK3588-BTB-EVB:/ clk_set_rate pll_cpll 816000000
rockchip_rk3588_pll_set_rate: changing pll_cpll to 816000000 with a
parent rate of 24000000
rockchip_rk3588_pll_set_params: rate settings for 816000000 p: 2, m:
272, s: 2, k: 0
<freeze here>

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


