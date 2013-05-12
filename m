Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbTYg-0001j8-O8
 for barebox@lists.infradead.org; Sun, 12 May 2013 10:31:15 +0000
Date: Sun, 12 May 2013 12:30:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130512103052.GW32299@pengutronix.de>
References: <1368341819-19115-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368341819-19115-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] ARM: remove unused clkdev.h
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 12, 2013 at 10:56:59AM +0400, Antony Pavlov wrote:
> See also:
> 
>   commit eb84709192f1b616cd141594c34ddbc072c8d6ec
>   Author: Sascha Hauer <s.hauer@pengutronix.de>
>   Date:   Mon Mar 25 15:18:38 2013 +0100
> 
>       clk: remove unused __clk_[get|put]
> 
>       This is some unused code resulting from copying stuff from
>       the kernel. Remove it.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-tegra/include/mach/clkdev.h |    7 -------
>  arch/arm/mach-zynq/include/mach/clkdev.h  |    6 ------
>  2 files changed, 13 deletions(-)
>  delete mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
>  delete mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h
> 
> diff --git a/arch/arm/mach-tegra/include/mach/clkdev.h b/arch/arm/mach-tegra/include/mach/clkdev.h
> deleted file mode 100644
> index 04b37a8..0000000
> --- a/arch/arm/mach-tegra/include/mach/clkdev.h
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -#ifndef __ASM_MACH_CLKDEV_H
> -#define __ASM_MACH_CLKDEV_H
> -
> -#define __clk_get(clk) ({ 1; })
> -#define __clk_put(clk) do { } while (0)
> -
> -#endif
> diff --git a/arch/arm/mach-zynq/include/mach/clkdev.h b/arch/arm/mach-zynq/include/mach/clkdev.h
> deleted file mode 100644
> index 31f7035..0000000
> --- a/arch/arm/mach-zynq/include/mach/clkdev.h
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -#ifndef __ASM_MACH_CLKDEV_H
> -#define __ASM_MACH_CLKDEV_H
> -
> -#define __clk_get(clk) ({ 1; })
> -#define __clk_put(clk) do { } while (0)
> -#endif
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
