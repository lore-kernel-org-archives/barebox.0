Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7z3q-00023B-Cf
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 08:00:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1f7z3f-0006MM-0k
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 10:00:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1f7z3e-0001Uq-OZ
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 10:00:14 +0200
Date: Mon, 16 Apr 2018 10:00:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180416080014.fpl5mogcifb52r4w@pengutronix.de>
References: <20180411132654.10620-1-s.hauer@pengutronix.de>
 <20180411132654.10620-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180411132654.10620-5-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/4] clk: i.MX6: Fix enfc_sel for i.MX6dqp
To: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 11, 2018 at 03:26:54PM +0200, Sascha Hauer wrote:
> The plus SoC variants have some differences in the clock controller.
> For now fix the NAND controller clock. There are more differences
> that might be relevant, but for now are left for a future excercise.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx6.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
> index c48ab7f76a..7f1af12571 100644
> --- a/drivers/clk/imx/clk-imx6.c
> +++ b/drivers/clk/imx/clk-imx6.c
> @@ -59,6 +59,11 @@
>  static struct clk *clks[IMX6QDL_CLK_END];
>  static struct clk_onecell_data clk_data;
>  
> +static inline int cpu_is_plus(void)
> +{
> +	return cpu_is_mx6qp() || cpu_is_mx6dp();
> +}
> +
>  static const char *step_sels[] = {
>  	"osc",
>  	"pll2_pfd2_396m",
> @@ -109,6 +114,15 @@ static const char *enfc_sels[]	= {
>  	"pll2_pfd2_396m",
>  };
>  
> +static const char *enfc_sels_plus[] = {
> +	"pll2_pfd0_352m",
> +	"pll2_bus",
> +	"pll3_usb_otg",
> +	"pll2_pfd2_396m",
> +	"pll3_pfd3_454m",
> +	"dummy",
> +};
> +
>  static const char *eim_sels[] = {
>  	"axi",
>  	"pll3_usb_otg",
> @@ -404,7 +418,10 @@ static int imx6_ccm_probe(struct device_d *dev)
>  	clks[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
>  	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
>  	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
> -	clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
> +	if (cpu_is_plus())
> +		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
> +	else
> +		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels_plus,    ARRAY_SIZE(enfc_sels_plus));

The enfc_sels for plus and non plus version are swapped here. Fixed.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
