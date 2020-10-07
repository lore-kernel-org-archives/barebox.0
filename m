Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ4SG-0008Aa-KC
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 08:05:45 +0000
Date: Wed, 7 Oct 2020 10:05:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201007080543.GJ11648@pengutronix.de>
References: <20200930132417.351944-1-l.stach@pengutronix.de>
 <20200930132417.351944-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930132417.351944-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: nxp-imx8mm-evk: adjust DDR training order
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2020 at 03:24:17PM +0200, Lucas Stach wrote:
> This way we end up with the fastest DDR speed when training is finished
> and don't need to rely on TF-A to switch into a higher DDR speed.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
> index b164bdec07f1..33ef5542a364 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
> @@ -118,7 +118,7 @@ static struct dram_cfg_param lpddr4_ddrc_cfg[] = {
>  	{ DDRC_FREQ2_INIT7(0), 0x0006004a },
>  
>  	/* boot start point */
> -	{ DDRC_MSTR2(0), 0x2 }, //DDRC_MSTR2
> +	{ DDRC_MSTR2(0), 0x0 }, //DDRC_MSTR2
>  };
>  
>  /* PHY Initialize Configuration */
> @@ -1940,12 +1940,6 @@ static struct dram_fsp_msg lpddr4_dram_fsp_msg[] = {
>  		.fw_type = FW_1D_IMAGE,
>  		.fsp_cfg = lpddr4_fsp0_cfg,
>  		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp0_cfg),
> -	}, {
> -		/* P0 3000mts 2D */
> -		.drate = 3000,
> -		.fw_type = FW_2D_IMAGE,
> -		.fsp_cfg = lpddr4_fsp0_2d_cfg,
> -		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp0_2d_cfg),
>  	}, {
>  		/* P1 400mts 1D */
>  		.drate = 400,
> @@ -1958,6 +1952,12 @@ static struct dram_fsp_msg lpddr4_dram_fsp_msg[] = {
>  		.fw_type = FW_1D_IMAGE,
>  		.fsp_cfg = lpddr4_fsp2_cfg,
>  		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp2_cfg),
> +	}, {
> +		/* P0 3000mts 2D */
> +		.drate = 3000,
> +		.fw_type = FW_2D_IMAGE,
> +		.fsp_cfg = lpddr4_fsp0_2d_cfg,
> +		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp0_2d_cfg),
>  	},
>  };
>  
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
