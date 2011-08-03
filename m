Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoYb9-0007s9-BW
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 10:22:48 +0000
Date: Wed, 3 Aug 2011 12:22:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110803102244.GQ31404@pengutronix.de>
References: <1312360122-26499-1-git-send-email-antonynpavlov@gmail.com>
	<1312360122-26499-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312360122-26499-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH very-draft] add ifconfig command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 03, 2011 at 12:28:42PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/Kconfig    |    6 +++
>  commands/Makefile   |    1 +
>  commands/ifconfig.c |   97 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 104 insertions(+), 0 deletions(-)
>  create mode 100644 commands/ifconfig.c

Right now I don't see the reason to add a ifconfig command. Why not use
devinfo eth0?

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 5700dc2..6f65791 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -432,6 +432,12 @@ config CMD_USB
>  	help
>  	  The usb command allows to rescan for USB devices.
>  
> +config CMD_IFCONFIG
> +	bool
> +	depends on NET
> +	prompt "ifconfig"
> +	help
> +	  The ifconfig command allows to setup network interface parameters.
>  endmenu
>  
>  endif
> diff --git a/commands/Makefile b/commands/Makefile
> index 8ee4aba..014c16b 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -57,3 +57,4 @@ obj-$(CONFIG_CMD_LOGIN)		+= login.o
>  obj-$(CONFIG_CMD_LED)		+= led.o
>  obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
>  obj-$(CONFIG_CMD_USB)		+= usb.o
> +obj-$(CONFIG_CMD_IFCONFIG)	+= ifconfig.o
> diff --git a/commands/ifconfig.c b/commands/ifconfig.c
> new file mode 100644
> index 0000000..cde8434
> --- /dev/null
> +++ b/commands/ifconfig.c
> @@ -0,0 +1,97 @@
> +/*
> + * ifconfig.c - configure a network interface
> + *
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
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
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <environment.h>
> +#include <driver.h>
> +#include <net.h>
> +#include <fs.h>
> +#include <errno.h>
> +#include <libbb.h>
> +
> +static void print_iface_params(struct eth_device *edev)
> +{
> +	struct param_d *p;
> +
> +	if (edev->active) {
> +		printf("UP");
> +	} else {
> +		printf("DOWN");
> +	}
> +
> +	p = get_param_by_name(&edev->dev, "ethaddr");
> +	if (p && p->value) {
> +		printf(" HWaddr %s\n", p->value);
> +	} else {
> +		printf("\n");
> +	}
> +
> +	p = get_param_by_name(&edev->dev, "ipaddr");
> +	if (p && p->value) {
> +		printf("inet addr:%s ", p->value);
> +	}
> +
> +	p = get_param_by_name(&edev->dev, "netmask");
> +	if (p && p->value) {
> +		printf("Mask:%s\n", p->value);
> +	} else {
> +		printf("\n");
> +	}
> +
> +	p = get_param_by_name(&edev->dev, "gateway");
> +	if (p && p->value) {
> +		printf("gateway:%s\n", p->value);
> +	}
> +
> +	p = get_param_by_name(&edev->dev, "serverip");
> +	if (p && p->value) {
> +		printf("serverip:%s\n", p->value);
> +	}
> +}
> +
> +static int do_ifconfig(struct command *cmdtp, int argc, char *argv[])
> +{
> +	struct eth_device *edev;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	edev = eth_get_byname(argv[1]);
> +	if (edev) {
> +		print_iface_params(edev);
> +	} else {
> +		printf("no such net device: %s\n", argv[1]);
> +		return COMMAND_ERROR;
> +	}
> +
> +	return COMMAND_SUCCESS;
> +}
> +
> +static const __maybe_unused char cmd_ifconfig_help[] =
> +"Usage: ifconfig <ethx> <ip>\n";
> +
> +BAREBOX_CMD_START(ifconfig)
> +	.cmd		= do_ifconfig,
> +	.usage		= "setup current ethernet device",
> +	BAREBOX_CMD_HELP(cmd_ifconfig_help)
> +BAREBOX_CMD_END
> -- 
> 1.7.5.4
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
