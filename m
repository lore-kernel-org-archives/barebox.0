Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f51.google.com ([209.85.160.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UC3AC-00066r-FL
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 07:16:53 +0000
Received: by mail-pb0-f51.google.com with SMTP id un15so2493929pbc.24
 for <barebox@lists.infradead.org>; Sat, 02 Mar 2013 23:16:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <ebc763e2373f6712899a6729bd80966454e43e3f.1362273612.git.joshc@eso.teric.us>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <ebc763e2373f6712899a6729bd80966454e43e3f.1362273612.git.joshc@eso.teric.us>
Date: Sun, 3 Mar 2013 11:16:49 +0400
Message-ID: <CAA4bVAEdm_DWULVRjcZB1i-22+X=+GRzP0q_gE1NKXdYs6UgUg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 3/5] ARM: zynq: add driver for Zynq uarts
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On 3 March 2013 04:48, Josh Cartwright <joshc@eso.teric.us> wrote:
> Simple UART driver for Zynq SoCs, based loosely on the u-boot driver.
>
> Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
> ---
>  drivers/serial/Kconfig       |   6 ++
>  drivers/serial/Makefile      |   1 +
>  drivers/serial/serial_zynq.c | 144 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 151 insertions(+)
>  create mode 100644 drivers/serial/serial_zynq.c
>
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index f61d670..608b616 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -113,4 +113,10 @@ config DRIVER_SERIAL_OMAP4_USBBOOT
>         help
>           Enable this to get console support over the usb bus used to boot an OMAP4
>
> +config DRIVER_SERIAL_ZYNQ
> +       bool "driver for Zynq uarts"
> +       default n
> +       help
> +         Say Y here to get console out support with the Zynq uarts
> +
>  endmenu
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 893e282..883394f 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -21,3 +21,4 @@ obj-$(CONFIG_DRIVER_SERIAL_ALTERA)            += serial_altera.o
>  obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)                += serial_altera_jtag.o
>  obj-$(CONFIG_DRIVER_SERIAL_PXA)                        += serial_pxa.o
>  obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)      += serial_omap4_usbboot.o
> +obj-$(CONFIG_DRIVER_SERIAL_ZYNQ)               += serial_zynq.o
> diff --git a/drivers/serial/serial_zynq.c b/drivers/serial/serial_zynq.c
> new file mode 100644
> index 0000000..ec93b58
> --- /dev/null
> +++ b/drivers/serial/serial_zynq.c
> @@ -0,0 +1,144 @@
> +/*
> + * (C) Copyright 2013 Josh Cartwright
> + *
> + * Based very loosely on u-boot drivers/serial/serial_zynq.c.
> + *
> + * Copyright (C) 2012 Michal Simek <monstr@monstr.eu>
> + * Copyright (C) 2011-2012 Xilinx, Inc. All rights reserved.
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
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +#include <common.h>
> +#include <io.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <console.h>
> +#include <malloc.h>
> +
> +#include <linux/clk.h>
> +
> +#define UART_CR                0x00000000
> +#define UART_CR_TXEN   (1<<4)
> +#define UART_CR_RXEN   (1<<2)
> +#define UART_CR_TXRST  (1<<1)
> +#define UART_CR_RXRST  (1<<0)
> +
> +#define UART_SR                0x0000002C
> +#define UART_SR_TXFULL (1<<4)
> +#define UART_SR_TXEMPTY        (1<<3)
> +#define UART_SR_RXFULL (1<<2)
> +#define UART_SR_RXEMPTY        (1<<1)
> +
> +#define UART_FIFO      0x00000030
> +
> +struct zynq_serial_device {
> +       struct console_device cdev;
> +       struct clk *clk;
> +       void __iomem *regs;
> +};
> +
> +#define to_zynq_device(p) container_of(p, struct zynq_serial_device, cdev)
> +
> +static void zynq_serial_init_device(struct zynq_serial_device *dev)
> +{
> +       writel(UART_CR_TXEN | UART_CR_RXEN | UART_CR_TXEN | UART_CR_RXEN,


IMHO there are too many 'UART_CR_TXEN' and 'UART_CR_RXEN' here.


> +              dev->regs + UART_CR);
> +}
> +
> +static int zynq_serial_tstc(struct console_device *cdev)
> +{
> +       struct zynq_serial_device *zynq = to_zynq_device(cdev);
> +
> +       return !(readl(zynq->regs + UART_SR) & UART_SR_RXEMPTY);
> +}
> +
> +static void zynq_serial_putc(struct console_device *cdev, char c)
> +{
> +       struct zynq_serial_device *zynq = to_zynq_device(cdev);
> +
> +       while (readl(zynq->regs + UART_SR) & UART_SR_TXFULL);
> +
> +       writel(c, zynq->regs + UART_FIFO);
> +}
> +
> +static int zynq_serial_getc(struct console_device *cdev)
> +{
> +       struct zynq_serial_device *zynq = to_zynq_device(cdev);
> +
> +       return readl(zynq->regs + UART_FIFO);
> +}
> +
> +static void zynq_serial_flush(struct console_device *cdev)
> +{
> +       struct zynq_serial_device *zynq = to_zynq_device(cdev);
> +
> +       while (!(readl(zynq->regs + UART_SR) & UART_SR_TXEMPTY));
> +}
> +
> +static int zynq_serial_probe(struct device_d *dev)
> +{
> +       struct zynq_serial_device *priv;
> +       struct console_device *cdev;
> +       int err;
> +
> +       priv = xzalloc(sizeof(*priv));
> +       cdev = &priv->cdev;
> +
> +       priv->regs      = dev_request_mem_region(dev, 0);
> +       cdev->dev       = dev;
> +       cdev->f_caps    = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +       cdev->tstc      = zynq_serial_tstc;
> +       cdev->putc      = zynq_serial_putc;
> +       cdev->getc      = zynq_serial_getc;
> +       cdev->flush     = zynq_serial_flush;
> +
> +       priv->clk = clk_get(dev, NULL);
> +
> +       err = clk_enable(priv->clk);
> +       if (err) {
> +               free(priv);
> +               return err;
> +       }
> +
> +       zynq_serial_init_device(priv);
> +
> +       dev->priv = priv;
> +
> +       return console_register(cdev);
> +}
> +
> +static void zynq_serial_remove(struct device_d *dev)
> +{
> +       struct zynq_serial_device *zynq = dev->priv;
> +       clk_disable(zynq->clk);
> +       free(zynq);
> +}
> +
> +static struct driver_d zynq_serial_driver = {
> +       .name   = "zynq_serial",
> +       .probe  = zynq_serial_probe,
> +       .remove = zynq_serial_remove,
> +};
> +
> +static int zynq_serial_init(void)
> +{
> +       return platform_driver_register(&zynq_serial_driver);
> +}
> +console_initcall(zynq_serial_init);
> --
> 1.8.1.2
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
