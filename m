Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGmTO-0005gP-Tz
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 13:18:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1dGmT0-0004rQ-SL
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:18:14 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1dGmT0-0005hB-K5
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:18:14 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri,  2 Jun 2017 15:18:05 +0200
Message-Id: <20170602131808.18781-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 0/3] imx6ul: add Technexion Pico Hobbit support
To: barebox@lists.infradead.org

This series adds support for the Technexion Pico Hobbit. It also
prepares the TX_CLK_DIR pins for imx6ul platforms. This way it
will not be needed in every imx6ul based board files.

Michael Grzeschik (3):
  ARM: i.MX: setup ENET_TX_CLK_DIR in imx6_init for every imx6ul
  ARM: phytec-som-imx6: remove needles enet refclk setup
  ARM: i.MX6: add Technexion Pico Hobbit support

 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/phytec-som-imx6/board.c            | 23 ++-----
 arch/arm/boards/technexion-pico-hobbit/Makefile    |  7 ++
 arch/arm/boards/technexion-pico-hobbit/board.c     | 63 +++++++++++++++++
 .../defaultenv-pico-hobbit/init/automount          | 11 +++
 .../defaultenv-pico-hobbit/network/eth1            | 18 +++++
 .../flash-header-imx6ul-pico-hobbit-256.imxcfg     | 64 ++++++++++++++++++
 .../flash-header-imx6ul-pico-hobbit-512.imxcfg     | 65 ++++++++++++++++++
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c  | 78 ++++++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig                  |  1 +
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/imx6ul-pico-hobbit.dts                | 44 ++++++++++++
 arch/arm/mach-imx/Kconfig                          |  6 ++
 arch/arm/mach-imx/imx6.c                           | 11 +++
 images/Makefile.imx                                | 10 +++
 15 files changed, 384 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/Makefile
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/board.c
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-pico-hobbit.dts

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
