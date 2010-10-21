Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gw0-f49.google.com ([74.125.83.49])
	by casper.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P8zNM-0005Gk-CF
	for barebox@lists.infradead.org; Thu, 21 Oct 2010 17:56:29 +0000
Received: by gwj17 with SMTP id 17so344938gwj.36
	for <barebox@lists.infradead.org>; Thu, 21 Oct 2010 10:55:17 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 21 Oct 2010 12:55:16 -0500
Message-ID: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
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
Subject: Beagleboard and barebox problem
To: barebox@lists.infradead.org

Hey I am new on bare box I have download it from git repo and when I
make the barebox.bin with omap3530_beagle_defconfig this is the output

Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
Reading boot sector
Loading u-boot.bin from mmc


barebox 2010.10.0-00086-ga14c018 (Oct 21 2010 - 12:19:10)

Board: Texas Instrument's Beagle
I2C probe
i2c-omap@i2c-omap0: bus 0 rev3.12 at 100 kHz
ehci@ehci0: USB EHCI 1.00
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND 256MiB
1,8V 16-bit)
Malloc space: 0x80c00000 -> 0x81000000 (size  4 MB)
Stack space : 0x80bf8000 -> 0x80c00000 (size 32 kB)
Open /dev/env0 No such file or directory
running /env/bin/init...
not found
barebox> ls
.      ..     dev
barebox> ls /dev/
zero         mem          ram0         twl4030      nand0
nand_oob0


And when I compile with omap3530_beagle_per_uart_defconfig

This is the output

Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
Reading boot sector
Loading u-boot.bin from mmc


barebox 2010.10.0-00086-ga14c018 (Oct 21 2010 - 12:41:33)

Board: Texas Instrument's Beagle
Malloc space: 0x87bfff10 -> 0x87ffff10 (size  4 MB)
Stack space : 0x87bf7f10 -> 0x87bfff10 (size 32 kB)
running /env/bin/init...
not found
X-load Beagle>ls
Unknown command 'ls'
X-load Beagle>help
Unknown command 'help'

And the same to all the commands

What I am looking for is to use bare box with MMC, the kernel image
and the File System are on the MMC on different partitions, I have
tested them and work perfect with the traditioanl u-boot.

I really want to try this new boat loader

Thanks

Victor Rodriguez

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
