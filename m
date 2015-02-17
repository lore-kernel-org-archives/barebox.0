Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YNd44-0004U0-TF
 for barebox@lists.infradead.org; Tue, 17 Feb 2015 07:59:29 +0000
Date: Tue, 17 Feb 2015 08:59:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150217075906.GP12209@pengutronix.de>
References: <1424091808-23455-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424091808-23455-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] led: gpio: add support for default-state dt-property
To: h.feurstein@gmail.com
Cc: Hubert Feurstein <hubert.feurstein@deto.at>, barebox@lists.infradead.org

On Mon, Feb 16, 2015 at 02:03:28PM +0100, h.feurstein@gmail.com wrote:
> From: Hubert Feurstein <hubert.feurstein@deto.at>
> 
> This patch adds support for the default-state device tree property.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/led/led-gpio.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> index a1a6617..69ad7e7 100644
> --- a/drivers/led/led-gpio.c
> +++ b/drivers/led/led-gpio.c
> @@ -204,6 +204,7 @@ static int led_gpio_of_probe(struct device_d *dev)
>  
>  	for_each_child_of_node(dev->device_node, child) {
>  		struct gpio_led *gled;
> +		const char *default_state;
>  		enum of_gpio_flags flags;
>  		int gpio;
>  		const char *label;
> @@ -225,6 +226,18 @@ static int led_gpio_of_probe(struct device_d *dev)
>  
>  		led_gpio_register(gled);
>  		led_of_parse_trigger(&gled->led, child);
> +
> +		if (!of_property_read_string(child, "default-state", &default_state)) {
> +			int state = -1;
> +
> +			if (!strcmp(default_state, "on"))
> +				state = 1;
> +			else if (!strcmp(default_state, "off"))
> +				state = 0;
> +
> +			if (state >= 0)
> +				led_gpio_set(&gled->led, state ^ gled->active_low);

led_gpio_set already evaluates active_low, so doing it here again is
wrong.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
