Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUsA-0007or-EK
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 06:38:31 +0000
Received: from [192.168.178.55] ([95.90.205.186]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MmDIu-1kgavc1JYW-00iG7k for
 <barebox@lists.infradead.org>; Thu, 23 Jul 2020 08:25:24 +0200
References: <20200720064108.8426-1-o.rempel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <5cf6b88f-db0b-bcce-b2f4-f9e14659b6e6@rempel-privat.de>
Date: Thu, 23 Jul 2020 08:25:21 +0200
MIME-Version: 1.0
In-Reply-To: <20200720064108.8426-1-o.rempel@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] gpiolib: add gpio_array_to_id helper to get ID out of
 GPIO array
To: barebox@lists.infradead.org

This version need some fixes,
I'll send a new version soon

Am 20.07.20 um 08:41 schrieb Oleksij Rempel:
> Some boards provide a board version and/or ID coded by pull-up/down
> resistors connected to the gpio pins (or pins which can be multiplexed
> at some point as gpio). In this case every one implements own gpio id
> reader function.
>
> To avoid it, provide the common helper function to extract a value out
> of provided gpio array.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c | 28 ++++++++++++++++++++++++++++
>  include/gpio.h         |  5 +++++
>  2 files changed, 33 insertions(+)
>
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 27674af54c..b3d7450ef2 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -381,6 +381,34 @@ void gpio_free_array(const struct gpio *array, size_t num)
>  }
>  EXPORT_SYMBOL_GPL(gpio_free_array);
>
> +int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val)
> +{
> +	u32 id = 0;
> +	int ret, i;
> +
> +	if (num >= 32)
> +		return -EOVERFLOW;
> +
> +	ret = gpio_request_array(array, num);
> +	if (ret)
> +		return ret;
> +
> +	/* Wait untill logic level will be stable */
> +	udelay(5);
> +	for (i = 0; i < num; i++) {
> +		ret = gpio_get_value(array[i].gpio);
> +		if (ret < 0)
> +			return ret;
> +
> +		id |= ret << i;
> +	}
> +
> +	*val = id;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(gpio_array_to_id);
> +
>  static int gpiochip_find_base(int start, int ngpio)
>  {
>  	int i;
> diff --git a/include/gpio.h b/include/gpio.h
> index 98c5b93ba2..81beb47309 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -145,6 +145,10 @@ static inline void gpio_free_array(const struct gpio *array, size_t num)
>  	/* GPIO can never have been requested */
>  	WARN_ON(1);
>  }
> +static inline int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val)
> +{
> +	return -EINVAL;
> +}
>  #else
>  int gpio_request(unsigned gpio, const char *label);
>  int gpio_find_by_name(const char *name);
> @@ -153,6 +157,7 @@ void gpio_free(unsigned gpio);
>  int gpio_request_one(unsigned gpio, unsigned long flags, const char *label);
>  int gpio_request_array(const struct gpio *array, size_t num);
>  void gpio_free_array(const struct gpio *array, size_t num);
> +int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val);
>  #endif
>
>  struct gpio_chip;
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
