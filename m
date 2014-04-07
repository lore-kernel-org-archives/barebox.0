Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX3x0-0006bL-If
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:26:39 +0000
Date: Mon, 7 Apr 2014 09:26:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140407072616.GI27055@pengutronix.de>
References: <1396705058-15047-1-git-send-email-michel@reverze.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396705058-15047-1-git-send-email-michel@reverze.net>
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
Subject: Re: [PATCHv3 1/3] common: Allow for I/O mapped I/O
To: michel@reverze.net
Cc: barebox@lists.infradead.org

Hi Michel,

Looks good overall. Some small remaining remarks.

On Sat, Apr 05, 2014 at 03:37:36PM +0200, michel@reverze.net wrote:
> diff --git a/commands/iomemport.c b/commands/iomemport.c
> new file mode 100644
> index 0000000..06bbd92
> --- /dev/null
> +++ b/commands/iomemport.c
> @@ -0,0 +1,64 @@
> +/*
> + * iomem.c - barebox iomem command
> + *
> + * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
> + */
> +#include <common.h>
> +#include <command.h>
> +
> +static void __print_resources(struct resource *res, int indent)
> +{
> +	struct resource *r;
> +	int i;
> +
> +	for (i = 0; i < indent; i++)
> +		printf("  ");
> +
> +	printf(PRINTF_CONVERSION_RESOURCE " - " PRINTF_CONVERSION_RESOURCE
> +			" (size " PRINTF_CONVERSION_RESOURCE ") %s\n",
> +			res->start, res->end, resource_size(res), res->name);
> +
> +	list_for_each_entry(r, &res->children, sibling)
> +		__print_resources(r, indent + 1);
> +}
> +
> +static void print_resources(struct resource *res)
> +{
> +	__print_resources(res, 0);
> +}
> +
> +static int do_iomem(int argc, char *argv[])
> +{
> +	print_resources(&iomem_resource);
> +
> +	return 0;
> +}
> +
> +static int do_ioport(int argc, char *argv[])
> +{
> +	print_resources(&ioport_resource);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(iomem)
> +	.cmd		= do_iomem,
> +	.usage		= "show iomem usage",
> +BAREBOX_CMD_END
> +
> +BAREBOX_CMD_START(ioport)
> +	.cmd		= do_ioport,
> +	.usage		= "show ioport usage",
> +BAREBOX_CMD_END

Can we surround this with a

#if IOSPACE_LIMIT > 0

So that users of architectures without iospace are not presesnted a
useless command?

BTW In this version there's no whitespace damage anymore. The patches
apply without problems now.

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
