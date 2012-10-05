Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKGSY-0005Mr-MU
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 22:33:31 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1242132wgb.18
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 15:33:28 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sat,  6 Oct 2012 00:33:02 +0200
Message-Id: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 00/11] archosg9: add support for tablet, third round
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

Hello,
 here is the third round of patches including most of the modifications suggested by your comments, which are greatly appreciated.
 one of the modifications not done is the move of the usb-booting infrastructure into a driver. Jean, can you please add more information about this? Thanks.
 
 scripts/checkpatch.pl returns two errors: "Macros with complex values should be enclosed in parenthesis", but in this case parenthesis can't be added, any suggestion?
 
 This new round of patches applies against 026e6aeb8206accdbef88408ae8c6c8bffcdc212 which includes a lots of changes.
 The change 29e4031b460d1c84c1a8fc276199d40680b354d4 "ARM OMAP: switch to gpiolib support" breaks support for the tablet and it's reverted here only to make this patch-list feature-complete.
 Can somebody check if gpiolib works for other OMAP4460-based boards?
 
 About the default serial speed: it's set to 1Mbaud to match the rate of the factory bootloader, this way we can see all the messages printed.
 Before it was set to 57600 because it was the highest speed that worked with linux because of serial port auto-suspend. It was nothing to do with barebox.

 The patch-list adds a regression fix added at faf7b7af6e51a33b88453821d792c89a84f72b1d "ARM: give boards control of the reset entry point"
 
 Regards,
  Vicente.

vj (11):
  regression: reset can not return
  twl6030: add debug info
  omap4: add/rename definitions to match datasheet
  ARM: ensure irqs are disabled
  omap: revert gpiolib
  omap4: add support for booting an omap4 from usb.
  omap4: add serial communications over usb boot
  omap4: add filesystem support over usb boot
  omap4: add support for loading second stage from usb
  mach-types: add ID for Archos G9 tablet
  Add support for Archos G9 tablet

 Documentation/oamp4_usb_booting.txt             |  27 ++
 arch/arm/Kconfig                                |   1 -
 arch/arm/Makefile                               |   1 +
 arch/arm/boards/archosg9/Makefile               |   3 +
 arch/arm/boards/archosg9/board.c                |  65 ++++
 arch/arm/boards/archosg9/config.h               |   1 +
 arch/arm/boards/archosg9/env/config             |   3 +
 arch/arm/boards/archosg9/env/init/usbboot       |   4 +
 arch/arm/boards/archosg9/lowlevel.c             |  79 ++++
 arch/arm/boards/archosg9/mux.c                  | 459 ++++++++++++++++++++++++
 arch/arm/boards/archosg9/mux.h                  |   6 +
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c  |   2 +-
 arch/arm/boards/panda/lowlevel.c                |   2 +-
 arch/arm/boards/panda/mux.c                     |  52 +--
 arch/arm/boards/pcm049/lowlevel.c               |   2 +-
 arch/arm/boards/pcm049/mux.c                    |  44 +--
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |   2 +-
 arch/arm/boards/phycard-a-xl2/mux.c             |  46 +--
 arch/arm/configs/archosg9_defconfig             |  70 ++++
 arch/arm/configs/archosg9_xload_defconfig       |  24 ++
 arch/arm/cpu/cpu.c                              |   6 +
 arch/arm/mach-omap/Kconfig                      |  18 +
 arch/arm/mach-omap/Makefile                     |   1 +
 arch/arm/mach-omap/gpio.c                       | 170 +++++----
 arch/arm/mach-omap/include/mach/omap4-mux.h     |  80 +++--
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  13 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 ++++++++
 arch/arm/mach-omap/include/mach/xload.h         |   1 +
 arch/arm/mach-omap/omap3_generic.c              |  19 -
 arch/arm/mach-omap/omap4_generic.c              |  38 +-
 arch/arm/mach-omap/omap4_rom_usb.c              | 186 ++++++++++
 arch/arm/mach-omap/xload.c                      |  26 ++
 arch/arm/tools/mach-types                       |   1 +
 drivers/mfd/twl6030.c                           |  20 ++
 drivers/serial/Kconfig                          |   7 +
 drivers/serial/Makefile                         |   1 +
 drivers/serial/serial_omap4_usbboot.c           |  83 +++++
 fs/Kconfig                                      |   5 +
 fs/Makefile                                     |   1 +
 fs/omap4_usbbootfs.c                            | 219 +++++++++++
 include/mfd/twl6030.h                           |   8 +
 scripts/.gitignore                              |   1 +
 scripts/Makefile                                |   4 +
 scripts/omap4_usbboot.c                         | 412 +++++++++++++++++++++
 scripts/usb.h                                   |  61 ++++
 scripts/usb_linux.c                             | 397 ++++++++++++++++++++
 46 files changed, 2594 insertions(+), 219 deletions(-)
 create mode 100644 Documentation/oamp4_usb_booting.txt
 create mode 100644 arch/arm/boards/archosg9/Makefile
 create mode 100644 arch/arm/boards/archosg9/board.c
 create mode 100644 arch/arm/boards/archosg9/config.h
 create mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/env/init/usbboot
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
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
