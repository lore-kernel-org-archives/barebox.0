Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-f193.google.com ([209.85.128.193])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VA2kp-0006XQ-P7
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 18:58:40 +0000
Received: by mail-ve0-f193.google.com with SMTP id ox1so300136veb.0
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 11:58:15 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 15 Aug 2013 14:58:15 -0400
Message-ID: <CAJyuEedwD--ZJX0j5vBnb4s495FX=TK2fRkx9fMKWNKh3AVShw@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting BareBox to Variscite iMX6 SOM
To: barebox@lists.infradead.org

I figured I'd throw this question out to everyone (Sascha has already
been very helpful,
but I don't want to pester him too much!).

I have currently been attempting to port BareBox over to a Variscite
SOM with an iMX6Q
on it.

Steps followed so far:

1) Started from current 8.2013 BareBox
2) Started from ARM2 iMX6 version which is a fairly clean/uncluttered version.
3) Migrated the DCD registers from Variscite's known working u-Boot
BSP into flash_header.c
4) (Hopefully) properly verified the flash header information
5) Verified the arm_entry and size in lowlevel.c
6) Updated board.c with a set of reasonable IOMUX settings, etc.
7) Added a few simple commands at the start of xxx_devices_init() to
toggle a GPIO LED
8) Compiled BareBox on Ubuntu 12 w/Linaro tool chain
9) copied image to SD card with dd if=barebox.bin of=/dev/sdb bs=512
seek=2 skip=2 conv=fsync
10) attempted to boot the image from SD with the appropriate GPIO
strappings on BOOT_CFG pins.

The end result is, as far as I can tell, nothing happens. It attempts
to boot the code but never
succeeds in starting BareBox (my LED never changes state).

If I do the exact same operations but with the Variscite version of
u-Boot (with my LED toggle code
added) then everything works as expected.

Does anyone have any suggestions on what to try next or any thing I
may have overlooked?

Has anyone else out there attempted to port BareBox to the Variscite SOM's?

Any and all help would be greatly appreciated!

Thanks,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
