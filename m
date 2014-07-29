Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC6ZY-0005j9-ED
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 12:32:06 +0000
Date: Tue, 29 Jul 2014 14:31:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729123142.GG23235@pengutronix.de>
References: <1406612196-15297-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406612196-15297-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3] led: try to get LED's label from the 'label' property
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 29, 2014 at 09:36:36AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  Documentation/devicetree/bindings/leds/common.rst | 2 ++
>  drivers/led/led-gpio.c                            | 6 +++++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
> index c1fd1ab..1f5ae42 100644
> --- a/Documentation/devicetree/bindings/leds/common.rst
> +++ b/Documentation/devicetree/bindings/leds/common.rst
> @@ -8,3 +8,5 @@ Common leds properties
>      * ``panic`` - LED turns on when barebox panics
>      * ``net`` - LED indicates network activity
>  
> +* ``label``: The label for this LED. If omitted, the label is taken
> +  from the node name (excluding the unit address).
> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> index 7bb3b49..a1a6617 100644
> --- a/drivers/led/led-gpio.c
> +++ b/drivers/led/led-gpio.c
> @@ -206,13 +206,17 @@ static int led_gpio_of_probe(struct device_d *dev)
>  		struct gpio_led *gled;
>  		enum of_gpio_flags flags;
>  		int gpio;
> +		const char *label;
>  
>  		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
>  		if (gpio < 0)
>  			continue;
>  
>  		gled = xzalloc(sizeof(*gled));
> -		gled->led.name = xstrdup(child->name);
> +		if (of_property_read_string(child, "label", &label))
> +			label = child->name;
> +		gled->led.name = xstrdup(label);
> +
>  		gled->gpio = gpio;
>  		gled->active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
>  
> -- 
> 2.0.1
> 
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
