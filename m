Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc5UV-0002JE-4V
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 07:19:38 +0000
Date: Fri, 10 Feb 2017 08:19:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170210071913.wuy4le6cevkkic54@pengutronix.de>
References: <1486633003-34908-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1486633003-34908-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: phycore-rk3288: Use UART2 as debug output
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 09, 2017 at 10:36:41AM +0100, Wadim Egorov wrote:
> RK3288's UART2 is the default debug uart interface.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/phytec-som-rk3288/lowlevel.c | 11 +++++------
>  arch/arm/dts/rk3288-phycore-som.dts          |  2 +-
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
> index 7804a55..7649ef8 100644
> --- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
> @@ -30,14 +30,13 @@ ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
>  
>  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>  		struct rk3288_grf * const grf = (void *)RK3288_GRF_BASE;
> -		rk_clrsetreg(&grf->gpio4c_iomux,
> -			GPIO4C1_MASK << GPIO4C1_SHIFT |
> -			GPIO4C0_MASK << GPIO4C0_SHIFT,
> -			GPIO4C1_UART0BT_SOUT << GPIO4C1_SHIFT |
> -			GPIO4C0_UART0BT_SIN << GPIO4C0_SHIFT);
> +		rk_clrsetreg(&grf->gpio7ch_iomux,
> +			     GPIO7C7_MASK << GPIO7C7_SHIFT |
> +			     GPIO7C6_MASK << GPIO7C6_SHIFT,
> +			     GPIO7C7_UART2DBG_SOUT << GPIO7C7_SHIFT |
> +			     GPIO7C6_UART2DBG_SIN << GPIO7C6_SHIFT);
>  		INIT_LL();
>  	}
> -
>  	fdt = __dtb_rk3288_phycore_som_start - get_runtime_offset();
>  
>  	barebox_arm_entry(0x0, SZ_1G, fdt);
> diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
> index 5410bd1..dd74bcf 100644
> --- a/arch/arm/dts/rk3288-phycore-som.dts
> +++ b/arch/arm/dts/rk3288-phycore-som.dts
> @@ -44,7 +44,7 @@
>  	};
>  
>  	chosen {
> -		stdout-path = &uart0;
> +		stdout-path = &uart2;
>  
>  		environment-emmc {
>  			compatible = "barebox,environment";
> -- 
> 1.9.1
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
