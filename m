Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAPn0-0004kc-6R
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 19:02:11 +0000
Date: Tue, 26 Feb 2013 20:02:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130226190208.GB1906@pengutronix.de>
References: <1361903690-30420-1-git-send-email-mkl@pengutronix.de>
 <1361903690-30420-3-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361903690-30420-3-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 2/2] driver/serial: add driver for the mxs application uart
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2013 at 07:34:50PM +0100, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/serial/Makefile       |    1 +
>  drivers/serial/serial_auart.c |  257 +++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 258 insertions(+)
>  create mode 100644 drivers/serial/serial_auart.c
> 
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 893e282..6b90593 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -21,3 +21,4 @@ obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
>  obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
>  obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
>  obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
> +obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
> diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
> new file mode 100644
> index 0000000..5208a5d
> --- /dev/null
> +++ b/drivers/serial/serial_auart.c
> @@ -0,0 +1,257 @@
> +/*
> + * (C) 2013 Marc Kleine-Budde <mkl@pengutronix.de>
> + *
> + * Based on the stm-serial driver:
> + *
> + * (C) Copyright 2010 Juergen Beisert - Pengutronix
> + *
> + * ...also based on the u-boot auart driver:
> + *
> + * (C) 2011 Wolfgang Ocker <weo@reccoware.de>
> + *
> + * Based on the standard DUART serial driver:
> + *
> + * (C) 2007 Sascha Hauer <s.hauer@pengutronix.de>
> + *
> + * (C) Copyright 2009-2010 Freescale Semiconductor, Inc.
> + *
> + * Further based on the Linux mxs-auart.c driver:
> + *
> + * Freescale STMP37XX/STMP378X Application UART driver
> + *
> + * Author: dmitry pervushin <dimka@embeddedalley.com>
> + *
> + * Copyright 2008-2010 Freescale Semiconductor, Inc.
> + * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <io.h>
> +#include <malloc.h>
> +#include <notifier.h>
> +
> +#include <mach/clock.h>
> +#include <mach/imx-regs.h>
> +
> +#define HW_UARTAPP_CTRL0		(0x00000000)
> +#define HW_UARTAPP_CTRL0_CLR		(0x00000008)
> +#define BM_UARTAPP_CTRL0_SFTRST		(0x80000000)
> +#define BM_UARTAPP_CTRL0_CLKGATE	(0x40000000)
> +
> +#define HW_UARTAPP_CTRL2		(0x00000020)
> +#define HW_UARTAPP_CTRL2_SET		(0x00000024)
> +#define HW_UARTAPP_CTRL2_CLR		(0x00000028)
> +#define BM_UARTAPP_CTRL2_CTSEN		(0x00008000)
> +#define BM_UARTAPP_CTRL2_RTSEN		(0x00004000)
> +#define BM_UARTAPP_CTRL2_RXE		(0x00000200)
> +#define BM_UARTAPP_CTRL2_TXE		(0x00000100)
> +#define BM_UARTAPP_CTRL2_USE_LCR2	(0x00000040)
> +#define BM_UARTAPP_CTRL2_UARTEN		(0x00000001)
> +
> +#define HW_UARTAPP_LINECTRL		(0x00000030)
> +#define BM_UARTAPP_LINECTRL_FEN		(0x00000010)
> +
> +#define BM_UARTAPP_LINECTRL_BAUD_DIVFRAC (0x00003F00)
> +#define BF_UARTAPP_LINECTRL_BAUD_DIVFRAC(v) \
> +	(((v) << 8) & BM_UARTAPP_LINECTRL_BAUD_DIVFRAC)
> +
> +#define BP_UARTAPP_LINECTRL_BAUD_DIVINT	(16)
> +#define BM_UARTAPP_LINECTRL_BAUD_DIVINT	(0xFFFF0000)
> +#define BF_UARTAPP_LINECTRL_BAUD_DIVINT(v) \
> +	(((v) << 16) & BM_UARTAPP_LINECTRL_BAUD_DIVINT)
> +
> +#define BP_UARTAPP_LINECTRL_WLEN	(5)
> +#define BM_UARTAPP_LINECTRL_WLEN	(0x00000060)
> +#define BF_UARTAPP_LINECTRL_WLEN(v) \
> +	(((v) << 5) & BM_UARTAPP_LINECTRL_WLEN)
> +
> +#define HW_UARTAPP_LINECTRL2_SET	(0x00000044)
> +
> +#define HW_UARTAPP_INTR			(0x00000050)
> +
> +#define HW_UARTAPP_DATA			(0x00000060)
> +#define BM_UARTAPP_STAT_RXFE		(0x01000000)
> +#define BM_UARTAPP_STAT_TXFE		(0x08000000)
> +
> +#define HW_UARTAPP_STAT			(0x00000070)
> +#define BM_UARTAPP_STAT_TXFF		(0x02000000)
> +
> +struct auart_priv {
> +	struct console_device cdev;
> +	int baudrate;
> +	struct notifier_block notify;
> +	void __iomem *base;
> +};
> +
> +static void auart_serial_putc(struct console_device *cdev, char c)
> +{
> +	struct auart_priv *priv = container_of(cdev, struct auart_priv, cdev);
> +
> +	/* Wait for room in TX FIFO */
> +	while (readl(priv->base + HW_UARTAPP_STAT) & BM_UARTAPP_STAT_TXFF)
> +		;
> +
> +	writel(c, priv->base + HW_UARTAPP_DATA);
> +}
> +
> +static int auart_serial_tstc(struct console_device *cdev)
> +{
> +	struct auart_priv *priv = container_of(cdev, struct auart_priv, cdev);
> +
> +	/* Check if RX FIFO is not empty */
> +	return !(readl(priv->base + HW_UARTAPP_STAT) & BM_UARTAPP_STAT_RXFE);
> +}
> +
> +static int auart_serial_getc(struct console_device *cdev)
> +{
> +	struct auart_priv *priv = container_of(cdev, struct auart_priv, cdev);
> +
> +	/* Wait while TX FIFO is empty */

The commment seems wrong.

> +	while (!auart_serial_tstc(cdev))
> +		;
> +
> +	return readl(priv->base + HW_UARTAPP_DATA) & 0xff;
> +}
> +
> +static void auart_serial_flush(struct console_device *cdev)
> +{
> +	struct auart_priv *priv = container_of(cdev, struct auart_priv, cdev);
> +
> +	/* Wait for TX FIFO empty */
> +	while (readl(priv->base + HW_UARTAPP_STAT) & BM_UARTAPP_STAT_TXFE)
> +		;
> +}
> +
> +static int auart_serial_setbaudrate(struct console_device *cdev, int new_baudrate)
> +{
> +	struct auart_priv *priv = container_of(cdev, struct auart_priv, cdev);
> +	uint32_t ctrl2, quot, reg;
> +
> +	/* Disable everything */
> +	ctrl2 = readl(priv->base + HW_UARTAPP_CTRL2);
> +	writel(0x0, priv->base + HW_UARTAPP_CTRL2);
> +
> +	/* Calculate and set baudrate */
> +	quot = (imx_get_xclk() * 32) / new_baudrate;
> +	reg = BF_UARTAPP_LINECTRL_BAUD_DIVFRAC(quot & 0x3F) |
> +		BF_UARTAPP_LINECTRL_BAUD_DIVINT(quot >> 6) |
> +		BF_UARTAPP_LINECTRL_WLEN(3) |
> +		BM_UARTAPP_LINECTRL_FEN;
> +
> +	writel(reg, priv->base + HW_UARTAPP_LINECTRL);
> +
> +	/* Re-enable debug UART */

debug UART?

> +	writel(ctrl2, priv->base + HW_UARTAPP_CTRL2);
> +
> +	priv->baudrate = new_baudrate;
> +
> +	return 0;
> +}
> +
> +static int auart_clocksource_clock_change(struct notifier_block *nb, unsigned long event, void *data)
> +{
> +	struct auart_priv *priv = container_of(nb, struct auart_priv, notify);
> +
> +	return auart_serial_setbaudrate(&priv->cdev, priv->baudrate);
> +}
> +
> +static void auart_reset(struct auart_priv *priv)
> +{
> +	int i;
> +
> +	writel(BM_UARTAPP_CTRL0_SFTRST, priv->base + HW_UARTAPP_CTRL0_CLR);
> +
> +	for (i = 0; i < 10000; i++) {
> +		uint32_t reg;
> +
> +		reg = readl(priv->base + HW_UARTAPP_CTRL0);
> +		if (!(reg & BM_UARTAPP_CTRL0_SFTRST))
> +			break;
> +	}
> +
> +	writel(BM_UARTAPP_CTRL0_CLKGATE, priv->base + HW_UARTAPP_CTRL0_CLR);
> +}

