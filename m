Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOYb-0004WU-2v
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:26:27 +0000
Date: Mon, 19 Nov 2012 11:26:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119102623.GQ10369@pengutronix.de>
References: <1353097043-31250-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353097043-31250-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] led-gpio: add bicolor led support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 16, 2012 at 09:17:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> those led can have 2 colors but one at a time otherwise they are black
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/led/Kconfig    |    4 ++++
>  drivers/led/led-gpio.c |   47 +++++++++++++++++++++++++++++++++++++++++++++++
>  include/led.h          |   20 ++++++++++++++++++++
>  3 files changed, 71 insertions(+)
> 
> diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
> index 106093b..8ca6ab8 100644
> --- a/drivers/led/Kconfig
> +++ b/drivers/led/Kconfig
> @@ -11,6 +11,10 @@ config LED_GPIO_RGB
>  	bool "gpio rgb LED support"
>  	depends on LED_GPIO
>  
> +config LED_GPIO_BICOLOR
> +	bool "gpio bicolor LED support"
> +	depends on LED_GPIO
> +
>  config LED_TRIGGERS
>  	select POLLER
>  	bool "LED triggers support"
> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> index 711146b..c78ef9e 100644
> --- a/drivers/led/led-gpio.c
> +++ b/drivers/led/led-gpio.c
> @@ -52,6 +52,53 @@ void led_gpio_unregister(struct gpio_led *led)
>  	led_unregister(&led->led);
>  }
>  
> +#ifdef CONFIG_LED_GPIO_BICOLOR
> +static void led_gpio_bicolor_set(struct led *led, unsigned int value)
> +{
> +	struct gpio_bicolor_led *bi = container_of(led, struct gpio_bicolor_led, led);
> +	int al = bi->active_low;
> +
> +	switch (value) {
> +	case 0:
> +		gpio_direction_output(bi->gpio_c0, al);
> +		gpio_direction_output(bi->gpio_c1, al);
> +		break;
> +	case 1:
> +		gpio_direction_output(bi->gpio_c0, !al);
> +		gpio_direction_output(bi->gpio_c1, al);
> +		break;
> +	case 2:
> +		gpio_direction_output(bi->gpio_c0, al);
> +		gpio_direction_output(bi->gpio_c1, !al);
> +		break;
> +	}
> +}
> +
> +/**
> + * led_gpio_bicolor_register - register three gpios as a bicolor LED
> + * @param led	The gpio bicolor LED
> + *
> + * This function registers three gpios as a bicolor LED. led->gpio[rg]
> + * should be initialized to the gpios to control.
> + */
> +int led_gpio_bicolor_register(struct gpio_bicolor_led *led)
> +{
> +	led->led.set = led_gpio_bicolor_set;
> +	led->led.max_value = 2;
> +
> +	return led_register(&led->led);
> +}
> +
> +/**
> + * led_gpio_bicolor_unregister - remove a gpio controlled bicolor LED from the framework
> + * @param led	The gpio LED
> + */
> +void led_gpio_bicolor_unregister(struct gpio_bicolor_led *led)
> +{
> +	led_unregister(&led->led);
> +}
> +#endif
> +
>  #ifdef CONFIG_LED_GPIO_RGB
>  
>  static void led_gpio_rgb_set(struct led *led, unsigned int value)
> diff --git a/include/led.h b/include/led.h
> index 9ec1f0d..dd551fe 100644
> --- a/include/led.h
> +++ b/include/led.h
> @@ -65,6 +65,12 @@ struct gpio_led {
>  	struct led led;
>  };
>  
> +struct gpio_bicolor_led {
> +	int gpio_c0, gpio_c1;
> +	bool active_low;
> +	struct led led;
> +};
> +
>  struct gpio_rgb_led {
>  	int gpio_r, gpio_g, gpio_b;
>  	bool active_low;
> @@ -85,6 +91,20 @@ static inline void led_gpio_unregister(struct gpio_led *led)
>  }
>  #endif
>  
> +#ifdef CONFIG_LED_GPIO_BICOLOR
> +int led_gpio_bicolor_register(struct gpio_bicolor_led *led);
> +void led_gpio_bicolor_unregister(struct gpio_bicolor_led *led);
> +#else
> +static inline int led_gpio_bicolor_register(struct gpio_bicolor_led *led)
> +{
> +	return -ENOSYS;
> +}
> +
> +static inline void led_gpio_bicolor_unregister(struct gpio_bicolor_led *led)
> +{
> +}
> +#endif
> +
>  #ifdef CONFIG_LED_GPIO_RGB
>  int led_gpio_rgb_register(struct gpio_rgb_led *led);
>  void led_gpio_rgb_unregister(struct gpio_led *led);
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
