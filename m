Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qH-68
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:47 +0200
Message-Id: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/15] ARM: dts: fix regressions from not using phandles
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Upstream Device Tree renaming has been a source of headache. In board code fixups,
we largely avoid this by creating reproducible names, but in the barebox device
trees that extend upstream ones, we still have often problems. This is unlikely
to change because device tree YAML schemas are forcing a lot of nodes being
renamed from specific identifies to generic ones (e.g. s/aips/bus/),
while in barebox, due to lack of phandles, we have been hardcoding the
name. dtc's forgiving nature made us more than once end up with
a duplicate dummy node, while the one we meant to override remained
unchanged.

I went down the rabbit hole and changed most of our device trees, so we get
a compile error if the upstream path change instead of having an unbootable
system at runtime. This coupled with a `make dtbs` target, that I still need to
figure out how to cleanly implement, should eliminate this class of regressions.

There are still some lower priority issues that need to be addressed:

* rave-sp nodes may break if upstream changes names
* The /.*-ddrm?c.dtsi/ files have memory overrides that are meant to be "weak"
* The tegra boards duplicate much of the SoC device trees that are now upstream
* Some parition nodes still have a parent that is not a phandle

I deem their breakage lower priority though and they  can follow later.
The ones fixed here are either real regressions, ones that I find more
likely to regress in future or clean up that was noticed during work on the
device trees.

@Sascha, would be great if the first 4 commits could make it into master. They
fix issues in 18 device trees. The series has not been tested on actual hardware.
I just hacked the Makefile to build all device trees on every commit along the
way.

Cheers,
Ahmad Fatoum (15):
  ARM: i.MX50: fix renamed node reference
  ARM: dts: fix now duplicate memory nodes
  ARM: dts: align all applicable memory nodes with spec and convention
  ARM: vexpress: dts: fix barebox partitioning breakage
  ARM: at91: dts: extend, don't create anew, pinctrl node
  ARM: dts: reference nodes to extend by phandles instead
  ARM: i.MX7: warp: drop duplicate memory node
  ARM: mvebu: remove reference to non-existant node
  ARM: i.MX6UL: dts: remove defunct override of pico-hobbit memory node
  ARM: layerscape: dts: combine fsl-ls1046a-rdb.dts aliases nodes
  ARM: i.MX7: dts: replace commented-out code with status = "disabled"
  ARM: i.MX: mx53-qsrb: dts: remove now-superfluous override
  ARM: zynqmp: dts: drop now superfluous zynqmp.dtsi
  ARM: socfpga: dts: remove unused nodes and phandles
  Documentation: devicetree: codify extension of upstream DTS by
    phandles

 Documentation/devicetree/index.rst            |  41 +++++
 arch/arm/dts/am335x-afi-gf.dts                |   2 +-
 arch/arm/dts/am335x-bone.dts                  |   7 +-
 arch/arm/dts/am335x-boneblack.dts             |   7 +-
 arch/arm/dts/am35xx-pfc-750_820x.dts          |   2 +-
 arch/arm/dts/armada-370-mirabox-bb.dts        |  12 +-
 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts |   8 +-
 .../arm/dts/armada-xp-openblocks-ax3-4-bb.dts |  10 -
 arch/arm/dts/at91-microchip-ksz9477-evb.dts   |   6 +-
 arch/arm/dts/at91-sama5d27_giantboard.dts     |   6 +-
 arch/arm/dts/at91sam9263ek.dts                |  46 +++--
 arch/arm/dts/at91sam9x5ek.dts                 |  30 ++-
 arch/arm/dts/dove-cubox-bb.dts                |   8 +-
 arch/arm/dts/fsl-ls1046a-rdb.dts              | 113 +++++-------
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     | 171 +++++++++---------
 arch/arm/dts/imx50.dtsi                       |  28 ++-
 arch/arm/dts/imx51-genesi-efika-sb.dts        |   3 +-
 arch/arm/dts/imx53-guf-vincell-lt.dts         |  10 +-
 arch/arm/dts/imx53-guf-vincell.dts            |  10 +-
 arch/arm/dts/imx53-qsb-common.dtsi            |  18 --
 arch/arm/dts/imx53-tqma53.dtsi                |   6 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts        |   3 +-
 arch/arm/dts/imx6dl-mba6x.dts                 |   3 +-
 arch/arm/dts/imx6dl-wandboard.dts             |   6 +-
 arch/arm/dts/imx6q-guf-santaro.dts            |   3 +-
 arch/arm/dts/imx6q-mba6x.dts                  |   3 +-
 arch/arm/dts/imx6q-var-som.dtsi               |   3 +-
 arch/arm/dts/imx6q-wandboard.dts              |   6 +-
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi       |   4 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  |   4 +-
 arch/arm/dts/imx6qdl-udoo.dtsi                |   3 +-
 arch/arm/dts/imx6ul-litesom.dtsi              |   4 +-
 arch/arm/dts/imx6ul-pico-hobbit.dts           |   4 -
 arch/arm/dts/imx7d-pba-c-09.dtsi              |   3 +-
 arch/arm/dts/imx7d-phyboard-zeta.dts          |   4 +-
 arch/arm/dts/imx7d-phycore-som.dtsi           |   5 +-
 arch/arm/dts/imx7d-sdb.dts                    |   2 +-
 arch/arm/dts/imx7s-warp.dts                   |   5 -
 .../dts/kirkwood-guruplug-server-plus-bb.dts  |   8 +-
 arch/arm/dts/kirkwood-openblocks_a6-bb.dts    |   8 +-
 arch/arm/dts/kirkwood-topkick-bb.dts          |   8 +-
 arch/arm/dts/module-mb7707.dts                |   3 +-
 arch/arm/dts/rk3288-phycore-som.dts           |   3 +-
 arch/arm/dts/socfpga_arria10_achilles.dts     |  32 ++--
 .../arm/dts/socfpga_cyclone5_de0_nano_soc.dts |   6 -
 arch/arm/dts/stm32mp151.dtsi                  |  25 +--
 arch/arm/dts/stm32mp157a-dk1.dtsi             |  22 +--
 arch/arm/dts/tegra124-jetson-tk1.dts          |   6 +-
 arch/arm/dts/tegra30-beaver.dts               |   8 +-
 arch/arm/dts/versatile-pb.dts                 |   6 +-
 arch/arm/dts/vexpress-v2p-ca15.dts            |  26 ++-
 arch/arm/dts/vexpress-v2p-ca9.dts             |  51 +++---
 arch/arm/dts/vf610-zii-cfu1.dts               |   4 +
 arch/arm/dts/vf610-zii-dev-rev-b.dts          |  16 +-
 arch/arm/dts/virt2real.dts                    |   2 +-
 arch/arm/dts/zynqmp-zcu104-revA.dts           |   1 -
 arch/arm/dts/zynqmp.dtsi                      |  17 --
 57 files changed, 383 insertions(+), 478 deletions(-)
 delete mode 100644 arch/arm/dts/zynqmp.dtsi

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
