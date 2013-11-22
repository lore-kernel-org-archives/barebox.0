Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fs-52
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vjs2Y-0001X7-Rm
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 15:49:02 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Vjs2Y-0007qE-Qv
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 15:49:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:44 +0100
Message-Id: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add devicetree support to OMAP drivers
To: barebox@lists.infradead.org

This series adds devicetree support to the drivers relevant for
OMAP/AM33XX SoCs.

Sascha

----------------------------------------------------------------
Sascha Hauer (17):
      serial: ns16550: Add device ids for omap
      pinctrl: Add pinctrl-single driver
      spi: omap: encode register offset into device_id
      spi: omap: Add devicetree probe support
      i2c: omap: Add devicetree support
      net: cpsw: inline slave_data
      cpsw: Add devicetree probe support
      net: cpsw: move eth_device into slave
      net: cpsw: drop for_each_slave
      net: cpsw: attach slave to edev->priv
      net: cpsw: straighten error path
      gpio: omap: move to drivers/gpio/
      omap: gpmc: some refactoring
      gpio: omap: Add devicetree probe support
      mtd: omap gpmc: Use dev_add_param_enum
      bus: Add omap gpmc driver
      mmc: omap: Add devicetree support

 arch/arm/mach-omap/Makefile                        |   1 -
 arch/arm/mach-omap/gpmc.c                          |  25 +-
 arch/arm/mach-omap/include/mach/am33xx-devices.h   |   2 +-
 arch/arm/mach-omap/include/mach/gpmc_nand.h        |   3 +
 arch/arm/mach-omap/omap_devices.c                  |   4 +-
 drivers/bus/Kconfig                                |   6 +
 drivers/bus/Makefile                               |   1 +
 drivers/bus/omap-gpmc.c                            | 481 +++++++++++++++++++++
 drivers/gpio/Kconfig                               |   3 +
 drivers/gpio/Makefile                              |   1 +
 .../mach-omap/gpio.c => drivers/gpio/gpio-omap.c   |  39 +-
 drivers/i2c/busses/i2c-omap.c                      |  28 +-
 drivers/mci/omap_hsmmc.c                           |  13 +
 drivers/mtd/nand/nand_omap_gpmc.c                  |  36 +-
 drivers/net/cpsw.c                                 | 203 ++++++---
 drivers/pinctrl/Kconfig                            |   3 +
 drivers/pinctrl/Makefile                           |   1 +
 drivers/pinctrl/pinctrl-single.c                   | 166 +++++++
 drivers/serial/serial_ns16550.c                    |  62 ++-
 drivers/serial/serial_ns16550.h                    |   4 -
 drivers/spi/omap3_spi.c                            |  51 ++-
 drivers/spi/omap3_spi.h                            |   6 +-
 22 files changed, 1018 insertions(+), 121 deletions(-)
 create mode 100644 drivers/bus/omap-gpmc.c
 rename arch/arm/mach-omap/gpio.c => drivers/gpio/gpio-omap.c (81%)
 create mode 100644 drivers/pinctrl/pinctrl-single.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
