Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXk3A-0003lP-5s
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 06:00:38 +0000
Date: Fri, 4 Sep 2015 08:00:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150904060013.GQ18700@pengutronix.de>
References: <1441264649-44064-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441264649-44064-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH] ARM: boards: Fix beaglebone enviroment
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 03, 2015 at 09:17:29AM +0200, Daniel Schultz wrote:
> This patch adds missing enviroment files to boot from different sources.
> Also adds the handling of default bootsources.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  .../arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc |  6 ++++++
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc |  6 ++++++
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net | 15 +++++++++++++++
>  .../beaglebone/defaultenv-beaglebone/init/bootsource      | 13 +++++++++++++
>  4 files changed, 40 insertions(+)
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource
> 
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
> new file mode 100644
> index 0000000..cc2bea2
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +mount /dev/mmc1.0 /mnt/
> +global.bootm.image=/mnt/linuximage
> +global.bootm.oftree=/mnt/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootwait rw"
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
> new file mode 100644
> index 0000000..96255d5
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +mount /dev/mmc0.0 /mnt/
> +global.bootm.image=/mnt/linuximage
> +global.bootm.oftree=/mnt/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait rw"

This assumes a specific probe order of devices in Linux. What for
example when the external SD card is not plugged in? The eMMC will
become mmcblk0p2 then. Also we assume a very specific layout of the SD
card which is not documented (separate boot partition, root partition
right after that). Could you have a look at bootloader spec which solves
all these problems?

The short version is: Put your rootfs into a partition on the SD card.
In the same filesystem put a file /loader/entries/jessie.conf:

title			Debian Jessy
version			4.2
options			rootwait
linux-appendroot	true
linux			/boot/zImage
devicetree		/boot/am335x-boneblack.dtb

Put the kernel/devicetree to the specified paths in the same filesystem.

In barebox you only have to type 'boot mmc0' or 'boot mmc1' depending
where your rootfs is, or create a nv.boot.default variable containing
the mmc0/1 device.

The appropriate root= option for the kernel will be appended
automatically by barebox when the 'linux-appendroot' option is set to
true in the bootloader spec entry.

> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net
> new file mode 100644
> index 0000000..5ca4bad
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net
> @@ -0,0 +1,15 @@
> +#!/bin/sh
> +
> +path="/mnt/tftp"
> +
> +global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> +
> +oftree="${path}/${global.user}-oftree-${global.hostname}"
> +if [ -f "${oftree}" ]; then
> +        global.bootm.oftree="$oftree"
> +fi
> +
> +nfsroot="/nfsroot/${global.hostname}"
> +bootargs-ip
> +/env/config-expansions
> +global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,vers=3,udp rw"

except for the /env/config-expansions which does not exist in mainline
this should be the same as in mainline, right?

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
