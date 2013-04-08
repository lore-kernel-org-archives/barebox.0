Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UP381-0006nQ-2H
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 03:52:22 +0000
Received: by mail-la0-f41.google.com with SMTP id eg20so901309lab.0
 for <barebox@lists.infradead.org>; Sun, 07 Apr 2013 20:52:16 -0700 (PDT)
Date: Mon, 8 Apr 2013 07:51:46 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130408075146.2974b097e7060cbe9d6f840e@gmail.com>
In-Reply-To: <1364883552-6563-11-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-11-git-send-email-dev@lynxeye.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v3 10/10] tegra: add GPIO controller driver
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue,  2 Apr 2013 08:19:12 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> Taken from the Linux kernel, simplified and reworked to match barebox.
> =

> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/Kconfig                        |   2 +
>  arch/arm/dts/tegra20.dtsi               |  16 +++
>  arch/arm/mach-tegra/include/mach/gpio.h |   1 +
>  drivers/gpio/Kconfig                    |   7 +
>  drivers/gpio/Makefile                   |   1 +
>  drivers/gpio/gpio-tegra.c               | 226 ++++++++++++++++++++++++++=
++++++
>  6 files changed, 253 insertions(+)
>  create mode 100644 arch/arm/mach-tegra/include/mach/gpio.h
>  create mode 100644 drivers/gpio/gpio-tegra.c
> =

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index e163e18..9151e66 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -142,6 +142,8 @@ config ARCH_TEGRA
>  	select BUILTIN_DTB
>  	select COMMON_CLK
>  	select CLKDEV_LOOKUP
> +	select GPIOLIB
> +	select GPIO_TEGRA
>  	select OFTREE
>  =

>  config ARCH_ZYNQ
> diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
> index 91858ec..b7d1e27 100644
> --- a/arch/arm/dts/tegra20.dtsi
> +++ b/arch/arm/dts/tegra20.dtsi
> @@ -18,6 +18,22 @@
>  		#clock-cells =3D <1>;
>  	};
>  =

