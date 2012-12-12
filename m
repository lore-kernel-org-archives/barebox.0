Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tiig7-00068d-Kr
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 09:32:37 +0000
Date: Wed, 12 Dec 2012 10:32:29 +0100
From: Teresa Gamez <tgamez@idefix.phytec.de>
Message-ID: <20121212093228.GB13171@idefix.phytec.de>
References: <1355223567-12671-1-git-send-email-jlu@pengutronix.de>
 <1355223567-12671-2-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1355223567-12671-2-git-send-email-jlu@pengutronix.de>
Content-Disposition: inline
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
Subject: Re: [PATCH 2/3] arm: omap: timers: split omap3/4 timer into a
 separate header
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Jan,

I tried to apply this one on master for testing.
But it got rejected.  
Can you check it?

Regards,
Teresa

On Tue, 11. Dec 11:59, Jan Luebbe wrote:
> This prepares for adding the AM33xx timer.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/omap3-timer.h |   56 +++++++++++++++++++++++++
>  arch/arm/mach-omap/include/mach/timers.h      |   56 +++++--------------------
>  2 files changed, 67 insertions(+), 45 deletions(-)
>  create mode 100644 arch/arm/mach-omap/include/mach/omap3-timer.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/omap3-timer.h b/arch/arm/mach-omap/include/mach/omap3-timer.h
> new file mode 100644
> index 0000000..e8dad9a
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/omap3-timer.h
> @@ -0,0 +1,56 @@
> +/**
> + * @file
> + * @brief This defines the Register defines for OMAP GPTimers and Sync32 timers.
> + *
> + * FileName: include/asm-arm/arch-omap/timers.h
> + *
> + * Originally from Linux kernel:
> + * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
> + *
> + */
> +/*
> + * (C) Copyright 2008
> + * Texas Instruments, <www.ti.com>
> + * Nishanth Menon <x0nishan@ti.com>
> + *
> + * Copyright (C) 2007 Texas Instruments, <www.ti.com>
> + * Copyright (C) 2007 Nokia Corporation.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#ifndef __ASM_ARCH_GPT_H
> +#define __ASM_ARCH_GPT_H
> +
> +/** General Purpose timer regs offsets (32 bit regs) */
> +#define TIDR			0x0      /* r */
> +#define TIOCP_CFG		0x10     /* rw */
> +#define TISTAT			0x14     /* r */
> +#define TISR			0x18     /* rw */
> +#define TIER			0x1C     /* rw */
> +#define TWER			0x20     /* rw */
> +#define TCLR			0x24     /* rw */
> +#define TCRR			0x28     /* rw */
> +#define TLDR			0x2C     /* rw */
> +#define TTGR			0x30     /* rw */
> +#define TWPS			0x34     /* r */
> +#define TMAR			0x38     /* rw */
> +#define TCAR1			0x3c     /* r */
> +#define TSICR			0x40     /* rw */
> +#define TCAR2			0x44     /* r */
> +/* Enable sys_clk NO-prescale /1 */
> +#define GPT_EN			((0 << 2) | (0x1 << 1) | (0x1 << 0))
> +
> +/** Sync 32Khz Timer registers */
> +#define S32K_CR			(OMAP_32KTIMER_BASE + 0x10)
> +#define S32K_FREQUENCY		32768
> +
> +#endif /*__ASM_ARCH_GPT_H */
> diff --git a/arch/arm/mach-omap/include/mach/timers.h b/arch/arm/mach-omap/include/mach/timers.h
> index e8dad9a..b7242d1 100644
> --- a/arch/arm/mach-omap/include/mach/timers.h
> +++ b/arch/arm/mach-omap/include/mach/timers.h
> @@ -1,25 +1,10 @@
> -/**
> - * @file
> - * @brief This defines the Register defines for OMAP GPTimers and Sync32 timers.
> - *
> - * FileName: include/asm-arm/arch-omap/timers.h
> - *
> - * Originally from Linux kernel:
> - * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
> - *
> - */
>  /*
> - * (C) Copyright 2008
> - * Texas Instruments, <www.ti.com>
> - * Nishanth Menon <x0nishan@ti.com>
> - *
> - * Copyright (C) 2007 Texas Instruments, <www.ti.com>
> - * Copyright (C) 2007 Nokia Corporation.
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
>   *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
>   *
>   * This program is distributed in the hope that it will be useful,
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
> @@ -27,30 +12,11 @@
>   * GNU General Public License for more details.
>   *
>   */
> -#ifndef __ASM_ARCH_GPT_H
> -#define __ASM_ARCH_GPT_H
> -
> -/** General Purpose timer regs offsets (32 bit regs) */
> -#define TIDR			0x0      /* r */
> -#define TIOCP_CFG		0x10     /* rw */
> -#define TISTAT			0x14     /* r */
> -#define TISR			0x18     /* rw */
> -#define TIER			0x1C     /* rw */
> -#define TWER			0x20     /* rw */
> -#define TCLR			0x24     /* rw */
> -#define TCRR			0x28     /* rw */
> -#define TLDR			0x2C     /* rw */
> -#define TTGR			0x30     /* rw */
> -#define TWPS			0x34     /* r */
> -#define TMAR			0x38     /* rw */
> -#define TCAR1			0x3c     /* r */
> -#define TSICR			0x40     /* rw */
> -#define TCAR2			0x44     /* r */
> -/* Enable sys_clk NO-prescale /1 */
> -#define GPT_EN			((0 << 2) | (0x1 << 1) | (0x1 << 0))
> +#ifndef __OMAP_TIMERS_H_
> +#define __OMAP_TIMERS_H_
>  
> -/** Sync 32Khz Timer registers */
> -#define S32K_CR			(OMAP_32KTIMER_BASE + 0x10)
> -#define S32K_FREQUENCY		32768
> +#if defined(CONFIG_ARCH_OMAP3) || defined(CONFIG_ARCH_OMAP4)
> +#include <mach/omap3-timer.h>
> +#endif
>  
> -#endif /*__ASM_ARCH_GPT_H */
> +#endif /* __OMAP_TIMERS_H_ */
> -- 
> 1.7.10.4
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
