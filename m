Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ntct1-0000Wy-62
	for barebox@lists.infradead.org; Mon, 22 Mar 2010 08:21:23 +0000
Date: Mon, 22 Mar 2010 09:21:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100322082121.GF2241@pengutronix.de>
References: <1269009955-18797-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1269009955-18797-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] i.MX25 : fix define name for clock frequency
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 19, 2010 at 03:45:55PM +0100, Eric Benard wrote:
> CONFIG_MX35_HCLK_FREQ -> CONFIG_MX25_HCLK_FREQ
> 
> Signed-off-by: Eric Benard <eric@eukrea.com>

Applied to -master modulo the changes in the not yet existing
board/eukrea_cpuimx25/config.h file.

Sascha

> ---
>  arch/arm/mach-imx/speed-imx25.c       |    4 ++--
>  board/eukrea_cpuimx25/config.h        |    2 ++
>  board/freescale-mx25-3-stack/config.h |    2 +-
>  3 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
> index beb7efe..a615017 100644
> --- a/arch/arm/mach-imx/speed-imx25.c
> +++ b/arch/arm/mach-imx/speed-imx25.c
> @@ -7,13 +7,13 @@
>  unsigned long imx_get_mpllclk(void)
>  {
>  	ulong mpctl = readl(IMX_CCM_BASE + CCM_MPCTL);
> -	return imx_decode_pll(mpctl, CONFIG_MX35_HCLK_FREQ);
> +	return imx_decode_pll(mpctl, CONFIG_MX25_HCLK_FREQ);
>  }
>  
>  unsigned long imx_get_upllclk(void)
>  {
>  	ulong ppctl = readl(IMX_CCM_BASE + CCM_UPCTL);
> -	return imx_decode_pll(ppctl, CONFIG_MX35_HCLK_FREQ);
> +	return imx_decode_pll(ppctl, CONFIG_MX25_HCLK_FREQ);
>  }
>  
>  unsigned long imx_get_armclk(void)
> diff --git a/board/eukrea_cpuimx25/config.h b/board/eukrea_cpuimx25/config.h
> index 460239d..982c406 100644
> --- a/board/eukrea_cpuimx25/config.h
> +++ b/board/eukrea_cpuimx25/config.h
> @@ -20,6 +20,8 @@
>  #ifndef __CONFIG_H
>  #define __CONFIG_H
>  
> +#define CONFIG_MX25_HCLK_FREQ	24000000
> +
>  #endif
>  
>  /* nothing to do here yet */
> diff --git a/board/freescale-mx25-3-stack/config.h b/board/freescale-mx25-3-stack/config.h
> index 0e3b175..f35e8a0 100644
> --- a/board/freescale-mx25-3-stack/config.h
> +++ b/board/freescale-mx25-3-stack/config.h
> @@ -24,7 +24,7 @@
>   * Definitions related to passing arguments to kernel.
>   */
>  
> -#define CONFIG_MX35_HCLK_FREQ	24000000
> +#define CONFIG_MX25_HCLK_FREQ	24000000
>  
>  #endif
>  
> -- 
> 1.6.3.3
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
