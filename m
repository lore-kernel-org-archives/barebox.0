Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Oi-0001Xd-RC
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:47 +0100
Message-Id: <20190313094202.14901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/15] barebox Layerscape support
To: Barebox List <barebox@lists.infradead.org>

This series adds initial barebox support for the NXP Layerscape
architecture, currently in the form of the LS1046a SoC. What we
have now is:

- NXP LS1046ardb board support
- TQ TQMLS1046a board
- SD/MMC support
- watchdog
- DDR including SPD EEPROM on I2C bus
- I2C support
- FMan ethernet

Sascha

Sascha Hauer (15):
  mci: imx-esdhc: Actually enable cache snooping
  Add Freescale QUICC Engine firmware support
  net: Add Freescale FMan ethernet support
  ARM: Add arm64 pbl udelay
  esdhc-xload: Add support for Layerscape
  watchdog: imx: Add register accessor functions
  watchdog: imx: Add big endian register access support
  scripts: Add Layerscape image tool
  i2c: i.MX: Add layerscape support
  ddr: fsl: Add Freescale ddr driver
  ARM: Add basic Layerscape support
  clk: Add Layerscape clk support
  ARM: Layerscape: Add LS1046a RDB board support
  ARM: Layerscape: Add TQ TQMLS1046a board support
  ARM: Add layerscape_defconfig

 arch/arm/Kconfig                              |   10 +
 arch/arm/Makefile                             |    1 +
 arch/arm/boards/Makefile                      |    2 +
 arch/arm/boards/ls1046ardb/Makefile           |    4 +
 arch/arm/boards/ls1046ardb/board.c            |   36 +
 .../defaultenv-ls1046ardb/nv/dev.eth4.mode    |    1 +
 .../defaultenv-ls1046ardb/nv/dev.eth5.mode    |    1 +
 .../defaultenv-ls1046ardb/nv/dev.eth6.mode    |    1 +
 .../defaultenv-ls1046ardb/nv/dev.eth7.mode    |    1 +
 arch/arm/boards/ls1046ardb/lowlevel.c         |  231 ++
 arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg |   22 +
 .../boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg |   26 +
 .../boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg |    7 +
 .../boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg |    7 +
 .../boards/ls1046ardb/ls1046ardb_rcw_sd.cfg   |    7 +
 arch/arm/boards/ls1046ardb/start.S            |   11 +
 arch/arm/boards/tqmls1046a/Makefile           |    3 +
 arch/arm/boards/tqmls1046a/board.c            |   32 +
 .../defaultenv-tqmls1046a/nv/dev.eth4.mode    |    1 +
 .../defaultenv-tqmls1046a/nv/dev.eth5.mode    |    1 +
 .../defaultenv-tqmls1046a/nv/dev.eth6.mode    |    1 +
 .../defaultenv-tqmls1046a/nv/dev.eth7.mode    |    1 +
 arch/arm/boards/tqmls1046a/lowlevel.c         |  217 ++
 arch/arm/boards/tqmls1046a/start.S            |   12 +
 .../boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg |   33 +
 .../boards/tqmls1046a/tqmls1046a_pbi_sd.cfg   |   35 +
 .../tqmls1046a_rcw_emmc_3333_5559.cfg         |   84 +
 .../tqmls1046a_rcw_qspi_3333_5559.cfg         |   84 +
 .../tqmls1046a_rcw_sd_3333_5559.cfg           |   84 +
 arch/arm/configs/layerscape_defconfig         |  111 +
 arch/arm/dts/Makefile                         |    2 +
 arch/arm/dts/fsl-ls1046a-rdb.dts              |   98 +
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     |  240 ++
 arch/arm/dts/fsl-tqmls1046a.dtsi              |   54 +
 arch/arm/lib64/Makefile                       |    2 +-
 arch/arm/lib64/pbl.c                          |   17 +
 arch/arm/mach-layerscape/Kconfig              |   21 +
 arch/arm/mach-layerscape/Makefile             |    4 +
 arch/arm/mach-layerscape/errata.c             |  195 ++
 arch/arm/mach-layerscape/icid.c               |  243 ++
 .../mach-layerscape/include/mach/debug_ll.h   |   34 +
 .../arm/mach-layerscape/include/mach/errata.h |    7 +
 .../mach-layerscape/include/mach/layerscape.h |    7 +
 .../mach-layerscape/include/mach/lowlevel.h   |    7 +
 arch/arm/mach-layerscape/include/mach/xload.h |    6 +
 arch/arm/mach-layerscape/lowlevel-ls1046a.c   |  246 ++
 arch/arm/mach-layerscape/lowlevel.S           |   18 +
 common/Kconfig                                |    8 +
 drivers/Kconfig                               |    1 +
 drivers/Makefile                              |    1 +
 drivers/clk/Makefile                          |    1 +
 drivers/clk/clk-qoric.c                       |  665 +++++
 drivers/ddr/Kconfig                           |    1 +
 drivers/ddr/Makefile                          |    1 +
 drivers/ddr/fsl/Kconfig                       |   16 +
 drivers/ddr/fsl/Makefile                      |   12 +
 drivers/ddr/fsl/arm_ddr_gen3.c                |  204 ++
 drivers/ddr/fsl/ctrl_regs.c                   | 2539 +++++++++++++++++
 drivers/ddr/fsl/ddr1_dimm_params.c            |  319 +++
 drivers/ddr/fsl/ddr2_dimm_params.c            |  320 +++
 drivers/ddr/fsl/ddr3_dimm_params.c            |  325 +++
 drivers/ddr/fsl/ddr4_dimm_params.c            |  352 +++
 drivers/ddr/fsl/fsl_ddr.h                     |  234 ++
 drivers/ddr/fsl/fsl_ddr_gen4.c                |  501 ++++
 drivers/ddr/fsl/lc_common_dimm_params.c       |  542 ++++
 drivers/ddr/fsl/main.c                        |  444 +++
 drivers/ddr/fsl/options.c                     | 1133 ++++++++
 drivers/ddr/fsl/util.c                        |   98 +
 drivers/i2c/busses/Kconfig                    |    2 +-
 drivers/i2c/busses/i2c-imx.c                  |    4 +-
 drivers/mci/imx-esdhc-pbl.c                   |   60 +-
 drivers/mci/imx-esdhc.c                       |    3 +-
 drivers/net/Kconfig                           |    8 +
 drivers/net/Makefile                          |    1 +
 drivers/net/fsl-fman.c                        | 1333 +++++++++
 drivers/watchdog/Kconfig                      |    2 +-
 drivers/watchdog/Makefile                     |    1 +
 drivers/watchdog/imxwd.c                      |   46 +-
 firmware/Makefile                             |    2 +
 images/Makefile                               |    3 +-
 images/Makefile.layerscape                    |   59 +
 include/soc/fsl/fsl_ddr_sdram.h               |  558 ++++
 include/soc/fsl/fsl_fman.h                    |  439 +++
 include/soc/fsl/fsl_immap.h                   |  184 ++
 include/soc/fsl/fsl_memac.h                   |  256 ++
 include/soc/fsl/fsl_qbman.h                   |   74 +
 include/soc/fsl/immap_lsch2.h                 |  355 +++
 include/soc/fsl/qe.h                          |  264 ++
 lib/Kconfig                                   |    4 +
 lib/Makefile                                  |    1 +
 lib/fsl-qe-firmware.c                         |   64 +
 scripts/Makefile                              |    1 +
 scripts/pblimage.c                            |  432 +++
 93 files changed, 14120 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/boards/ls1046ardb/Makefile
 create mode 100644 arch/arm/boards/ls1046ardb/board.c
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth4.mode
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth5.mode
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth6.mode
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth7.mode
 create mode 100644 arch/arm/boards/ls1046ardb/lowlevel.c
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/start.S
 create mode 100644 arch/arm/boards/tqmls1046a/Makefile
 create mode 100644 arch/arm/boards/tqmls1046a/board.c
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth4.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth5.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth6.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth7.mode
 create mode 100644 arch/arm/boards/tqmls1046a/lowlevel.c
 create mode 100644 arch/arm/boards/tqmls1046a/start.S
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
 create mode 100644 arch/arm/configs/layerscape_defconfig
 create mode 100644 arch/arm/dts/fsl-ls1046a-rdb.dts
 create mode 100644 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
 create mode 100644 arch/arm/dts/fsl-tqmls1046a.dtsi
 create mode 100644 arch/arm/lib64/pbl.c
 create mode 100644 arch/arm/mach-layerscape/Kconfig
 create mode 100644 arch/arm/mach-layerscape/Makefile
 create mode 100644 arch/arm/mach-layerscape/errata.c
 create mode 100644 arch/arm/mach-layerscape/icid.c
 create mode 100644 arch/arm/mach-layerscape/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/errata.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/layerscape.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-layerscape/include/mach/xload.h
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls1046a.c
 create mode 100644 arch/arm/mach-layerscape/lowlevel.S
 create mode 100644 drivers/clk/clk-qoric.c
 create mode 100644 drivers/ddr/Kconfig
 create mode 100644 drivers/ddr/Makefile
 create mode 100644 drivers/ddr/fsl/Kconfig
 create mode 100644 drivers/ddr/fsl/Makefile
 create mode 100644 drivers/ddr/fsl/arm_ddr_gen3.c
 create mode 100644 drivers/ddr/fsl/ctrl_regs.c
 create mode 100644 drivers/ddr/fsl/ddr1_dimm_params.c
 create mode 100644 drivers/ddr/fsl/ddr2_dimm_params.c
 create mode 100644 drivers/ddr/fsl/ddr3_dimm_params.c
 create mode 100644 drivers/ddr/fsl/ddr4_dimm_params.c
 create mode 100644 drivers/ddr/fsl/fsl_ddr.h
 create mode 100644 drivers/ddr/fsl/fsl_ddr_gen4.c
 create mode 100644 drivers/ddr/fsl/lc_common_dimm_params.c
 create mode 100644 drivers/ddr/fsl/main.c
 create mode 100644 drivers/ddr/fsl/options.c
 create mode 100644 drivers/ddr/fsl/util.c
 create mode 100644 drivers/net/fsl-fman.c
 create mode 100644 images/Makefile.layerscape
 create mode 100644 include/soc/fsl/fsl_ddr_sdram.h
 create mode 100644 include/soc/fsl/fsl_fman.h
 create mode 100644 include/soc/fsl/fsl_immap.h
 create mode 100644 include/soc/fsl/fsl_memac.h
 create mode 100644 include/soc/fsl/fsl_qbman.h
 create mode 100644 include/soc/fsl/immap_lsch2.h
 create mode 100644 include/soc/fsl/qe.h
 create mode 100644 lib/fsl-qe-firmware.c
 create mode 100644 scripts/pblimage.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
