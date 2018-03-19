Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqz5-0005ht-7L
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:21:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1exqyr-0007G3-R5
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 10:21:25 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1exqyr-0006PA-JX
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 10:21:25 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 19 Mar 2018 10:21:18 +0100
Message-Id: <20180319092120.11773-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 0/2] Add support for kontron samx6i boards
To: barebox@lists.infradead.org

These patches add support for the kontron samx6i smarc modules.
The memory size gets selected by gpio setup in the lowlevel setup.
For this we add some lowlevel gpio input functions.

Michael Grzeschik (2):
  ARM: i.MX: Add lowlevel gpio input functions
  boards: samx6: add initial support for kontron samx6i

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/kontron-samx6i/Makefile            |   2 +
 arch/arm/boards/kontron-samx6i/board.c             | 103 +++++
 .../flash-header-samx6i-duallite.imxcfg            | 102 +++++
 .../kontron-samx6i/flash-header-samx6i-quad.imxcfg | 118 +++++
 arch/arm/boards/kontron-samx6i/lowlevel.c          |  66 +++
 arch/arm/boards/kontron-samx6i/mem.c               |  85 ++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/imx6dl-samx6i.dts                     |  20 +
 arch/arm/dts/imx6q-samx6i.dts                      |  20 +
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi             | 509 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 arch/arm/mach-imx/include/mach/imx-gpio.h          |  46 +-
 images/Makefile.imx                                |  10 +
 15 files changed, 1084 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boards/kontron-samx6i/Makefile
 create mode 100644 arch/arm/boards/kontron-samx6i/board.c
 create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
 create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
 create mode 100644 arch/arm/boards/kontron-samx6i/lowlevel.c
 create mode 100644 arch/arm/boards/kontron-samx6i/mem.c
 create mode 100644 arch/arm/dts/imx6dl-samx6i.dts
 create mode 100644 arch/arm/dts/imx6q-samx6i.dts
 create mode 100644 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi

-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
