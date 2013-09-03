Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f174.google.com ([209.85.216.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGgGM-0003rU-QG
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 02:22:40 +0000
Received: by mail-qc0-f174.google.com with SMTP id e9so1469717qcy.19
 for <barebox@lists.infradead.org>; Mon, 02 Sep 2013 19:22:13 -0700 (PDT)
From: Darren Garnier <dgarnier@reinrag.net>
Message-Id: <66093911-C934-41E4-BEDD-5AE4B9AD934B@reinrag.net>
Date: Mon, 2 Sep 2013 22:22:11 -0400
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
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
Subject: [PATCH 0/4] ARM: support for CPODC2 board
To: barebox@lists.infradead.org

I'm a little new to contributing upstream, so please bear with me.

These are patches against the "next" that allow for a beautifully functional build of barebox
for the CPO Science DataCollector II device.  Kudos to the barebox team for a very functional 
piece of software.

In case you are wondering, the CPO DC2 is an at91sam9261 and at91sam9g10 based board used
for taking scientific measurements in a middle school classroom setting.  Its similar to the Atmel ek
board, except it has a co-processor MCU for the data taking (and backlight control.)

Besides adding the board support, I found a couple of places where changes in the tree were required.

First, MTD was assuming for eraseblocks that they are a power of two. This is not the case for Atmel DataFlash.

Second, for the at91sam9261 soc, not all have intensity bit... so this was taken out of the mach-at91 and 
put into the board file where it belonged.

The third patch are small changes to the build system that should be portable and allow it to run on MacOSX 10.8.

Finally, the fourth patch is my board support.


Darren Garnier (4):
 mtd: fix erasesize math for non power-of-2 devices
 AT91: move have_intensity_bit into board setup
 small tweeks to build system for compatibility on MacOS X
 ARM: support for CPO Science DataCollector II

Makefile                                  |   6 +-
arch/arm/boards/Makefile                  |   1 +
arch/arm/boards/at91sam9261ek/init.c      |   2 +
arch/arm/boards/cpodc2/Makefile           |   4 +
arch/arm/boards/cpodc2/env/boot/dataflash |  10 +
arch/arm/boards/cpodc2/env/boot/net-usb   |  22 ++
arch/arm/boards/cpodc2/env/config-board   |   6 +
arch/arm/boards/cpodc2/env/dfu.png        | Bin 0 -> 1669 bytes
arch/arm/boards/cpodc2/env/init/automount |  12 +
arch/arm/boards/cpodc2/env/init/msp430    |  10 +
arch/arm/boards/cpodc2/env/init/mtdparts  |  19 ++
arch/arm/boards/cpodc2/env/init/splash    |   8 +
arch/arm/boards/cpodc2/env/init/usb       |  55 ++++
arch/arm/boards/cpodc2/env/splash.png     | Bin 0 -> 1356 bytes
arch/arm/boards/cpodc2/env/usb.png        | Bin 0 -> 339 bytes
arch/arm/boards/cpodc2/init.c             | 364 +++++++++++++++++++++
arch/arm/boards/cpodc2/lowlevel_init.c    | 108 +++++++
arch/arm/boards/cpodc2/msp430.c           | 513 ++++++++++++++++++++++++++++++
arch/arm/boards/cpodc2/msp430.h           |  23 ++
arch/arm/configs/cpodc2_defconfig         |  96 ++++++
arch/arm/mach-at91/Kconfig                |  24 ++
arch/arm/mach-at91/at91sam9261_devices.c  |   2 -
drivers/mtd/core.c                        |  19 +-
fs/devfs-core.c                           |   4 +-
scripts/genenv                            |   3 +-
25 files changed, 1296 insertions(+), 15 deletions(-)
create mode 100644 arch/arm/boards/cpodc2/Makefile
create mode 100755 arch/arm/boards/cpodc2/env/boot/dataflash
create mode 100755 arch/arm/boards/cpodc2/env/boot/net-usb
create mode 100755 arch/arm/boards/cpodc2/env/config-board
create mode 100644 arch/arm/boards/cpodc2/env/dfu.png
create mode 100755 arch/arm/boards/cpodc2/env/init/automount
create mode 100644 arch/arm/boards/cpodc2/env/init/msp430
create mode 100755 arch/arm/boards/cpodc2/env/init/mtdparts
create mode 100755 arch/arm/boards/cpodc2/env/init/splash
create mode 100755 arch/arm/boards/cpodc2/env/init/usb
create mode 100644 arch/arm/boards/cpodc2/env/splash.png
create mode 100644 arch/arm/boards/cpodc2/env/usb.png
create mode 100644 arch/arm/boards/cpodc2/init.c
create mode 100644 arch/arm/boards/cpodc2/lowlevel_init.c
create mode 100644 arch/arm/boards/cpodc2/msp430.c
create mode 100644 arch/arm/boards/cpodc2/msp430.h
create mode 100644 arch/arm/configs/cpodc2_defconfig

-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
