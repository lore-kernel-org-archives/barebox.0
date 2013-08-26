Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDwip-000741-1Q
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 13:20:44 +0000
Date: Mon, 26 Aug 2013 09:20:18 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20130826132018.GF13964@titan.lakedaemon.net>
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
 <1377493037-2229-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377493037-2229-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 1/8] ARM: add very initial support for Canon DIGIC chips
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Mon, Aug 26, 2013 at 08:57:10AM +0400, Antony Pavlov wrote:
> TODO: the clocksource driver need improvement!
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/Kconfig                            |  9 ++++
>  arch/arm/Makefile                           |  1 +
>  arch/arm/dts/digic4.dtsi                    | 24 +++++++++++
>  arch/arm/mach-digic/Kconfig                 | 11 +++++
>  arch/arm/mach-digic/Makefile                |  2 +
>  arch/arm/mach-digic/core.c                  | 24 +++++++++++
>  arch/arm/mach-digic/csrc-timer.c            | 67 +++++++++++++++++++++++++++++
>  arch/arm/mach-digic/include/mach/debug_ll.h | 40 +++++++++++++++++
>  arch/arm/mach-digic/include/mach/digic4.h   | 29 +++++++++++++
>  arch/arm/mach-digic/include/mach/gpio.h     |  1 +
>  10 files changed, 208 insertions(+)
>  create mode 100644 arch/arm/dts/digic4.dtsi
>  create mode 100644 arch/arm/mach-digic/Kconfig
>  create mode 100644 arch/arm/mach-digic/Makefile
>  create mode 100644 arch/arm/mach-digic/core.c
>  create mode 100644 arch/arm/mach-digic/csrc-timer.c
>  create mode 100644 arch/arm/mach-digic/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-digic/include/mach/digic4.h
>  create mode 100644 arch/arm/mach-digic/include/mach/gpio.h
> 
...
> diff --git a/arch/arm/mach-digic/include/mach/debug_ll.h b/arch/arm/mach-digic/include/mach/debug_ll.h
> new file mode 100644
> index 0000000..5f4579e
> --- /dev/null
> +++ b/arch/arm/mach-digic/include/mach/debug_ll.h
> @@ -0,0 +1,40 @@
> +/*
> + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
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
> +#ifndef __MACH_DEBUG_LL_H__
> +#define __MACH_DEBUG_LL_H__
> +
> +#include <io.h>
> +#include <mach/digic4.h>
> +
> +#define DEBUG_LL_UART         DIGIC4_UART
> +
> +/* Serial interface registers */
> +#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + 0x0)
> +#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + 0x14)
> + #define UART_ST_TX_RDY	2

leading whitespace, and perhaps use BIT() here.

> +
> +static inline void PUTC_LL(char ch)
> +{
> +	while (!(readl(DEBUG_LL_UART_ST) & UART_ST_TX_RDY))
> +		; /* noop */
> +
> +	writel(0x06, DEBUG_LL_UART_ST);

could you use a macro here for 0x06?

> +	writel(ch, DEBUG_LL_UART_TX);
> +}
> +
> +#endif

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
