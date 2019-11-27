Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvXs-0002St-Qa
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:31:46 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iZvXp-0006Rz-Oe
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 12:31:41 +0100
References: <20191127111613.24173-1-s.hauer@pengutronix.de>
 <20191127111613.24173-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <153bbae3-b43b-558e-900f-462f2c60b2f8@pengutronix.de>
Date: Wed, 27 Nov 2019 12:31:37 +0100
MIME-Version: 1.0
In-Reply-To: <20191127111613.24173-4-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/4] of/gpio: Support gpio-line-names property
To: barebox@lists.infradead.org

Hello Sascha,

On 11/27/19 12:16 PM, Sascha Hauer wrote:
> GPIOs can be given names with the gpio-line-names device tree property.
> This patch adds support for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 057cea43cc..9764ddf0f0 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -428,11 +428,25 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
>  static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  {
>  	struct device_node *np;
> -	int ret, i;
> +	int ret, i, count;
>  
>  	if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->device_node)
>  		return 0;
>  
> +	count = of_property_count_strings(chip->dev->device_node, "gpio-line-names");
> +
> +	if (count > 0) {
> +		const char **arr = xzalloc(count * sizeof(char *));
> +
> +		of_property_read_string_array(chip->dev->device_node,
> +					      "gpio-line-names", arr, count);
> +
> +		for (i = 0; i < chip->ngpio && i < count; i++)
> +			gpio_desc[chip->base + i].name = xstrdup(arr[i]);

There's no need to duplicate memory here. You could just directly point into the
unflattened DTB. You could reuse of_gpiochip_set_names from my patch
sent yesterday.

> +
> +		free(arr);
> +	}
> +
>  	for_each_available_child_of_node(chip->dev->device_node, np) {
>  		if (!of_property_read_bool(np, "gpio-hog"))
>  			continue;
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
