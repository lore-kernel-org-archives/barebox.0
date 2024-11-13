Delivery-date: Wed, 13 Nov 2024 02:15:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB1yy-001E9w-09
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 02:15:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB1yx-0005fg-CM
	for lore@pengutronix.de; Wed, 13 Nov 2024 02:15:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVXs4g1M3YOLRV9H3PvvAvyLpW4ZYCeAsuYYdM5BAbU=; b=B9D4M/4Wml2vBB
	qccJiPJsCBFFlaVuXaoSVdWqBrchWm0rJqo/T+BPZobUuw2IWHNu7QwyDxF/jnlsJvu2lBBfdPo3G
	lNqQ8OlHYL89LC/vf7OuOgZGCNO8q2yYcf+s/z6GRmy94fivwcLOh7v+htd9fWmOUsUr4qvd21iqG
	6pD3KyfIO57htYs/HjDSoi7/dBQgF1iAHsH93USg6Voj1lLGclTWU/RDBl20mlTCdBbQoXebbF5MY
	BK0LHQXz3I6xlhrwLYwqqXW1f4jwKniitxvfHXwJZvuqtBfrpAkrYO+lqVZ6QDEeBp3FR19MlyNbm
	vROCVl8SBZ/5oBT3By0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB1yL-00000005UKz-39Rf;
	Wed, 13 Nov 2024 01:15:05 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB1xV-00000005UIM-3VkX
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 01:14:15 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5cefc36c5d4so8464828a12.0
        for <barebox@lists.infradead.org>; Tue, 12 Nov 2024 17:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731460451; x=1732065251; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WVXs4g1M3YOLRV9H3PvvAvyLpW4ZYCeAsuYYdM5BAbU=;
        b=KlaSCe1axQ5eNubVERF/PhmNlRr0qpqBxiKM8XWx1KxeF9fA3/6DgBl7RNEFwEtmMu
         Pl9Naazfm5umLxZ/ML0MVqAmN+0XXdeQZrN8IDq/lfls+R4fCn7Fx60Fay/w7JbJnUbJ
         ZBtChxIvGNUdVUTCACBJpzch5wFAhT/j9Qxeqzy+t+6HsxLKbRwcwBjITSlQehUwawqQ
         nFgtw2wuj12B6bH3/pSAzcylykL+XGjit3H0aMXl0mD7sZObYJ3UTgTNtxb4QrGCkpyZ
         mbQFBZes46r4uRR1N/HC5lCXmAhQLN1IeX+08uOfIQKa5pKEbH496oOjA21pxoEyQcI9
         wWEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731460451; x=1732065251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WVXs4g1M3YOLRV9H3PvvAvyLpW4ZYCeAsuYYdM5BAbU=;
        b=E9TzSq39wmO3twOxEetgPDrwW0x2Q5D8w5aB6X9URQwaIxEOoNAe1iQCy5RgmIikLR
         MkEfL7ccBBusGX6eeqi7+faIgBtuwHByS30G2KzFGaZqzJY2MsN7NqHdlKyMpvLN15i5
         3amrFfMpI44FKP65Hm2RlcmVaZAP2RzvbncWF196pDzivnQ4BbBIF34egG/seWhBc8N6
         9rGTXDXhLkmu2zqLeaQ1IShSKJ1LFinGvOcmnE9nF7JyXTITT7mhajSMBDBq3/g/puvb
         uI1IyXioncMAmTWkhHPrlzvkNbJ84ts2ADtdmN41HfnzlmWFkXdqGTQRSgMCzqlO31aq
         8Iaw==
X-Forwarded-Encrypted: i=1; AJvYcCUWyCgy9Yfd0YsQUOfyKVuPLNKb3042/A8AqnRRfYBjvemnCGSy/RiwFy9vO3ALU93AH39IHalP@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5ySL29q+IU/dwTkrQJp3cA+IYcX3xwl+zEUSIjHg5FaKxtwfG
	AEMDSR5KQr+gOPRJw/nD9k4eJ1IdVqTHE0ADUnCdoh6nP+gw0icmQht28WtdfBTm9SLqjJtNBDa
	KH/Xo9HXE217K1vVhcJbOLEzhpjnOosIN
X-Google-Smtp-Source: AGHT+IEnfK7j51REnX+/7leXGyQDPqhhZ+c25EDSrJEsGKzUlvG5hQrGb7RK3U7CPflH4mCnpwV5qRAFqgh8JDFdwgw=
X-Received: by 2002:a50:8ac9:0:b0:5cf:9f6:1bbd with SMTP id
 4fb4d7f45d1cf-5cf0a45ca4bmr9446723a12.29.1731460450558; Tue, 12 Nov 2024
 17:14:10 -0800 (PST)
MIME-Version: 1.0
References: <20241112191058.397165-1-abdelrahmanyossef12@gmail.com> <383d6b94-1152-4257-b18c-9f31857944ca@pengutronix.de>
In-Reply-To: <383d6b94-1152-4257-b18c-9f31857944ca@pengutronix.de>
From: AbdelRahman Yossef <abdelrahmanyossef12@gmail.com>
Date: Wed, 13 Nov 2024 03:13:59 +0200
Message-ID: <CABwgSGYBOuXY9onePu9tcp5ToDjYDJc9A2X-UVuVZJATra3yeA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_171413_901230_B1D6F87E 
X-CRM114-Status: GOOD (  28.32  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

> Changelog would've been nice. This also should have been v3 not v2


So should I write a new patch (v4) and add Changelog?

> Hmm is this + 1 correct? I am wondering if we should be dropping
> the + 1 here and make it maxlen <=3D 0 above.
>
> What do you think?


Well, I think the + 1 is unnecessary here. But it's been there for
over 11 years, So maybe someone
has another opinion on the matter.

Cheers,
Abdelrahman


On Tue, Nov 12, 2024 at 9:56=E2=80=AFPM Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:
>
> Hello Abdelrahman,
>
> Thanks for your patch.
>
> On 12.11.24 20:10, Abdelrahman Youssef wrote:
> > While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyo=
nd
> > the struct block area, Causing a heap-overflow.
> >
> > Since `maxlen` is an unsigned integer representing the length of name,
> > It can be negative, So it overflows to large numbers, Causing strnlen()
> > to overflow.
> >
> > So we can just change the type of maxlen to signed and check if it's ne=
gative.
> >
> > Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> > ---
>
> Changelog would've been nice. This also should have been v3 not v2.
>
> >  drivers/of/fdt.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 2c3ea31394..d8d8a4922c 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const=
 void *infdt, int size,
> >       void *dt_strings;
> >       struct fdt_header f;
> >       int ret;
> > -     unsigned int maxlen;
> > +     int maxlen;
> >       const struct fdt_header *fdt =3D infdt;
> >
> >       ret =3D fdt_parse_header(infdt, size, &f);
> > @@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(cons=
t void *infdt, int size,
> >                       maxlen =3D (unsigned long)fdt + f.off_dt_struct +
> >                               f.size_dt_struct - (unsigned long)name;
> >
> > +                     if (maxlen < 0) {
> > +                             ret =3D -ESPIPE;
> > +                             goto err;
> > +                     }
> > +
> >                       len =3D strnlen(name, maxlen + 1);
>
> Hmm is this + 1 correct? I am wondering if we should be dropping
> the + 1 here and make it maxlen <=3D 0 above.
>
> What do you think?
>
> Cheers,
> Ahmad
>
> >                       if (len > maxlen) {>                            r=
et =3D -ESPIPE;
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


