Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGEM5-0007om-8r
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 19:30:10 +0000
Date: Mon, 24 Sep 2012 21:30:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120924193007.GU1322@pengutronix.de>
References: <1348477176-25398-1-git-send-email-t.gamez@phytec.de>
 <1348477176-25398-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348477176-25398-2-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] ARM OMAP: switch to gpiolib support
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Mon, Sep 24, 2012 at 10:59:36AM +0200, Teresa G=E1mez wrote:
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Nice cleanup. Applied, thanks

Sascha

> ---
>  arch/arm/Kconfig                   |    1 +
>  arch/arm/mach-omap/gpio.c          |  171 ++++++++++++++++--------------=
-----
>  arch/arm/mach-omap/omap3_generic.c |   19 ++++
>  arch/arm/mach-omap/omap4_generic.c |   19 ++++
>  4 files changed, 117 insertions(+), 93 deletions(-)
> =

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index a54ad03..7b7b058 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -58,6 +58,7 @@ config ARCH_NOMADIK
>  config ARCH_OMAP
>  	bool "TI OMAP"
>  	select HAS_DEBUG_LL
> +	select GPIOLIB
>  =

>  config ARCH_PXA
>  	bool "Intel/Marvell PXA based"
> diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
> index 142cf52..d217550 100644
> --- a/arch/arm/mach-omap/gpio.c
> +++ b/arch/arm/mach-omap/gpio.c
> @@ -36,11 +36,10 @@
>   * published by the Free Software Foundation.
>   */
>  #include <common.h>
> -#include <mach/gpio.h>
>  #include <io.h>
>  #include <errno.h>
> -
> -#ifdef CONFIG_ARCH_OMAP3
> +#include <gpio.h>
> +#include <init.h>
>  =

>  #define OMAP_GPIO_OE		0x0034
>  #define OMAP_GPIO_DATAIN	0x0038
> @@ -48,129 +47,115 @@
>  #define OMAP_GPIO_CLEARDATAOUT	0x0090
>  #define OMAP_GPIO_SETDATAOUT	0x0094
>  =

