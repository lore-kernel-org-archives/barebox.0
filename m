Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGlW-0005vE-SL
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 18:01:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SwGlT-00082C-1b
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 20:01:51 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1SwGlT-0003ko-0Z
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 20:01:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 20:01:46 +0200
Message-Id: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Freescale sabrelite support
To: barebox@lists.infradead.org

The following series adds support for the Freescale i.MX6 sabrelite board.
As preparation SPI support for i.MX6 and support for the serial internal
boot mode is added.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      SPI i.MX: Add support for i.MX6
      ARM i.MX: Add support for internal serial boot mode
      ARM i.MX: Add support for the Freescale i.MX6 sabrelite board
      ARM i.MX: Add defconfig for Freescale i.MX6 Sabre Lite board

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  265 ++++++++++++++++++++
 arch/arm/boards/freescale-mx6-sabrelite/config.h   |    4 +
 .../freescale-mx6-sabrelite/env/init/bootargs-base |    8 +
 .../freescale-mx6-sabrelite/env/init/hostname      |    8 +
 .../boards/freescale-mx6-sabrelite/flash_header.c  |  178 +++++++++++++
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |   71 ++++++
 arch/arm/mach-imx/Kconfig                          |   15 ++
 arch/arm/mach-imx/include/mach/barebox.lds.h       |   12 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h      |    5 +
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |    9 +
 arch/arm/mach-imx/speed-imx51.c                    |    5 +
 arch/arm/mach-imx/speed-imx53.c                    |    5 +
 arch/arm/mach-imx/speed-imx6.c                     |    5 +
 drivers/spi/Kconfig                                |    2 +-
 drivers/spi/imx_spi.c                              |    6 +-
 17 files changed, 595 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
 create mode 100644 arch/arm/configs/freescale-mx6-sabrelite_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
