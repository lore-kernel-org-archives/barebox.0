Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002jy-0X
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cT4sY-00070y-Ap
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:51:10 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1cT4sX-0006QQ-WA
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:51:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:45 +0100
Message-Id: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: i.MX7 support
To: Barebox List <barebox@lists.infradead.org>

The following series adds i.MX7 support to barebox. The port
was done on the WaRP7 board. The board starts, eMMC, USB and serial work.
This board does not have ethernet or NAND, so supporting this is
left for a later exercise.

It will be some additional fun to support the 2nd CPU for i.MX7d as we'll
need PSCI support then. So far we are limited to a single core, but
the only currently supported board is single core anyway.

One issue remaining is that I am currently unable to reset the board
using the watchdog or the barebox reset command. Out of ideas, will
fix later.

Sascha


----------------------------------------------------------------
Juergen Borleis (10):
      imx-usb-loader: let constant data be const
      imx-usb-loader: this table is used internally only, so keep it static
      imx-usb-loader: add i.MX7S support
      ARM: Makefile: format fix
      ARM: i.MX: Add i.MX7 base architecture support
      clk: i.MX: Add clock support for i.MX7
      ARM: i.MX: gpt: Add i.MX7 support
      pinmmux: i.MX: add pin mux support for i.MX7
      serial: i.MX: add i.MX7 support
      ARM: i.MX: Add WaRP7 board support

Sascha Hauer (13):
      i2c: i.MX: Enable clock
      mci: imx-esdhc: Enable clock
      serial: i.MX: Enable clock
      usb: imx: Make usb-misc multi instance safe
      usb: imx: Add usbmisc support for i.MX7
      usb: imx: Add clock support
      phy: usb-nop-xceiv: Add clock support
      of: partitions: force "partitions" subnode
      mci: Allow to partition eMMC boot partitions
      mci: imx-esdhci: remove wrong write protection test
      clk: i.MX: pllv3: Add support for the i.MX7 enet pll
      clk: imx: Add clk-cpu support
      clk: i.MX7: Add missing USB clocks

 Documentation/boards/imx.rst                       |   1 +
 Documentation/boards/imx/Element14-WaRP7.rst       |  54 ++
 arch/arm/Makefile                                  |   2 +-
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/element14-warp7/Makefile           |   2 +
 arch/arm/boards/element14-warp7/board.c            |  35 +
 .../element14-warp7/flash-header-mx7-warp.imxcfg   |  81 ++
 arch/arm/boards/element14-warp7/lowlevel.c         |  48 ++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx7s-warp.dts                        |  45 ++
 arch/arm/mach-imx/Kconfig                          |   9 +
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/boot.c                           |  70 ++
 arch/arm/mach-imx/clocksource.c                    |   6 +-
 arch/arm/mach-imx/cpu_init.c                       |   5 +
 arch/arm/mach-imx/imx.c                            |   6 +
 arch/arm/mach-imx/imx7.c                           |  75 ++
 arch/arm/mach-imx/include/mach/debug_ll.h          |   3 +
 arch/arm/mach-imx/include/mach/generic.h           |  16 +
 arch/arm/mach-imx/include/mach/imx7-regs.h         |  23 +
 arch/arm/mach-imx/include/mach/imx7.h              |  59 ++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h     |   1 +
 common/Kconfig                                     |   8 +
 drivers/clk/imx/Makefile                           |   2 +
 drivers/clk/imx/clk-cpu.c                          | 110 +++
 drivers/clk/imx/clk-imx7.c                         | 881 +++++++++++++++++++++
 drivers/clk/imx/clk-pllv3.c                        |  23 +-
 drivers/clk/imx/clk.h                              |  33 +
 drivers/i2c/busses/i2c-imx.c                       |   1 +
 drivers/mci/imx-esdhc.c                            |  15 +-
 drivers/mci/mci-core.c                             |  78 +-
 drivers/of/partition.c                             |  12 +-
 drivers/phy/usb-nop-xceiv.c                        |  18 +-
 drivers/pinctrl/imx-iomux-v3.c                     |   5 +-
 drivers/serial/serial_imx.c                        |   4 +
 drivers/usb/imx/chipidea-imx.c                     |  22 +-
 drivers/usb/imx/imx-usb-misc.c                     |  87 +-
 images/Makefile.imx                                |   5 +
 include/mci.h                                      |   1 +
 include/serial/imx-uart.h                          |   5 +
 include/usb/chipidea-imx.h                         |   4 +-
 scripts/imx/imx-usb-loader.c                       |  21 +-
 scripts/imx/imx.c                                  |   1 +
 43 files changed, 1803 insertions(+), 77 deletions(-)
 create mode 100644 Documentation/boards/imx/Element14-WaRP7.rst
 create mode 100644 arch/arm/boards/element14-warp7/Makefile
 create mode 100644 arch/arm/boards/element14-warp7/board.c
 create mode 100644 arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
 create mode 100644 arch/arm/boards/element14-warp7/lowlevel.c
 create mode 100644 arch/arm/dts/imx7s-warp.dts
 create mode 100644 arch/arm/mach-imx/imx7.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx7-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx7.h
 create mode 100644 drivers/clk/imx/clk-cpu.c
 create mode 100644 drivers/clk/imx/clk-imx7.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
