Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cb1RU-0005eF-Ij
 for barebox@lists.infradead.org; Tue, 07 Feb 2017 08:48:06 +0000
Date: Tue, 7 Feb 2017 09:45:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170207084532.dxzhq6ogcb2begh6@pengutronix.de>
References: <1485955486-31573-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1485955486-31573-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH] arm: boards: phytec-som-am335x: Remove 1GB RAM type
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 01, 2017 at 02:24:46PM +0100, Daniel Schultz wrote:
> This machine was a prototype and was never shipped to customers.
> 
> Since it has no dependencies to any image, it can be removed.

Applied, thanks

Sascha

> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 -
>  arch/arm/boards/phytec-som-am335x/ram-timings.h | 21 ---------------------
>  2 files changed, 22 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
> index 33e83c5..03c7e98 100644
> --- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
> @@ -122,7 +122,6 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_128mb, am335x_phytec_phycore_s
>  PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J128M16125IT_256MB);
>  PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J256M16HA15EIT_512MB);
>  PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
> -PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_IM8G16D3FBBG15EI_1024MB);
>  PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K256M16TW107IT_512MB);
>  PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K128M16JT_256MB);
>  PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_1024mb,  am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K512M16HA125IT_1024MB);
> diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
> index 4ea654d..d1947b5 100644
> --- a/arch/arm/boards/phytec-som-am335x/ram-timings.h
> +++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
> @@ -29,7 +29,6 @@ enum {
>  	PHYCORE_MT41J64M1615IT_128MB,
>  	PHYCORE_MT41J256M16HA15EIT_512MB,
>  	PHYCORE_MT41J512M8125IT_2x512MB,
> -	PHYCORE_IM8G16D3FBBG15EI_1024MB,
>  	PHYCORE_R2_MT41K256M16TW107IT_512MB,
>  	PHYCORE_R2_MT41K128M16JT_256MB,
>  	PHYCORE_R2_MT41K512M16HA125IT_1024MB,
> @@ -162,26 +161,6 @@ struct am335x_sdram_timings physom_timings[] = {
>  		},
>  	},
>  
> -	/* 1024MB */
> -	[PHYCORE_IM8G16D3FBBG15EI_1024MB] = {
> -		.regs = {
> -			.emif_read_latency	= 0x7,
> -			.emif_tim1		= 0x0AAAE4DB,
> -			.emif_tim2		= 0x268F7FDA,
> -			.emif_tim3		= 0x501F88BF,
> -			.ocp_config		= 0x003d3d3d,
> -			.sdram_config		= 0x61C053B2,
> -			.zq_config		= 0x50074BE4,
> -			.sdram_ref_ctrl		= 0x00000C30
> -		},
> -		.data = {
> -			.rd_slave_ratio0	= 0x33,
> -			.wr_dqs_slave_ratio0	= 0x4a,
> -			.fifo_we_slave_ratio0	= 0xa4,
> -			.wr_slave_ratio0	= 0x85,
> -		},
> -	},
> -
>  	/* 256MB */
>  	[PHYCARD_NT5CB128M16BP_256MB] = {
>  		.regs = {
> -- 
> 1.9.1
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
