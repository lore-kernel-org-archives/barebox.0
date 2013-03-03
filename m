Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UC8ia-0005iQ-CL
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 13:12:54 +0000
Date: Sun, 3 Mar 2013 14:10:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130303131011.GW1906@pengutronix.de>
References: <1361959387-6909-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361959387-6909-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH] ARM: cfa10036: Remove the boot partition and boot from ext
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 27, 2013 at 11:03:07AM +0100, Maxime Ripard wrote:
> Support for ext filesystems has been introduced recently. We can now
> boot directly from our rootfs, loading the kernel and device tree
> images from /boot.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    6 +++---
>  arch/arm/configs/cfa10036_defconfig                     |    1 +
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
> index 439d174..4d830ed 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
> +++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
> @@ -5,6 +5,6 @@ if [ "$1" = menu ]; then
>  	exit
>  fi
>  
> -global.bootm.image="/mnt/disk0.2/zImage-${global.hostname}"
> -global.bootm.oftree="/mnt/disk0.2/oftree-${global.board.variant}"
> -global.linux.bootargs.dyn.root="root=/dev/mmcblk0p4 rootfstype=ext3 rootwait"
> +global.bootm.image="/mnt/disk0.2/boot/zImage-${global.hostname}"
> +global.bootm.oftree="/mnt/disk0.2/boot/oftree-${global.board.variant}"
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext3 rootwait"
> diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
> index c55d50d..277a3ec 100644
> --- a/arch/arm/configs/cfa10036_defconfig
> +++ b/arch/arm/configs/cfa10036_defconfig
> @@ -39,5 +39,6 @@ CONFIG_I2C=y
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_MXS=y
> +CONFIG_FS_EXT4=y
>  CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_LFN=y
> -- 
> 1.7.10.4
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
