Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEypP-0003hw-73
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:15:33 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 11 Mar 2013 10:14:57 +0100
Message-Id: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/9] ARM: add support for Zynq
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds basic support for Xilinx Zynq based SoCs.
Atm one can boot first stage from SD card and ... that is it.
Ethernet support is on its way, but not functional as of yet.

Regards,
str


Josh Cartwright (1):
  ARM: zynq: add clk support for zynq7000

Steffen Trumtrar (8):
  serial: Add driver for Cadence UART
  ARM: Zynq: Add new architecture zynq
  ARM: zynq: add zynq fsbl checksum script
  ARM: zynq: Add support for the Avnet Zedboard
  ARM: zynq: clk: replace define with header
  ARM: zynq: clk: add pll type
  ARM: zynq: clk: convert to platform driver
  ARM: zynq: remove clocksource

 arch/arm/Kconfig                                   |   5 +
 arch/arm/Makefile                                  |   2 +
 arch/arm/boards/avnet-zedboard/Makefile            |   1 +
 arch/arm/boards/avnet-zedboard/board.c             |  38 ++
 arch/arm/boards/avnet-zedboard/config.h            |   4 +
 .../boards/avnet-zedboard/env/init/config-board    |   7 +
 arch/arm/boards/avnet-zedboard/flash_header.c      |  56 +++
 arch/arm/boards/avnet-zedboard/lowlevel.c          | 249 +++++++++++++
 arch/arm/configs/zedboard_defconfig                | 360 +++++++++++++++++++
 arch/arm/mach-zynq/Kconfig                         |  35 ++
 arch/arm/mach-zynq/Makefile                        |   1 +
 arch/arm/mach-zynq/clk-zynq7000.c                  | 393 +++++++++++++++++++++
 arch/arm/mach-zynq/devices.c                       |  14 +
 arch/arm/mach-zynq/include/mach/barebox.lds.h      |   9 +
 arch/arm/mach-zynq/include/mach/clkdev.h           |   6 +
 arch/arm/mach-zynq/include/mach/debug_ll.h         |  34 ++
 arch/arm/mach-zynq/include/mach/devices.h          |  13 +
 .../arm/mach-zynq/include/mach/zynq-flash-header.h |  40 +++
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h    | 132 +++++++
 arch/arm/mach-zynq/zynq.c                          |  39 ++
 drivers/serial/Kconfig                             |   4 +
 drivers/serial/Makefile                            |   1 +
 drivers/serial/serial_cadence.c                    | 299 ++++++++++++++++
 include/asm-generic/barebox.lds.h                  |   3 +-
 scripts/Makefile                                   |   1 +
 scripts/zynq_checksum.c                            |  55 +++
 26 files changed, 1800 insertions(+), 1 deletion(-)
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
