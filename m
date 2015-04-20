Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk9ht-0007sM-C9
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 11:17:42 +0000
Date: Mon, 20 Apr 2015 13:17:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150420111719.GO6325@pengutronix.de>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
 <1429520152-27399-3-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429520152-27399-3-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 3/5] ARM: omap: move GPMC calls under config define
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 20, 2015 at 10:55:50AM +0200, Lucas Stach wrote:
> Fixes build failures on a few boards if CONFIG_OMAP_GPMC
> is not set.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/beagle/board.c                   |  4 +++-
>  arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c  | 11 +++++++----
>  arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c | 10 +++++++---
>  arch/arm/boards/phytec-phycore-omap4460/board.c  |  9 +++++++--
>  4 files changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
> index 775621069c27..c7fd5a30542e 100644
> --- a/arch/arm/boards/beagle/board.c
> +++ b/arch/arm/boards/beagle/board.c
> @@ -74,11 +74,13 @@ static struct i2c_board_info i2c_devices[] = {
>  	},
>  };
>  
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_nand_platform_data nand_plat = {
>  	.device_width = 16,
>  	.ecc_mode = OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
>  	.nand_cfg = &omap3_nand_cfg,
>  };
> +#endif
>  
>  static int beagle_mem_init(void)
>  {
> @@ -100,8 +102,8 @@ static int beagle_devices_init(void)
>  #ifdef CONFIG_OMAP_GPMC
>  	/* WP is made high and WAIT1 active Low */
>  	gpmc_generic_init(0x10);
> -#endif
>  	omap_add_gpmc_nand_device(&nand_plat);
> +#endif

Maybe add a static inline no-op wrapper instead? This would save us some
ifdefs.

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
