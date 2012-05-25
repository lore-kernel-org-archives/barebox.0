Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXoD6-0008F9-6n
 for barebox@lists.infradead.org; Fri, 25 May 2012 06:41:16 +0000
Date: Fri, 25 May 2012 08:41:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120525064114.GH30400@pengutronix.de>
References: <1337849069-1893-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337849069-1893-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] i.MX51: Raise frequency for SDHC by switch to PLL2 source
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Thu, May 24, 2012 at 12:44:29PM +0400, Alexander Shiyan wrote:
> Currently, both SDHC clock source is PLL3. We can raise clock
> for SDHC driver by change source from PLL3 to PLL2.
> Below, is debug ouputs with old and new settings.

As the kernel does the same change I assume this is fine. Applied.

Sascha

> 
> Detection (PLL3):
> set clock: wanted: 400000 got: 375000
> Operation (PLL3):
> set clock: wanted: 25000000 got: 18000000
> Operation SD4.0 (PLL3):
> set clock: wanted: 52000000 got: 27000000
> 
> Detection (PLL2):
> set clock: wanted: 400000 got: 399639
> Operation (PLL2):
> set clock: wanted: 25000000 got: 23750000
> Operation SD4.0 (PLL2):
> set clock: wanted: 52000000 got: 41562500
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/imx51.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index 25cc6da..53205a9 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -269,7 +269,7 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
>  	writel(0xffffffff, ccm + MX5_CCM_CCGR6);
>  
>  	/* Use PLL 2 for UART's, get 66.5MHz from it */
> -	writel(0xA5A2A020, ccm + MX5_CCM_CSCMR1);
> +	writel(0xA591A020, ccm + MX5_CCM_CSCMR1);
>  	writel(0x00C30321, ccm + MX5_CCM_CSCDR1);
>  
>  	/* make sure divider effective */
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
