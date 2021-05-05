Delivery-date: Wed, 05 May 2021 12:36:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEtg-0007gy-Ss
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:36:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEtf-0001cY-Hj
	for lore@pengutronix.de; Wed, 05 May 2021 12:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MiwV4+0YAl9XPoVI985IwoYrhnl8Yk3DSRyWF3DYtAs=; b=KlSpHRehOCqZ8su0n+VW/lyFk
	GNdAJg2bc/iCYpeGWY7lMUwBklQW0uXT1QUTgyM7SIxloxNAHyFvXeDblRnxK+QsX0mqFqxBoK2XM
	NOe0+lnxOHhD60yhCJvStrXD72+ticX0nwC7KCvcQsgHXz3bUdyf2eHlR3dGGTdF3h9OwJDDA7T74
	rkStRbXf6dTKZGKR9rC1hyx94n5O3r3fl+grPXigY5KfoYLH3sUbc5h3QDMR6dIwd9pJ37p9YawBP
	4JL8me5qlW2eIz66qi1XYna0Rx7EC98i9VeY3nhdy16IX1n3al1xbOCVNhKSSQDg7K6vCblWNpiGT
	zVWOeTMQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEsd-000yzP-Oj; Wed, 05 May 2021 10:35:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEsW-000yur-67
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=zRT49HFkdx5YlUAY8/VnEqGOgI826YfjV4c4djECYaQ=; b=QucgYAUc0eYoFcPo4GMmfAUBNZ
 zi21JTT1JLe7MNWpdHP+nOIDL9TbzNwF5JM61Ja5r/MT6ImyyudYXCXooDPLm7BqVoxhmnjZXj91X
 mgJ38E0iv5slmEGUAtAH5uebJQrAUUL4neC6Fg6m/tooPuJ94wWVZXt8cz2b91a5Fji2ohuKT/Sfs
 lp4nCUlGwCXpQ7ufDtqCqj9AQJUvJs+zOxZl0EqxvoUeIJJbSpzAsVV8g54iWkekE81mGZUBVpNxD
 h1hLx0rtKjEdL/6FyG6Dv8wNz256hIXy++VDAe1WXVeUj8mmx61DvitPUvjyH92Ef2RSYFkxW3Gjx
 Hd+JRwAA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEsT-004gBA-0H
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:35:38 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEsR-0001LA-J5; Wed, 05 May 2021 12:35:35 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-5-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <164dc7f9-ffcf-e1a8-1d11-5f6bdfffde34@pengutronix.de>
Date: Wed, 5 May 2021 12:35:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505100900.88141-5-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_033537_249750_BFAD0DDD 
X-CRM114-Status: GOOD (  32.00  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Alexander Shiyan <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] gpio: add driver for 74xx-ICs with MMIO access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 05.05.21 12:08, Antony Pavlov wrote:
> This patch adds driver to support GPIO functionality
> for 74xx-compatible ICs with MMIO access.
> 
> Compatible models include:
>      1 bit:   741G125 (Input), 741G74 (Output)
>      2 bits:  742G125 (Input), 7474 (Output)
>      4 bits:  74125 (Input), 74175 (Output)
>      6 bits:  74365 (Input), 74174 (Output)
>      8 bits:  74244 (Input), 74273 (Output)
>      16 bits: 741624 (Input), 7416374 (Output)
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/gpio/Kconfig          |  14 +++
>  drivers/gpio/Makefile         |   1 +
>  drivers/gpio/gpio-74xx-mmio.c | 170 ++++++++++++++++++++++++++++++++++
>  3 files changed, 185 insertions(+)
> 
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 261b6e6662..59cb00ff22 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -21,6 +21,20 @@ config GPIO_74164
>  	  shift registers. This driver can be used to provide access
>  	  to more gpio outputs.
>  
> +config GPIO_74XX_MMIO
> +	tristate "GPIO driver for 74xx-ICs with MMIO access"
> +	depends on OFDEVICE
> +	select GPIO_GENERIC
> +	help
> +	  Say yes here to support GPIO functionality for 74xx-compatible ICs
> +	  with MMIO access. Compatible models include:
> +	    1 bit:	741G125 (Input), 741G74 (Output)
> +	    2 bits:	742G125 (Input), 7474 (Output)
> +	    4 bits:	74125 (Input), 74175 (Output)
> +	    6 bits:	74365 (Input), 74174 (Output)
> +	    8 bits:	74244 (Input), 74273 (Output)
> +	    16 bits:	741624 (Input), 7416374 (Output)
> +
>  config GPIO_CLPS711X
>  	bool "GPIO support for CLPS711X"
>  	depends on ARCH_CLPS711X || COMPILE_TEST
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index 77dcf58f64..7ece8621d2 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
>  
>  obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
> +obj-$(CONFIG_GPIO_74XX_MMIO)	+= gpio-74xx-mmio.o
>  obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
>  obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
>  obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
> diff --git a/drivers/gpio/gpio-74xx-mmio.c b/drivers/gpio/gpio-74xx-mmio.c
> new file mode 100644
> index 0000000000..2c05d022f1
> --- /dev/null
> +++ b/drivers/gpio/gpio-74xx-mmio.c
> @@ -0,0 +1,170 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * 74xx MMIO GPIO driver
> + *
> + *  Copyright (C) 2014 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * Ported to barebox from linux-v5.4-rc6
> + *   Copyright (C) 2019-2021 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <io.h>
> +#include <malloc.h>
> +
> +#include <linux/err.h>
> +#include <linux/basic_mmio_gpio.h>
> +
> +#define MMIO_74XX_DIR_IN	(0 << 8)
> +#define MMIO_74XX_DIR_OUT	(1 << 8)
> +#define MMIO_74XX_BIT_CNT(x)	((x) & 0xff)
> +
> +struct mmio_74xx_gpio_priv {
> +	struct bgpio_chip	bgc;
> +	unsigned int		flags;
> +};
> +
> +static const struct of_device_id mmio_74xx_gpio_ids[] = {
> +	{
> +		.compatible	= "ti,741g125",
> +		.data		= (const void *)(MMIO_74XX_DIR_IN | 1),
> +	},
> +	{
> +		.compatible	= "ti,742g125",
> +		.data		= (const void *)(MMIO_74XX_DIR_IN | 2),
> +	},
> +	{
> +		.compatible	= "ti,74125",
> +		.data		= (const void *)(MMIO_74XX_DIR_IN | 4),
> +	},
> +	{
> +		.compatible	= "ti,74365",
> +		.data		= (const void *)(MMIO_74XX_DIR_IN | 6),
> +	},
> +	{
> +		.compatible	= "ti,74244",
> +		.data		= (const void *)(MMIO_74XX_DIR_IN | 8),
> +	},
> +	{
> +		.compatible	= "ti,741624",
> +		.data		= (const void *)(MMIO_74XX_DIR_IN | 16),
> +	},
> +	{
> +		.compatible	= "ti,741g74",
> +		.data		= (const void *)(MMIO_74XX_DIR_OUT | 1),
> +	},
> +	{
> +		.compatible	= "ti,7474",
> +		.data		= (const void *)(MMIO_74XX_DIR_OUT | 2),
> +	},
> +	{
> +		.compatible	= "ti,74175",
> +		.data		= (const void *)(MMIO_74XX_DIR_OUT | 4),
> +	},
> +	{
> +		.compatible	= "ti,74174",
> +		.data		= (const void *)(MMIO_74XX_DIR_OUT | 6),
> +	},
> +	{
> +		.compatible	= "ti,74273",
> +		.data		= (const void *)(MMIO_74XX_DIR_OUT | 8),
> +	},
> +	{
> +		.compatible	= "ti,7416374",
> +		.data		= (const void *)(MMIO_74XX_DIR_OUT | 16),
> +	},
> +	{ }
> +};
> +
> +static inline
> +struct mmio_74xx_gpio_priv *to_mmio_74xx_gpio_priv(struct gpio_chip *gc)
> +{
> +	struct bgpio_chip *bgc =
> +		container_of(gc, struct bgpio_chip, gc);
> +
> +	return container_of(bgc, struct mmio_74xx_gpio_priv, bgc);
> +}
> +
> +static int mmio_74xx_get_direction(struct gpio_chip *gc, unsigned int offset)
> +{
> +	struct mmio_74xx_gpio_priv *priv = to_mmio_74xx_gpio_priv(gc);
> +
> +	if (priv->flags & MMIO_74XX_DIR_OUT)
> +		return GPIOF_DIR_OUT;
> +
> +	return GPIOF_DIR_IN;
> +}
> +
> +static int mmio_74xx_dir_in(struct gpio_chip *gc, unsigned int gpio)
> +{
> +	struct mmio_74xx_gpio_priv *priv = to_mmio_74xx_gpio_priv(gc);
> +
> +	return (priv->flags & MMIO_74XX_DIR_OUT) ? -ENOTSUPP : 0;
> +}
> +
> +static int mmio_74xx_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
> +{
> +	struct mmio_74xx_gpio_priv *priv = to_mmio_74xx_gpio_priv(gc);
> +
> +	if (priv->flags & MMIO_74XX_DIR_OUT) {
> +		gc->ops->set(gc, gpio, val);
> +		return 0;
> +	}
> +
> +	return -ENOTSUPP;
> +}
> +
> +static int mmio_74xx_gpio_probe(struct device_d *dev)
> +{
> +	struct mmio_74xx_gpio_priv *priv;
> +	void __iomem *dat;
> +	int err;
> +	struct gpio_chip *gc;
> +
> +	priv = xzalloc(sizeof(*priv));
> +
> +	err = dev_get_drvdata(dev, (const void **)&priv->flags);
> +	if (err)
> +		return err;

Not 64-bit safe. Please use device_get_match_data() instead.

> +
> +	dat = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(dat))
> +		return PTR_ERR(dat);
> +
> +	err = bgpio_init(&priv->bgc, dev,
> +			 DIV_ROUND_UP(MMIO_74XX_BIT_CNT(priv->flags), 8),
> +			 dat, NULL, NULL, NULL, NULL, 0);
> +	if (err)
> +		return err;
> +
> +	gc = &priv->bgc.gc;
> +	gc->ops->direction_input = mmio_74xx_dir_in;
> +	gc->ops->direction_output = mmio_74xx_dir_out;
> +	gc->ops->get_direction = mmio_74xx_get_direction;
> +	gc->ngpio = MMIO_74XX_BIT_CNT(priv->flags);
> +
> +	dev->priv = priv;
> +
> +	return gpiochip_add(gc);
> +}
> +
> +static struct driver_d mmio_74xx_gpio_driver = {
> +	.name = "74xx-mmio-gpio",
> +	.of_compatible	= DRV_OF_COMPAT(mmio_74xx_gpio_ids),
> +	.probe = mmio_74xx_gpio_probe,
> +};
> +
> +static int mmio_74xx_gpio_init(void)
> +{
> +	return platform_driver_register(&mmio_74xx_gpio_driver);
> +}
> +coredevice_initcall(mmio_74xx_gpio_init);

You can abbreviate this with coredevice_platform_driver.

Cheers,
Ahmad



> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Alexander Shiyan <shc_work@mail.ru>");
> +MODULE_DESCRIPTION("74xx MMIO GPIO driver");
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

