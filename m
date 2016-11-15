Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6YkE-00007D-Vi
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 08:05:32 +0000
Date: Tue, 15 Nov 2016 09:05:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161115080508.kperau6sb5el4uh7@pengutronix.de>
References: <1479116835-15439-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1479116835-15439-1-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH] pcm049: Add 1 GByte RAM with DUAL DIE Single Rank
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 14, 2016 at 10:47:15AM +0100, Maik Otto wrote:
> tested with Micron MT42L128M64D2LL-25WT and MT42L128M64D2LL-25WT
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---
>  arch/arm/boards/phytec-phycore-omap4460/lowlevel.c |   32 +++++++++++++++++++-
>  1 files changed, 31 insertions(+), 1 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
> index c082594..71ab793 100644
> --- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
> @@ -30,6 +30,13 @@
>  #include <asm/barebox-arm-head.h>
>  
>  #define TPS62361_VSEL0_GPIO    182
> +#define LPDDR2_2G              0x5
> +#define LPDDR2_4G              0x6
> +#define LPDDR2_DENSITY_MASK		0x3C
> +#define LPDDR2_DENSITY_SHIFT		2
> +#define EMIF_SDRAM_CONFIG		0x0008
> +#define EMIF_LPDDR2_MODE_REG_CONFIG	0x0050
> +#define EMIF_LPDDR2_MODE_REG_DATA	0x0040
>  
>  void set_muxconf_regs(void);
>  
> @@ -61,8 +68,23 @@ static const struct ddr_regs ddr_regs_mt42L128M64_25_400_mhz = {
>  	.mr2		= 0x4
>  };
>  
> +static const struct ddr_regs ddr_regs_mt42L128M64D2LL_25_400_mhz = {
> +	.tim1           = 0x10EB0662,
> +	.tim2           = 0x205715D2,
> +	.tim3           = 0x00B1C53F,
> +	.phy_ctrl_1     = 0x849FF409,
> +	.ref_ctrl       = 0x00000618,
> +	.config_init    = 0x80001AB2,
> +	.config_final   = 0x80001AB2,
> +	.zq_config      = 0x500B3214,
> +	.mr1            = 0x83,
> +	.mr2            = 0x4
> +};
> +
>  static void noinline pcm049_init_lowlevel(void)
>  {
> +	unsigned int density;
> +
>  	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
>  	struct dpll_param mpu44xx = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
>  	struct dpll_param mpu4460 = OMAP4_MPU_DPLL_PARAM_19M2_MPU920;
> @@ -75,9 +97,17 @@ static void noinline pcm049_init_lowlevel(void)
>  	set_muxconf_regs();
>  
>  #ifdef CONFIG_1024MB_DDR2RAM
> +	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
> +	writel(EMIF_SDRAM_CONFIG, OMAP44XX_EMIF1_BASE +
> +			EMIF_LPDDR2_MODE_REG_CONFIG);
> +	density = (readl(OMAP44XX_EMIF1_BASE + EMIF_LPDDR2_MODE_REG_DATA) &
> +			LPDDR2_DENSITY_MASK) >> LPDDR2_DENSITY_SHIFT;
> +	if (density == LPDDR2_2G)
>  		omap4_ddr_init(&ddr_regs_mt42L128M64_25_400_mhz, &core);
> +	else if (density == LPDDR2_4G)
> +		omap4_ddr_init(&ddr_regs_mt42L128M64D2LL_25_400_mhz, &core);
>  #else
> -		omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
> +	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
>  #endif
>  
>  	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
> -- 
> 1.7.0.4
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
