Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTTCb-00043M-HG
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 06:22:19 +0000
Date: Mon, 6 Jun 2011 08:22:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110606062214.GT23771@pengutronix.de>
References: <1307029887-7091-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1307029887-7091-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] import linux __iowrite32/64_copy support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Thu, Jun 02, 2011 at 05:51:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/linux/io.h |   27 ++++++++++++++++++++
>  lib/Makefile       |    1 +
>  lib/iomap_copy.c   |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++

No general obejctions, but without users this is quite uninteresting.
Please repost this along with the first user.

Sascha

>  3 files changed, 98 insertions(+), 0 deletions(-)
>  create mode 100644 include/linux/io.h
>  create mode 100644 lib/iomap_copy.c
> 
> diff --git a/include/linux/io.h b/include/linux/io.h
> new file mode 100644
> index 0000000..a87501c
> --- /dev/null
> +++ b/include/linux/io.h
> @@ -0,0 +1,27 @@
> +/*
> + * Copyright 2006 PathScale, Inc.  All Rights Reserved.
> + *
> + * This file is free software; you can redistribute it and/or modify
> + * it under the terms of version 2 of the GNU General Public License
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software Foundation,
> + * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
> + */
> +
> +#ifndef _LINUX_IO_H
> +#define _LINUX_IO_H
> +
> +#include <linux/types.h>
> +#include <asm/io.h>
> +
> +void __iowrite32_copy(void __iomem *to, const void *from, size_t count);
> +void __iowrite64_copy(void __iomem *to, const void *from, size_t count);
> +
> +#endif /* _LINUX_IO_H */
> diff --git a/lib/Makefile b/lib/Makefile
> index d96cfe7..b1f4f3d 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -1,4 +1,5 @@
>  obj-y			+= ctype.o
> +obj-y			+= iomap_copy.o
>  obj-y			+= rbtree.o
>  obj-y			+= display_options.o
>  obj-y			+= string.o
> diff --git a/lib/iomap_copy.c b/lib/iomap_copy.c
> new file mode 100644
> index 0000000..8732ae0
> --- /dev/null
> +++ b/lib/iomap_copy.c
> @@ -0,0 +1,70 @@
> +/*
> + * Copyright 2006 PathScale, Inc.  All Rights Reserved.
> + *
> + * This file is free software; you can redistribute it and/or modify
> + * it under the terms of version 2 of the GNU General Public License
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software Foundation,
> + * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
> + */
> +
> +#include <module.h>
> +#include <linux/io.h>
> +
> +/**
> + * __iowrite32_copy - copy data to MMIO space, in 32-bit units
> + * @to: destination, in MMIO space (must be 32-bit aligned)
> + * @from: source (must be 32-bit aligned)
> + * @count: number of 32-bit quantities to copy
> + *
> + * Copy data from kernel space to MMIO space, in units of 32 bits at a
> + * time.  Order of access is not guaranteed, nor is a memory barrier
> + * performed afterwards.
> + */
> +void __attribute__((weak)) __iowrite32_copy(void __iomem *to,
> +					    const void *from,
> +					    size_t count)
> +{
> +	u32 __iomem *dst = to;
> +	const u32 *src = from;
> +	const u32 *end = src + count;
> +
> +	while (src < end)
> +		__raw_writel(*src++, dst++);
> +}
> +EXPORT_SYMBOL_GPL(__iowrite32_copy);
> +
> +/**
> + * __iowrite64_copy - copy data to MMIO space, in 64-bit or 32-bit units
> + * @to: destination, in MMIO space (must be 64-bit aligned)
> + * @from: source (must be 64-bit aligned)
> + * @count: number of 64-bit quantities to copy
> + *
> + * Copy data from kernel space to MMIO space, in units of 32 or 64 bits at a
> + * time.  Order of access is not guaranteed, nor is a memory barrier
> + * performed afterwards.
> + */
> +void __attribute__((weak)) __iowrite64_copy(void __iomem *to,
> +					    const void *from,
> +					    size_t count)
> +{
> +#ifdef CONFIG_64BIT
> +	u64 __iomem *dst = to;
> +	const u64 *src = from;
> +	const u64 *end = src + count;
> +
> +	while (src < end)
> +		__raw_writeq(*src++, dst++);
> +#else
> +	__iowrite32_copy(to, from, count * 2);
> +#endif
> +}
> +
> +EXPORT_SYMBOL_GPL(__iowrite64_copy);
> -- 
> 1.7.4.1
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
