Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOSCC-0003Hq-H0
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 13:30:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WOSBp-0000wX-Nj
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:30:21 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WOSBp-0007h1-MV
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:30:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 14:30:14 +0100
Message-Id: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Phytec phyFLEX i.MX6 patches
To: barebox@lists.infradead.org

The following adds support for more board variants of the Phytec
phyFLEX i.MX6 board along with some fixes.

Sascha

----------------------------------------------------------------
Christian Hemp (4):
      ARM: pfla02: add 4GB version
      ARM: pfla02: Set ODT to recommended setting
      ARM: pfla02: Add support for DualLite and Solo core
      ARM: pfla02: Set new ethernet phy tx timings

Philipp Zabel (1):
      ARM: i.MX6Q: Fix IOMUXC GPR1 bit 21 (ENET_CLK_SEL)

Sascha Hauer (1):
      ARM: pfla02: Drop unnecessary compilation of flash headers

 arch/arm/boards/phytec-phyflex-imx6/Makefile       |   3 -
 arch/arm/boards/phytec-phyflex-imx6/board.c        |  26 ++-
 .../flash-header-phytec-pfla02-1gib.imxcfg         |   2 +-
 .../flash-header-phytec-pfla02-2gib.imxcfg         |   2 +-
 .../flash-header-phytec-pfla02-4gib.imxcfg         |   6 +
 .../flash-header-phytec-pfla02.h                   |   6 +-
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |   6 +
 .../flash-header-phytec-pfla02dl.h                 |  95 ++++++++++
 .../flash-header-phytec-pfla02s-512mb.imxcfg       |   6 +
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |  47 +++++
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6dl-phytec-pbab01.dts              |  29 +++
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi             |  41 ++++
 arch/arm/dts/imx6q-phytec-pbab01.dts               |  23 +--
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              | 207 +--------------------
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi            |  43 +++++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi            | 171 +++++++++++++++++
 arch/arm/dts/imx6s-phytec-pbab01.dts               |  25 +++
 arch/arm/dts/imx6s-phytec-pfla02.dtsi              |  22 +++
 arch/arm/mach-imx/Kconfig                          |   2 +-
 images/Makefile.imx                                |  18 ++
 include/mfd/imx6q-iomuxc-gpr.h                     |   6 +-
 22 files changed, 549 insertions(+), 241 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
 create mode 100644 arch/arm/dts/imx6dl-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6dl-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/imx6s-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6s-phytec-pfla02.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
