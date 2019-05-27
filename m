Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVMzZ-00035p-8s
 for barebox@lists.infradead.org; Mon, 27 May 2019 21:17:15 +0000
Date: Mon, 27 May 2019 23:15:04 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190527211504.GA29216@ravnborg.org>
References: <20190527204228.26363-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527204228.26363-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v3] gpio: add driver for PCF857x, PCA{85, 96}7x, and
 MAX732[89] I2C GPIO expanders
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael.

On Mon, May 27, 2019 at 10:42:28PM +0200, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> v1 -> v2:
> 
> - removed unnecessary chapter in kconfig helptext
> - removed platform data setup and teardown callbacks
> - removed error path for xzalloc
> 
> v2 -> v3:
> 
> - removed include/platform_data/pcf857x.h
> - removed useage and comments of platform_data
> 
>  drivers/gpio/Kconfig        |  16 +++
>  drivers/gpio/Makefile       |   1 +
>  drivers/gpio/gpio-pcf857x.c | 254 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 271 insertions(+)
>  create mode 100644 drivers/gpio/gpio-pcf857x.c
> 
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index c535904ed0..9bfa97160c 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -98,6 +98,22 @@ config GPIO_PCA953X
>  
>  	  40 bits: pca9505, pca9698
>  
> +config GPIO_PCF857X
> +	tristate "PCF857x, PCA{85,96}7x, and MAX732[89] I2C GPIO expanders"
> +	depends on I2C
This driver depends on CONFIG_OF, as the platform_data stuff is gone.

