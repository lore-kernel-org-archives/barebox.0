Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Ih-Jo
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:05 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W4AxJ-0004st-UD
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 16:03:33 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W4AxJ-00006o-T3
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 16:03:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:10 +0100
Message-Id: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: phyCARD-i.MX27 patches
To: barebox@lists.infradead.org

The following converts the Phytec phyCARD-i.MX27 to devicetree
probing and fixes several stuff along the way.

Sascha

----------------------------------------------------------------
Sascha Hauer (22):
      ARM: Karo TX25: register external NAND boot update handler
      ARM: phyCARD-i.MX27: increase barebox partition
      ARM: phyCARD-i.MX27: register barebox update handler
      ARM: phyCARD-i.MX27: switch to new environment
      ARM: phyCARD-i.MX27: convert lowlevel init to c code
      ARM: i.MX27: Add missing MPLL clock sources
      ARM: phyCARD-i.MX27: Update defconfig
      ARM: Fix image size calculation for CONFIG_PBL_RELOCATABLE
      ARM: i.MX: external NAND boot: factor out a 2k pagesize detection function
      ARM: i.MX: external NAND boot: create function macro for different SoCs
      ARM: i.MX: external NAND boot: make it work with relocatable PBL
      ARM: dts: Add i.MX27 devicetree files
      ARM: dts: Add Phytec phyCARD-i.MX27 devicetree files
      ARM: i.MX: external NAND boot: pass boarddata
      pinctrl: Add pinctrl driver for i.MX1/21/27
      ARM: i.MX clocksource: return successful for multiple instances
      ARM: phycard-i.MX27: Add NAND support to dts
      ARM: phycard-i.MX27: Add stdout-path property
      ARM: dts: phycard-i.MX27: Add environment and NAND partitioning
      ARM: dts: phycard-i.MX27: Add sdhc2 pinctrl
      mci: imx: Add devicetree probe support
      ARM: phyCARD-i.MX27: Switch to devicetree probe support

 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   1 +
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   2 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   1 +
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   1 +
 arch/arm/boards/guf-cupid/lowlevel.c               |   2 +-
 arch/arm/boards/guf-neso/lowlevel.c                |   2 +-
 arch/arm/boards/karo-tx25/board.c                  |   4 +
 arch/arm/boards/karo-tx25/env/init/mtdparts-nand   |   2 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   2 +-
 arch/arm/boards/pcm037/lowlevel.c                  |   2 +-
 arch/arm/boards/pcm038/lowlevel.c                  |   2 +-
 arch/arm/boards/pcm043/lowlevel.c                  |   2 +-
 arch/arm/boards/phycard-i.MX27/Makefile            |   2 +-
 arch/arm/boards/phycard-i.MX27/env/config          |  48 --
 arch/arm/boards/phycard-i.MX27/lowlevel.c          | 107 +++++
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     | 119 -----
 arch/arm/boards/phycard-i.MX27/pca100.c            | 175 +------
 arch/arm/configs/pca100_defconfig                  |  49 +-
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/imx27-phytec-phycard-s-rdk.dts        | 145 ++++++
 arch/arm/dts/imx27-phytec-phycard-s-som.dts        | 102 ++++
 arch/arm/dts/imx27-pinfunc.h                       | 526 +++++++++++++++++++++
 arch/arm/dts/imx27-pingrp.h                        | 151 ++++++
 arch/arm/dts/imx27.dtsi                            | 505 ++++++++++++++++++++
 arch/arm/lib/pbl.lds.S                             |  17 +-
 arch/arm/mach-imx/Kconfig                          |   1 +
 arch/arm/mach-imx/clk-imx27.c                      |  44 +-
 arch/arm/mach-imx/clocksource.c                    |   2 +-
 arch/arm/mach-imx/external-nand-boot.c             | 216 ++++-----
 arch/arm/mach-imx/include/mach/imx-nand.h          |  10 +-
 drivers/mci/imx.c                                  |   9 +
 drivers/pinctrl/Kconfig                            |   1 +
 drivers/pinctrl/imx-iomux-v1.c                     | 198 ++++++++
 include/dt-bindings/interrupt-controller/irq.h     |  19 +
 35 files changed, 1976 insertions(+), 497 deletions(-)
 delete mode 100644 arch/arm/boards/phycard-i.MX27/env/config
 create mode 100644 arch/arm/boards/phycard-i.MX27/lowlevel.c
 delete mode 100644 arch/arm/boards/phycard-i.MX27/lowlevel_init.S
 create mode 100644 arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
 create mode 100644 arch/arm/dts/imx27-phytec-phycard-s-som.dts
 create mode 100644 arch/arm/dts/imx27-pinfunc.h
 create mode 100644 arch/arm/dts/imx27-pingrp.h
 create mode 100644 arch/arm/dts/imx27.dtsi
 create mode 100644 include/dt-bindings/interrupt-controller/irq.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
