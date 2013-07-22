Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1GlA-0003gt-1h
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 14:06:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V1Gko-0003mg-38
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 16:06:22 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V1Gko-0008Qi-1v
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 16:06:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 16:06:15 +0200
Message-Id: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Phytec phyFLEX i.MX6 support
To: barebox@lists.infradead.org


This adds Phytec phyFLEX i.MX6 board support and some preliminary patches
to support multiple SDRAM settings per board. Also The FEC address can
now be registered from the i.MX6 OCOTP.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      scripts: imx-image: allow semicolon as command delimiter
      scripts: run imxcfg files through cpp
      ARM: dts: i.MX6: Add label for ocotp nodes
      ARM: i.MX6: Add ocotp driver
      ARM: i.MX6 sabre: register MAC address from dt
      ARM: Add Phytec phyFLEX-i.MX6 board support

 .../devicetree/bindings/misc/fsl,imx-ocotp.txt     |  20 ++++
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  23 -----
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  22 -----
 arch/arm/boards/phytec-pfla02/Makefile             |   5 +
 arch/arm/boards/phytec-pfla02/board.c              |  59 ++++++++++++
 .../flash-header-phytec-pfla02-1gib.imxcfg         |   6 ++
 .../flash-header-phytec-pfla02-2gib.imxcfg         |   6 ++
 .../phytec-pfla02/flash-header-phytec-pfla02.h     |  99 +++++++++++++++++++
 arch/arm/boards/phytec-pfla02/lowlevel.c           |  57 +++++++++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6q-phytec-pbab01.dts               |  69 ++++++++++++++
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              |  96 +++++++++++++++++++
 arch/arm/dts/imx6q-sabrelite.dts                   |   4 +
 arch/arm/dts/imx6qdl-sabresd.dtsi                  |   4 +
 arch/arm/dts/imx6qdl.dtsi                          |   4 +-
 arch/arm/mach-imx/Kconfig                          |  14 +++
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/ocotp.c                          | 105 +++++++++++++++++++++
 images/Makefile.imx                                |  12 +++
 scripts/Makefile.lib                               |  12 ++-
 scripts/imx/imx-image.c                            |  39 +++++++-
 23 files changed, 608 insertions(+), 55 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt
 create mode 100644 arch/arm/boards/phytec-pfla02/Makefile
 create mode 100644 arch/arm/boards/phytec-pfla02/board.c
 create mode 100644 arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h
 create mode 100644 arch/arm/boards/phytec-pfla02/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6q-phytec-pfla02.dtsi
 create mode 100644 arch/arm/mach-imx/ocotp.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
