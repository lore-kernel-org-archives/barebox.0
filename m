Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBPqh-0006BZ-UX
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 13:18:08 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0E4AADC2F4D
 for <barebox@lists.infradead.org>; Fri,  1 Mar 2013 14:28:56 +0100 (CET)
Date: Fri, 1 Mar 2013 14:17:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130301131703.GE23022@game.jcrosoft.org>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-3-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362129773-4579-3-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 2/7] tegra: remove debug_ll
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 10:22 Fri 01 Mar     , Lucas Stach wrote:
> Without some kind of initialisation those LL debug functions are mostly
> useless. We might want them when booting from the AVP, but for this to
> work they need some serious rework, so move them out of the way for now.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
NACK

this is usefull for second stage
> ---
>  arch/arm/Kconfig                            |  1 -
>  arch/arm/mach-tegra/include/mach/debug_ll.h | 42 -----------------------------
>  2 files changed, 43 deletions(-)
>  delete mode 100644 arch/arm/mach-tegra/include/mach/debug_ll.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 28332ec..0ae2daa 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -108,7 +108,6 @@ config ARCH_VERSATILE
>  config ARCH_TEGRA
>  	bool "Nvidia Tegra-based boards"
>  	select CPU_ARM926T
> -	select HAS_DEBUG_LL
>  
>  endchoice
>  
> diff --git a/arch/arm/mach-tegra/include/mach/debug_ll.h b/arch/arm/mach-tegra/include/mach/debug_ll.h
> deleted file mode 100644
> index 4a54e44..0000000
> --- a/arch/arm/mach-tegra/include/mach/debug_ll.h
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -/*
> - * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -/** @file
> - *  This File contains declaration for early output support
> - */
> -#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
> -#define __INCLUDE_ARCH_DEBUG_LL_H__
> -
> -#include <asm/io.h>
> -#include <mach/tegra20-silicon.h>
> -
> -#define DEBUG_LL_UART_ADDR	TEGRA_UARTA_BASE
> -#define DEBUG_LL_UART_RSHFT	2
> -
> -#define rbr		(0 << DEBUG_LL_UART_RSHFT)
> -#define lsr		(5 << DEBUG_LL_UART_RSHFT)
> -#define LSR_THRE	0x20	/* Xmit holding register empty */
> -
> -static inline void PUTC_LL(char ch)
> -{
> -	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE))
> -		;
> -
> -	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
> -}
> -
> -#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
> -- 
> 1.8.1.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
