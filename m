Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtt6-0005QP-6X
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt4-0003Qa-ND
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:10 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt4-0005Cv-Cu
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:43 +0200
Message-Id: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/21] clk: at91: sync with Linux v5.6
To: barebox@lists.infradead.org

During a bug hunt that ultimately turned out unrelated to the state
of the barebox at91 clk driver, I synchronized its state with Linux v5.6.

This imports it, after cleanup. It refactors other code a bit to reduce
the diff for the final port and future ones. What we gain from this:

- bug fixes that have been posted upstream in the meanwhile
- sam9x60 (new Microchip ARM926EJ-S) clock support
- sama5d2 audio PLL
- Some more helpers to make code porting slightly easier
- SPDX-License-Identifiers, not only for at91 clks, but for all of
  drivers/clk

Cheers,
Ahmad Fatoum (17):
  mfd: syscon: enable specified clocks on syscon_base_lookup_by_phandle
  mfd: syscon: refactor of_syscon_register compatible check
  mfd: syscon: implement device_node_to_regmap
  regmap: retire of_node_to_regmap in favor of device_node_to_regmap
  ARM: include: remove unused <asm/processor.h>
  treewide: use cpu_relax() where appropriate
  of: port Linux of_get_compatible_child helper
  clk: implement clk_register_fixed_rate
  clk: add clk_unregister stub
  include: linux/kernel.h: port DIV_ROUND_CLOSEST_ULL definition
  clk: migrate to SPDX-License-Identifier use
  clk: at91: delete no-longer required DT compat code
  clk: at91: compile dt-compat for all platforms that require it
  clk: at91: add __init marker where appropriate
  clk: at91: add sama5d2 audio PLL support
  clk: at91: port Linux v5.6 SAM9X60 (new ARM926EJ-S) clock support
  clk: at91: sckc: fix off-by-1000 in udelay()

Alexandre Belloni (2):
  clk: at91: fix masterck name
  clk: at91: fix possible deadlock

Eugen Hristev (1):
  clk: at91: allow 24 Mhz clock as input for PLL

