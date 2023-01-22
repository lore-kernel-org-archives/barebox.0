Delivery-date: Sun, 22 Jan 2023 19:11:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeoY-002HqW-MR
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 19:11:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeoW-0006BA-O9
	for lore@pengutronix.de; Sun, 22 Jan 2023 19:11:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bTpNNVA5RpZ05NlUXMnzJSlSwAJc/ER/arLJrPjjX74=; b=PCU3F48k/+/poIrfdcaSBGt99Z
	tKRaWKjWb3KeJDQaI8yGA1VK8Stdb3w8twaLKIYSNeYS6EuwizUtUKU5C9VpCGTdsRVP8G2/UPjwl
	dRzCBXmTYc/sTa8YTZvIiEqsKXoGT5KmxTp6xgW8M9C8EeTeRoLzQblixlvzTdIUxfW15Y2aRMve7
	/agIUb9H6Z0hIk84dcVpMiqIcxA8leRk/ViIdBJ7s+N5vfAoq06p02kwrtZ7edoP+drrctA164hsA
	1KC01qWNc2VwtB2Q87lf6GNXhuRYDumxeELDfCmv200Kq5Mcda+t3u9Ed45oKh/JN1xQUFE4wSpzX
	j9dEocTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJemy-00Fe5b-Ec; Sun, 22 Jan 2023 18:09:56 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJemt-00Fe4h-HG
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 18:09:53 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 78so7466938pgb.8
        for <barebox@lists.infradead.org>; Sun, 22 Jan 2023 10:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTpNNVA5RpZ05NlUXMnzJSlSwAJc/ER/arLJrPjjX74=;
        b=a6Oxb9u0d1sojrbN/5W07NGlNs8Wx6VyKc1GHBN4gwK300Lu7rpmsmzG5EhOaC5Oe8
         WXjtGlwzwTOnoxxw7zWAfv7EBr/ne0qPJy/7cGxFzqmxpdKKk5mgpfUGmBGODxAIiKAp
         GfbjgKEuT0lLIWSAfPuoijFpI877NCvA437JaH4ZD+FQ8hKMb7Ty9XSQZeaIjvadZHBY
         n8xf+Szu/3RElC5RwFohrGznydr7B2Va+NHiwW62fjMcjg4lWnxqt4FujJ8y6OGZJigi
         SxQT/TlhFuFvu9cs7uvy009szezf6BZxoLRaHTUMawPygkHZ8pHGBP05LgxX+a/hTYys
         /uww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bTpNNVA5RpZ05NlUXMnzJSlSwAJc/ER/arLJrPjjX74=;
        b=wLxskyGu5WylDId3ShhG5D9GcKFb/l8uNNasERWYgoi6NkVytojGcYmIP1DnXWjpsi
         Pg45yxlrKFIO3N+bBvUOmPY1DlKL8nJBKRS0DRvd/I9hVqZxb9gFfcDYlMIvLhzvmHVq
         GqhYG1ODKZRkvomonYP7560VZonA99mV5BwdXc2wmxMtVGsyqzpNTexLeV7HciCpYWNa
         gZwyNWpMl+SU0W7tfbjYK/IJJf9WEiR4Gxy18KGbqivURDzZ/lmkuzUWWUH9CQdLPcuR
         kkRxOfcw8ekNzzlLihyk6xRzxnVXHyJsKl2eAjGuoRuuOWfze7Y9E50xWPu9lF6Bi3Ee
         8bTg==
X-Gm-Message-State: AFqh2krA3NNBoM3l7QvcipdtHkCSZXSeWY/rSZv6ipjs2mXadVKZYqLS
	sSPRGFIBiHaRHwfcLtWETkv0u2wB7PupQfidtAUe+DX+ZRs=
X-Google-Smtp-Source: AMrXdXsDv7sOw0oZ3cUWKDWxukQL7fHcqx/r3damIGay8w1v2i9RVvPvxg40XtfNXK5gJrZcnL921uUcaa9BufGiFHQ=
X-Received: by 2002:a62:86cf:0:b0:578:3ec0:f264 with SMTP id
 x198-20020a6286cf000000b005783ec0f264mr2631855pfd.22.1674410989750; Sun, 22
 Jan 2023 10:09:49 -0800 (PST)
MIME-Version: 1.0
References: <20230122150432.4096816-1-contact@jookia.org> <CAP1tNvQgZhoevYT4DQAZ_H0C_PPQ54irZU=jdHo09uZqigmvmg@mail.gmail.com>
 <Y81upA0H8lA7qKQz@novena-choice-citizen>
In-Reply-To: <Y81upA0H8lA7qKQz@novena-choice-citizen>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sun, 22 Jan 2023 21:09:38 +0300
Message-ID: <CAP1tNvSgOGC3FgGpS8bJjf_WAMZd7RejsO_JCcGX4t8gYdrTzw@mail.gmail.com>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_100951_626286_D0BC0CA0 
X-CRM114-Status: GOOD (  24.48  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] spi: Fix probing SPI drivers without a cs-gpios node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I dont know. I said how would I do it if it was my patch. I hope
Sas=D1=81ha will decide how it will be better.

