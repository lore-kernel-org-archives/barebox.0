Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000F9-3U
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1YGN6q-0004aq-DH
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 08:32:20 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1YGN6q-0003dF-9o
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 08:32:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:04 +0100
Message-Id: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] MXS: Add device tree support and duckbill board support
To: Barebox List <barebox@lists.infradead.org>

This series adds device tree support for MXS:

- Add device tree support for MXS specific drivers (debug UART, SD/MMC,
  OCOTP)
- Make sure SoC platform_devices are not registered when a device tree
  is present
- Add a pinctrl driver for MXS
- Turn GPIO support into a driver to make GPIO bindings via device tree
  possible

As a first user for the device tree support the I2SE duckbill board
is added.

Sascha

----------------------------------------------------------------
Sascha Hauer (15):
      ARM: MXS: Fix vddd brownout setting
      MXS: power-init: inline only once used functions
      ARM: MXS: Do not register devices with device tree support
      ARM: MXS: Make gpio a driver
      mci: mxs: Add devicetree support
      serial: stm_serial: Add devicetree support
      ARM: MXS: Create ocotp device in SoC code
      ARM: MXS: ocotp: Add devicetree support
      of: Create platform_device when creating AMBA device failed
      pbl: Add support for memory_display
      pinctrl: Add MXS pinctrl driver
      ARM: MXS: Setup vdda in power prep
      ARM: MXS: Add regulator debug print
      ARM: MXS: power-init: Add parameters to mx28_power_init()
      ARM: MXS: Add duckbill board support

 arch/arm/Kconfig                                 |   1 +
 arch/arm/boards/Makefile                         |   1 +
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   3 -
 arch/arm/boards/duckbill/Makefile                |   2 +
 arch/arm/boards/duckbill/board.c                 |  82 +++++++
 arch/arm/boards/duckbill/lowlevel.c              |  73 ++++++
 arch/arm/boards/freescale-mx28-evk/lowlevel.c    |   2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c    |   2 -
 arch/arm/boards/karo-tx28/lowlevel.c             |   2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c            |   3 -
 arch/arm/configs/duckbill_defconfig              | 100 ++++++++
 arch/arm/dts/Makefile                            |   1 +
 arch/arm/dts/imx28-duckbill.dts                  |  15 ++
 arch/arm/mach-mxs/Kconfig                        |   8 +
 arch/arm/mach-mxs/include/mach/init.h            |   8 +-
 arch/arm/mach-mxs/iomux-imx.c                    |  60 -----
 arch/arm/mach-mxs/mem-init.c                     |  15 --
 arch/arm/mach-mxs/ocotp.c                        |   9 +
 arch/arm/mach-mxs/power-init.c                   | 277 +++++++++++++----------
 arch/arm/mach-mxs/soc-imx23.c                    |   6 +
 arch/arm/mach-mxs/soc-imx28.c                    |   9 +
 common/Makefile                                  |   1 +
 drivers/gpio/Kconfig                             |   3 +
 drivers/gpio/Makefile                            |   1 +
 drivers/gpio/gpio-mxs.c                          | 186 +++++++++++++++
 drivers/mci/mxs.c                                |  50 ++--
 drivers/of/platform.c                            |   4 +-
 drivers/pinctrl/Kconfig                          |   7 +
 drivers/pinctrl/Makefile                         |   1 +
 drivers/pinctrl/pinctrl-mxs.c                    | 171 ++++++++++++++
 drivers/serial/stm-serial.c                      |   9 +
 images/Makefile.mxs                              |  10 +
 pbl/console.c                                    |  10 +
 33 files changed, 899 insertions(+), 233 deletions(-)
 create mode 100644 arch/arm/boards/duckbill/Makefile
 create mode 100644 arch/arm/boards/duckbill/board.c
 create mode 100644 arch/arm/boards/duckbill/lowlevel.c
 create mode 100644 arch/arm/configs/duckbill_defconfig
 create mode 100644 arch/arm/dts/imx28-duckbill.dts
 create mode 100644 drivers/gpio/gpio-mxs.c
 create mode 100644 drivers/pinctrl/pinctrl-mxs.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
