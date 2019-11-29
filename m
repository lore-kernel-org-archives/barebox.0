Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006ck-Uf
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz7-0006u0-LD
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:05 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:26 +0100
Message-Id: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 00/39] randcfg build fixes
To: barebox@lists.infradead.org

Hi,

this series is a set of fixes that have accumulated in the randcfg
build tests. All of them survived serveral rounds of build testing
without causing any new issues. Not all of them fix build breakages,
a significant number is just fixing compiler warnings that showed
up in the build jobs.

Regards,
Lucas

Lucas Stach (39):
  ARM: imx: add image type choice
  ratp: add more build dependencies
  ARM: move into ARM32 specific optee kernel start into lib32 dir
  ARM: implement CONFIG_PBL_BREAK for ARM64
  lib: zstd: declare locally used functions as static
  common: provide stubs for ctrlc_* functions
  commands: keystore: use correct type for s_len
  gui: picopng: declare locally used functions as static
  reset_source: add stub for reset_source_set_device
  spi: fix symbol export for spi_register_controller
  mfd: superio: add missing semicolon after EXPORT_SYMBOL
  ARM: psci: declare locally used functions as static
  ARM: mxs: bcb: declare locally used functions as static
  usb: dwc3: depend on OFDEVICE
  mtd: nand: don't call BBT functions if BBT support isn't built
  mfd: da9063: don't try to register gpiochip when GPIOLIB isn't built
  mci: MCI_IMX_ESDHC_PBL has no dependency on MCI
  i2c: always walk down into i2c/busses Makefile
  usb: usb251xb: depend on OFDEVICE
  pstore: don't try to grab non-existent logbuf
  firmware: zynqmp-fpga: fix comparison between pointer and integer
  pstore: ramoops: use correct format specifier for size_t variables
  clocksource: ARMv8 timer can only be built on ARMv8
  input: select POLLER
  ARM: layerscape: add missing selects for TQMLS1046A
  ARM: PBL break is not available on ARMv4
  ARM: ARM_SMCCC is only available on >= ARMv7
  ARM: layerscape: select OFTREE and OFDEVICE
  usb: dwc3: dual role mode needs gadget support
  pinctrl: at91pio4: move to correct location in Kconfig
  ARM: layerscape: ppa: use sync_for_execution instead of a manual cache
    flush
  ubootvarfs: depend on OFTREE
  ARM: davinci: virt2real: select OFTREE and OFDEVICE
  ARM: omap: pfc200: NAND support requires CONFIG_OMAP_GPMC
  net: designware-eqos: depend on COMMON_CLK
  ARM: mvebu: correct DTB rule for MARVELL_ARMADA_XP_DB
  nvme: correct symbol export name for nvme_submit_sync_cmd
  pinctrl: tegra: mark drvdata as maybe unused
  pinctrl: at91pio4 depends on OFDEVICE

 arch/arm/Kconfig                             |  4 ++
 arch/arm/boards/wago-pfc-am35xx/board-mlo.c  |  4 +-
 arch/arm/cpu/Makefile                        |  1 -
 arch/arm/cpu/common.c                        |  4 ++
 arch/arm/cpu/psci.c                          |  2 +-
 arch/arm/dts/Makefile                        |  3 +-
 arch/arm/include/asm/barebox-arm-head.h      |  4 ++
 arch/arm/lib32/Makefile                      |  1 +
 arch/arm/{cpu => lib32}/start-kernel-optee.S |  0
 arch/arm/mach-at91/Kconfig                   |  1 +
 arch/arm/mach-davinci/Kconfig                |  2 +
 arch/arm/mach-imx/Kconfig                    | 56 +++++++++++-------
 arch/arm/mach-layerscape/Kconfig             |  3 +
 arch/arm/mach-layerscape/ppa.c               |  4 +-
 arch/arm/mach-mxs/bcb.c                      |  2 +-
 commands/keystore.c                          |  2 +-
 common/Kconfig                               |  2 +-
 common/console_simple.c                      | 11 ----
 common/ratp/Kconfig                          |  1 +
 drivers/Makefile                             |  4 +-
 drivers/clocksource/Kconfig                  |  2 +-
 drivers/firmware/zynqmp-fpga.c               |  2 +-
 drivers/i2c/Makefile                         |  3 +-
 drivers/input/Kconfig                        |  1 +
 drivers/mci/Kconfig                          |  6 +-
 drivers/mfd/da9063.c                         | 16 +++---
 drivers/mfd/superio.c                        |  4 +-
 drivers/misc/Kconfig                         |  1 +
 drivers/mtd/nand/nand_base.c                 |  4 +-
 drivers/net/Kconfig                          |  3 +-
 drivers/nvme/host/core.c                     |  2 +-
 drivers/pinctrl/Kconfig                      | 20 +++----
 drivers/pinctrl/pinctrl-tegra30.c            |  4 +-
 drivers/spi/spi.c                            |  2 +-
 drivers/usb/dwc3/Kconfig                     |  2 +
 drivers/usb/misc/Kconfig                     |  1 +
 fs/pstore/platform.c                         |  3 +
 fs/pstore/ram.c                              |  8 +--
 include/common.h                             |  5 ++
 include/console.h                            |  5 ++
 include/reset_source.h                       |  5 ++
 lib/Kconfig                                  |  5 ++
 lib/gui/picopng.c                            | 60 ++++++++++----------
 lib/zstd/decompress.c                        | 10 ++--
 44 files changed, 171 insertions(+), 114 deletions(-)
 rename arch/arm/{cpu => lib32}/start-kernel-optee.S (100%)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
