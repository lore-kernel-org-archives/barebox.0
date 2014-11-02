Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1RB-0006hV-5U
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:07:46 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 4829926C2001
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:42 +0100
Message-Id: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 00/13] Tegra124 PCIe
To: barebox@lists.infradead.org

This series implements PCIe on Tegra124 aka K1. With
this applied the Jetson-TK1 platform is finally useable
for proper development, as the network is working now.

The series is spun against -next, as it depends on the
previous Tegra PCIe work found there. I hope Sascha can
still squeeze this in before the next release.

Lucas Stach (13):
  net: rtl8169: add support for RTL-8168/8111g
  net: rtl8169: clean receive buffer after net handler
  tegra: defconfig: enable barebox OF drivers
  pinctrl: tegra: try to select "boot" state
  arm: dts: jetson-tk1: switch to upstream DT
  clk: tegra: slow down MSELECT to 102MHz
  tegra: pmc: work around power domain failure
  tegra: jetson-tk1: enable 1.05V_RUN
  clk: tegra124: add PLLE setup functions
  clk: tegra124: add PCIe clocks
  add generic PHY framework
  pinctrl: tegra: add XUSB pad controller
  pci: tegra: add tegra124 support

 arch/arm/boards/nvidia-jetson-tk1/Makefile |    2 +-
 arch/arm/boards/nvidia-jetson-tk1/board.c  |   50 +
 arch/arm/configs/tegra_v7_defconfig        |    1 +
 arch/arm/dts/tegra124-jetson-tk1.dts       | 1823 +---------------------------
 arch/arm/mach-tegra/tegra20-pmc.c          |    2 +
 drivers/Kconfig                            |    1 +
 drivers/Makefile                           |    1 +
 drivers/clk/tegra/clk-pll.c                |  173 ++-
 drivers/clk/tegra/clk-tegra124.c           |   37 +-
 drivers/clk/tegra/clk-tegra30.c            |    2 +-
 drivers/clk/tegra/clk.h                    |    7 +
 drivers/net/rtl8169.c                      |   12 +
 drivers/pci/pci-tegra.c                    |  156 ++-
 drivers/phy/Kconfig                        |   18 +
 drivers/phy/Makefile                       |    5 +
 drivers/phy/phy-core.c                     |  318 +++++
 drivers/pinctrl/Kconfig                    |    8 +
 drivers/pinctrl/Makefile                   |    1 +
 drivers/pinctrl/pinctrl-tegra-xusb.c       |  519 ++++++++
 drivers/pinctrl/pinctrl-tegra20.c          |    8 +-
 drivers/pinctrl/pinctrl-tegra30.c          |    8 +-
 include/linux/phy/phy.h                    |  240 ++++
 22 files changed, 1538 insertions(+), 1854 deletions(-)
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/board.c
 create mode 100644 drivers/phy/Kconfig
 create mode 100644 drivers/phy/Makefile
 create mode 100644 drivers/phy/phy-core.c
 create mode 100644 drivers/pinctrl/pinctrl-tegra-xusb.c
 create mode 100644 include/linux/phy/phy.h

-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
