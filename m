Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHC-0002Tf-8T
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:11 +0000
Received: by mail-la0-f44.google.com with SMTP id e16so6071898lan.3
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:15:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:19 +0400
Message-Id: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 00/11] ARM: add support for Canon DIGIC chips and Canon
 PowerShot A1100 IS
To: barebox@lists.infradead.org

Changes since v1:

  * fix reset_cpu();
  * add real Canon A1100 camera support.

DIGIC is Canon Inc.'s name for a family of SoC
for digital cameras and camcorders.

See http://en.wikipedia.org/wiki/DIGIC for details.

There is no publicly available specification for
DIGIC chips. All information about DIGIC chip
internals is based on reverse engineering efforts
made by CHDK (http://chdk.wikia.com) and
Magic Lantern (http://www.magiclantern.fm) projects
contributors.

Also this patch series adds initial support for Canon
PowerShot A1100 IS compact camera (it is my only camera
with connected UART interface). As the DIGIC-based cameras
differences mostly are unsignificant (e.g. RAM-size,
ROM type and size, GPIO usage) the other compact
and DSLR cameras support can be easely added.

One can easely run barebox for Canon A1100 using QEMU version 2.0
or newer.

This patchseries uses some patches already submitted to maillist:

   * clean barebox.zynq
   * treewide: drop Doxygen stuff

Antony Pavlov (11):
  ARM: add ARM946E-S CPU type
  ARM: add very initial support for Canon DIGIC chips
  clocksource: add driver for Canon DIGIC timer
  serial: add driver for Canon DIGIC UART
  gpio: add driver for Canon DIGIC
  ARM: DIGIC: add Canon PowerShot A1100 IS support
  ARM: add Canon A1100 ROM image generation
  ARM: DIGIC: add canon-a1100_defconfig
  Documentation: add QEMU Canon A1100 barebox mini-howto
  ARM: add Canon A1100 DISKBOOT.BIN image generation stuff
  Documentation: add real Canon A1100 camera barebox mini-howto

 .gitignore                                  |   2 +
 Documentation/boards/digic.rst              |  69 +++++++++++
 Makefile                                    |   2 +-
 arch/arm/Kconfig                            |  10 ++
 arch/arm/Makefile                           |  17 +++
 arch/arm/boards/Makefile                    |   1 +
 arch/arm/boards/canon-a1100/Makefile        |   1 +
 arch/arm/boards/canon-a1100/lowlevel.c      |  23 ++++
 arch/arm/configs/canon-a1100_defconfig      |  56 +++++++++
 arch/arm/cpu/Kconfig                        |  13 ++
 arch/arm/dts/canon-a1100.dts                |  35 ++++++
 arch/arm/dts/digic4.dtsi                    |  42 +++++++
 arch/arm/mach-digic/Kconfig                 |  15 +++
 arch/arm/mach-digic/Makefile                |   1 +
 arch/arm/mach-digic/core.c                  |  25 ++++
 arch/arm/mach-digic/include/mach/debug_ll.h |  40 +++++++
 arch/arm/mach-digic/include/mach/digic4.h   |  23 ++++
 arch/arm/mach-digic/include/mach/uart.h     |  28 +++++
 drivers/clocksource/Kconfig                 |   4 +
 drivers/clocksource/Makefile                |   1 +
 drivers/clocksource/digic.c                 |  93 ++++++++++++++
 drivers/gpio/Kconfig                        |   4 +
 drivers/gpio/Makefile                       |   1 +
 drivers/gpio/gpio-digic.c                   | 180 ++++++++++++++++++++++++++++
 drivers/serial/Kconfig                      |   4 +
 drivers/serial/Makefile                     |   1 +
 drivers/serial/serial_digic.c               | 132 ++++++++++++++++++++
 scripts/.gitignore                          |   1 +
 scripts/Makefile                            |   1 +
 scripts/canon-a1100-image                   |  10 ++
 scripts/dancingbits.c                       |  77 ++++++++++++
 scripts/dancingbits.h                       |  20 ++++
 scripts/mkdiskboot                          |  13 ++
 33 files changed, 944 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/digic.rst
 create mode 100644 arch/arm/boards/canon-a1100/Makefile
 create mode 100644 arch/arm/boards/canon-a1100/lowlevel.c
 create mode 100644 arch/arm/configs/canon-a1100_defconfig
 create mode 100644 arch/arm/dts/canon-a1100.dts
 create mode 100644 arch/arm/dts/digic4.dtsi
 create mode 100644 arch/arm/mach-digic/Kconfig
 create mode 100644 arch/arm/mach-digic/Makefile
 create mode 100644 arch/arm/mach-digic/core.c
 create mode 100644 arch/arm/mach-digic/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-digic/include/mach/digic4.h
 create mode 100644 arch/arm/mach-digic/include/mach/uart.h
 create mode 100644 drivers/clocksource/digic.c
 create mode 100644 drivers/gpio/gpio-digic.c
 create mode 100644 drivers/serial/serial_digic.c
 create mode 100755 scripts/canon-a1100-image
 create mode 100644 scripts/dancingbits.c
 create mode 100644 scripts/dancingbits.h
 create mode 100755 scripts/mkdiskboot

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
