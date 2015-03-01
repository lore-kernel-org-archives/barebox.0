Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRyOE-0001Pl-Kf
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 07:34:15 +0000
Date: Sun, 1 Mar 2015 08:33:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150301073352.GD11010@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
 <1425159621-22805-8-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425159621-22805-8-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 07/16] sandbox: add support to pass dtb to barebox
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Feb 28, 2015 at 10:40:12PM +0100, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/sandbox/board/Makefile                    |  1 +
>  arch/sandbox/board/dtb.c                       | 57 ++++++++++++++++++++++++++
>  arch/sandbox/mach-sandbox/include/mach/linux.h |  1 +
>  arch/sandbox/os/common.c                       | 47 ++++++++++++++++++++-
>  4 files changed, 105 insertions(+), 1 deletion(-)
>  create mode 100644 arch/sandbox/board/dtb.c
> 
> diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
> index 5104f5cb2679..460116332df9 100644
> --- a/arch/sandbox/board/Makefile
> +++ b/arch/sandbox/board/Makefile
> @@ -3,5 +3,6 @@ obj-y += clock.o
>  obj-y += hostfile.o
>  obj-y += console.o
>  obj-y += devices.o
> +obj-y += dtb.o
>  
>  extra-y += barebox.lds
> diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
> new file mode 100644
> index 000000000000..9d4210164e01
> --- /dev/null
> +++ b/arch/sandbox/board/dtb.c
> @@ -0,0 +1,57 @@
> +/*
> + * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + * Copyright (c) 2015 Marc Kleine-Budde <mkl@pengutronix.de>, Pengutronix
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
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +
> +#include <mach/linux.h>
> +#include <linux/err.h>
> +
> +static const void *dtb;
> +
> +int barebox_register_dtb(const void *new_dtb)
> +{
> +	if (dtb)
> +		return -EBUSY;
> +
> +	dtb = new_dtb;
> +
> +	return 0;
> +}
> +
> +static int of_sandbox_init(void)
> +{
> +	struct device_node *root;
> +
> +	if (!dtb)
> +		return 0;
> +
> +	root = of_unflatten_dtb(dtb);

of_unflatten_dtb is only defined when CONFIG_OFTREE is enabled. I see
nothing in this patch selectin this option or depending on this option.
Does this compile with device tree support disabled?

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
