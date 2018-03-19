Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpk-0000gG-B8
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:32 +0100
Message-Id: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/14] ARM: i.MX8MQ and EVK support
To: Barebox List <barebox@lists.infradead.org>

This series adds support for the i.MX8MQ SoC and the EVK board from NXP.
Currently only 2nd stage after U-Boot is supported, 1st stage support
will still need some time. Besides of the missing first stage support
the EVK support should be fairly complete already, as the i.MX8MQ is
very similar to the i.MX6 and only the core has been changed.

This series is likely not the final one as the clock driver and the
device tree are derived from mailing list patches and not from the
final versions (which do not exist yet).

Sascha

Sascha Hauer (14):
  ARM: i.MX: xload: Fix compiler warning
  ARM: i.MX: compile arm32 specific errata only for CPU32
  ARM: Add i.MX8 support
  aarch64: Add i.MX8 debug UART support
  Include our own include/dt-bindings
  ARM: i.MX8: Add i.MX8mq EVK support
  mci: imx-esdhc: use dma mapping functions
  net: fec_imx: remove unnecessary DMA sync ops
  net: fec_imx: Use dma mapping functions
  clock: Add i.MX8MQ clock driver
  serial: i.MX: Add i.MX8 support
  mmc: i.MX esdhc: Add i.MX8 support
  gpio: i.MX: Add i.MX8mq support
  ARM: i.MX: ocotp: Add i.MX8MQ support

 arch/arm/boards/Makefile                       |   1 +
 arch/arm/boards/nxp-imx8mq-evk/Makefile        |   2 +
 arch/arm/boards/nxp-imx8mq-evk/board.c         |  44 ++
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c      |  43 ++
 arch/arm/dts/Makefile                          |   1 +
 arch/arm/dts/imx8mq-evk.dts                    | 446 ++++++++++++++++++
 arch/arm/dts/imx8mq-pinfunc.h                  | 623 ++++++++++++++++++++++++
 arch/arm/dts/imx8mq.dtsi                       | 624 ++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                      |  15 +-
 arch/arm/mach-imx/Makefile                     |   1 +
 arch/arm/mach-imx/cpu_init.c                   |   2 +
 arch/arm/mach-imx/imx.c                        |   4 +
 arch/arm/mach-imx/imx8mq.c                     |  66 +++
 arch/arm/mach-imx/include/mach/debug_ll.h      |   3 +
 arch/arm/mach-imx/include/mach/generic.h       |  13 +
 arch/arm/mach-imx/include/mach/imx8mq-regs.h   | 121 +++++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h |   1 +
 arch/arm/mach-imx/ocotp.c                      |  10 +
 arch/arm/mach-imx/xload-esdhc.c                |   7 +-
 arch/mips/dts/include/dt-bindings              |   1 -
 common/Kconfig                                 |   8 +
 drivers/clk/imx/Makefile                       |   3 +
 drivers/clk/imx/clk-frac-pll.c                 | 226 +++++++++
 drivers/clk/imx/clk-imx8mq.c                   | 580 +++++++++++++++++++++++
 drivers/clk/imx/clk-sccg-pll.c                 | 242 ++++++++++
 drivers/clk/imx/clk.h                          |  27 ++
 drivers/gpio/gpio-imx.c                        |   3 +
 drivers/mci/imx-esdhc.c                        |  54 +--
 drivers/net/fec_imx.c                          |  19 +-
 drivers/net/fec_imx.h                          |   1 +
 drivers/serial/serial_imx.c                    |   5 +-
 images/Makefile.imx                            |   6 +
 include/dt-bindings/clock/imx8mq-clock.h       | 629 +++++++++++++++++++++++++
 include/serial/imx-uart.h                      |   5 +
 scripts/Makefile.lib                           |   1 +
 35 files changed, 3796 insertions(+), 41 deletions(-)
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
 create mode 100644 arch/arm/dts/imx8mq-evk.dts
 create mode 100644 arch/arm/dts/imx8mq-pinfunc.h
 create mode 100644 arch/arm/dts/imx8mq.dtsi
 create mode 100644 arch/arm/mach-imx/imx8mq.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mq-regs.h
 delete mode 120000 arch/mips/dts/include/dt-bindings
 create mode 100644 drivers/clk/imx/clk-frac-pll.c
 create mode 100644 drivers/clk/imx/clk-imx8mq.c
 create mode 100644 drivers/clk/imx/clk-sccg-pll.c
 create mode 100644 include/dt-bindings/clock/imx8mq-clock.h

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