Stephen Boyd (1):
  clk: at91: Mark struct clk_range as const

 arch/arm/include/asm/processor.h        | 131 ------
 arch/arm/mach-at91/Kconfig              |  19 +
 arch/arm/mach-omap/omap4_rom_usb.c      |   6 +-
 drivers/base/regmap/regmap-mmio.c       |   5 +-
 drivers/base/regmap/regmap.c            |  20 -
 drivers/clk/Kconfig                     |   1 +
 drivers/clk/Makefile                    |   1 +
 drivers/clk/at91/Makefile               |  15 +-
 drivers/clk/at91/at91sam9260.c          |  16 +-
 drivers/clk/at91/at91sam9rl.c           |   4 +-
 drivers/clk/at91/at91sam9x5.c           |  18 +-
 drivers/clk/at91/clk-audio-pll.c        | 512 ++++++++++++++++++++++++
 drivers/clk/at91/clk-generated.c        |  68 ++--
 drivers/clk/at91/clk-h32mx.c            |   9 +-
 drivers/clk/at91/clk-i2s-mux.c          |  87 ++++
 drivers/clk/at91/clk-main.c             |  25 +-
 drivers/clk/at91/clk-master.c           |  16 +-
 drivers/clk/at91/clk-peripheral.c       |  54 +--
 drivers/clk/at91/clk-pll.c              |  21 +-
 drivers/clk/at91/clk-plldiv.c           |   9 +-
 drivers/clk/at91/clk-programmable.c     |  53 ++-
 drivers/clk/at91/clk-sam9x60-pll.c      | 322 +++++++++++++++
 drivers/clk/at91/clk-slow.c             |   7 +-
 drivers/clk/at91/clk-smd.c              |   9 +-
 drivers/clk/at91/clk-system.c           |   9 +-
 drivers/clk/at91/clk-usb.c              |  44 +-
 drivers/clk/at91/clk-utmi.c             |   7 +-
 drivers/clk/at91/dt-compat.c            | 140 +------
 drivers/clk/at91/pmc.c                  |  19 +-
 drivers/clk/at91/pmc.h                  |  91 +++--
 drivers/clk/at91/sam9x60.c              | 313 +++++++++++++++
 drivers/clk/at91/sama5d2.c              |  79 +++-
 drivers/clk/at91/sama5d4.c              |  14 +-
 drivers/clk/at91/sckc.c                 | 387 +++++++++++-------
 drivers/clk/clk-ar933x.c                |  13 +-
 drivers/clk/clk-ar9344.c                |  10 +-
 drivers/clk/clk-composite.c             |  13 +-
 drivers/clk/clk-conf.c                  |   5 +-
 drivers/clk/clk-divider.c               |  12 +-
 drivers/clk/clk-fixed-factor.c          |  12 +-
 drivers/clk/clk-fixed.c                 |  28 +-
 drivers/clk/clk-fractional-divider.c    |   5 +-
 drivers/clk/clk-gate-shared.c           |  12 +-
 drivers/clk/clk-gate.c                  |  12 +-
 drivers/clk/clk-gpio.c                  |  12 +-
 drivers/clk/clk-mux.c                   |  12 +-
 drivers/clk/clk-qoric.c                 |   5 +-
 drivers/clk/clk.c                       |  12 +-
 drivers/clk/clkdev.c                    |   5 +-
 drivers/clk/imx/Makefile                |   1 +
 drivers/clk/imx/clk-cpu.c               |   8 +-
 drivers/clk/imx/clk-frac-pll.c          |   8 +-
 drivers/clk/imx/clk-gate-exclusive.c    |   5 +-
 drivers/clk/imx/clk-gate2.c             |  12 +-
 drivers/clk/imx/clk-imx1.c              |  14 +-
 drivers/clk/imx/clk-imx21.c             |  15 +-
 drivers/clk/imx/clk-imx25.c             |  15 +-
 drivers/clk/imx/clk-imx27.c             |   1 +
 drivers/clk/imx/clk-imx31.c             |  14 +-
 drivers/clk/imx/clk-imx35.c             |   6 +-
 drivers/clk/imx/clk-imx5.c              |   6 +-
 drivers/clk/imx/clk-imx6.c              |   8 +-
 drivers/clk/imx/clk-imx6sl.c            |   8 +-
 drivers/clk/imx/clk-imx6sx.c            |   8 +-
 drivers/clk/imx/clk-imx6ul.c            |   8 +-
 drivers/clk/imx/clk-imx7.c              |  10 +-
 drivers/clk/imx/clk-pfd.c               |   8 +-
 drivers/clk/imx/clk-pllv1.c             |  14 +-
 drivers/clk/imx/clk-pllv2.c             |  14 +-
 drivers/clk/imx/clk-pllv3.c             |  14 +-
 drivers/clk/imx/clk-sccg-pll.c          |   8 +-
 drivers/clk/imx/clk-vf610.c             |   7 +-
 drivers/clk/imx/clk.c                   |   1 +
 drivers/clk/imx/clk.h                   |   1 +
 drivers/clk/mvebu/Makefile              |   1 +
 drivers/clk/mvebu/armada-370.c          |   5 +-
 drivers/clk/mvebu/armada-38x.c          |   5 +-
 drivers/clk/mvebu/armada-xp.c           |   5 +-
 drivers/clk/mvebu/common.c              |   5 +-
 drivers/clk/mvebu/common.h              |   5 +-
 drivers/clk/mvebu/corediv.c             |   5 +-
 drivers/clk/mvebu/dove.c                |   5 +-
 drivers/clk/mvebu/kirkwood.c            |   5 +-
 drivers/clk/mxs/Makefile                |   1 +
 drivers/clk/mxs/clk-div.c               |   8 +-
 drivers/clk/mxs/clk-frac.c              |   8 +-
 drivers/clk/mxs/clk-imx23.c             |  14 +-
 drivers/clk/mxs/clk-imx28.c             |  14 +-
 drivers/clk/mxs/clk-lcdif.c             |   1 +
 drivers/clk/mxs/clk-pll.c               |   8 +-
 drivers/clk/mxs/clk-ref.c               |   8 +-
 drivers/clk/mxs/clk.h                   |   1 +
 drivers/clk/rockchip/Makefile           |   1 +
 drivers/clk/rockchip/clk-cpu.c          |   5 +-
 drivers/clk/rockchip/clk-pll.c          |  11 +-
 drivers/clk/rockchip/clk-rk3188.c       |  11 +-
 drivers/clk/rockchip/clk-rk3288.c       |  11 +-
 drivers/clk/rockchip/clk.c              |  11 +-
 drivers/clk/rockchip/clk.h              |  11 +-
 drivers/clk/socfpga/Makefile            |   1 +
 drivers/clk/socfpga/clk-gate-a10.c      |  13 +-
 drivers/clk/socfpga/clk-periph-a10.c    |  13 +-
 drivers/clk/socfpga/clk-pll-a10.c       |  13 +-
 drivers/clk/socfpga/clk.c               |  10 +-
 drivers/clk/socfpga/clk.h               |  11 +-
 drivers/clk/tegra/Makefile              |   1 +
 drivers/clk/tegra/clk-divider.c         |  13 +-
 drivers/clk/tegra/clk-periph.c          |  13 +-
 drivers/clk/tegra/clk-pll-out.c         |  13 +-
 drivers/clk/tegra/clk-pll.c             |  13 +-
 drivers/clk/tegra/clk-tegra124.c        |  13 +-
 drivers/clk/tegra/clk-tegra20.c         |  13 +-
 drivers/clk/tegra/clk-tegra30.c         |  13 +-
 drivers/clk/tegra/clk.c                 |  13 +-
 drivers/clk/tegra/clk.h                 |  13 +-
 drivers/clk/vexpress/Makefile           |   1 +
 drivers/clk/vexpress/clk-sp810.c        |  10 +-
 drivers/clk/vexpress/clk-vexpress-osc.c |  11 +-
 drivers/clk/zynq/Makefile               |   1 +
 drivers/clk/zynq/clkc.c                 |  13 +-
 drivers/clk/zynqmp/Makefile             |   1 +
 drivers/mfd/syscon.c                    |  36 +-
 drivers/mtd/nand/nand_denali.c          |   8 +-
 drivers/of/base.c                       |  25 ++
 include/linux/barebox-wrapper.h         |   2 +
 include/linux/clk.h                     |  13 +-
 include/linux/clk/at91_pmc.h            |  59 ++-
 include/linux/kernel.h                  |  13 +
 include/mfd/syscon.h                    |   5 +
 include/of.h                            |   8 +
 include/regmap.h                        |   3 +-
 131 files changed, 2110 insertions(+), 1356 deletions(-)
 delete mode 100644 arch/arm/include/asm/processor.h
 create mode 100644 drivers/clk/at91/clk-audio-pll.c
 create mode 100644 drivers/clk/at91/clk-i2s-mux.c
 create mode 100644 drivers/clk/at91/clk-sam9x60-pll.c
 create mode 100644 drivers/clk/at91/sam9x60.c

-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
