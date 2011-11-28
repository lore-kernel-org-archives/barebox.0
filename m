Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwJI-0005pS-72
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:11:33 +0000
Date: Mon, 28 Nov 2011 09:11:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111128081124.GP27267@pengutronix.de>
References: <1322338981-30978-1-git-send-email-jbe@pengutronix.de>
 <1322338981-30978-10-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322338981-30978-10-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 09/14] MACH SAMSUNG/S3C: Rename register macros to
 reflect the MACH they are valid for
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 26, 2011 at 09:22:56PM +0100, Juergen Beisert wrote:
> Most members of the S3Cxxxx family share similar timer units. But they are
> not really register compatible. To reflect this, use a separate name space for
> the S3C family.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/mach-samsung/include/mach/s3c-iomap.h |   20 +------------
>  arch/arm/mach-samsung/include/mach/s3c-timer.h |   36 ++++++++++++++++++++++++
>  arch/arm/mach-samsung/s3c-timer.c              |   17 ++++++-----
>  3 files changed, 46 insertions(+), 27 deletions(-)
>  create mode 100644 arch/arm/mach-samsung/include/mach/s3c-timer.h
> 

[...]

> diff --git a/arch/arm/mach-samsung/include/mach/s3c-timer.h b/arch/arm/mach-samsung/include/mach/s3c-timer.h
> new file mode 100644
> index 0000000..5201fc4
> --- /dev/null
> +++ b/arch/arm/mach-samsung/include/mach/s3c-timer.h
> @@ -0,0 +1,36 @@
> +/*
> + * Copyright (C) 2011 Juergen Beisert, Pengutronix
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
> + */
> +
> +#ifndef __MACH_S3C_TIMER_H
> +# define __MACH_S3C_TIMER_H
> +
> +#define S3C_TCFG0 (S3C_TIMER_BASE + 0x00)
> +#define S3C_TCFG1 (S3C_TIMER_BASE + 0x04)
> +#define S3C_TCON (S3C_TIMER_BASE + 0x08)
> +#define S3C_TCNTB0 (S3C_TIMER_BASE + 0x0c)
> +#define S3C_TCMPB0 (S3C_TIMER_BASE + 0x10)
> +#define S3C_TCNTO0 (S3C_TIMER_BASE + 0x14)
> +#define S3C_TCNTB1 (S3C_TIMER_BASE + 0x18)
> +#define S3C_TCMPB1 (S3C_TIMER_BASE + 0x1c)
> +#define S3C_TCNTO1 (S3C_TIMER_BASE + 0x20)
> +#define S3C_TCNTB2 (S3C_TIMER_BASE + 0x24)
> +#define S3C_TCMPB2 (S3C_TIMER_BASE + 0x28)
> +#define S3C_TCNTO2 (S3C_TIMER_BASE + 0x2c)
> +#define S3C_TCNTB3 (S3C_TIMER_BASE + 0x30)
> +#define S3C_TCMPB3 (S3C_TIMER_BASE + 0x34)
> +#define S3C_TCNTO3 (S3C_TIMER_BASE + 0x38)
> +#define S3C_TCNTB4 (S3C_TIMER_BASE + 0x3c)
> +#define S3C_TCNTO4 (S3C_TIMER_BASE + 0x40)

You should rather put these into s3c-timer.c directly.

> +
> +#endif /* __MACH_S3C_TIMER_H */
> diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
> index 2b0b38a..a3ce4a2 100644
> --- a/arch/arm/mach-samsung/s3c-timer.c
> +++ b/arch/arm/mach-samsung/s3c-timer.c
> @@ -20,11 +20,12 @@
>  #include <io.h>
>  #include <mach/s3c-iomap.h>
>  #include <mach/s3c-generic.h>
> +#include <mach/s3c-timer.h>
>  
>  static uint64_t s3c24xx_clocksource_read(void)
>  {
>  	/* note: its a down counter */
> -	return 0xFFFF - readw(TCNTO4);
> +	return 0xFFFF - readw(S3C_TCNTO4);
>  }
>  
>  static struct clocksource cs = {
> @@ -37,15 +38,15 @@ static int clocksource_init(void)
>  {
>  	uint32_t p_clk = s3c_get_pclk();
>  
> -	writel(0x00000000, TCON);	/* stop all timers */
> -	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
> -	writel(0x00030000, TCFG1);	/* /16 */
> +	writel(0x00000000, S3C_TCON);	/* stop all timers */
> +	writel(0x00ffffff, S3C_TCFG0);	/* PCLK / (255 + 1) for timer 4 */
> +	writel(0x00030000, S3C_TCFG1);	/* /16 */
>  
> -	writew(0xffff, TCNTB4);		/* reload value is TOP */
> +	writew(0xffff, S3C_TCNTB4);	/* reload value is TOP */
>  
> -	writel(0x00600000, TCON);	/* force a first reload */
> -	writel(0x00400000, TCON);
> -	writel(0x00500000, TCON);	/* enable timer 4 with auto reload */
> +	writel(0x00600000, S3C_TCON);	/* force a first reload */
> +	writel(0x00400000, S3C_TCON);
> +	writel(0x00500000, S3C_TCON);	/* enable timer 4 with auto reload */
>  
>  	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
>  	init_clock(&cs);
> -- 
> 1.7.7.1
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
