Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxbCs-0000mP-6Q
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:31:23 +0000
Date: Wed, 15 Feb 2012 10:31:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120215093108.GA3852@pengutronix.de>
References: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/4] add gpio keyboard support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 14, 2012 at 03:31:18PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> +static inline struct gpio_keys_platform_data *
> +poller_to_gk_pdata(struct poller_struct *poller)
> +{
> +	return container_of(poller, struct gpio_keys_platform_data, poller);
> +}
> +
> +static inline struct gpio_keys_platform_data *
> +cdev_to_gk_pdata(struct console_device *cdev)
> +{
> +	return container_of(cdev, struct gpio_keys_platform_data, cdev);
> +}
> +
> +static int pop_buf(struct gpio_keys_platform_data *pdata)
> +{
> +	int c;
> +
> +	if (pdata->len == 0)
> +		return -EIO;
> +
> +	c = pdata->buf[pdata->pos];
> +
> +	if (!pdata->pos)
> +		pdata->pos = pdata->buf_size - 1;
> +	else
> +		pdata->pos--;
> +	pdata->len--;
> +
> +	return c;
> +}
> +
> +static int push_buf(struct gpio_keys_platform_data *pdata, int c)
> +{
> +	if (pdata->len >= pdata->buf_size)
> +		return -ENOSPC;
> +
> +	pdata->pos++;
> +	pdata->len++;
> +	if (pdata->pos >= pdata->buf_size)
> +		pdata->pos = 0;
> +
> +	pdata->buf[pdata->pos] = c;
> +
> +	return 0;
> +}

This seems the exact usecase for kfifos.

> +
> +static void gpio_key_poller(struct poller_struct *poller)
> +{
> +	struct gpio_keys_platform_data *pdata = poller_to_gk_pdata(poller);
> +	struct gpio_keys_button *gb;
> +	int i, val;
> +
> +	for (i = 0; i < pdata->nbuttons; i++) {
> +
> +		gb = &pdata->buttons[i];
> +		val = gpio_get_value(gb->gpio);
> +
> +		if (val != gb->previous_state && val != gb->active_low) {
> +			push_buf(pdata, gb->code);
> +			debug("pressed ok\n");

This information would be far more informative if you printed the
button that is pressed/released here.

> +		}
> +		gb->previous_state = val;
> +	}

You do nothing for debouncing the keys.

> +}
> +
> +static int gpio_keys_tstc(struct console_device *cdev)
> +{
> +	struct gpio_keys_platform_data *pdata = cdev_to_gk_pdata(cdev);
> +
> +	return pdata->len;
> +}
> +
> +static int gpio_keys_getc(struct console_device *cdev)
> +{
> +	struct gpio_keys_platform_data *pdata = cdev_to_gk_pdata(cdev);
> +
> +	return pop_buf(pdata);
> +}
> +
> +static int __init gpio_keys_probe(struct device_d *dev)
> +{
> +	int ret, i, gpio;
> +	struct gpio_keys_platform_data *pdata;
> +	struct console_device *cdev;
> +
> +	pdata = dev->platform_data;
> +
> +	if (!pdata) {
> +		/* small (so we copy it) but critical! */
> +		pr_err("missing platform_data\n");

dev_err

> +		return -ENODEV;
> +	}
> +
> +	if (!pdata->buf_size)
> +		pdata->buf_size = 50;
> +
> +	pdata->buf = xzalloc(sizeof(int) * pdata->buf_size);
> +
> +	for (i = 0; i < pdata->nbuttons; i++) {
> +		gpio = pdata->buttons->gpio;
> +		ret = gpio_request(gpio, "gpio_keys");
> +		if (ret) {
> +			pr_err("gpio_keys: (%d) can not be requested\n", gpio);

dev_err

> +			return ret;
> +		}
> +		gpio_direction_input(gpio);
> +	}
> +
> +	pdata->poller.func = gpio_key_poller;
> +
> +	cdev = &pdata->cdev;
> +	dev->type_data = cdev;
> +	cdev->dev = dev;
> +	cdev->f_caps = CONSOLE_STDIN;
> +	cdev->tstc = gpio_keys_tstc;
> +	cdev->getc = gpio_keys_getc;
> +
> +	console_register(&pdata->cdev);

As I tried to explain yesterday I'm not sure that directly registering
the gpio keys as a console is the right thing to do. A keyboard has
more attributes than what we have in the console. For example a keyboard
has a button press / button release event which we don't have on the
console.

> +
> +	return poller_register(&pdata->poller);
> +}
> +
> +static struct driver_d gpio_keys_driver = {
> +	.name	= "gpio_keys",
> +	.probe	= gpio_keys_probe,
> +};
> +
> +static int gpio_keys_init(void)
> +{
> +	register_driver(&gpio_keys_driver);
> +	return 0;

Since we now do not panic anymore when an initcall fails but only
use the return value for debug purposes please do a

return register_driver(&gpio_keys_driver);

instead.

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