=D0=B2=D1=81, 22 =D1=8F=D0=BD=D0=B2. 2023 =D0=B3. =D0=B2 20:13, John Watts =
<contact@jookia.org>:
>
> Hi there,
>
> Yes it would be possible to refactor it to do that.
> Would it be worth it for these few instances?
>
> John
>
> On Sun, Jan 22, 2023 at 08:06:04PM +0300, Alexander Shiyan wrote:
> > Hello.
> >
> > These lines can be defined as a regular function like
> > get_cs_gpio_cound(node), isn't it?
> >
> > =D0=B2=D1=81, 22 =D1=8F=D0=BD=D0=B2. 2023 =D0=B3. =D0=B2 18:06, John Wa=
tts <contact@jookia.org>:
> > >
> > > of_gpio_named_count returns a negative value on error but this
> > > is discarded and cast to a u16, making error handling impossible.
> > >
> > > With debug logging enabled this effectively halts booting so the boar=
d can
> > > print an error over serial 65534 times.
> > >
> > > Check for this error and proceed as if there are no gpios specified.
> > >
> > > Signed-off-by: John Watts <contact@jookia.org>
> > > ---
> > >  drivers/spi/atmel_spi.c | 8 +++++++-
> > >  drivers/spi/imx_spi.c   | 8 +++++++-
> > >  drivers/spi/stm32_spi.c | 8 +++++++-
> > >  3 files changed, 21 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> > > index ec90330e53..a2314be8ee 100644
> > > --- a/drivers/spi/atmel_spi.c
> > > +++ b/drivers/spi/atmel_spi.c
> > > @@ -388,6 +388,7 @@ static int atmel_spi_probe(struct device_d *dev)
> > >         struct resource *iores;
> > >         int ret =3D 0;
> > >         int i;
> > > +       int num_gpios;
> > >         struct spi_master *master;
> > >         struct device_node *node =3D dev->device_node;
> > >         struct atmel_spi *as;
> > > @@ -408,7 +409,12 @@ static int atmel_spi_probe(struct device_d *dev)
> > >                 master->num_chipselect =3D pdata->num_chipselect;
> > >                 as->cs_pins =3D pdata->chipselect;
> > >         } else {
> > > -               master->num_chipselect =3D of_gpio_named_count(node, =
"cs-gpios");
> > > +               num_gpios =3D of_gpio_named_count(node, "cs-gpios");
> > > +               if (num_gpios < 0) {
> > > +                       num_gpios =3D 0;
> > > +               }
> > > +
> > > +               master->num_chipselect =3D num_gpios;
> > >                 as->cs_pins =3D xzalloc(sizeof(u32) * master->num_chi=
pselect);
> > >
> > >                 for (i =3D 0; i < master->num_chipselect; i++) {
> > > diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> > > index 3e0ad2db00..b10076639a 100644
> > > --- a/drivers/spi/imx_spi.c
> > > +++ b/drivers/spi/imx_spi.c
> > > @@ -564,11 +564,17 @@ static int imx_spi_dt_probe(struct imx_spi *imx=
)
> > >  {
> > >         struct device_node *node =3D imx->master.dev->device_node;
> > >         int i;
> > > +       int num_gpios;
> > >
> > >         if (!node)
> > >                 return -ENODEV;
> > >
> > > -       imx->master.num_chipselect =3D of_gpio_named_count(node, "cs-=
gpios");
> > > +       num_gpios =3D of_gpio_named_count(node, "cs-gpios");
> > > +       if (num_gpios < 0) {
> > > +               num_gpios =3D 0;
> > > +       }
> > > +
> > > +       imx->master.num_chipselect =3D num_gpios;
> > >         imx->cs_array =3D xzalloc(sizeof(u32) * imx->master.num_chips=
elect);
> > >
> > >         for (i =3D 0; i < imx->master.num_chipselect; i++)
> > > diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> > > index 639c4f1740..a34e0b143d 100644
> > > --- a/drivers/spi/stm32_spi.c
> > > +++ b/drivers/spi/stm32_spi.c
> > > @@ -513,8 +513,14 @@ static void stm32_spi_dt_probe(struct stm32_spi_=
priv *priv)
> > >  {
> > >         struct device_node *node =3D priv->master.dev->device_node;
> > >         int i;
> > > +       int num_gpios;
> > >
> > > -       priv->master.num_chipselect =3D of_gpio_named_count(node, "cs=
-gpios");
> > > +       num_gpios =3D of_gpio_named_count(node, "cs-gpios");
> > > +       if (num_gpios < 0) {
> > > +               num_gpios =3D 0;
> > > +       }
> > > +
> > > +       priv->master.num_chipselect =3D num_gpios;
> > >         priv->cs_gpios =3D xzalloc(sizeof(u32) * priv->master.num_chi=
pselect);
> > >
> > >         for (i =3D 0; i < priv->master.num_chipselect; i++)
> > > --
> > > 2.39.0
> > >
> > >


