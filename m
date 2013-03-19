Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHskC-0002Va-B3
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 09:22:13 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 19 Mar 2013 10:21:55 +0100
Message-Id: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 0/5] ARM: add support for Zynq
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

Still nothing fancy. Boots a little faster from SD and has a console.
For ethernet the macb-driver works fine, but needs to be "freed" from its
at91 heritage (meaning: the struct at91_ether_platform_data should be
renamed first and defined someplace else than a board.h)

Changelog:
	- addressed all comments by Sascha and Josh
	  (some uart stuff, defines, endianess, ...)
	- squashed a little

Regards,
Steffen


Steffen Trumtrar (5):
  serial: Add driver for Cadence UART
  ARM: zynq: Add new architecture zynq
  ARM: zynq: add clk support for zynq7000
  ARM: zynq: add zynq fsbl checksum script
  ARM: zynq: Add support for the Avnet Zedboard

 arch/arm/Kconfig                                   |   5 +
 arch/arm/Makefile                                  |   2 +
 arch/arm/boards/avnet-zedboard/Makefile            |   1 +
 arch/arm/boards/avnet-zedboard/board.c             |  38 ++
 arch/arm/boards/avnet-zedboard/config.h            |   4 +
 .../boards/avnet-zedboard/env/init/config-board    |   7 +
 arch/arm/boards/avnet-zedboard/flash_header.c      |  76 ++++
 arch/arm/boards/avnet-zedboard/lowlevel.c          | 252 +++++++++++++
 arch/arm/configs/zedboard_defconfig                |  45 +++
 arch/arm/mach-zynq/Kconfig                         |  39 ++
 arch/arm/mach-zynq/Makefile                        |   1 +
 arch/arm/mach-zynq/clk-zynq7000.c                  | 417 +++++++++++++++++++++
 arch/arm/mach-zynq/devices.c                       |  14 +
 arch/arm/mach-zynq/include/mach/barebox.lds.h      |   9 +
 arch/arm/mach-zynq/include/mach/clkdev.h           |   6 +
 arch/arm/mach-zynq/include/mach/debug_ll.h         |  37 ++
 arch/arm/mach-zynq/include/mach/devices.h          |  13 +
 .../arm/mach-zynq/include/mach/zynq-flash-header.h |  40 ++
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h    | 132 +++++++
 arch/arm/mach-zynq/zynq.c                          |  56 +++
 drivers/serial/Kconfig                             |   4 +
 drivers/serial/Makefile                            |   1 +
 drivers/serial/serial_cadence.c                    | 307 +++++++++++++++
 include/asm-generic/barebox.lds.h                  |   3 +-
 scripts/Makefile                                   |   1 +
 scripts/zynq_checksum.c                            |  72 ++++
 26 files changed, 1581 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/avnet-zedboard/Makefile
 create mode 100644 arch/arm/boards/avnet-zedboard/board.c
 create mode 100644 arch/arm/boards/avnet-zedboard/config.h
 create mode 100644 arch/arm/boards/avnet-zedboard/env/init/config-board
 create mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
 create mode 100644 arch/arm/boards/avnet-zedboard/lowlevel.c
 create mode 100644 arch/arm/configs/zedboard_defconfig
 create mode 100644 arch/arm/mach-zynq/Kconfig
 create mode 100644 arch/arm/mach-zynq/Makefile
 create mode 100644 arch/arm/mach-zynq/clk-zynq7000.c
 create mode 100644 arch/arm/mach-zynq/devices.c
 create mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
 create mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-zynq/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-zynq/include/mach/devices.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq-flash-header.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-regs.h
 create mode 100644 arch/arm/mach-zynq/zynq.c
 create mode 100644 drivers/serial/serial_cadence.c
 create mode 100644 scripts/zynq_checksum.c

-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
