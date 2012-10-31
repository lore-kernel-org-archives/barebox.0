Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTSrK-0004rl-Sx
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 07:37:07 +0000
Date: Wed, 31 Oct 2012 08:37:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121031073705.GJ1641@pengutronix.de>
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 1/3] arm: mxs: use timeouts in block reset routines
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 30, 2012 at 03:21:13PM +0100, Wolfram Sang wrote:
> These routines can fail, add support for that. Also, put in missing
> copyright headers.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-mxs/common.c |   39 +++++++++++++++++++++++++++++++++++----
>  1 file changed, 35 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-mxs/common.c b/arch/arm/mach-mxs/common.c
> index 3730633..122d883 100644
> --- a/arch/arm/mach-mxs/common.c
> +++ b/arch/arm/mach-mxs/common.c
> @@ -1,8 +1,26 @@
> +/*
> + * Freescale i.MXS common code
> + *
> + * Copyright (C) 2012 Wolfram Sang <w.sang@pengutronix.de>
> + *
> + * Based on code from LTIB:
> + * Copyright (C) 2010 Freescale Semiconductor, Inc.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
>  #include <common.h>
>  #include <io.h>
> +#include <errno.h>
> +#include <clock.h>
>  #include <mach/mxs.h>
>  #include <mach/imx-regs.h>
>  
> +#define	MXS_IP_RESET_TIMEOUT	(10 * MSECOND)
> +
>  #define	MXS_BLOCK_SFTRST				(1 << 31)
>  #define	MXS_BLOCK_CLKGATE				(1 << 30)
>  
> @@ -10,7 +28,9 @@ int mxs_reset_block(void __iomem *reg, int just_enable)
>  {
>  	/* Clear SFTRST */
>  	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
> -	mdelay(1);
> +
> +	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_SFTRST)))
> +		goto timeout;
>  
>  	/* Clear CLKGATE */
>  	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
> @@ -18,16 +38,27 @@ int mxs_reset_block(void __iomem *reg, int just_enable)
>  	if (!just_enable) {
>  		/* Set SFTRST */
>  		writel(MXS_BLOCK_SFTRST, reg + BIT_SET);
> -		mdelay(1);
> +
> +		/* Wait for CLKGATE being set */
> +		if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, readl(reg) & MXS_BLOCK_CLKGATE))
> +			goto timeout;
>  	}
>  
>  	/* Clear SFTRST */
>  	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
> -	mdelay(1);
> +
> +	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_SFTRST)))
> +		goto timeout;
>  
>  	/* Clear CLKGATE */
>  	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
> -	mdelay(1);
> +
> +	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_CLKGATE)))
> +		goto timeout;
>  
>  	return 0;
> +
> +timeout:
> +	printf("MXS: Timeout resetting block via register 0x%p\n", reg);
> +	return -ETIMEDOUT;
>  }
> -- 
> 1.7.10.4
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
