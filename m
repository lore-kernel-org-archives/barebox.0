Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ToFEN-0000f8-Gz
 for barebox@lists.infradead.org; Thu, 27 Dec 2012 15:18:48 +0000
Received: from mail431.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D7255DC0A0D
 for <barebox@lists.infradead.org>; Thu, 27 Dec 2012 16:27:39 +0100 (CET)
Date: Thu, 27 Dec 2012 16:17:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121227151708.GA7216@game.jcrosoft.org>
References: <50d1a8869abc04.36394132@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50d1a8869abc04.36394132@wp.pl>
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
Subject: Re: Barebox under qemu for beagleboard
To: Jerzy Grzegorek <jurekgabpl@wp.pl>
Cc: barebox@lists.infradead.org

On 12:44 Wed 19 Dec     , Jerzy Grzegorek wrote:
>    Hi,
> 
>    I was trying to run barebox-2012.12.1 under linaro-qemu 2012.12, for
>    beagleboard.
> 
>    I build MLO (omap3530_beagle_xload_defconfig) and barebox-flash-image
>    (omap3530_beagle_defconfig).
> 
>    I prepared two partitions sd image - beagle.sd.img (first partition FAT :
>    MLO, barebox.bin, barebox-flash-image, zImage;  second partition EXT3 :
>    rootfs).
> 
>    I run linaro-qemu
> 
>    qemu-system-arm -M beagle -m 256M -nographic -sd beagle.sd.img
> 
>    and I got
> 
>    barebox 2012.12.1 #1 Wed Dec 19 08:35:21 CET 2012
> 
>    Board: Texas Instrument's Beagle
>    NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba ( ), page size: 2048,
>    OOB size: 64
>    omap-hsmmc omap-hsmmc0: registered as omap-hsmmc0
>    mci mci0: registered disk0
>    malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
>    stack space:  0x4020f000 -> 0x4020fc00 (size  3 kB)
>    unknown boot source. Fall back to nand
>    booting from NAND
>    failed to get image size
>    booting failed
> 
>    next qemu freezes.
> 
>    Any idea?
I guess qemu does not set the boot register correctly so barebox can not
detect that you want to boot from sd and falback to nand

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
