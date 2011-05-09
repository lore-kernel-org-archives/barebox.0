Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QJROY-00039B-9y
	for barebox@lists.infradead.org; Mon, 09 May 2011 14:25:12 +0000
Date: Mon, 9 May 2011 16:25:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110509142507.GB30963@pengutronix.de>
References: <1304852976-8236-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1304852976-8236-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] at91: Support for at91rm9200: core chip & board support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Hi J,

On Sun, May 08, 2011 at 01:09:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> ---
>  arch/arm/Makefile                                 |    1 +
>  arch/arm/boards/at91rm9200ek/Makefile             |    1 +
>  arch/arm/boards/at91rm9200ek/config.h             |   68 +++++
>  arch/arm/boards/at91rm9200ek/env/config           |   41 +++
>  arch/arm/boards/at91rm9200ek/init.c               |   77 ++++++

Please do not mix board support with architecture support in a single
patch. It makes reviewing harder.

>  arch/arm/configs/at91rm9200ek_defconfig           |   47 ++++
>  arch/arm/mach-at91/Kconfig                        |   27 ++
>  arch/arm/mach-at91/Makefile                       |    5 +-
>  arch/arm/mach-at91/at91rm9200.c                   |  245 ++++++++++++++++++
>  arch/arm/mach-at91/at91rm9200_devices.c           |  276 ++++++++++++++++++++
>  arch/arm/mach-at91/at91rm9200_lowlevel_init.c     |  146 +++++++++++
>  arch/arm/mach-at91/at91rm9200_time.c              |   97 +++++++
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.S    |  278 +++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/at91_st.h         |   49 ++++
>  arch/arm/mach-at91/include/mach/at91_tc.h         |  146 +++++++++++
>  arch/arm/mach-at91/include/mach/at91rm9200.h      |  127 ++++++++++
>  arch/arm/mach-at91/include/mach/at91rm9200_emac.h |  138 ++++++++++
>  arch/arm/mach-at91/include/mach/at91rm9200_mc.h   |  160 ++++++++++++
>  arch/arm/mach-at91/lowlevel_init.S                |  278 ---------------------
>  19 files changed, 1928 insertions(+), 279 deletions(-)
>  create mode 100644 arch/arm/boards/at91rm9200ek/Makefile
>  create mode 100644 arch/arm/boards/at91rm9200ek/config.h
>  create mode 100644 arch/arm/boards/at91rm9200ek/env/config
>  create mode 100644 arch/arm/boards/at91rm9200ek/init.c
>  create mode 100644 arch/arm/configs/at91rm9200ek_defconfig
>  create mode 100644 arch/arm/mach-at91/at91rm9200.c
>  create mode 100644 arch/arm/mach-at91/at91rm9200_devices.c
>  create mode 100644 arch/arm/mach-at91/at91rm9200_lowlevel_init.c
>  create mode 100644 arch/arm/mach-at91/at91rm9200_time.c
>  create mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.S
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_st.h
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_tc.h
>  create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200.h
>  create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_emac.h
>  create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_mc.h
>  delete mode 100644 arch/arm/mach-at91/lowlevel_init.S
> 
> diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
> new file mode 100644
> index 0000000..f45008a
> --- /dev/null
> +++ b/arch/arm/mach-at91/at91rm9200_devices.c
> @@ -0,0 +1,276 @@
> +/*
> + * arch/arm/mach-at91/at91rm9200_devices.c
> + *
> + *  Copyright (C) 2005 Thibaut VARENE <varenet@parisc-linux.org>
> + *  Copyright (C) 2005 David Brownell
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + */
> +#include <common.h>
> +#include <asm/armlinux.h>
> +#include <mach/hardware.h>
> +#include <mach/at91rm9200.h>
> +#include <mach/board.h>
> +#include <mach/gpio.h>
> +#include <mach/io.h>
> +
> +#include "generic.h"
> +
> +static struct memory_platform_data ram_pdata = {
> +	.name = "ram0",
> +	.flags = DEVFS_RDWR,
> +};
> +
> +static struct device_d sdram_dev = {
> +	.id = -1,
> +	.name = "mem",
> +	.map_base = AT91_CHIPSELECT_1,
> +	.platform_data = &ram_pdata,
> +};
> +
> +void at91_add_device_sdram(u32 size)
> +{
> +	sdram_dev.size = size;
> +	register_device(&sdram_dev);
> +	armlinux_add_dram(&sdram_dev);
> +}

We already have this function in the tree four times and there is
nothing at91 specific in it. Please stop duplicating it.

