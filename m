Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCZg-0000iE-6G
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:21:41 +0000
Date: Fri, 2 Oct 2020 06:21:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002042138.GR11648@pengutronix.de>
References: <20200930132434.354105-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930132434.354105-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: nxp-imx8mm-evk: use eMMC update handler
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2020 at 03:24:34PM +0200, Lucas Stach wrote:
> Use the proper eMMC update handler to write the barebox image into
> the non-active boot partition and switch automatically.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mm-evk/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
> index 8f5d851a8897..4350abd15793 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
> @@ -55,7 +55,7 @@ static int nxp_imx8mm_evk_init(void)
>  
>  	imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox",
>  						 emmc_sd_flag);
> -	imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2",
> +	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2",
>  						     emmc_bbu_flag);
>  
>  	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
