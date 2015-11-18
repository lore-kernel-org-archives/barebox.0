Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zyxcc-0005cH-FF
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 07:57:43 +0000
Date: Wed, 18 Nov 2015 08:57:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151118075719.GV8526@pengutronix.de>
References: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
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
Subject: Re: [PATCH 1/4] ARM: ccxmx53: Add support for Digi ccxmx53 board.
To: Jason Cobham <cobham.jason@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 17, 2015 at 08:27:01PM -0800, Jason Cobham wrote:
> Add support for Digi ConnectCore ccxmx53 board based on the i.MX53 SoC.
> 
> Tested with a 512M and 1GB module on a JSK dev board.
> Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/ccxmx53/Makefile                   |   3 +
>  arch/arm/boards/ccxmx53/board.c                    | 101 +++++++++
>  .../ccxmx53/flash-header-imx53-ccxmx53.imxcfg      |  67 ++++++
>  arch/arm/boards/ccxmx53/lowlevel.c                 |  19 ++
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/imx53-ccxmx53.dts                     |  15 ++
>  arch/arm/dts/imx53-ccxmx53.dtsi                    |  35 ++++
>  arch/arm/mach-imx/Kconfig                          |   8 +
>  dts/src/arm/imx53-ccxmx53.dts                      | 102 ++++++++++
>  dts/src/arm/imx53-ccxmx53.dtsi                     | 226 +++++++++++++++++++++
>  images/Makefile.imx                                |   5 +
>  12 files changed, 583 insertions(+)
>  create mode 100644 arch/arm/boards/ccxmx53/Makefile
>  create mode 100644 arch/arm/boards/ccxmx53/board.c
>  create mode 100644 arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53.imxcfg
>  create mode 100644 arch/arm/boards/ccxmx53/lowlevel.c
>  create mode 100644 arch/arm/dts/imx53-ccxmx53.dts
>  create mode 100644 arch/arm/dts/imx53-ccxmx53.dtsi
>  create mode 100644 dts/src/arm/imx53-ccxmx53.dts
>  create mode 100644 dts/src/arm/imx53-ccxmx53.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 2229817..7da8992 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -17,6 +17,7 @@ obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
>  obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
>  obj-$(CONFIG_MACH_NITROGEN6X)			+= boundarydevices-nitrogen6x/
>  obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
> +obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
>  obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
>  obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
>  obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
> diff --git a/arch/arm/boards/ccxmx53/Makefile b/arch/arm/boards/ccxmx53/Makefile
> new file mode 100644
> index 0000000..c5be481
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx53/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += board.o flash-header-imx53-ccxmx53.dcd.o
> +extra-y += flash-header-imx53-ccxmx53.dcd.S flash-header-imx53-ccxmx53.dcd
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
> new file mode 100644
> index 0000000..b86648b
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx53/board.c
> @@ -0,0 +1,101 @@
> +/*
> + * Copyright (C) 2015 Jason Cobham <cobham.jason@gmail.com>
> + *
> + * Board specific file for the Digi ConnectCore ccxmx53 SoM
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <i2c/i2c.h>
> +#include <gpio.h>
> +
> +#include <generated/mach-types.h>
> +#include <mach/imx5.h>
> +#include <mach/generic.h>
> +#include <mach/imx53-regs.h>
> +#include <asm/armlinux.h>
> +#include <mach/bbu.h>
> +
> +#define ccwmx53_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
> +
> +static void ccwmx53_fec_reset(void)
> +{
> +	gpio_direction_output(ccwmx53_FEC_PHY_RST, 0);
> +	mdelay(1);
> +	gpio_set_value(ccwmx53_FEC_PHY_RST, 1);
> +}

The phy reset pin can be specified in the device tree, then the fec
driver can handle this automatically. See the phy-reset-gpio property in
dts/Bindings/net/fsl-fec.txt

> +
> +static int ccxmx53_reg_init(void)
> +{
> +	unsigned char value = 0;
> +	struct i2c_adapter *adapter = NULL;
> +	struct i2c_client client;
> +	int addr = -1, bus = 0;
> +
> +		/* I2C0 bus */
> +	bus = 0;
> +
> +	/* da9053 device address is 0x68 */
> +	addr = 0x68;
> +
> +	adapter = i2c_get_adapter(bus);
> +	if (!adapter){
> +		printf("****No I2C Adapter\n");
> +		return -ENODEV;
> +	}
> +	
> +	client.adapter = adapter;
> +	client.addr = addr;
> +
> +	/* Enable 3.3V ext regulator. This is not supported in dt */
> +	value = 0xfa;
> +	if (i2c_write_reg(&client, 0x19, &value, 1) < 0){
> +		printf("****I2C write failed\n");
> +		return -ENOSYS;
> +	}
> +
> +	ccwmx53_fec_reset();
> +
> +	return 0;
> +}
> +device_initcall(ccxmx53_reg_init);

This function misses the of_machine_is_compatible() protection. Instead
of adding it you can merge the code from ccxmx53_late_init() and
ccxmx53_reg_init() into a single ccxmx53_init().

> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 0a7b517..511a8ef 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -27,6 +27,7 @@ config ARCH_TEXT_BASE
>  	default 0x7ff00000 if MACH_TQMA53
>  	default 0x97f00000 if MACH_TX51
>  	default 0x97f00000 if MACH_CCMX51
> +	default 0x7ff00000 if MACH_CCMX53

You don't need this. (Shouldn't be needed for a bunch of other boards
here aswell)


You can merge all patches in this series into a single patch.

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
