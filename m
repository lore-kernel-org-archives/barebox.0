Delivery-date: Fri, 20 Jun 2025 07:49:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSUch-009BVE-2L
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 07:49:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSUch-0002d1-2q
	for lore@pengutronix.de; Fri, 20 Jun 2025 07:49:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wiqRLO7bd4zGRK7W8BEmJ9WplrFr991gJdvHG8V/Uig=; b=ko4dPcPm5tMvBLc+/eLDfwWKlD
	YXqU8m+XXWBqp7WOOyNWSAvFGik5Y/F4DFLpc4jp6Z1nB6Z1InkqS5zof8xeHFFstH0nDTfadU8zo
	yRya8ZOWf1q3Ex3i/leVvU+fx23nzWD4CY2Azf8+4FMHNaqrcgpZnh6xx7QqkexnQJk4ppuldfvDE
	C98h3MfmSWYXSDGk7dNw7EvDQ9PHf3yv7StNHuR80fdRSax12F6mpbJ5PuUtZC0E/fZ/fK6n+aXca
	3pMNNoDGv560tRiQJ2s8/6B2swbTowMPUiipxqyqpTVR7SwL6/ynRGjUcRn17hqylv/d/wfOxSmBr
	IOCcHTXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSUc0-0000000Eo56-0Rts;
	Fri, 20 Jun 2025 05:48:28 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSUbx-0000000Eo47-2Jnc
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 05:48:26 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-b31f22d706aso261908a12.0
        for <barebox@lists.infradead.org>; Thu, 19 Jun 2025 22:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750398505; x=1751003305; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wiqRLO7bd4zGRK7W8BEmJ9WplrFr991gJdvHG8V/Uig=;
        b=k+k5WsjHT3IhZCyq6W2eUnYeeyg0/m8cvT4GntAKSn3htu20IvXU5dnvFgdujqNJbD
         VVnVCTAfJKRVNTfFOAtiI/8+F3e5T9fn2bdfGW0Z2FXTbgdWZUIBOkldcXjIvtFk2fEt
         EAwDX20tEj0WUiPp1GO/Z+Ll2E42geS+iH66pz6qk58FOrzUU3sgBSe8+du1B2EvotDh
         muKJGY07/i1UofwNlMdpaJN3HnpJMxaO6dmpmAp2601mFerDmLAUb1WF7yCpXhFbvxQ+
         TiJfRnPxoiPenrYhfNoPpM6TR/8lVoEyyHarI8UGi/Ckq5RtjQcjXlgzQezNmimnaOzC
         NeSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750398505; x=1751003305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wiqRLO7bd4zGRK7W8BEmJ9WplrFr991gJdvHG8V/Uig=;
        b=L6gXFDwgADTvcp5XMAzSRMwcFrEx7olVC5N658TOVQ4mDBWWTrDCBYX3m4hrGyoCHs
         FhB9cbgVkeMVChIRrW6roT2tKxjC98s35EH1b17bPfMnaMG99eyo5ejXXldY37rcwMdw
         xqCy3BZrX/MQ+gDJKI2Pns6m3ylIRZoC401FgTCS4RkHadD94cA35YJywJdusHispAPH
         zlz8F/+4fT+h/88MW5Kyuoi4Myv4HdAqTz84SnvVhHvfJ0nMWuTjJps6QgLimdHnVpdJ
         DaH0y9KhSgo4ZJy3CWbscdzb1nOzelYzy29D28QHkGX0ywpr8EojCO2nuq8c5MAaziAt
         uGAA==
X-Gm-Message-State: AOJu0Yy9fYd23KK0zoPwdPW7iCbsM+6F7VmZ+UclwF1TvAJo2lwTFaET
	lgcwu9YEkLnk7WOUttCvtu7SrT1yegJiouvapT2zvRs7YazCBSOf78XgQzU++POsSyEmMQlfyRK
	rUEsNnBpyTR4dLPVx1aFbw7+DE4hAemwJpbrX
X-Gm-Gg: ASbGncveMKvd2CexLCApJu9K8xYom33QdtWRtv0o1KpxGPgC9bvLEA4qL+ho1qDYBFV
	9dzMlYw45w+g/oqArBFt2EmAR/hhCU0slHibhbASmTnZjsabwTuZVX/r8dRM9hdqnJ+GeFiS8In
	Pt5Dzhm1CFMVJf7EwZoDYZZJFU/mSFnpIkeZ3bbs97ysA=
