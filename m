Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTTFv-00044F-7w
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 06:25:44 +0000
Date: Mon, 6 Jun 2011 08:25:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110606062535.GU23771@pengutronix.de>
References: <1307215769-6381-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1307215769-6381-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] [Nios2]: Add Altera JTAG UART driver
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

On Sat, Jun 04, 2011 at 09:29:29PM +0200, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> Add ALtera JTAG UART driver.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/serial/Kconfig              |   10 +++
>  drivers/serial/Makefile             |    1 +
>  drivers/serial/serial_altera_jtag.c |  106 +++++++++++++++++++++++++++++++++++
>  3 files changed, 117 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/serial/serial_altera_jtag.c
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 9e05f4b..c8f9ecd 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -48,6 +48,16 @@ config DRIVER_SERIAL_ALTERA
>  	default y
>  	bool "Altera serial driver"
>  
> +config DRIVER_SERIAL_ALTERA_JTAG
> +	depends on NIOS2
> +	default n
> +	bool "Altera JTAG serial driver"
> +
> +config ALTERA_JTAG_UART_BYPASS
> +	depends on DRIVER_SERIAL_ALTERA_JTAG
> +	default y
> +	bool "Don't block on serial putc if JTAG is not connected"

Is there a reason to block on putc if JTAG is not connected? Without
strong reasons I think this option should be removed.

Sascha

> +
>  config DRIVER_SERIAL_NS16550
>  	default n
>  	bool "NS16550 serial driver"
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index df9e705..8b56d15 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -17,3 +17,4 @@ obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
>  obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
>  obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+= serial_s3c24x0.o
>  obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
> +obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
> diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
> new file mode 100644
> index 0000000..70bc5a9
> --- /dev/null
> +++ b/drivers/serial/serial_altera_jtag.c
> @@ -0,0 +1,106 @@
> +/*
> + * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> + * Scott McNutt <smcnutt@psyent.com>
> + *
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
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
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <asm/io.h>
> +#include <asm/nios2-io.h>
> +
> +static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudrate)
> +{
> +	return 0;
> +}
> +
> +static void altera_serial_jtag_putc(struct console_device *cdev, char c)
> +{
> +	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> +	uint32_t st;
> +
> +	while (1) {
> +		st = readl(&jtag->control);
> +		if (NIOS_JTAG_WSPACE(st))
> +			break;
> +#ifdef CONFIG_ALTERA_JTAG_UART_BYPASS
> +		if (!(st & NIOS_JTAG_AC)) /* no connection */
> +			return;
> +#endif
> +	}
> +
> +	writel(c, &jtag->data);
> +}
> +
> +static int altera_serial_jtag_tstc(struct console_device *cdev)
> +{
> +	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> +
> +	return readl(&jtag->control) & NIOS_JTAG_RRDY;
> +}
> +
> +static int altera_serial_jtag_getc(struct console_device *cdev)
> +{
> +	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> +	uint32_t val;
> +	
> +	while (1) {
> +		val = readl(&jtag->data);
> +		if (val & NIOS_JTAG_RVALID)
> +			break;
> +	}
> +
> +	return val & 0xFF;
> +}
> +
> +static int altera_serial_jtag_probe(struct device_d *dev) {
> +
> +	struct console_device *cdev;
> +
> +	cdev = malloc(sizeof(struct console_device));
> +	dev->type_data = cdev;
> +	cdev->dev = dev;
> +	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +	cdev->tstc = altera_serial_jtag_tstc;
> +	cdev->putc = altera_serial_jtag_putc;
> +	cdev->getc = altera_serial_jtag_getc;
> +	cdev->setbrg = altera_serial_jtag_setbaudrate;
> +
> +	console_register(cdev);
> +
> +	return 0;
> +}
> +
> +static struct driver_d altera_serial_jtag_driver = {
> +	.name = "altera_serial_jtag",
> +	.probe = altera_serial_jtag_probe,
> +};
> +
> +static int altera_serial_jtag_init(void)
> +{
> +	return register_driver(&altera_serial_jtag_driver);
> +}
> +
> +console_initcall(altera_serial_jtag_init);
> +
> -- 
> 1.7.0.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
