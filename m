Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKKGl-0002Wi-U4
 for barebox@lists.infradead.org; Tue, 05 Jul 2016 06:55:44 +0000
Date: Tue, 5 Jul 2016 08:55:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160705065522.GN20657@pengutronix.de>
References: <521b64bd91194e5e8e5bdb2bb2f2376f@itk-engineering.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <521b64bd91194e5e8e5bdb2bb2f2376f@itk-engineering.de>
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
Subject: Re: How to overwrite an ext partition on eMMC
To: Martin Hollingsworth <Martin.Hollingsworth@itk-engineering.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 04, 2016 at 12:32:04PM +0000, Martin Hollingsworth wrote:
> Hello folks,
> I'm a little lost when trying to overwrite an ext partition on an eMMC
> memory inside of barebox. Your help finding the mistake is
> appreciated.
> 
> My Setup:
> - Custom board with iMX6, 4GB eMMC and SD card reader (similar to Freescale SabreSD board)
> - Using PTXdist to build barebox 2016.05.0 and linux
> - The eMMC chip offers wear levelling, so I write a filesystem directly to it (using ptxdist created hd.img file flashed directly)
> - The eMMC is partitioned as follows:
> 0x0, Size 1k --> partition table
> 0x400, Size 8M --> barebox and barebox_env (offset 0x400 forced by iMX6)
> 0x800400, Size 1G --> ext filesystem with rootfs and kernel
> 
> With this layout so far everything works fine. Now I would like to
> implement an update mechanism, where barebox erases the complete ext
> partition and replaces it. Under linux I would use something like dd
> and let it start at 0x800400. On barebox I have to use memcpy (thanks
> to Sascha for the hint
> http://lists.infradead.org/pipermail/barebox/2011-April/003308.html )
> and this is where I get stuck.
> 
> So I first add partitions so that the memory area is listed under /dev:
> devfs_add_partition("mmc3", 0x0, SZ_1K, DEVFS_PARTITION_FIXED, "mmc3.partable"); 
> devfs_add_partition("mmc3", SZ_1K, SZ_8M, DEVFS_PARTITION_FIXED, "mmc3.barebox");
> devfs_add_partition("mmc3", ( SZ_1K + SZ_8M ), SZ_1G, DEVFS_PARTITION_FIXED, "mmc3.rootfs");

Why don't you use the partitions from the partition table on the device?
I would assume you use /dev/mmc3.2 for the rootfs.

> 
> This works for clearing the partitions data using memset:
> memset -d /dev/mmc3.rootfs 0x0 0x0 1073741824 
> 
> However when I try to copy the root.ext2 filesystem onto this memory area, I can't mount the partition afterwards:
> memcpy -s /mnt/sd/root.ext2 -d /dev/mmc3.rootfs 0 536870912

memcpy needs <src> <dest> <count> positional arguments. With the above
536870912 is the offset in the destination file and not the size to
copy. What you want is:

memcpy -s /mnt/sd/root.ext2 -d /dev/mmc3.rootfs 0 0 536870912

Anyway, you don't need memset/memcpy at all to accomplish your task, the
following should do it:

cp /dev/zero /dev/mmc3.rootfs
cp /mnt/sd/root.ext2 /dev/mmc3.rootfs

Also I have never seen that it's necessary to erase the remaining parts
of a partition when the new image is smaller than the partition.

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
