Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x242.google.com ([2607:f8b0:400d:c0d::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7efN-0002bn-C4
 for barebox@lists.infradead.org; Fri, 18 Nov 2016 08:37:03 +0000
Received: by mail-qt0-x242.google.com with SMTP id l20so16655728qta.1
 for <barebox@lists.infradead.org>; Fri, 18 Nov 2016 00:36:40 -0800 (PST)
Date: Fri, 18 Nov 2016 11:41:45 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20161118114145.6f1a3f3338d3744d376b27e9@gmail.com>
In-Reply-To: <20161117070706.2expz3uxnl6aoawt@pengutronix.de>
References: <20161113215015.9399-1-antonynpavlov@gmail.com>
 <20161113215015.9399-2-antonynpavlov@gmail.com>
 <20161117070706.2expz3uxnl6aoawt@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFCv2 1/2] serial: add driver for SiFive UART
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 17 Nov 2016 08:07:06 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Nov 14, 2016 at 12:50:14AM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > =

> > TODO:
> > =

> >   * add speed setup support.
> > =

> >  drivers/serial/Kconfig         |   3 ++
> >  drivers/serial/Makefile        |   1 +
> >  drivers/serial/serial_sifive.c | 109 +++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 113 insertions(+)
> > =

> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index b112d7e..70509b9 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -117,6 +117,9 @@ config DRIVER_SERIAL_S3C_AUTOSYNC
> >  	  Say Y here if you want to use the auto flow feature of this
> >  	  UART. RTS and CTS will be handled by the hardware when enabled.
> >  =

> > +config DRIVER_SERIAL_SIFIVE
> > +	bool "SiFive serial driver"
> > +
> >  config DRIVER_SERIAL_PXA
> >  	bool "PXA serial driver"
> >  	depends on ARCH_PXA
> > diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> > index 189e777..368e992 100644
> > --- a/drivers/serial/Makefile
> > +++ b/drivers/serial/Makefile
> > @@ -20,3 +20,4 @@ obj-$(CONFIG_DRIVER_SERIAL_AUART)		+=3D serial_auart.o
> >  obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+=3D serial_cadence.o
> >  obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+=3D efi-stdio.o
> >  obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+=3D serial_digic.o
> > +obj-$(CONFIG_DRIVER_SERIAL_SIFIVE)		+=3D serial_sifive.o
> > diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sif=
ive.c
> > new file mode 100644
> > index 0000000..06e3521
> > --- /dev/null
> > +++ b/drivers/serial/serial_sifive.c
> > @@ -0,0 +1,109 @@
> > +/*
> > + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + * See file CREDITS for list of people who contributed to this project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <malloc.h>
> > +#include <io.h>
> > +
> > +#define UART_RX_OFFSET 0
> > +#define UART_TX_OFFSET 0
> > +#define UART_TX_COUNT_OFFSET 0x4
> > +#define UART_RX_COUNT_OFFSET 0x8
> > +#define UART_DIVIDER_OFFSET  0xC
> > +
> > +static inline uint32_t sifive_serial_readl(struct console_device *cdev,
> > +						uint32_t offset)
> > +{
> > +	void __iomem *base =3D cdev->dev->priv;
> > +
> > +	return readl(base + offset);
> > +}
> > +
> > +static inline void sifive_serial_writel(struct console_device *cdev,
> > +					uint32_t value, uint32_t offset)
> > +{
> > +	void __iomem *base =3D cdev->dev->priv;
> > +
> > +	writel(value, base + offset);
> > +}
> > +
> > +static int sifive_serial_setbaudrate(struct console_device *cdev, int =
baudrate)
> > +{
> > +	/* FIXME: no baudrate setup at the momement :( */
> > +
> > +	return 0;
> > +}
> > +
> > +static void sifive_serial_putc(struct console_device *cdev, char c)
> > +{
> > +	sifive_serial_writel(cdev, c, UART_TX_OFFSET);
> > +}
> =

> This doesn't test if there is space in the FIFO. This is necessary, no?

Yes, you are right. I have to add 'check UART FIFO state' to the TODO list.
Current qemu-riscv SiFive UART model does not have transmit FIFO support
so I can't use it for tests.

I'm planning to run RISC-V barebox on real FPGA board in the nearest featur=
e.
So baudrate setup code and FIFO state checking code will be added. =


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