> +	gpio: gpio {
> +		compatible =3D "nvidia,tegra20-gpio";
> +		reg =3D <0x6000d000 0x1000>;
> +		interrupts =3D <0 32 0x04
> +			      0 33 0x04
> +			      0 34 0x04
> +			      0 35 0x04
> +			      0 55 0x04
> +			      0 87 0x04
> +			      0 89 0x04>;
> +		#gpio-cells =3D <2>;
> +		gpio-controller;
> +		#interrupt-cells =3D <2>;
> +		interrupt-controller;
> +	};
> +
>  	pmc {
>  		compatible =3D "nvidia,tegra20-pmc";
>  		reg =3D <0x7000e400 0x400>;
> diff --git a/arch/arm/mach-tegra/include/mach/gpio.h b/arch/arm/mach-tegr=
a/include/mach/gpio.h
> new file mode 100644
> index 0000000..306ab4c
> --- /dev/null
> +++ b/arch/arm/mach-tegra/include/mach/gpio.h
> @@ -0,0 +1 @@
> +#include <asm-generic/gpio.h>
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index ea07028..d5e0ed1 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -36,6 +36,13 @@ config GPIO_PL061
>  config GPIO_STMPE
>  	depends on MFD_STMPE
>  	bool "STMPE GPIO Expander"
> +
> +config GPIO_TEGRA
> +	bool "GPIO support for the Tegra SoCs"
> +	depends on ARCH_TEGRA
> +	help
> +	  Say yes here to include the driver for the GPIO controller found on t=
he
> +	  Tegra line of SoCs.
>  endmenu
>  =

>  endif
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index 00acb68..5dcb6c8 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_GPIO_CLPS711X)	+=3D gpio-clps711x.o
>  obj-$(CONFIG_GPIO_GENERIC)	+=3D gpio-generic.o
>  obj-$(CONFIG_GPIO_PL061)	+=3D gpio-pl061.o
>  obj-$(CONFIG_GPIO_STMPE)	+=3D gpio-stmpe.o
> +obj-$(CONFIG_GPIO_TEGRA)	+=3D gpio-tegra.o
> diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
> new file mode 100644
> index 0000000..55276f6
> --- /dev/null
> +++ b/drivers/gpio/gpio-tegra.c
> @@ -0,0 +1,226 @@
> +/* *
> + * Copyright (C) 2010 Erik Gilling <konkers@google.com>, Google, Inc
> + * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify =
it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License=
 for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <common.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/err.h>
> +
> +#define GPIO_BANK(x)		((x) >> 5)
> +#define GPIO_PORT(x)		(((x) >> 3) & 0x3)
> +#define GPIO_BIT(x)		((x) & 0x7)
> +
> +#define GPIO_REG(x)		(GPIO_BANK(x) * config->bank_stride + \
> +					GPIO_PORT(x) * 4)
> +
> +#define GPIO_CNF(x)		(GPIO_REG(x) + 0x00)
> +#define GPIO_OE(x)		(GPIO_REG(x) + 0x10)
> +#define GPIO_OUT(x)		(GPIO_REG(x) + 0x20)
> +#define GPIO_IN(x)		(GPIO_REG(x) + 0x30)
> +#define GPIO_INT_ENB(x)		(GPIO_REG(x) + 0x50)
> +
> +#define GPIO_MSK_CNF(x)		(GPIO_REG(x) + config->upper_offset + 0x00)
> +#define GPIO_MSK_OE(x)		(GPIO_REG(x) + config->upper_offset + 0x10)
> +#define GPIO_MSK_OUT(x)		(GPIO_REG(x) + config->upper_offset + 0X20)
> +
> +struct tegra_gpio_bank {
> +	int bank;
> +	int irq;
> +};
> +
> +struct tegra_gpio_soc_config {
> +	u32 bank_stride;
> +	u32 upper_offset;
> +	u32 bank_count;
> +};
> +
> +static void __iomem *gpio_base;
> +static 	struct tegra_gpio_soc_config *config;
> +
> +static inline void tegra_gpio_writel(u32 val, u32 reg)
> +{
> +	writel(val, gpio_base + reg);
> +}
> +
> +static inline u32 tegra_gpio_readl(u32 reg)
> +{
> +	return readl(gpio_base + reg);
> +}
> +
> +static int tegra_gpio_compose(int bank, int port, int bit)
> +{
> +	return (bank << 5) | ((port & 0x3) << 3) | (bit & 0x7);
> +}
> +
> +static void tegra_gpio_mask_write(u32 reg, int gpio, int value)
> +{
> +	u32 val;
> +
> +	val =3D 0x100 << GPIO_BIT(gpio);
> +	if (value)
> +		val |=3D 1 << GPIO_BIT(gpio);
> +	tegra_gpio_writel(val, reg);
> +}
> +
> +static void tegra_gpio_enable(int gpio)
> +{
> +	tegra_gpio_mask_write(GPIO_MSK_CNF(gpio), gpio, 1);
> +}
> +
> +static void tegra_gpio_disable(int gpio)
> +{
> +	tegra_gpio_mask_write(GPIO_MSK_CNF(gpio), gpio, 0);
> +}
> +
> +static int tegra_gpio_request(struct gpio_chip *chip, unsigned offset)
> +{
> +	return 0;
> +}
> +
> +static void tegra_gpio_free(struct gpio_chip *chip, unsigned offset)
> +{
> +	tegra_gpio_disable(offset);
> +}
> +
> +static void tegra_gpio_set(struct gpio_chip *chip, unsigned offset, int =
value)
> +{
> +	tegra_gpio_mask_write(GPIO_MSK_OUT(offset), offset, value);
> +}
> +
> +static int tegra_gpio_get(struct gpio_chip *chip, unsigned offset)
> +{
> +	/* If gpio is in output mode then read from the out value */
> +	if ((tegra_gpio_readl(GPIO_OE(offset)) >> GPIO_BIT(offset)) & 1) {
> +		printf("GPIO output mode\n");
> +		return (tegra_gpio_readl(GPIO_OUT(offset)) >>
> +				GPIO_BIT(offset)) & 0x1;
> +	}
> +
> +	printf("GPIO input mode\n");
> +	return (tegra_gpio_readl(GPIO_IN(offset)) >> GPIO_BIT(offset)) & 0x1;
> +}
> +
> +static int tegra_gpio_direction_input(struct gpio_chip *chip, unsigned o=
ffset)
> +{
> +	tegra_gpio_mask_write(GPIO_MSK_OE(offset), offset, 0);
> +	tegra_gpio_enable(offset);
> +	return 0;
> +}
> +
> +static int tegra_gpio_direction_output(struct gpio_chip *chip, unsigned =
offset,
> +					int value)
> +{
> +	tegra_gpio_set(chip, offset, value);
> +	tegra_gpio_mask_write(GPIO_MSK_OE(offset), offset, 1);
> +	tegra_gpio_enable(offset);
> +	return 0;
> +}
> +
> +static struct gpio_ops tegra_gpio_ops =3D {
> +	.request		=3D tegra_gpio_request,
> +	.free			=3D tegra_gpio_free,
> +	.direction_input	=3D tegra_gpio_direction_input,
> +	.direction_output	=3D tegra_gpio_direction_output,
> +	.get			=3D tegra_gpio_get,
> +	.set			=3D tegra_gpio_set,
> +};
> +
> +static struct gpio_chip tegra_gpio_chip =3D {
> +	.ops	=3D &tegra_gpio_ops,
> +	.base	=3D 0,
> +};
> +
> +static int tegra_gpio_probe(struct device_d *dev)
> +{
> +	int i, j, ret;
> +
> +	ret =3D dev_get_drvdata(dev, (unsigned long *)&config);
> +	if (ret) {
> +		dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	gpio_base =3D dev_request_mem_region(dev, 0);
> +	if (!gpio_base) {
> +		dev_err(dev, "could not get memory region\n");
> +		return -ENODEV;
> +	}
> +
> +	for (i =3D 0; i < config->bank_count; i++) {
> +		for (j =3D 0; j < 4; j++) {
> +			int gpio =3D tegra_gpio_compose(i, j, 0);
> +			tegra_gpio_writel(0x00, GPIO_INT_ENB(gpio));
> +		}
> +	}
> +
> +	tegra_gpio_chip.ngpio =3D config->bank_count * 32;
> +	tegra_gpio_chip.dev =3D dev;
> +
> +	gpiochip_add(&tegra_gpio_chip);
> +
> +	return 0;
> +}
> +
> +static struct tegra_gpio_soc_config tegra20_gpio_config =3D {
> +	.bank_stride =3D 0x80,
> +	.upper_offset =3D 0x800,
> +	.bank_count =3D 7,
> +};
> +
> +static struct tegra_gpio_soc_config tegra30_gpio_config =3D {
> +	.bank_stride =3D 0x100,
> +	.upper_offset =3D 0x80,
> +	.bank_count =3D 8,
> +};

Hmmm, tegra30 support here... But we don't have tegra30 boards yet.

> +
> +static struct platform_device_id tegra_gpio_ids[] =3D {
> +	{
> +		.name =3D "tegra20-gpio",
> +		.driver_data =3D (unsigned long)&tegra20_gpio_config,
> +	}, {
> +		.name =3D "tegra30-gpio",
> +		.driver_data =3D (unsigned long)&tegra30_gpio_config,

and here ...

> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] =3D {
> +	{
> +		.compatible =3D "nvidia,tegra30-gpio",
> +		.data =3D (unsigned long)&tegra30_gpio_config
> +	}, {

and here.

> +		.compatible =3D "nvidia,tegra20-gpio",
> +		.data =3D (unsigned long)&tegra20_gpio_config
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static struct driver_d tegra_gpio_driver =3D {
> +	.name		=3D "tegra-gpio",
> +	.id_table	=3D tegra_gpio_ids,
> +	.of_compatible	=3D DRV_OF_COMPAT(tegra_gpio_dt_ids),
> +	.probe		=3D tegra_gpio_probe,
> +};
> +
> +static int __init tegra_gpio_init(void)
> +{
> +	return platform_driver_register(&tegra_gpio_driver);
> +}
> +coredevice_initcall(tegra_gpio_init);
> -- =

> 1.8.1.4
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
