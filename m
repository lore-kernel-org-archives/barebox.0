Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmQT0-0007WU-VS
 for barebox@lists.infradead.org; Tue, 11 Jun 2013 15:26:40 +0000
Date: Tue, 11 Jun 2013 17:26:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130611152614.GO32299@pengutronix.de>
References: <1370767208-22789-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370767208-22789-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: pcm038: Fix partition size definitions
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jun 09, 2013 at 12:40:08PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, though I really had liked some hint what was wrong with the
partition sizes.

Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 372aea5..49677c2 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -332,22 +332,20 @@ static int pcm038_devices_init(void)
>  
>  	switch (bootsource_get()) {
>  	case BOOTSOURCE_NAND:
> -		devfs_add_partition("nand0", 0x00000, 0x80000,
> -					DEVFS_PARTITION_FIXED, "self_raw");
> +		devfs_add_partition("nand0", 0, SZ_512K,
> +				    DEVFS_PARTITION_FIXED, "self_raw");
>  		dev_add_bb_dev("self_raw", "self0");
> -
> -		devfs_add_partition("nand0", 0x80000, 0x100000,
> -					DEVFS_PARTITION_FIXED, "env_raw");
> +		devfs_add_partition("nand0", SZ_512K, SZ_128K,
> +				    DEVFS_PARTITION_FIXED, "env_raw");
>  		dev_add_bb_dev("env_raw", "env0");
>  		envdev = "NAND";
>  		break;
>  	default:
> -		devfs_add_partition("nor0", 0x00000, 0x80000,
> -					DEVFS_PARTITION_FIXED, "self0");
> -		devfs_add_partition("nor0", 0x80000, 0x100000,
> -					DEVFS_PARTITION_FIXED, "env0");
> +		devfs_add_partition("nor0", 0, SZ_512K,
> +				    DEVFS_PARTITION_FIXED, "self0");
> +		devfs_add_partition("nor0", SZ_512K, SZ_128K,
> +				    DEVFS_PARTITION_FIXED, "env0");
>  		protect_file("/dev/env0", 1);
> -
>  		envdev = "NOR";
>  	}
>  
> -- 
> 1.8.1.5
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
