Delivery-date: Sun, 22 Jan 2023 18:15:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJdwB-002Ei1-Jr
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 18:15:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJdw9-0000Pz-ON
	for lore@pengutronix.de; Sun, 22 Jan 2023 18:15:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DbWMawzwjaoWbChnXkRYGaYByRID75MFT3zPN4g5q6o=; b=B6zW6mswZSgpd8BVcdjAN40XTY
	EPXWHZh8vjWNcpcf9J5490ppMTmVJ8Y22QWAQ1AawyPJphz1TIGq3cdKg2X1wfB9L9Jl7ZoCHY4bz
	UsaUyEia12kkZVpFXS7QVZAttdRef79kSVfJfOv/1sO85hn52g9BarEKviE1zBG9t4Ule7Q1jfms+
	uZPiasVtZd73/tXL5aftmEp5D+m/BW7+BZPgIG3ijEshZylXcWlFEMqlFiYjUYetIoTSU9QPivkHt
	VT299qbQ5EBHI0odxwClhctWm3RhURsXReyNZxMYJak07yg2QO4C09lXrWS4Ghv4mPscHUeyW+5h9
	3ne4rCDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJduY-00Fafx-KM; Sun, 22 Jan 2023 17:13:42 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJduS-00Faf7-D1
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 17:13:39 +0000
Date: Mon, 23 Jan 2023 04:13:08 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674407611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DbWMawzwjaoWbChnXkRYGaYByRID75MFT3zPN4g5q6o=;
	b=XlOjljFEDUQyGJWrl2O7pG0PCeXTEOwLOdvKQra46T2+x6v/UJ0zlQscy3q4pwKz1kQewZ
	2En7jBwlxl33aKHq4EcySwInYC5VSDHe2jMWPaREsmuK5WPydKPXXFJOrwb9NkyZbjF5xN
	1yEHQen9jVJtI08GtanYLpZIyW8TSVAp0Nx6cx1ybOTooCMoN2YQGXUidpYFsIWdge9Mdm
	IyNhf3wxzc7fKXryj1bxglRwzg0nO8AUexYseur2t49EIDihs1fBXKcnE6NPCZ8iriMTWH
	kCI3FTbobWrZjrKoqlNuOd3r0UMsifbA3ELSLcyc1d0xznX7+iyM/+VfKxWbCw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Y81upA0H8lA7qKQz@novena-choice-citizen>
References: <20230122150432.4096816-1-contact@jookia.org>
 <CAP1tNvQgZhoevYT4DQAZ_H0C_PPQ54irZU=jdHo09uZqigmvmg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvQgZhoevYT4DQAZ_H0C_PPQ54irZU=jdHo09uZqigmvmg@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_091337_950980_339C5D67 
X-CRM114-Status: GOOD (  21.90  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: Fix probing SPI drivers without a cs-gpios node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi there,

Yes it would be possible to refactor it to do that.
Would it be worth it for these few instances?

John

On Sun, Jan 22, 2023 at 08:06:04PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> These lines can be defined as a regular function like
> get_cs_gpio_cound(node), isn't it?
> 
> вс, 22 янв. 2023 г. в 18:06, John Watts <contact@jookia.org>:
> >
> > of_gpio_named_count returns a negative value on error but this
> > is discarded and cast to a u16, making error handling impossible.
> >
> > With debug logging enabled this effectively halts booting so the board can
> > print an error over serial 65534 times.
> >
> > Check for this error and proceed as if there are no gpios specified.
> >
> > Signed-off-by: John Watts <contact@jookia.org>
> > ---
> >  drivers/spi/atmel_spi.c | 8 +++++++-
> >  drivers/spi/imx_spi.c   | 8 +++++++-
> >  drivers/spi/stm32_spi.c | 8 +++++++-
> >  3 files changed, 21 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> > index ec90330e53..a2314be8ee 100644
> > --- a/drivers/spi/atmel_spi.c
> > +++ b/drivers/spi/atmel_spi.c
> > @@ -388,6 +388,7 @@ static int atmel_spi_probe(struct device_d *dev)
> >         struct resource *iores;
> >         int ret = 0;
> >         int i;
> > +       int num_gpios;
> >         struct spi_master *master;
> >         struct device_node *node = dev->device_node;
> >         struct atmel_spi *as;
> > @@ -408,7 +409,12 @@ static int atmel_spi_probe(struct device_d *dev)
> >                 master->num_chipselect = pdata->num_chipselect;
> >                 as->cs_pins = pdata->chipselect;
> >         } else {
> > -               master->num_chipselect = of_gpio_named_count(node, "cs-gpios");
> > +               num_gpios = of_gpio_named_count(node, "cs-gpios");
> > +               if (num_gpios < 0) {
> > +                       num_gpios = 0;
> > +               }
> > +
> > +               master->num_chipselect = num_gpios;
> >                 as->cs_pins = xzalloc(sizeof(u32) * master->num_chipselect);
> >
> >                 for (i = 0; i < master->num_chipselect; i++) {
> > diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> > index 3e0ad2db00..b10076639a 100644
> > --- a/drivers/spi/imx_spi.c
> > +++ b/drivers/spi/imx_spi.c
> > @@ -564,11 +564,17 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
> >  {
> >         struct device_node *node = imx->master.dev->device_node;
> >         int i;
> > +       int num_gpios;
> >
> >         if (!node)
> >                 return -ENODEV;
> >
> > -       imx->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
> > +       num_gpios = of_gpio_named_count(node, "cs-gpios");
> > +       if (num_gpios < 0) {
> > +               num_gpios = 0;
> > +       }
> > +
> > +       imx->master.num_chipselect = num_gpios;
> >         imx->cs_array = xzalloc(sizeof(u32) * imx->master.num_chipselect);
> >
> >         for (i = 0; i < imx->master.num_chipselect; i++)
> > diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> > index 639c4f1740..a34e0b143d 100644
> > --- a/drivers/spi/stm32_spi.c
> > +++ b/drivers/spi/stm32_spi.c
> > @@ -513,8 +513,14 @@ static void stm32_spi_dt_probe(struct stm32_spi_priv *priv)
> >  {
> >         struct device_node *node = priv->master.dev->device_node;
> >         int i;
> > +       int num_gpios;
> >
> > -       priv->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
> > +       num_gpios = of_gpio_named_count(node, "cs-gpios");
> > +       if (num_gpios < 0) {
> > +               num_gpios = 0;
> > +       }
> > +
> > +       priv->master.num_chipselect = num_gpios;
> >         priv->cs_gpios = xzalloc(sizeof(u32) * priv->master.num_chipselect);
> >
> >         for (i = 0; i < priv->master.num_chipselect; i++)
> > --
> > 2.39.0
> >
> >


