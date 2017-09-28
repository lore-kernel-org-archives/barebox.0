Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxVrF-00034o-QI
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 10:15:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dxVqu-0000uA-4x
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 12:15:32 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1dxVqt-00029A-Tr
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 12:15:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Sep 2017 12:15:29 +0200
Message-Id: <20170928101531.5333-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] Add i.MX6ull EVK Support
To: Barebox List <barebox@lists.infradead.org>

Changes since last version:

- integrate comments from Lucas
- Drop IMX6ULL symbol

----------------------------------------------------------------
Sascha Hauer (2):
      ARM: i.MX6ul: Add SoC specific lowlevel_init function
      ARM: Add i.MX6ull evk support

 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/nxp-imx6ull-evk/Makefile           |  2 +
 arch/arm/boards/nxp-imx6ull-evk/board.c            | 50 +++++++++++++++
 .../flash-header-nxp-imx6ull-evk.imxcfg            | 75 ++++++++++++++++++++++
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c         | 74 +++++++++++++++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  2 +-
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c  |  2 +-
 arch/arm/cpu/lowlevel.S                            |  7 ++
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/imx6ull-14x14-evk.dts                 | 29 +++++++++
 arch/arm/include/asm/barebox-arm-head.h            |  1 +
 arch/arm/mach-imx/Kconfig                          |  8 +++
 arch/arm/mach-imx/cpu_init.c                       |  7 ++
 arch/arm/mach-imx/include/mach/generic.h           |  1 +
 arch/arm/mach-imx/include/mach/imx6-regs.h         |  1 +
 images/Makefile.imx                                |  5 ++
 16 files changed, 264 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ull-14x14-evk.dts

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
