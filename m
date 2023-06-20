Delivery-date: Tue, 20 Jun 2023 07:22:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBToi-00E22G-Ue
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 07:22:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBTog-0003xj-6q
	for lore@pengutronix.de; Tue, 20 Jun 2023 07:22:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gM1rzS2HsDkb8nVhXHP2FznYAdPSMEpXJuyC1K4jhKI=; b=K0x9UEXDtarFUkvDz+7yGLabJs
	ilmz54IRzg+jxrbCDsjWslEndty0uZzn5ZrwwDAIzQCA8KXqyY6ChqcDctmpUasqB5j2BKkEklgTY
	ys0V3TRu2nltzClI1RQQ+/1gYnFhuo1Bp5AgS9+vlEGCOunv3Y3gUSt/4X7hyyZTWZf/t5UXiLH2c
	JSV0kPStsz7SmUQAuyjhGjlM4JaCUNRnTva6noFZ5c7PrJyDrxpLDiiAwF6ZNgCeluFGLv43dnKu7
	PjgfLw2H2zYZeqknHgbwmrS/NjXfklZ8WFtnZlaaFN8rGDMsNutq4jd9jAvTWgNW3Q0wSXZI05oDS
	gPd/FEHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBTnR-00ABIi-0k;
	Tue, 20 Jun 2023 05:20:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBTnN-00ABIG-1Y
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 05:20:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBTnL-0003oy-Ip; Tue, 20 Jun 2023 07:20:47 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBTnJ-00084D-EJ; Tue, 20 Jun 2023 07:20:45 +0200
Date: Tue, 20 Jun 2023 07:20:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230620052045.deruonvmw3sq42is@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
 <20230614135452.1884124-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614135452.1884124-6-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_222049_709778_AA52287E 
X-CRM114-Status: GOOD (  34.13  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 05/10] gpiolib: export proper gpio descriptor API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

thanks a lot for this patchset, please see my comments below.

On 23-06-14, Ahmad Fatoum wrote:
> Our current gpiod API doesn't return actual struct gpio_desc pointers
> that can be dereferenced by the GPIO core, like in Linux. We actually
> have all the infrastructure in place to do that, but we just aren't
> using this yet. Rename the relevant gpioinfo_ functions to gpiod_,
> document them, export them and have them observe the same semantics as
> their Linux equivalents.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c        | 173 ++++++++++++++++++++++++++++++----
>  include/linux/gpio/consumer.h |  62 ++----------
>  2 files changed, 163 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 402d408be071..25d91d250dc8 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -21,6 +21,36 @@ struct gpio_desc {
>  	const char *name;
>  };
>  
> +/*
> + * This descriptor validation needs to be inserted verbatim into each
> + * function taking a descriptor, so we need to use a preprocessor
> + * macro to avoid endless duplication. If the desc is NULL it is an
> + * optional GPIO and calls should just bail out.
> + */
> +static int validate_desc(const struct gpio_desc *desc, const char *func)
> +{
> +	if (!desc)
> +		return 0;
> +	if (IS_ERR(desc)) {
> +		pr_warn("%s: invalid GPIO (errorpointer)\n", func);
> +		return PTR_ERR(desc);
> +	}
> +
> +	return 1;
> +}
> +
> +#define VALIDATE_DESC(desc) do { \
> +	int __valid = validate_desc(desc, __func__); \
> +	if (__valid <= 0) \
> +		return __valid; \
> +	} while (0)
> +
> +#define VALIDATE_DESC_VOID(desc) do { \
> +	int __valid = validate_desc(desc, __func__); \
> +	if (__valid <= 0) \
> +		return; \
> +	} while (0)
> +
>  static struct gpio_desc *gpio_desc;
>  
>  static int gpio_desc_alloc(void)
> @@ -50,12 +80,12 @@ static struct gpio_desc *gpio_to_desc(unsigned gpio)
>  	return NULL;
>  }
>  
> -static unsigned gpioinfo_chip_offset(struct gpio_desc *desc)
> +static unsigned gpioinfo_chip_offset(const struct gpio_desc *desc)

Why do we stick with gpioinfo_* here? IMHO we could use
gpiodesc_chip_offset() since the gpioinfo is gone.

