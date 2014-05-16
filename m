Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlBT4-0005CR-PT
 for barebox@lists.infradead.org; Fri, 16 May 2014 06:18:07 +0000
Date: Fri, 16 May 2014 08:17:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140516061744.GT5858@pengutronix.de>
References: <1400158031-16391-1-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400158031-16391-1-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH v2] ahs2: initial support
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org, Holger Schurig <schurig@dlog.com>

Hi Holger,

On Thu, May 15, 2014 at 02:47:11PM +0200, Holger Schurig wrote:
> From: Holger Schurig <schurig@dlog.com>
> 
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> 
> ---
> v2: moved the init script into the (currently empty) bin/ directory
> 
>  arch/arm/boards/Makefile                      |    1 +
>  arch/arm/boards/ahs2/Makefile                 |    3 +
>  arch/arm/boards/ahs2/board.c                  |   47 +++
>  arch/arm/boards/ahs2/env/bin/init             |    1 +

This file is currently not compiled in. You can either remove it in case
you don't need it, or move the env/ directory in your board file to
defaultenv-ahs2/, add to the make rules:

bbenv-y += defaultenv-ahs2

And in some initcall do:

defaultenv_append_directory(defaultenv_ahs2);

This way the ahs2 specific files will be in the environment exactly when
the binary is started on your board.

>  arch/arm/boards/ahs2/flash-header-ahs2.imxcfg |  232 ++++++++++++++
>  arch/arm/boards/ahs2/lowlevel.c               |   73 +++++
>  arch/arm/configs/imx_v7_defconfig             |    1 +
>  arch/arm/dts/Makefile                         |    4 +-
>  arch/arm/dts/imx6q-ahs2.dts                   |  405 +++++++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                     |    4 +
>  images/Makefile.imx                           |    5 +
>  11 files changed, 775 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/ahs2/Makefile
>  create mode 100644 arch/arm/boards/ahs2/board.c
>  create mode 100644 arch/arm/boards/ahs2/env/bin/init
>  create mode 100644 arch/arm/boards/ahs2/flash-header-ahs2.imxcfg
>  create mode 100644 arch/arm/boards/ahs2/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6q-ahs2.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ae01b29..85eba47 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -1,4 +1,5 @@
>  # keep sorted by CONFIG_* macro name.
> +obj-$(CONFIG_MACH_AHS2)				+= ahs2/
>  obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
>  obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
>  obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
> diff --git a/arch/arm/boards/ahs2/Makefile b/arch/arm/boards/ahs2/Makefile
> new file mode 100644
> index 0000000..a7e336b
> --- /dev/null
> +++ b/arch/arm/boards/ahs2/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += board.o flash-header-ahs2.dcd.o
> +extra-y += flash-header-ahs2.dcd.S flash-header-ahs2.dcd
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/ahs2/board.c b/arch/arm/boards/ahs2/board.c
> new file mode 100644
> index 0000000..8dfa5f3
> --- /dev/null
> +++ b/arch/arm/boards/ahs2/board.c
> @@ -0,0 +1,47 @@
> +/*
> + * Copyright (C) 2014 Holger Schurig, Advantech DLoG GmbH, Germering, Germany
> + *
> + * based on arch/arm/boards/freescale-mx6-arm2/board.c
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
> + * (setq compile-command "make -C ~/d/mkarm compbb")
> + */
> +
> +#include <common.h>
> +#include <sizes.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <mach/imx6.h>
> +
> +
> +static int ahs2_device_init(void)
> +{
> +	if (!of_machine_is_compatible("dlog,ahs2"))
> +		return 0;
> +
> +	return 0;
> +}
> +device_initcall(ahs2_device_init);

Nothing done here? Please remove.

> +static inline void early_uart1_init(void)
> +{
> +	// 2681: IOMUXC_UART1_UART_RX_DATA_SELECT_INPUT to ALT1 (CSI0_DATA10_ALT3 )
> +	// 2621: IOMUXC_ECSPI2_MISO_SELECT_INPUT to ALT2 (CSI0_DATA10_ALT2)
> +	// 2092: IOMUXC_SW_MUX_CTL_PAD_CSI0_DATA10 to ALT3 (UART1_TX_DATA)

What are these numbers?

Please replace with /* C comments */

> +ENTRY_FUNCTION(start_imx6q_ahs2, r0, r1, r2)
> +{
> +	void  *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +#if 0
> +	{
> +		int i;
> +		for (i = 0x68; i <= 0x80; i += 4)
> +			writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
> +	}
> +#endif

This is done in the clock driver and can probably be removed.

> +
> +/ {
> +	model = "Advantech DLoG AHS2";
> +	compatible = "dlog,ahs2", "fsl,imx6q";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +		bootargs = "console=ttymxc1,115200";

These are replaced anyway, you can remove this line.

> +
> +		/*
> +		environment@0 {
> +			compatible = "barebox,environment";
> +			device-path = &flash, "partname:barebox-environment";
> +		};
> +		*/
> +	};
> +
> +	aliases {
> +		ethernet0 = &fec;
> +	};

Could you add this to the imx6qdl.dtsi file instead?
Normally this should be in the upstream dtsi file, but as long as it
isn't we can keep it in barebox.

> +/* LAN1, Schematics sheet 24 */
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
> +	phy-handle = <&phy>;
> +	status = "okay";
> +
> +	phy: ethernet-phy@0 {
> +		speed = <10>;
> +		duplex = <1>;
> +	};

speed 10? really?

Is there code using this binding or is it approved upstream?

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
