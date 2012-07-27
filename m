Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SumKQ-0000z1-Pz
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 15:19:47 +0000
Date: Fri, 27 Jul 2012 17:19:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727151936.GF30009@pengutronix.de>
References: <1343387347-24504-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343387347-24504-1-git-send-email-j.weitzel@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] omap: use 512k barebox partition
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 01:09:07PM +0200, Jan Weitzel wrote:
> Use 512k NAND Partion for barebox. Problem is we don't know the size of the
> barebox inside xload. Set it also to 512k
> Fix enviroment for boards with size in config

The barebox binary has the size encoded into it at offset 0x2c. We could
use this to transfer the correct size.

Sascha

> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  arch/arm/boards/pcm049/board.c            |    7 +++++--
>  arch/arm/boards/pcm049/env/config         |    2 +-
>  arch/arm/boards/phycard-a-l1/env/config   |    2 +-
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c   |    9 ++++++---
>  arch/arm/boards/phycard-a-xl2/env/config  |    2 +-
>  arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |    4 ++--
>  arch/arm/mach-omap/xload.c                |    2 +-
>  7 files changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
> index 5b7854a..d7b79c1 100644
> --- a/arch/arm/boards/pcm049/board.c
> +++ b/arch/arm/boards/pcm049/board.c
> @@ -113,9 +113,12 @@ static int pcm049_devices_init(void)
>  #ifdef CONFIG_PARTITION
>  	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
>  	dev_add_bb_dev("xload_raw", "xload");
> -	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
> +	devfs_add_partition("nand0", SZ_128K, SZ_512K,
> +			DEVFS_PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
> +	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K,
> +			DEVFS_PARTITION_FIXED, "env_raw");
> +
>  	dev_add_bb_dev("env_raw", "env0");
>  #endif
>  
> diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
> index efbe9ea..70e374f 100644
> --- a/arch/arm/boards/pcm049/env/config
> +++ b/arch/arm/boards/pcm049/env/config
> @@ -40,7 +40,7 @@ autoboot_timeout=3
>  
>  bootargs="console=ttyO2,115200"
>  
> -nand_parts="128k(xload)ro,256k(barebox),128k(bareboxenv),2M(kernel),-(root)"
> +nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
>  rootfs_mtdblock_nand=4
>  
>  # set a fancy prompt (if support is compiled in)
> diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phycard-a-l1/env/config
> index e0f4dcc..5bc48d7 100644
> --- a/arch/arm/boards/phycard-a-l1/env/config
> +++ b/arch/arm/boards/phycard-a-l1/env/config
> @@ -70,7 +70,7 @@ bootargs="$bootargs omapdss.def_disp=pd050vl1"
>  #bootargs="$bootargs omapdss.def_disp=pd104slf"
>  #bootargs="$bootargs omapdss.def_disp=pm070wl4"
>  
> -nand_parts="512k(x-loader)ro,1920k(barebox),128k(bareboxenv),4M(kernel),-(root)"
> +nand_parts="128k(x-loader)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
>  nand_device=omap2-nand.0
>  rootfs_mtdblock_nand=4
>  
> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> index 1cc2815..3d3596a 100644
> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -336,13 +336,16 @@ static int pcaal1_late_init(void)
>  
>  	nand = get_device_by_name("nand0");
>  
> -	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "x-loader");
> +	devfs_add_partition("nand0", 0x00000, SZ_128K,
> +			DEVFS_PARTITION_FIXED, "x-loader");
>  	dev_add_bb_dev("self_raw", "x_loader0");
>  
> -	devfs_add_partition("nand0", 0x80000, 0x1e0000, DEVFS_PARTITION_FIXED, "self_raw");
> +	devfs_add_partition("nand0", SZ_128K, SZ_512K,
> +			DEVFS_PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
>  
> -	devfs_add_partition("nand0", 0x260000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
> +	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K,
> +			DEVFS_PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
>  
>  	return 0;
> diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
> index 59e8eb3..44a4181 100644
> --- a/arch/arm/boards/phycard-a-xl2/env/config
> +++ b/arch/arm/boards/phycard-a-xl2/env/config
> @@ -39,7 +39,7 @@ autoboot_timeout=3
>  
>  bootargs="console=ttyO2,115200"
>  
> -nand_parts="128k(xload)ro,256k(barebox),128k(bareboxenv),4M(kernel),-(root)"
> +nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
>  rootfs_mtdblock_nand=4
>  
>  # set a fancy prompt (if support is compiled in)
> diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> index 128cb8f..54b4ada 100644
> --- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> +++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> @@ -131,10 +131,10 @@ static int pcaaxl2_devices_init(void)
>  	devfs_add_partition("nand0", 0x00000, SZ_128K,
>  			DEVFS_PARTITION_FIXED, "xload_raw");
>  	dev_add_bb_dev("xload_raw", "xload");
> -	devfs_add_partition("nand0", SZ_128K, SZ_256K,
> +	devfs_add_partition("nand0", SZ_128K, SZ_512K,
>  			DEVFS_PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K,
> +	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K,
>  			DEVFS_PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
>  #endif
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 13024ab..a58d0a3 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -80,7 +80,7 @@ int run_shell(void)
>  		printf("unknown boot source. Fall back to nand\n");
>  	case OMAP_BOOTSRC_NAND:
>  		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
> +		func = omap_xload_boot_nand(SZ_128K, SZ_512K);
>  		break;
>  	}
>  
> -- 
> 1.7.0.4
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
