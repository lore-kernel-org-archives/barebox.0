Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGe6t-0007PZ-VX
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 23:00:12 +0000
Received: by weyu50 with SMTP id u50so996925wey.36
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 16:00:10 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Wed, 26 Sep 2012 00:59:47 +0200
Message-Id: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <[RFC][PATCH] archosg9: add support for tablet>
References: <[RFC][PATCH] archosg9: add support for tablet>
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
Subject: [PATCH 0/7] [RFC][PATCH] archosg9: add support for tablet
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

Hello,
A this is my first contribution, so I'm basically requesting for comments.

The attached patch adds support for Archos G9 tablet wich uses an OMAP4460 cpu.
The tablet by default only boots from internal flash, so to test barebox on it a hardware tweak is required: change the sys_boot configuration.
Once done the tablet can be booted with the following command:
A sudo scripts/usbboot <first_stage> <rootfs>

The patch contains
A 1.- specific changes for OMAP4460
A 2.- support for usb-booting
A 3.- support for console on usb
A 4.- support for file transfer through usb
A 5.- some minor bug fixes
A 6.- adds support for archosg9 board

A question I have is what does omap_vector_init do?
It breaks usb-booting.
An improvement to be done would be to split the file "scripts/usbboot.c" into a header and two c files, but the Makefile framework seemed to me to do not allow that.

In any case the patch should be tested with other boards to check it does not breaks something.

vj (7):
  Improved an error message and solved a minor bug
  added debug info for twl6030
  OMAP specific changes
  Add USB booting capabilities to OMAP
  add console support over the same USB used for booting
  add filesystem support over the same USB used for booting
  Add support for Archos G9 tablet

 arch/arm/Makefile                               |   1 +
 arch/arm/boards/archosg9/Makefile               |   1 +
 arch/arm/boards/archosg9/board.c                |  58 ++
 arch/arm/boards/archosg9/env/bin/init           |  18 +
 arch/arm/boards/archosg9/env/config             |   2 +
 arch/arm/boards/archosg9/lowlevel.c             | 126 ++++
 arch/arm/boards/archosg9/mux.c                  | 226 +++++++
 arch/arm/configs/archosg9_defconfig             |  70 +++
 arch/arm/configs/archosg9_xload_defconfig       |  25 +
 arch/arm/cpu/cpu.c                              |   1 +
 arch/arm/lib/armlinux.c                         |   2 +-
 arch/arm/lib/barebox.lds.S                      |  10 +
 arch/arm/mach-omap/Kconfig                      |  30 +
 arch/arm/mach-omap/Makefile                     |   1 +
 arch/arm/mach-omap/include/mach/omap4-mux.h     |  80 ++-
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  13 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 146 +++++
 arch/arm/mach-omap/include/mach/xload.h         |   1 +
 arch/arm/mach-omap/omap4_generic.c              |   6 +
 arch/arm/mach-omap/omap4_rom_usb.c              | 189 ++++++
 arch/arm/mach-omap/xload.c                      |  26 +
 arch/arm/tools/mach-types                       |   1 +
 drivers/mci/omap_hsmmc.c                        |   2 +-
 drivers/mfd/twl6030.c                           |  13 +
 drivers/serial/Kconfig                          |   7 +
 drivers/serial/Makefile                         |   1 +
 drivers/serial/serial_usb.c                     |  64 ++
 fs/Kconfig                                      |   5 +
 fs/Makefile                                     |   1 +
 fs/usbbootfs.c                                  | 195 ++++++
 include/mfd/twl6030.h                           |   8 +
 scripts/.gitignore                              |   1 +
 scripts/Makefile                                |   3 +
 scripts/usbboot.c                               | 797 ++++++++++++++++++++++++
 34 files changed, 2100 insertions(+), 30 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/Makefile
 create mode 100644 arch/arm/boards/archosg9/board.c
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/lowlevel.c
 create mode 100644 arch/arm/boards/archosg9/mux.c
 create mode 100644 arch/arm/configs/archosg9_defconfig
 create mode 100644 arch/arm/configs/archosg9_xload_defconfig
 create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
 create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
 create mode 100644 drivers/serial/serial_usb.c
 create mode 100644 fs/usbbootfs.c
 create mode 100644 scripts/usbboot.c

-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
