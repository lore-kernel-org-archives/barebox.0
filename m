Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsYe-0003qN-Jx
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:34:13 +0000
Received: by mail-wi0-f182.google.com with SMTP id d1so5062238wiv.15
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:33:49 -0700 (PDT)
Message-ID: <53D6C1BB.8040408@gmail.com>
Date: Mon, 28 Jul 2014 23:33:47 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406582555-10222-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582555-10222-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] led: try to get LED's label from the 'label' property
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org

On 07/28/2014 11:22 PM, Antony Pavlov wrote:

I personally _always_ prefer a commit message...

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/led/led-gpio.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> index 7bb3b49..b36f629 100644
> --- a/drivers/led/led-gpio.c
> +++ b/drivers/led/led-gpio.c
> @@ -206,13 +206,18 @@ static int led_gpio_of_probe(struct device_d *dev)
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
> +		label = of_get_property(child, "label", NULL);

of_property_read_string() ?

Sebastian

> +		if (!label)
> +			label = child->name;
> +		gled->led.name = xstrdup(label);
> +
>  		gled->gpio = gpio;
>  		gled->active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
>  
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
