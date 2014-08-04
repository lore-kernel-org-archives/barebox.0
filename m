Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEMz4-0007ib-7L
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:27:50 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DC931FF91E6
 for <barebox@lists.infradead.org>; Mon,  4 Aug 2014 20:27:21 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1406899464-29144-2-git-send-email-poggi.raph@gmail.com>
Date: Tue, 5 Aug 2014 02:26:56 +0800
Message-Id: <2F914EFB-7A29-4025-8D54-080D28CF9FA8@jcrosoft.com>
References: <1406899464-29144-1-git-send-email-poggi.raph@gmail.com>
 <1406899464-29144-2-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] pinctrl: at91: add pinctrl driver
To: =?iso-8859-1?Q?Rapha=EBl_Poggi?= <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

why do we need it on barebox?

this driver was design for dt-only in linux

Best Regards,
J.
On Aug 1, 2014, at 9:24 PM, Rapha=EBl Poggi <poggi.raph@gmail.com> wrote:

> This driver is based on mach-at91/gpio.c and linux pinctrl driver.
> The driver contains the gpio and pinctrl parts (like in linux) because th=
e two parts
> share some structures and logics.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
> drivers/pinctrl/Kconfig        |    6 +
> drivers/pinctrl/Makefile       |    1 +
> drivers/pinctrl/pinctrl-at91.c |  529 +++++++++++++++++++++++++++++++++++=
+++++
> drivers/pinctrl/pinctrl-at91.h |  148 +++++++++++
> 4 files changed, 684 insertions(+)
> create mode 100644 drivers/pinctrl/pinctrl-at91.c
> create mode 100644 drivers/pinctrl/pinctrl-at91.h
> =

> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index dffaa4e..ce55c7b 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -7,6 +7,12 @@ config PINCTRL
> 	  from the devicetree. Legacy drivers here may not need this core
> 	  support but instead provide their own SoC specific APIs
> =

> +config PINCTRL_AT91
> +	select PINCTRL
> +	bool
> +	help
> +	    The pinmux controller found on AT91 SoCs.
> +
> config PINCTRL_IMX_IOMUX_V1
> 	select PINCTRL if OFDEVICE
> 	bool
> diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
> index 566ba11..3ea8649 100644
> --- a/drivers/pinctrl/Makefile
> +++ b/drivers/pinctrl/Makefile
> @@ -1,4 +1,5 @@
> obj-$(CONFIG_PINCTRL)	+=3D pinctrl.o
> +obj-$(CONFIG_PINCTRL_AT91) +=3D pinctrl-at91.o
> obj-$(CONFIG_PINCTRL_IMX_IOMUX_V1) +=3D imx-iomux-v1.o
> obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) +=3D imx-iomux-v2.o
> obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) +=3D imx-iomux-v3.o
> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at9=
1.c
> new file mode 100644
> index 0000000..a92a898
> --- /dev/null
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -0,0 +1,529 @@
> +/*
> + * Copyright (C) 2005 HP Labs
> + * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jc=
rosoft.com>
> + * Copyright (C) 2014 Rapha=EBl Poggi
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <errno.h>
> +#include <io.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <getopt.h>
> +
> +#include <mach/at91_pio.h>
> +
> +#include <pinctrl.h>
> +
> +#include "pinctrl-at91.h"
> +
> +struct at91_pinctrl {
> +    struct pinctrl_device pctl;
> +    struct at91_pinctrl_mux_ops	*ops;
> +};
> +
> +struct at91_gpio_chip {
> +	struct gpio_chip	chip;
> +	void __iomem		*regbase;	/* PIO bank virtual address */
> +	struct at91_pinctrl_mux_ops *ops;	/* ops */
> +};
> +
> +enum at91_mux {
> +	AT91_MUX_GPIO =3D 0,
> +	AT91_MUX_PERIPH_A =3D 1,
> +	AT91_MUX_PERIPH_B =3D 2,
> +	AT91_MUX_PERIPH_C =3D 3,
> +	AT91_MUX_PERIPH_D =3D 4,
> +};
> +
> +#define MAX_GPIO_BANKS		5
> +#define to_at91_pinctrl(c) container_of(c, struct at91_pinctrl, pctl);
> +#define to_at91_gpio_chip(c) container_of(c, struct at91_gpio_chip, chip)
> +
> +#define PULL_UP         (1 << 0)
> +#define MULTI_DRIVE     (1 << 1)
> +#define DEGLITCH        (1 << 2)
> +#define PULL_DOWN       (1 << 3)
> +#define DIS_SCHMIT      (1 << 4)
> +#define DEBOUNCE        (1 << 16)
> +#define DEBOUNCE_VAL_SHIFT      17
> +#define DEBOUNCE_VAL    (0x3fff << DEBOUNCE_VAL_SHIFT)
> +
> +static int gpio_banks =3D 0;
> +
> +static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
> +
> +static inline void __iomem *pin_to_controller(struct at91_pinctrl *info,=
 unsigned pin)
