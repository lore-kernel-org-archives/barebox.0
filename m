Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Runpu-0007gM-GE
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:24:07 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id q17GO3hG019284
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 10:24:04 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q17GO2iK007192
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 21:54:03 +0530 (IST)
From: "Premi, Sanjeev" <premi@ti.com>
Date: Tue, 7 Feb 2012 16:24:02 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A8931834282@DBDE01.ent.ti.com>
References: <1328631414-19427-1-git-send-email-premi@ti.com>
In-Reply-To: <1328631414-19427-1-git-send-email-premi@ti.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [PATCH 0/2] omap3evm: Enable Linux boot
To: "Premi, Sanjeev" <premi@ti.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Premi, Sanjeev 
> Sent: Tuesday, February 07, 2012 9:47 PM
> To: barebox@lists.infradead.org
> Cc: Premi, Sanjeev
> Subject: [PATCH 0/2] omap3evm: Enable Linux boot
> 
> These patches are necessary enable Linux boot from
> barebox.bin.
> 
> Both patches apply against the 'next' branch at:
> 
> Linux still doesn't boot successfully, and changes
> are necessary in the defconfig and default env.
> Will submit the patches once I have done some more
> debug.
> 
> Will share the failure log in reponse to this patch
> (just to prevent clutter in this description).
> 
> Sanjeev Premi (2):
>   omap3evm: Remove inclusion of non-existent header
>   omap3evm: Setup ATAGs for Linux boot
> 
>  arch/arm/boards/omap3evm/board.c |    5 ++++-
>  1 files changed, 4 insertions(+), 1 deletions(-)
> 

My local init script uses this command to boot Linux:
bootm -c -v /mnt/uImage

As noted in the original description, Linux doesn't boot
successfully. Debugger indicates an exception - but need
to investigate further.

Here is the log:

barebox 2012.01.0-00248-g9119228-dirty (Feb  7 2012 - 21:08:10)

Board: Texas Instrument's OMAP3EVM
Malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
Stack space : 0x4020f000 -> 0x4020fc00 (size  3 kB)
booting from MMC1


barebox 2012.01.0-00248-g9119228-dirty (Feb  7 2012 - 21:09:16)

Board: Texas Instrument's OMAP3EVM
Malloc space: 0x80c00000 -> 0x80ffffff (size  4 MB)
Stack space : 0x80bf8000 -> 0x80c00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

:: Press any key to stop autoboot:  0

::
:: Booting from disk ...
::
   Image Name:   Linux-3.3.0-rc1-11551-g1c6ece3
   Created:      2012-02-07  16:08:10 UTC
   OS:           Linux
   Architecture: ARM
   Type:         Kernel Image
   Compression:  uncompressed
   Data Size:    3382624 Bytes =  3.2 MB
   Load Address: 80008000
   Entry Point:  80008000

Loading OS U-Boot uImage '/mnt/uImage'
OS image is at 0x80008000-0x80341d5f
Passing control to ARM Linux uImage handler

Starting kernel at 0x80008000...
commandline: console=tty02,115200n8 mem=256M earlyprintk=serial,ttyO2,115200 noinitrd root=/dev/mmcblk0p2 rw rootfstype=ext3 ip=dhcp
arch_number: 1535

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
