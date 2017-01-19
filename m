Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEZV-00038a-P6
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:24:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cUEZA-0000pa-6M
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 16:23:56 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1cUEZ9-00024p-R9
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 16:23:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:23:50 +0100
Message-Id: <20170119152355.2280-1-s.hauer@pengutronix.de>
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
Subject: [patch v2] i.MX7 support
To: Barebox List <barebox@lists.infradead.org>

This is the second round of i.MX7 patches. I send here only
the patches that have changed.

Changes since last round:

- Add pfuze driver
- Add support for 2nd iomux controller
- initialize architected timer so that it works under Linux

Sascha

----------------------------------------------------------------
Juergen Borleis (3):
      ARM: i.MX: Add i.MX7 base architecture support
      pinmmux: i.MX: add pin mux support for i.MX7
      ARM: i.MX: Add WaRP7 board support

Sascha Hauer (2):
      ARM: i.MX7: initialize architected timer
      regulator: Add pfuze driver

 Documentation/boards/imx.rst                       |   1 +
 Documentation/boards/imx/Element14-WaRP7.rst       |  54 +++++++
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/element14-warp7/Makefile           |   2 +
 arch/arm/boards/element14-warp7/board.c            |  35 +++++
 .../element14-warp7/flash-header-mx7-warp.imxcfg   |  81 ++++++++++
 arch/arm/boards/element14-warp7/lowlevel.c         |  48 ++++++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx7s-warp.dts                        |  62 ++++++++
 arch/arm/mach-imx/Kconfig                          |   9 ++
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/boot.c                           |  70 +++++++++
 arch/arm/mach-imx/cpu_init.c                       |   5 +
 arch/arm/mach-imx/imx.c                            |   6 +
 arch/arm/mach-imx/imx7.c                           | 110 ++++++++++++++
 arch/arm/mach-imx/include/mach/debug_ll.h          |   3 +
 arch/arm/mach-imx/include/mach/generic.h           |  16 ++
 arch/arm/mach-imx/include/mach/imx7-regs.h         |  24 +++
 arch/arm/mach-imx/include/mach/imx7.h              |  59 +++++++
 arch/arm/mach-imx/include/mach/imx_cpu_types.h     |   1 +
 common/Kconfig                                     |   8 +
 drivers/pinctrl/imx-iomux-v3.c                     |  40 ++++-
 drivers/regulator/Kconfig                          |   4 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/pfuze.c                          | 169 +++++++++++++++++++++
 images/Makefile.imx                                |   5 +
 include/mfd/pfuze.h                                |   6 +
 include/serial/imx-uart.h                          |   5 +
 scripts/imx/imx.c                                  |   1 +
 29 files changed, 820 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/boards/imx/Element14-WaRP7.rst
 create mode 100644 arch/arm/boards/element14-warp7/Makefile
 create mode 100644 arch/arm/boards/element14-warp7/board.c
 create mode 100644 arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
 create mode 100644 arch/arm/boards/element14-warp7/lowlevel.c
 create mode 100644 arch/arm/dts/imx7s-warp.dts
 create mode 100644 arch/arm/mach-imx/imx7.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx7-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx7.h
 create mode 100644 drivers/regulator/pfuze.c
 create mode 100644 include/mfd/pfuze.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
