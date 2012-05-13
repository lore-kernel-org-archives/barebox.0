Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STUhd-0001IT-9z
 for barebox@lists.infradead.org; Sun, 13 May 2012 09:02:58 +0000
Date: Sun, 13 May 2012 11:02:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120513090249.GU27341@pengutronix.de>
References: <1336806904-6251-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336806904-6251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] MIPS: add common header file for DEBUG_LL via NS16550
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 12, 2012 at 11:15:03AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/include/debug_ll_ns16550.h |   40 ++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 arch/mips/include/debug_ll_ns16550.h
> 
> diff --git a/arch/mips/include/debug_ll_ns16550.h b/arch/mips/include/debug_ll_ns16550.h
> new file mode 100644
> index 0000000..9280219
> --- /dev/null
> +++ b/arch/mips/include/debug_ll_ns16550.h
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
> +#ifndef __INCLUDE_ARCH_DEBUG_LL_NS16550_H__
> +#define __INCLUDE_ARCH_DEBUG_LL_NS16550_H__
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
> +#endif  /* __INCLUDE_ARCH_DEBUG_LL_NS16550_H__ */
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
