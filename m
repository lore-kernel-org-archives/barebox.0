Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erK6S-0007ck-SZ
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 09:02:18 +0000
Date: Thu, 1 Mar 2018 10:02:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180301090204.6xcfru5d3prdhapn@pengutronix.de>
References: <20180228180121.31539-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180228180121.31539-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH] ARM: dts: remove "delete" entry for deleted clocks
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Wed, Feb 28, 2018 at 07:01:21PM +0100, Andreas Schmidt wrote:
> After updete to v4.16-rc1 some clocks ware deleted from src dts.
> This patch remove "delete" entry for this clocks from
> am33xx-clocks-strip.dtsi too.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>

I should have read this mail *before* creating the same patch.

Sascha

> ---
>  arch/arm/dts/am33xx-clocks-strip.dtsi | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/arch/arm/dts/am33xx-clocks-strip.dtsi b/arch/arm/dts/am33xx-clocks-strip.dtsi
> index 831f1630f..92906deaf 100644
> --- a/arch/arm/dts/am33xx-clocks-strip.dtsi
> +++ b/arch/arm/dts/am33xx-clocks-strip.dtsi
> @@ -34,10 +34,8 @@
>  /delete-node/ &dpll_per_m2_ck;
>  /delete-node/ &dpll_per_m2_div4_wkupdm_ck;
>  /delete-node/ &dpll_per_m2_div4_ck;
> -/delete-node/ &cefuse_fck;
>  /delete-node/ &clk_24mhz;
>  /delete-node/ &clkdiv32k_ck;
> -/delete-node/ &clkdiv32k_ick;
>  /delete-node/ &l3_gclk;
>  /delete-node/ &pruss_ocp_gclk;
>  /delete-node/ &mmu_fck;
> @@ -59,21 +57,10 @@
>  /delete-node/ &l4ls_gclk;
>  /delete-node/ &sysclk_div_ck;
>  /delete-node/ &gpio0_dbclk_mux_ck;
> -/delete-node/ &gpio0_dbclk;
> -/delete-node/ &gpio1_dbclk;
> -/delete-node/ &gpio2_dbclk;
> -/delete-node/ &gpio3_dbclk;
>  /delete-node/ &lcd_gclk;
>  /delete-node/ &mmc_clk;
>  /delete-node/ &gfx_fclk_clksel_ck;
>  /delete-node/ &gfx_fck_div_ck;
>  /delete-node/ &sysclkout_pre_ck;
>  /delete-node/ &clkout2_div_ck;
> -/delete-node/ &dbg_sysclk_ck;
> -/delete-node/ &dbg_clka_ck;
> -/delete-node/ &stm_pmd_clock_mux_ck;
> -/delete-node/ &trace_pmd_clk_mux_ck;
> -/delete-node/ &stm_clk_div_ck;
> -/delete-node/ &trace_clk_div_ck;
>  /delete-node/ &clkout2_ck;
> -/delete-node/ &clk_24mhz_clkdm;
> -- 
> 2.14.1
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
