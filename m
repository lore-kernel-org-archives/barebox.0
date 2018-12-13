Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXKn0-0002RZ-F0
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 06:48:08 +0000
Date: Thu, 13 Dec 2018 07:47:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181213064754.jux36nyudjro4zhm@pengutronix.de>
References: <20181210143239.3844-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181210143239.3844-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] clk: imx5: add di_pred
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 10, 2018 at 03:32:39PM +0100, Lucas Stach wrote:
> This was missing, so the default external DI clock source on i.MX51 was
> missing. Also set the divider to a division ratio of 1 initially, to avoid
> complicating the logic in the IPU driver further.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx5.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
> index f59a41b00169..69ac2f5e3ed2 100644
> --- a/drivers/clk/imx/clk-imx5.c
> +++ b/drivers/clk/imx/clk-imx5.c
> @@ -271,6 +271,7 @@ static void mx5_clocks_mx51_mx53_init(void __iomem *base)
>  	clks[IMX5_CLK_USBOH3_PODF] = imx_clk_divider("usboh3_podf", "usboh3_pred", base + CCM_CSCDR1, 6, 2);
>  	clks[IMX5_CLK_USB_PHY_PRED] = imx_clk_divider("usb_phy_pred", "pll3_sw", base + CCM_CDCDR, 3, 3);
>  	clks[IMX5_CLK_USB_PHY_PODF] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
> +	clks[IMX5_CLK_DI_PRED] = imx_clk_divider_np("di_pred", "pll3_sw", base + CCM_CDCDR, 6, 3);
>  	clks[IMX5_CLK_USB_PHY_SEL] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
>  				usb_phy_sel_str, ARRAY_SIZE(usb_phy_sel_str));
>  }
> @@ -362,6 +363,8 @@ static void mx51_clocks_ipu_init(void __iomem *regs)
>  
>  	mx5_clocks_ipu_init(regs);
>  
> +	clk_set_rate(clks[IMX5_CLK_DI_PRED], clk_get_rate(clks[IMX5_CLK_PLL3_SW]));
> +
>  	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX51_IPU_BASE_ADDR, "bus");
>  	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX51_IPU_BASE_ADDR, "di0");
>  	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX51_IPU_BASE_ADDR, "di1");
> -- 
> 2.19.1
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
