Delivery-date: Wed, 13 Nov 2024 13:39:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBCet-001Qge-2k
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 13:39:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBCet-0000nt-7M
	for lore@pengutronix.de; Wed, 13 Nov 2024 13:39:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XKcrP+V//i+uvDqTwnLYumutJdmTqeW4VxD9uHicyEk=; b=EIxrQZ49+Qk5niSSFSAhaDXVbV
	pYTxDcXYthhkxST0iQLhKZCpgWWES9rPe6znlp0Hu3zZEd5QmSiEgBjWDyzRCMDJCD53u3YSIr2vB
	CuydZaRrcT1Ten/W6yJ1Nl2p70uOlfaasOv6FMQKxjhrT6RlIDxiHfzi4MVBU3gVTJdivDtbcbkRh
	Xb42M3ZwuyQ0HJLmYSOXV7XyL/8Ro0WM0ZQZdDKyPB3bv4JotKgr8n4qrqpTNR0sWo2zfs1SDqlwh
	Ls9auVR9MslQVPBl84YUk/Y1wbjNMAX6IYgCUZ0oF8/HFnC+tKxl4UbX1wOtfCC4uV8YmaWL8C1zG
	NjIIXdlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCeL-00000006n35-3xOi;
	Wed, 13 Nov 2024 12:39:09 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCcg-00000006mqj-1jio
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 12:37:27 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a9ed49edd41so1162764366b.0
        for <barebox@lists.infradead.org>; Wed, 13 Nov 2024 04:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731501444; x=1732106244; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XKcrP+V//i+uvDqTwnLYumutJdmTqeW4VxD9uHicyEk=;
        b=dLHEAzKr5LpfN5y92fOZDQFu0POVERouoxBXbcJCgzXHJhjl6IjuYsu4ToVHQPyVX3
         +Erp7rlDYCne8GOaBshYnqLFW9KFaB1WxNGC1D5DR9O2/P8grq9bLoUDOyj1FsQnRnji
         FzXsO5YkrI0ajsIECGHIN0AYHzCt/2wlvPD9r9vmUMZQ/aKJLCzUpTUz6bhySmRbquMK
         fE5RqfLmRfs6QmOmM8v+4hz4y0zGHbSPk8qwerqjp9M3nrAkLW5QksnsSYpbSxxS698D
         ePHh2Sz0LgR23B0IF4QkvVdYF0xmW6JH43pIc6HUCR7W2fXhNMbOeqO2UpdKxYUk+y5G
         6PRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731501444; x=1732106244;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XKcrP+V//i+uvDqTwnLYumutJdmTqeW4VxD9uHicyEk=;
        b=Q6PDf1EFB3BpdkQ50Z3N//ywLh0Xxneggd7A7qwnS/VdEeKRZyuCRlFH3ym3l3xA9W
         AOIqkR6abo+XZ2zZeceUKPXM62vEm2m8yZOmK9UEPrxPB6ZYe99IooWaO08iXgB/MoBB
         WPOj4ckqvWus8738nNTa+5tmSLhZJY7Om9lLu3LL1cjV5tnpzHFeqS88kKAOEqox5wn0
         deSDo1pbsXN4OYqAr6iC5lO0MTFKj+l9q8/M4hgiGwTgCs6kLGaksYgKWUSOoax78u8Q
         XMzxIoNTl9pQmes56FM/IY+p/ZqHd4RSvaGnJlWC4Z56yn8icGk3LXFqbj2RkwtomZxU
         DC6A==
X-Forwarded-Encrypted: i=1; AJvYcCVhn0RnlmM2LVyaovSE5cUN+NhCuL6vlWOjBti9uKIPv9sa4SWZYvuXApXXZ35A0XOEyOgvNF4R@lists.infradead.org
X-Gm-Message-State: AOJu0YxTo7wmG/XlFFdT5hvFCQxwRjE3v+312l53HUA2sn0FJt8HPPIu
	7A0KtDd8HJ611JstbFKnAPSg4ZtlGt8xbEzlCQY9botu36IxPLu9wBPylrU2qlr4u/vFHdvcZZn
	lvNf9j13oLTlXqbvWVjg+IcKlSvM=
