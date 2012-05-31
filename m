Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZzMw-000198-95
 for barebox@lists.infradead.org; Thu, 31 May 2012 07:00:27 +0000
Date: Thu, 31 May 2012 09:00:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120531070021.GO30400@pengutronix.de>
References: <1338376905-24331-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338376905-24331-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] i.MX51 clock: Added lp_apm clock support for
 frequency calculations.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, May 30, 2012 at 03:21:44PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/speed-imx51.c |   27 ++++++++++++++++++---------
>  1 files changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
> index 84f4892..b691d37 100644
> --- a/arch/arm/mach-imx/speed-imx51.c
> +++ b/arch/arm/mach-imx/speed-imx51.c
> @@ -24,6 +24,14 @@ static unsigned long fpm_get_rate(void)
>  	return ckil_get_rate() * 512;
>  }
>  
> +static unsigned long lp_apm_get_rate(void)
> +{
> +	if (ccm_readl(MX5_CCM_CCSR) & MX5_CCM_CCSR_LP_APM_SEL)
> +		return fpm_get_rate();
> +	else
> +		return osc_get_rate();
> +}
> +
>  static unsigned long pll_get_rate(void __iomem *pllbase)
>  {
>  	long mfi, mfn, mfd, pdf, ref_clk, mfn_abs;
> @@ -123,7 +131,7 @@ unsigned long imx_get_uartclk(void)
>  			pll1_main_get_rate,
>  			pll2_sw_get_rate,
>  			pll3_sw_get_rate,
> -			NULL);
> +			lp_apm_get_rate);
>  
>  	reg = ccm_readl(MX5_CCM_CSCDR1);
>  	prediv = ((reg & MX5_CCM_CSCDR1_UART_CLK_PRED_MASK) >>
> @@ -180,7 +188,7 @@ unsigned long imx_get_mmcclk(void)
>  			pll1_main_get_rate,
>  			pll2_sw_get_rate,
>  			pll3_sw_get_rate,
> -			NULL);
> +			lp_apm_get_rate);
>  
>  	reg = ccm_readl(MX5_CCM_CSCDR1);
>  	prediv = ((reg & MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK) >>
> @@ -193,11 +201,12 @@ unsigned long imx_get_mmcclk(void)
>  
>  void imx_dump_clocks(void)
>  {
> -	printf("pll1: %ld\n", pll1_main_get_rate());
> -	printf("pll2: %ld\n", pll2_sw_get_rate());
> -	printf("pll3: %ld\n", pll3_sw_get_rate());
> -	printf("uart: %ld\n", imx_get_uartclk());
> -	printf("ipg:  %ld\n", imx_get_ipgclk());
> -	printf("fec:  %ld\n", imx_get_fecclk());
> -	printf("gpt:  %ld\n", imx_get_gptclk());
> +	printf("pll1:   %ld\n", pll1_main_get_rate());
> +	printf("pll2:   %ld\n", pll2_sw_get_rate());
> +	printf("pll3:   %ld\n", pll3_sw_get_rate());
> +	printf("lp_apm: %ld\n", lp_apm_get_rate());
> +	printf("uart:   %ld\n", imx_get_uartclk());
> +	printf("ipg:    %ld\n", imx_get_ipgclk());
> +	printf("fec:    %ld\n", imx_get_fecclk());
> +	printf("gpt:    %ld\n", imx_get_gptclk());
>  }
> -- 
> 1.7.3.4
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
