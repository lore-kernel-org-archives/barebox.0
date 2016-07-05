Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKNG4-0003BB-9c
 for barebox@lists.infradead.org; Tue, 05 Jul 2016 10:07:13 +0000
Date: Tue, 5 Jul 2016 12:06:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160705100650.GQ20657@pengutronix.de>
References: <521b64bd91194e5e8e5bdb2bb2f2376f@itk-engineering.de>
 <20160705065522.GN20657@pengutronix.de>
 <a8a601101c984586baf1df242e0eef5b@itk-engineering.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8a601101c984586baf1df242e0eef5b@itk-engineering.de>
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

On Tue, Jul 05, 2016 at 09:32:30AM +0000, Martin Hollingsworth wrote:
> Hi Sascha,
> huge thanks, that was just the right push in the right direction. Both suggested methods - cp and memcpy - work fine. Problem solved.
> 
> > Why don't you use the partitions from the partition table on the device?
> > I would assume you use /dev/mmc3.2 for the rootfs.
> 
> I assume you are referring to using "detect -a" to find the device,
> which is then registered as mmc3.0 (for first partition). As I was
> struggling to write the root.ext2 onto that device I decided to try
> using the devfs_add_partition() method, as all nand flash based
> devices I have as reference use this approach. However I just
> verified, using the detected partition works as well and it is
> probably the better way of doing it, as the partitions can be moved
> around more easily.
> 
> In another side question you write: "I would assume you use
> /dev/mmc3.2 for the rootfs". As I currently only copy the Barebox raw
> onto the eMMC offset 0x400 for iMX6 it is not listed as partition
> under /dev/. What is the standard approach here, should the Barebox
> best be a FAT32 partition so it is listed?

For updating barebox you should use a barebox update handler. Register
it with imx6_bbu_internal_mmc_register_handler() and use the
barebox_update command to update barebox. This way you can be sure that
you only write suitable files on the device and also the partition table
is preserved properly.

eMMC devices also often have boot partitions which can be used to store
barebox. These allow to put barebox away from the regular storage where
it can't be overwritten that easily. You can copy barebox to
/dev/mmc3.boot0 (Or let the mentioned update handler point to that
place) and set mmc3.boot=boot0 to let the i.MX6 ROM know that it should
boot from there.

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