> -static void __iomem *gpio_bank[] =3D {
> -	(void *)0x48310000,
> -	(void *)0x49050000,
> -	(void *)0x49052000,
> -	(void *)0x49054000,
> -	(void *)0x49056000,
> -	(void *)0x49058000,
> -};
> -#endif
> -
> -#ifdef CONFIG_ARCH_OMAP4
> -
> -#define OMAP_GPIO_OE		0x0134
> -#define OMAP_GPIO_DATAIN	0x0138
> -#define OMAP_GPIO_DATAOUT	0x013c
> -#define OMAP_GPIO_CLEARDATAOUT	0x0190
> -#define OMAP_GPIO_SETDATAOUT	0x0194
> -
> -static void __iomem *gpio_bank[] =3D {
> -	(void *)0x4a310000,
> -	(void *)0x48055000,
> -	(void *)0x48057000,
> -	(void *)0x48059000,
> -	(void *)0x4805b000,
> -	(void *)0x4805d000,
> +struct omap_gpio_chip {
> +	void __iomem *base;
> +	struct gpio_chip chip;
>  };
> -#endif
> -
> -static inline void __iomem *get_gpio_base(int gpio)
> -{
> -	return gpio_bank[gpio >> 5];
> -}
>  =

> -static inline int get_gpio_index(int gpio)
> +static inline int omap_get_gpio_index(int gpio)
>  {
>  	return gpio & 0x1f;
>  }
>  =

> -static inline int gpio_valid(int gpio)
> +static void omap_gpio_set_value(struct gpio_chip *chip,
> +					unsigned gpio, int value)
>  {
> -	if (gpio < 0)
> -		return -1;
> -	if (gpio / 32 < ARRAY_SIZE(gpio_bank))
> -		return 0;
> -	return -1;
> -}
> -
> -static int check_gpio(int gpio)
> -{
> -	if (gpio_valid(gpio) < 0) {
> -		printf("ERROR : check_gpio: invalid GPIO %d\n", gpio);
> -		return -1;
> -	}
> -	return 0;
> -}
> -
> -void gpio_set_value(unsigned gpio, int value)
> -{
> -	void __iomem *reg;
> +	struct omap_gpio_chip *omapgpio =3D
> +			container_of(chip, struct omap_gpio_chip, chip);
> +	void __iomem *base =3D omapgpio->base;
>  	u32 l =3D 0;
>  =

> -	if (check_gpio(gpio) < 0)
> -		return;
> -
> -	reg =3D get_gpio_base(gpio);
> -
>  	if (value)
> -		reg +=3D OMAP_GPIO_SETDATAOUT;
> +		base +=3D OMAP_GPIO_SETDATAOUT;
>  	else
> -		reg +=3D OMAP_GPIO_CLEARDATAOUT;
> -	l =3D 1 << get_gpio_index(gpio);
> +		base +=3D OMAP_GPIO_CLEARDATAOUT;
> +
> +	l =3D 1 << omap_get_gpio_index(gpio);
>  =

> -	__raw_writel(l, reg);
> +	writel(l, base);
>  }
>  =

> -int gpio_direction_input(unsigned gpio)
> +static int omap_gpio_direction_input(struct gpio_chip *chip,
> +					unsigned gpio)
>  {
> -	void __iomem *reg;
> +	struct omap_gpio_chip *omapgpio =3D
> +			container_of(chip, struct omap_gpio_chip, chip);
> +	void __iomem *base =3D omapgpio->base;
>  	u32 val;
>  =

> -	if (check_gpio(gpio) < 0)
> -		return -EINVAL;
> -
> -	reg =3D get_gpio_base(gpio);
> -
> -	reg +=3D OMAP_GPIO_OE;
> +	base +=3D OMAP_GPIO_OE;
>  =

> -	val =3D __raw_readl(reg);
> -	val |=3D 1 << get_gpio_index(gpio);
> -	__raw_writel(val, reg);
> +	val =3D readl(base);
> +	val |=3D 1 << omap_get_gpio_index(gpio);
> +	writel(val, base);
>  =

>  	return 0;
>  }
>  =

> -int gpio_direction_output(unsigned gpio, int value)
> +static int omap_gpio_direction_output(struct gpio_chip *chip,
> +					unsigned gpio, int value)
>  {
> -	void __iomem *reg;
> +	struct omap_gpio_chip *omapgpio =3D
> +			container_of(chip, struct omap_gpio_chip, chip);
> +	void __iomem *base =3D omapgpio->base;
>  	u32 val;
>  =

> -	if (check_gpio(gpio) < 0)
> -		return -EINVAL;
> -	reg =3D get_gpio_base(gpio);
> +	omap_gpio_set_value(chip, gpio, value);
>  =

> -	gpio_set_value(gpio, value);
> +	base +=3D OMAP_GPIO_OE;
>  =

> -	reg +=3D OMAP_GPIO_OE;
> -
> -	val =3D __raw_readl(reg);
> -	val &=3D ~(1 << get_gpio_index(gpio));
> -	__raw_writel(val, reg);
> +	val =3D readl(base);
> +	val &=3D ~(1 << omap_get_gpio_index(gpio));
> +	writel(val, base);
>  =

>  	return 0;
>  }
>  =

> -int gpio_get_value(unsigned gpio)
> +static int omap_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
> +{
> +	struct omap_gpio_chip *omapgpio =3D
> +			container_of(chip, struct omap_gpio_chip, chip);
> +	void __iomem *base =3D omapgpio->base;
> +
> +	base  +=3D OMAP_GPIO_DATAIN;
> +
> +	return (readl(base) & (1 << omap_get_gpio_index(gpio))) !=3D 0;
> +
> +}
> +
> +static struct gpio_ops omap_gpio_ops =3D {
> +	.direction_input =3D omap_gpio_direction_input,
> +	.direction_output =3D omap_gpio_direction_output,
> +	.get =3D omap_gpio_get_value,
> +	.set =3D omap_gpio_set_value,
> +};
> +
> +static int omap_gpio_probe(struct device_d *dev)
>  {
> -	void __iomem *reg;
> +	struct omap_gpio_chip *omapgpio;
> +
> +	omapgpio =3D xzalloc(sizeof(*omapgpio));
> +	omapgpio->base =3D dev_request_mem_region(dev, 0);
> +	omapgpio->chip.ops =3D &omap_gpio_ops;
> +	omapgpio->chip.base =3D -1;
> +	omapgpio->chip.ngpio =3D 32;
> +	omapgpio->chip.dev =3D dev;
> +	gpiochip_add(&omapgpio->chip);
>  =

> -	if (check_gpio(gpio) < 0)
> -		return -EINVAL;
> -	reg =3D get_gpio_base(gpio);
> +	dev_info(dev, "probed gpiochip%d with base %d\n",
> +				dev->id, omapgpio->chip.base);
> +
> +	return 0;
> +}
>  =

> -	reg +=3D OMAP_GPIO_DATAIN;
> +static struct driver_d omap_gpio_driver =3D {
> +	.name =3D "omap-gpio",
> +	.probe =3D omap_gpio_probe,
> +};
>  =

> -	return (__raw_readl(reg) & (1 << get_gpio_index(gpio))) !=3D 0;
> +static int omap_gpio_add(void)
> +{
> +	register_driver(&omap_gpio_driver);
> +	return 0;
>  }
> +coredevice_initcall(omap_gpio_add);
> diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap=
3_generic.c
> index 4ab265a..0e9cd71 100644
> --- a/arch/arm/mach-omap/omap3_generic.c
> +++ b/arch/arm/mach-omap/omap3_generic.c
> @@ -515,3 +515,22 @@ const struct gpmc_config omap3_nand_cfg =3D {
>  	.base =3D 0x28000000,
>  	.size =3D GPMC_SIZE_16M,
>  };
> +
> +static int omap3_gpio_init(void)
> +{
> +	add_generic_device("omap-gpio", 0, NULL, 0x48310000,
> +					0x100, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 1, NULL, 0x49050000,
> +					0x100, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 2, NULL, 0x49052000,
> +					0x100, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 3, NULL, 0x49054000,
> +					0x100, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 4, NULL, 0x49056000,
> +					0x100, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 5, NULL, 0x49058000,
> +					0x100, IORESOURCE_MEM, NULL);
> +
> +	return 0;
> +}
> +coredevice_initcall(omap3_gpio_init);
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap=
4_generic.c
> index 617d786..a159dfc 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -572,3 +572,22 @@ const struct gpmc_config omap4_nand_cfg =3D {
>  	.base =3D 0x28000000,
>  	.size =3D GPMC_SIZE_16M,
>  };
> +
> +static int omap4_gpio_init(void)
> +{
> +	add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
> +				0x1000, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 1, NULL, 0x48055100,
> +				0x1000, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 2, NULL, 0x48057100,
> +				0x1000, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 3, NULL, 0x48059100,
> +				0x1000, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 4, NULL, 0x4805b100,
> +				0x1000, IORESOURCE_MEM, NULL);
> +	add_generic_device("omap-gpio", 5, NULL, 0x4805d100,
> +				0x1000, IORESOURCE_MEM, NULL);
> +
> +	return 0;
> +}
> +coredevice_initcall(omap4_gpio_init);
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
