Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKSo-0001AQ-5H
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:28:51 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id B130018B4246
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:52 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:30 +0200
Message-Id: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 00/18] Tegra 3 support
To: barebox@lists.infradead.org

Ok, this one took me a little longer than I would
have wished for, but now it's good enough to post.

This series adds support for the Tegra 3 line of
SoCs. This includes a clock driver that sets up the
PLLs and peripheral clocks and a pinctrl driver to
bring the external muxing into a sane state.

There is still a lot to do here, but with this
series barebox starts up on an NVidia Beaver board
and the eMMC is usable.

Next step would be to integrate BCT writing into
the Tegra image process so barebox is able to write
itself to MMC as a bootable image.

Lucas Stach (18):
  gpio: tegra: remove dead code
  mmc: tegra: fix typo
  tegra: disable more lowlevel unsafe switch optimizations
  tegra: source MSELECT clock from CLK_M
  tegra: add Tegra3 kconfig symbol
  tegra: add Tegra3 ramsize detection
  tegra: add Tegra3 mem initcall
  tegra: recognize T30 in debug UART code
  dt-bindings: add pinctrl-tegra.h
  pinctrl: tegra: add Tegra3 driver
  dt-bindings: add tegra30-car.h
  clk: tegra: consider new T30 clock registers
  clk: tegra: add Tegra3 driver
  gpio: tegra: add Tegra3 setup
  ARM: tegra: add basic Tegra3 DT
  ARM: tegra: add NVidia Beaver board support
  ARM: dts: tegra: add full Beaver pinmux
  defconfig: tegra: add some useful options

 arch/arm/boards/Makefile                     |   1 +
 arch/arm/boards/nvidia-beaver/Makefile       |   4 +
 arch/arm/boards/nvidia-beaver/entry.c        |  38 ++
 arch/arm/boards/toradex-colibri-t20/Makefile |   4 +-
 arch/arm/boards/toshiba-ac100/Makefile       |   4 +-
 arch/arm/configs/tegra_v7_defconfig          |   9 +
 arch/arm/dts/Makefile                        |   4 +-
 arch/arm/dts/tegra30-beaver.dts              | 917 +++++++++++++++++++++++++++
 arch/arm/dts/tegra30.dtsi                    | 892 ++++++++++++++++++++++++++
 arch/arm/mach-tegra/Kconfig                  |   8 +
 arch/arm/mach-tegra/Makefile                 |  12 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h  |  34 +
 arch/arm/mach-tegra/tegra20.c                |  27 +-
 arch/arm/mach-tegra/tegra_avp_init.c         |   4 +-
 arch/arm/mach-tegra/tegra_maincomplex_init.c |   6 +-
 drivers/clk/tegra/Makefile                   |   3 +-
 drivers/clk/tegra/clk-periph.c               |  20 +-
 drivers/clk/tegra/clk-tegra30.c              | 365 +++++++++++
 drivers/gpio/gpio-tegra.c                    |  20 +-
 drivers/mci/tegra-sdmmc.c                    |   4 +-
 drivers/pinctrl/Kconfig                      |   6 +
 drivers/pinctrl/Makefile                     |   1 +
 drivers/pinctrl/pinctrl-tegra30.c            | 503 +++++++++++++++
 images/Makefile.tegra                        |   5 +
 include/dt-bindings/clock/tegra30-car.h      | 265 ++++++++
 include/dt-bindings/pinctrl/pinctrl-tegra.h  |  45 ++
 26 files changed, 3168 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/boards/nvidia-beaver/Makefile
 create mode 100644 arch/arm/boards/nvidia-beaver/entry.c
 create mode 100644 arch/arm/dts/tegra30-beaver.dts
 create mode 100644 arch/arm/dts/tegra30.dtsi
 create mode 100644 drivers/clk/tegra/clk-tegra30.c
 create mode 100644 drivers/pinctrl/pinctrl-tegra30.c
 create mode 100644 include/dt-bindings/clock/tegra30-car.h
 create mode 100644 include/dt-bindings/pinctrl/pinctrl-tegra.h

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
