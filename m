Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6eJd-0008D4-UF
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 07:35:19 +0000
Date: Mon, 4 Apr 2011 09:35:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110404073507.GD7285@pengutronix.de>
References: <1301826331-18875-1-git-send-email-franck.jullien@gmail.com>
	<4D98680C.9060904@pengutronix.de>
	<BANLkTikRtzECN15bjo249gOEYE8KA+7ZqA@mail.gmail.com>
	<4D98B55B.9090609@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D98B55B.9090609@pengutronix.de>
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
Subject: Re: [PATCH] Nios2: Add Altera UART driver
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Apr 03, 2011 at 07:58:51PM +0200, Marc Kleine-Budde wrote:
> On 04/03/2011 04:02 PM, Franck JULLIEN wrote:
> 
> [...]
> 
> >>> index 9f0e12b..8067b74 100644
> >>> --- a/drivers/serial/Makefile
> >>> +++ b/drivers/serial/Makefile
> >>> @@ -4,15 +4,16 @@
> >>>  # serial_max3100.o
> >>>  # serial_pl010.o
> >>>  # serial_xuartlite.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)          += arm_dcc.o
> >>> -obj-$(CONFIG_SERIAL_AMBA_PL011) += amba-pl011.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_IMX)                      += serial_imx.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_STM378X)          += stm-serial.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_ATMEL)            += atmel.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_NETX)             += serial_netx.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)    += linux_console.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)          += serial_mpc5xxx.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)         += serial_blackfin.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_NS16550)          += serial_ns16550.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_PL010)            += serial_pl010.o
> >>> -obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)          += serial_s3c24x0.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)             += arm_dcc.o
> >>> +obj-$(CONFIG_SERIAL_AMBA_PL011)                 += amba-pl011.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_IMX)                 += serial_imx.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_STM378X)             += stm-serial.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_ATMEL)               += atmel.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_NETX)                += serial_netx.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)       += linux_console.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)             += serial_mpc5xxx.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)            += serial_blackfin.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_NS16550)             += serial_ns16550.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_PL010)               += serial_pl010.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)             += serial_s3c24x0.o
> >>> +obj-$(CONFIG_DRIVER_SERIAL_ALTERA)              += serial_altera.o
> >>
> >> Why do you reformat the whole file? Please don't do that.
> >>
> > 
> > 
> > Because there is a mix between tabs and spaces before the "+= ....". I think
> > it's better to have spaces here in order
> > to maintain alignment no matter what the tab size is. Tell me if you're
> > agree, if not, I'll just put my new line at the bottom..... :)
> 
> The tab size is 8 by definition. I see that AMBA_PL011 does it
> different, but the other indent with tabs.
> 
> >>> diff --git a/drivers/serial/serial_altera.c
> >> b/drivers/serial/serial_altera.c
> >>> new file mode 100644
> >>> index 0000000..03e48d1
> >>> --- /dev/null
> >>> +++ b/drivers/serial/serial_altera.c
> >>> @@ -0,0 +1,97 @@
> >>> +/*
> >>> + * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
> >>> + *
> >>> + * See file CREDITS for list of people who contributed to this
> >>> + * project.
> >>> + *
> >>> + * This program is free software; you can redistribute it and/or
> >>> + * modify it under the terms of the GNU General Public License as
> >>> + * published by the Free Software Foundation; either version 2 of
> >>> + * the License, or (at your option) any later version.
> >>> + *
> >>> + * This program is distributed in the hope that it will be useful,
> >>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >>> + * GNU General Public License for more details.
> >>> + *
> >>> + * You should have received a copy of the GNU General Public License
> >>> + * along with this program; if not, write to the Free Software
> >>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> >>> + * MA 02111-1307 USA
> >>> + */
> >>> +
> >>> +#include <common.h>
> >>> +#include <driver.h>
> >>> +#include <init.h>
> >>> +#include <malloc.h>
> >>> +#include <asm/io.h>
> >>> +#include <asm/nios2-io.h>
> >>> +
> >>> +static int altera_serial_setbaudrate(struct console_device *cdev, int
> >> baudrate)
> >>> +{
> >>> +     volatile struct nios_uart * uart = (struct nios_uart
> >> *)cdev->dev->map_base;
> >>                                    ^
> >>
> >> please remove this space.
> >>
> >>
> > Damn, I used the checkpatch script though, should have seen it....
> > 
> > 
> >> no volatiles please.
> >>
> >>
> > 
> > Yeah I know but last time I removed those volatile, the driver didn't work
> > anymore ?!? I've done a test after I read your reply and it
> > works without so I'll remove them.
> 
> You've found the answer yourself :) We don't do pointer derefs to iomem
> in C but use readl/writel instead.
> 
> > 
> > 
> > 
> >>> +     unsigned div;
> >>> +
> >>> +     div = (CPU_FREQ / baudrate) - 1;
> >>> +     writel(div, &uart->divisor);
> >>> +
> >>> +     return 0;
> >>> +}
> >>> +
> >>> +static void altera_serial_putc(struct console_device *cdev, char c)
> >>> +{
> >>> +     volatile struct nios_uart *uart = (struct nios_uart
> >> *)cdev->dev->map_base;
> >>> +
> >>> +     if (c == '\n')
> >>> +             altera_serial_putc(cdev, '\r');
> >>
> >> Why this? Only the at91rm9200 driver does this and I don't know why....
> >>
> >>
> > Because I copied it from U-Boot :) Removed.
> > 
> > 
> > 
> >>> +
> >>> +     while ((readl(&uart->status) & NIOS_UART_TRDY) == 0);
> >>> +     writel(c, &uart->txdata);
> >>> +}
> >>> +
> >>> +static int altera_serial_tstc(struct console_device *cdev)
> >>> +{
> >>> +     volatile struct nios_uart *uart = (struct nios_uart
> >> *)cdev->dev->map_base;
> >>
> >> No volatiles
> >>
> >>> +
> >>> +     return readl(&uart->status) & NIOS_UART_RRDY;
> >>> +}
> >>> +
> >>> +static int altera_serial_getc(struct console_device *cdev)
> >>> +{
> >>> +     volatile struct nios_uart *uart = (struct nios_uart
> >> *)cdev->dev->map_base;
> >> dito
> >>> +
> >>> +     while (altera_serial_tstc(cdev) == 0);
> >> please add a comment, or at least an empty line after while
> >>
> >>
> > Do you guys put the semi colon on the next line also ?
> 
> Don't know.

Usually not.

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
