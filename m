Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQg-0008Bq-Em
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000Yv-AZ
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000JJ-HA
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:23 +0200
Message-Id: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 00/18] Barebox Deep-Probe
To: barebox@lists.infradead.org

Hi all,

this series is our approach to address the EPROBE_DEFER and initcall
shifting problem. I skip the deep-probe explanation here and instead
refer to the detailed commit message of patch 15. 

Patche 1-11:
 - Fixes and cleanups I found during the development of deep-probe

Patch 12-14:
 - Preliminary for the deep-probe mechanism

Patch 15:
 - The interesting part of this series. This patch implements the
   deep-probe mechanism and adds helpers to make your board deep-probe
   aware.

Patch 16-17:
 - Adds STM32MP1 and i.MX architecture specific deep-probe code. For
   those architectures this means that we need to populate the
   memory-controller.

Patch 18:
 - Convert the sabrelite board to use the deep_probe mechanism. This can
   be used as example for others :)

Comments & testers are welcome :)

PS:
This series is based on Sascha's commit
http://lists.infradead.org/pipermail/barebox/2020-September/033979.html.
You need to apply this one before applying this series.

Regards,
  Marco

Lucas Stach (1):
  of: base: move memory init from DT to initcall

Marco Felsch (17):
  video: ssd1307fb: fix VBAT supply id
  ARM: boards: mx6-sabrelite: [cosmetic] make use of IMX_GPIO_NR
  drivers: gpio: treewide: [cosmetic] use register_driver_macros
  ARM: mx6-sabrelite: remove obsolete sabrelite_mem_init()
  spi: core: don't ignore register_device failures
  regulator: improve of_regulator_register error handling
  regulator: test of_regulator_register input before accessing it
  regulator: stpmic1: fix registering missed regulators
  regulator: add device reference to regulator_dev
  regulator: treewide: drop local device_d reference
  of: platform: fix of_amba_device_create stub return value
  of: base: move clock init from of_probe() to barebox_register_of()
  initcall: add of_populate_initcall
  common: add initial barebox deep-probe support
  ARM: i.MX: esdctl: add deep-probe support
  ARM: stm32mp: ddrctrl: add deep-probe support
  ARM: boards: mx6-sabrelite: add deep-probe support

 .../boards/freescale-mx6-sabrelite/board.c    |  56 +++++-----
 arch/arm/mach-imx/esdctl.c                    |  16 ++-
 arch/arm/mach-stm32mp/ddrctrl.c               |  15 ++-
 common/Makefile                               |   1 +
 common/deep-probe.c                           |  39 +++++++
 drivers/base/driver.c                         |  11 +-
 drivers/clk/clk.c                             |   5 +
 drivers/gpio/gpio-ath79.c                     |   7 +-
 drivers/gpio/gpio-davinci.c                   |   7 +-
 drivers/gpio/gpio-digic.c                     |   7 +-
 drivers/gpio/gpio-dw.c                        |   7 +-
 drivers/gpio/gpio-generic.c                   |   7 +-
 drivers/gpio/gpio-imx.c                       |   8 +-
 drivers/gpio/gpio-jz4740.c                    |   7 +-
 drivers/gpio/gpio-malta-fpga-i2c.c            |   7 +-
 drivers/gpio/gpio-mpc8xxx.c                   |   7 +-
 drivers/gpio/gpio-mxs.c                       |   8 +-
 drivers/gpio/gpio-omap.c                      |   7 +-
 drivers/gpio/gpio-stmpe.c                     |   7 +-
 drivers/gpio/gpio-tegra.c                     |   7 +-
 drivers/gpio/gpio-vf610.c                     |   7 +-
 drivers/i2c/i2c.c                             |   6 +
 drivers/of/base.c                             |  28 ++++-
 drivers/of/platform.c                         | 103 +++++++++++++++++-
 drivers/regulator/anatop-regulator.c          |   1 +
 drivers/regulator/bcm2835.c                   |  24 ++--
 drivers/regulator/core.c                      |  12 ++
 drivers/regulator/fixed.c                     |   1 +
 drivers/regulator/stm32-pwr.c                 |   7 +-
 drivers/regulator/stpmic1_regulator.c         |   8 +-
 drivers/reset/core.c                          |   5 +
 drivers/spi/spi.c                             |   6 +-
 drivers/video/ssd1307fb.c                     |   2 +-
 include/asm-generic/barebox.lds.h             |   1 +
 include/deep-probe.h                          |  17 +++
 include/init.h                                |  10 +-
 include/of.h                                  |  37 ++++++-
 include/regulator.h                           |   2 +
 38 files changed, 357 insertions(+), 156 deletions(-)
 create mode 100644 common/deep-probe.c
 create mode 100644 include/deep-probe.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
