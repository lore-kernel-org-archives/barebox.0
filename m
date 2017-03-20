Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprvF-0001EQ-HK
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:40:12 +0000
Date: Mon, 20 Mar 2017 08:39:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320073947.bd2azbvm73fcguus@pengutronix.de>
References: <1489942941-16270-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489942941-16270-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: i.MX WaRP7: Add defaultenv and boot pre-installed
 kernel
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

Some small optimizations for the boot script inside.

On Sun, Mar 19, 2017 at 06:02:21PM +0100, Alexander Kurz wrote:
>  static int warp7_devices_init(void)
>  {
> @@ -30,6 +31,8 @@ static int warp7_devices_init(void)
>  	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc2.boot0.barebox",
>  					       BBU_HANDLER_FLAG_DEFAULT);
>  
> +	defaultenv_append_directory(defaultenv_warp7);
> +
>  	return 0;
>  }
>  device_initcall(warp7_devices_init);
> diff --git a/arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel b/arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel
> new file mode 100644
> index 0000000..dd0a31b
> --- /dev/null
> +++ b/arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +[ -d /mnt/mmc2.0 ] || mkdir /mnt/mmc2.0

mkdir -p would be simpler, but this is not needed when...

> +mount -t fat /dev/mmc2.0 /mnt/mmc2.0/

...this is replaced with "mount mmc2.0". The partition is then mounted
to the default path which is also /mnt/mmc2.0.

> +
> +global linux.bootargs.dyn.root="console=ttymxc0,115200 root=/dev/mmcblk2p2 rootwait rw"

The console=ttymxc0,115200 shouldn't be necessary. barebox adds this
automatically.

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
