Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f219.mail.ru ([94.100.178.210])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuS0u-0005GS-ID
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 18:42:50 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 03 Jul 2013 22:42:23 +0400
Message-ID: <1372876943.127000271@f219.mail.ru>
In-Reply-To: <51D46DB2.90002@knowtrek.com>
References: <51B0B2D6.3030407@knowtrek.com>
 <20130703165835.GP516@pengutronix.de> <51D46DB2.90002@knowtrek.com>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IHNldCByb290IHZhcmlhYmxlIGZvciB1SW1hZ2U/?=
To: =?UTF-8?B?QWRhbSBGdXJtYW5jenVr?= <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

> >> I restate this question from my previous thread "how to flash and
> >> set root variable". Thanks very much to Sascha and Alexander for
> >> introducing into barebox building and flashing.
> >> 
> >> I have a basic scenario. Want to boot uImage and then hand over 
> >> to the root partition. With u-Boot this was very easy:
> >> 
> >> setenv bootargs "console=tty0 console=ttymxc0,115200n8 
> >> root=/dev/mmcblk0p3 rootfstype=ext4 rootwait ro"
> >> 
> >> With barebox however, when I boot the uImage, it complains about
> >>  not setting correct "root=".:
> >> 
> >> [ 1.718527] VFS: Cannot open root device "(null)" or 
> >> unknown-block(0,0): error -6 [ 1.726226] Please append a correct
> >>  "root=" boot option; here are the available partitions:
> >> 
> >> Now what i do in Barbox is the following;
> >> 
> >> (hint enter to go into console) barebox@myhost:/ mkdir /media2 
> >> barebox@myhost:/ mount /dev/disk0.1 fat /media2 barebox@myhost:/
> >>  bootm /media2/uImage root=/dev/mmcblk0p3 rootfstype=ext4
> > 
> > the bootm command evaluates the 'bootargs' environment variable,
> > so before executing bootm do a:
> > 
> > export bootargs="root=/dev/mmcblk0p3 rootfstype=ext4"
> > 
> > (sidenote: This is not documented with 'help bootm', shame on us. 
> > Try the 'magicvar' command instead which lists all variables with 
> > special meanings)
> > 
> > Sascha
> > 
> 
> Hi Sascha,
> 
> it does not seem to work for me, I typed:
> 
> mkdir /mnt/disk1
> bootargs="root=/dev/mmcblk0p3 rootfstype=ext4"
> mount /dev/disk0.1 fat /mnt/disk1
> bootm /mnt/disk1/uImage
> 
> 
> I choose different values for root, like "mmcblk0p3","/dev/mmcblk0p1",
> "b303" ...
> 
> I am running MX53QSB with barebox 2013.05 build get this output:
> 
> VFS: Cannot open root device "(null)" or unknown-block(2,0)
> Please append a correct "root=" boot option; here are the available
> partitions:
> b300         3872256 mmcblk0 driver: mmcblk
>   b301             512 mmcblk0p1
>   b302           16384 mmcblk0p2
>   b303         3854336 mmcblk0p3
> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(2,0)
> 
> 
> Note: Unknown block is always (2,0) no matter what i try to specify.
> 
> This problem might be related to mx53 architecture only.

Probably you need "rootwait" option, same as you specify for u-boot.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
