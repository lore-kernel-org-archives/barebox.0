Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQow7-0000f9-SQ
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 05:57:50 +0000
Date: Fri, 30 Jun 2017 07:57:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630055706.svfai3z2f3ixme77@pengutronix.de>
References: <1498573695-3135-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1498573695-3135-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v6] arm: boards: phytec-som-am335x: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 27, 2017 at 04:28:15PM +0200, Daniel Schultz wrote:
> Expand the boot scripts by eMMC and clean them up.
> Add NV variable files and removed unnecessary kernel bootargs from the
> boot scripts.
> Add "rootflags='data=journal'" bootarg to SD card boot script.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---

Applied, thanks

Sascha

>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/emmc |  5 +++++
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/mmc  |  7 +++----
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/nand |  2 +-
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/spi  |  2 +-
>  .../defaultenv-physom-am335x/init/bootsource             | 16 ++++++++++++----
>  .../defaultenv-physom-am335x/nv/allow_color              |  1 +
>  .../defaultenv-physom-am335x/nv/boot.watchdog_timeout    |  1 +
>  .../defaultenv-physom-am335x/nv/linux.bootargs.base      |  1 +
>  .../defaultenv-physom-am335x/nv/linux.bootargs.rootfs    |  1 +
>  9 files changed, 26 insertions(+), 10 deletions(-)
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/allow_color
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/boot.watchdog_timeout
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.base
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.rootfs
> 
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> new file mode 100644
> index 0000000..b1792a6
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +
> +global.bootm.image=/mnt/mmc1.0/linuximage
> +global.bootm.oftree=/mnt/mmc1.0/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='data=journal'"
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> index 834669d..77a076d 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> @@ -1,6 +1,5 @@
>  #!/bin/sh
>  
> -global.bootm.image=/boot/linuximage
> -global.bootm.oftree=/boot/oftree
> -
> -global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
> +global.bootm.image=/mnt/mmc0.0/linuximage
> +global.bootm.oftree=/mnt/mmc0.0/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootflags='data=journal'"
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
> index ece44b7..33f5f02 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
> @@ -5,4 +5,4 @@
>  global.bootm.image="/dev/nand0.root.ubi.kernel"
>  global.bootm.oftree="/dev/nand0.root.ubi.oftree"
>  
> -global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rw rootfstype=ubifs"
> +global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs"
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
> index 71c5834..a321aa9 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
> @@ -4,4 +4,4 @@ global.bootm.image="/dev/m25p0.kernel"
>  global.bootm.oftree="/dev/m25p0.oftree"
>  
>  # Use rootfs from NAND
> -global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rw rootfstype=ubifs"
> +global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
> index 3f2ff4b..61a0879 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
> @@ -4,12 +4,20 @@ if [ -n "$nv.boot.default" ]; then
>  	exit
>  fi
>  
> -if [ $bootsource = mmc ]; then
> -	global.boot.default="mmc nand spi net"
> +if [ -e /dev/mmc1.0 ]; then
> +	nvmem="emmc"
> +else
> +	nvmem="nand"
> +fi
> +
> +if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
> +	global.boot.default="emmc mmc spi net"
> +elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
> +	global.boot.default="mmc $nvmem spi net"
>  elif [ $bootsource = nand ]; then
>  	global.boot.default="nand spi mmc net"
>  elif [ $bootsource = spi ]; then
> -	global.boot.default="spi nand mmc net"
> +	global.boot.default="spi $nvmem mmc net"
>  elif [ $bootsource = net ]; then
> -	global.boot.default="net nand spi mmc"
> +	global.boot.default="net $nvmem spi mmc"
>  fi
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/allow_color b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/allow_color
> new file mode 100644
> index 0000000..c508d53
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/allow_color
> @@ -0,0 +1 @@
> +false
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/boot.watchdog_timeout b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/boot.watchdog_timeout
> new file mode 100644
> index 0000000..abdfb05
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/boot.watchdog_timeout
> @@ -0,0 +1 @@
> +60
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.base b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.base
> new file mode 100644
> index 0000000..efc4ee6
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.base
> @@ -0,0 +1 @@
> +consoleblank=0
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.rootfs b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.rootfs
> new file mode 100644
> index 0000000..199c7b5
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/linux.bootargs.rootfs
> @@ -0,0 +1 @@
> +rootwait ro fsck.repair=yes
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
