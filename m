Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PU0Q3-00019R-6a
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 17:18:08 +0000
Date: Sat, 18 Dec 2010 18:18:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101218171805.GJ6017@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-3-git-send-email-s.hauer@pengutronix.de>
	<20101218163813.GA15695@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101218163813.GA15695@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Sat, Dec 18, 2010 at 05:38:13PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +/**
> > + * led_set - set the value of a LED
> > + * @param led	the led
> > + * @param value	the value of the LED (0 is disabled)
> > + */
> > +int led_set(struct led *led, unsigned int value)
> > +{
> > +	if (value > led->max_value)
> > +		value = led->max_value;
> > +
> > +	led->set(led, value);
> > +
> > +	return 0;
> why always return 0?

Should make this void, see below.

> > +}
> > +
> > +/**
> > + * led_set_num - set the value of a LED
> > + * @param num	the number of the LED
> > + * @param value	the value of the LED (0 is disabled)
> > + */
> > +int led_set_num(int num, unsigned int value)
> > +{
> > +	struct led *led = led_by_number(num);
> > +
> > +	if (!led)
> > +		return -ENODEV;
> > +
> > +	return led_set(led, value);
> > +}
> > +
> > +/**
> > + * led_register - Register a LED
> > + * @param led	the led
> > + */
> > +int led_register(struct led *led)
> > +{
> no safe check?

What should we check for? NUll pointers? That's not worth it.

> > +	led->num = num_leds++;
> > +
> > +	list_add_tail(&led->list, &leds);
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * led_unregister - Unegister a LED
> > + * @param led	the led
> > + */
> > +void led_unregister(struct led *led)
> > +{
> > +	list_del(&led->list);
> > +}
> > diff --git a/include/led.h b/include/led.h
> > new file mode 100644
> > index 0000000..62d0d08
> > --- /dev/null
> > +++ b/include/led.h
> > @@ -0,0 +1,25 @@
> > +#ifndef __LED_H
> > +#define __LED_H
> > +
> > +struct led {
> > +	unsigned long triger;
> > +	void (*set)(struct led *, unsigned int value);
> return a int will good to known the result

I intentionally made this void because setting a LED is not really
supposed to fail. And even if does, I don't know if it's worth anything
to tell the user "setting a LED failed", when this may be even in a loop
and the user is bothered with a hundred of these messages.

> > +	int max_value;
> > +	int num;
> > +	struct list_head list;
> > +};
> > +
> > +struct led *led_by_number(int no);
> > +
> > +static inline int led_get_number(struct led *led)
> > +{
> > +	return led->num;
> > +}
> > +
> > +int led_set_num(int num, unsigned int value);
> > +int led_set(struct led *led, unsigned int value);
> > +int led_register(struct led *led);
> > +void led_unregister(struct led *led);
> > +void led_unregister(struct led *led);
> twice
> 
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
