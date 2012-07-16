Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqfdn-0004X0-Ra
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:22:48 +0000
Date: Mon, 16 Jul 2012 09:22:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716072243.GY30009@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
 <1342206070-29698-12-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342206070-29698-12-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 11/18] ARM/Samsung: add generic lowlevel init
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 13, 2012 at 09:01:03PM +0200, Juergen Beisert wrote:
> Just a placeholder for some required low level routines
> ---
>  arch/arm/mach-samsung/Makefile           |    1 +
>  arch/arm/mach-samsung/lowlevel-s3c64xx.c |   14 ++++++++++++++
>  2 files changed, 15 insertions(+)
>  create mode 100644 arch/arm/mach-samsung/lowlevel-s3c64xx.c

Please just drop this one.

Sascha

> 
> diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
> index 091b600..ac34d86 100644
> --- a/arch/arm/mach-samsung/Makefile
> +++ b/arch/arm/mach-samsung/Makefile
> @@ -1,5 +1,6 @@
>  obj-y += s3c-timer.o generic.o
>  obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
> +obj-lowlevel-$(CONFIG_ARCH_S3C64xx) += lowlevel-s3c64x0.o
>  obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
>  obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
>  obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
> diff --git a/arch/arm/mach-samsung/lowlevel-s3c64xx.c b/arch/arm/mach-samsung/lowlevel-s3c64xx.c
> new file mode 100644
> index 0000000..b1ba719
> --- /dev/null
> +++ b/arch/arm/mach-samsung/lowlevel-s3c64xx.c
> @@ -0,0 +1,14 @@
> +/*
> + * Copyright (C) 2012 Juergen Beisert
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
