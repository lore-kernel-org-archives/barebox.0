Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiLs8-0003He-9i
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 08:06:58 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 77A2EDC43B6
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 09:07:54 +0100 (CET)
Date: Wed, 4 Jan 2012 09:00:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104080043.GL945@game.jcrosoft.org>
References: <1325609969-21471-3-git-send-email-eric@eukrea.com>
 <1325623931-28780-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325623931-28780-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/4] serial gadget: enable/disable on request
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 21:52 Tue 03 Jan     , Eric B=E9nard wrote:
> - add a usbserial command to enable/disable the serial gadget
> - allow dfu and usbserial to cohexist in the same barebox
> - add a timeout in u_serial so that we don't get locked if the user
> enable usbserial from a UART console but doesn't consume the data
> on the usbserial port created on the PC
> - remove debug or verbose printf
> - tested on i.MX25 & i.MX35
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
> v2 : always recompile after fixing checkpatch notes ...
> =

>  commands/Makefile             |    1 +
>  commands/usbserial.c          |  102 +++++++++++++++++++++++++++++++++++=
++++++
>  drivers/usb/gadget/Kconfig    |    5 +--
>  drivers/usb/gadget/f_acm.c    |    4 +-
>  drivers/usb/gadget/serial.c   |   40 +++++++++++++---
>  drivers/usb/gadget/u_serial.c |   22 ++++++---
>  6 files changed, 152 insertions(+), 22 deletions(-)
>  create mode 100644 commands/usbserial.c
> =

> diff --git a/commands/Makefile b/commands/Makefile
> index 24753be..43630e1 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -47,6 +47,7 @@ obj-$(CONFIG_CMD_LSMOD)		+=3D lsmod.o
>  obj-$(CONFIG_CMD_INSMOD)	+=3D insmod.o
>  obj-$(CONFIG_CMD_BMP)		+=3D bmp.o
>  obj-$(CONFIG_USB_GADGET_DFU)	+=3D dfu.o
> +obj-$(CONFIG_USB_GADGET_SERIAL)	+=3D usbserial.o
>  obj-$(CONFIG_CMD_GPIO)		+=3D gpio.o
>  obj-$(CONFIG_CMD_UNCOMPRESS)	+=3D uncompress.o
>  obj-$(CONFIG_CMD_I2C)		+=3D i2c.o
> diff --git a/commands/usbserial.c b/commands/usbserial.c
> new file mode 100644
> index 0000000..7dfc102
> --- /dev/null
> +++ b/commands/usbserial.c
> @@ -0,0 +1,102 @@
> +/*
> + * dfu.c - device firmware update command
please fix
> + *
> + * Copyright (c) 2009 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 =
 USA
> + */
> +#include <common.h>
> +#include <command.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <fs.h>
> +#include <xfuncs.h>
> +#include <usb/usbserial.h>
> +
> +static int do_usbserial(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int opt;
> +	struct usb_serial_pdata pdata;
> +	char *argstr;
> +	char *manufacturer =3D "barebox";
> +	char *productname =3D CONFIG_BOARDINFO;
> +	u16 idVendor =3D 0, idProduct =3D 0;
> +	int mode =3D 0;
> +
> +	while ((opt =3D getopt(argc, argv, "m:p:V:P:asd")) > 0) {
> +		switch (opt) {
> +		case 'm':
> +			manufacturer =3D optarg;
> +			break;
> +		case 'p':
> +			productname =3D optarg;
> +			break;
> +		case 'V':
> +			idVendor =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'P':
> +			idProduct =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'a':
> +			mode =3D 0;
> +			break;
> +/*		case 'o':
> +			mode =3D 1;
> +			break;*/
ditto
> +		case 's':
> +			mode =3D 2;
> +			break;
> +		case 'd':
> +			usb_serial_unregister();
> +			return 0;
> +		}
> +	}
> +
> +	argstr =3D argv[optind];
> +
> +	pdata.manufacturer =3D manufacturer;
> +	pdata.productname =3D productname;
> +	pdata.idVendor =3D idVendor;
> +	pdata.idProduct =3D idProduct;
> +	pdata.mode =3D mode;
> +
> +	return usb_serial_register(&pdata);
> +}
> +
> +BAREBOX_CMD_HELP_START(usbserial)
> +BAREBOX_CMD_HELP_USAGE("usbserial [OPTIONS] <description>\n")
> +BAREBOX_CMD_HELP_SHORT("Enable/disable a serial gadget on the USB device=
 interface.\n")
> +BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
> +BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO =
")\n")
> +BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
> +BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
> +BAREBOX_CMD_HELP_OPT  ("-a",   "CDC ACM (default)\n")
> +/*BAREBOX_CMD_HELP_OPT  ("-o",   "CDC OBEX\n")*/
ditto
> +BAREBOX_CMD_HELP_OPT  ("-s",   "Generic Serial\n")
> +BAREBOX_CMD_HELP_OPT  ("-d",   "Disable the serial gadget\n")
> +BAREBOX_CMD_HELP_END
> +
> +/**
> + * @page usbserial_command
> + */
> +
> +BAREBOX_CMD_START(usbserial)
> +	.cmd		=3D do_usbserial,
> +	.usage		=3D "Serial gadget enable/disable",
> +	BAREBOX_CMD_HELP(cmd_usbserial_help)
> +BAREBOX_CMD_END
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index fd471c0..797d19f 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -30,8 +30,7 @@ config USB_GADGET_DRIVER_PXA27X
>  	select POLLER
>  endchoice
>  =

> -choice
> -	prompt "USB Gadget drivers"
> +comment "USB Gadget drivers"
>  =

>  config USB_GADGET_DFU
>  	bool
> @@ -42,7 +41,5 @@ config USB_GADGET_SERIAL
>  	depends on EXPERIMENTAL
>  	prompt "Serial Gadget"
>  =

> -endchoice
> -
>  endif
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
