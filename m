Delivery-date: Mon, 14 Apr 2025 07:21:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4CG1-000ViC-2p
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 07:21:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4CG1-0000eI-0I
	for lore@pengutronix.de; Mon, 14 Apr 2025 07:21:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m7diHqYf1B+IhpxTNdh+WOx2JoUGbRMe82bKVpEAjD8=; b=o3OxUs4dGK6fyZjNz2aBhpEjsy
	1PLHoxpvmRdskkZJqp66VQVBh1R/gMerM5X92VShGrEX7HZxLB/lXBnVBQ60pGo4c7Y3sfzG/xqxj
	YnaGhvTNpn3qnZ4Ydl/twRLp6c2bjIt/pBprmzn5vcrB8zE+lmUZpcg+XTIdVNXbXYIgf7n4i7kDE
	fga+v3FmJFxMheLsJMNPd0hauAyw4o+xC53NMO4iL4z/jW2Uo/rE+wh10kpXk0HmNv7XyFNrCJEfg
	Vqn0lLTMHX2omU6fGHIs1GJNHPhoAf2JvTASabY95SIZQzPAHbN8BirIoR4ze5Ul8iuzI0Ur8Imtk
	CJFRb0YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4CFY-00000000h1z-3X3O;
	Mon, 14 Apr 2025 05:20:52 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4CFV-00000000h1V-38vG
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 05:20:51 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-301e05b90caso3869872a91.2
        for <barebox@lists.infradead.org>; Sun, 13 Apr 2025 22:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744608049; x=1745212849; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m7diHqYf1B+IhpxTNdh+WOx2JoUGbRMe82bKVpEAjD8=;
        b=SrQyyZT15BnAhcmA2nhM/Jiv89G0CUu/o08gG78a4oA+HPhGOAcQEnTbdgZ2dT+AR6
         1Fi+wTUDVaeHVktSDarAyGPuxASq0fXW31buI9kOHOhQALXsExTPjJk3S285n7GWwVJg
         jTuTxpllR+eaDwIdnAlAJ9mPhss+ZOUqXOEENJUOZathrEJNRVTj7zx5kgOzLYwW5exw
         c1eYThJN1GBm+xvCaYC7zK7Id/uwdwt2dn2a4GrpwieA2UIywwz9U35M2W324bVxTVUo
         dG95sYsIbHuhIofMrUPUtxS1+u8ff4DfNLVlX48zy3BldlaWH9jpq08ReOJLagw2jxxV
         NiBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744608049; x=1745212849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m7diHqYf1B+IhpxTNdh+WOx2JoUGbRMe82bKVpEAjD8=;
        b=bYdf29XnhLqE/pq52Ky7RwrDTKE7U1XN8UiCqfl5XpY6418RVah4wX3hpdmYBe30pm
         iFUzmp91eKyDAzOcHYVEMQmbD6jVkNj9hPad493Cy0vqG1hbU+jpoPXG2QWw4mlGy8HT
         /H3U+vqxX4dn2+0bOiwfFOSGRblwwbLYfg/XuXROmlgLV0SAXCbbiglj5in7LNerwVc1
         UJku/1Tp7xgv8khpVEb400Dy7K5Nha99rqRPx4Afe0IMcfEsvPczPZznGMa8BYIhBqyT
         pTQqvj3GtoODbleUBL9KdQMnLRgceYvC9Wc6Zdak6nCRFeBUBv+1gZ398Sr54z+IB9Up
         yFrw==
X-Gm-Message-State: AOJu0YyF+QbNTWFn+nKDcY++Nk2ijO0EbZzIEP7NMyIKFobvgaj0gUlg
	DUgabnB+65rMlZqIWhkjSYBsqa7a+mdGWN+0IhCxRofAakvaCU6Kyro8qPgPBqoVWJMWdtiL8mw
	XontpnRJhvSj4LvRvN77dt9+W3Vc=
X-Gm-Gg: ASbGncuSDjgqg+B9gZXlSviN/2+Fs1YHNr7mesffyl4mhUc6yJQGV93AKCxS0C/fgcZ
	TtJb4BJDxHZvVpdlKJ6Y697z16fClFFoCioVWzvZCDPzKDGQPva4y28KXPM/MXz1s4Mk061U4fa
	RKk1MKOBu6/QeTBoZ04xnPQw==
X-Google-Smtp-Source: AGHT+IEAS9RJwDVz7oGkK6SR08rimkMjcGWfps9Oj9aHbGnv/Ld4AsKWOsmFHOuN2z8oyNhIWRs+quHG/QBTJERM5X0=
X-Received: by 2002:a17:90b:3bc4:b0:2f8:49ad:4079 with SMTP id
 98e67ed59e1d1-3082363452cmr15023106a91.6.1744608048506; Sun, 13 Apr 2025
 22:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250327053801.52356-1-eagle.alexander923@gmail.com> <03e0271b-8912-4c26-86d8-064236350268@pengutronix.de>
In-Reply-To: <03e0271b-8912-4c26-86d8-064236350268@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 14 Apr 2025 08:20:36 +0300
X-Gm-Features: ATxdqUHFHIrkNoK72LgtkmgDfsg-uBA811l3VhtAeoyF7q9x2yf1YNYLVztntf8
Message-ID: <CAP1tNvRqRypiOJbSDGNiX3wa21NCyWrJN2vVofWZpxxggphBqA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_222049_793854_C6B39F9F 
X-CRM114-Status: GOOD (  30.62  )
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
Subject: Re: [PATCH] mci: atmel_mci: Merge at91_mci_bio_set_highcapacity()
 with at91_mci_bio_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Unfortunately I don't have such hardware to test.
