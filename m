Delivery-date: Mon, 08 Aug 2022 14:14:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1e3-00G9CT-91
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:14:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1e3-0000Ac-Qw
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:14:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UIzHr9Le47E0HjLfnPj076CaUtQzSmbs4p4qMberOBs=; b=dKriQ6Ro/2H5p2ie80fpz+9P4e
	fZY5jApU/kyBqRbntHPpiHFV8If3fY0E3FO3dWpokBGXkL2ju5PW/JGzGlHxRqTAZq7UXzZjP94wM
	yCEXUUo732g4uBArwP+3t4KxscwI02WUSpiO1pnTVAkWYSwxz03ZXymMHrzNUf8Pqa5fM8amZmxL5
	ug9sj6pQzuz5ZuTLpjHyQQUNoYg6KAvLoDmw7V8VrFd/mYH1nGaGKAsc8s5Cms8YbSycqA/CEB7wq
	fT6WLZkEdtvyHbdscO58GgWi90FsLDpecejJhzVNt8H+gY9P2SXUrpJLFcX8zQqXQuLODv7xK7KgO
	okQdEVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1cO-00DWez-UY; Mon, 08 Aug 2022 12:12:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1VM-00DTFX-8Z
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:05:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1VK-00074s-Bm; Mon, 08 Aug 2022 14:05:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1VJ-000856-Nx; Mon, 08 Aug 2022 14:05:05 +0200
Date: Mon, 8 Aug 2022 14:05:05 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20220808120505.GK7333@pengutronix.de>
References: <20220805135928.32725-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805135928.32725-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_050508_345208_8D7E6ABC 
X-CRM114-Status: GOOD (  33.77  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gpiolib: Add of_xlate support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 03:59:28PM +0200, Jules Maselbas wrote:
> The of_xlate callback is used to tanslate a device-tree GPIO specifier
> into a chip relative GPIO number and flags. This callback needs to be
> implemented by GPIO controller driver which doesn't uses the "classic"
> device-tree description, which is:
>     gpio = <&gpio-phandle gpio_num gpio_flags>;
> 
> But uses something else, like this (but not limited to):
>     gpio = <&gpio-phandle gpio_bank gpio_num gpio_flags>;
> 
> Currently no GPIO driver require this of_xlate callback, but this will
> be used for sunxi's GPIO support.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/gpio/gpiolib.c | 60 ++++++++++++++++++++++--------------------
>  drivers/of/of_gpio.c   |  5 ++--
>  include/gpio.h         |  3 ++-
>  3 files changed, 37 insertions(+), 31 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index f845a57394..97a99b84e3 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -444,44 +444,27 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
>  		       unsigned int idx)
>  {
>  	struct device_node *chip_np = chip->dev->device_node;
> +	struct of_phandle_args gpiospec;
>  	unsigned long flags = 0;
> -	u32 gpio_cells, gpio_num, gpio_flags;
> +	u32 gpio_flags;
>  	int ret, gpio;
>  	const char *name = NULL;
>  
> -	ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
> +	ret = of_parse_phandle_with_args(chip_np, "gpios", "#gpio-cells", idx,
> +					&gpiospec);
>  	if (ret)
>  		return ret;
>  
> -	/*
> -	 * Support for GPIOs that don't have #gpio-cells set to 2 is
> -	 * not implemented
> -	 */
> -	if (WARN_ON(gpio_cells != 2))
> -		return -ENOTSUPP;
> -
> -	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells,
> -					 &gpio_num);
> -	if (ret)
> -		return ret;
> -
> -	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
> -					 &gpio_flags);
> -	if (ret)
> -		return ret;
> -
> -	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
> -		flags |= GPIOF_ACTIVE_LOW;
> -
> -	gpio = gpio_get_num(chip->dev, gpio_num);
> +	gpio = gpio_of_xlate(chip->dev, &gpiospec, &gpio_flags);
>  	if (gpio == -EPROBE_DEFER)
>  		return gpio;
> -
>  	if (gpio < 0) {
> -		dev_err(chip->dev, "unable to get gpio %u\n", gpio_num);
> +		dev_err(chip->dev, "unable to get gpio: %d\n", gpio);
>  		return gpio;
>  	}
>  
> +	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
> +		flags |= GPIOF_ACTIVE_LOW;
>  
>  	/*
>  	 * Note that, in order to be compatible with Linux, the code
> @@ -636,7 +619,24 @@ void gpiochip_remove(struct gpio_chip *chip)
>  	list_del(&chip->list);
>  }
>  
> -int gpio_get_num(struct device_d *dev, int gpio)
> +static int of_gpio_simple_xlate(struct gpio_chip *chip,
> +				const struct of_phandle_args *gpiospec,
> +				u32 *flags)
> +{
> +	/*
> +	 * Support for GPIOs that don't have #gpio-cells set to 2 is
> +	 * not implemented
> +	 */
> +	if (WARN_ON(gpiospec->args_count != 2))
> +		return -ENOTSUPP;
> +
> +	if (flags)
> +		*flags = gpiospec->args[1];
> +
> +	return chip->base + gpiospec->args[0];
> +}
> +
> +int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *flags)
>  {
>  	struct gpio_chip *chip;
>  
> @@ -644,8 +644,12 @@ int gpio_get_num(struct device_d *dev, int gpio)
>  		return -ENODEV;
>  
>  	list_for_each_entry(chip, &chip_list, list) {
> -		if (chip->dev == dev)
> -			return chip->base + gpio;
> +		if (chip->dev != dev)
> +			continue;
> +		if (chip->ops->of_xlate)
> +			return chip->ops->of_xlate(chip, gpiospec, flags);
> +		else
> +			return of_gpio_simple_xlate(chip, gpiospec, flags);
>  	}
>  
>  	return -EPROBE_DEFER;
> diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> index 42e0347529..c23923b425 100644
> --- a/drivers/of/of_gpio.c
> +++ b/drivers/of/of_gpio.c
> @@ -62,6 +62,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  {
>  	struct of_phandle_args out_args;
>  	struct device_d *dev;
> +	int of_flags;
>  	int ret;
>  
>  	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> @@ -79,7 +80,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  		return -EPROBE_DEFER;
>  	}
>  
> -	ret = gpio_get_num(dev, out_args.args[0]);
> +	ret = gpio_of_xlate(dev, &out_args, &of_flags);
>  	if (ret == -EPROBE_DEFER)
>  		return ret;
>  	if (ret < 0) {
> @@ -89,7 +90,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>  	}
>  
>  	if (flags) {
> -		*flags = out_args.args[1];
> +		*flags = of_flags;
>  		of_gpio_flags_quirks(np, propname, flags, index);
>  	}
>  
> diff --git a/include/gpio.h b/include/gpio.h
> index 6134190138..8218722dcb 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -171,6 +171,7 @@ struct gpio_ops {
>  	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
>  	int (*get)(struct gpio_chip *chip, unsigned offset);
>  	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
> +	int (*of_xlate)(struct gpio_chip *chip, const struct of_phandle_args *gpiospec, u32 *flags);
>  };
>  
>  struct gpio_chip {
> @@ -187,7 +188,7 @@ struct gpio_chip {
>  int gpiochip_add(struct gpio_chip *chip);
>  void gpiochip_remove(struct gpio_chip *chip);
>  
> -int gpio_get_num(struct device_d *dev, int gpio);
> +int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *flags);
>  struct gpio_chip *gpio_get_chip(int gpio);
>  
>  #endif /* __GPIO_H */
> -- 
> 2.17.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


