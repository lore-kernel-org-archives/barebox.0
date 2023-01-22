Delivery-date: Sun, 22 Jan 2023 18:08:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJdp5-002EPs-3l
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 18:08:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJdp2-00081F-WC
	for lore@pengutronix.de; Sun, 22 Jan 2023 18:08:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O18NAzwQoOkbIOkjHf+jYNX3afO5Gn/XYeq5/M9ruHU=; b=nQYtfRzbsXyrbTKJ0UHHDaqK9g
	bIeZESqJ+LQ6nfufnuuzBKOfd1SCHeki491l+KVAPqAl7BoPDx+4YAEfGoh8BX5CwbhsChmy9uKI+
	gMXvKNKipPdnDIxw4Unz98CDgB3JmFfgmB+s4nN+J6Sxu+7P9EsX7uvf/Avq6koCxvzusR3qmFxgD
	DBXmGiXfyjt+FGfE/Lk9DrtZ8tL7qq20j3ZVrOVHIB05V1oP3rAotJntGLJffqshMjxEaMfeCaff/
	BEdRFGZdbJrBZyr8HDWrZKe56g5pgLyaMnvCy85L4CZ8+fOymtex19PRmwh1X0yiy+rgAYS2wxFaM
	vPH0F0zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJdnU-00FZTN-2E; Sun, 22 Jan 2023 17:06:24 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJdnQ-00FZSh-1X
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 17:06:21 +0000
Received: by mail-pf1-x42c.google.com with SMTP id z3so7228188pfb.2
        for <barebox@lists.infradead.org>; Sun, 22 Jan 2023 09:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O18NAzwQoOkbIOkjHf+jYNX3afO5Gn/XYeq5/M9ruHU=;
        b=jVwpWfy1QUcod5XNERvfQPrP/FJAS+STdMG+jY+SwfQ/k/iMSPaOQOoTVpTJDQwZIp
         m9+ge1dnvOgu54lNEnzA3ExSmyqAZuKa+qYtAc8fXyRe4mwWR2cfYjrQ0mdUsVD2F4Po
         GoLgqi5HQmdZjbUf+xRBOjjhdPmUT6Vh538tgsaPNVCUkSKRQKzm0hV35jvCJZxzoO5a
         xoKHFd9FVU9YOGMNrE+7Nbgla3uoN6JlozunInn0ZvktcHDqM56MkpkCZ4Afv8WhmdUo
         US9QJB7qFx7hi3LkjJi+wJ7MbZT73axxtyV8xvGVS4cCKE6ErzMnTH5GN9oyuiOclaG2
         RmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O18NAzwQoOkbIOkjHf+jYNX3afO5Gn/XYeq5/M9ruHU=;
        b=Am6g+cI734y4F4oFxvHNOO48uuM0kuKfXXWfDvlHG325+3ov0LAJ5IyAzn9eMmFW5I
         /Z5HQIgxpjsrVRPVTEI0LJNpdq4vYlbRY/IzCab2HRVxsRxBc+cSYEnMDGs6jcMK3RMj
         nsFsPefpoSGn/FCpvug6kUyU3mkm78ehIGP+onq/qIp+vXa+hSz3Ck6G2AiJbnvc3jeU
         L5M4NZM9iz0928Xh//xI/1sq7kKKMaS4YiF7SvtD1rUcdBxXqDJyy0M8ozEdv69ly8zj
         3g0GRbQI3Lh/zapCcmfHOmUjLptbo0Bmyb8ofsWfAoS6UYSLI1XQu/t6ywRq8j5nNP+2
         +exg==
X-Gm-Message-State: AFqh2kr28wcELO+GCe6jGGKxQWHVbwGIL50Eu2DQ6q62germedvW8OoT
	qSbu4gLSbWoYPZ/v0CGAZscz2ZGVBOV1+yY++PFz50SbXjU=
X-Google-Smtp-Source: AMrXdXvUXbTTl9IkQDCo2OVUswTPJUKwM76AsvDlLD8jVD7cQSdRNu98294CkIJkmbMoKcxd9zuK4rO8965vgX8QBLw=
X-Received: by 2002:a05:6a00:4088:b0:580:d188:f51c with SMTP id
 bw8-20020a056a00408800b00580d188f51cmr2136609pfb.28.1674407176215; Sun, 22
 Jan 2023 09:06:16 -0800 (PST)