The CPU I have (SAMA5D2) uses a different MCI driver.

Thanks!

=D1=87=D1=82, 27 =D0=BC=D0=B0=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 09:41, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 27.03.25 06:38, Alexander Shiyan wrote:
> > The high-capacity parameter is always set to one of the possible values
> > at initialization, so there is no need to have a separate function to
> > configure it.
>
> here's an idea from IRC by the way to get rid of the parameter:
>
> ye, that [checking CSD] is what is used normally, but the problem is doin=
g it
> while in transmission state.
>
>   I looked into Part1_Physical_Layer_Simplified_Specification_Ver9.00.pdf
>   again and for the first time I see
>   "Figure 4-13 : SD Memory Card State Diagram (data transfer mode)"
>
>   Apparently, you don't necessarily need CMD0 (Go idle) to be able to get=
 to a
>   state where you can execute CMD9 (SEND CSD), but one could also execute=
 CMD7
>   (SELECT CARD) to deselect card and then run CMD9 and get back to transm=
ission mode
>
>   One would need to issue a CMD3 (SEND_RELATIVE_ADDR) to get the RCA to c=
ommunicate
>   with the correct SD (it's argument to CMD9), but this might work.
>
> Perhaps you're interested in trying this out :D
>
> Cheers,
> Ahmad
>
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  arch/arm/mach-at91/at91sam9_xload_mmc.c |  5 +----
> >  arch/arm/mach-at91/xload.c              |  2 +-
> >  drivers/mci/atmel_mci_pbl.c             | 10 +++-------
> >  include/mach/at91/xload.h               |  4 ++--
> >  4 files changed, 7 insertions(+), 14 deletions(-)
> >
> > diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at=
91/at91sam9_xload_mmc.c
> > index 26f268ae91..e8cd72bd56 100644
> > --- a/arch/arm/mach-at91/at91sam9_xload_mmc.c
> > +++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> > @@ -94,15 +94,12 @@ void __noreturn sam9263_atmci_start_image(u32 mmc_i=
d, unsigned int clock,
> >               at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),=
  AT91SAM9263_ID_MCI1);
> >       }
> >
> > -     ret =3D at91_mci_bio_init(&bio, base, clock, (int)slot_b);
> > +     ret =3D at91_mci_bio_init(&bio, base, clock, (int)slot_b, false);
> >       if (ret) {
> >               pr_err("atmci_start_image: bio init faild: %d\n", ret);
> >               goto out_panic;
> >       }
> >
> > -     /* at91sam9x do not support high capacity */
> > -     at91_mci_bio_set_highcapacity(false);
> > -
> >       ret =3D pbl_fat_load(&bio, "barebox.bin", buf, SZ_16M);
> >       if (ret < 0) {
> >               pr_err("pbl_fat_load: error %d\n", ret);
> > diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
> > index 5d8105f07f..effe8802ee 100644
> > --- a/arch/arm/mach-at91/xload.c
> > +++ b/arch/arm/mach-at91/xload.c
> > @@ -228,7 +228,7 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, u=
nsigned int clock,
> >
> >       sama5d3_pmc_enable_periph_clock(instance->id);
> >
> > -     ret =3D at91_mci_bio_init(&bio, instance->base, clock, slot);
> > +     ret =3D at91_mci_bio_init(&bio, instance->base, clock, slot, true=
);
> >       if (ret)
> >               goto out_panic;
> >
> > diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
> > index bd4faa4de5..c94a4240db 100644
> > --- a/drivers/mci/atmel_mci_pbl.c
> > +++ b/drivers/mci/atmel_mci_pbl.c
> > @@ -83,7 +83,8 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off=
_t start,
> >  }
> >
> >  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> > -                   unsigned int clock, unsigned int slot)
> > +                   unsigned int clock, unsigned int slot,
> > +                   bool highcapacity_card)
> >  {
> >       struct atmel_mci_priv *priv =3D &atmci_sdcard;
> >       struct atmel_mci *host =3D &priv->host;
> > @@ -111,12 +112,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __=
iomem *base,
> >
> >       atmci_common_set_ios(host, &ios);
> >
> > -     priv->highcapacity_card =3D 1;
> > +     priv->highcapacity_card =3D highcapacity_card;
> >
> >       return 0;
> >  }
> > -
> > -void at91_mci_bio_set_highcapacity(bool highcapacity_card)
> > -{
> > -     atmci_sdcard.highcapacity_card =3D highcapacity_card;
> > -}
> > diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
> > index d5fc7596fd..329ccc98eb 100644
> > --- a/include/mach/at91/xload.h
> > +++ b/include/mach/at91/xload.h
> > @@ -12,8 +12,8 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, uns=
igned int clock,
> >
> >  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
> >  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> > -                   unsigned int clock, unsigned int slot);
> > -void at91_mci_bio_set_highcapacity(bool highcapacity_card);
> > +                   unsigned int clock, unsigned int slot,
> > +                   bool highcapacity_card);
> >
> >  void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clo=
ck,
> >                                         bool slot_b);
>
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


