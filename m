Delivery-date: Tue, 13 Jun 2023 09:59:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yvs-004taD-TO
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yvq-0005nt-0s
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YiQXGHt+UJSk0wGShKpH8DbpdnVvxrqOInmDIhMarT0=; b=taHMlqNT+mdF14xor0IykIhLa8
	5vIAFqX0k6xkCXug9eR2i1hlxV6ab3OuWPyy3G9JPbZH3ijE/56GInUMaVws2/ixA3iAaWkx3MlKS
	AGixs1SLTC5ZKsVE0DveKE4Bxrb248szd8tNnHPQVvsnYwLL3JxRmTZ5pYDngBKxdmdNbqOvus4cD
	/mZtThMFl2OLucT5Txouats3DMNgKjZrescRRhlOEkimy6miGMaoLUVlvjeAbnl+HiCWefnUgGqab
	9ghDxx+vEmrhIrArxG4pkdMwyCBaessXMRfuCxBKW4TrIimTDGSgVTyB773go5gTvlId4a1PQKjE1
	akPrQubQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yuk-007IdV-31;
	Tue, 13 Jun 2023 07:58:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yuh-007Icu-0V
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:58:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8yuf-0005if-RW; Tue, 13 Jun 2023 09:58:01 +0200
Message-ID: <deb0dc30-9d1f-f21a-b75a-ceeb86032e8f@pengutronix.de>
Date: Tue, 13 Jun 2023 09:58:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-11-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602074921.2687669-11-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_005803_358593_8ADFEC3C 
X-CRM114-Status: GOOD (  42.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/10] gpiolib: add of_xlate support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 09:49, Marco Felsch wrote:
> The of_xlate function can be used to by drivers which need a other gpio
> encoding than:
> 
>   gpio = <&phandle gpio-nr gpio-flags>;
> 
> The of_xlate code is as close as possible to the kernel counter part
> which makes it easier to add 'struct gpio_desc' support later on.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Small nitpicks below, but looks good:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for reworking this! Would be great if this can go into next
before release is tagged.

