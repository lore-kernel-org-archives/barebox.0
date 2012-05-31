Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaAoH-0007Fj-Ko
 for barebox@lists.infradead.org; Thu, 31 May 2012 19:13:26 +0000
Received: by wibhm14 with SMTP id hm14so983697wib.0
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 12:13:23 -0700 (PDT)
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de> <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de>
In-Reply-To: <20120531182724.GA30400@pengutronix.de>
Mime-Version: 1.0 (1.0)
Message-Id: <522FDB4A-4438-4833-A801-D52C53F121D0@crane-soft.de>
From: CRANESOFT <sailingsmoky@googlemail.com>
Date: Thu, 31 May 2012 21:13:07 +0200
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


Am 31.05.2012 um 20:27 schrieb Sascha Hauer <s.hauer@pengutronix.de>:

> Hi Peter,
> 
> On Fri, May 25, 2012 at 11:35:36AM +0200, Peter Kuennemann@Crane-Soft wrote:
>> 
>> 
>> To have kernel in flash and rootfs on MMC i tried bootargs as:
>> 
>> ... root=/dev/mmcblk0p1 rootfstype=ext2 rootflags=noatime rw noinitrd rootwait ..
>> 
>> and it boots the kernel properly from flash up to:
>> ...
>> mmcblk0: mmc0:a95c SD01G 968 MiB     <== Recognized the sd card
>> mmcblk0: p1                         <== and partion 1
>> ...
>> 1f00             256 mtdblock0 (driver?)
>> 1f01             128 mtdblock1 (driver?)
>> 1f02            2048 mtdblock2 (driver?)
>> 1f03           30336 mtdblock3 (driver?)
>> 1f04         1048576 mtdblock4 (driver?)
>> b300          992000 mmcblk0 driver: mmcblk
>>  b301          991585 mmcblk0p1                    <=== Something missing here?
>> No filesystem could mount root, tried:  ext2        <===
>> Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(179,1) <===
>> 
>> The mmc does contain a ext2 filesystem with the proper rootfs copied from
>> the jffs2.image that I mounted under Ubuntu as loop device. The kernel has ext2 fs
>> support compiled in.
>> 
>> The rootfs on the mmc is properly accessible when booting kernel and flash footfs
>> on the very same platform.
> 
> Has this been solved in the mean time? The above looks correct, I have
> no idea what's wrong.
> 
> Sascha
> 
Sascha,
I am sorry but this issue has not yet been resolved. I am currently out of office but will pick it up after my return. It may well be a Kernel configuration Problem.

Peter
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
