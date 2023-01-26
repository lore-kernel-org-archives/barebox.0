Delivery-date: Thu, 26 Jan 2023 09:15:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxQK-002TXf-E5
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:15:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxQH-0003m7-Eg
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:15:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8iykJx3pMclCJn4TRDOyYo3ajO1U7SRY8a+OufUjgy8=; b=hpBr+yMy2Ck1Uwr5uouKYsEZDr
	tDWVn31CIm0hy87z02epBkhSCY3x3jh4q/zg9raUuuJjPIQoiwovCadlNYuEkDcnN2XWr01VN0Oab
	hhW8SaOHiGm7a2cknTFj//13W/7lk2AZNi4v/umSm6gJloi1XgfknB3cTiZXSsLW/tde3dvvk4gY7
	mAwekKkORuqy3WXTxcf9s2BvTsa9vAzOxDSBG4qzNG7aj+WU0ATkvNa1diiOe96ZZ9etH0+jZ+Tav
	3dfBhMqDcrsyKin55cl4tAEEMcqo5JyRJqG1Qc9f1v8zU7u0Jrc7125EuEq4EVZXG5oTfwJn7EkSB
	/JjQM8lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxP3-009xTb-2M; Thu, 26 Jan 2023 08:14:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxOz-009xTC-7R
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:14:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxOx-0003XZ-S1; Thu, 26 Jan 2023 09:14:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxOx-0004M9-Kx; Thu, 26 Jan 2023 09:14:31 +0100
Date: Thu, 26 Jan 2023 09:14:31 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230126081431.GG13319@pengutronix.de>
References: <20230122150432.4096816-1-contact@jookia.org>
 <20230124200554.1701687-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124200554.1701687-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001433_286913_3510083A 
X-CRM114-Status: GOOD (  28.51  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] spi: Fix probing SPI drivers with no cs-gpios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 07:05:55AM +1100, John Watts wrote:
> of_gpio_named_count returns a negative value on error but this
> is discarded and cast to a u16, making error handling impossible.
> 
> With debug logging enabled this effectively halts booting so the board can
> print an error over serial 65534 times.
> 
> Introduce of_gpio_count_csgpios which returns 0 in the case of an error
> rather than a negative value.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
> Changes v1 -> v2:
> - Refactored logic in to separate of_gpio_count_csgpios function
> ---

Applied, thanks

Sascha

>  drivers/spi/atmel_spi.c |  2 +-
>  drivers/spi/imx_spi.c   |  2 +-
>  drivers/spi/stm32_spi.c |  2 +-
>  include/of_gpio.h       | 17 +++++++++++++++++
>  4 files changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> index 399c47c81d..9bf85874c5 100644
> --- a/drivers/spi/atmel_spi.c
> +++ b/drivers/spi/atmel_spi.c
> @@ -408,7 +408,7 @@ static int atmel_spi_probe(struct device *dev)
>  		master->num_chipselect = pdata->num_chipselect;
>  		as->cs_pins = pdata->chipselect;
>  	} else {
> -		master->num_chipselect = of_gpio_named_count(node, "cs-gpios");
> +		master->num_chipselect = of_gpio_count_csgpios(node);
>  		as->cs_pins = xzalloc(sizeof(u32) * master->num_chipselect);
>  
>  		for (i = 0; i < master->num_chipselect; i++) {
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index eb30d757d5..f81d9e851f 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -568,7 +568,7 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
>  	if (!node)
>  		return -ENODEV;
>  
> -	imx->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
> +	imx->master.num_chipselect = of_gpio_count_csgpios(node);
>  	imx->cs_array = xzalloc(sizeof(u32) * imx->master.num_chipselect);
>  
>  	for (i = 0; i < imx->master.num_chipselect; i++)
> diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> index 821a95980f..0d7407c279 100644
> --- a/drivers/spi/stm32_spi.c
> +++ b/drivers/spi/stm32_spi.c
> @@ -514,7 +514,7 @@ static void stm32_spi_dt_probe(struct stm32_spi_priv *priv)
>  	struct device_node *node = priv->master.dev->of_node;
>  	int i;
>  
> -	priv->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
> +	priv->master.num_chipselect = of_gpio_count_csgpios(node);
>  	priv->cs_gpios = xzalloc(sizeof(u32) * priv->master.num_chipselect);
>  
>  	for (i = 0; i < priv->master.num_chipselect; i++)
> diff --git a/include/of_gpio.h b/include/of_gpio.h
> index 30ff204baf..794a9926cd 100644
> --- a/include/of_gpio.h
> +++ b/include/of_gpio.h
> @@ -69,6 +69,23 @@ static inline int of_gpio_count(struct device_node *np)
>  	return of_gpio_named_count(np, "gpios");
>  }
>  
> +/**
> + * of_gpio_count() - Count cs-gpios for a device
> + * @np:		device node to count cs-gpios for
> + *
> + * Same as of_gpio_named_count, but hard coded to use the 'cs-gpios' property
> + * Returns 0 on error
> + */
> +static inline int of_gpio_count_csgpios(struct device_node *np)
> +{
> +	int count = of_gpio_named_count(np, "cs-gpios");
> +
> +	if (count > 0)
> +		return count;
> +	else
> +		return 0;
> +}
> +
>  static inline int of_get_gpio_flags(struct device_node *np, int index,
>  		      enum of_gpio_flags *flags)
>  {
> -- 
> 2.39.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


