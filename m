Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSk9E-0007EG-Mr
 for barebox@lists.infradead.org; Fri, 11 May 2012 07:21:50 +0000
Date: Fri, 11 May 2012 09:20:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511072013.GZ27341@pengutronix.de>
References: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
 <1336642330-23675-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336642330-23675-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 1/5] MIPS: add common header file for DEBUG_LL via NS16550
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 10, 2012 at 01:32:06PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/include/debug_ll_common.h |   40 +++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 arch/mips/include/debug_ll_common.h
> 
> diff --git a/arch/mips/include/debug_ll_common.h b/arch/mips/include/debug_ll_common.h

Does that mean that every mips has a ns16550? If not the file should
have 16550 in its name.

Sascha

> new file mode 100644
> index 0000000..7c26f54
> --- /dev/null
> +++ b/arch/mips/include/debug_ll_common.h
> @@ -0,0 +1,40 @@
> +/*
> + * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
> +/** @file
> + *  This file contains declaration for early output support
> + */
> +#ifndef __INCLUDE_ARCH_DEBUG_LL_COMMON_H__
> +#define __INCLUDE_ARCH_DEBUG_LL_COMMON_H__
> +
> +#include <asm/io.h>
> +
> +#define rbr		(0 << DEBUG_LL_UART_SHIFT)
> +#define lsr		(5 << DEBUG_LL_UART_SHIFT)
> +
> +#define LSR_THRE	0x20	/* Xmit holding register empty */
> +
> +static __inline__ void putc(char ch)
> +{
> +	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
> +	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + rbr);
> +}
> +
> +#endif  /* __INCLUDE_ARCH_DEBUG_LL_COMMON_H__ */
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
