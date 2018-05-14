Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fI8J3-0006m6-3k
 for barebox@lists.infradead.org; Mon, 14 May 2018 07:54:11 +0000
Date: Mon, 14 May 2018 09:53:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180514075352.2jjwt7ppeq5v6jpb@pengutronix.de>
References: <20180514052650.7778-1-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180514052650.7778-1-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX50: Replace expicit casts with IOMEM
To: Alexander Kurz <akurz@blala.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Mon, May 14, 2018 at 05:26:49AM +0000, Alexander Kurz wrote:
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/mach-imx/imx50.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
> index d6ff6dfc2..6d121eaf8 100644
> --- a/arch/arm/mach-imx/imx50.c
> +++ b/arch/arm/mach-imx/imx50.c
> @@ -83,7 +83,7 @@ int imx50_devices_init(void)
>  
>  void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
>  {
> -	void __iomem *ccm = (void __iomem *)MX50_CCM_BASE_ADDR;
> +	void __iomem *ccm = IOMEM(MX50_CCM_BASE_ADDR);
>  	u32 r;
>  
>  	imx5_init_lowlevel();
> @@ -113,11 +113,11 @@ void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
>  	writel(0x4, ccm + MX5_CCM_CCSR);
>  
>  	if (cpufreq_mhz == 400)
> -		imx5_setup_pll_400((void __iomem *)MX50_PLL1_BASE_ADDR);
> +		imx5_setup_pll_400(IOMEM(MX50_PLL1_BASE_ADDR));
>  	else
> -		imx5_setup_pll_800((void __iomem *)MX50_PLL1_BASE_ADDR);
> +		imx5_setup_pll_800(IOMEM(MX50_PLL1_BASE_ADDR));
>  
> -	imx5_setup_pll_216((void __iomem *)MX50_PLL3_BASE_ADDR);
> +	imx5_setup_pll_216(IOMEM(MX50_PLL3_BASE_ADDR));
>  
>  	/* Switch peripheral to PLL3 */
>  	writel(0x00015154, ccm + MX5_CCM_CBCMR);
> @@ -126,7 +126,7 @@ void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
>  	/* make sure change is effective */
>  	while (readl(ccm + MX5_CCM_CDHIPR));
>  
> -	imx5_setup_pll_400((void __iomem *)MX50_PLL2_BASE_ADDR);
> +	imx5_setup_pll_400(IOMEM(MX50_PLL2_BASE_ADDR));
>  
>  	/* Switch peripheral to PLL2 */
>  	r = 0x02800145 |
> -- 
> 2.11.0
> 
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
