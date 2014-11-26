Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtfTx-0002cX-Sx
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XtfTZ-0006XY-KS
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 17:29:57 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XtfTZ-0006kX-JT
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 17:29:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:43 +0100
Message-Id: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add i.MX6 SoloX support
To: barebox@lists.infradead.org

This morning Robert came along with a i.MX6 SoloX Sabresdb board, time
for me to add barebox support for it. This series adds support for the
i.MX6sx SoC and the Sabresdb board. The i.MX6sx turned out to be
good-natured, so here's support for it.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      mci: imx-esdhc: Fix Interrupt enable register for i.MX6sx
      mci: imx-esdhc: Add i.MX6sl compatible
      serial: i.MX: Use "per" clk
      net: fec_imx: Add i.MX6sx compatible entry
      imx-usb-loader: Add i.MX6sx support
      pinctrl: Add i.MX6sx compatible entry
      ARM: i.MX: ocotp: Fix MAC address provider for unaligned addresses
      ARM: i.MX: ocotp: Add i.MX6sx compatible entry
      ARM: i.MX: Add i.MX6sx support
      ARM: i.MX: Add i.MX6sx sabresdb support
      ARM: i.MX: update imx_v7_defconfig

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/freescale-mx6sx-sabresdb/Makefile  |   3 +
 arch/arm/boards/freescale-mx6sx-sabresdb/board.c   | 249 +++++++++++
 .../flash-header-mx6sx-sabresdb.imxcfg             |  75 ++++
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |  68 +++
 arch/arm/configs/imx_v7_defconfig                  |  12 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6sx-sdb.dts                        |  92 ++++
 arch/arm/dts/imx6sx.dtsi                           |  12 +
 arch/arm/mach-imx/Kconfig                          |   9 +
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/clk-imx6sx.c                     | 481 +++++++++++++++++++++
 arch/arm/mach-imx/imx.c                            |   2 +
 arch/arm/mach-imx/imx6.c                           |   3 +
 arch/arm/mach-imx/include/mach/imx6.h              |   6 +
 arch/arm/mach-imx/ocotp.c                          |  31 +-
 drivers/mci/imx-esdhc.c                            |   7 +-
 drivers/net/fec_imx.c                              |   3 +
 drivers/pinctrl/imx-iomux-v3.c                     |   2 +
 drivers/serial/serial_imx.c                        |   2 +-
 images/Makefile.imx                                |   5 +
 scripts/imx/imx-usb-loader.c                       |   7 +
 22 files changed, 1055 insertions(+), 17 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/board.c
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
 create mode 100644 arch/arm/dts/imx6sx-sdb.dts
 create mode 100644 arch/arm/dts/imx6sx.dtsi
 create mode 100644 arch/arm/mach-imx/clk-imx6sx.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