> +
> +/* --------------------------------------------------------------------
> + *  Ethernet
> + * -------------------------------------------------------------------- */
> +
> +#if defined(CONFIG_DRIVER_NET_AT91_ETHER)
> +static struct device_d at91rm9200_eth_device = {
> +	.id		= 0,
> +	.name		= "at91_ether",
> +	.map_base	= AT91_VA_BASE_EMAC,
> +	.size		= 0x1000,
> +};
> +
> +void __init at91_add_device_eth(struct at91_ether_platform_data *data)
> +{
> +	if (!data)
> +		return;

Why this check here? I'd rather see a crash when someone calls this
function without data than just nothing happening.

> +
> +	/* Pins used for MII and RMII */
> +	at91_set_A_periph(AT91_PIN_PA16, 0);	/* EMDIO */
> +	at91_set_A_periph(AT91_PIN_PA15, 0);	/* EMDC */
> +	at91_set_A_periph(AT91_PIN_PA14, 0);	/* ERXER */
> +	at91_set_A_periph(AT91_PIN_PA13, 0);	/* ERX1 */
> +	at91_set_A_periph(AT91_PIN_PA12, 0);	/* ERX0 */
> +	at91_set_A_periph(AT91_PIN_PA11, 0);	/* ECRS_ECRSDV */
> +	at91_set_A_periph(AT91_PIN_PA10, 0);	/* ETX1 */
> +	at91_set_A_periph(AT91_PIN_PA9, 0);	/* ETX0 */
> +	at91_set_A_periph(AT91_PIN_PA8, 0);	/* ETXEN */
> +	at91_set_A_periph(AT91_PIN_PA7, 0);	/* ETXCK_EREFCK */
> +
> +	if (!(data->flags & AT91SAM_ETHER_RMII)) {
> +		at91_set_B_periph(AT91_PIN_PB19, 0);	/* ERXCK */
> +		at91_set_B_periph(AT91_PIN_PB18, 0);	/* ECOL */
> +		at91_set_B_periph(AT91_PIN_PB17, 0);	/* ERXDV */
> +		at91_set_B_periph(AT91_PIN_PB16, 0);	/* ERX3 */
> +		at91_set_B_periph(AT91_PIN_PB15, 0);	/* ERX2 */
> +		at91_set_B_periph(AT91_PIN_PB14, 0);	/* ETXER */
> +		at91_set_B_periph(AT91_PIN_PB13, 0);	/* ETX3 */
> +		at91_set_B_periph(AT91_PIN_PB12, 0);	/* ETX2 */
> +	}
> +
> +	at91rm9200_eth_device.platform_data = data;
> +	register_device(&at91rm9200_eth_device);
> +}
> +#else

[snip]

> +
> +void __init at91_register_uart(unsigned id, unsigned pins)
> +{
> +	switch (id) {

This id dispatching does not make much sense. You should export
the functions for the individual uarts instead. This makes this funcion
disappear completely and gives the linker a chance to throw away the
code for unused uarts.

> +		case 0:		/* DBGU */
> +			configure_dbgu_pins();
> +			at91_clock_associate("mck", &dbgu_serial_device, "usart");
> +			register_device(&dbgu_serial_device);
> +			break;
> +		case AT91RM9200_ID_US0:
> +			configure_usart0_pins(pins);
> +			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
> +			break;
> +		case AT91RM9200_ID_US1:
> +			configure_usart1_pins(pins);
> +			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
> +			register_device(&uart1_serial_device);
> +			break;
> +		case AT91RM9200_ID_US2:
> +			configure_usart2_pins(pins);
> +			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
> +			register_device(&uart2_serial_device);
> +			break;
> +		case AT91RM9200_ID_US3:
> +			configure_usart3_pins(pins);
> +			at91_clock_associate("usart3_clk", &uart3_serial_device, "usart");
> +			register_device(&uart3_serial_device);
> +			break;
> +		default:
> +			return;
> +	}
> +
> +}

[snip]

> diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.S b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
> new file mode 100644
> index 0000000..805b201
> --- /dev/null
> +++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S

This file doesn't seem to belong to this patch.

> @@ -0,0 +1,278 @@
> +/*
> + * Memory Setup stuff - taken from blob memsetup.S
> + *
> + * Copyright (C) 1999 2000 2001 Erik Mouw (J.A.K.Mouw@its.tudelft.nl) and
> + *		       Jan-Derk Bakker (J.D.Bakker@its.tudelft.nl)
> + *
> + * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
> + * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <config.h>
> +#include <mach/hardware.h>
> +#include <mach/at91_pmc.h>
> +#include <mach/at91_pio.h>
> +#include <mach/at91_rstc.h>
> +#include <mach/at91_wdt.h>
> +#include <mach/at91sam9_matrix.h>
> +#include <mach/at91sam9_sdramc.h>
> +#include <mach/at91sam9_smc.h>
> +
> +_TEXT_BASE:
> +	.word	TEXT_BASE
> +
> +.globl board_init_lowlevel
> +.type board_init_lowlevel,function
> +board_init_lowlevel:

Another board_init_lowlevel function? I already saw one implemented in C
Just noting that this is moved from somewhere else in this patch. Please
factor out such things as seperate patches.

> +
> +	mov	r5, pc		/* r5 = POS1 + 4 current */
> +POS1:
> +	ldr	r0, =POS1	/* r0 = POS1 compile */
> +	ldr	r2, _TEXT_BASE
> +	sub	r0, r0, r2	/* r0 = POS1-_TEXT_BASE (POS1 relative) */
> +	sub	r5, r5, r0	/* r0 = TEXT_BASE-1 */
> +	sub	r5, r5, #4	/* r1 = text base - current */
> +
> +	/* memory control configuration 1 */
> +	ldr	r0, =SMRDATA
> +	ldr	r2, =SMRDATA1
> +	ldr	r1, _TEXT_BASE
> +	sub	r0, r0, r1
> +	sub	r2, r2, r1
> +	add	r0, r0, r5
> +	add	r2, r2, r5
> +0:
> +	/* the address */
> +	ldr	r1, [r0], #4
> +	/* the value */
> +	ldr	r3, [r0], #4
> +	str	r3, [r1]
> +	cmp	r2, r0
> +	bne	0b
> +

[snip]

> diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_emac.h b/arch/arm/mach-at91/include/mach/at91rm9200_emac.h

Please do not put clearly driver related header files to include/mach.
Also, code for the emac driver should already be in the tree, right?

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
