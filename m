Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USiGK-0004p6-Vl
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 06:24:05 +0000
Date: Thu, 18 Apr 2013 08:24:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418062402.GD1906@pengutronix.de>
References: <1366204631-2792-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366204631-2792-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] am33xx-clock: configure PLLs based on oscillator frequency
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 03:17:11PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

This patch deserves a bit more description why it does what it does
and also that it includes no functional change.

> ---
>  arch/arm/mach-omap/include/mach/am33xx-clock.h | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> index 39c107f..f496756 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> @@ -31,12 +31,12 @@
>  #define MPUPLL_M_600	600	/* 125 * n */
>  #define MPUPLL_M_720	720	/* 125 * n */
>  
> -#define MPUPLL_N	23	/* (n -1 ) */
> +#define MPUPLL_N	(OSC-1)

Add whitespaces left and right to operators please.


>  #define MPUPLL_M2	1
>  
>  /* Core PLL Fdll = 1 GHZ, */
>  #define COREPLL_M	1000	/* 125 * n */
> -#define COREPLL_N	23	/* (n -1 ) */
> +#define COREPLL_N	(OSC-1)
>  
>  #define COREPLL_M4	10	/* CORE_CLKOUTM4 = 200 MHZ */
>  #define COREPLL_M5	8	/* CORE_CLKOUTM5 = 250 MHZ */
> @@ -48,19 +48,14 @@
>   * For clkout = 192 MHZ, Fdll = 960 MHZ, divider values are given below
>   */
>  #define PERPLL_M	960
> -#define PERPLL_N	23
> +#define PERPLL_N	(OSC-1)
>  #define PERPLL_M2	5
>  
> -/* DDR Freq is 166 MHZ for now*/
> +/* DDR Freq is 266 MHZ for now*/
>  /* Set Fdll = 400 MHZ , Fdll = M * 2 * CLKINP/ N + 1; clkout = Fdll /(2 * M2) */
>  //#if	(CONFIG_AM335X_EVM_IS_13x13 == 1)
> -#if 0
> -#define DDRPLL_M	166	/* M/N + 1 = 25/3 */
> -#else
>  #define DDRPLL_M	266
> -#endif

Please make this a separate patch.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
