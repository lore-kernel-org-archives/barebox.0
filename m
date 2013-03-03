Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCAEn-0000Cq-Gu
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 14:50:07 +0000
Date: Sun, 3 Mar 2013 08:55:38 -0600
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130303145538.GB16050@kryptos>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <ebc763e2373f6712899a6729bd80966454e43e3f.1362273612.git.joshc@eso.teric.us>
 <CAA4bVAEdm_DWULVRjcZB1i-22+X=+GRzP0q_gE1NKXdYs6UgUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEdm_DWULVRjcZB1i-22+X=+GRzP0q_gE1NKXdYs6UgUg@mail.gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On Sun, Mar 03, 2013 at 11:16:49AM +0400, Antony Pavlov wrote:
> On 3 March 2013 04:48, Josh Cartwright <joshc@eso.teric.us> wrote:
> > Simple UART driver for Zynq SoCs, based loosely on the u-boot driver.
> >
> > Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
> > ---
> >  drivers/serial/Kconfig       |   6 ++
> >  drivers/serial/Makefile      |   1 +
> >  drivers/serial/serial_zynq.c | 144 +++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 151 insertions(+)
> >  create mode 100644 drivers/serial/serial_zynq.c
> >
> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index f61d670..608b616 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -113,4 +113,10 @@ config DRIVER_SERIAL_OMAP4_USBBOOT
> >         help
> >           Enable this to get console support over the usb bus used to boot an OMAP4
> >
> > +config DRIVER_SERIAL_ZYNQ
> > +       bool "driver for Zynq uarts"
> > +       default n
> > +       help
> > +         Say Y here to get console out support with the Zynq uarts
> > +
> >  endmenu
> > diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> > index 893e282..883394f 100644
> > --- a/drivers/serial/Makefile
> > +++ b/drivers/serial/Makefile
> > @@ -21,3 +21,4 @@ obj-$(CONFIG_DRIVER_SERIAL_ALTERA)            += serial_altera.o
> >  obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)                += serial_altera_jtag.o
> >  obj-$(CONFIG_DRIVER_SERIAL_PXA)                        += serial_pxa.o
> >  obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)      += serial_omap4_usbboot.o
> > +obj-$(CONFIG_DRIVER_SERIAL_ZYNQ)               += serial_zynq.o
> > diff --git a/drivers/serial/serial_zynq.c b/drivers/serial/serial_zynq.c
> > new file mode 100644
> > index 0000000..ec93b58
> > --- /dev/null
> > +++ b/drivers/serial/serial_zynq.c
> > @@ -0,0 +1,144 @@
> > +/*
> > + * (C) Copyright 2013 Josh Cartwright
> > + *
> > + * Based very loosely on u-boot drivers/serial/serial_zynq.c.
> > + *
> > + * Copyright (C) 2012 Michal Simek <monstr@monstr.eu>
> > + * Copyright (C) 2011-2012 Xilinx, Inc. All rights reserved.
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
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +#include <common.h>
> > +#include <io.h>
> > +#include <init.h>
> > +#include <driver.h>
> > +#include <xfuncs.h>
> > +#include <console.h>
> > +#include <malloc.h>
> > +
> > +#include <linux/clk.h>
> > +
> > +#define UART_CR                0x00000000
> > +#define UART_CR_TXEN   (1<<4)
> > +#define UART_CR_RXEN   (1<<2)
> > +#define UART_CR_TXRST  (1<<1)
> > +#define UART_CR_RXRST  (1<<0)
> > +
> > +#define UART_SR                0x0000002C
> > +#define UART_SR_TXFULL (1<<4)
> > +#define UART_SR_TXEMPTY        (1<<3)
> > +#define UART_SR_RXFULL (1<<2)
> > +#define UART_SR_RXEMPTY        (1<<1)
> > +
> > +#define UART_FIFO      0x00000030
> > +
> > +struct zynq_serial_device {
> > +       struct console_device cdev;
> > +       struct clk *clk;
> > +       void __iomem *regs;
> > +};
> > +
> > +#define to_zynq_device(p) container_of(p, struct zynq_serial_device, cdev)
> > +
> > +static void zynq_serial_init_device(struct zynq_serial_device *dev)
> > +{
> > +       writel(UART_CR_TXEN | UART_CR_RXEN | UART_CR_TXEN | UART_CR_RXEN,
> 
> 
> IMHO there are too many 'UART_CR_TXEN' and 'UART_CR_RXEN' here.

Yes indeed, thanks.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