X-Google-Smtp-Source: AGHT+IFhTNa3YgRzmtcPpS7Z0e3VchJRbIeKiXNN0E0mjgQy7hMWQkO9DNLToworqXamcH+ts6Y2iTksgT2FfQz9jNg=
X-Received: by 2002:a17:90b:5143:b0:311:fde5:c4c2 with SMTP id
 98e67ed59e1d1-3159d6361damr2787992a91.1.1750398504594; Thu, 19 Jun 2025
 22:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250619103440.76796-1-eagle.alexander923@gmail.com> <20250619171358.GA1859740@ravnborg.org>
In-Reply-To: <20250619171358.GA1859740@ravnborg.org>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 Jun 2025 08:48:12 +0300
X-Gm-Features: AX0GCFv6d5eufliipnrQobZHmlGS2jdCGwZdTW6V5yeJrJrYyvemE-Q2utRjgJ4
Message-ID: <CAP1tNvQ=7zHyN39vRj=so0=AXLTWG-EQQjJEwyu6Uvr4qmu5yw@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_224825_606993_2A49E610 
X-CRM114-Status: GOOD (  20.23  )
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
Subject: Re: [PATCH] ARM: at91: remove unused soc type/subtype getter functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Indeed, I hope Sas=D1=81ha can fix this in the commit.

Thanks!

=D1=87=D1=82, 19 =D0=B8=D1=8E=D0=BD. 2025=E2=80=AF=D0=B3. =D0=B2 20:14, Sam=
 Ravnborg <sam@ravnborg.org>:
>
> Hi Alexander.
>
> On Thu, Jun 19, 2025 at 01:34:40PM +0300, Alexander Shiyan wrote:
> > The functions at91_get_soc_type() and at91_get_soc_subtype() were
> > used only within the setup.c file. They provided simple access to
> > string arrays but added an unnecessary layer of abstraction.
> > Since they are not used elsewhere, we can safely remove them and
> > access the string arrays directly.
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  arch/arm/mach-at91/setup.c | 22 ++++++----------------
> >  include/mach/at91/cpu.h    |  2 --
> >  2 files changed, 6 insertions(+), 18 deletions(-)
> >
> > diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
> > index e726495726..5969c32e54 100644
> > --- a/arch/arm/mach-at91/setup.c
> > +++ b/arch/arm/mach-at91/setup.c
> > @@ -281,12 +281,6 @@ static const char *soc_name[] =3D {
> >       [AT91_SOC_NONE]         =3D "Unknown"
> >  };
> >
> > -const char *at91_get_soc_type(struct at91_socinfo *c)
> > -{
> > -     return soc_name[c->type];
> > -}
> > -EXPORT_SYMBOL(at91_get_soc_type);
> > -
> >  static const char *soc_subtype_name[] =3D {
> >       [AT91_SOC_RM9200_BGA]   =3D "at91rm9200 BGA",
> >       [AT91_SOC_RM9200_PQFP]  =3D "at91rm9200 PQFP",
> > @@ -330,12 +324,6 @@ static const char *soc_subtype_name[] =3D {
> >       [AT91_SOC_SUBTYPE_NONE] =3D "Unknown"
> >  };
> >
> > -const char *at91_get_soc_subtype(struct at91_socinfo *c)
> > -{
> > -     return soc_subtype_name[c->subtype];
> > -}
> > -EXPORT_SYMBOL(at91_get_soc_subtype);
> > -
> >  static int at91_detect(void)
> >  {
> >       at91_soc_initdata.type =3D AT91_SOC_NONE;
> > @@ -353,9 +341,9 @@ static int at91_detect(void)
> >               panic("AT91: Impossible to detect the SOC type");
> >
> >       pr_info("AT91: Detected soc type: %s\n",
> > -             at91_get_soc_type(&at91_soc_initdata));
> > +             soc_name[at91_soc_initdata.type]);
> >       pr_info("AT91: Detected soc subtype: %s\n",
> > -             at91_get_soc_subtype(&at91_soc_initdata));
> > +             soc_subtype_name[at91_soc_initdata.subtype]);
> >
> >       /* Init clock subsystem */
> >       at91_clock_init();
> > @@ -372,8 +360,10 @@ static int at91_soc_device(void)
> >       struct device *dev;
> >
> >       dev =3D add_generic_device_res("soc", DEVICE_ID_SINGLE, NULL, 0, =
NULL);
> > -     dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_s=
oc_initdata));
> > -     dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&=
at91_soc_initdata));
> > +     dev_add_param_fixed(dev, "name",
> > +                         (char*)soc_name[at91_soc_initdata.type]);
> > +     dev_add_param_fixed(dev, "subname",
> > +                         (char*)soc_subtype_name[at91_soc_initdata.sub=
type]);
> The cast can go, as dev_add_param_fixed() take a const already.
> Otherwise looks good.
> It is good to see at91 gets some attention, despite the age.
>
>         Sam