>  {
>  	return (desc - gpio_desc) - desc->chip->base;
>  }
>  
> -static int gpio_adjust_value(struct gpio_desc *desc,
> +static int gpio_adjust_value(const struct gpio_desc *desc,
>  			     int value)
>  {
>  	if (value < 0)
> @@ -159,17 +189,40 @@ void gpio_free(unsigned gpio)
>  {
>  	struct gpio_desc *desc = gpio_to_desc(gpio);
>  
> +	gpioinfo_free(desc);

Same for gpioinfo_free() which could become gpiodesc_free().

> +}
> +
> +/**
> + * gpiod_put - dispose of a GPIO descriptor
> + * @desc:	GPIO descriptor to dispose of
> + *
> + * No descriptor can be used after gpiod_put() has been called on it.
> + */
> +void gpiod_put(struct gpio_desc *desc)
> +{
>  	if (!desc)
>  		return;
>  
>  	gpioinfo_free(desc);
>  }
> +EXPORT_SYMBOL(gpiod_put);
>  
> -static void gpioinfo_set_value(struct gpio_desc *desc, int value)
> +/**
> + * gpiod_set_raw_value() - assign a gpio's raw value
> + * @desc: gpio whose value will be assigned
> + * @value: value to assign
> + *
> + * Set the raw value of the GPIO, i.e. the value of its physical line without
> + * regard for its ACTIVE_LOW status.
> + */
> +void gpiod_set_raw_value(struct gpio_desc *desc, int value)
>  {
> +	VALIDATE_DESC_VOID(desc);
> +
>  	if (desc->chip->ops->set)
>  		desc->chip->ops->set(desc->chip, gpioinfo_chip_offset(desc), value);
>  }
> +EXPORT_SYMBOL(gpiod_set_raw_value);
>  
>  void gpio_set_value(unsigned gpio, int value)
>  {
> @@ -181,10 +234,25 @@ void gpio_set_value(unsigned gpio, int value)
>  	if (gpio_ensure_requested(desc, gpio))
>  		return;
>  
> -	gpioinfo_set_value(desc, value);
> +	gpiod_set_raw_value(desc, value);
>  }
>  EXPORT_SYMBOL(gpio_set_value);
>  
> +/**
> + * gpiod_set_value() - assign a gpio's value
> + * @desc: gpio whose value will be assigned
> + * @value: value to assign
> + *
> + * Set the logical value of the GPIO, i.e. taking its ACTIVE_LOW,
> + * OPEN_DRAIN and OPEN_SOURCE flags into account.
> + */
> +void gpiod_set_value(struct gpio_desc *desc, int value)
> +{
> +	VALIDATE_DESC_VOID(desc);
> +	gpiod_set_raw_value(desc, gpio_adjust_value(desc, value));
> +}
> +EXPORT_SYMBOL_GPL(gpiod_set_value);
> +
>  void gpio_set_active(unsigned gpio, bool value)
>  {
>  	struct gpio_desc *desc = gpio_to_desc(gpio);
> @@ -192,17 +260,27 @@ void gpio_set_active(unsigned gpio, bool value)
>  	if (!desc)
>  		return;
>  
> -	gpio_set_value(gpio, gpio_adjust_value(desc, value));
> +	gpiod_set_value(desc, value);
>  }
>  EXPORT_SYMBOL(gpio_set_active);
>  
> -static int gpioinfo_get_value(struct gpio_desc *desc)
> +/**
> + * gpiod_get_raw_value() - return a gpio's raw value
> + * @desc: gpio whose value will be returned
> + *
> + * Return the GPIO's raw value, i.e. the value of the physical line disregarding
> + * its ACTIVE_LOW status, or negative errno on failure.
> + */
> +int gpiod_get_raw_value(const struct gpio_desc *desc)
>  {
> +	VALIDATE_DESC(desc);
> +
>  	if (!desc->chip->ops->get)
>  		return -ENOSYS;
>  
>  	return desc->chip->ops->get(desc->chip, gpioinfo_chip_offset(desc));
>  }
> +EXPORT_SYMBOL_GPL(gpiod_get_raw_value);
>  
>  int gpio_get_value(unsigned gpio)
>  {
> @@ -216,10 +294,25 @@ int gpio_get_value(unsigned gpio)
>  	if (ret)
>  		return ret;
>  
> -	return gpioinfo_get_value(desc);
> +	return gpiod_get_raw_value(desc);
>  }
>  EXPORT_SYMBOL(gpio_get_value);
>  
> +/**
> + * gpiod_get_value() - return a gpio's value
> + * @desc: gpio whose value will be returned
> + *
> + * Return the GPIO's logical value, i.e. taking the ACTIVE_LOW status into
> + * account, or negative errno on failure.
> + */
> +int gpiod_get_value(const struct gpio_desc *desc)
> +{
> +	VALIDATE_DESC(desc);
> +
> +	return gpio_adjust_value(desc, gpiod_get_raw_value(desc));
> +}
> +EXPORT_SYMBOL_GPL(gpiod_get_value);
> +
>  int gpio_is_active(unsigned gpio)
>  {
>  	struct gpio_desc *desc = gpio_to_desc(gpio);
> @@ -227,18 +320,32 @@ int gpio_is_active(unsigned gpio)
>  	if (!desc)
>  		return -ENODEV;
>  
> -	return gpio_adjust_value(desc, gpio_get_value(gpio));
> +	return gpiod_get_value(desc);
>  }
>  EXPORT_SYMBOL(gpio_is_active);
>  
> -static int gpioinfo_direction_output(struct gpio_desc *desc, int value)
> +/**
> + * gpiod_direction_output_raw - set the GPIO direction to output
> + * @desc:	GPIO to set to output
> + * @value:	initial output value of the GPIO
> + *
> + * Set the direction of the passed GPIO to output, such as gpiod_set_value() can
> + * be called safely on it. The initial value of the output must be specified
> + * as raw value on the physical line without regard for the ACTIVE_LOW status.
> + *
> + * Return 0 in case of success, else an error code.
> + */
> +int gpiod_direction_output_raw(struct gpio_desc *desc, int value)
>  {
> +	VALIDATE_DESC(desc);
> +
>  	if (!desc->chip->ops->direction_output)
>  		return -ENOSYS;
>  
>  	return desc->chip->ops->direction_output(desc->chip,
>  					       gpioinfo_chip_offset(desc), value);
>  }
> +EXPORT_SYMBOL(gpiod_direction_output_raw);
>  
>  int gpio_direction_output(unsigned gpio, int value)
>  {
> @@ -252,13 +359,27 @@ int gpio_direction_output(unsigned gpio, int value)
>  	if (ret)
>  		return ret;
>  
> -	return gpioinfo_direction_output(desc, value);
> +	return gpiod_direction_output_raw(desc, value);
>  }
>  EXPORT_SYMBOL(gpio_direction_output);

This function should be deleted since we don't support the global 'int'
gpio anymore.

> -static int gpioinfo_direction_active(struct gpio_desc *desc, bool value)
> +/**
> + * gpiod_direction_output - set the GPIO direction to output
> + * @desc:	GPIO to set to output
> + * @value:	initial output value of the GPIO
> + *
> + * Set the direction of the passed GPIO to output, such as gpiod_set_value() can
> + * be called safely on it. The initial value of the output must be specified
> + * as the logical value of the GPIO, i.e. taking its ACTIVE_LOW status into
> + * account.
> + *
> + * Return 0 in case of success, else an error code.
> + */
> +int gpiod_direction_output(struct gpio_desc *desc, int value)
>  {
> -	return gpioinfo_direction_output(desc, gpio_adjust_value(desc, value));
> +	VALIDATE_DESC(desc);
> +
> +	return gpiod_direction_output_raw(desc, gpio_adjust_value(desc, value));
>  }
>  
>  int gpio_direction_active(unsigned gpio, bool value)
> @@ -268,18 +389,30 @@ int gpio_direction_active(unsigned gpio, bool value)
>  	if (!desc)
>  		return -ENODEV;
>  
> -	return gpioinfo_direction_active(desc, value);
> +	return gpiod_direction_output(desc, value);
>  }
>  EXPORT_SYMBOL(gpio_direction_active);
>  
> -static int gpioinfo_direction_input(struct gpio_desc *desc)
> +/**
> + * gpiod_direction_input - set the GPIO direction to input
> + * @desc:	GPIO to set to input
> + *
> + * Set the direction of the passed GPIO to input, such as gpiod_get_value() can
> + * be called safely on it.
> + *
> + * Return 0 in case of success, else an error code.
> + */
> +int gpiod_direction_input(struct gpio_desc *desc)
>  {
> +	VALIDATE_DESC(desc);
> +
>  	if (!desc->chip->ops->direction_input)
>  		return -ENOSYS;
>  
>  	return desc->chip->ops->direction_input(desc->chip,
>  					      gpioinfo_chip_offset(desc));
>  }
> +EXPORT_SYMBOL(gpiod_direction_input);
>  
>  int gpio_direction_input(unsigned gpio)
>  {
> @@ -293,7 +426,7 @@ int gpio_direction_input(unsigned gpio)
>  	if (ret)
>  		return ret;
>  
> -	return gpioinfo_direction_input(desc);
> +	return gpiod_direction_input(desc);
>  }
>  EXPORT_SYMBOL(gpio_direction_input);

gpio_direction_input should be deleted as well?

Regards,
  Marco


