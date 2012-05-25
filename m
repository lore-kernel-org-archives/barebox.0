Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ud04.udmedia.de ([194.117.254.44] helo=mail.ud04.udmedia.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXqvs-0006Ub-TD
 for barebox@lists.infradead.org; Fri, 25 May 2012 09:35:42 +0000
Message-ID: <4FBF5268.1040900@crane-soft.de>
Date: Fri, 25 May 2012 11:35:36 +0200
From: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
MIME-Version: 1.0
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de>
In-Reply-To: <20120524195543.GB30400@pengutronix.de>
Reply-To: pkue@crane-soft.de
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Am 24.05.2012 21:55, schrieb Sascha Hauer:
> Hi Peter,
> 
> On Wed, May 23, 2012 at 05:43:52PM +0200, Peter Kuennemann@Crane-Soft wrote:
>> Hi all.
>>
>> I am trying to setup my PCM043/IMX35 board to boot from the
>> USB MMC card but til now I do have have any clue how to manage.
>> Searching the net, did not provide any hints regard that board.
>>
>> I'ld like to have barebox to allow me to use the USB/MMC card
>> as boot device. Is there a chance to boot from SD-Card at all?
> 
> Do you want to start barebox from USB/MMC or do you only want to load
> the kernel from USB/MMC? The latter is possible, though you have to add
> support for it. See arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> for an example how to do it. Basically for MMC you have to configure
> the iomuxer and register the device. USB might be a bit more
> complicated, you have to configure the phy correctly.
> 
> Sascba
> 
Thanks a lot for your reply, Sascha. I'ld really want to load the
Kernel from the MMC and want to have the rootfs there as well. barebox
is goint to stay in flash anyhow.
I already tried to boot the Kernel from NOR/NAND but have problems to
mount the rootfs on MMC.
I think either way should work for us, booting kernel from MMC and having
rootfs on MMC or boot kernel from flash and have rootfs on MMC.
I'll investiage the sample that you referred to but I wonder if you could
point me into right direction regarding the rootfs on MMC?

---

To have kernel in flash and rootfs on MMC i tried bootargs as:

... root=/dev/mmcblk0p1 rootfstype=ext2 rootflags=noatime rw noinitrd rootwait ..

and it boots the kernel properly from flash up to:
...
mmcblk0: mmc0:a95c SD01G 968 MiB     <== Recognized the sd card
 mmcblk0: p1                         <== and partion 1
...
1f00             256 mtdblock0 (driver?)
1f01             128 mtdblock1 (driver?)
1f02            2048 mtdblock2 (driver?)
1f03           30336 mtdblock3 (driver?)
1f04         1048576 mtdblock4 (driver?)
b300          992000 mmcblk0 driver: mmcblk
  b301          991585 mmcblk0p1                    <=== Something missing here?
No filesystem could mount root, tried:  ext2        <===
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(179,1) <===

The mmc does contain a ext2 filesystem with the proper rootfs copied from
the jffs2.image that I mounted under Ubuntu as loop device. The kernel has ext2 fs
support compiled in.

The rootfs on the mmc is properly accessible when booting kernel and flash footfs
on the very same platform.

Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
