Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4pXE-0006Bi-Ev
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 08:46:33 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1T4pX7-0006Dv-94
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 10:46:25 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1T4pX8-00017F-E5
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 10:46:26 +0200
Message-ID: <1345797986.3519.4.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 24 Aug 2012 10:46:26 +0200
In-Reply-To: <50366F9B.2080007@crane-soft.de>
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de> <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de> <4FEBFF6C.6010304@crane-soft.de>
 <20120628104341.GW1623@pengutronix.de> <50366F9B.2080007@crane-soft.de>
Mime-Version: 1.0
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
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: barebox@lists.infradead.org

Hi!

On Thu, 2012-08-23 at 19:59 +0200, Peter wrote:
> I am able to boot the kernel from NOR flash and use the mmc as rootfs. However
> I did not yet find a way to boot the kernel from the MMC. I set up the MMC
> with 255 heads, 63 sectors/track, 245 cylinders and formated partition 1 as
> VFAT and made it bootable. I then copied uImage to it. Partition 2 contains
> the rootfs which can be used when booting the kernel from flash.
> 
> Barebox /env/config contains: (besides others)
> ...
>  kernel_loc=disk
>  rootfs_loc=disk
>  rootfs_type=ext2
>  rootfs_part_linux_dev=mmcblk0p2
>  kernel_part=disk0.0
> ...
> 
> Trying to boot results in:
> booting kernel from /dev/disk0.0
> 
> and then followed by the barebox prompt.

You're using the old default-env which does not support uImage on FAT
(only a kernel directly in a partition). Either switch to default-env-2
and mount the FAT ('mount /dev/disk0.0 fat /mnt') before loading the
kernel from /mnt/uImage.

Otherwise for the old default-env take a look at
<1345472428-17417-13-git-send-email-jlu@pengutronix.de>. Note that for
that to work, the FAT must be mounted by the board code or you need to
setup an automount.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