X-Google-Smtp-Source: AGHT+IE6y+kfQy1o/CqmvkhjK+HghUAzxtqeTfZiQid1c74KDXwk5JqGBbgAQNZLMCebxewwF+UPUnQnXPCP8+majag=
X-Received: by 2002:a17:906:b06:b0:aa1:e695:f60 with SMTP id
 a640c23a62f3a-aa1e695a315mr386109366b.41.1731501443983; Wed, 13 Nov 2024
 04:37:23 -0800 (PST)
MIME-Version: 1.0
References: <20241112191058.397165-1-abdelrahmanyossef12@gmail.com>
 <383d6b94-1152-4257-b18c-9f31857944ca@pengutronix.de> <ZzSY1El982Q03Pz5@pengutronix.de>
In-Reply-To: <ZzSY1El982Q03Pz5@pengutronix.de>
From: AbdelRahman Yossef <abdelrahmanyossef12@gmail.com>
Date: Wed, 13 Nov 2024 14:37:12 +0200
Message-ID: <CABwgSGZ4kyiz9Yhh1RevsBg=eMgOK29HttSgNc=+o5xgWmXDvw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_043726_504886_C07425E0 
X-CRM114-Status: GOOD (  31.00  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I will update the patch and send it as v4.

Is it enough to just add the changes to Changelog or change the commit mess=
age?

On Wed, Nov 13, 2024 at 2:17=E2=80=AFPM Sascha Hauer <s.hauer@pengutronix.d=
e> wrote:
>
> On Tue, Nov 12, 2024 at 08:56:58PM +0100, Ahmad Fatoum wrote:
> > Hello Abdelrahman,
> >
> > Thanks for your patch.
> >
> > On 12.11.24 20:10, Abdelrahman Youssef wrote:
> > > While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends be=
yond
> > > the struct block area, Causing a heap-overflow.
> > >
> > > Since `maxlen` is an unsigned integer representing the length of name=
,
> > > It can be negative, So it overflows to large numbers, Causing strnlen=
()
> > > to overflow.
> > >
> > > So we can just change the type of maxlen to signed and check if it's =
negative.
> > >
> > > Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> > > ---
> >
> > Changelog would've been nice. This also should have been v3 not v2.
> >
> > >  drivers/of/fdt.c | 7 ++++++-
> > >  1 file changed, 6 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > > index 2c3ea31394..d8d8a4922c 100644
> > > --- a/drivers/of/fdt.c
> > > +++ b/drivers/of/fdt.c
> > > @@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(con=
st void *infdt, int size,
> > >     void *dt_strings;
> > >     struct fdt_header f;
> > >     int ret;
> > > -   unsigned int maxlen;
> > > +   int maxlen;
> > >     const struct fdt_header *fdt =3D infdt;
> > >
> > >     ret =3D fdt_parse_header(infdt, size, &f);
> > > @@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(co=
nst void *infdt, int size,
> > >                     maxlen =3D (unsigned long)fdt + f.off_dt_struct +
> > >                             f.size_dt_struct - (unsigned long)name;
> > >
> > > +                   if (maxlen < 0) {
> > > +                           ret =3D -ESPIPE;
> > > +                           goto err;
> > > +                   }
> > > +
> > >                     len =3D strnlen(name, maxlen + 1);
> >
> > Hmm is this + 1 correct? I am wondering if we should be dropping
> > the + 1 here and make it maxlen <=3D 0 above.
>
> I think maxlen <=3D 0 is correct indepent of what follows next, because
> maxlen is the length of a string and a valid string has a minimal length
> of one byte ('\0').
>
> Next we shouldn't look at bytes exceeding maxlen, so indeed
> strnlen(name, maxlen) should be correct. When changing this we have
> to adjust the following if (len > maxlen) check to >=3D.
>
> Sascha
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


