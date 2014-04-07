Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX3Af-0005n5-NF
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 06:36:43 +0000
Date: Mon, 7 Apr 2014 08:36:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140407063619.GH27055@pengutronix.de>
References: <1396698731-22184-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396698731-22184-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/5] clk: tegra20: convert to dt-binding defines
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sat, Apr 05, 2014 at 01:52:07PM +0200, Lucas Stach wrote:
> Allows to make relationship between DT and driver
> more explicit and avoids duplication.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks

Sascha

> ---
>  drivers/clk/tegra/clk-tegra20.c | 168 +++++++++++++++++++---------------------
>  1 file changed, 80 insertions(+), 88 deletions(-)
> 
> diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
> index cfb719f..ea39f46 100644
> --- a/drivers/clk/tegra/clk-tegra20.c
> +++ b/drivers/clk/tegra/clk-tegra20.c
> @@ -19,6 +19,7 @@
>  #include <common.h>
>  #include <init.h>
>  #include <io.h>
> +#include <dt-bindings/clock/tegra20-car.h>
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
>  #include <linux/err.h>
> @@ -29,23 +30,7 @@
>  
>  static void __iomem *car_base;
>  
> -enum tegra20_clks {
> -	cpu, ac97 = 3, rtc, timer, uarta, uartb, gpio, sdmmc2, i2s1 = 11, i2c1,
> -	ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
> -	gr3d, ide, disp2, disp1, host1x, vcp, cache2 = 31, mem, ahbdma, apbdma,
> -	kbc = 36, stat_mon, pmc, fuse, kfuse, sbc1, nor, spi, sbc2, xio, sbc3,
> -	dvc, dsi, mipi = 50, hdmi, csi, tvdac, i2c2, uartc, emc = 57, usb2,
> -	usb3, mpe, vde, bsea, bsev, speedo, uartd, uarte, i2c3, sbc4, sdmmc3,
> -	pex, owr, afi, csite, pcie_xclk, avpucq = 75, la, irama = 84, iramb,
> -	iramc, iramd, cram2, audio_2x, clk_d, csus = 92, cdev2, cdev1,
> -	vfir = 96, spdif_in, spdif_out, vi, vi_sensor, tvo, cve,
> -	osc, clk_32k, clk_m, sclk, cclk, hclk, pclk, blink, pll_a, pll_a_out0,
> -	pll_c, pll_c_out1, pll_d, pll_d_out0, pll_e, pll_m, pll_m_out1,
> -	pll_p, pll_p_out1, pll_p_out2, pll_p_out3, pll_p_out4, pll_u,
> -	pll_x, audio, pll_ref, twd, clk_max,
> -};
> -
> -static struct clk *clks[clk_max];
> +static struct clk *clks[TEGRA20_CLK_CLK_MAX];
>  static struct clk_onecell_data clk_data;
>  
>  static unsigned int get_pll_ref_div(void)
> @@ -58,11 +43,11 @@ static unsigned int get_pll_ref_div(void)
>  
>  static void tegra20_osc_clk_init(void)
>  {
> -	clks[clk_m] = clk_fixed("clk_m", tegra_get_osc_clock());
> -	clks[clk_32k] = clk_fixed("clk_32k", 32768);
> +	clks[TEGRA20_CLK_CLK_M] = clk_fixed("clk_m", tegra_get_osc_clock());
> +	clks[TEGRA20_CLK_CLK_32K] = clk_fixed("clk_32k", 32768);
>  
> -	clks[pll_ref] = clk_fixed_factor("pll_ref", "clk_m", 1,
> -					 get_pll_ref_div(), 0);
> +	clks[TEGRA20_CLK_PLL_REF] = clk_fixed_factor("pll_ref", "clk_m", 1,
> +						     get_pll_ref_div(), 0);
>  }
>  
>  /* PLL frequency tables */
> @@ -228,50 +213,52 @@ static struct tegra_clk_pll_params pll_u_params = {
>  static void tegra20_pll_init(void)
>  {
>  	/* PLLC */
> -	clks[pll_c] = tegra_clk_register_pll("pll_c", "pll_ref", car_base,
> -			0, 0, &pll_c_params, TEGRA_PLL_HAS_CPCON,
> +	clks[TEGRA20_CLK_PLL_C] = tegra_clk_register_pll("pll_c", "pll_ref",
> +			car_base, 0, 0, &pll_c_params, TEGRA_PLL_HAS_CPCON,
>  			pll_c_freq_table);
>  
> -	clks[pll_c_out1] = tegra_clk_register_pll_out("pll_c_out1", "pll_c",
> -			car_base + CRC_PLLC_OUT, 0, TEGRA_DIVIDER_ROUND_UP);
> +	clks[TEGRA20_CLK_PLL_C_OUT1] = tegra_clk_register_pll_out("pll_c_out1",
> +			"pll_c", car_base + CRC_PLLC_OUT, 0,
> +			TEGRA_DIVIDER_ROUND_UP);
>  
>  	/* PLLP */
> -	clks[pll_p] = tegra_clk_register_pll("pll_p", "pll_ref", car_base,
> -			0, 216000000, &pll_p_params, TEGRA_PLL_FIXED |
> +	clks[TEGRA20_CLK_PLL_P] = tegra_clk_register_pll("pll_p", "pll_ref",
> +			car_base, 0, 216000000, &pll_p_params, TEGRA_PLL_FIXED |
>  			TEGRA_PLL_HAS_CPCON, pll_p_freq_table);
>  
> -	clks[pll_p_out1] = tegra_clk_register_pll_out("pll_p_out1", "pll_p",
> -			car_base + CRC_PLLP_OUTA, 0,
> +	clks[TEGRA20_CLK_PLL_P_OUT1] = tegra_clk_register_pll_out("pll_p_out1",
> +			"pll_p", car_base + CRC_PLLP_OUTA, 0,
>  			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
>  
> -	clks[pll_p_out2] = tegra_clk_register_pll_out("pll_p_out2", "pll_p",
> -			car_base + CRC_PLLP_OUTA, 16,
> +	clks[TEGRA20_CLK_PLL_P_OUT2] = tegra_clk_register_pll_out("pll_p_out2",
> +			"pll_p", car_base + CRC_PLLP_OUTA, 16,
>  			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
>  
> -	clks[pll_p_out3] = tegra_clk_register_pll_out("pll_p_out3", "pll_p",
> -			car_base + CRC_PLLP_OUTB, 0,
> +	clks[TEGRA20_CLK_PLL_P_OUT3] = tegra_clk_register_pll_out("pll_p_out3",
> +			"pll_p", car_base + CRC_PLLP_OUTB, 0,
>  			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
>  
> -	clks[pll_p_out4] = tegra_clk_register_pll_out("pll_p_out4", "pll_p",
> -			car_base + CRC_PLLP_OUTB, 16,
> +	clks[TEGRA20_CLK_PLL_P_OUT4] = tegra_clk_register_pll_out("pll_p_out4",
> +			"pll_p", car_base + CRC_PLLP_OUTB, 16,
>  			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
>  
>  	/* PLLM */
> -	clks[pll_m] = tegra_clk_register_pll("pll_m", "pll_ref", car_base,
> -			0, 0, &pll_m_params, TEGRA_PLL_HAS_CPCON,
> +	clks[TEGRA20_CLK_PLL_M] = tegra_clk_register_pll("pll_m", "pll_ref",
> +			car_base, 0, 0, &pll_m_params, TEGRA_PLL_HAS_CPCON,
>  			pll_m_freq_table);
>  
> -	clks[pll_m_out1] = tegra_clk_register_pll_out("pll_m_out1", "pll_m",
> -			car_base + CRC_PLLM_OUT, 0, TEGRA_DIVIDER_ROUND_UP);
> +	clks[TEGRA20_CLK_PLL_M_OUT1] = tegra_clk_register_pll_out("pll_m_out1",
> +			"pll_m", car_base + CRC_PLLM_OUT, 0,
> +			TEGRA_DIVIDER_ROUND_UP);
>  
>  	/* PLLX */
> -	clks[pll_x] = tegra_clk_register_pll("pll_x", "pll_ref", car_base,
> -			0, 0, &pll_x_params, TEGRA_PLL_HAS_CPCON,
> +	clks[TEGRA20_CLK_PLL_X] = tegra_clk_register_pll("pll_x", "pll_ref",
> +			car_base, 0, 0, &pll_x_params, TEGRA_PLL_HAS_CPCON,
>  			pll_x_freq_table);
>  
>  	/* PLLU */
> -	clks[pll_u] = tegra_clk_register_pll("pll_u", "pll_ref", car_base,
> -			0, 0, &pll_u_params, TEGRA_PLLU |
> +	clks[TEGRA20_CLK_PLL_U] = tegra_clk_register_pll("pll_u", "pll_ref",
> +			car_base, 0, 0, &pll_u_params, TEGRA_PLLU |
>  			TEGRA_PLL_HAS_CPCON, pll_u_freq_table);
>  }
>  
> @@ -280,55 +267,60 @@ static const char *mux_pllpcm_clkm[] = {"pll_p", "pll_c", "pll_m", "clk_m"};
>  static void tegra20_periph_init(void)
>  {
>  	/* peripheral clocks without a divider */
> -	clks[uarta] = tegra_clk_register_periph_nodiv("uarta", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_UARTA, uarta, TEGRA_PERIPH_ON_APB);
> -	clks[uartb] = tegra_clk_register_periph_nodiv("uartb", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_UARTB, uartb, TEGRA_PERIPH_ON_APB);
> -	clks[uartc] = tegra_clk_register_periph_nodiv("uartc", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_UARTC, uartc, TEGRA_PERIPH_ON_APB);
> -	clks[uartd] = tegra_clk_register_periph_nodiv("uartd", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_UARTD, uartd, TEGRA_PERIPH_ON_APB);
> -	clks[uarte] = tegra_clk_register_periph_nodiv("uarte", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_UARTE, uarte, TEGRA_PERIPH_ON_APB);
> +	clks[TEGRA20_CLK_UARTA] = tegra_clk_register_periph_nodiv("uarta",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_UARTA, TEGRA20_CLK_UARTA,
> +			TEGRA_PERIPH_ON_APB);
> +	clks[TEGRA20_CLK_UARTB] = tegra_clk_register_periph_nodiv("uartb",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_UARTB, 7,
> +			TEGRA_PERIPH_ON_APB);
> +	clks[TEGRA20_CLK_UARTC] = tegra_clk_register_periph_nodiv("uartc",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_UARTC, TEGRA20_CLK_UARTC,
> +			TEGRA_PERIPH_ON_APB);
> +	clks[TEGRA20_CLK_UARTD] = tegra_clk_register_periph_nodiv("uartd",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_UARTD, TEGRA20_CLK_UARTD,
> +			TEGRA_PERIPH_ON_APB);
> +	clks[TEGRA20_CLK_UARTE] = tegra_clk_register_periph_nodiv("uarte",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_UARTE, TEGRA20_CLK_UARTE,
> +			TEGRA_PERIPH_ON_APB);
>  
>  	/* peripheral clocks with a divider */
> -	clks[sdmmc1] = tegra_clk_register_periph("sdmmc1", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_SDMMC1, sdmmc1, 1);
> -	clks[sdmmc2] = tegra_clk_register_periph("sdmmc2", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_SDMMC2, sdmmc2, 1);
> -	clks[sdmmc3] = tegra_clk_register_periph("sdmmc3", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_SDMMC3, sdmmc3, 1);
> -	clks[sdmmc4] = tegra_clk_register_periph("sdmmc4", mux_pllpcm_clkm,
> -			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> -			CRC_CLK_SOURCE_SDMMC4, sdmmc4, 1);
> +	clks[TEGRA20_CLK_SDMMC1] = tegra_clk_register_periph("sdmmc1",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_SDMMC1, TEGRA20_CLK_SDMMC1, 1);
> +	clks[TEGRA20_CLK_SDMMC2] = tegra_clk_register_periph("sdmmc2",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_SDMMC2, TEGRA20_CLK_SDMMC2, 1);
> +	clks[TEGRA20_CLK_SDMMC3] = tegra_clk_register_periph("sdmmc3",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_SDMMC3, TEGRA20_CLK_SDMMC3, 1);
> +	clks[TEGRA20_CLK_SDMMC4] = tegra_clk_register_periph("sdmmc4",
> +			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
> +			CRC_CLK_SOURCE_SDMMC4, TEGRA20_CLK_SDMMC4, 1);
>  }
>  
>  static struct tegra_clk_init_table init_table[] = {
> -	{pll_p,		clk_max,	216000000,	1},
> -	{pll_p_out1,	clk_max,	28800000,	1},
> -	{pll_p_out2,	clk_max,	48000000,	1},
> -	{pll_p_out3,	clk_max,	72000000,	1},
> -	{pll_p_out4,	clk_max,	24000000,	1},
> -	{pll_c,		clk_max,	600000000,	1},
> -	{pll_c_out1,	clk_max,	120000000,	1},
> -	{uarta,		pll_p,		0,		1},
> -	{uartb,		pll_p,		0,		1},
> -	{uartc,		pll_p,		0,		1},
> -	{uartd,		pll_p,		0,		1},
> -	{uarte,		pll_p,		0,		1},
> -	{sdmmc1,	pll_p,		48000000,	0},
> -	{sdmmc2,	pll_p,		48000000,	0},
> -	{sdmmc3,	pll_p,		48000000,	0},
> -	{sdmmc4,	pll_p,		48000000,	0},
> -	{clk_max,	clk_max,	0,		0}, /* sentinel */
> +	{TEGRA20_CLK_PLL_P,		TEGRA20_CLK_CLK_MAX,	216000000,	1},
> +	{TEGRA20_CLK_PLL_P_OUT1,	TEGRA20_CLK_CLK_MAX,	28800000,	1},
> +	{TEGRA20_CLK_PLL_P_OUT2,	TEGRA20_CLK_CLK_MAX,	48000000,	1},
> +	{TEGRA20_CLK_PLL_P_OUT3,	TEGRA20_CLK_CLK_MAX,	72000000,	1},
> +	{TEGRA20_CLK_PLL_P_OUT4,	TEGRA20_CLK_CLK_MAX,	24000000,	1},
> +	{TEGRA20_CLK_PLL_C,		TEGRA20_CLK_CLK_MAX,	600000000,	1},
> +	{TEGRA20_CLK_PLL_C_OUT1,	TEGRA20_CLK_CLK_MAX,	120000000,	1},
> +	{TEGRA20_CLK_UARTA,		TEGRA20_CLK_PLL_P,	0,		1},
> +	{TEGRA20_CLK_UARTB,		TEGRA20_CLK_PLL_P,	0,		1},
> +	{TEGRA20_CLK_UARTC,		TEGRA20_CLK_PLL_P,	0,		1},
> +	{TEGRA20_CLK_UARTD,		TEGRA20_CLK_PLL_P,	0,		1},
> +	{TEGRA20_CLK_UARTE,		TEGRA20_CLK_PLL_P,	0,		1},
> +	{TEGRA20_CLK_SDMMC1,		TEGRA20_CLK_PLL_P,	48000000,	0},
> +	{TEGRA20_CLK_SDMMC2,		TEGRA20_CLK_PLL_P,	48000000,	0},
> +	{TEGRA20_CLK_SDMMC3,		TEGRA20_CLK_PLL_P,	48000000,	0},
> +	{TEGRA20_CLK_SDMMC4,		TEGRA20_CLK_PLL_P,	48000000,	0},
> +	{TEGRA20_CLK_CLK_MAX,		TEGRA20_CLK_CLK_MAX,	0,	0}, /* sentinel */
>  };
>  
>  static int tegra20_car_probe(struct device_d *dev)
> @@ -341,7 +333,7 @@ static int tegra20_car_probe(struct device_d *dev)
>  	tegra20_pll_init();
>  	tegra20_periph_init();
>  
> -	tegra_init_from_table(init_table, clks, clk_max);
> +	tegra_init_from_table(init_table, clks, TEGRA20_CLK_CLK_MAX);
>  
>  	/* speed up system bus */
>  	writel(CRC_SCLK_BURST_POLICY_SYS_STATE_RUN <<
> -- 
> 1.9.0
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
