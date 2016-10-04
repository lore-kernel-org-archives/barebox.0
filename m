Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brJuz-0000Qb-2k
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 07:13:38 +0000
Date: Tue, 4 Oct 2016 09:13:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004071314.e7ptvxiqo33pdt6a@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-14-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475505657-898-14-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 13/20] i.MX: Add 'lpuart' serial driver
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 03, 2016 at 07:40:50AM -0700, Andrey Smirnov wrote:
> Add 'lpuart' serial driver, based on analogous driver from U-Boot
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/serial/Kconfig         |   4 +
>  drivers/serial/Makefile        |   1 +
>  drivers/serial/serial_lpuart.c | 217 +++++++++++++++++++++++++++++++++++++++++
>  include/serial/lpuart.h        |  28 ++++--
>  4 files changed, 244 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/serial/serial_lpuart.c
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 146bf1e..02e869a 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -137,4 +137,8 @@ config DRIVER_SERIAL_DIGIC
>  	bool "Canon DIGIC serial driver"
>  	depends on ARCH_DIGIC
>  
> +config DRIVER_SERIAL_LPUART
> +	depends on ARCH_IMX
> +	bool "LPUART serial driver"
> +
>  endmenu
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 189e777..7d1bae1 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -20,3 +20,4 @@ obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
>  obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
>  obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
>  obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
> +obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
> diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
> new file mode 100644
> index 0000000..52fb6d3
> --- /dev/null
> +++ b/drivers/serial/serial_lpuart.c
> @@ -0,0 +1,217 @@
> +/*
> + * Copyright (c) 2016 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + *
> + * Based on analogous driver from U-Boot
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <notifier.h>
> +#include <io.h>
> +#include <of.h>
> +#include <linux/err.h>
> +#include <linux/clk.h>
> +#include <serial/lpuart.h>
> +
> +struct lpuart {
> +	struct console_device cdev;
> +	int baudrate;
> +	int dte_mode;
> +	struct notifier_block notify;
> +	struct resource *io;
> +	void __iomem *base;
> +	struct clk *clk;
> +};
> +
> +static struct lpuart *cdev_to_lpuart(struct console_device *cdev)
> +{
> +	return container_of(cdev, struct lpuart, cdev);
> +}
> +
> +static struct lpuart *nb_to_lpuart(struct notifier_block *nb)
> +{
> +	return container_of(nb, struct lpuart, notify);
> +}
> +
> +static void lpuart_enable(struct lpuart *lpuart, bool on)
> +{
> +	u8 ctrl;
> +
> +	ctrl = readb(lpuart->base + UARTCR2);
> +	if (on)
> +		ctrl |= UARTCR2_TE | UARTCR2_RE;
> +	else
> +		ctrl &= ~(UARTCR2_TE | UARTCR2_RE);
> +	writeb(ctrl, lpuart->base + UARTCR2);
> +}
> +
> +static int lpuart_serial_setbaudrate(struct console_device *cdev,
> +				     int baudrate)
> +{
> +	struct lpuart *lpuart = cdev_to_lpuart(cdev);
> +
> +	lpuart_enable(lpuart, false);
> +
> +	lpuart_setbrg(lpuart->base,
> +		      clk_get_rate(lpuart->clk),
> +		      baudrate);
> +
> +	lpuart_enable(lpuart, true);
> +
> +	lpuart->baudrate = baudrate;
> +
> +	return 0;
> +}
> +
> +static int lpuart_serial_getc(struct console_device *cdev)
> +{
> +	bool ready;
> +	struct lpuart *lpuart = cdev_to_lpuart(cdev);
> +
> +	do {
> +		const u8 sr1 = readb(lpuart->base + UARTSR1);
> +		ready = !!(sr1 & (UARTSR1_OR | UARTSR1_RDRF));
> +	} while (!ready);
> +
> +	return readb(lpuart->base + UARTDR);
> +}
> +
> +static void lpuart_serial_putc(struct console_device *cdev, char c)
> +{
> +	lpuart_putc(cdev_to_lpuart(cdev)->base, c);
> +}
> +
> +/* Test whether a character is in the RX buffer */
> +static int lpuart_serial_tstc(struct console_device *cdev)
> +{
> +	return !!readb(cdev_to_lpuart(cdev)->base + UARTRCFIFO);
> +}
> +
> +static void lpuart_serial_flush(struct console_device *cdev)
> +{
> +	bool tx_empty;
> +	struct lpuart *lpuart = cdev_to_lpuart(cdev);
> +
> +	do {
> +		const u8 sr1 = readb(lpuart->base + UARTSR1);
> +		tx_empty = !!(sr1 & UARTSR1_TDRE);
> +	} while (!tx_empty);
> +}
> +
> +static int lpuart_clocksource_clock_change(struct notifier_block *nb,
> +					   unsigned long event, void *data)
> +{
> +	struct lpuart *lpuart = nb_to_lpuart(nb);
> +
> +	return lpuart_serial_setbaudrate(&lpuart->cdev, lpuart->baudrate);
> +}