> +{
> +	pin /=3D MAX_NB_GPIO_PER_BANK;
> +	if (likely(pin < gpio_banks))
> +		return gpio_chip[pin].regbase;
> +
> +	return NULL;
> +}
> +
> +/**
> + * struct at91_pinctrl_mux_ops - describes an At91 mux ops group
> + * on new IP with support for periph C and D the way to mux in
> + * periph A and B has changed
> + * So provide the right call back
> + * if not present means the IP does not support it
> + * @get_periph: return the periph mode configured
> + * @mux_A_periph: mux as periph A
> + * @mux_B_periph: mux as periph B
> + * @mux_C_periph: mux as periph C
> + * @mux_D_periph: mux as periph D
> + * @set_deglitch: enable/disable deglitch
> + * @set_debounce: enable/disable debounce
> + * @set_pulldown: enable/disable pulldown
> + * @disable_schmitt_trig: disable schmitt trigger
> + */
> +struct at91_pinctrl_mux_ops {
> +	enum at91_mux (*get_periph)(void __iomem *pio, unsigned mask);
> +	void (*mux_A_periph)(void __iomem *pio, unsigned mask);
> +	void (*mux_B_periph)(void __iomem *pio, unsigned mask);
> +	void (*mux_C_periph)(void __iomem *pio, unsigned mask);
> +	void (*mux_D_periph)(void __iomem *pio, unsigned mask);
> +	bool (*get_deglitch)(void __iomem *pio, unsigned pin);
> +	void (*set_deglitch)(void __iomem *pio, unsigned mask, bool in_on);
> +	bool (*get_debounce)(void __iomem *pio, unsigned pin, u32 *div);
> +	void (*set_debounce)(void __iomem *pio, unsigned mask, bool in_on, u32 =
div);
> +	bool (*get_pulldown)(void __iomem *pio, unsigned pin);
> +	void (*set_pulldown)(void __iomem *pio, unsigned mask, bool in_on);
> +	bool (*get_schmitt_trig)(void __iomem *pio, unsigned pin);
> +	void (*disable_schmitt_trig)(void __iomem *pio, unsigned mask);
> +};
> +
> +static enum at91_mux at91_mux_pio3_get_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	unsigned select;
> +
> +	if (__raw_readl(pio + PIO_PSR) & mask)
> +		return AT91_MUX_GPIO;
> +
> +	select =3D !!(__raw_readl(pio + PIO_ABCDSR1) & mask);
> +	select |=3D (!!(__raw_readl(pio + PIO_ABCDSR2) & mask) << 1);
> +
> +	return select + 1;
> +}
> +
> +static enum at91_mux at91_mux_get_periph(void __iomem *pio, unsigned mas=
k)
> +{
> +	unsigned select;
> +
> +	if (__raw_readl(pio + PIO_PSR) & mask)
> +		return AT91_MUX_GPIO;
> +
> +	select =3D __raw_readl(pio + PIO_ABSR) & mask;
> +
> +	return select + 1;
> +}
> +
> +static bool at91_mux_get_deglitch(void __iomem *pio, unsigned pin)
> +{
> +	return (__raw_readl(pio + PIO_IFSR) >> pin) & 0x1;
> +}
> +
> +static bool at91_mux_pio3_get_debounce(void __iomem *pio, unsigned pin, =
u32 *div)
> +{
> +	*div =3D __raw_readl(pio + PIO_SCDR);
> +
> +	return (__raw_readl(pio + PIO_IFSCSR) >> pin) & 0x1;
> +}
> +
> +static bool at91_mux_pio3_get_pulldown(void __iomem *pio, unsigned pin)
> +{
> +	return (__raw_readl(pio + PIO_PPDSR) >> pin) & 0x1;
> +}
> +
> +static bool at91_mux_pio3_get_schmitt_trig(void __iomem *pio, unsigned p=
in)
> +{
> +	return (__raw_readl(pio + PIO_SCHMITT) >> pin) & 0x1;
> +}
> +
> +static struct at91_pinctrl_mux_ops at91rm9200_ops =3D {
> +	.get_periph	=3D at91_mux_get_periph,
> +	.mux_A_periph	=3D at91_mux_set_A_periph,
> +	.mux_B_periph	=3D at91_mux_set_B_periph,
> +	.get_deglitch	=3D at91_mux_get_deglitch,
> +	.set_deglitch	=3D at91_mux_set_deglitch,
> +};
> +
> +static struct at91_pinctrl_mux_ops at91sam9x5_ops =3D {
> +	.get_periph	=3D at91_mux_pio3_get_periph,
> +	.mux_A_periph	=3D at91_mux_pio3_set_A_periph,
> +	.mux_B_periph	=3D at91_mux_pio3_set_B_periph,
> +	.mux_C_periph	=3D at91_mux_pio3_set_C_periph,
> +	.mux_D_periph	=3D at91_mux_pio3_set_D_periph,
> +	.get_deglitch	=3D at91_mux_get_deglitch,
> +	.set_deglitch	=3D at91_mux_pio3_set_deglitch,
> +	.get_debounce	=3D at91_mux_pio3_get_debounce,
> +	.set_debounce	=3D at91_mux_pio3_set_debounce,
> +	.get_pulldown	=3D at91_mux_pio3_get_pulldown,
> +	.set_pulldown	=3D at91_mux_pio3_set_pulldown,
> +	.get_schmitt_trig =3D at91_mux_pio3_get_schmitt_trig,
> +	.disable_schmitt_trig =3D at91_mux_pio3_disable_schmitt_trig,
> +};
> +
> +static int at91_mux_pin(struct at91_pinctrl *info, unsigned pin, enum at=
91_mux mux, int use_pullup)
> +{
> +	void __iomem	*pio =3D pin_to_controller(info, pin);
> +	unsigned mask =3D pin_to_mask(pin);
> +
> +	if (!info)
> +		return -EINVAL;
> +
> +	if (!pio)
> +		return -EINVAL;
> +
> +	at91_mux_disable_interrupt(pio, mask);
> +
> +	switch(mux) {
> +	case AT91_MUX_GPIO:
> +		at91_mux_gpio_enable(pio, mask);
> +		break;
> +	case AT91_MUX_PERIPH_A:
> +		info->ops->mux_A_periph(pio, mask);
> +		break;
> +	case AT91_MUX_PERIPH_B:
> +		info->ops->mux_B_periph(pio, mask);
> +		break;
> +	case AT91_MUX_PERIPH_C:
> +		if (!info->ops->mux_C_periph)
> +			return -EINVAL;
> +		info->ops->mux_C_periph(pio, mask);
> +		break;
> +	case AT91_MUX_PERIPH_D:
> +		if (!info->ops->mux_D_periph)
> +			return -EINVAL;
> +		info->ops->mux_D_periph(pio, mask);
> +		break;
> +	}
> +	if (mux)
> +		at91_mux_gpio_disable(pio, mask);
> +
> +	if (use_pullup >=3D 0)
> +		at91_mux_set_pullup(pio, mask, use_pullup);
> +
> +	return 0;
> +}
> +
> +static struct of_device_id at91_pinctrl_dt_ids[] =3D {
> +	{
> +		.compatible =3D "atmel,at91rm9200-pinctrl",
> +		.data =3D (unsigned long)&at91rm9200_ops,
> +	}, {
> +		.compatible =3D "atmel,at91sam9x5-pinctrl",
> +		.data =3D (unsigned long)&at91sam9x5_ops,
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct =
device_d *dev)
> +{
> +    struct at91_pinctrl_mux_ops *ops_data =3D NULL;
> +    int rc;
> +
> +    if (dev->device_node) {
> +	    const struct of_device_id *match;
> +	    match =3D of_match_node(at91_pinctrl_dt_ids, dev->device_node);
> +	    if (!match)
> +			ops_data =3D NULL;
> +	    else
> +			ops_data =3D (struct at91_pinctrl_mux_ops *)match->data;
> +    }
> +    else {
> +	    rc =3D dev_get_drvdata(dev, (unsigned long *)&ops_data);
> +		if (rc)
> +		ops_data =3D NULL;
> +    }
> +
> +    return ops_data;
> +}
> +
> +static int at91_pinctrl_set_conf(struct at91_pinctrl *info, unsigned int=
 pin_num, unsigned int mux, unsigned int conf)
> +{
> +	unsigned int mask;
> +	void __iomem *pio;
> +
> +	pio =3D pin_to_controller(info, pin_num);
> +	mask =3D pin_to_mask(pin_num);
> +
> +	if (conf & PULL_UP && conf & PULL_DOWN)
> +		return -EINVAL;
> +
> +	at91_mux_set_pullup(pio, mask, conf & PULL_UP);
> +	at91_mux_set_multidrive(pio, mask, conf & MULTI_DRIVE);
> +	if (info->ops->set_deglitch)
> +		info->ops->set_deglitch(pio, mask, conf & DEGLITCH);
> +	if (info->ops->set_debounce)
> +		info->ops->set_debounce(pio, mask, conf & DEBOUNCE,
> +			(conf & DEBOUNCE_VAL) >> DEBOUNCE_VAL_SHIFT);
> +	if (info->ops->set_pulldown)
> +		info->ops->set_pulldown(pio, mask, conf & PULL_DOWN);
> +	if (info->ops->disable_schmitt_trig && conf & DIS_SCHMIT)
> +		info->ops->disable_schmitt_trig(pio, mask);
> +
> +	return 0;
> +}
> +
> +static int at91_pinctrl_set_state(struct pinctrl_device *pdev, struct de=
vice_node *np)
> +{
> +	struct at91_pinctrl *info;
> +	const __be32 *list;
> +	int i, size;
> +	int ret =3D 0;
> +	int bank_num, pin_num, mux, conf;
> +
> +	info =3D to_at91_pinctrl(pdev);
> +
> +	list =3D of_get_property(np, "atmel,pins", &size);
> +	size /=3D sizeof(*list);
> +
> +	if (!size || size % 4) {
> +		dev_err(pdev->dev, "wrong pins number or pins and configs should be by=
 4\n");
> +		return -EINVAL;
> +	}
> +
> +	for (i =3D 0; i < size; i +=3D 4) {
> +		bank_num =3D be32_to_cpu(*list++);
> +		pin_num =3D be32_to_cpu(*list++);
> +		mux =3D be32_to_cpu(*list++);
> +		conf =3D be32_to_cpu(*list++);
> +
> +		ret =3D at91_mux_pin(info, pin_num, mux, conf & PULL_UP);
> +		if (ret) {
> +			dev_err(pdev->dev, "failed to mux pin %d\n", pin_num);
> +			return ret;
> +		}
> +
> +		ret =3D at91_pinctrl_set_conf(info, pin_num, mux, conf);
> +		if (ret) {
> +			dev_err(pdev->dev, "failed to set conf on pin %d\n", pin_num);
> +			return ret;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static struct pinctrl_ops at91_pinctrl_ops =3D {
> +	.set_state =3D at91_pinctrl_set_state,
> +};
> +
> +static int at91_pinctrl_probe(struct device_d *dev)
> +{
> +	struct at91_pinctrl *info;
> +	int ret;
> +
> +	info =3D xzalloc(sizeof(struct at91_pinctrl));
> +
> +	info->ops =3D at91_pinctrl_get_driver_data(dev);
> +	if (!info->ops) {
> +		dev_err(dev, "failed to retrieve driver data\n");
> +		return -ENODEV;
> +	}
> +
> +	info->pctl.dev =3D dev;
> +	info->pctl.ops =3D &at91_pinctrl_ops;
> +
> +	ret =3D pinctrl_register(&info->pctl);
> +	if (ret)
> +		return ret;
> +
> +	dev_info(dev, "AT91 pinctrl registred\n");
> +
> +	return 0;
> +}
> +
> +static struct platform_device_id at91_pinctrl_ids[] =3D {
> +	{
> +		.name =3D "at91rm9200-pinctrl",
> +		.driver_data =3D (unsigned long)&at91rm9200_ops,
> +	}, {
> +		.name =3D "at91sam9x5-pinctrl",
> +		.driver_data =3D (unsigned long)&at91sam9x5_ops,
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static struct driver_d at91_pinctrl_driver =3D {
> +	.name =3D "pinctrl-at91",
> +	.probe =3D at91_pinctrl_probe,
> +	.id_table =3D at91_pinctrl_ids,
> +	.of_compatible =3D DRV_OF_COMPAT(at91_pinctrl_dt_ids),
> +};
> +
> +static int at91_pinctrl_init(void)
> +{
> +	return platform_driver_register(&at91_pinctrl_driver);
> +}
> +coredevice_initcall(at91_pinctrl_init);
> +
> +static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
> +{
> +	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
> +	void __iomem *pio =3D at91_gpio->regbase;
> +	unsigned mask =3D 1 << offset;
> +
> +	return at91_mux_gpio_get(pio, mask);
> +}
> +
> +static void at91_gpio_set(struct gpio_chip *chip, unsigned offset, int v=
alue)
> +{
> +	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
> +	void __iomem *pio =3D at91_gpio->regbase;
> +	unsigned mask =3D 1 << offset;
> +
> +	at91_mux_gpio_set(pio, mask, value);
> +}
> +
> +static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned o=
ffset,
> +		int value)
> +{
> +	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
> +	void __iomem *pio =3D at91_gpio->regbase;
> +	unsigned mask =3D 1 << offset;
> +
> +	at91_mux_gpio_set(pio, mask, value);
> +	__raw_writel(mask, pio + PIO_OER);
> +
> +	return 0;
> +}
> +
> +static int at91_gpio_direction_input(struct gpio_chip *chip, unsigned of=
fset)
> +{
> +	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
> +	void __iomem *pio =3D at91_gpio->regbase;
> +	unsigned mask =3D 1 << offset;
> +
> +	__raw_writel(mask, pio + PIO_ODR);
> +
> +	return 0;
> +}
> +
> +static int at91_gpio_request(struct gpio_chip *chip, unsigned offset)
> +{
> +	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
> +	void __iomem *pio =3D at91_gpio->regbase;
> +	unsigned mask =3D 1 << offset;
> +
> +	dev_dbg(chip->dev, "%s:%d pio%c%d(%d)\n", __func__, __LINE__,
> +		 'A' + pin_to_bank(chip->base), offset, chip->base + offset);
> +	at91_mux_gpio_enable(pio, mask);
> +
> +	return 0;
> +}
> +
> +static void at91_gpio_free(struct gpio_chip *chip, unsigned offset)
> +{
> +	dev_dbg(chip->dev, "%s:%d pio%c%d(%d)\n", __func__, __LINE__,
> +		 'A' + pin_to_bank(chip->base), offset, chip->base + offset);
> +}
> +
> +static struct gpio_ops at91_gpio_ops =3D {
> +	.request =3D at91_gpio_request,
> +	.free =3D at91_gpio_free,
> +	.direction_input =3D at91_gpio_direction_input,
> +	.direction_output =3D at91_gpio_direction_output,
> +	.get =3D at91_gpio_get,
> +	.set =3D at91_gpio_set,
> +};
> +
> +static struct of_device_id at91_gpio_dt_ids[] =3D {
> +	{
> +		.compatible =3D "atmel,at91rm9200-gpio",
> +	}, {
> +		.compatible =3D "atmel,at91sam9x5-gpio",
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static int at91_gpio_probe(struct device_d *dev)
> +{
> +	struct at91_gpio_chip *at91_gpio;
> +	struct clk *clk;
> +	int ret;
> +	int alias_idx =3D of_alias_get_id(dev->device_node, "gpio");
> +
> +	BUG_ON(dev->id > MAX_GPIO_BANKS);
> +
> +	at91_gpio =3D &gpio_chip[alias_idx];
> +
> +	clk =3D clk_get(dev, NULL);
> +	if (IS_ERR(clk)) {
> +		ret =3D PTR_ERR(clk);
> +		dev_err(dev, "clock not found: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D clk_enable(clk);
> +	if (ret < 0) {
> +		dev_err(dev, "clock failed to enable: %d\n", ret);
> +		clk_put(clk);
> +		return ret;
> +	}
> +
> +	gpio_banks =3D max(gpio_banks, alias_idx + 1);
> +	at91_gpio->regbase =3D dev_request_mem_region(dev, 0);
> +
> +	at91_gpio->chip.ops =3D &at91_gpio_ops;
> +	at91_gpio->chip.ngpio =3D MAX_NB_GPIO_PER_BANK;
> +	at91_gpio->chip.dev =3D dev;
> +	at91_gpio->chip.base =3D dev->id * MAX_NB_GPIO_PER_BANK;
> +
> +	ret =3D gpiochip_add(&at91_gpio->chip);
> +	if (ret) {
> +		dev_err(dev, "couldn't add gpiochip, ret =3D %d\n", ret);
> +		return ret;
> +	}
> +
> +	dev_info(dev, "AT91 gpio driver registred\n");
> +
> +	return 0;
> +}
> +
> +static struct platform_device_id at91_gpio_ids[] =3D {
> +	{
> +		.name =3D "at91rm9200-gpio",
> +	}, {
> +		.name =3D "at91sam9x5-gpio",
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static struct driver_d at91_gpio_driver =3D {
> +	.name =3D "gpio-at91",
> +	.probe =3D at91_gpio_probe,
> +	.id_table =3D at91_gpio_ids,
> +	.of_compatible	=3D DRV_OF_COMPAT(at91_gpio_dt_ids),
> +};
> +
> +static int at91_gpio_init(void)
> +{
> +	return platform_driver_register(&at91_gpio_driver);
> +}
> +coredevice_initcall(at91_gpio_init);
> diff --git a/drivers/pinctrl/pinctrl-at91.h b/drivers/pinctrl/pinctrl-at9=
1.h
> new file mode 100644
> index 0000000..e719fb8
> --- /dev/null
> +++ b/drivers/pinctrl/pinctrl-at91.h
> @@ -0,0 +1,148 @@
> +/*
> + * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jc=
rosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#ifndef __AT91_GPIO_H__
> +#define __AT91_GPIO_H__
> +
> +#ifndef __gpio_init
> +#define __gpio_init
> +#endif
> +
> +#define MAX_NB_GPIO_PER_BANK	32
> +
> +static inline unsigned pin_to_bank(unsigned pin)
> +{
> +	return pin / MAX_NB_GPIO_PER_BANK;
> +}
> +
> +static inline unsigned pin_to_bank_offset(unsigned pin)
> +{
> +	return pin % MAX_NB_GPIO_PER_BANK;
> +}
> +
> +static inline unsigned pin_to_mask(unsigned pin)
> +{
> +	return 1 << pin_to_bank_offset(pin);
> +}
> +
> +static inline void at91_mux_disable_interrupt(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(mask, pio + PIO_IDR);
> +}
> +
> +static inline void at91_mux_set_pullup(void __iomem *pio, unsigned mask,=
 bool on)
> +{
> +	__raw_writel(mask, pio + (on ? PIO_PUER : PIO_PUDR));
> +}
> +
> +static inline void at91_mux_set_multidrive(void __iomem *pio, unsigned m=
ask, bool on)
> +{
> +	__raw_writel(mask, pio + (on ? PIO_MDER : PIO_MDDR));
> +}
> +
> +static inline void at91_mux_set_A_periph(void __iomem *pio, unsigned mas=
k)
> +{
> +	__raw_writel(mask, pio + PIO_ASR);
> +}
> +
> +static inline void at91_mux_set_B_periph(void __iomem *pio, unsigned mas=
k)
> +{
> +	__raw_writel(mask, pio + PIO_BSR);
> +}
> +
> +static inline void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
> +						pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
> +						pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
> +						pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
> +						pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_set_deglitch(void __iomem *pio, unsigned mas=
k, bool is_on)
> +{
> +	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
> +}
> +
> +static inline void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigne=
d mask, bool is_on)
> +{
> +	if (is_on)
> +		__raw_writel(mask, pio + PIO_IFSCDR);
> +	at91_mux_set_deglitch(pio, mask, is_on);
> +}
> +
> +static inline void at91_mux_pio3_set_debounce(void __iomem *pio, unsigne=
d mask,
> +				bool is_on, u32 div)
> +{
> +	if (is_on) {
> +		__raw_writel(mask, pio + PIO_IFSCER);
> +		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
> +		__raw_writel(mask, pio + PIO_IFER);
> +	} else {
> +		__raw_writel(mask, pio + PIO_IFDR);
> +	}
> +}
> +
> +static inline void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigne=
d mask, bool is_on)
> +{
> +	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
> +}
> +
> +static inline void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio,=
 unsigned mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
> +}
> +
> +static inline void at91_mux_gpio_disable(void __iomem *pio, unsigned mas=
k)
> +{
> +	__raw_writel(mask, pio + PIO_PDR);
> +}
> +
> +static inline void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
> +{
> +	__raw_writel(mask, pio + PIO_PER);
> +}
> +
> +static inline void at91_mux_gpio_input(void __iomem *pio, unsigned mask,=
 bool input)
> +{
> +	__raw_writel(mask, pio + (input ? PIO_ODR : PIO_OER));
> +}
> +
> +static inline void at91_mux_gpio_set(void __iomem *pio, unsigned mask,
> +int value)
> +{
> +	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
> +}
> +
> +static inline int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
> +{
> +       u32 pdsr;
> +
> +       pdsr =3D __raw_readl(pio + PIO_PDSR);
> +       return (pdsr & mask) !=3D 0;
> +}
> +
> +#endif /* __AT91_GPIO_H__ */
> -- =

> 1.7.9.5
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
