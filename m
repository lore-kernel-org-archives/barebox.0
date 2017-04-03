Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cuzeN-0007YM-GZ
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 10:56:03 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Apr 2017 12:55:16 +0200
Message-Id: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/7] SoCFPGA: add support for Arria10
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

Although Cyclone5 and Arria10 share a lot of the peripherals,
they a different in the critical parts (SDRAM controller, clock setup,...)

The Arria10 has a larger OCRAM (64KB vs 256KB), that is why we can
omit the xload support for now. The xload support can be added, once
Arria10 boards that need to program the FPGA very early (might be needed for
the SDRAM controller) are available.

Supported peripherals are:
  - clock manager
  - serial
  - ethernet
  - i2c
  - MMC

Regards,
Steffen

Steffen Trumtrar (7):
  ARM: socfpga: rename socfpga->cyclone5
  clk: socfpga: move driver to subdirectory
  net: designware: add dwmac-3.72a compatible
  ARM: socfpga: add arria10 support
  clk: socfpga: add arria10 clk drivers
  ARM: socfpga: add support for reflex achilles board
  ARM: socfpga: add arria10 defconfig

 arch/arm/Kconfig                                   |   6 +-
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/altera-socdk/board.c               |   2 +-
 .../boards/altera-socdk/iocsr_config_cyclone5.c    |   2 +-
 arch/arm/boards/altera-socdk/lowlevel.c            |   4 +-
 arch/arm/boards/ebv-socrates/board.c               |   2 +-
 .../boards/ebv-socrates/iocsr_config_cyclone5.c    |   2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |   4 +-
 arch/arm/boards/reflex-achilles/Makefile           |   2 +
 arch/arm/boards/reflex-achilles/hps.xml            | 351 +++++++++
 arch/arm/boards/reflex-achilles/lowlevel.c         |  48 ++
 .../boards/reflex-achilles/pinmux-config-arria10.c | 105 +++
 .../boards/reflex-achilles/pll-config-arria10.c    |  55 ++
 arch/arm/boards/terasic-de0-nano-soc/board.c       |   2 +-
 .../terasic-de0-nano-soc/iocsr_config_cyclone5.c   |   2 +-
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c    |   4 +-
 arch/arm/boards/terasic-sockit/board.c             |   1 -
 .../boards/terasic-sockit/iocsr_config_cyclone5.c  |   2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |   4 +-
 arch/arm/configs/socfpga-arria10_defconfig         |  89 +++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/socfpga_arria10_achilles.dts          | 124 ++++
 arch/arm/mach-socfpga/Kconfig                      |  23 +
 arch/arm/mach-socfpga/Makefile                     |  10 +-
 .../{bootsource.c => arria10-bootsource.c}         |  14 +-
 arch/arm/mach-socfpga/arria10-clock-manager.c      | 807 +++++++++++++++++++++
 arch/arm/mach-socfpga/arria10-generic.c            |  85 +++
 arch/arm/mach-socfpga/arria10-init.c               | 275 +++++++
 arch/arm/mach-socfpga/arria10-reset-manager.c      | 422 +++++++++++
 arch/arm/mach-socfpga/arria10-sdram.c              | 557 ++++++++++++++
 arch/arm/mach-socfpga/cyclone5-bootsource.c        | 100 +++
 .../{clock-manager.c => cyclone5-clock-manager.c}  |   4 +-
 ...e-controller.c => cyclone5-freeze-controller.c} |   2 +-
 arch/arm/mach-socfpga/cyclone5-generic.c           | 210 ++++++
 arch/arm/mach-socfpga/{init.c => cyclone5-init.c}  |  10 +-
 .../{reset-manager.c => cyclone5-reset-manager.c}  |   4 +-
 .../{scan-manager.c => cyclone5-scan-manager.c}    |   4 +-
 ...{system-manager.c => cyclone5-system-manager.c} |   4 +-
 arch/arm/mach-socfpga/generic.c                    | 104 ---
 .../include/mach/arria10-clock-manager.h           | 249 +++++++
 .../arm/mach-socfpga/include/mach/arria10-pinmux.h | 128 ++++
 arch/arm/mach-socfpga/include/mach/arria10-regs.h  | 114 +++
 .../include/mach/arria10-reset-manager.h           | 119 +++
 arch/arm/mach-socfpga/include/mach/arria10-sdram.h | 353 +++++++++
 .../include/mach/arria10-system-manager.h          |  97 +++
 .../{clock-manager.h => cyclone5-clock-manager.h}  |   6 +-
 ...e-controller.h => cyclone5-freeze-controller.h} |   6 +-
 .../mach/{socfpga-regs.h => cyclone5-regs.h}       |   0
 .../{reset-manager.h => cyclone5-reset-manager.h}  |   0
 .../{scan-manager.h => cyclone5-scan-manager.h}    |   2 +-
 .../{sdram_config.h => cyclone5-sdram-config.h}    |   6 +-
 .../include/mach/{sdram.h => cyclone5-sdram.h}     |   0
 .../mach/{sequencer.c => cyclone5-sequencer.c}     |   6 +-
 .../mach/{sequencer.h => cyclone5-sequencer.h}     |   0
 ...{system-manager.h => cyclone5-system-manager.h} |   0
 arch/arm/mach-socfpga/include/mach/generic.h       |  35 +
 arch/arm/mach-socfpga/include/mach/pll_config.h    |   2 +-
 arch/arm/mach-socfpga/include/mach/sdram_io.h      |   2 +-
 .../mach-socfpga/include/mach/sequencer_defines.h  |   6 -
 arch/arm/mach-socfpga/include/mach/system.h        |   0
 arch/arm/mach-socfpga/include/mach/tclrpt.h        |   2 +-
 arch/arm/mach-socfpga/nic301.c                     |   2 +-
 arch/arm/mach-socfpga/xload.c                      |  96 +--
 drivers/clk/Makefile                               |   2 +-
 drivers/clk/socfpga/Makefile                       |   3 +
 drivers/clk/socfpga/clk-gate-a10.c                 | 197 +++++
 drivers/clk/socfpga/clk-periph-a10.c               | 130 ++++
 drivers/clk/socfpga/clk-pll-a10.c                  | 143 ++++
 drivers/clk/{socfpga.c => socfpga/clk.c}           |  11 +-
 drivers/clk/socfpga/clk.h                          |  90 +++
 drivers/firmware/socfpga.c                         |   8 +-
 drivers/net/designware.c                           |   3 +
 images/Makefile.socfpga                            |  12 +
 scripts/socfpga_import_preloader                   |   2 +-
 scripts/socfpga_mkimage.c                          |   1 +
 scripts/socfpga_xml_to_config.sh                   |  86 +++
 76 files changed, 5097 insertions(+), 270 deletions(-)
 create mode 100644 arch/arm/boards/reflex-achilles/Makefile
 create mode 100644 arch/arm/boards/reflex-achilles/hps.xml
 create mode 100644 arch/arm/boards/reflex-achilles/lowlevel.c
 create mode 100644 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
 create mode 100644 arch/arm/boards/reflex-achilles/pll-config-arria10.c
 create mode 100644 arch/arm/configs/socfpga-arria10_defconfig
 create mode 100644 arch/arm/dts/socfpga_arria10_achilles.dts
 rename arch/arm/mach-socfpga/{bootsource.c => arria10-bootsource.c} (77%)
 create mode 100644 arch/arm/mach-socfpga/arria10-clock-manager.c
 create mode 100644 arch/arm/mach-socfpga/arria10-generic.c
 create mode 100644 arch/arm/mach-socfpga/arria10-init.c
 create mode 100644 arch/arm/mach-socfpga/arria10-reset-manager.c
 create mode 100644 arch/arm/mach-socfpga/arria10-sdram.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-bootsource.c
 rename arch/arm/mach-socfpga/{clock-manager.c => cyclone5-clock-manager.c} (99%)
 rename arch/arm/mach-socfpga/{freeze-controller.c => cyclone5-freeze-controller.c} (99%)
 create mode 100644 arch/arm/mach-socfpga/cyclone5-generic.c
 rename arch/arm/mach-socfpga/{init.c => cyclone5-init.c} (89%)
 rename arch/arm/mach-socfpga/{reset-manager.c => cyclone5-reset-manager.c} (96%)
 rename arch/arm/mach-socfpga/{scan-manager.c => cyclone5-scan-manager.c} (98%)
 rename arch/arm/mach-socfpga/{system-manager.c => cyclone5-system-manager.c} (93%)
 delete mode 100644 arch/arm/mach-socfpga/generic.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-clock-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-pinmux.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-regs.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-sdram.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
 rename arch/arm/mach-socfpga/include/mach/{clock-manager.h => cyclone5-clock-manager.h} (99%)
 rename arch/arm/mach-socfpga/include/mach/{freeze-controller.h => cyclone5-freeze-controller.h} (96%)
 rename arch/arm/mach-socfpga/include/mach/{socfpga-regs.h => cyclone5-regs.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{reset-manager.h => cyclone5-reset-manager.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{scan-manager.h => cyclone5-scan-manager.h} (99%)
 rename arch/arm/mach-socfpga/include/mach/{sdram_config.h => cyclone5-sdram-config.h} (98%)
 rename arch/arm/mach-socfpga/include/mach/{sdram.h => cyclone5-sdram.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{sequencer.c => cyclone5-sequencer.c} (99%)
 rename arch/arm/mach-socfpga/include/mach/{sequencer.h => cyclone5-sequencer.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{system-manager.h => cyclone5-system-manager.h} (100%)
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/sdram_io.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sequencer_defines.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/system.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/tclrpt.h
 create mode 100644 drivers/clk/socfpga/Makefile
 create mode 100644 drivers/clk/socfpga/clk-gate-a10.c
 create mode 100644 drivers/clk/socfpga/clk-periph-a10.c
 create mode 100644 drivers/clk/socfpga/clk-pll-a10.c
 rename drivers/clk/{socfpga.c => socfpga/clk.c} (96%)
 create mode 100644 drivers/clk/socfpga/clk.h
 create mode 100755 scripts/socfpga_xml_to_config.sh

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
