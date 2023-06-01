Delivery-date: Thu, 01 Jun 2023 17:43:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4kSo-005yez-Ox
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 17:43:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4kSl-00076e-JA
	for lore@pengutronix.de; Thu, 01 Jun 2023 17:43:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9VsZMv+ChFfPzN7p1RPeR8fpoQPNUg4AHw2j3JuUCME=; b=rKXvGRZxZZF6Jd/0L+HVXi+i9Y
	xWQDm7C6hFzu6H1QNwbVipIaDdsrDOCl+95hlb0k2Jpd31NKXXBbUTKxkX2OZPG9geC01AjKUGQPj
	1IheIl0YEuTCy+uYCVAXBtByu+C2F/uN7AdmGKXlNgqQgVzwNnWQJJ/N2wGLtyxCuyOXQQjSuS47/
	ZrPdF/mzkBVREZIMp73YyyDIe9SWgzu8my/mp/pFqhUeN4+ZMOeqrxs0GES36lAOrVe1CFQxRwUip
	u4uFavEpAQ37LLrHJSrzjccfZ6UQLkoowCLpA/j8zS2yVbPh0vKe+eIuuFb3MZN3jc5+CHkdp65jA
	t6lKHiJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kRb-0044lm-1a;
	Thu, 01 Jun 2023 15:42:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4kRX-0044ky-39
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 15:42:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q4kRW-000725-MR; Thu, 01 Jun 2023 17:42:26 +0200
Message-ID: <1e1e9bc7-ef36-b963-6c3a-896f90574071@pengutronix.de>
Date: Thu, 1 Jun 2023 17:42:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US, de-DE
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230601142506.1069998-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_084228_013941_4454FA8F 
X-CRM114-Status: GOOD (  28.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 6/1/23 16:25, Marco Felsch wrote:
> This reverts commit 3641d381e63321016e3bf09504852a6b2a2f879b.
> 
> Since the of_xlate support the gpio-hog support is broken because the
> 'gpio' property used to specify the gpio-hog pin does not contain any
> phandle. Due to the fact that of_xlate was never implemented the easiest
> way to fix the gpio-hog functionality is to revert the commit.
> 

Tested-by: Johannes Zink <j.zink@pengutronix.de>

> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>   drivers/gpio/gpiolib.c | 58 ++++++++++++++++++++----------------------
>   drivers/of/of_gpio.c   |  5 ++--
>   include/gpio.h         |  4 +--
>   3 files changed, 30 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 6ec63b1119..b4a3a4e550 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -444,27 +444,44 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
>   		       unsigned int idx)
>   {
>   	struct device_node *chip_np = chip->dev->of_node;
> -	struct of_phandle_args gpiospec;
>   	unsigned long flags = 0;
> -	u32 gpio_flags;
> +	u32 gpio_cells, gpio_num, gpio_flags;
>   	int ret, gpio;
>   	const char *name = NULL;
>   
> -	ret = of_parse_phandle_with_args(chip_np, "gpios", "#gpio-cells", idx,
> -					&gpiospec);
> +	ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
>   	if (ret)
>   		return ret;
>   
> -	gpio = gpio_of_xlate(chip->dev, &gpiospec, &gpio_flags);
> +	/*
> +	 * Support for GPIOs that don't have #gpio-cells set to 2 is
> +	 * not implemented
> +	 */
> +	if (WARN_ON(gpio_cells != 2))
> +		return -ENOTSUPP;
> +
> +	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells,
> +					 &gpio_num);
> +	if (ret)
> +		return ret;
> +
> +	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
> +					 &gpio_flags);
> +	if (ret)
> +		return ret;
> +
> +	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
> +		flags |= GPIOF_ACTIVE_LOW;
> +
> +	gpio = gpio_get_num(chip->dev, gpio_num);
>   	if (gpio == -EPROBE_DEFER)
>   		return gpio;
> +
>   	if (gpio < 0) {
> -		dev_err(chip->dev, "unable to get gpio: %d\n", gpio);
> +		dev_err(chip->dev, "unable to get gpio %u\n", gpio_num);
>   		return gpio;
>   	}
>   
> -	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
> -		flags |= GPIOF_ACTIVE_LOW;
>   
>   	/*
>   	 * Note that, in order to be compatible with Linux, the code
> @@ -625,23 +642,6 @@ void gpiochip_remove(struct gpio_chip *chip)
>   	list_del(&chip->list);
>   }
>   
> -static int of_gpio_simple_xlate(struct gpio_chip *chip,
> -				const struct of_phandle_args *gpiospec,
> -				u32 *flags)
> -{
> -	/*
> -	 * Support for GPIOs that don't have #gpio-cells set to 2 is
> -	 * not implemented
> -	 */
> -	if (WARN_ON(gpiospec->args_count != 2))
> -		return -ENOTSUPP;
> -
> -	if (flags)
> -		*flags = gpiospec->args[1];
> -
> -	return chip->base + gpiospec->args[0];
> -}
> -
>   struct gpio_chip *gpio_get_chip_by_dev(struct device *dev)
>   {
>   	struct gpio_chip *chip;
> @@ -654,8 +654,7 @@ struct gpio_chip *gpio_get_chip_by_dev(struct device *dev)
>   	return NULL;
>   }
>   
> -int gpio_of_xlate(struct device *dev, struct of_phandle_args *gpiospec,
> -		  int *flags)
> +int gpio_get_num(struct device *dev, int gpio)
>   {
>   	struct gpio_chip *chip;
>   
> @@ -666,10 +665,7 @@ int gpio_of_xlate(struct device *dev, struct of_phandle_args *gpiospec,
>   	if (!chip)
>   		return -EPROBE_DEFER;
>   
> -	if (chip->ops->of_xlate)
> -		return chip->ops->of_xlate(chip, gpiospec, flags);
> -	else
> -		return of_gpio_simple_xlate(chip, gpiospec, flags);
> +	return chip->base + gpio;
>   }
>   
>   struct gpio_chip *gpio_get_chip(int gpio)
> diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> index b662563742..5da80e2493 100644
> --- a/drivers/of/of_gpio.c
> +++ b/drivers/of/of_gpio.c
> @@ -62,7 +62,6 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>   {
>   	struct of_phandle_args out_args;
>   	struct device *dev;
> -	int of_flags;
>   	int ret;
>   
>   	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> @@ -80,7 +79,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>   		return -EPROBE_DEFER;
>   	}
>   
> -	ret = gpio_of_xlate(dev, &out_args, &of_flags);
> +	ret = gpio_get_num(dev, out_args.args[0]);
>   	if (ret == -EPROBE_DEFER)
>   		return ret;
>   	if (ret < 0) {
> @@ -90,7 +89,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
>   	}
>   
>   	if (flags) {
> -		*flags = of_flags;
> +		*flags = out_args.args[1];
>   		of_gpio_flags_quirks(np, propname, flags, index);
>   	}
>   
> diff --git a/include/gpio.h b/include/gpio.h
> index 10ac7fd7c4..5f2c16584c 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -177,7 +177,6 @@ struct gpio_ops {
>   	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
>   	int (*get)(struct gpio_chip *chip, unsigned offset);
>   	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
> -	int (*of_xlate)(struct gpio_chip *chip, const struct of_phandle_args *gpiospec, u32 *flags);
>   };
>   
>   struct gpio_chip {
> @@ -194,8 +193,7 @@ struct gpio_chip {
>   int gpiochip_add(struct gpio_chip *chip);
>   void gpiochip_remove(struct gpio_chip *chip);
>   
> -int gpio_of_xlate(struct device *dev, struct of_phandle_args *gpiospec,
> -		  int *flags);
> +int gpio_get_num(struct device *dev, int gpio);
>   struct gpio_chip *gpio_get_chip(int gpio);
>   
>   #endif /* __GPIO_H */

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