Can you use mxs_reset_block here?

> +
> +static void auart_serial_init_port(struct auart_priv *priv)
> +{
> +	auart_reset(priv);
> +
> +	/* Disable UART */
> +	writel(0x0, priv->base + HW_UARTAPP_CTRL2);
> +	/* Mask interrupts */
> +	writel(0x0, priv->base + HW_UARTAPP_INTR);
> +}
> +
> +static int auart_serial_probe(struct device_d *dev)
> +{
> +	struct auart_priv *priv;
> +	struct console_device *cdev;
> +
> +	priv = xzalloc(sizeof *priv);
> +	cdev = &priv->cdev;
> +
> +	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +	cdev->tstc = auart_serial_tstc;
> +	cdev->putc = auart_serial_putc;
> +	cdev->getc = auart_serial_getc;
> +	cdev->flush = auart_serial_flush;
> +	cdev->setbrg = auart_serial_setbaudrate;
> +	cdev->dev = dev;
> +
> +	dev->priv = priv;
> +	priv->base = dev_request_mem_region(dev, 0);
> +
> +	auart_serial_init_port(priv);
> +	auart_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
> +
> +	/* Disable RTS/CTS, enable Rx, Tx, UART */
> +	writel(BM_UARTAPP_CTRL2_RTSEN | BM_UARTAPP_CTRL2_CTSEN |
> +	       BM_UARTAPP_CTRL2_USE_LCR2,
> +	       priv->base + HW_UARTAPP_CTRL2_CLR);
> +	writel(BM_UARTAPP_CTRL2_RXE | BM_UARTAPP_CTRL2_TXE |
> +	       BM_UARTAPP_CTRL2_UARTEN,
> +	       priv->base + HW_UARTAPP_CTRL2_SET);
> +
> +	console_register(cdev);
> +	priv->notify.notifier_call = auart_clocksource_clock_change;
> +	clock_register_client(&priv->notify);
> +
> +	return 0;
> +}
> +
> +
> +static void auart_serial_remove(struct device_d *dev)
> +{
> +	struct auart_priv *priv = dev->priv;
> +
> +	auart_serial_flush(&priv->cdev);
> +	console_unregister(&priv->cdev);
> +	free(priv);
> +}
> +
> +static struct driver_d auart_serial_driver = {
> +	.name = "auart_serial",
> +	.probe = auart_serial_probe,
> +	.remove = auart_serial_remove,
> +};
> +
> +static int auart_serial_init(void)
> +{
> +	platform_driver_register(&auart_serial_driver);
> +	return 0;

return platform_driver_register please.

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
