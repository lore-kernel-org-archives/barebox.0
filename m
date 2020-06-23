Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimX-0001U1-NZ
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:46 +0200
Message-Id: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/20] i.MX8MP support
To: Barebox List <barebox@lists.infradead.org>

Hi All,

This series adds support for the NXP i.MX8MP SoC along with the
i.MX8MP-EVK board. Most of the stuff is quiet straight forward as the
i.MX8MP is quite similar to the i.MX8M. Only the image format is subtly
changed and as a consequence we have quite some patches on the imx-image
tool.
For now networking and SD/eMMC is supported on the i.MX8MP-EVK. USB and
secondary ethernet support is left for a future exercise.

Sascha

Oleksij Rempel (5):
  net: fec_imx: add fsl,imx8mp-fec compatible
  mci: imx-esdhc: Add i.MX8mp compatible
  arm: imx: add initial imx8mp support
  clk: imx: Add imx8mp clk driver
  arm: boards: add initial imx8mp-evk support

Sascha Hauer (15):
  scripts: imx-image: Only set DCD pointer when we have DCD data
  scripts: imx-image: exit on read/write failures
  scripts: imx-image: Add extra code path for i.MX35
  scripts: imx-image: exit with error when barebox header conflicts with
    IVT
  scripts: imx-image: Fix writing image with IVT offset = 0
  scripts: imx-image: rename image_dcd_offset to image_ivt_offset
  scripts: imx-image: rename dcdofs to ivtofs
  serial: i.MX: Add i.MX8MP compatible
  pinctrl: imx-iomux-v3: Add i.MX8MP compatible
  scripts: imx-image: Add i.MX8MP support
  mfd: Add pca9440 register map
  mci: imx-esdhc-pbl: Add imx8mp_esdhc_load_image() for i.MX8MP
  net: phy: realtek: handle RX delay setting
  ARM: i.MX: bbu: Fix IVT offset for i.MX8MP
  ARM: i.MX8MP: Add ocotp support

 Documentation/boards/imx.rst                  |    2 +-
 Documentation/boards/imx/nxp-imx8mp-evk.rst   |   65 +
 arch/arm/boards/Makefile                      |    1 +
 .../flash-header-advantech-rom-7421.imxcfg    |    2 +-
 .../flash-header-nitrogen6dl-1g.imxcfg        |    2 +-
 .../flash-header-nitrogen6dl-2g.imxcfg        |    2 +-
 .../flash-header-nitrogen6q-1g.imxcfg         |    2 +-
 .../flash-header-nitrogen6q-2g.imxcfg         |    2 +-
 .../flash-header-nitrogen6qp-max.imxcfg       |    2 +-
 arch/arm/boards/ccxmx51/flash-header.imxcfg   |    2 +-
 .../flash-header-imx53-ccxmx53_1gib.imxcfg    |    2 +-
 .../flash-header-imx53-ccxmx53_512mb.imxcfg   |    2 +-
 .../cm-fx6/flash-header-mx6-cm-fx6.imxcfg     |    2 +-
 .../datamodul-edm-qmx6/flash-header.imxcfg    |    2 +-
 .../flash-header-fs700-m60-6q-micron.imxcfg   |    2 +-
 .../flash-header-fs700-m60-6q-nanya.imxcfg    |    2 +-
 .../flash-header-fs700-m60-6s.imxcfg          |    2 +-
 .../flash-header-imx6ul-ccimx6ulsbcpro.imxcfg |    2 +-
 .../flash-header-imx51-genesi-efikasb.imxcfg  |    2 +-
 .../flash-header-mx7-warp.imxcfg              |    2 +-
 .../flash-header-eltec-hipercam.imxcfg        |    2 +-
 .../boards/embedsky-e9/flash-header-e9.imxcfg |    2 +-
 .../flash-header-embest-marsboard.imxcfg      |    2 +-
 .../flash-header-embest-riotboard.imxcfg      |    2 +-
 .../eukrea_cpuimx25/flash-header.imxcfg       |    2 +-
 .../eukrea_cpuimx35/flash-header.imxcfg       |    2 +-
 .../eukrea_cpuimx51/flash-header.imxcfg       |    2 +-
 .../freescale-mx25-3ds/flash-header.imxcfg    |    2 +-
 .../freescale-mx35-3ds/flash-header.imxcfg    |    2 +-
 .../flash-header-imx51-babbage.imxcfg         |    2 +-
 .../flash-header-imx53-loco.imxcfg            |    2 +-
 .../freescale-mx53-smd/flash-header.imxcfg    |    2 +-
 .../flash-header-imx53-vmx53.imxcfg           |    2 +-
 .../flash-header-mx6-sabrelite.imxcfg         |    2 +-
 .../flash-header-mx6-sabresd.imxcfg           |    2 +-
 .../flash-header-mx6sx-sabresdb.imxcfg        |    2 +-
 .../flash-header-mx7-sabresd.imxcfg           |    2 +-
 .../flash-header-vf610-twr.imxcfg             |    2 +-
 .../flash-header-ventana-quad-1gx64.imxcfg    |    2 +-
 arch/arm/boards/gk802/flash-header.imxcfg     |    2 +-
 .../grinn-liteboard/flash-header-liteboard.h  |    2 +-
 .../boards/guf-santaro/flash-header.imxcfg    |    2 +-
 .../boards/guf-vincell/flash-header.imxcfg    |    2 +-
 .../boards/karo-tx25/flash-header-tx25.imxcfg |    2 +-
 .../karo-tx51/flash-header-karo-tx51.imxcfg   |    2 +-
 .../flash-header-tx53-rev1011.imxcfg          |    2 +-
 .../flash-header-tx53-revxx30-samsung.imxcfg  |    2 +-
 .../flash-header-tx53-revxx30.imxcfg          |    2 +-
 .../karo-tx6x/flash-header-tx6dl-1g.imxcfg    |    2 +-
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg  |    2 +-
 .../karo-tx6x/flash-header-tx6q-1g.imxcfg     |    2 +-
 .../karo-tx6x/flash-header-tx6qp-2g.imxcfg    |    2 +-
 .../flash-header-kindle-lpddr1.imxcfg         |    2 +-
 .../flash-header-kindle-lpddr2.imxcfg         |    2 +-
 arch/arm/boards/kindle3/flash-header.imxcfg   |    2 +-
 .../flash-header-samx6i-duallite.imxcfg       |    2 +-
 .../flash-header-samx6i-quad.imxcfg           |    2 +-
 .../flash-header-nxp-imx6ull-evk.imxcfg       |    2 +-
 .../flash-header-imx8mm-evk.imxcfg            |    2 +-
 arch/arm/boards/nxp-imx8mp-evk/Makefile       |    2 +
 arch/arm/boards/nxp-imx8mp-evk/board.c        |   50 +
 .../flash-header-imx8mp-evk.imxcfg            |    5 +
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c     |  190 ++
 .../arm/boards/nxp-imx8mp-evk/lpddr4-timing.c | 1848 +++++++++++++++++
 .../flash-header-imx8mq-evk.imxcfg            |    2 +-
 .../phytec-phycore-imx35/flash-header.imxcfg  |    2 +-
 .../flash-header-phytec-phycore-imx7.imxcfg   |    2 +-
 .../flash-header-phytec-pcaaxl3.h             |    2 +-
 .../flash-header-phytec-pcl063.h              |    2 +-
 .../flash-header-phytec-pcm058.h              |    2 +-
 .../flash-header-phytec-pcm058dl.h            |    2 +-
 .../flash-header-phytec-pcm058qp.h            |    2 +-
 .../flash-header-phytec-pfla02.h              |    2 +-
 .../flash-header-phytec-pfla02dl.h            |    2 +-
 .../flash-header-phycore-imx8mq.imxcfg        |    2 +-
 .../flash-header-microsom-i1.imxcfg           |    2 +-
 .../flash-header-microsom-i2.imxcfg           |    2 +-
 .../flash-header-microsom-i2eX.imxcfg         |    2 +-
 .../flash-header-microsom-i4.imxcfg           |    2 +-
 ...flash-header-imx6ul-pico-hobbit-256.imxcfg |    2 +-
 ...flash-header-imx6ul-pico-hobbit-512.imxcfg |    2 +-
 .../flash-header-technexion-wandboard.imxcfg  |    2 +-
 .../boards/tqma53/flash-header-tq-tqma53.h    |    2 +-
 arch/arm/boards/tqma53/flash-header.imxcfg    |    2 +-
 .../boards/tqma6x/flash-header-tqma6dl.imxcfg |    2 +-
 .../boards/tqma6x/flash-header-tqma6q.imxcfg  |    2 +-
 .../flash-header-mx6sx-udoo-neo_full.imxcfg   |    2 +-
 .../boards/udoo/flash-header-mx6-udoo.imxcfg  |    2 +-
 .../flash-header-variscite.imxcfg             |    2 +-
 .../flash-header-imx51-zii-rdu1.imxcfg        |    2 +-
 .../zii-imx6q-rdu2/flash-header-rdu2.imxcfg   |    2 +-
 .../flash-header-zii-imx7d-dev.imxcfg         |    2 +-
 .../flash-header-zii-imx8mq-dev.imxcfg        |    2 +-
 .../flash-header-zii-vf610-dev.imxcfg         |    2 +-
 arch/arm/configs/imx_v8_defconfig             |    1 +
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx8mp-evk.dts                   |   69 +
 arch/arm/mach-imx/Kconfig                     |   15 +
 arch/arm/mach-imx/atf.c                       |    5 +
 arch/arm/mach-imx/boot.c                      |   17 +
 arch/arm/mach-imx/cpu_init.c                  |    5 +
 arch/arm/mach-imx/esdctl.c                    |    5 +
 arch/arm/mach-imx/imx-bbu-internal.c          |   17 +-
 arch/arm/mach-imx/imx.c                       |    4 +
 arch/arm/mach-imx/imx8m.c                     |   24 +
 arch/arm/mach-imx/include/mach/atf.h          |    4 +-
 arch/arm/mach-imx/include/mach/debug_ll.h     |    3 +
 arch/arm/mach-imx/include/mach/esdctl.h       |    1 +
 arch/arm/mach-imx/include/mach/generic.h      |   18 +-
 arch/arm/mach-imx/include/mach/imx-header.h   |    2 +-
 arch/arm/mach-imx/include/mach/imx8mp-regs.h  |   46 +
 arch/arm/mach-imx/include/mach/imx8mq.h       |   13 +-
 .../arm/mach-imx/include/mach/imx_cpu_types.h |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx8mp.h  | 1103 ++++++++++
 arch/arm/mach-imx/include/mach/xload.h        |    1 +
 common/Kconfig                                |    8 +
 drivers/clk/imx/Makefile                      |    2 +
 drivers/clk/imx/clk-imx8mp.c                  |  720 +++++++
 drivers/ddr/imx8m/Kconfig                     |    2 +-
 drivers/mci/imx-esdhc-pbl.c                   |   42 +-
 drivers/mci/imx-esdhc.c                       |    1 +
 drivers/net/fec_imx.c                         |    3 +
 drivers/net/phy/realtek.c                     |   48 +-
 drivers/nvmem/ocotp.c                         |   11 +
 drivers/pinctrl/imx-iomux-v3.c                |    2 +
 drivers/serial/serial_imx.c                   |    3 +
 firmware/Kconfig                              |    3 +
 firmware/Makefile                             |    1 +
 images/Makefile.imx                           |    6 +
 include/mfd/pca9450.h                         |   55 +
 scripts/imx/README                            |    2 +-
 scripts/imx/imx-image.c                       |  121 +-
 scripts/imx/imx.c                             |   15 +-
 scripts/imx/imx.h                             |    9 +-
 scripts/regsubst.pl                           |    4 +-
 135 files changed, 4553 insertions(+), 195 deletions(-)
 create mode 100644 Documentation/boards/imx/nxp-imx8mp-evk.rst
 create mode 100644 arch/arm/boards/nxp-imx8mp-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mp-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
 create mode 100644 arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
 create mode 100644 arch/arm/dts/imx8mp-evk.dts
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mp-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8mp.h
 create mode 100644 drivers/clk/imx/clk-imx8mp.c
 create mode 100644 include/mfd/pca9450.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
