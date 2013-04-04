Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNqvv-0006NB-2G
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 20:38:56 +0000
Received: by mail-la0-f54.google.com with SMTP id gw10so2832451lab.41
 for <barebox@lists.infradead.org>; Thu, 04 Apr 2013 13:38:48 -0700 (PDT)
Date: Fri, 5 Apr 2013 00:32:44 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130405003244.c9f5c8d09a8f7c0cf2ef17ee@gmail.com>
In-Reply-To: <1364883552-6563-9-git-send-email-dev@lynxeye.de>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-9-git-send-email-dev@lynxeye.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v3 08/10] tegra: add generic debug UART support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue,  2 Apr 2013 08:19:10 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> ODMdata tells us which UART to use for debugging purposes. This is
> agreed upon in both the upstream Linux kernel and U-Boot, so do it the
> same way in barebox.

This patch disables serial console on my Toshiba AC100.

> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/toshiba-ac100/Makefile      |  1 -
>  arch/arm/boards/toshiba-ac100/serial.c      | 39 ---------------------------
>  arch/arm/mach-tegra/include/mach/lowlevel.h | 34 ++++++++++++++++++++++++
>  arch/arm/mach-tegra/tegra20.c               | 41 +++++++++++++++++++++++++++++
>  4 files changed, 75 insertions(+), 40 deletions(-)
>  delete mode 100644 arch/arm/boards/toshiba-ac100/serial.c
>  create mode 100644 arch/arm/mach-tegra/tegra20.c
> 
> diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
> index 9e14763..dcfc293 100644
> --- a/arch/arm/boards/toshiba-ac100/Makefile
> +++ b/arch/arm/boards/toshiba-ac100/Makefile
> @@ -1,2 +1 @@
>  obj-y += board.o
> -obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
> diff --git a/arch/arm/boards/toshiba-ac100/serial.c b/arch/arm/boards/toshiba-ac100/serial.c
> deleted file mode 100644
> index 880270d..0000000
> --- a/arch/arm/boards/toshiba-ac100/serial.c
> +++ /dev/null
> @@ -1,39 +0,0 @@
> -/*
> - * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> -
> -#include <common.h>
> -#include <types.h>
> -#include <driver.h>
> -#include <init.h>
> -#include <ns16550.h>
> -#include <asm/io.h>
> -#include <asm/common.h>
> -#include <mach/iomap.h>
> -
> -static struct NS16550_plat serial_plat = {
> -	.clock = 0x75 * 115200 * 16 /* MODE_X_DIV */,
> -	.shift = 2,
> -};
> -
> -static int ac100_serial_console_init(void)
> -{
> -	/* Register the serial port */
> -	add_ns16550_device(DEVICE_ID_DYNAMIC, TEGRA_UARTA_BASE, 8 << serial_plat.shift,
> -			IORESOURCE_MEM_8BIT, &serial_plat);
> -
> -	return 0;
> -}
> -console_initcall(ac100_serial_console_init);
> diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
> index bd1a8db..a24b8c2 100644
> --- a/arch/arm/mach-tegra/include/mach/lowlevel.h
> +++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
> @@ -35,6 +35,10 @@
>  
>  #define T20_ODMDATA_RAMSIZE_SHIFT	28
>  #define T20_ODMDATA_RAMSIZE_MASK	(3 << T20_ODMDATA_RAMSIZE_SHIFT)
> +#define T20_ODMDATA_UARTTYPE_SHIFT	18
> +#define T20_ODMDATA_UARTTYPE_MASK	(3 << T20_ODMDATA_UARTTYPE_SHIFT)
> +#define T20_ODMDATA_UARTID_SHIFT	15
> +#define T20_ODMDATA_UARTID_MASK		(7 << T20_ODMDATA_UARTID_SHIFT)
>  
>  static inline u32 tegra_get_odmdata(void)
>  {
> @@ -109,5 +113,35 @@ static inline uint32_t tegra20_get_ramsize(void)
>  	}
>  }
>  
> +static long uart_id_to_base[] = {
> +	TEGRA_UARTA_BASE,
> +	TEGRA_UARTB_BASE,
> +	TEGRA_UARTC_BASE,
> +	TEGRA_UARTD_BASE,
> +	TEGRA_UARTE_BASE,
> +};
> +
> +static inline long tegra20_get_debuguart_base(void)
> +{
> +	u32 odmdata;
> +	int id;
> +
> +	odmdata = tegra_get_odmdata();
> +
> +	/*
> +	 * Get type, we accept both "2" and "3", as they both demark a UART,
> +	 * depending on the board type.
> +	 */
> +	if (!(((odmdata & T20_ODMDATA_UARTTYPE_MASK) >>
> +	      T20_ODMDATA_UARTTYPE_SHIFT) & 0x2))
> +		return 0;
> +
> +	id = (odmdata & T20_ODMDATA_UARTID_MASK) >> T20_ODMDATA_UARTID_SHIFT;
> +	if (id > ARRAY_SIZE(uart_id_to_base))
> +		return 0;
> +
> +	return uart_id_to_base[id];
> +}
> +
>  /* reset vector for the main CPU complex */
>  void tegra_maincomplex_entry(void);
> diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
> new file mode 100644
> index 0000000..9104c3b
> --- /dev/null
> +++ b/arch/arm/mach-tegra/tegra20.c
> @@ -0,0 +1,41 @@
> +/*
> + * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <ns16550.h>
> +#include <mach/iomap.h>
> +#include <mach/lowlevel.h>
> +
> +static struct NS16550_plat debug_uart = {
> +	.clock = 216000000, /* pll_p rate */
> +	.shift = 2,
> +};
> +
> +static int tegra20_add_debug_console(void)
> +{
> +	unsigned long base;
> +
> +	base = tegra20_get_debuguart_base();
> +	if (!base)
> +		return -ENODEV;
> +
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, base, TEGRA_UARTA_SIZE,
> +			   IORESOURCE_MEM_8BIT, &debug_uart);
> +
> +	return 0;
> +}
> +console_initcall(tegra20_add_debug_console);
> -- 
> 1.8.1.4
> 


-- 
antonynpavlov@gmail.com <antonynpavlov@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
