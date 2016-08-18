Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baGjP-0006XP-RP
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 06:23:13 +0000
Date: Thu, 18 Aug 2016 08:22:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818062247.GA20657@pengutronix.de>
References: <1470726028-32152-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470726028-32152-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] clk: socfpga: add divider registers to the main pll
 outputs
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Enrico Jorns <ejo@pengutronix.de>

On Tue, Aug 09, 2016 at 09:00:28AM +0200, Steffen Trumtrar wrote:
> From: Enrico Jorns <ejo@pengutronix.de>
> 
> This patch is based on kernel patch 0691bb1b5a1865b3bbc9b7ce6e26eff546abb1cf
> by Dinh Nguyen <dinguyen@altera.com>.
> 
> The C0(mpu_clk), C1(main_clk), and C2(dbg_base_clk) outputs from the main
> PLL go through a pre-divider before coming into the system. These registers
> were hidden for the CycloneV platform, but are now used for the ArriaV
> platform.
> 
> This patch updates the clock driver to read the div-reg property for the
> socfpga-periph-clk clocks.
> 
> Note: The registers used for the div-reg property are not documented but
> set by the preloader.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---

Applied, thanks

Sascha

>  drivers/clk/socfpga.c | 25 ++++++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga.c
> index 37ed038be84c..6af0632cafc2 100644
> --- a/drivers/clk/socfpga.c
> +++ b/drivers/clk/socfpga.c
> @@ -116,18 +116,27 @@ struct clk_periph {
>  	const char *parent;
>  	unsigned regofs;
>  	unsigned int fixed_div;
> +	void __iomem *div_reg;
> +	unsigned int width;
> +	unsigned int shift;
>  };
>  
>  static unsigned long clk_periph_recalc_rate(struct clk *clk,
>  		unsigned long parent_rate)
>  {
>  	struct clk_periph *periph = container_of(clk, struct clk_periph, clk);
> -	u32 div;
> +	u32 div, val;
>  
> -	if (periph->fixed_div)
> +	if (periph->fixed_div) {
>  		div = periph->fixed_div;
> -	else
> +	} else {
> +		if (periph->div_reg) {
> +			val = readl(periph->div_reg) >> periph->shift;
> +			val &= div_mask(periph->width);
> +			parent_rate /= (val + 1);
> +		}
>  		div = ((readl(clk_mgr_base_addr + periph->regofs) & 0x1ff) + 1);
> +	}
>  
>  	return parent_rate / div;
>  }
> @@ -140,6 +149,7 @@ static struct clk *socfpga_periph_clk(struct device_node *node)
>  {
>  	struct clk_periph *periph;
>  	int ret;
> +	u32 div_reg[3];
>  
>  	periph = xzalloc(sizeof(*periph));
>  
> @@ -152,6 +162,15 @@ static struct clk *socfpga_periph_clk(struct device_node *node)
>  	periph->clk.name = xstrdup(node->name);
>  	periph->clk.ops = &clk_periph_ops;
>  
> +	ret = of_property_read_u32_array(node, "div-reg", div_reg, 3);
> +	if (!ret) {
> +		periph->div_reg = clk_mgr_base_addr + div_reg[0];
> +		periph->shift = div_reg[1];
> +		periph->width = div_reg[2];
> +	} else {
> +		periph->div_reg = 0;
> +	}
> +
>  	of_property_read_u32(node, "reg", &periph->regofs);
>  	of_property_read_u32(node, "fixed-divider", &periph->fixed_div);
>  
> -- 
> 2.8.1
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
