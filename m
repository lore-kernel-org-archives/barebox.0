Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z02tT-0001Bx-6u
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 07:15:21 +0000
Date: Wed, 3 Jun 2015 09:14:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150603071452.GK26575@pengutronix.de>
References: <1432647106-8295-1-git-send-email-w.egorov@phytec.de>
 <1432647106-8295-2-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432647106-8295-2-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [RFC v2 2/3] net: dhcp: Split dhcp funcionality & add dhcp command
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Hi Wadim,

On Tue, May 26, 2015 at 03:31:45PM +0200, Wadim Egorov wrote:
> dhcp/bootp was bound to the command functionality.
> This patch splits the dhcp command.
> We are now able to use bootp without a shell.
> 
> This patch adds also a check for environment variables and globalvar.
> So only when ENVIRONMENT_VARIABLES and GLOBALVAR is set, all received
> dhcp data will be stored.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
> v2:
> 	- Added a memset in commands/dhcp.c to clear the dhcp_param variable
> 
> Please apply this set.
> 
> ---
>  commands/Kconfig  |   1 +
>  commands/Makefile |   1 +
>  commands/dhcp.c   |  78 ++++++++++++++++++++++++++
>  include/dhcp.h    |  23 ++++++++
>  net/Kconfig       |   4 ++
>  net/Makefile      |   2 +-
>  net/dhcp.c        | 164 +++++++++++++++++++++---------------------------------
>  7 files changed, 172 insertions(+), 101 deletions(-)
>  create mode 100644 commands/dhcp.c
>  create mode 100644 include/dhcp.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 847ff76..102c3cc 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1183,6 +1183,7 @@ menu "Network"
>  
>  config CMD_DHCP
>  	bool
> +	depends on NET_DHCP
>  	prompt "dhcp"
>  	help
>  	  DHCP client to obtain IP or boot params
> diff --git a/commands/Makefile b/commands/Makefile
> index b902f58..3698347 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -111,3 +111,4 @@ obj-$(CONFIG_CMD_CMP)		+= cmp.o
>  obj-$(CONFIG_CMD_NV)		+= nv.o
>  obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
>  obj-$(CONFIG_CMD_STATE)		+= state.o
> +obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
> diff --git a/commands/dhcp.c b/commands/dhcp.c
> new file mode 100644
> index 0000000..eb98bfc
> --- /dev/null
> +++ b/commands/dhcp.c
> @@ -0,0 +1,78 @@
> +/*
> + * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
> + * Author: Wadim Egorov <w.egorov@phytec.de>
> + *
> + * Based on work of Sascha Hauer <s.hauer@pengutronix.de>.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <environment.h>
> +#include <getopt.h>
> +#include <dhcp.h>
> +
> +static int do_dhcp(int argc, char *argv[])
> +{
> +	int ret, opt;
> +	int retries = DHCP_DEFAULT_RETRY;

I had to drop this patch. This is undefined here. Also more important
this patches effectively disables DHCP support in all defconfigs since
DHCP now depends on a new option which by default is disabled.
I suggest that you select the option from the dhcp command rather than
depending on the new option.

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
