Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d4768-0005BJ-UH
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 14:42:21 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Apr 2017 16:41:36 +0200
Message-Id: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 0/8] SoCFPGA: add support for Arria10
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
  - MMC

Tested on:
  - Reflex Achilles (Arria10)
  - EBV Socrates (Cyclone5)

Changes since v1:
  - rework more of the coding style (inherited from u-boot)
  - refactor pinmux from struct to enum -> use arrays+loop
  - remove added barebox-header from mkimage; add custom __barebox_arm_head instead

Regards,
Steffen

Steffen Trumtrar (8):
  ARM: socfpga: rename socfpga->cyclone5
  clk: socfpga: move driver to subdirectory
  net: designware: add dwmac-3.72a compatible
  ARM: socfpga: make debug_ll configurable
  ARM: socfpga: add arria10 support
  clk: socfpga: add arria10 clk drivers
  ARM: socfpga: add support for reflex achilles board
  ARM: socfpga: add arria10 defconfig

 arch/arm/Kconfig                                                |    6 +-
 arch/arm/boards/Makefile                                        |    1 +-
 arch/arm/boards/altera-socdk/board.c                            |    2 +-
 arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c            |    2 +-
 arch/arm/boards/altera-socdk/lowlevel.c                         |    4 +-
 arch/arm/boards/ebv-socrates/board.c                            |    2 +-
 arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c            |    2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c                         |    4 +-
 arch/arm/boards/reflex-achilles/Makefile                        |    2 +-
 arch/arm/boards/reflex-achilles/hps.xml                         |  351 +++++-
 arch/arm/boards/reflex-achilles/lowlevel.c                      |   48 +-
 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c         |  102 +-
 arch/arm/boards/reflex-achilles/pll-config-arria10.c            |   54 +-
 arch/arm/boards/terasic-de0-nano-soc/board.c                    |    2 +-
 arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c    |    2 +-
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c                 |    4 +-
 arch/arm/boards/terasic-sockit/board.c                          |    1 +-
 arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c          |    2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c                       |    4 +-
 arch/arm/configs/socfpga-arria10_defconfig                      |   89 +-
 arch/arm/dts/Makefile                                           |    1 +-
 arch/arm/dts/socfpga_arria10_achilles.dts                       |  124 ++-
 arch/arm/mach-socfpga/Kconfig                                   |   24 +-
 arch/arm/mach-socfpga/Makefile                                  |   10 +-
 arch/arm/mach-socfpga/arria10-bootsource.c                      |   53 +-
 arch/arm/mach-socfpga/arria10-clock-manager.c                   |  815 +++++++++++-
 arch/arm/mach-socfpga/arria10-generic.c                         |   85 +-
 arch/arm/mach-socfpga/arria10-init.c                            |  193 +++-
 arch/arm/mach-socfpga/arria10-reset-manager.c                   |  398 +++++-
 arch/arm/mach-socfpga/arria10-sdram.c                           |  535 +++++++-
 arch/arm/mach-socfpga/bootsource.c                              |   57 +-
 arch/arm/mach-socfpga/clock-manager.c                           |  298 +----
 arch/arm/mach-socfpga/cyclone5-bootsource.c                     |  100 +-
 arch/arm/mach-socfpga/cyclone5-clock-manager.c                  |  298 ++++-
 arch/arm/mach-socfpga/cyclone5-freeze-controller.c              |  218 +++-
 arch/arm/mach-socfpga/cyclone5-generic.c                        |  210 +++-
 arch/arm/mach-socfpga/cyclone5-init.c                           |   58 +-
 arch/arm/mach-socfpga/cyclone5-reset-manager.c                  |   61 +-
 arch/arm/mach-socfpga/cyclone5-scan-manager.c                   |  220 +++-
 arch/arm/mach-socfpga/cyclone5-system-manager.c                 |   33 +-
 arch/arm/mach-socfpga/freeze-controller.c                       |  218 +---
 arch/arm/mach-socfpga/generic.c                                 |  104 +-
 arch/arm/mach-socfpga/include/mach/arria10-clock-manager.h      |  249 +++-
 arch/arm/mach-socfpga/include/mach/arria10-pinmux.h             |  250 +++-
 arch/arm/mach-socfpga/include/mach/arria10-regs.h               |  114 ++-
 arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h      |  114 ++-
 arch/arm/mach-socfpga/include/mach/arria10-sdram.h              |  353 +++++-
 arch/arm/mach-socfpga/include/mach/arria10-system-manager.h     |   97 +-
 arch/arm/mach-socfpga/include/mach/barebox-arm-head.h           |   42 +-
 arch/arm/mach-socfpga/include/mach/clock-manager.h              |  200 +---
 arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h     |  200 +++-
 arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h |   85 +-
 arch/arm/mach-socfpga/include/mach/cyclone5-regs.h              |   22 +-
 arch/arm/mach-socfpga/include/mach/cyclone5-reset-manager.h     |   93 +-
 arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h      |  131 ++-
 arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h      |  161 ++-
 arch/arm/mach-socfpga/include/mach/cyclone5-sdram.h             |  399 +++++-
 arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c         | 5241 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h         |  447 ++++++-
 arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h    |   68 +-
 arch/arm/mach-socfpga/include/mach/debug_ll.h                   |   81 +-
 arch/arm/mach-socfpga/include/mach/freeze-controller.h          |   85 +-
 arch/arm/mach-socfpga/include/mach/generic.h                    |   36 +-
 arch/arm/mach-socfpga/include/mach/pll_config.h                 |    2 +-
 arch/arm/mach-socfpga/include/mach/reset-manager.h              |   93 +-
 arch/arm/mach-socfpga/include/mach/scan-manager.h               |  131 +--
 arch/arm/mach-socfpga/include/mach/sdram.h                      |  399 +-----
 arch/arm/mach-socfpga/include/mach/sdram_config.h               |  161 +--
 arch/arm/mach-socfpga/include/mach/sdram_io.h                   |    2 +-
 arch/arm/mach-socfpga/include/mach/sequencer.c                  | 5243 +------------------------------------------------------------------------
 arch/arm/mach-socfpga/include/mach/sequencer.h                  |  447 +------
 arch/arm/mach-socfpga/include/mach/sequencer_defines.h          |    6 +-
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h               |   22 +-
 arch/arm/mach-socfpga/include/mach/system-manager.h             |   68 +-
 arch/arm/mach-socfpga/include/mach/system.h                     |    0
 arch/arm/mach-socfpga/include/mach/tclrpt.h                     |    2 +-
 arch/arm/mach-socfpga/init.c                                    |   58 +-
 arch/arm/mach-socfpga/nic301.c                                  |    2 +-
 arch/arm/mach-socfpga/reset-manager.c                           |   61 +-
 arch/arm/mach-socfpga/scan-manager.c                            |  220 +---
 arch/arm/mach-socfpga/system-manager.c                          |   33 +-
 arch/arm/mach-socfpga/xload.c                                   |   96 +-
 common/Kconfig                                                  |   29 +-
 drivers/clk/Makefile                                            |    2 +-
 drivers/clk/socfpga.c                                           |  434 +------
 drivers/clk/socfpga/Makefile                                    |    3 +-
 drivers/clk/socfpga/clk-gate-a10.c                              |  197 +++-
 drivers/clk/socfpga/clk-periph-a10.c                            |  130 ++-
 drivers/clk/socfpga/clk-pll-a10.c                               |  143 ++-
 drivers/clk/socfpga/clk.c                                       |  443 ++++++-
 drivers/clk/socfpga/clk.h                                       |   90 +-
 drivers/firmware/socfpga.c                                      |    8 +-
 drivers/net/designware.c                                        |    3 +-
 images/Makefile.socfpga                                         |    9 +-
 scripts/socfpga_import_preloader                                |    2 +-
 scripts/socfpga_xml_to_config.sh                                |  117 ++-
 96 files changed, 13435 insertions(+), 8486 deletions(-)
 create mode 100644 arch/arm/boards/reflex-achilles/Makefile
 create mode 100644 arch/arm/boards/reflex-achilles/hps.xml
 create mode 100644 arch/arm/boards/reflex-achilles/lowlevel.c
 create mode 100644 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
 create mode 100644 arch/arm/boards/reflex-achilles/pll-config-arria10.c
 create mode 100644 arch/arm/configs/socfpga-arria10_defconfig
 create mode 100644 arch/arm/dts/socfpga_arria10_achilles.dts
 create mode 100644 arch/arm/mach-socfpga/arria10-bootsource.c
 create mode 100644 arch/arm/mach-socfpga/arria10-clock-manager.c
 create mode 100644 arch/arm/mach-socfpga/arria10-generic.c
 create mode 100644 arch/arm/mach-socfpga/arria10-init.c
 create mode 100644 arch/arm/mach-socfpga/arria10-reset-manager.c
 create mode 100644 arch/arm/mach-socfpga/arria10-sdram.c
 delete mode 100644 arch/arm/mach-socfpga/bootsource.c
 delete mode 100644 arch/arm/mach-socfpga/clock-manager.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-bootsource.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-clock-manager.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-freeze-controller.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-generic.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-init.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-reset-manager.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-scan-manager.c
 create mode 100644 arch/arm/mach-socfpga/cyclone5-system-manager.c
 delete mode 100644 arch/arm/mach-socfpga/freeze-controller.c
 delete mode 100644 arch/arm/mach-socfpga/generic.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-clock-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-pinmux.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-regs.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-sdram.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/barebox-arm-head.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/clock-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-reset-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-sdram.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/freeze-controller.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/reset-manager.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/scan-manager.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sdram.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sdram_config.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/sdram_io.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sequencer.c
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sequencer.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sequencer_defines.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/socfpga-regs.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/system-manager.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/system.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/tclrpt.h
 delete mode 100644 arch/arm/mach-socfpga/init.c
 delete mode 100644 arch/arm/mach-socfpga/reset-manager.c
 delete mode 100644 arch/arm/mach-socfpga/scan-manager.c
 delete mode 100644 arch/arm/mach-socfpga/system-manager.c
 delete mode 100644 drivers/clk/socfpga.c
 create mode 100644 drivers/clk/socfpga/Makefile
 create mode 100644 drivers/clk/socfpga/clk-gate-a10.c
 create mode 100644 drivers/clk/socfpga/clk-periph-a10.c
 create mode 100644 drivers/clk/socfpga/clk-pll-a10.c
 create mode 100644 drivers/clk/socfpga/clk.c
 create mode 100644 drivers/clk/socfpga/clk.h
 create mode 100755 scripts/socfpga_xml_to_config.sh

base-commit: 8e4471b32aa30480d3b6745c69451af6454f55b8
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
