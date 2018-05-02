Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDol4-0005pb-K8
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:13:12 +0000
Date: Wed, 2 May 2018 12:12:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502101258.erognryot5fs3qve@pengutronix.de>
References: <20180425094502.GA27294@ohlf-Precision-7720>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180425094502.GA27294@ohlf-Precision-7720>
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
Subject: Re: [PATCH] arm: imx6: don't reset PFDs that are used by periph_clk
To: Marc Ohlf <ohlf@mkt-sys.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 25, 2018 at 11:45:06AM +0200, Marc Ohlf wrote:
> Check if PLL2 PFD0 or PLL2 PFD2 is selected as clock source in
> register CCM CBCMR->pre_periph_clk_sel or CCM CBCMR->pre_periph2_clk.
> Don't reset the used PFDs to avoid system hang.
> 
> ported from https://github.com/Freescale/u-boot-fslc/
> commit/9293d7fd502ce29302fadb8b4ccb9231ec0bcc66
> 
> Signed-off-by: Marc Ohlf <ohlf@mkt-sys.de>
> ---
>  arch/arm/mach-imx/imx6.c | 58 +++++++++++++++++++++++++++++-------------------
>  1 file changed, 35 insertions(+), 23 deletions(-)

Appplied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 14a1cba..2b55a3c 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -16,6 +16,7 @@
>  #include <io.h>
>  #include <linux/sizes.h>
>  #include <mfd/imx6q-iomuxc-gpr.h>
> +#include <mach/clock-imx6.h>
>  #include <mach/imx6.h>
>  #include <mach/generic.h>
>  #include <mach/revision.h>
> @@ -44,6 +45,11 @@ static void imx6_init_lowlevel(void)
>  	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
>  	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
>  	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
> +	uint32_t val_480;
> +	uint32_t val_528;
> +	uint32_t periph_sel_1;
> +	uint32_t periph_sel_2;
> +	uint32_t reg;
>  
>  	/*
>  	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> @@ -68,32 +74,38 @@ static void imx6_init_lowlevel(void)
>  	/* Due to hardware limitation, on MX6Q we need to gate/ungate all PFDs
>  	 * to make sure PFD is working right, otherwise, PFDs may
>  	 * not output clock after reset, MX6DL and MX6SL have added 396M pfd
> -	 * workaround in ROM code, as bus clock need it
> +	 * workaround in ROM code, as bus clock need it.
> +	 * Don't reset PLL2 PFD0 / PLL2 PFD2 if is's used by periph_clk.
>  	 */
>  	if (is_imx6q || is_imx6d) {
> -		writel(BM_ANADIG_PFD_480_PFD3_CLKGATE |
> -		       BM_ANADIG_PFD_480_PFD2_CLKGATE |
> -		       BM_ANADIG_PFD_480_PFD1_CLKGATE |
> -		       BM_ANADIG_PFD_480_PFD0_CLKGATE,
> -		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_SET);
> -		writel(BM_ANADIG_PFD_528_PFD3_CLKGATE |
> -		       BM_ANADIG_PFD_528_PFD2_CLKGATE |
> -		       BM_ANADIG_PFD_528_PFD1_CLKGATE |
> -		       BM_ANADIG_PFD_528_PFD0_CLKGATE,
> -		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_SET);
> -
> -		writel(BM_ANADIG_PFD_480_PFD3_CLKGATE |
> -		       BM_ANADIG_PFD_480_PFD2_CLKGATE |
> -		       BM_ANADIG_PFD_480_PFD1_CLKGATE |
> -		       BM_ANADIG_PFD_480_PFD0_CLKGATE,
> -		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_CLR);
> -		writel(BM_ANADIG_PFD_528_PFD3_CLKGATE |
> -		       BM_ANADIG_PFD_528_PFD2_CLKGATE |
> -		       BM_ANADIG_PFD_528_PFD1_CLKGATE |
> -		       BM_ANADIG_PFD_528_PFD0_CLKGATE,
> -		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
> -	}
> +		val_480 = BM_ANADIG_PFD_480_PFD3_CLKGATE |
> +			   BM_ANADIG_PFD_480_PFD2_CLKGATE |
> +			   BM_ANADIG_PFD_480_PFD1_CLKGATE |
> +			   BM_ANADIG_PFD_480_PFD0_CLKGATE;
> +
> +		val_528 = BM_ANADIG_PFD_528_PFD3_CLKGATE |
> +			   BM_ANADIG_PFD_528_PFD1_CLKGATE;
> +
> +		reg = readl(MXC_CCM_CBCMR);
> +		periph_sel_1 = (reg & MXC_CCM_CBCMR_PRE_PERIPH_CLK_SEL_MASK)
> +			>> MXC_CCM_CBCMR_PRE_PERIPH_CLK_SEL_OFFSET;
> +
> +		periph_sel_2 = (reg & MXC_CCM_CBCMR_PRE_PERIPH2_CLK_SEL_MASK)
> +			>> MXC_CCM_CBCMR_PRE_PERIPH2_CLK_SEL_OFFSET;
>  
> +		if ((periph_sel_1 != 0x2) && (periph_sel_2 != 0x2))
> +			val_528 |= BM_ANADIG_PFD_528_PFD0_CLKGATE;
> +
> +		if ((periph_sel_1 != 0x1) && (periph_sel_2 != 0x1)
> +		    && (periph_sel_1 != 0x3) && (periph_sel_2 != 0x3))
> +			val_528 |= BM_ANADIG_PFD_528_PFD2_CLKGATE;
> +
> +		writel(val_480, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_SET);
> +		writel(val_528, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_SET);
> +
> +		writel(val_480, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_CLR);
> +		writel(val_528, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
> +	}
>  }
>  
>  static void imx6_setup_ipu_qos(void)
> -- 
> 2.7.4
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
