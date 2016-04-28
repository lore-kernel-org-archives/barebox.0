Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avhPj-0005nD-NC
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 08:35:12 +0000
Date: Thu, 28 Apr 2016 10:34:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160428083449.GB7860@pengutronix.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
 <1461751489-13302-9-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461751489-13302-9-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH for next 08/15] ARM: phytec-som-imx6: add boot device
 emmc and automount
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 12:04:42PM +0200, Stefan Christ wrote:
> Add boot file 'emmc' and automount configuration for phyCORE-i.MX6.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  .../arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc | 5 +++++
>  .../phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount       | 3 +++
>  2 files changed, 8 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> 
> diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> new file mode 100644
> index 0000000..e3cc9e3
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +
> +global.bootm.image="/mnt/emmc/linuximage"
> +global.bootm.oftree="/mnt/emmc/oftree"
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"

Does this work reliably? Is there finally a patch upstream that creates
fixed numbers for MMC/SD block devices?

When I see patches like this it's probably time to remind how barebox can
handle bootloader spec ;)

Put a file like this to /loader/entries/loader.conf:

title                   Phytec-Monster-Linux
version                 4.6
options                 rootwait
linux-appendroot        true
linux                   /boot/zImage
devicetree              /boot/imx6q-phytec-pflaxy.dtb

Then you can boot the system with "boot mmc3.0", no further barebox
configuration is needed. Set nv.boot to mmc3.0 if you always want to
boot from there. The same can be done with nfsroot: Put the rootfs
somewhere reachable via NFS and do:

boot nfs://nfshost//path/to/rootfs

(You'll need a "ip=dhcp" in the options in your loader.conf)

You can also create multiple loader.conf files with different device
trees, barebox will then pick the one which is compatible to the current
board.

The above also works with NAND/UBI. "boot nand0.root.ubi.root" will boot
from the root volume on the ubi found on the root partition from the
nand0 device. Again, no further barebox configuration and no manual
ubiattach required. the root= and ubi.mtd= arguments to the kernel will
be automatically generated.

Configuration files in the environment have become pretty much
unnecessary for the common case.

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
