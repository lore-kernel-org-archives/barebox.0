Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PTzsA-00084P-B5
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 16:43:07 +0000
Date: Sat, 18 Dec 2010 17:38:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101218163813.GA15695@game.jcrosoft.org>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1292685309-32326-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/7] basic LED support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +/**
> + * led_set - set the value of a LED
> + * @param led	the led
> + * @param value	the value of the LED (0 is disabled)
> + */
> +int led_set(struct led *led, unsigned int value)
> +{
> +	if (value > led->max_value)
> +		value = led->max_value;
> +
> +	led->set(led, value);
> +
> +	return 0;
why always return 0?
> +}
> +
> +/**
> + * led_set_num - set the value of a LED
> + * @param num	the number of the LED
> + * @param value	the value of the LED (0 is disabled)
> + */
> +int led_set_num(int num, unsigned int value)
> +{
> +	struct led *led = led_by_number(num);
> +
> +	if (!led)
> +		return -ENODEV;
> +
> +	return led_set(led, value);
> +}
> +
> +/**
> + * led_register - Register a LED
> + * @param led	the led
> + */
> +int led_register(struct led *led)
> +{
no safe check?
> +	led->num = num_leds++;
> +
> +	list_add_tail(&led->list, &leds);
> +
> +	return 0;
> +}
> +
> +/**
> + * led_unregister - Unegister a LED
> + * @param led	the led
> + */
> +void led_unregister(struct led *led)
> +{
> +	list_del(&led->list);
> +}
> diff --git a/include/led.h b/include/led.h
> new file mode 100644
> index 0000000..62d0d08
> --- /dev/null
> +++ b/include/led.h
> @@ -0,0 +1,25 @@
> +#ifndef __LED_H
> +#define __LED_H
> +
> +struct led {
> +	unsigned long triger;
> +	void (*set)(struct led *, unsigned int value);
return a int will good to known the result
> +	int max_value;
> +	int num;
> +	struct list_head list;
> +};
> +
> +struct led *led_by_number(int no);
> +
> +static inline int led_get_number(struct led *led)
> +{
> +	return led->num;
> +}
> +
> +int led_set_num(int num, unsigned int value);
> +int led_set(struct led *led, unsigned int value);
> +int led_register(struct led *led);
> +void led_unregister(struct led *led);
> +void led_unregister(struct led *led);
twice

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
