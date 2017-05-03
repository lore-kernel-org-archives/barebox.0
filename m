Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5sxZ-0006qi-Ih
 for barebox@lists.infradead.org; Wed, 03 May 2017 12:00:49 +0000
Date: Wed, 3 May 2017 14:00:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM: phytec-som-imx6: the ethernet clocks get enabled by
 fec_imx
Message-ID: <20170503120028.garkiqb7edoiwqod@pengutronix.de>
References: <20170412092630.22040-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170412092630.22040-1-m.grzeschik@pengutronix.de>
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
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 12, 2017 at 11:26:30AM +0200, Michael Grzeschik wrote:
> All necessary clocks get already enabled through the fec_imx driver
> configured by the devicetree.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/phytec-som-imx6/board.c | 27 +--------------------------
>  1 file changed, 1 insertion(+), 26 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
> index ed9453bdda..4d24a55f74 100644
> --- a/arch/arm/boards/phytec-som-imx6/board.c
> +++ b/arch/arm/boards/phytec-som-imx6/board.c
> @@ -31,7 +31,6 @@
>  #include <mach/bbu.h>
>  #include <platform_data/eth-fec.h>
>  #include <mfd/imx6q-iomuxc-gpr.h>
> -#include <linux/clk.h>
>  #include <linux/micrel_phy.h>
>  
>  #include <globalvar.h>
> @@ -97,32 +96,14 @@ int ksz8081_phy_fixup(struct phy_device *phydev)
>  	return 0;
>  }
>  
> -static int imx6ul_setup_fec(void)
> +static void imx6ul_setup_fec(void)
>  {
>  	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
>  	uint32_t val;
> -	struct clk *clk;
>  
>  	phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
>  			ksz8081_phy_fixup);
>  
> -	clk = clk_lookup("enet_ptp");
> -	if (IS_ERR(clk))
> -		goto err;
> -
> -	clk_enable(clk);
> -
> -	clk = clk_lookup("enet_ref");
> -	if (IS_ERR(clk))
> -		goto err;
> -	clk_enable(clk);
> -
> -	clk = clk_lookup("enet_ref_125m");
> -	if (IS_ERR(clk))
> -		goto err;
> -
> -	clk_enable(clk);
> -
>  	val = readl(gprbase + IOMUXC_GPR1);
>  	/* Use 50M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], set gpr1[17]*/
>  	val &= ~(1 << 13);
> @@ -131,12 +112,6 @@ static int imx6ul_setup_fec(void)
>  	val &= ~(1 << 14);
>  	val |= (1 << 18);
>  	writel(val, gprbase + IOMUXC_GPR1);
> -
> -	return 0;
> -err:
> -	pr_err("Setting up DFEC\n");
> -
> -	return -EIO;
>  }
>  
>  static int physom_imx6_devices_init(void)
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