MIME-Version: 1.0
References: <20230122150432.4096816-1-contact@jookia.org>
In-Reply-To: <20230122150432.4096816-1-contact@jookia.org>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sun, 22 Jan 2023 20:06:04 +0300
Message-ID: <CAP1tNvQgZhoevYT4DQAZ_H0C_PPQ54irZU=jdHo09uZqigmvmg@mail.gmail.com>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_090620_141239_A789058F 
X-CRM114-Status: GOOD (  17.69  )
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

Hello.

These lines can be defined as a regular function like
get_cs_gpio_cound(node), isn't it?

=D0=B2=D1=81, 22 =D1=8F=D0=BD=D0=B2. 2023 =D0=B3. =D0=B2 18:06, John Watts =
<contact@jookia.org>:
>
> of_gpio_named_count returns a negative value on error but this
> is discarded and cast to a u16, making error handling impossible.
>
> With debug logging enabled this effectively halts booting so the board ca=
n
> print an error over serial 65534 times.
>
> Check for this error and proceed as if there are no gpios specified.
>
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  drivers/spi/atmel_spi.c | 8 +++++++-
>  drivers/spi/imx_spi.c   | 8 +++++++-
>  drivers/spi/stm32_spi.c | 8 +++++++-
>  3 files changed, 21 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> index ec90330e53..a2314be8ee 100644
> --- a/drivers/spi/atmel_spi.c
> +++ b/drivers/spi/atmel_spi.c
> @@ -388,6 +388,7 @@ static int atmel_spi_probe(struct device_d *dev)
>         struct resource *iores;
>         int ret =3D 0;
>         int i;
> +       int num_gpios;
>         struct spi_master *master;
>         struct device_node *node =3D dev->device_node;
>         struct atmel_spi *as;
> @@ -408,7 +409,12 @@ static int atmel_spi_probe(struct device_d *dev)
>                 master->num_chipselect =3D pdata->num_chipselect;
>                 as->cs_pins =3D pdata->chipselect;
>         } else {
> -               master->num_chipselect =3D of_gpio_named_count(node, "cs-=
gpios");
> +               num_gpios =3D of_gpio_named_count(node, "cs-gpios");
> +               if (num_gpios < 0) {
> +                       num_gpios =3D 0;
> +               }
> +
> +               master->num_chipselect =3D num_gpios;
>                 as->cs_pins =3D xzalloc(sizeof(u32) * master->num_chipsel=
ect);
>
>                 for (i =3D 0; i < master->num_chipselect; i++) {
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 3e0ad2db00..b10076639a 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -564,11 +564,17 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
>  {
>         struct device_node *node =3D imx->master.dev->device_node;
>         int i;
> +       int num_gpios;
>
>         if (!node)
>                 return -ENODEV;
>
> -       imx->master.num_chipselect =3D of_gpio_named_count(node, "cs-gpio=
s");
> +       num_gpios =3D of_gpio_named_count(node, "cs-gpios");
> +       if (num_gpios < 0) {
> +               num_gpios =3D 0;
> +       }
> +
> +       imx->master.num_chipselect =3D num_gpios;
>         imx->cs_array =3D xzalloc(sizeof(u32) * imx->master.num_chipselec=
t);
>
>         for (i =3D 0; i < imx->master.num_chipselect; i++)
> diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> index 639c4f1740..a34e0b143d 100644
> --- a/drivers/spi/stm32_spi.c
> +++ b/drivers/spi/stm32_spi.c
> @@ -513,8 +513,14 @@ static void stm32_spi_dt_probe(struct stm32_spi_priv=
 *priv)
>  {
>         struct device_node *node =3D priv->master.dev->device_node;
>         int i;
> +       int num_gpios;
>
> -       priv->master.num_chipselect =3D of_gpio_named_count(node, "cs-gpi=
os");
> +       num_gpios =3D of_gpio_named_count(node, "cs-gpios");
> +       if (num_gpios < 0) {
> +               num_gpios =3D 0;
> +       }
> +
> +       priv->master.num_chipselect =3D num_gpios;
>         priv->cs_gpios =3D xzalloc(sizeof(u32) * priv->master.num_chipsel=
ect);
>
>         for (i =3D 0; i < priv->master.num_chipselect; i++)
> --
> 2.39.0
>
>


