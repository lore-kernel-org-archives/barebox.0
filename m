Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adYlG-0003gt-DS
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 07:42:27 +0000
Date: Wed, 9 Mar 2016 08:42:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160309074203.GC30994@pengutronix.de>
References: <56DE98CF.80104@eurek.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56DE98CF.80104@eurek.it>
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
Subject: Re: Linux does not boot, unrecognized/unsupported machine ID (r1 =
 0x00000000).
To: gianluca <gianlucarenzi@eurek.it>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Mar 08, 2016 at 10:18:07AM +0100, gianluca wrote:
> Hello list,
> here I am (again!) ;-)
> 
> Now I have downloaded the linux 4.5-rc6 (because I would like to use etnaviv
> gpu driver), configured as imx_v6_v7_defconfig, added the DEBUG_LL stuff for
> uart3 and added in the Makefile for dts my dts (more or less like Barebox
> one [in attachment] ), but here is what I get (compiling the kernel with
> DEBUG_LL for uart3):
> 
> >barebox 2016.02.0 #1 Mon Mar 7 13:15:11 CET 2016
> >
> >
> >Board: EK360 Eurek i.MX6 Quad
> >detected i.MX6 Quad revision 1.5
> >mdio_bus: miibus0: probed
> >imx-usb 2184200.usb: USB EHCI 1.00
> >imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> >imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
> >imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> >imx-ipuv3 2400000.ipu: IPUv3H probed
> >imx-ipuv3 2800000.ipu: IPUv3H probed
> >netconsole: registered as netconsole-1
> >malloc space: 0x2ff7c160 -> 0x4fef82bf (size 511.5 MiB)
> >environment load /dev/env0: No such file or directory
> >Maybe you have to create the partition.
> >running /env/bin/init...
> >mmc2: detected SD card version 2.0
> >mmc2: registered mmc2
> >ext4 ext40: EXT2 rev 1, inode_size 128
> >Hit CTRL-C key to stop autoboot: 1
> >Running boot from uSD/MMC or USB...
> >Booting...
> >    Image Name:   Linux-4.5.0-rc6-EK20160302
> >    Created:      2016-03-07 12:30:32 UTC
> >    OS:           Linux
> >    Architecture: ARM
> >    Type:         Kernel Image
> >    Compression:  uncompressed
> >    Data Size:    6636352 Bytes = 6.3 MiB
> >    Load Address: 10008000
> >    Entry Point:  10008000
> >
> >Loading U-Boot uImage '/mnt/uImage'
> >Loading devicetree from '/mnt/dtb'
> >commandline: console=ttymxc2,115200 rootwait noswap ip=none noinitrd rootfstype=nilfs2 root=/dev/mmcblk2p3 fec.macaddr=0x7a,0x3f,0x03,0xe3,0xa2,0xff
> >Uncompressing Linux... done, booting the kernel.
> >
> >Error: unrecognized/unsupported machine ID (r1 = 0x00000000).

Looks like the device tree is not actually used. Could you boot with -v
please? Also, could you try a zImage instead of a uImage? Last not
least, does the problem persist on current barebox master?

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
