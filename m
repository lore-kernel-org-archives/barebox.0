Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT155-0003Qk-5Y
 for barebox@lists.infradead.org; Tue, 21 May 2019 09:29:12 +0000
Date: Tue, 21 May 2019 11:29:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190521092909.rxl3wp4ozpzgekfd@pengutronix.de>
References: <20190517233606.28573-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517233606.28573-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] gpio: add driver for PCF857x, PCA{85, 96}7x, and
 MAX732[89] I2C GPIO expanders
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, May 18, 2019 at 01:36:06AM +0200, Michael Grzeschik wrote:
> +static int pcf857x_probe(struct device_d *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct pcf857x_platform_data	*pdata = dev->platform_data;
> +	struct device_node		*np = dev->device_node;
> +	struct pcf857x			*gpio;
> +	unsigned long			driver_data;
> +	unsigned int			n_latch = 0;
> +	int				ret;
> +
> +	if (IS_ENABLED(CONFIG_OF) && np)
> +		of_property_read_u32(np, "lines-initial-states", &n_latch);
> +	else if (pdata)
> +		n_latch = pdata->n_latch;
> +
> +	/* Allocate, initialize, and register this gpio_chip. */
> +	gpio = xzalloc(sizeof(*gpio));
> +	if (!gpio)
> +		return -ENOMEM;

xzalloc never returns NULL.

> +	ret = gpiochip_add(&gpio->chip);
> +	if (ret)
> +		return ret;
> +
> +	/* Let platform code set up the GPIOs and their users.
> +	 * Now is the first time anyone could use them.
> +	 */
> +	if (pdata && pdata->setup) {
> +		ret = pdata->setup(client,
> +				gpio->chip.base, gpio->chip.ngpio,
> +				pdata->context);
> +		if (ret < 0)
> +			dev_warn(&client->dev, "setup failed, %d\n", ret);
> +	}

I don't think we want to have that pdata->setup() support.

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
