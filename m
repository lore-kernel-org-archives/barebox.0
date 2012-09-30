Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9cd-00027L-GG
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:12 +0000
Received: by wibhj13 with SMTP id hj13so900632wib.0
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:06 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:28 +0200
Message-Id: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 0/9] archosg9: add support for tablet, second round
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

Hello,
 here is the second round of patches including all the modifications suggested by your comments, which are greatly appreciated.

There are also some improvements wrt the previous round of patches:
 1.- Now there is no need to pass data from first to second stage.
        The second stage reopens the usb port and that works.
 2.- The usb scripts have been splitted in several files.

vj (9):
  ARM: set rev instead of returning it
  mmc_omap: improve error message
  omap4: add/rename definitions to match datasheet
  twl6030: add debug info
  add gitignore file
  omap4: add usb boot support
  omap4: add serial communications over usb boot
  omap4: add filesystem support over usb boot
  Add support for Archos G9 tablet

 arch/arm/Makefile                               |   1 +
 arch/arm/boards/archosg9/Makefile               |   3 +
 arch/arm/boards/archosg9/board.c                |  72 ++++
 arch/arm/boards/archosg9/config.h               |   1 +
 arch/arm/boards/archosg9/env/bin/init           |  18 +
 arch/arm/boards/archosg9/env/config             |   2 +
 arch/arm/boards/archosg9/lowlevel.c             | 133 +++++++
 arch/arm/boards/archosg9/mux.c                  | 463 ++++++++++++++++++++++
 arch/arm/boards/archosg9/mux.h                  |   6 +
 arch/arm/boards/panda/mux.c                     |  52 +--
 arch/arm/boards/pcm049/mux.c                    |  44 +--
 arch/arm/boards/phycard-a-xl2/mux.c             |  46 +--
 arch/arm/configs/archosg9_defconfig             |  69 ++++
 arch/arm/configs/archosg9_xload_defconfig       |  24 ++
 arch/arm/cpu/cpu.c                              |   1 +
 arch/arm/lib/armlinux.c                         |   2 +-
 arch/arm/mach-omap/Kconfig                      |  16 +
 arch/arm/mach-omap/Makefile                     |   1 +
 arch/arm/mach-omap/include/mach/omap4-mux.h     | 486 +++++++++++++-----------
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  13 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 +++++++
 arch/arm/mach-omap/include/mach/xload.h         |   1 +
 arch/arm/mach-omap/omap4_generic.c              |  15 +
 arch/arm/mach-omap/omap4_rom_usb.c              | 186 +++++++++
 arch/arm/mach-omap/xload.c                      |  27 ++
 arch/arm/tools/mach-types                       |   1 +
 drivers/mci/omap_hsmmc.c                        |   2 +-
 drivers/mfd/twl6030.c                           |  22 ++
 drivers/serial/Kconfig                          |   7 +
 drivers/serial/Makefile                         |   1 +
 drivers/serial/serial_omap4_usbboot.c           |  87 +++++
 fs/Kconfig                                      |   5 +
 fs/Makefile                                     |   1 +
 fs/omap4_usbbootfs.c                            | 223 +++++++++++
 include/mfd/twl6030.h                           |   8 +
 scripts/.gitignore                              |   1 +
 scripts/Makefile                                |   4 +
 scripts/kconfig/.gitignore                      |   1 +
 scripts/omap4_usbboot.c                         | 416 ++++++++++++++++++++
 scripts/usb.h                                   |  61 +++
 scripts/usb_linux.c                             | 397 +++++++++++++++++++
 41 files changed, 2757 insertions(+), 304 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/Makefile
 create mode 100644 arch/arm/boards/archosg9/board.c
 create mode 100644 arch/arm/boards/archosg9/config.h
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/lowlevel.c
 create mode 100644 arch/arm/boards/archosg9/mux.c
 create mode 100644 arch/arm/boards/archosg9/mux.h
 create mode 100644 arch/arm/configs/archosg9_defconfig
 create mode 100644 arch/arm/configs/archosg9_xload_defconfig
 create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
 create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
 create mode 100644 drivers/serial/serial_omap4_usbboot.c
 create mode 100644 fs/omap4_usbbootfs.c
 create mode 100644 scripts/omap4_usbboot.c
 create mode 100644 scripts/usb.h
 create mode 100644 scripts/usb_linux.c

-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
