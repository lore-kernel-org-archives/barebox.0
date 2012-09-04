Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oG6-0007xf-Mt
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:13:19 +0000
Date: Tue, 4 Sep 2012 10:13:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904081316.GO26594@pengutronix.de>
References: <1346670227-1840-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346670227-1840-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346670227-1840-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 2/2] gpio: add driver for stmpe io-expander
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 01:03:47PM +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> +static int stmpe_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
> +{
> +	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
> +	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
> +	int ret;
> +	u8 val;
> +
> +	ci->read_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), &val);
> +	val &= ~(1 << (gpio % 8));
> +	ret = ci->write_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), val);
> +
> +	if (ret)
> +		dev_err(chip->dev, "couldn't change direction. Write failed!\n");
> +
> +	return 0;

Please propagate the error value.

> +}
> +
> +static int stmpe_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
> +{
> +	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
> +	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
> +	int ret;
> +	u8 val;
> +
> +	ci->read_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), &val);
> +	val |= 1 << (gpio % 8);
> +	ret = ci->write_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), val);
> +
> +	stmpe_gpio_set_value(chip, gpio, value);
> +
> +	if (ret)
> +		dev_err(chip->dev, "couldn't change direction. Write failed!\n");
> +
> +	return 0;

ditto

> +
> +static int stmpe_gpio_probe(struct device_d *dev)
> +{
> +	struct stmpe_gpio_chip *stmpegpio;
> +	struct stmpe_client_info *ci;
> +
> +	stmpegpio = xzalloc(sizeof(*stmpegpio));
> +
> +	stmpegpio->base = dev_request_mem_region(dev, 0);
> +	stmpegpio->chip.ops = &stmpe_gpio_ops;
> +	stmpegpio->ci = dev->platform_data;
> +
> +	ci = (struct stmpe_client_info *)stmpegpio->ci;
> +
> +	if (ci->stmpe->pdata->gpio_base)
> +		stmpegpio->chip.base = ci->stmpe->pdata->gpio_base;
> +	else
> +		stmpegpio->chip.base = -1;
> +
> +	stmpegpio->chip.ngpio = 16;
> +	stmpegpio->chip.dev = dev;
> +
> +	gpiochip_add(&stmpegpio->chip);

It's worth checking the return value of gpiochip_add. It could indicate
that the selected chip.base is busy.

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
