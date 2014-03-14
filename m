Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055Q-J0
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:26 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WOTAI-0003yX-Sl
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 15:32:50 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WOTAI-0006Po-Ra
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 15:32:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:20 +0100
Message-Id: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX IPUv3 support
To: barebox@lists.infradead.org

This series adds i.MX IPUv3 support for barebox. There are several things
to prepare for this since we need clk parent rate changing and several
additional clocks. Currently supported are LVDS and HDMI displays. This
also adds Variscite VAR-SOM-MX6 support on which the IPU support was
tested. I may rework some of the commit messages next week but I wanted
to have this series posted before the weekend.

Sascha


  ARM: MMU: Add some debugging aids and hints (2014-03-14 15:25:11 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git imx-ipu-v3

for you to fetch changes up to f37d7bbaf03a220bd61ceb0e59dbc8b84a27a9dd:

  ARM: update imx_v7_defconfig (2014-03-14 15:25:21 +0100)

----------------------------------------------------------------
Sascha Hauer (29):
      err.h: Add PTR_ERR_OR_ZERO from kernel
      ARM: i.MX6: Add initial variscite VAR-SOM-MX6 CPU support
      ARM: dts: i.MX6: Add IPU aliases
      ARM: dts: i.MX6: Add HDMI nodes
      ARM: dts: i.MX53: Fix IPU register size
      i2c: i.MX: move to earlier initcall
      i2c: implement of_find_i2c_adapter_by_node
      clk: implement clk_round_rate
      clk: clk-mux: pass clk flags from initializers
      clk: clk-gate: pass flags to initializers
      clk: clk-fixed-factor: pass flags to initializers
      clk: clk-divider: pass flags to initializers
      clk: introduce CLK_SET_RATE_PARENT flag
      clk: clk-divider: sync with kernel code
      clk: let clk-divider handle the table based divider aswell
      clk: clk-fixed-factor: add set_rate/round_rate callbacks
      clk: Add parent round/set rate for mux and gate
      ARM: i.MX: introduce clk parent rate changes
      ARM: i.MX6: Add video clocks
      video: introduce struct display_timings
      video: rework mode_name parameter setting
      video: Add display timing from devicetree helper
      video: Add edid support
      ARM i.MX6q: Mark VPU and IPU AXI transfers as cacheable, increase IPU priority
      video: Add kernel fourcc defines
      video: Add i.MX IPUv3 support
      video: i.MX IPUv3: Add lvds bridge support
      video: i.MX IPUv3: Add hdmi support
      ARM: update imx_v7_defconfig

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/variscite-mx6/Makefile             |    3 +
 arch/arm/boards/variscite-mx6/board.c              |  135 ++
 .../variscite-mx6/flash-header-variscite.imxcfg    |   86 ++
 arch/arm/boards/variscite-mx6/lowlevel.c           |   74 ++
 arch/arm/configs/imx_v7_defconfig                  |   26 +-
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/imx53.dtsi                            |    2 +-
 arch/arm/dts/imx6q-var-custom.dts                  |  149 +++
 arch/arm/dts/imx6q-var-som.dtsi                    |   99 ++
 arch/arm/dts/imx6q.dtsi                            |    5 +
 arch/arm/dts/imx6qdl.dtsi                          |   12 +
 arch/arm/mach-imx/Kconfig                          |    6 +
 arch/arm/mach-imx/clk-imx6.c                       |  155 ++-
 arch/arm/mach-imx/clk.h                            |   22 +-
 arch/arm/mach-imx/imx6.c                           |   19 +
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    3 +
 drivers/clk/Makefile                               |    2 +-
 drivers/clk/clk-divider-table.c                    |  119 --
 drivers/clk/clk-divider.c                          |  234 +++-
 drivers/clk/clk-fixed-factor.c                     |   33 +-
 drivers/clk/clk-gate.c                             |   13 +-
 drivers/clk/clk-mux.c                              |   10 +-
 drivers/clk/clk.c                                  |   30 +
 drivers/clk/mvebu/common.c                         |    4 +-
 drivers/clk/mxs/clk.h                              |    6 +-
 drivers/clk/tegra/clk-periph.c                     |    4 +-
 drivers/i2c/busses/i2c-imx.c                       |    2 +-
 drivers/i2c/i2c.c                                  |   11 +
 drivers/video/Kconfig                              |    8 +
 drivers/video/Makefile                             |    3 +
 drivers/video/atmel_lcdfb_core.c                   |    4 +-
 drivers/video/edid.c                               |  909 ++++++++++++++
 drivers/video/edid.h                               |  138 +++
 drivers/video/fb.c                                 |  113 +-
 drivers/video/imx-ipu-fb.c                         |    4 +-
 drivers/video/imx-ipu-v3/Kconfig                   |   14 +
 drivers/video/imx-ipu-v3/Makefile                  |    5 +
 drivers/video/imx-ipu-v3/imx-hdmi.c                | 1297 ++++++++++++++++++++
 drivers/video/imx-ipu-v3/imx-hdmi.h                | 1032 ++++++++++++++++
 drivers/video/imx-ipu-v3/imx-ipu-v3.h              |  344 ++++++
 drivers/video/imx-ipu-v3/imx-ldb.c                 |  310 +++++
 drivers/video/imx-ipu-v3/ipu-common.c              |  836 +++++++++++++
 drivers/video/imx-ipu-v3/ipu-dc.c                  |  392 ++++++
 drivers/video/imx-ipu-v3/ipu-di.c                  |  762 ++++++++++++
 drivers/video/imx-ipu-v3/ipu-dmfc.c                |  397 ++++++
 drivers/video/imx-ipu-v3/ipu-dp.c                  |  313 +++++
 drivers/video/imx-ipu-v3/ipu-prv.h                 |  204 +++
 drivers/video/imx-ipu-v3/ipufb.c                   |  353 ++++++
 drivers/video/imx-ipu-v3/ipuv3-plane.c             |  239 ++++
 drivers/video/imx-ipu-v3/ipuv3-plane.h             |   51 +
 drivers/video/imx.c                                |    6 +-
 drivers/video/of_display_timing.c                  |  238 ++++
 drivers/video/omap.c                               |    4 +-
 drivers/video/s3c24xx.c                            |    4 +-
 drivers/video/sdl.c                                |    4 +-
 drivers/video/stm.c                                |    4 +-
 images/Makefile.imx                                |    5 +
 include/fb.h                                       |   43 +-
 include/i2c/i2c.h                                  |    1 +
 include/linux/clk.h                                |   31 +-
 include/linux/err.h                                |    8 +
 include/mfd/imx6q-iomuxc-gpr.h                     |   18 +
 include/video/fourcc.h                             |  261 ++++
 64 files changed, 9382 insertions(+), 242 deletions(-)
 create mode 100644 arch/arm/boards/variscite-mx6/Makefile
 create mode 100644 arch/arm/boards/variscite-mx6/board.c
 create mode 100644 arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
 create mode 100644 arch/arm/boards/variscite-mx6/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-var-custom.dts
 create mode 100644 arch/arm/dts/imx6q-var-som.dtsi
 delete mode 100644 drivers/clk/clk-divider-table.c
 create mode 100644 drivers/video/edid.c
 create mode 100644 drivers/video/edid.h
 create mode 100644 drivers/video/imx-ipu-v3/Kconfig
 create mode 100644 drivers/video/imx-ipu-v3/Makefile
 create mode 100644 drivers/video/imx-ipu-v3/imx-hdmi.c
 create mode 100644 drivers/video/imx-ipu-v3/imx-hdmi.h
 create mode 100644 drivers/video/imx-ipu-v3/imx-ipu-v3.h
 create mode 100644 drivers/video/imx-ipu-v3/imx-ldb.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-common.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-dc.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-di.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-dmfc.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-dp.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-prv.h
 create mode 100644 drivers/video/imx-ipu-v3/ipufb.c
 create mode 100644 drivers/video/imx-ipu-v3/ipuv3-plane.c
 create mode 100644 drivers/video/imx-ipu-v3/ipuv3-plane.h
 create mode 100644 drivers/video/of_display_timing.c
 create mode 100644 include/video/fourcc.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
