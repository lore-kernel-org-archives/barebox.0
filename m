Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PU0Rq-0001O4-8m
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 17:19:59 +0000
Date: Sat, 18 Dec 2010 18:18:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101218171856.GK6017@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-4-git-send-email-s.hauer@pengutronix.de>
	<20101218164148.GB15695@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101218164148.GB15695@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 18, 2010 at 05:41:48PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +
> > +/**
> > + * led_gpio_unregister - remove a gpio controlled LED from the framework
> > + * @param led	The gpio LED
> > + */
> > +void led_gpio_unregister(struct gpio_led *led)
> > +{
> > +	led_unregister(&led->led);
> > +}
> > +
> how abaout make the rgb support optional?

Good point, most boards do not have this kind of stuff.

> > +static void led_gpio_rgb_set(struct led *led, unsigned int value)
> > +{
> > +	struct gpio_rgb_led *rgb = container_of(led, struct gpio_rgb_led, led);
> > +	int al = rgb->active_low;
> > +
> > +	gpio_direction_output(rgb->gpio_r, !!(value & 4) ^ al);
> > +	gpio_direction_output(rgb->gpio_g, !!(value & 2) ^ al);
> > +	gpio_direction_output(rgb->gpio_b, !!(value & 1) ^ al);
> > +}
> > +
> > +/**
> > + * led_gpio_rgb_register - register three gpios as a rgb LED
> > + * @param led	The gpio rg LED
> > + *
> > + * This function registers three gpios as a rgb LED. led->gpio[rgb]
> > + * should be initialized to the gpios to control.
> > + */
> > +int led_gpio_rgb_register(struct gpio_rgb_led *led)
> no safe check?

no.

> > +{
> > +	led->led.set = led_gpio_rgb_set;
> > +	led->led.max_value = 7;
> > +
> > +	return led_register(&led->led);
> > +}
> > +
> > +/**
> > + * led_gpio_rgb_unregister - remove a gpio controlled rgb LED from the framework
> > + * @param led	The gpio LED
> > + */
> > +void led_gpio_rgb_unregister(struct gpio_led *led)
> > +{
> > +	led_unregister(&led->led);
> > +}
> > +
> Best Regards,
> J.
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
