Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xFn-0002Az-D5
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 20:38:01 +0000
Date: Thu, 5 Mar 2020 21:37:56 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200305203756.GB20581@ravnborg.org>
References: <20200305080225.19103-1-a.fatoum@pengutronix.de>
 <20200305080225.19103-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305080225.19103-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: at91: add sama5d27-based Groboards Giant Board
 support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Thu, Mar 05, 2020 at 09:02:25AM +0100, Ahmad Fatoum wrote:
> The Groboards Giant Board is a ATSAMA5D27C-D1G SiP-based SBC.
> The board features a 500MHz ARM Cortex-A5 and 128MB DDR2 SDRAM in the
> SiP as well as a MicroSD slot on the PCB.
> 
> barebox doesn't yet support the sama5d2 SDHCI-variant, so board support
> is limited to toggling the LED and interfacing with the UART, but add
> this now till the rest may follow. Device tree is based on the vendor's
> device-tree available at https://github.com/Groboards/giantboard-tools
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Browsed the patch - everything looked good.
A few nit for you to consider.

With the nits considered, and not necessarily any changes:

Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/sama5d27-giantboard/Makefile  |   1 +
>  .../arm/boards/sama5d27-giantboard/lowlevel.c |  56 ++++
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/at91-sama5d27_giantboard.dts     | 299 ++++++++++++++++++
>  arch/arm/mach-at91/Kconfig                    |   8 +
>  images/Makefile.at91                          |   4 +
>  7 files changed, 370 insertions(+)
>  create mode 100644 arch/arm/boards/sama5d27-giantboard/Makefile
>  create mode 100644 arch/arm/boards/sama5d27-giantboard/lowlevel.c
>  create mode 100644 arch/arm/dts/at91-sama5d27_giantboard.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 14538af53bf6..9fe458e0a390 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -113,6 +113,7 @@ obj-$(CONFIG_MACH_RPI_COMMON)			+= raspberry-pi/
>  obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
>  obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
>  obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
> +obj-$(CONFIG_MACH_SAMA5D27_GIANTBOARD)		+= sama5d27-giantboard/
>  obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
>  obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
>  obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
> diff --git a/arch/arm/boards/sama5d27-giantboard/Makefile b/arch/arm/boards/sama5d27-giantboard/Makefile
> new file mode 100644
> index 000000000000..b08c4a93ca27
> --- /dev/null
> +++ b/arch/arm/boards/sama5d27-giantboard/Makefile
> @@ -0,0 +1 @@
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
> new file mode 100644
> index 000000000000..cd762bd9f053
> --- /dev/null
> +++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
> @@ -0,0 +1,56 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/at91_pmc_ll.h>
> +
> +#include <mach/hardware.h>
> +#include <mach/iomux.h>
> +#include <debug_ll.h>
> +#include <mach/at91_dbgu.h>
> +
> +/* PCK = 492MHz, MCK = 164MHz */
> +#define MASTER_CLOCK	164000000
> +
> +#define sama5d2_pmc_enable_periph_clock(clk) \
> +	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk)
I see no point in this macro. It is not that this can change or will be
reused by others.

> +
> +static __always_inline void dbgu_init(void)
> +{
> +	unsigned mck = MASTER_CLOCK / 2;
> +
> +	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
> +
> +	at91_mux_pio4_set_A_periph(IOMEM(SAMA5D2_BASE_PIOD),
> +				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
> +
> +	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
> +
> +	at91_dbgu_setup_ll(IOMEM(SAMA5D2_BASE_UART1), mck, 115200);
> +
> +	putc_ll('>');
> +}
> +
> +extern char __dtb_z_at91_sama5d27_giantboard_start[];
> +
> +ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
This " - 16" is it cargo cult copied from somewhere else?
Or does it really matter?

> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		dbgu_init();
> +
> +	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
> +
> +	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
> +}

The rest looked fine to me.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
