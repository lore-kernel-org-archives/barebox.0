Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLX1-0002ir-Kf
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:37:58 +0000
Received: by mail-ee0-f53.google.com with SMTP id b57so3919332eek.40
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:37:33 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:33 +0200
Message-Id: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 00/11] ARM: add initial support for Rockchip boards
To: barebox@lists.infradead.org

This series adds an initial support for Rockchip SoCs and has been
tested on a Radxa Rock board, on which I'm able to load a kernel from
the network and boot it [1].

At the moment Barebox must be chainloaded from the Rockchip binary
bootloader which performs low-level initializations and loads Barebox
from the "boot" partition on the NAND.

Barebox should be written using the same procedure used for kernels:
it must be prepared with the mkimage tool and then written with
rkflashkit.

There is a u-boot code released by Rockchip [2] which probably
includes all the low-level initializations but I'm not brave enough to
try it.

The patchset adds ethernet and pinctrl drivers, PLL and clocks
initialization, and code to power on the external PHY of the board
through the PMIC.

Beniamino

[1] https://gist.github.com/anonymous/41ccb09030005acb7f89
[2] http://dl.radxa.com/rock/source/.ubootrk.tar.gz

Beniamino Galvani (11):
  net: add ARC EMAC driver
  mfd: add act8846 driver
  ARM: add basic support for Rockchip SoCs
  ARM: rockchip: add PLL initialization function
  clk: gate: add flags argument to clock gate constructor
  clk: gate: unify enable and disable functions handling
  clk: gate: add CLK_GATE_HIWORD_MASK flag
  clk: add rockchip clock gate driver
  pinctrl: add rockchip pinctrl and gpio drivers
  ARM: dts: add Rockchip devicetree files
  ARM: rockchip: add radxa-rock board

 arch/arm/Kconfig                                   |   11 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/radxa-rock/Makefile                |    2 +
 arch/arm/boards/radxa-rock/board.c                 |   78 +++
 arch/arm/boards/radxa-rock/env/config-board        |    6 +
 arch/arm/boards/radxa-rock/lowlevel.c              |   23 +
 arch/arm/configs/radxa-rock_defconfig              |   62 +++
 arch/arm/dts/rk3188-clocks.dtsi                    |  289 ++++++++++
 arch/arm/dts/rk3188-radxarock.dts                  |   32 ++
 arch/arm/dts/rk3188.dtsi                           |  298 +++++++++++
 arch/arm/dts/rk3xxx.dtsi                           |  134 +++++
 arch/arm/mach-imx/clk.h                            |    2 +-
 arch/arm/mach-rockchip/Kconfig                     |   15 +
 arch/arm/mach-rockchip/Makefile                    |    2 +
 arch/arm/mach-rockchip/core.c                      |   28 +
 arch/arm/mach-rockchip/include/mach/rockchip-pll.h |   26 +
 .../arm/mach-rockchip/include/mach/rockchip-regs.h |   25 +
 arch/arm/mach-rockchip/pll.c                       |  102 ++++
 arch/arm/mach-zynq/clk-zynq7000.c                  |    8 +-
 drivers/clk/Makefile                               |    1 +
 drivers/clk/clk-gate.c                             |   54 +-
 drivers/clk/mvebu/common.c                         |    2 +-
 drivers/clk/mxs/clk-imx28.c                        |    2 +-
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-rockchip.c                |   86 +++
 drivers/clk/tegra/clk-periph.c                     |    2 +-
 drivers/mfd/Kconfig                                |    4 +
 drivers/mfd/Makefile                               |    1 +
 drivers/mfd/act8846.c                              |  154 ++++++
 drivers/net/Kconfig                                |    7 +
 drivers/net/Makefile                               |    1 +
 drivers/net/arc_emac.c                             |  469 ++++++++++++++++
 drivers/pinctrl/Kconfig                            |    7 +
 drivers/pinctrl/Makefile                           |    1 +
 drivers/pinctrl/pinctrl-rockchip.c                 |  560 ++++++++++++++++++++
 include/dt-bindings/pinctrl/rockchip.h             |   32 ++
 include/linux/clk.h                                |    8 +-
 include/mfd/act8846.h                              |   56 ++
 39 files changed, 2557 insertions(+), 36 deletions(-)
 create mode 100644 arch/arm/boards/radxa-rock/Makefile
 create mode 100644 arch/arm/boards/radxa-rock/board.c
 create mode 100644 arch/arm/boards/radxa-rock/env/config-board
 create mode 100644 arch/arm/boards/radxa-rock/lowlevel.c
 create mode 100644 arch/arm/configs/radxa-rock_defconfig
 create mode 100644 arch/arm/dts/rk3188-clocks.dtsi
 create mode 100644 arch/arm/dts/rk3188-radxarock.dts
 create mode 100644 arch/arm/dts/rk3188.dtsi
 create mode 100644 arch/arm/dts/rk3xxx.dtsi
 create mode 100644 arch/arm/mach-rockchip/Kconfig
 create mode 100644 arch/arm/mach-rockchip/Makefile
 create mode 100644 arch/arm/mach-rockchip/core.c
 create mode 100644 arch/arm/mach-rockchip/include/mach/rockchip-pll.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/rockchip-regs.h
 create mode 100644 arch/arm/mach-rockchip/pll.c
 create mode 100644 drivers/clk/rockchip/Makefile
 create mode 100644 drivers/clk/rockchip/clk-rockchip.c
 create mode 100644 drivers/mfd/act8846.c
 create mode 100644 drivers/net/arc_emac.c
 create mode 100644 drivers/pinctrl/pinctrl-rockchip.c
 create mode 100644 include/dt-bindings/pinctrl/rockchip.h
 create mode 100644 include/mfd/act8846.h

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
