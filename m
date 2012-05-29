Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJS0-0003Dn-V3
 for barebox@lists.infradead.org; Tue, 29 May 2012 10:14:53 +0000
Date: Tue, 29 May 2012 12:14:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529101450.GS30400@pengutronix.de>
References: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
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
Subject: Re: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 11:49:24AM +0200, Roberto Nibali wrote:
> Hi
> 
> Barebox barfs if I try to copy a file inside a mounted MMC fat partition.
> 
> Steps to reproduce:
> 
> 1.) Load barebox (configured as internal boot MMC) as a second stage boot
> loader from uboot.
> 2.) Mount MMC fat partition
> 3.) Try to copy file to the same partition
> 
> This results in this nice BUG():
> 
> Board: SID1 NOAH
> registered netconsole as cs1
> noah_read_ccm_regs: CCM CRDR = 00000000
> noah_read_ccm_regs: CCM RCSR = 01020820
> noah_read_ccm_regs: Booting from WEIM: NOR
> imx-esdhc@mci0: registered as mci0
> mci@mci0: registered disk0
> imx25_devices_init: Adding NOR flash device
> cfi_flash@cfi_flash0: cfi flash (id=01000000 vend=000002 manu=000001
> devid=00007E extid=002301) at a0000000, size 64MB
> imx25_devices_init: Adding initial NOR flash partitions
> ehci@ehci0: USB EHCI 1.00
> Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
> Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
> envfs: wrong magic on /dev/env0
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> 
> Hit any key to stop autoboot:  5
> 
> type update_kernel nor [<imagename>] to update kernel into flash
> type update_root nor [<imagename>] to update rootfs into flash
> 
> sid1-noah:/ mkdir /mnt
> sid1-noah:/ mount /dev/disk0.0 fat /mnt
> sid1-noah:/ time cp /mnt/console_image.jffs2 /mnt/console_image.jffs2-backup
> BUG: failure at common/block.c:248/block_put()!
> BUG!

to BUG here seems a bit harsh. block_put calls block_get and then BUGs
when block_get fails. Presumely block_cache fails here. Can you add a
printf int block_cache after blk->ops->read and print the error value?


I just saw that there's room for optimization. In block_put we call
block_get which reads from the device, just to overwrite the data
afterwards.


> I reckon it might be something I shouldn't be doing, however I thought I
> still report it here.

What you are trying to do should work.

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