> +	help
> +	  Say yes here to provide access to most "quasi-bidirectional" I2C
> +	  GPIO expanders used for additional digital outputs or inputs.
> +	  Most of these parts are from NXP, though TI is a second source for
> +	  some of them.  Compatible models include:
> +
> +	  8 bits:   pcf8574, pcf8574a, pca8574, pca8574a,
> +	            pca9670, pca9672, pca9674, pca9674a,
> +	  	    max7328, max7329
> +
> +	  16 bits:  pcf8575, pcf8575c, pca8575,
> +	            pca9671, pca9673, pca9675
> +
>  config GPIO_PL061
>  	bool "PrimeCell PL061 GPIO support"
>  	depends on ARM_AMBA
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index 52280f0bb4..990df01788 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
>  obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
>  obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
>  obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
> +obj-$(CONFIG_GPIO_PCF857X)	+= gpio-pcf857x.o
>  obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
>  obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
>  obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
> diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
> new file mode 100644
> index 0000000000..a10d5d8407
> --- /dev/null
> +++ b/drivers/gpio/gpio-pcf857x.c
> @@ -0,0 +1,254 @@
> +/*
> + * Driver for pcf857x, pca857x, and pca967x I2C GPIO expanders
> + *
> + * This code was ported from linux-5.1 kernel by Michael Grzeschik.
> + *
> + * Copyright (C) 2007 David Brownell
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <malloc.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +#include <gpio.h>
> +
> +static const struct platform_device_id pcf857x_id[] = {
> +	{ "pcf8574", 8 },
> +	{ "pcf8574a", 8 },
> +	{ "pca8574", 8 },
> +	{ "pca9670", 8 },
> +	{ "pca9672", 8 },
> +	{ "pca9674", 8 },
> +	{ "pcf8575", 16 },
> +	{ "pca8575", 16 },
> +	{ "pca9671", 16 },
> +	{ "pca9673", 16 },
> +	{ "pca9675", 16 },
> +	{ "max7328", 8 },
> +	{ "max7329", 8 },
> +	{ }
> +};
> +
> +/*
> + * The pcf857x, pca857x, and pca967x chips only expose one read and one
> + * write register.  Writing a "one" bit (to match the reset state) lets
> + * that pin be used as an input; it's not an open-drain model, but acts
> + * a bit like one.  This is described as "quasi-bidirectional"; read the
> + * chip documentation for details.
> + *
> + * Many other I2C GPIO expander chips (like the pca953x models) have
> + * more complex register models and more conventional circuitry using
> + * push/pull drivers.  They often use the same 0x20..0x27 addresses as
> + * pcf857x parts, making the "legacy" I2C driver model problematic.
> + */
> +struct pcf857x {
> +	struct gpio_chip	chip;
> +	struct i2c_client	*client;
> +	unsigned		out;		/* software latch */
> +
> +	int (*write)(struct i2c_client *client, unsigned data);
> +	int (*read)(struct i2c_client *client);
> +};
> +
> +static inline struct pcf857x *to_pcf(struct gpio_chip *gc)
> +{
> +	return container_of(gc, struct pcf857x, chip);
> +}
> +
> +/*-------------------------------------------------------------------------*/
> +
> +/* Talk to 8-bit I/O expander */
> +
> +static int i2c_write_le8(struct i2c_client *client, unsigned data)
> +{
> +	return i2c_smbus_write_byte(client, data);
> +}
> +
> +static int i2c_read_le8(struct i2c_client *client)
> +{
> +	return (int)i2c_smbus_read_byte(client);
> +}
> +
> +/* Talk to 16-bit I/O expander */
> +
> +static int i2c_write_le16(struct i2c_client *client, unsigned word)
> +{
> +	u8 buf[2] = { word & 0xff, word >> 8, };
> +	int ret;
> +
> +	ret = i2c_master_send(client, buf, 2);
> +	return (ret < 0) ? ret : 0;
> +}
> +
> +static int i2c_read_le16(struct i2c_client *client)
> +{
> +	u8 buf[2];
> +	int ret;
> +
> +	ret = i2c_master_recv(client, buf, 2);
> +	if (ret < 0)
> +		return ret;
> +	return (buf[1] << 8) | buf[0];
> +}
> +
> +/*-------------------------------------------------------------------------*/
> +
> +static int pcf857x_input(struct gpio_chip *chip, unsigned offset)
> +{
> +	struct pcf857x	*gpio = to_pcf(chip);
> +	int		ret;
> +
> +	gpio->out |= (1 << offset);
> +	ret = gpio->write(gpio->client, gpio->out);
> +
> +	return ret;
> +}
> +
> +static int pcf857x_get(struct gpio_chip *chip, unsigned offset)
> +{
> +	struct pcf857x	*gpio = to_pcf(chip);
> +	int		value;
> +
> +	value = gpio->read(gpio->client);
> +	return (value < 0) ? value : !!(value & (1 << offset));
> +}
> +
> +static int pcf857x_output(struct gpio_chip *chip, unsigned offset, int value)
> +{
> +	struct pcf857x	*gpio = to_pcf(chip);
> +	unsigned	bit = 1 << offset;
> +	int		ret;
> +
> +	if (value)
> +		gpio->out |= bit;
> +	else
> +		gpio->out &= ~bit;
> +	ret = gpio->write(gpio->client, gpio->out);
> +
> +	return ret;
> +}
> +
> +static void pcf857x_set(struct gpio_chip *chip, unsigned offset, int value)
> +{
> +	pcf857x_output(chip, offset, value);
> +}
> +
> +/*-------------------------------------------------------------------------*/
> +
> +static struct gpio_ops pcf857x_gpio_ops = {
> +	.direction_input  = pcf857x_input,
> +	.direction_output = pcf857x_output,
> +	.get = pcf857x_get,
> +	.set = pcf857x_set,
> +};
> +
> +static int pcf857x_probe(struct device_d *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct device_node		*np = dev->device_node;
> +	struct pcf857x			*gpio;
> +	unsigned long			driver_data;
> +	unsigned int			n_latch = 0;
> +	int				ret;
> +
> +	if (IS_ENABLED(CONFIG_OF) && np)
> +		of_property_read_u32(np, "lines-initial-states", &n_latch);
So we no longer need the IS_ENABLED(CONFIG_OF) part.
And consider what to do if np is NULL (error out?).

With the few comments fixed:

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
