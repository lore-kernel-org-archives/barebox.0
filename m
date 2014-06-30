Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1YkU-000869-3S
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 10:23:46 +0000
Message-ID: <1404123710.4305.18.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 30 Jun 2014 12:21:50 +0200
In-Reply-To: <1403735538-25437-3-git-send-email-antonynpavlov@gmail.com>
References: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
 <1403735538-25437-3-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [RFC v3 2/5] commands: add 'lspci' command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: =?ISO-8859-1?Q?Cl=E9ment?= Leger <cleger@kalray.eu>, barebox@lists.infradead.org

Am Donnerstag, den 26.06.2014, 02:32 +0400 schrieb Antony Pavlov:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/Kconfig  |  8 ++++++++
>  commands/Makefile |  1 +
>  commands/lspci.c  | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 58 insertions(+)
>  create mode 100644 commands/lspci.c
> 

[...]

> diff --git a/commands/lspci.c b/commands/lspci.c
> new file mode 100644
> index 0000000..5e1f6dd
> --- /dev/null
> +++ b/commands/lspci.c
> @@ -0,0 +1,49 @@
> +/*
> + * Copyright (C) 2011-2014 Antony Pavlov <antonynpavlov@gmail.com>
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
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <linux/pci.h>
> +
> +static int do_lspci(int argc, char *argv[])
> +{
> +	struct pci_dev *dev;
> +
> +	if (!pci_root) {
> +		printf("no pci!\n");

Please rephrase this to something like "No PCI root busses found".

> +		return 1;
> +	}
> +
> +	list_for_each_entry(dev, &pci_root->devices, bus_list) {
> +		printf("%02x: %04x: %04x:%04x (rev %02x)\n",
> +			      dev->devfn,
> +			      (dev->class >> 8) & 0xffff,
> +			      dev->vendor,
> +			      dev->device,
> +			      dev->revision);
> +	}
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(lspci)
> +	.cmd            = do_lspci,
> +	BAREBOX_CMD_DESC("Show PCI info")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +	BAREBOX_CMD_COMPLETE(empty_complete)
> +BAREBOX_CMD_END

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