> ---
>  drivers/gpio/gpiolib.c | 51 ++++++++++++++++++++++++++++++++++++++
>  drivers/of/of_gpio.c   | 56 +++++++++++++++++++++++++++++++++---------
>  include/gpio.h         | 25 +++++++++++++++++++
>  3 files changed, 120 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index d1087aa583..ab9a0e30be 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -592,6 +592,43 @@ static int of_gpiochip_set_names(struct gpio_chip *chip)
>  	return 0;
>  }
>  
> +/**
> + * of_gpio_simple_xlate - translate gpiospec to the GPIO number and flags
> + * @gc:		pointer to the gpio_chip structure
> + * @gpiospec:	GPIO specifier as found in the device tree
> + * @flags:	a flags pointer to fill in
> + *
> + * This is simple translation function, suitable for the most 1:1 mapped
> + * GPIO chips. This function performs only one sanity check: whether GPIO
> + * is less than ngpios (that is specified in the gpio_chip).
> + */
> +static int of_gpio_simple_xlate(struct gpio_chip *gc,
> +				const struct of_phandle_args *gpiospec,
> +				u32 *flags)
> +{
> +	/*
> +	 * We're discouraging gpio_cells < 2, since that way you'll have to
> +	 * write your own xlate function (that will have to retrieve the GPIO
> +	 * number and the flags from a single gpio cell -- this is possible,
> +	 * but not recommended).
> +	 */
> +	if (gc->of_gpio_n_cells < 2) {
> +		WARN_ON(1);

Nitpick: could have changed above to WARN_ON(gc->of_gpio_n_cells < 2)
and dropped the curlies.

> +		return -EINVAL;
> +	}
> +
> +	if (WARN_ON(gpiospec->args_count < gc->of_gpio_n_cells))
> +		return -EINVAL;
> +
> +	if (gpiospec->args[0] >= gc->ngpio)
> +		return -EINVAL;
> +
> +	if (flags)
> +		*flags = gpiospec->args[1];
> +
> +	return gc->base + gpiospec->args[0];
> +}
> +
>  static int of_gpiochip_add(struct gpio_chip *chip)
>  {
>  	struct device_node *np;
> @@ -601,6 +638,20 @@ static int of_gpiochip_add(struct gpio_chip *chip)
>  	if (!np)
>  		return 0;
>  
> +	if (!chip->ops->of_xlate)
> +		chip->ops->of_xlate = of_gpio_simple_xlate;
> +
> +	/*
> +	 * Seperate check since the 'struct gpio_ops' is alawys the same for

seperate, always

> +	 * every 'struct gpio_chip' of the same instance (e.g. 'struct
> +	 * imx_gpio_chip').
> +	 */
> +	if (chip->ops->of_xlate == of_gpio_simple_xlate)
> +		chip->of_gpio_n_cells = 2;
> +
> +	if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
> +		return -EINVAL;
> +
>  	ret = of_gpiochip_set_names(chip);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> index 76398f7542..a1fa563a35 100644
> --- a/drivers/of/of_gpio.c
> +++ b/drivers/of/of_gpio.c
> @@ -46,6 +46,44 @@ static void of_gpio_flags_quirks(struct device_node *np,
>  
>  }
>  
> +static struct gpio_chip *of_find_gpiochip_by_xlate(
> +					struct of_phandle_args *gpiospec)
> +{
> +	struct gpio_chip *chip;
> +	struct device *dev;
> +
> +	dev = of_find_device_by_node(gpiospec->np);
> +	if (!dev) {
> +		pr_debug("%s: unable to find device of node %s\n",
> +			 __func__, gpiospec->np->full_name);

Nitpick: We have %pOF for this.

> +		return NULL;
> +	}
> +
> +	chip = gpio_get_chip_by_dev(dev);
> +	if (!chip) {
> +		pr_debug("%s: unable to find gpiochip\n", __func__);
> +		return NULL;
> +	}
> +
> +	if (chip->ops->of_xlate &&
> +	    chip->ops->of_xlate(chip, gpiospec, NULL) >= 0)
> +		return chip;

Very nitpicky: inverting this if and turning it into an early-exit
would make code more readable. But if kernel does it that way, that's
fine too.

> +
> +	pr_err("%s: failed to execute of_xlate\n", __func__);
> +
> +	return NULL;
> +}
> +
> +static int of_xlate_and_get_gpiod_flags(struct gpio_chip *chip,
> +					struct of_phandle_args *gpiospec,
> +					enum of_gpio_flags *flags)
> +{
> +	if (chip->of_gpio_n_cells != gpiospec->args_count)
> +		return -EINVAL;
> +
> +	return chip->ops->of_xlate(chip, gpiospec, flags);
> +}
> +
>  /**
>   * of_get_named_gpio_flags() - Get a GPIO number and flags to use with GPIO API
>   * @np:		device node to get GPIO from
> @@ -61,7 +99,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  			   int index, enum of_gpio_flags *flags)
>  {
>  	struct of_phandle_args gpiospec;
> -	struct device *dev;
> +	struct gpio_chip *chip;
>  	int ret;
>  
>  	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> @@ -72,27 +110,21 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  		return ret;
>  	}
>  
> -	dev = of_find_device_by_node(gpiospec.np);
> -	if (!dev) {
> -		pr_debug("%s: unable to find device of node %s\n",
> -			 __func__, gpiospec.np->full_name);
> +	chip = of_find_gpiochip_by_xlate(&gpiospec);
> +	if (!chip) {
>  		ret = -EPROBE_DEFER;
>  		goto out;
>  	}
>  
> -	ret = gpio_get_num(dev, gpiospec.args[0]);
> -	if (ret == -EPROBE_DEFER)
> -		goto out;
> +	ret = of_xlate_and_get_gpiod_flags(chip, &gpiospec, flags);
>  	if (ret < 0) {
>  		pr_err("%s: unable to get gpio num of device %s: %d\n",
> -			__func__, dev_name(dev), ret);
> +			__func__, dev_name(chip->dev), ret);
>  		goto out;
>  	}
>  
> -	if (flags) {
> -		*flags = gpiospec.args[1];
> +	if (flags)
>  		of_gpio_flags_quirks(np, propname, flags, index);
> -	}
>  
>  out:
>  	of_node_put(gpiospec.np);
> diff --git a/include/gpio.h b/include/gpio.h
> index 5f2c16584c..d82b4505e0 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -177,6 +177,22 @@ struct gpio_ops {
>  	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
>  	int (*get)(struct gpio_chip *chip, unsigned offset);
>  	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
> +
> +#if defined(CONFIG_OF_GPIO)
> +	/*
> +	 * If CONFIG_OF_GPIO is enabled, then all GPIO controllers described in
> +	 * the device tree automatically may have an OF translation
> +	 */
> +
> +	/**
> +	 * @of_xlate:
> +	 *
> +	 * Callback to translate a device tree GPIO specifier into a chip-
> +	 * relative GPIO number and flags.
> +	 */
> +	int (*of_xlate)(struct gpio_chip *gc,
> +			const struct of_phandle_args *gpiospec, u32 *flags);
> +#endif
>  };
>  
>  struct gpio_chip {
> @@ -185,6 +201,15 @@ struct gpio_chip {
>  	int base;
>  	int ngpio;
>  
> +#if defined(CONFIG_OF_GPIO)
> +	/**
> +	 * @of_gpio_n_cells:
> +	 *
> +	 * Number of cells used to form the GPIO specifier.
> +	 */
> +	unsigned int of_gpio_n_cells;
> +#endif
> +
>  	struct gpio_ops *ops;
>  
>  	struct list_head list;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



