Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjGex-0006hs-4u
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 21:49:43 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TjGea-000792-An
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 22:49:16 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TjGea-0006DA-9n
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 22:49:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 22:49:03 +0100
Message-Id: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Efika MX Smartbook support
To: barebox@lists.infradead.org

The following adds support for the Efika MX Smartbook. Support is
almost complete including

- USB
- SD card slots
- Internal PATA flash drive
- Internal SPI NOR flash
- LEDs

I have written some documentation for using barebox on the Smartbook
here:

http://wiki.barebox.org/doku.php?id=boards:efikasb

While the documentation is Smartbook specific it might be worth reading
for other board users aswell as it also gives an overview how to use
the new default environment.

The Efika MX Smartbook is, from a software view, quite similar to the
Efika MX Smarttop. This patch only supports the Smartbook, but has some
references to the Smarttop. However, I do not have a Smarttop, so I didn't
bother to try and add support for this.

I currently only tested booting from SD card. It should be possible to
start from the internal SPI NOR flash aswell. I haven't tried this yet
as up to now I wanted to have the U-Boot as a fallback environment.

You may notice that this series brings back the specify-mmc-device-names
patches. I originally wanted to come up with something better. I decided
against this, partly because I haven't been able yet to find a solution
that I like better, partly because I want to get this series done, and partly
because I've already written the documentation.

This series is based on the i.MX chipidea driver I posted earlier this day.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      ata sff: set device pointer in ata port
      mci: Allow to specify device name
      mci i.MX esdhc: Allow to specify devicename from platformdata
      mfd mc13893: Add register defines
      ARM i.MX51: Add support for the Efika MX Smartbook
      ARM: Add defconfig for Efika MX smartbook
      USB ehci: Add powerup fixup for EfikaSB

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/efika-mx-smartbook/Makefile        |    3 +
 arch/arm/boards/efika-mx-smartbook/board.c         |  511 ++++++++++++++++++++
 arch/arm/boards/efika-mx-smartbook/config.h        |   24 +
 arch/arm/boards/efika-mx-smartbook/dcd-data.h      |   56 +++
 .../boards/efika-mx-smartbook/env/bin/lvds_init    |   22 +
 .../boards/efika-mx-smartbook/env/boot/hd-internal |   17 +
 .../boards/efika-mx-smartbook/env/boot/mmc-left    |   19 +
 arch/arm/boards/efika-mx-smartbook/env/config      |   29 ++
 .../boards/efika-mx-smartbook/env/init/automount   |   29 ++
 .../boards/efika-mx-smartbook/env/init/bootsource  |   10 +
 .../efika-mx-smartbook/env/init/config-board       |    9 +
 .../efika-mx-smartbook/env/network/eth0-discover   |    4 +
 arch/arm/boards/efika-mx-smartbook/flash_header.c  |   29 ++
 arch/arm/configs/efika-mx-smartbook_defconfig      |  108 +++++
 arch/arm/mach-imx/Kconfig                          |    8 +
 arch/arm/mach-imx/include/mach/esdhc.h             |    1 +
 defaultenv-2/base/boot/net                         |    4 +-
 drivers/ata/ide-sff.c                              |    1 +
 drivers/mci/imx-esdhc.c                            |    3 +
 drivers/mci/mci-core.c                             |   10 +-
 drivers/usb/core/usb.c                             |    8 +-
 drivers/usb/host/ehci-hcd.c                        |   27 ++
 drivers/usb/otg/ulpi.c                             |   33 +-
 include/mci.h                                      |    1 +
 include/mfd/mc13892.h                              |  217 +++++++++
 include/usb/ulpi.h                                 |   43 +-
 27 files changed, 1202 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/boards/efika-mx-smartbook/Makefile
 create mode 100644 arch/arm/boards/efika-mx-smartbook/board.c
 create mode 100644 arch/arm/boards/efika-mx-smartbook/config.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/dcd-data.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/config
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/automount
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/bootsource
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/config-board
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover
 create mode 100644 arch/arm/boards/efika-mx-smartbook/flash_header.c
 create mode 100644 arch/arm/configs/efika-mx-smartbook_defconfig
 create mode 100644 include/mfd/mc13892.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
