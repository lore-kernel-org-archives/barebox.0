Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2ey7-00010W-SC
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 09:37:37 +0000
Date: Tue, 5 Feb 2013 10:37:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205093734.GV1906@pengutronix.de>
References: <1359657455-23895-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359657455-23895-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] beagle: add nand partition and boot
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 31, 2013 at 07:37:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/beagle/env/boot/nand-ubi      |    9 +++++++++
>  arch/arm/boards/beagle/env/boot/nand-ubi-dt   |   10 ++++++++++
>  arch/arm/boards/beagle/env/init/mtdparts-nand |   11 +++++++++++
>  3 files changed, 30 insertions(+)
>  create mode 100644 arch/arm/boards/beagle/env/boot/nand-ubi
>  create mode 100644 arch/arm/boards/beagle/env/boot/nand-ubi-dt
>  create mode 100644 arch/arm/boards/beagle/env/init/mtdparts-nand
> 
> diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi b/arch/arm/boards/beagle/env/boot/nand-ubi
> new file mode 100644
> index 0000000..3037fd4
> --- /dev/null
> +++ b/arch/arm/boards/beagle/env/boot/nand-ubi
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "nand (UBI)"
> +	exit
> +fi
> +
> +global.bootm.image="/dev/nand0.kernel.bb"
> +global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
> diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi-dt b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
> new file mode 100644
> index 0000000..b7a1f19
> --- /dev/null
> +++ b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
> @@ -0,0 +1,10 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "nand (UBI)"
> +	exit
> +fi
> +
> +global.bootm.image="/dev/nand0.kernel.bb"
> +global.bootm.oftree="/dev/nand0.oftree.bb"
> +global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
> diff --git a/arch/arm/boards/beagle/env/init/mtdparts-nand b/arch/arm/boards/beagle/env/init/mtdparts-nand
> new file mode 100644
> index 0000000..9335bb1
> --- /dev/null
> +++ b/arch/arm/boards/beagle/env/init/mtdparts-nand
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "NAND partitions"
> +	exit
> +fi
> +
> +mtdparts="128k(nand0.xload),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.oftree),4M(nand0.kernel),120M(nand0.rootfs),-(nand0.data)"
> +kernelname="omap2-nand"
> +
> +mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
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
