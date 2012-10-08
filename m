Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEg-0007Od-Be
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:43 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so3370661wib.0
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:40 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:10 +0200
Message-Id: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 00/14] archosg9: add support for tablet
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>

This patch series is the same as before except for:
 [PATCH 03/13] ARM: ensure irqs are disabled
    imported irq handling from linux
 [PATCH 07/13] uimage: improve transfer speed
    solved a compile warning

Vicente (14):
  twl6030: add debug info
  omap4: add rename definitions to match datasheet
  ARM: import irq handling from linux
  ARM: ensure irqs are disabled
  omap: revert gpiolib
  omap4: add usb boot source
  bootm: close open files
  uimage: improve transfer speed
  fs: improve robustness
  omap4: add support for booting cpu from usb
  omap4: add serial communications over usb boot
  omap4: add filesystem support over usb boot
  omap4: add support for loading second stage from usb
  Add support for Archos G9 tablet

 Documentation/oamp4_usb_booting.txt             |  27 ++
 arch/arm/Kconfig                                |   1 -
 arch/arm/Makefile                               |   1 +
 arch/arm/boards/archosg9/Makefile               |   3 +
 arch/arm/boards/archosg9/board.c                |  71 ++++
 arch/arm/boards/archosg9/config.h               |   1 +
 arch/arm/boards/archosg9/env/config             |   1 +
 arch/arm/boards/archosg9/env/init/usbboot       |   5 +
 arch/arm/boards/archosg9/lowlevel.c             |  79 ++++
 arch/arm/boards/archosg9/mux.c                  | 459 ++++++++++++++++++++++++
 arch/arm/boards/archosg9/mux.h                  |   6 +
 arch/arm/boards/panda/mux.c                     |  52 +--
 arch/arm/boards/pcm049/mux.c                    |  44 +--
 arch/arm/boards/phycard-a-xl2/mux.c             |  46 +--
 arch/arm/configs/archosg9_defconfig             |  70 ++++
 arch/arm/configs/archosg9_xload_defconfig       |  24 ++
 arch/arm/cpu/cpu.c                              |   7 +
 arch/arm/cpu/exceptions.S                       |   1 -
 arch/arm/cpu/interrupts.c                       |   6 +-
 arch/arm/include/asm/irqflags.h                 | 155 ++++++++
 arch/arm/include/asm/ptrace.h                   |  55 +--
 arch/arm/lib/bootm.c                            |   4 +-
 arch/arm/mach-omap/Kconfig                      |  18 +
 arch/arm/mach-omap/Makefile                     |   1 +
 arch/arm/mach-omap/gpio.c                       | 170 +++++----
 arch/arm/mach-omap/include/mach/omap4-mux.h     |  80 +++--
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  13 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 141 ++++++++
 arch/arm/mach-omap/include/mach/xload.h         |   1 +
 arch/arm/mach-omap/omap3_generic.c              |  19 -
 arch/arm/mach-omap/omap4_generic.c              |  44 +--
 arch/arm/mach-omap/omap4_rom_usb.c              | 198 ++++++++++
 arch/arm/mach-omap/xload.c                      |  26 ++
 commands/bootm.c                                |   6 +-
 common/uimage.c                                 |  27 +-
 drivers/mfd/twl6030.c                           |  21 ++
 drivers/serial/Kconfig                          |   7 +
 drivers/serial/Makefile                         |   1 +
 drivers/serial/serial_omap4_usbboot.c           |  83 +++++
 fs/Kconfig                                      |   5 +
 fs/Makefile                                     |   1 +
 fs/fs.c                                         |  27 +-
 fs/omap4_usbbootfs.c                            | 219 +++++++++++
 include/mfd/twl6030.h                           |   8 +
 scripts/.gitignore                              |   1 +
 scripts/Makefile                                |   4 +
 scripts/omap4_usbboot.c                         | 415 +++++++++++++++++++++
 scripts/usb.h                                   |  61 ++++
 scripts/usb_linux.c                             | 397 ++++++++++++++++++++
 49 files changed, 2848 insertions(+), 264 deletions(-)
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
 create mode 100644 arch/arm/include/asm/irqflags.h
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
