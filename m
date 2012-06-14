Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf5FG-00077p-QF
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 08:17:35 +0000
Date: Thu, 14 Jun 2012 10:17:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120614081733.GP30400@pengutronix.de>
References: <1339581710-5460-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339581710-5460-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] commands: add msleep command
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 13, 2012 at 12:01:50PM +0200, Steffen Trumtrar wrote:
> Add a command to sleep for n milliseconds.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  commands/Kconfig  |    4 ++++
>  commands/Makefile |    1 +
>  commands/msleep.c |   40 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 45 insertions(+)
>  create mode 100644 commands/msleep.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 52e1f17..adc0914 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -25,6 +25,10 @@ config CMD_SLEEP
>  	tristate
>  	prompt "sleep"
>  
> +config CMD_MSLEEP
> +	tristate
> +	prompt "msleep"
> +
>  config CMD_SAVEENV
>  	tristate
>  	select ENV_HANDLING
> diff --git a/commands/Makefile b/commands/Makefile
> index 4c8a0a9..0970ba3 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_CMD_MTEST)		+= memtest.o
>  obj-$(CONFIG_CMD_EDIT)		+= edit.o
>  obj-$(CONFIG_CMD_EXEC)		+= exec.o
>  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
> +obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
>  obj-$(CONFIG_CMD_RESET)		+= reset.o
>  obj-$(CONFIG_CMD_GO)		+= go.o
>  obj-$(CONFIG_NET)		+= net.o
> diff --git a/commands/msleep.c b/commands/msleep.c
> new file mode 100644
> index 0000000..c9fa23c
> --- /dev/null
> +++ b/commands/msleep.c
> @@ -0,0 +1,40 @@
> +/*
> + * msleep.c - delay execution for n milliseconds
> + *
> + * Copyright (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>, Pengutronix
> + *
> + * derived from commands/sleep.c
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
> +#include <command.h>
> +#include <clock.h>
> +
> +static int do_msleep(int argc, char *argv[])
> +{
> +	ulong delay;
> +
> +	if (argc != 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	delay = simple_strtoul(argv[1], NULL, 10);
> +
> +	mdelay(delay);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(msleep)
> +	.cmd		= do_msleep,
> +	.usage		= "delay execution for n milliseconds",
> +BAREBOX_CMD_END
> -- 
> 1.7.10
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
