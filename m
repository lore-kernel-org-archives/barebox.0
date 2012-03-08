Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5js6-0004XJ-W0
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 20:23:37 +0000
Date: Thu, 8 Mar 2012 21:23:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120308202328.GT3852@pengutronix.de>
References: <1331122714-2463-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331122714-2463-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] omap: add support for phycard-a-xl2
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 07, 2012 at 01:18:34PM +0100, Jan Weitzel wrote:
> Support for omap4 based Phytec phyCARD-A-XL2 board
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  arch/arm/Makefile                                  |    1 +
>  arch/arm/boards/phycard-a-xl2/Makefile             |   20 ++
>  arch/arm/boards/phycard-a-xl2/config.h             |    1 +
>  .../boards/phycard-a-xl2/env/bin/nand_bootstrap    |   31 +++
>  arch/arm/boards/phycard-a-xl2/env/config           |   52 ++++
>  arch/arm/boards/phycard-a-xl2/lowlevel.c           |   95 ++++++++
>  arch/arm/boards/phycard-a-xl2/mux.c                |  245 ++++++++++++++++++++
>  arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |  147 ++++++++++++
>  arch/arm/configs/phycard_a_xl2_defconfig           |   56 +++++
>  arch/arm/configs/phycard_a_xl2_xload_defconfig     |   40 ++++
>  arch/arm/mach-omap/Kconfig                         |   10 +
>  11 files changed, 698 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/phycard-a-xl2/Makefile
>  create mode 100644 arch/arm/boards/phycard-a-xl2/config.h
>  create mode 100644 arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
>  create mode 100644 arch/arm/boards/phycard-a-xl2/env/config
>  create mode 100644 arch/arm/boards/phycard-a-xl2/lowlevel.c
>  create mode 100644 arch/arm/boards/phycard-a-xl2/mux.c
>  create mode 100644 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
>  create mode 100644 arch/arm/configs/phycard_a_xl2_defconfig
>  create mode 100644 arch/arm/configs/phycard_a_xl2_xload_defconfig
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 4c6a566..bf46ca3 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -102,6 +102,7 @@ board-$(CONFIG_MACH_PANDA)			:= panda
>  board-$(CONFIG_MACH_PCM049)			:= pcm049
>  board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
>  board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
> +board-$(CONFIG_MACH_PCAAXL2)			:= phycard-a-xl2
>  board-$(CONFIG_MACH_PCM037)			:= pcm037
>  board-$(CONFIG_MACH_PCM038)			:= pcm038
>  board-$(CONFIG_MACH_PCM043)			:= pcm043
> diff --git a/arch/arm/boards/phycard-a-xl2/Makefile b/arch/arm/boards/phycard-a-xl2/Makefile
> new file mode 100644
> index 0000000..1d23d72
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-xl2/Makefile
> @@ -0,0 +1,20 @@
> +# (C) Copyright 2012 Jan Weitzel <j.weitzel@phytec.de>
> +#
> +# See file CREDITS for list of people who contributed to this
> +# project.
> +#
> +# This program is free software; you can redistribute it and/or
> +# modify it under the terms of the GNU General Public License as
> +# published by the Free Software Foundation; either version 2 of
> +# the License, or (at your option) any later version.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License
> +# along with this program; if not, write to the Free Software
> +# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> +# MA 02111-1307 USA
> +obj-y += pca-a-xl2.o mux.o lowlevel.o
> diff --git a/arch/arm/boards/phycard-a-xl2/config.h b/arch/arm/boards/phycard-a-xl2/config.h
> new file mode 100644
> index 0000000..da84fa5
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-xl2/config.h
> @@ -0,0 +1 @@
> +/* nothing */
> diff --git a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
> new file mode 100644
> index 0000000..acd00dc
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
> @@ -0,0 +1,31 @@
> +
> +echo "copying barebox to nand..."
> +
> +mci0.probe=1
> +mkdir mnt
> +
> +mount /dev/disk0.0 fat /mnt
> +if [ $? != 0 ]; then
> +	echo "failed to mount mmc card"
> +	exit 1
> +fi
> +
> +if [ ! -f /mnt/mlo-nand.bin ]; then
> +	echo "mlo-nand.bin not found on mmc card"
> +	exit 1
> +fi
> +
> +if [ ! -f /mnt/barebox.bin ]; then
> +	echo "barebox.bin not found on mmc card"
> +fi
> +
> +gpmc_nand0.eccmode=bch8_hw_romcode
> +erase /dev/nand0.xload.bb
> +cp /mnt/mlo-nand.bin /dev/nand0.xload.bb
> +
> +gpmc_nand0.eccmode=bch8_hw
> +erase /dev/nand0.barebox.bb
> +cp /mnt/barebox.bin /dev/nand0.barebox.bb
> +
> +echo "success"
> +
> diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
> new file mode 100644
> index 0000000..8ed0459
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-xl2/env/config
> @@ -0,0 +1,52 @@
> +#!/bin/sh
> +
> +machine=pcaaxl2
> +user=
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=dhcp
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=a.b.c.d
> +#eth0.netmask=a.b.c.d
> +#eth0.gateway=a.b.c.d
> +#eth0.serverip=a.b.c.d
> +
> +# can be either 'nfs', 'tftp', 'nor' or 'nand'
> +kernel_loc=tftp
> +# can be either 'net', 'nor', 'nand' or 'initrd'
> +rootfs_loc=net
> +
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=ubifs
> +rootfsimage=root-${machine}.$rootfs_type
> +
> +# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
> +kernelimage_type=zimage
> +kernelimage=zImage-$machine
> +#kernelimage_type=uimage
> +#kernelimage=uImage-$machine
> +#kernelimage_type=raw
> +#kernelimage=Image-$machine
> +#kernelimage_type=raw_lzo
> +#kernelimage=Image-${machine}.lzo

You can drop kernelimage_type. bootm now boots all of them.

Otherwise it looks good.

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
