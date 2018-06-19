Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV9pa-0007tK-4u
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:09:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:09:10 +0200
Message-Id: <20180619060915.13141-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/5] fix/quiesce dtc warnings
To: Barebox List <barebox@lists.infradead.org>

Since the dtc update there are tons of new warnings. This series fixes
some warnings and disables others (the same that are disabled in the
kernel aswell).

Sascha

Sascha Hauer (5):
  ARM: dts: use stdout-path property
  console: Update description for global.linux.bootargs.console
  ARM: dts: remove @0 from environment nodes
  ARM: dts: imx6q-var-custom: remove some accidently pasted text
  dtc: Disable some warnings

 .../bindings/barebox/barebox,environment.rst          |  2 +-
 arch/arm/dts/am335x-afi-gf.dts                        |  2 +-
 arch/arm/dts/am335x-baltos-minimal.dts                |  2 +-
 arch/arm/dts/am335x-bone-common.dtsi                  |  2 +-
 arch/arm/dts/am335x-phytec-phycard-som.dtsi           |  2 +-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi           |  2 +-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi           |  2 +-
 arch/arm/dts/at91sam9263ek.dts                        |  2 +-
 arch/arm/dts/dove-cubox-bb.dts                        |  2 +-
 arch/arm/dts/imx25-karo-tx25.dts                      |  4 ++--
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts        |  4 ++--
 arch/arm/dts/imx51-babbage.dts                        |  2 +-
 arch/arm/dts/imx53-ccxmx53.dtsi                       |  4 ++--
 arch/arm/dts/imx53-guf-vincell-lt.dts                 |  2 +-
 arch/arm/dts/imx53-guf-vincell.dts                    |  2 +-
 arch/arm/dts/imx53-mba53.dts                          |  2 +-
 arch/arm/dts/imx53-qsb-common.dtsi                    |  2 +-
 arch/arm/dts/imx53-voipac-dmm-668.dtsi                |  4 ++--
 arch/arm/dts/imx6dl-eltec-hipercam.dts                |  2 +-
 arch/arm/dts/imx6dl-hummingboard.dts                  |  4 ++--
 arch/arm/dts/imx6dl-mba6x.dts                         |  2 +-
 arch/arm/dts/imx6dl-phytec-pbab01.dts                 |  2 +-
 arch/arm/dts/imx6dl-wandboard.dts                     |  4 ++--
 arch/arm/dts/imx6q-dmo-edmqmx6.dts                    |  2 +-
 arch/arm/dts/imx6q-embedsky-e9.dts                    |  2 +-
 arch/arm/dts/imx6q-guf-santaro.dts                    |  2 +-
 arch/arm/dts/imx6q-hummingboard.dts                   |  4 ++--
 arch/arm/dts/imx6q-hummingboard2.dts                  |  2 +-
 arch/arm/dts/imx6q-mba6x.dts                          |  2 +-
 arch/arm/dts/imx6q-phytec-pbaa03.dts                  |  2 +-
 arch/arm/dts/imx6q-sabresd.dts                        |  4 ++--
 arch/arm/dts/imx6q-var-custom.dts                     | 11 ++---------
 arch/arm/dts/imx6q-wandboard.dts                      |  4 ++--
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi               |  2 +-
 arch/arm/dts/imx6qdl-gw54xx.dtsi                      |  4 ++--
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi               |  2 +-
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi                  |  2 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi          |  2 +-
 arch/arm/dts/imx6qdl-sabrelite.dtsi                   |  4 ++--
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi                |  2 +-
 arch/arm/dts/imx6qdl-tx6x.dtsi                        |  2 +-
 arch/arm/dts/imx6qdl-udoo.dtsi                        |  2 +-
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi                    |  2 +-
 arch/arm/dts/imx6s-phytec-pbab01.dts                  |  2 +-
 arch/arm/dts/imx6s-riotboard.dts                      |  4 ++--
 arch/arm/dts/imx6sx-sdb.dts                           |  2 +-
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi           |  2 +-
 arch/arm/dts/imx6ul-pico-hobbit.dts                   |  4 ++--
 arch/arm/dts/imx6ull-14x14-evk.dts                    |  2 +-
 arch/arm/dts/imx7d-phyboard-zeta.dts                  |  2 +-
 arch/arm/dts/imx7s-warp.dts                           |  2 +-
 arch/arm/dts/rk3188-radxarock.dts                     |  2 +-
 arch/arm/dts/socfpga_arria10_achilles.dts             |  4 ++--
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts        |  2 +-
 arch/arm/dts/socfpga_cyclone5_socdk.dts               |  2 +-
 arch/arm/dts/socfpga_cyclone5_sockit.dts              |  2 +-
 arch/arm/dts/socfpga_cyclone5_socrates.dts            |  2 +-
 arch/arm/dts/tegra124-jetson-tk1.dts                  |  2 +-
 arch/arm/dts/tegra30-beaver.dts                       |  2 +-
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts        |  2 +-
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts              |  2 +-
 arch/mips/dts/qca4531-8devices-lima.dts               |  2 +-
 arch/mips/dts/qemu-malta.dts                          |  2 +-
 arch/mips/dts/tplink-mr3020.dts                       |  2 +-
 common/console.c                                      |  2 +-
 scripts/Makefile.lib                                  |  6 ++++++
 66 files changed, 86 insertions(+), 87 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
