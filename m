Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StvIR-0006vR-W6
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 06:42:16 +0000
Date: Wed, 25 Jul 2012 08:42:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120725064209.GJ30009@pengutronix.de>
References: <500EA810.3050902@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <500EA810.3050902@kiwigrid.com>
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
Subject: Re: [PATCH] ARM i.MX53: notify clocksource about changing clock
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 24, 2012 at 03:50:08PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> This fix a clock inaccuracy in get_time_ns (used by sleep, time, etc).
> 
> At i.MX53 power-on GPT clock is typically 55500000 Hz, and it will be used
> to calc the clock multiplier. After call imx53_init_lowlevel() GPT
> clock will
> changed (e.g. to 66666666 Hz), but multiplier not. To fix this behavior call
> clock_notifier_call_chain() after changing clock in imx53_init_lowlevel().
> 
> Signed-off-by: Wjatscheslaw Stoljarski
> <wjatscheslaw.stoljarski@kiwigrid.com>

Your patch has some formatting problems, for example the line above is
broken into two. Please consider using git send-email next time.

Applied manually. Thanks

 Sascha

> ---
>  arch/arm/mach-imx/imx53.c |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
> index e20b60a..3359819 100644
> --- a/arch/arm/mach-imx/imx53.c
> +++ b/arch/arm/mach-imx/imx53.c
> @@ -18,6 +18,7 @@
>  #include <init.h>
>  #include <common.h>
>  #include <io.h>
> +#include <notifier.h>
>  #include <sizes.h>
>  #include <mach/imx5.h>
>  #include <mach/imx-regs.h>
> @@ -211,4 +212,6 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
>  	writel(0xffffffff, ccm + MX53_CCM_CCGR7);
>   	writel(0, ccm + MX5_CCM_CCDR);
> +
> +	clock_notifier_call_chain();
>  }
> -- 
> 1.7.9.5
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
