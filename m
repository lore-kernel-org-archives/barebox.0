Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REGyt-0006ei-Gd
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 08:49:36 +0000
Received: by iarr31 with SMTP id r31so1265126iar.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 01:49:30 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Oct 2011 10:49:30 +0200
Message-ID: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
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
Subject: Booting Pandaboard from SD card
To: barebox@lists.infradead.org

Hi,
currently I try to get a Pandaboard to boot out of Barebox, so far I
got Barebox up and running.


For testing purpose I'd like to boot from a SD card, optimal would be
if I could set up the card like the description in the Omappedia
tutorial [1].
Is there a tutorial how to set up barebox to boot from SD cards?


What I already tried:

In the configuration file from arch/arm/boards/panda/env is the
description for a network boot configuration,
I used this file to start out and wanted to boot from the barebox prompt.

Barebox is build from my toolchain and i copy the MLO file, the
barebox.bin and the bareboxenv file to the boot partition of the card.
For convenience I currently use a precompiled MLO that has been made
for u-boot thus I just renamed the barebox.bin file to u-boot.bin.

On startup the following messages were displayed:
-
Texas Instruments X-Loader 1.5.1 (Sep  6 2011 - 13:37:48)
Reading boot sector
Loading u-boot.bin from mmc


barebox 2011.10.0 (Oct 13 2011 - 09:45:17)

Board: Texas Instrument's Panda
PandaBoard Revision: 003
ehci@ehci0: USB EHCI 1.00
Malloc space: 0x8d000000 -> 0x8f000000 (size 32 MB)
Stack space : 0x8cff8000 -> 0x8d000000 (size 32 kB)
running /env/bin/init...
not found
-
For me it looks like i forgot to copy a file or something, any advice?


Although booting the uImage with bootm looks ok it won't work, the
following message was displayed:
-
Verifying Checksum ... OK
   Image Name:   Angstrom/2.6.35.7/omap4430-panda
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3688408 Bytes =  3.5 MB
   Load Address: 80008000
   Entry Point:  80008000
OK

Starting kernel ...

commandline: <NULL>
arch_number: 2791
Uncompressing Linux... done, booting the kernel.
-
The screen just stays blank after the last message.
This looks to me like it is (obviously) caused by an incorrect
environment loaded.


Help would be appreciated.

[1] http://www.omappedia.com/wiki/Minimal-FS_SD_flashing (using 2
partitions, one for boot files and the other for the rootfs)

-- 
Regards
Samuel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