This doesn't make sense in this form. I introduced this code in the i.MX
uart driver since I had the need to change PLL rates while the uart is
active. When this happens I had to adjust the dividers for the new uart
base clock. The code above doesn't react to base clock changes though,
it takes the old rate stored in lpuart->baudrate.

If you don't have to adjust PLL rates while the uart is active then I
suggest that you just remove this code.

> @@ -225,25 +225,35 @@ static inline void lpuart_setbrg(void __iomem *base,
>  				 unsigned int refclock,
>  				 unsigned int baudrate)
>  {
> +	unsigned int bfra;
>  	u16 sbr;
> +
>  	sbr = (u16) (refclock / (16 * baudrate));
>  
>  	writeb(sbr >> 8,   base + UARTBDH);
>  	writeb(sbr & 0xff, base + UARTBDL);
> +
> +	bfra  = DIV_ROUND_UP(2 * refclock, baudrate) - 32 * sbr;
> +	bfra &= UARTCR4_BRFA_MASK;
> +	writeb(bfra, base + UARTCR4);
>  }
>  
> -static inline void lpuart_setup(void __iomem *base,
> -				unsigned int refclock)
> +static inline void lpuart_setup_with_fifo(void __iomem *base,
> +					  unsigned int refclock,
> +					  unsigned int twfifo)
>  {
> -
>  	/* Disable UART */
>  	writeb(0, base + UARTCR2);
>  	writeb(0, base + UARTMODEM);
>  	writeb(0, base + UARTCR1);
>  
> -	/* Disable FIFOs */
> -	writeb(0, base + UARTPFIFO);
> -	writeb(0, base + UARTTWFIFO);
> +	if (twfifo) {
> +		writeb(UARTPFIFO_TXFE | UARTPFIFO_RXFE, base + UARTPFIFO);
> +		writeb((u8)twfifo, base + UARTTWFIFO);
> +	} else {
> +		writeb(0, base + UARTPFIFO);
> +		writeb(0, base + UARTTWFIFO);
> +	}
>  	writeb(1, base + UARTRWFIFO);
>  	writeb(UARTCFIFO_RXFLUSH | UARTCFIFO_TXFLUSH, base + UARTCFIFO);
>  
> @@ -252,6 +262,12 @@ static inline void lpuart_setup(void __iomem *base,
>  	writeb(UARTCR2_TE | UARTCR2_RE, base + UARTCR2);
>  }
>  
> +static inline void lpuart_setup(void __iomem *base,
> +				unsigned int refclock)
> +{
> +	lpuart_setup_with_fifo(base, refclock, 0x00);
> +}
> +
>  static inline void lpuart_putc(void __iomem *base, int c)
>  {
>  	if (!(readb(base + UARTCR2) & UARTCR2_TE))

This was introduced earlier with this series. No need to change it, just
create it correctly in the first place.

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
