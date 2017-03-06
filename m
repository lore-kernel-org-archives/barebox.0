Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ckmpO-00034K-EX
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 07:13:10 +0000
Date: Mon, 6 Mar 2017 08:12:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170306071244.2aauk4esduxu2yop@pengutronix.de>
References: <20170303094749.29319-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170303094749.29319-1-robin@protonic.nl>
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
Subject: Re: [PATCH] clk: imx: clk-imx6ul: Use anatop_base pointer for
 consistency
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org

On Fri, Mar 03, 2017 at 10:47:49AM +0100, Robin van der Gracht wrote:
> The anatop_base pointer was unused, but instead of removing it, assign
> and use it for readability like clk-imx6 and clk-imx6sx do.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  drivers/clk/imx/clk-imx6ul.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
> index 0ca0652..f28660d 100644
> --- a/drivers/clk/imx/clk-imx6ul.c
> +++ b/drivers/clk/imx/clk-imx6ul.c
> @@ -91,6 +91,7 @@ static int imx6_ccm_probe(struct device_d *dev)
>  	int i;
>  	struct device_node *ccm_node = dev->device_node;
>  
> +	anatop_base = IOMEM(MX6_ANATOP_BASE_ADDR);
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
> @@ -100,8 +101,6 @@ static int imx6_ccm_probe(struct device_d *dev)
>  
>  	clks[IMX6UL_CLK_DUMMY] = clk_fixed("dummy", 0);
>  
> -	base = IOMEM(MX6_ANATOP_BASE_ADDR);
> -
>  	clks[IMX6UL_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
>  	clks[IMX6UL_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
>  	clks[IMX6UL_PLL3_BYPASS_SRC] = imx_clk_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
> -- 
> 2.9.3
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
