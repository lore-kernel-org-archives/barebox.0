Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHL-0001XH-Qf
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 10:31:09 +0100
Message-Id: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/14] Add initial STMicroelectronics MP1 support
To: Barebox List <barebox@lists.infradead.org>

This adds very basic STMicroelectronics MP1 support. No 1st stage so
far, only the clock driver and UART driver have been ported. the only
supported board right now is the DK2 development board. This is
basically a "Let's see how far I can get in a single day" effort. Stay
tuned for more, but currently this is more of a low priority
project.

Sascha

Sascha Hauer (14):
  clk: clk-composite: return parent_rate if no rate clk
  clk: parent_names should be const
  clk: export clk_gate_is_enabled()
  clk: Make CLK_IGNORE_UNUSED generic
  clk: Support CLK_IS_CRITICAL flag
  clk: divider: pass divider flags
  clk: divider: Support CLK_DIVIDER_READ_ONLY flag
  clk: mux: Support mux specific flags
  clk: mux: Support CLK_MUX_READ_ONLY flag
  clk: mux: Support CLK_SET_RATE_NO_REPARENT flag
  ARM: stm32mp1: Add clk driver
  ARM: stm32mp1: Add serial driver
  clocksource: Enable architected timer support for CPU_V7
  ARM: Add initial STM32MP1 support

 arch/arm/Kconfig                              |   11 +
 arch/arm/Makefile                             |    1 +
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/stm32mp157c-dk2/Makefile      |    2 +
 arch/arm/boards/stm32mp157c-dk2/board.c       |   16 +
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c    |   18 +
 arch/arm/configs/stm32mp1_defconfig           |   98 +
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/stm32mp157a-dk1.dts              |   62 +
 arch/arm/dts/stm32mp157c-dk2.dts              |   14 +
 arch/arm/dts/stm32mp157c.dtsi                 |    7 +
 arch/arm/include/asm/system.h                 |   19 +
 arch/arm/mach-clps711x/clock.c                |    4 +-
 arch/arm/mach-stm32mp1/Kconfig                |   10 +
 arch/arm/mach-stm32mp1/Makefile               |    1 +
 .../arm/mach-stm32mp1/include/mach/debug_ll.h |   28 +
 arch/arm/mach-stm32mp1/include/mach/stm32.h   |   35 +
 drivers/clk/Makefile                          |    1 +
 drivers/clk/clk-composite.c                   |    7 +-
 drivers/clk/clk-divider.c                     |   35 +-
 drivers/clk/clk-gate.c                        |    2 +-
 drivers/clk/clk-mux.c                         |   24 +-
 drivers/clk/clk-stm32mp1.c                    | 1988 +++++++++++++++++
 drivers/clk/clk.c                             |    3 +
 drivers/clk/imx/clk-vf610.c                   |    2 +-
 drivers/clk/imx/clk.h                         |   33 +-
 drivers/clk/mxs/clk.h                         |    2 +-
 drivers/clk/rockchip/clk-pll.c                |    3 +-
 drivers/clk/rockchip/clk-rk3188.c             |    3 -
 drivers/clk/rockchip/clk-rk3288.c             |    3 -
 drivers/clk/rockchip/clk.c                    |   16 +-
 drivers/clk/rockchip/clk.h                    |    1 -
 drivers/clk/tegra/clk-periph.c                |    2 +-
 drivers/clocksource/Kconfig                   |    2 +-
 drivers/clocksource/armv8-timer.c             |    1 +
 drivers/serial/Kconfig                        |    4 +
 drivers/serial/Makefile                       |    1 +
 drivers/serial/serial_stm32.c                 |  246 ++
 drivers/serial/serial_stm32.h                 |   48 +
 images/Makefile                               |    1 +
 images/Makefile.stm32mp1                      |    8 +
 include/linux/clk.h                           |   41 +-
 42 files changed, 2732 insertions(+), 73 deletions(-)
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/Makefile
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/board.c
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/lowlevel.c
 create mode 100644 arch/arm/configs/stm32mp1_defconfig
 create mode 100644 arch/arm/dts/stm32mp157a-dk1.dts
 create mode 100644 arch/arm/dts/stm32mp157c-dk2.dts
 create mode 100644 arch/arm/dts/stm32mp157c.dtsi
 create mode 100644 arch/arm/mach-stm32mp1/Kconfig
 create mode 100644 arch/arm/mach-stm32mp1/Makefile
 create mode 100644 arch/arm/mach-stm32mp1/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-stm32mp1/include/mach/stm32.h
 create mode 100644 drivers/clk/clk-stm32mp1.c
 create mode 100644 drivers/serial/serial_stm32.c
 create mode 100644 drivers/serial/serial_stm32.h
 create mode 100644 images/Makefile.stm32mp1

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
