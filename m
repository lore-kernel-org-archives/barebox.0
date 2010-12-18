Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PTzva-0008EL-U4
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 16:46:39 +0000
Date: Sat, 18 Dec 2010 17:41:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101218164148.GB15695@game.jcrosoft.org>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1292685309-32326-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/7] LED: Add gpio LED support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +
> +/**
> + * led_gpio_unregister - remove a gpio controlled LED from the framework
> + * @param led	The gpio LED
> + */
> +void led_gpio_unregister(struct gpio_led *led)
> +{
> +	led_unregister(&led->led);
> +}
> +
how abaout make the rgb support optional?
> +static void led_gpio_rgb_set(struct led *led, unsigned int value)
> +{
> +	struct gpio_rgb_led *rgb = container_of(led, struct gpio_rgb_led, led);
> +	int al = rgb->active_low;
> +
> +	gpio_direction_output(rgb->gpio_r, !!(value & 4) ^ al);
> +	gpio_direction_output(rgb->gpio_g, !!(value & 2) ^ al);
> +	gpio_direction_output(rgb->gpio_b, !!(value & 1) ^ al);
> +}
> +
> +/**
> + * led_gpio_rgb_register - register three gpios as a rgb LED
> + * @param led	The gpio rg LED
> + *
> + * This function registers three gpios as a rgb LED. led->gpio[rgb]
> + * should be initialized to the gpios to control.
> + */
> +int led_gpio_rgb_register(struct gpio_rgb_led *led)
no safe check?
> +{
> +	led->led.set = led_gpio_rgb_set;
> +	led->led.max_value = 7;
> +
> +	return led_register(&led->led);
> +}
> +
> +/**
> + * led_gpio_rgb_unregister - remove a gpio controlled rgb LED from the framework
> + * @param led	The gpio LED
> + */
> +void led_gpio_rgb_unregister(struct gpio_led *led)
> +{
> +	led_unregister(&led->led);
> +}
> +
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
