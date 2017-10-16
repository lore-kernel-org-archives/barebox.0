Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3zwg-0005db-KJ
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:36:20 +0000
Date: Mon, 16 Oct 2017 09:35:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016073557.mskmoedqh4fkxy5y@pengutronix.de>
References: <20171012141313.27237-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171012141313.27237-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: imx6ull-evk: select ARCH_IMX6UL instead of
 ARCH_IMX6ULL
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 12, 2017 at 04:13:13PM +0200, Philipp Zabel wrote:
> There is no need for a separate ARCH_IMX6ULL Kconfig symbol, and the
> shared clock driver is only enabled with ARCH_IMX6UL.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

squashed into the commit adding the ARCH_IMX6ULL symbol.

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index dab19a33ec..1578875e95 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -162,10 +162,6 @@ config ARCH_IMX6UL
>  	bool
>  	select ARCH_IMX6
>  
> -config ARCH_IMX6ULL
> -	bool
> -	select ARCH_IMX6
> -
>  config ARCH_IMX7
>  	bool
>  	select CPU_V7
> @@ -420,7 +416,7 @@ config MACH_FREESCALE_MX7_SABRESD
>  
>  config MACH_NXP_IMX6ULL_EVK
>  	bool "NXP i.MX6ull EVK Board"
> -	select ARCH_IMX6ULL
> +	select ARCH_IMX6UL
>  
>  endif
>  
> -- 
> 2.11.0
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
