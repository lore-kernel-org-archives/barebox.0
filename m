Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QJRvg-0003NV-VT
	for barebox@lists.infradead.org; Mon, 09 May 2011 14:59:28 +0000
Date: Mon, 9 May 2011 16:48:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110509144838.GF18791@game.jcrosoft.org>
References: <1304852976-8236-1-git-send-email-plagnioj@jcrosoft.com>
	<20110509142507.GB30963@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110509142507.GB30963@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On 16:25 Mon 09 May     , Sascha Hauer wrote:
> > +
> > +static struct device_d sdram_dev = {
> > +	.id = -1,
> > +	.name = "mem",
> > +	.map_base = AT91_CHIPSELECT_1,
> > +	.platform_data = &ram_pdata,
> > +};
> > +
> > +void at91_add_device_sdram(u32 size)
> > +{
> > +	sdram_dev.size = size;
> > +	register_device(&sdram_dev);
> > +	armlinux_add_dram(&sdram_dev);
> > +}
> 
> We already have this function in the tree four times and there is
> nothing at91 specific in it. Please stop duplicating it.
yes but the structure is local and can not be shared between SOC
> 
> > +
> > +/* --------------------------------------------------------------------
> > + *  Ethernet
> > + * -------------------------------------------------------------------- */
> > +
> > +#if defined(CONFIG_DRIVER_NET_AT91_ETHER)
> > +static struct device_d at91rm9200_eth_device = {
> > +	.id		= 0,
> > +	.name		= "at91_ether",
> > +	.map_base	= AT91_VA_BASE_EMAC,
> > +	.size		= 0x1000,
> > +};
> > +
> > +void __init at91_add_device_eth(struct at91_ether_platform_data *data)
> > +{
> > +	if (!data)
> > +		return;
> 
> Why this check here? I'd rather see a crash when someone calls this
> function without data than just nothing happening.
i prefer to keep the code running and do not register the ethernet device
> 
> > +
> > +	/* Pins used for MII and RMII */
> > +	at91_set_A_periph(AT91_PIN_PA16, 0);	/* EMDIO */
> > +	at91_set_A_periph(AT91_PIN_PA15, 0);	/* EMDC */
> > +	at91_set_A_periph(AT91_PIN_PA14, 0);	/* ERXER */
> > +	at91_set_A_periph(AT91_PIN_PA13, 0);	/* ERX1 */
> > +	at91_set_A_periph(AT91_PIN_PA12, 0);	/* ERX0 */
> > +	at91_set_A_periph(AT91_PIN_PA11, 0);	/* ECRS_ECRSDV */
> > +	at91_set_A_periph(AT91_PIN_PA10, 0);	/* ETX1 */
> > +	at91_set_A_periph(AT91_PIN_PA9, 0);	/* ETX0 */
> > +	at91_set_A_periph(AT91_PIN_PA8, 0);	/* ETXEN */
> > +	at91_set_A_periph(AT91_PIN_PA7, 0);	/* ETXCK_EREFCK */
> > +
> > +	if (!(data->flags & AT91SAM_ETHER_RMII)) {
> > +		at91_set_B_periph(AT91_PIN_PB19, 0);	/* ERXCK */
> > +		at91_set_B_periph(AT91_PIN_PB18, 0);	/* ECOL */
> > +		at91_set_B_periph(AT91_PIN_PB17, 0);	/* ERXDV */
> > +		at91_set_B_periph(AT91_PIN_PB16, 0);	/* ERX3 */
> > +		at91_set_B_periph(AT91_PIN_PB15, 0);	/* ERX2 */
> > +		at91_set_B_periph(AT91_PIN_PB14, 0);	/* ETXER */
> > +		at91_set_B_periph(AT91_PIN_PB13, 0);	/* ETX3 */
> > +		at91_set_B_periph(AT91_PIN_PB12, 0);	/* ETX2 */
> > +	}
> > +
> > +	at91rm9200_eth_device.platform_data = data;
> > +	register_device(&at91rm9200_eth_device);
> > +}
> > +#else
> 
> [snip]
> 
> > +
> > +void __init at91_register_uart(unsigned id, unsigned pins)
> > +{
> > +	switch (id) {
> 
> This id dispatching does not make much sense. You should export
> the functions for the individual uarts instead. This makes this funcion
> disappear completely and gives the linker a chance to throw away the
> code for unused uarts.
It's the same API as in the kernel I do want to keep then sync
I do not want to have to maintain 2 implemetations for few bytes
> 
> > +		case 0:		/* DBGU */
> > +			configure_dbgu_pins();
> > +			at91_clock_associate("mck", &dbgu_serial_device, "usart");
> > +			register_device(&dbgu_serial_device);
> > +			break;
> > +		case AT91RM9200_ID_US0:
> > +			configure_usart0_pins(pins);
> > +			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
> > +			break;
> > +		case AT91RM9200_ID_US1:
> > +			configure_usart1_pins(pins);
> > +			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
> > +			register_device(&uart1_serial_device);
> > +			break;
> > +		case AT91RM9200_ID_US2:
> > +			configure_usart2_pins(pins);
> > +			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
> > +			register_device(&uart2_serial_device);
> > +			break;
> > +		case AT91RM9200_ID_US3:
> > +			configure_usart3_pins(pins);
> > +			at91_clock_associate("usart3_clk", &uart3_serial_device, "usart");
> > +			register_device(&uart3_serial_device);
> > +			break;
> > +		default:
> > +			return;
> > +	}
> > +
> > +}
> 
> [snip]
> 
> > diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.S b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
> > new file mode 100644
> > index 0000000..805b201
> > --- /dev/null
> > +++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
> 
> This file doesn't seem to belong to this patch.
it's a rename that's all I forget to pass the -C to git format-patch as today
the mach-at91 support only sam9
> 
> > @@ -0,0 +1,278 @@
> > +/*
> > + * Memory Setup stuff - taken from blob memsetup.S
> > + *
> > + * Copyright (C) 1999 2000 2001 Erik Mouw (J.A.K.Mouw@its.tudelft.nl) and
> > + *		       Jan-Derk Bakker (J.D.Bakker@its.tudelft.nl)
> > + *
> > + * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
> > + * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +
> > +#include <config.h>
> > +#include <mach/hardware.h>
> > +#include <mach/at91_pmc.h>
> > +#include <mach/at91_pio.h>
> > +#include <mach/at91_rstc.h>
> > +#include <mach/at91_wdt.h>
> > +#include <mach/at91sam9_matrix.h>
> > +#include <mach/at91sam9_sdramc.h>
> > +#include <mach/at91sam9_smc.h>
> > +
> > +_TEXT_BASE:
> > +	.word	TEXT_BASE
> > +
> > +.globl board_init_lowlevel
> > +.type board_init_lowlevel,function
> > +board_init_lowlevel:
> 
> Another board_init_lowlevel function? I already saw one implemented in C
> Just noting that this is moved from somewhere else in this patch. Please
> factor out such things as seperate patches.
no they are different this one is for sam9 and already exist in the tree
I just rename it

to add the rm9200 lowlevel init that I write in C that time
I plan to rewrite the sam9 init in C too and add the nand boot support

> > diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_emac.h b/arch/arm/mach-at91/include/mach/at91rm9200_emac.h
> 
> Please do not put clearly driver related header files to include/mach.
> Also, code for the emac driver should already be in the tree, right?
no it's not it's old crap implemetation this one is taken from the kernel
I keep the header at the same place between barebox on linux

I'm working on re-implementing it but I need to add the phy lib this time with
bus and phy driver as the dm961 need specific init depending on the connection
to the soc (MII/RMII)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
