Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmOKi-0001Yo-Ot
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 11:00:54 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmOKe-00063W-R4
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:00:48 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmOKe-0001MY-Q0
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:00:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 13:00:44 +0200
Message-Id: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: i.MX53 / LOCO support
To: barebox@lists.infradead.org

The following series adds support for the Freescale i.MX53 SoC
and the LOCO board.

Marc Kleine-Budde (3):
      mx51: rename clock-imx51.h -> clock-imx51_53.h
      ARM: add support for the i.MX53
      arm: add support for the i.MX53 loco board

 Documentation/boards.dox                           |    1 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S    |  110 +-
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  110 +-
 arch/arm/boards/freescale-mx53-loco/Makefile       |    3 +
 arch/arm/boards/freescale-mx53-loco/board.c        |  152 +++
 arch/arm/boards/freescale-mx53-loco/config.h       |   24 +
 arch/arm/boards/freescale-mx53-loco/env/config     |   51 +
 arch/arm/boards/freescale-mx53-loco/flash_header.c |  101 ++
 .../arm/boards/freescale-mx53-loco/lowlevel_init.S |  172 +++
 arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox   |    4 +
 arch/arm/configs/freescale_mx53_loco_defconfig     |   51 +
 arch/arm/mach-imx/Kconfig                          |   32 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/imx53.c                          |   45 +
 arch/arm/mach-imx/include/mach/clock-imx51.h       |  696 -----------
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |  623 ++++++++++
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   58 +
 arch/arm/mach-imx/include/mach/iim.h               |    5 +
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   52 +
 arch/arm/mach-imx/include/mach/imx-regs.h          |    4 +-
 arch/arm/mach-imx/include/mach/imx53-regs.h        |  139 +++
 arch/arm/mach-imx/include/mach/iomux-mx53.h        | 1203 ++++++++++++++++++++
 arch/arm/mach-imx/speed-imx51.c                    |   60 +-
 arch/arm/mach-imx/speed-imx53.c                    |  204 ++++
 drivers/mci/Kconfig                                |    2 +-
 drivers/serial/serial_imx.c                        |    3 +-
 drivers/spi/Kconfig                                |    2 +-
 drivers/spi/imx_spi.c                              |    2 +-
 include/asm-generic/barebox.lds.h                  |    2 +-
 30 files changed, 3068 insertions(+), 845 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-loco/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-loco/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/config.h
 create mode 100644 arch/arm/boards/freescale-mx53-loco/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-loco/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox
 create mode 100644 arch/arm/configs/freescale_mx53_loco_defconfig
 create mode 100644 arch/arm/mach-imx/imx53.c
 delete mode 100644 arch/arm/mach-imx/include/mach/clock-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx51_53.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx53.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx53-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx53.h
 create mode 100644 arch/arm/mach-imx/speed-imx53.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
