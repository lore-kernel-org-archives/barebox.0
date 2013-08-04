Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f54.google.com ([209.85.215.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V64uJ-00079N-I0
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 20:28:06 +0000
Received: by mail-la0-f54.google.com with SMTP id ea20so1535670lab.41
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 13:27:38 -0700 (PDT)
Received: from localhost.localdomain ([83.149.8.89])
 by mx.google.com with ESMTPSA id am8sm7940216lac.1.2013.08.04.13.27.35
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sun, 04 Aug 2013 13:27:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Aug 2013 00:25:22 +0400
Message-Id: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 0/5] JUST-FOR-FUN: run barebox on Canon digital camera
To: barebox@lists.infradead.org

Please don't commit the patches!

This patch series introduce minimal support
for Canon DIGIC4-based cameras.

Supported cameras:

 * Canon PowerShot A1100;
 * Canon EOS 600D;
 * Canon EOS Magic Lantern qemu-based emulator.

After booting barebox starts compiled-in script
that use 'mw' command to blink camera's LED.

Just now barebox for Canon cameras is a demo
but after some improvements it can become very
handy tool for CHDK and Magic Lantern development.

Very short Instruction
======================

***************************************************
*                                                 *
* THIS IS DANGEROUS AND MIGHT DAMAGE YOUR CAMERA. *
*  NO WARRANTIES.  NO GUARANTEES.  DO NOT TAUNT.  *
*                                                 *
***************************************************

1. Canon EOS 600D DSLR
----------------------

1.1 Install Magic Lantern firmware on SD-card
 (see http://magiclantern.wikia.com/wiki/Unified/Install#First-time_installation)

1.2 Download and build barebox
    $ git clone -b next.digic https://github.com/frantony/barebox barebox.digic
    $ cd barebox.digic
    $ export ARCH=arm
    $ export CROSS_COMPILE=<your_ARM_toolchain_prefix>
    $ make canon-600d_defconfig
    $ make

You will get the 'arch/arm/pbl/zbarebox.bin' file.

1.3 Overwrite Magic Lantern boot file on your 600D SD-card with the 'zbarebox.bin' file.
E.g., if your SD-card is mounted to the '/mnt/sd' dir, then

    $ sudo cp arch/arm/pbl/zbarebox.bin /mnt/sd/autoexec.bin

1.4 Insert SD-card into your camere.

1.5 Close your camera's SD-card slot.

1.6 Just after SD-card slot closing the barebox will start.
If all going well the SD-card led start blink.

1.7 Uninstall barebox
Remove battery from your camera and erase the 'autoexec.bin'
file from your SD-card.

2. Canon EOS emulator
---------------------

2.1 Download Magic Lantern sources

$ hg clone https://bitbucket.org/hudson/magic-lantern
$ cd magic-lantern

2.2 Setup your build environment

E.g., for Debian Linux:

$ cat > Makefile.user
RST2LATEX=rst2latex
PYTHON=python

GCC_VERSION=
CROSS_COMPILE=<your toolchain path>
<ctrl-d>
$

2.3 Buld Magic Lantern for 600D

$ make 600D

If all going well you can try qemu.

2.4 Bulding qemu

 $ cd contrib/qemu
 $ ./install.sh

 ...

 Use install.sh prompt:
  1) Compile QEMU
  2) Grab a copy of the Canon firmware
  3) Enable CONFIG_QEMU=y in your Makefile.user

2.5 Build barebox image (see paragraph 1.2 Download and build barebox)

Don't forget to edit arch/arm/boards/canon-600d/env/bin/init
__before__ build: comment the 'while true; do' and
the 'done' strings.

2.6 Copy zbarebox.bin to autoexec.bin in your qemu dir.

2.7 Go to your qemu dir and start emulation with ./run_ml_600D.sh

3. Canon PowerShot A1100 IS
---------------------------
Installing to the A1100 camera is a bit tricky as you need
"encrypt" barebox image.

3.1 Install CHDK firmware on SD-card
 (see http://chdk.wikia.com/wiki/CHDK_For_Newbies_-_How_To_Install
 and http://chdk.wikia.com/wiki/A1100).

3.2 Make your SD-card bootable
 (see http://chdk.wikia.com/wiki/Prepare_your_SD_card)

3.3 Download and build barebox
    $ git clone -b next.digic https://github.com/frantony/barebox barebox.digic
    $ cd barebox.digic
    $ export ARCH=arm
    $ export CROSS_COMPILE=<your_ARM_toolchain_prefix>
    $ make canon-a1100_defconfig
    $ make

You will get the 'arch/arm/pbl/zbarebox.bin' file.

3.4 Download CHDK sources

    $ git clone https://github.com/c10ud/CHDK.git
    $ cd CHDK

3.5 Build the 'dancingbits' encoder
    $ cd tools
    $ cc -o dancingbits dancingbits.c

3.6 encode your barebox image

Go to your barebox dir

3.6.1 Make zbarebox.bin > 128K; camera don't like small binaries :)

    $ dd if=/dev/zero bs=1k count=128 >> arch/arm/pbl/zbarebox.bin

3.6.2 encode

    $ <path-to-dancingbits> arch/arm/pbl/zbarebox.bin DISKBOOT.BIN 2

3.7 Overwrite CHDK boot file on your SD-card with the 'DISKBOOT.BIN' file.

3.9 Lock your SD-card (use small switch on the card).

3.10 Insert SD-card into your camera.
Close your camera's SD-card slot.

3.11 Turn your camera on.
If all going well the 'direct print' led start blink.

3.12 Uninstall barebox
Remove battery from your camera and erase the 'DISKBOOT.BIN'
file from your SD-card.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
