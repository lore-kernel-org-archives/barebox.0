Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from susu.bendor.com.au ([203.16.199.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q5zCT-00014L-IR
	for barebox@lists.infradead.org; Sat, 02 Apr 2011 11:41:07 +0000
Received: from manocska.bendor.com.au (manocska.bendor.com.au [203.16.199.6])
	by susu.bendor.com.au (Postfix) with ESMTP id 7FACE86E
	for <barebox@lists.infradead.org>; Sat,  2 Apr 2011 22:41:01 +1100 (EST)
Date: Sat, 2 Apr 2011 22:41:01 +1100
From: =?UTF-8?B?Wm9sdMOhbiBLw7Njc2k=?= <zoltan@bendor.com.au>
Message-ID: <20110402224101.7c9506e8@manocska.bendor.com.au>
Mime-Version: 1.0
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
Subject: Mini2440 questions
To: barebox@lists.infradead.org

I've got two issues. One is barebox related:

Does the current git master branch supposed to boot from NAND?
Download, config (mini2440 defconfig + very little personalisation),
compile. Boot from NAND *is* enabled in the config.

Load to RAM and start: starts up just fine.
Boot from NAND: nothing.

I looked at the actual binary image with objdump -d and it seems to
initialise the PLL, the SDRAM controller and load the NAND into the
RAM, then jump onto it. All that code is within the 4K StepStone range.
However, nothing happens, the board is dead.

The other problem is not barebox related, but considering the audience
of the list someone might have some ideas.

Linux kernel, 2.6.37.2. Defconfig for mini2440. A fairly minimalistic
kernel is then configured, dev. drivers for on-board stuff are static,
everything else is modules. Low-level debug messages are enabled.

Booting the kernel (using vivi...) hangs, just after the console is
initialised:

Copy linux kernel from 0x00060000 to 0x30008000, size = 0x002a0000 ...
done
zImage magic = 0x016f2818
Setup linux parameters at 0x30000100
linux command line is: "noinitrd root=/dev/mtdblock3 init=/linuxrc
console=ttySAC0,115200"
MACH_TYPE = 1999
NOW, Booting Linux......
Uncompressing Linux... done, booting the kernel.
s3c24xx_serial_initconsole
s3c24xx_serial_init_ports: initialising ports...
s3c24xx_serial_init_port: port=c03a6378, platdev=c03b9ab0
s3c24xx_serial_init_port: c03a6378 (hw 0)...
resource c0397b10 (50000000..50003fff)
port: map=50000000, mem=f7000000, irq=70 (70,71), clock=1
s3c2440_serial_resetport: port=c03a6378 (50000000), cfg=c03b9a24
s3c24xx_serial_init_port: port=c03a6434, platdev=c0398d00
s3c24xx_serial_init_port: c03a6434 (hw 1)...
resource c0397b48 (50004000..50007fff)
port: map=50004000, mem=f7004000, irq=73 (73,74), clock=1
s3c2440_serial_resetport: port=c03a6434 (50004000), cfg=c03b9a44
s3c24xx_serial_init_port: port=c03a64f0, platdev=c0398db8
s3c24xx_serial_init_port: c03a64f0 (hw 2)...
resource c0397b80 (50008000..5000bfff)
port: map=50008000, mem=f7008000, irq=76 (76,77), clock=1
s3c2440_serial_resetport: port=c03a64f0 (50008000), cfg=c03b9a64
s3c24xx_serial_init(c03a665c,c03a6628)
s3c2440_serial_probe: dev=c03b9ab0
s3c24xx_serial_probe(c03b9ab0, c03a6628) 0
s3c24xx_serial_probe: initialising port c03a6354...
s3c24xx_serial_init_port: port=c03a6378, platdev=c03b9ab0
s3c24xx_serial_probe: adding port
s3c2440_serial_probe: dev=c0398d00
s3c24xx_serial_probe(c0398d00, c03a6628) 1
s3c24xx_serial_probe: initialising port c03a6410...
s3c24xx_serial_init_port: port=c03a6434, platdev=c0398d00
s3c24xx_serial_probe: adding port
s3c2440_serial_probe: dev=c0398db8
s3c24xx_serial_probe(c0398db8, c03a6628) 2
s3c24xx_serial_probe: initialising port c03a64cc...
s3c24xx_serial_init_port: port=c03a64f0, platdev=c0398db8
s3c24xx_serial_probe: adding port

and then nothing. A LED on the board is blinking (two blinks, maybe
100ms apart, then about 200ms pause) but nothing comes out of the
serial port. The LCD backlight is off and there doesn't seem to be
either a splash image or debug info on it (console on LCD is enabled).

The build environment is the latest buildroot, 4.5.2 gcc, 0.9.31 uClibc,
everything is built from scratch (that's actually the aim of the whole
excercise, to build a working Linux system on a Mini2440 HW from clean,
up-to-date sources, not pre-built toolchains and pre-compiled packages
or binary images).

Any pointers would be highly appreciated.

Thanks,

Zoltan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
