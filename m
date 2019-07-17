Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnRq-0007lB-Uv
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 17:10:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hnnRp-0002Ko-ON
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 19:10:33 +0200
References: <20190717170604.23732-1-a.fatoum@pengutronix.de>
 <20190717170604.23732-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <300da74e-fa20-f762-0203-e9351089b636@pengutronix.de>
Date: Wed, 17 Jul 2019 19:10:33 +0200
MIME-Version: 1.0
In-Reply-To: <20190717170604.23732-2-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v3 1/6] clk: imx6: fix use of cpu_is_mx6* before they are
 initialized
To: barebox@lists.infradead.org

On 17/7/19 19:05, Ahmad Fatoum wrote:
> The cpu_is_mx6* macros rely on __imx_cpu_type, which is initialized
> dependent on device tree compatible at "postcore" init-level imx_init.
> 
> The imx6q-ccm driver, which uses the cpu_is_mx6* macros, is registered
> at "core" init-level, however. This results on the macro always returning
> false.
> 
> Fix this by using the cpu_mx6_is_mx6* family of macros instead.
> These already require that that CPU is a MX6, which is safe because the
> the driver only matches against "fsl,imx6q-ccm".
> 
> Only exception is the video5 pll reparenting. Here we will just
> maintain the old behavior as we will drop the if clause in a following
> commit anyway.
> 
> Reported-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

While it's clearly the right thing to do, I have no affected boards
(Dual or Plus) sitting on my desk, so the change is untested.

A Tested-by would be appreciated, thanks!

> ---
>  drivers/clk/imx/clk-imx6.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
> index 35b995dae24e..0b71a1322466 100644
> --- a/drivers/clk/imx/clk-imx6.c
> +++ b/drivers/clk/imx/clk-imx6.c
> @@ -59,9 +59,9 @@
>  static struct clk *clks[IMX6QDL_CLK_END];
>  static struct clk_onecell_data clk_data;
>  
> -static inline int cpu_is_plus(void)
> +static inline int cpu_mx6_is_plus(void)
>  {
> -	return cpu_is_mx6qp() || cpu_is_mx6dp();
> +	return cpu_mx6_is_mx6qp() || cpu_mx6_is_mx6dp();
>  }
>  
>  static const char *step_sels[] = {
> @@ -341,8 +341,7 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
>  	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
>  	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
>  
> -	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
> -	    cpu_is_mx6dl()) {
> +	if (imx_silicon_revision() != IMX_CHIP_REV_1_0) {
>  		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
>  		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
>  	}
> @@ -418,7 +417,7 @@ static int imx6_ccm_probe(struct device_d *dev)
>  	clks[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
>  	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
>  	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
> -	if (cpu_is_plus())
> +	if (cpu_mx6_is_plus())
>  		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels_plus,    ARRAY_SIZE(enfc_sels_plus));
>  	else
>  		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
> @@ -469,7 +468,7 @@ static int imx6_ccm_probe(struct device_d *dev)
>  	clks[IMX6QDL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_root",        base + 0x6c, 2);
>  	clks[IMX6QDL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_root",        base + 0x6c, 4);
>  	clks[IMX6QDL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_root",        base + 0x6c, 6);
> -	if (cpu_is_mx6dl())
> +	if (cpu_mx6_is_mx6dl())
>  		clks[IMX6DL_CLK_I2C4]  = imx_clk_gate2("i2c4",          "ipg_per",           base + 0x6c, 8);
>  	else
>  		clks[IMX6Q_CLK_ECSPI5] = imx_clk_gate2("ecspi5",        "ecspi_root",        base + 0x6c, 8);
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
