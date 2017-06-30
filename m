Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuBF-0006JR-Lg
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:33:49 +0000
Date: Fri, 30 Jun 2017 13:32:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630113247.nljwxvjwba6lyhwm@pengutronix.de>
References: <20170630080822.5027-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170630080822.5027-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM: socfpga: remove unused fpgaintf setup
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 30, 2017 at 10:08:22AM +0200, Steffen Trumtrar wrote:
> The disable bits for the ethernet interfaces between FPGA and HPS are read
> and configured, but never written back.
> The configuration itself doesn't make that much sense however. So instead of
> writing it back to the register, remove the whole read-modify operation altogether.
> 
> Reported-by: Ian Abbott <abbotti@mev.co.uk>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/arria10-generic.c | 8 --------
>  1 file changed, 8 deletions(-)
> 

Applied, thanks

Sascha

> diff --git a/arch/arm/mach-socfpga/arria10-generic.c b/arch/arm/mach-socfpga/arria10-generic.c
> index b8129eaf23ff..6a10c19d1417 100644
> --- a/arch/arm/mach-socfpga/arria10-generic.c
> +++ b/arch/arm/mach-socfpga/arria10-generic.c
> @@ -37,14 +37,6 @@ static void arria10_init_emac(void)
>  	val |= ARRIA10_SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII;
>  	writel(val, ARRIA10_SYSMGR_EMAC2);
>  
> -	val = readl(ARRIA10_SYSMGR_FPGAINTF_EN_3);
> -	val &= ~(ARRIA10_SYSMGR_FPGAINTF_EN3_EMAC0 |
> -		 ARRIA10_SYSMGR_FPGAINTF_EN3_EMAC0_SW |
> -		 ARRIA10_SYSMGR_FPGAINTF_EN3_EMAC1 |
> -		 ARRIA10_SYSMGR_FPGAINTF_EN3_EMAC1_SW |
> -		 ARRIA10_SYSMGR_FPGAINTF_EN3_EMAC2 |
> -		 ARRIA10_SYSMGR_FPGAINTF_EN3_EMAC2_SW);
> -
>  	rst = readl(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST);
>  	rst &= ~(ARRIA10_RSTMGR_PER0MODRST_EMAC0 |
>  		 ARRIA10_RSTMGR_PER0MODRST_EMAC1 |
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
