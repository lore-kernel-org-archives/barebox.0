Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvNb-0004Ht-SP
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:32:21 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id C76C718B4258
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:23 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:47 +0200
Message-Id: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 00/30] Tegra K1 support
To: barebox@lists.infradead.org

This is the next big round of Tegra updates, featuring
Tegra K1 support. The series is based on -next as it has
quite some dependencies on the earlier Tegra series.

The first 4 patches are some general useful additions,
all others are adding K1 aka Tegra124 support. I've
verified booting a Linux kernel to the rootfs panic.

The series is regression free on Tegra30.

Lucas Stach (30):
  mci: implement non-removable property
  tegra: lowlevel-dvc: use __always_inline macro
  tegra: pmc: add Tegra30 compatible
  tegra: pmc: add command to get into RCM
  tegra: lowlevel: setup an early stack
  tegra: add Tegra124 id to lowlevel functions
  tegra: lowlevel: fix ODMdata fetch on Tegra124
  tegra: recognize Tegra124 in maincomplex startup
  tegra: recognize Tegra124 in common initcalls
  tegra: add Tegra124 and AS3722 PMIC to lowlevel-dvc
  tegra: disable IDDQ for PLL_X on Tegra124
  tegra: power up additional partitions on Tegra124
  tegra: fix MESLECT clock enable
  tegra: change cpu internal reset layout for Tegra124
  tegra: add Tegra124 PLL_X rate setup
  tegra: apply cluster switch logic to all SoCs >=T30
  tegra: hardcode entry address for main cluster
  tegra: setup L2 cache on Tegra124
  tegra: add architectural timer init
  tegra: add Tegra124 Kconfig symbol
  pinctrl: tegra30: introduce drvdata
  pinctrl: tegra: add Tegra124 support
  clk: tegra: allow variable sized muxes
  clk: tegra: don't bug out on zero PLL postdiv
  clk: tegra: add Tegra124 driver
  mci: tegra: add Tegra124 compatible
  tegra: pmc: add Tegra124 compatible
  images: add Tegra124 image build rules
  tegra: add NVIDIA Jetson-TK1 board support
  tegra: refresh defconfig

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/nvidia-jetson-tk1/Makefile         |    7 +
 arch/arm/boards/nvidia-jetson-tk1/entry.c          |   39 +
 .../nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg  | 1287 ++++++++++++++
 arch/arm/configs/tegra_v7_defconfig                |   22 +-
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/tegra124-jetson-tk1.dts               | 1828 ++++++++++++++++++++
 arch/arm/dts/tegra124.dtsi                         |    1 +
 arch/arm/mach-tegra/Kconfig                        |    8 +
 arch/arm/mach-tegra/include/mach/iomap.h           |    3 +
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h    |   61 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h        |   58 +-
 arch/arm/mach-tegra/include/mach/tegra114-sysctr.h |   30 +
 arch/arm/mach-tegra/include/mach/tegra124-car.h    |   19 +
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h     |    4 +
 arch/arm/mach-tegra/include/mach/tegra30-car.h     |    2 +
 arch/arm/mach-tegra/tegra20-pmc.c                  |   24 +
 arch/arm/mach-tegra/tegra20.c                      |   31 +-
 arch/arm/mach-tegra/tegra_avp_init.c               |   82 +-
 arch/arm/mach-tegra/tegra_maincomplex_init.c       |   14 +-
 drivers/clk/tegra/Makefile                         |    1 +
 drivers/clk/tegra/clk-periph.c                     |    6 +-
 drivers/clk/tegra/clk-pll.c                        |    2 -
 drivers/clk/tegra/clk-tegra124.c                   |  349 ++++
 drivers/mci/mci-core.c                             |    5 +-
 drivers/mci/tegra-sdmmc.c                          |    2 +
 drivers/pinctrl/Kconfig                            |    2 +-
 drivers/pinctrl/pinctrl-tegra30.c                  |  299 +++-
 images/.gitignore                                  |    2 +
 images/Makefile                                    |    2 +-
 images/Makefile.tegra                              |   19 +
 include/mci.h                                      |    1 +
 32 files changed, 4149 insertions(+), 66 deletions(-)
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/Makefile
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/entry.c
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg
 create mode 100644 arch/arm/dts/tegra124-jetson-tk1.dts
 create mode 100644 arch/arm/dts/tegra124.dtsi
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra114-sysctr.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra124-car.h
 create mode 100644 drivers/clk/tegra/clk-tegra124.c

-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
