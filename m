Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007qW-9m
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:41 +0100
Message-Id: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/42] Add i.MX8M support
To: Barebox List <barebox@lists.infradead.org>

This series adds support for the i.MX8MM SoC and the i.MX8MM EVK board.

Much of the work in this series is getting i.MX8 vs. i.MX8MQ vs. i.MX8MM
straight. We don't have any i.MX8 support yet, we only have i.MX8M, so
everything previously named imx8_ has to be named imx8m[qm]_. Much of
the stuff named imx8mq_ works for all (known) i.MX8M SoCs, so is better
named imx8m_.

One nice thing introduced with this series is support for loading a
barebox image after having loaded the PBL to SRAM. This makes it
possible to do the SDRAM configuration in C code and still upload the
full barebox image after that. So far this xload mechanism was only
possible with booting from SD or SPI NOR flash.

Sascha Hauer (42):
  ARM: i.MX8: Move iomux header to make space for i.MX8MM
  ARM: i.MX8M: Add base addresses common to i.MX8M
  ARM: i.MX8M: add and use imx8mq_setup_pad()
  ARM: i.MX: Drop iomux argument from mx7_setup_pad()
  ARM: i.MX8M: Add iomux header for i.MX8MM
  ARM: i.MX8M: Add imx8mm-regs.h
  ARM: i.MX8M: Add ARCH_IMX8M symbol
  ARM: i.MX: esdctl: rename functions to imx8m_*
  ARM: i.MX8M: Use imx8mq.c for other i.MX8M as well
  ARM: i.MX8M: rename imx8_* bootsource functions to imx8mq_*
  ARM: i.MX8M: Detect serial downloader mode correctly
  HAB: i.MX8M: rename imx8_* functions to imx8m_*
  ARM: i.MX8M: rename i.MX8M specific function
  ARM: i.MX8M: rename functions to be i.MX8M specific
  mci: imx-esdhc-pbl: Add instance 2 for i.MX8MM
  USB: gadget: fsl_udc: move register definitions to header file
  usb: gadget: fsl_udc: Add PBL image loading support
  usb: gadget: fsl_udc: Fix warnings on 64bit compilation
  usb: imx: Add i.MX8mm support
  serial: imx: Add imx8mm compatible
  mci: imx-esdhc: Add i.MX8mm support
  I2C: i.MX: Add early i2c support for i.MX8M
  clk: imx: Add pll14xx support
  clk: imx: Add imx8m_clk_composite_critical
  clk: imx: Add imx8mm clk driver
  ARM: i.MX: Add SoC namespace to imx7/8m CCM defines
  Add some CCM defines for i.MX8M
  ARM: i.MX8M: rename imx8-ccm-regs.h to imx8m-ccm-regs.h
  ARM: i.MX8M: Add some lowlevel clock functions
  ARM: i.MX7: Add and use function for early UART clock setup
  ARM: i.MX8M: Add and use function for early UART clock setup
  iomux: Add i.MX8MM support
  mfd: Add Rohm bd71837 header file
  scripts: imx-usb-loader: Add 2nd stage loading support
  scripts: imx-usb-loader: Add i.MX8MM support
  ARM: i.MX8MQ boards: Add missing includes
  ARM: i.MX8M: Add DDR controller support
  ARM: i.MX8M: Add TF-A loading support for i.MX8MM
  ARM: i.MX8M: Add i.MX8MM support
  scripts: imx-image: Add i.MX8MM support
  ARM: i.MX: Add i.MX8MM EVK board support
  ARM: i.MX: update imx_v8_defconfig for i.MX8MM

 Documentation/boards/imx/nxp-imx8mm-evk.rst   |   71 +
 arch/arm/boards/Makefile                      |    1 +
 .../boards/freescale-mx7-sabresd/lowlevel.c   |   12 +-
 arch/arm/boards/nxp-imx8mm-evk/Makefile       |    2 +
 arch/arm/boards/nxp-imx8mm-evk/board.c        |   81 +
 .../flash-header-imx8mm-evk.imxcfg            |    5 +
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c     |  184 ++
 .../arm/boards/nxp-imx8mm-evk/lpddr4-timing.c | 1976 +++++++++++++++++
 arch/arm/boards/nxp-imx8mq-evk/ddr.h          |    9 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |   25 +-
 arch/arm/boards/phytec-som-imx8mq/ddr.h       |    7 +-
 .../boards/phytec-som-imx8mq/ddrphy_train.c   |    1 -
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  |   25 +-
 arch/arm/boards/zii-imx7d-dev/lowlevel.c      |   12 +-
 arch/arm/boards/zii-imx8mq-dev/ddr.h          |    9 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     |   25 +-
 arch/arm/configs/imx_v8_defconfig             |   18 +-
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx8mm-evk.dts                   |   62 +
 arch/arm/mach-imx/Kconfig                     |   21 +-
 arch/arm/mach-imx/Makefile                    |    4 +-
 arch/arm/mach-imx/atf.c                       |   26 +-
 arch/arm/mach-imx/boot.c                      |   42 +-
 arch/arm/mach-imx/cpu_init.c                  |   14 +-
 arch/arm/mach-imx/esdctl.c                    |   30 +-
 arch/arm/mach-imx/imx-bbu-internal.c          |    4 +-
 arch/arm/mach-imx/imx.c                       |    4 +
 arch/arm/mach-imx/imx8-ddrc.c                 |   91 -
 arch/arm/mach-imx/imx8m.c                     |  279 +++
 arch/arm/mach-imx/imx8mq.c                    |  111 -
 arch/arm/mach-imx/include/mach/atf.h          |    9 +-
 arch/arm/mach-imx/include/mach/debug_ll.h     |    4 +-
 arch/arm/mach-imx/include/mach/esdctl.h       |    1 +
 arch/arm/mach-imx/include/mach/generic.h      |   22 +-
 .../arm/mach-imx/include/mach/imx7-ccm-regs.h |   45 +-
 .../arm/mach-imx/include/mach/imx8-ccm-regs.h |   15 -
 arch/arm/mach-imx/include/mach/imx8-ddrc.h    |   66 -
 .../mach-imx/include/mach/imx8m-ccm-regs.h    |   57 +
 arch/arm/mach-imx/include/mach/imx8m-regs.h   |   37 +
 arch/arm/mach-imx/include/mach/imx8mm-regs.h  |   46 +
 arch/arm/mach-imx/include/mach/imx8mq-regs.h  |    2 +
 arch/arm/mach-imx/include/mach/imx8mq.h       |   13 +-
 .../arm/mach-imx/include/mach/imx_cpu_types.h |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx7.h    |    4 +-
 arch/arm/mach-imx/include/mach/iomux-mx8m.h   |   27 +
 arch/arm/mach-imx/include/mach/iomux-mx8mm.h  |  701 ++++++
 .../mach/{iomux-mx8.h => iomux-mx8mq.h}       |   24 +-
 arch/arm/mach-imx/include/mach/xload.h        |    2 +-
 drivers/clk/imx/Makefile                      |    3 +
 drivers/clk/imx/clk-imx8mm.c                  |  577 +++++
 drivers/clk/imx/clk-pll14xx.c                 |  446 ++++
 drivers/clk/imx/clk.h                         |   47 +
 drivers/ddr/Kconfig                           |    1 +
 drivers/ddr/Makefile                          |    1 +
 drivers/ddr/imx8m/Kconfig                     |    7 +
 drivers/ddr/imx8m/Makefile                    |    7 +
 drivers/ddr/imx8m/ddr_init.c                  |  211 ++
 drivers/ddr/imx8m/ddrphy_csr.c                |  732 ++++++
 drivers/ddr/imx8m/ddrphy_train.c              |  112 +
 drivers/ddr/imx8m/ddrphy_utils.c              |  306 +++
 drivers/ddr/imx8m/helper.c                    |   86 +
 drivers/hab/habv4.c                           |   12 +-
 drivers/i2c/busses/i2c-imx-early.c            |   12 +
 drivers/mci/imx-esdhc-pbl.c                   |   23 +-
 drivers/mci/imx-esdhc.c                       |    1 +
 drivers/pinctrl/imx-iomux-v3.c                |    2 +
 drivers/serial/serial_imx.c                   |    3 +
 drivers/usb/Makefile                          |    2 +-
 drivers/usb/gadget/Kconfig                    |    3 +
 drivers/usb/gadget/Makefile                   |    1 +
 drivers/usb/gadget/fsl_udc.c                  |  394 +---
 drivers/usb/gadget/fsl_udc_pbl.c              |  210 ++
 drivers/usb/imx/chipidea-imx.c                |    2 +
 firmware/Kconfig                              |    3 +
 firmware/Makefile                             |    1 +
 images/Makefile.imx                           |    6 +
 include/i2c/i2c-early.h                       |    1 +
 include/mfd/bd71837.h                         |  103 +
 include/soc/fsl/fsl_udc.h                     |  383 ++++
 include/soc/imx8m/clk-early.h                 |    7 +
 include/soc/imx8m/ddr.h                       |  407 ++++
 include/soc/imx8m/lpddr4_define.h             |   97 +
 scripts/imx/imx-usb-loader.c                  |   54 +-
 scripts/imx/imx.c                             |    1 +
 84 files changed, 7652 insertions(+), 840 deletions(-)
 create mode 100644 Documentation/boards/imx/nxp-imx8mm-evk.rst
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
 create mode 100644 arch/arm/dts/imx8mm-evk.dts
 delete mode 100644 arch/arm/mach-imx/imx8-ddrc.c
 create mode 100644 arch/arm/mach-imx/imx8m.c
 delete mode 100644 arch/arm/mach-imx/imx8mq.c
 delete mode 100644 arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx8-ddrc.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8m-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8m.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8mm.h
 rename arch/arm/mach-imx/include/mach/{iomux-mx8.h => iomux-mx8mq.h} (98%)
 create mode 100644 drivers/clk/imx/clk-imx8mm.c
 create mode 100644 drivers/clk/imx/clk-pll14xx.c
 create mode 100644 drivers/ddr/imx8m/Kconfig
 create mode 100644 drivers/ddr/imx8m/Makefile
 create mode 100644 drivers/ddr/imx8m/ddr_init.c
 create mode 100644 drivers/ddr/imx8m/ddrphy_csr.c
 create mode 100644 drivers/ddr/imx8m/ddrphy_train.c
 create mode 100644 drivers/ddr/imx8m/ddrphy_utils.c
 create mode 100644 drivers/ddr/imx8m/helper.c
 create mode 100644 drivers/usb/gadget/fsl_udc_pbl.c
 create mode 100644 include/mfd/bd71837.h
 create mode 100644 include/soc/fsl/fsl_udc.h
 create mode 100644 include/soc/imx8m/clk-early.h
 create mode 100644 include/soc/imx8m/ddr.h
 create mode 100644 include/soc/imx8m/lpddr4_define.h

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
