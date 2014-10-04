Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTEH-0003pr-J3
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:34:50 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 113DB26C2001
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:54 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:06 +0200
Message-Id: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 00/19] PCI and Tegra series revamp
To: barebox@lists.infradead.org

Ok, I got around to work a bit more on this. I now
actually finished the rtl8169 network driver, so
this series yields working PCI attached ethernet
on Tegra30 Beaver.

For Jetson K1 some work is left to setup the PHYs, but
that shouldn't be far out. 

While working on this I stumbled upon a few more issues,
so I decided to just roll the fixes into this series
and resend.

Lucas Stach (19):
  MIPS: malta: fix pci IO resource assignment
  pci: split out device init
  pci: add resource enum
  pci: properly populate prefetchable BARs
  pci: setup bridges and traverse buses behind them
  pci: defer device registration until after bridge setup
  pci: prettyprint device names
  pci: track parent<->child relationship
  commands: lspci: go down into subordinate busses
  clk: tegra: add PLLE setup functions
  clk: tegra30: add PCIe clocks
  i2c: tegra: move to fs initcall
  ARM: tegra: beaver: enable PEX voltage rail
  tegra: pmc: add powerdomain handling
  of: import pci range parser from linux
  pci: add Tegra host controller driver
  ARM: tegra: advertise PCI support
  net: add rtl8169 driver
  ARM: tegra: enable network related options in defconfig

 arch/arm/Kconfig                                   |    1 +
 arch/arm/boards/nvidia-beaver/board.c              |   13 +-
 arch/arm/configs/tegra_v7_defconfig                |    8 +
 arch/arm/mach-tegra/include/mach/tegra-powergate.h |   93 ++
 arch/arm/mach-tegra/include/mach/tegra20-car.h     |    2 +
 arch/arm/mach-tegra/include/mach/tegra30-car.h     |    2 +
 arch/arm/mach-tegra/tegra20-pmc.c                  |  139 ++-
 arch/mips/mach-malta/pci.c                         |    4 +-
 commands/lspci.c                                   |   25 +-
 drivers/clk/tegra/clk-pll.c                        |  116 ++
 drivers/clk/tegra/clk-tegra30.c                    |   31 +
 drivers/clk/tegra/clk.h                            |    6 +
 drivers/i2c/busses/i2c-tegra.c                     |    2 +-
 drivers/net/Kconfig                                |    8 +
 drivers/net/Makefile                               |    1 +
 drivers/net/rtl8169.c                              |  566 ++++++++++
 drivers/of/Kconfig                                 |    1 +
 drivers/of/address.c                               |   68 ++
 drivers/pci/Kconfig                                |    7 +
 drivers/pci/Makefile                               |    1 +
 drivers/pci/bus.c                                  |    3 +-
 drivers/pci/pci-tegra.c                            | 1193 ++++++++++++++++++++
 drivers/pci/pci.c                                  |  276 +++--
 include/linux/pci.h                                |    9 +
 include/linux/pci_regs.h                           |   28 +
 include/of_address.h                               |   57 +
 26 files changed, 2573 insertions(+), 87 deletions(-)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra-powergate.h
 create mode 100644 drivers/net/rtl8169.c
 create mode 100644 drivers/pci/pci-tegra.c

-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
