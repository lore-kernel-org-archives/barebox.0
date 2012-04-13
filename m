Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxY-0004vq-Kd
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SIgxQ-0005eQ-6y
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 15:54:36 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SIgxQ-0000YP-66
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 15:54:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:26 +0200
Message-Id: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: initial i.MX6 support
To: barebox@lists.infradead.org

The following adds initial i.MX6 suport:

- i.MX6q Armadillo 2 board support
- Ethernet
- MMC
- UART

Sascha

The following changes since commit a58bfe06b5f26850015b5a17a8723e4dd2a75dad:

  arm: tx28: select OCOTP driver (2012-04-13 14:47:08 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git mx6

for you to fetch changes up to 78b482228a8a227d4092ad17b3ca2f24fa9632c4:

  ARM Freescale i.MX6 Armadillo2: Add defconfig (2012-04-13 15:51:12 +0200)

----------------------------------------------------------------
Sascha Hauer (7):
      ARM: add initial i.MX6 support
      serial i.MX: i.MX6 support
      net fec: Add i.MX6 support
      mmc i.MX esdhc: Add i.MX6 support
      net mii: Add mii_open/mii_close functions
      ARM: initial Freescale i.MX6q Armadillo2 support
      ARM Freescale i.MX6 Armadillo2: Add defconfig

 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/freescale-mx6-arm2/Makefile       |    1 +
 arch/arm/boards/freescale-mx6-arm2/board.c        |  173 +
 arch/arm/boards/freescale-mx6-arm2/config.h       |    4 +
 arch/arm/boards/freescale-mx6-arm2/env/config     |   47 +
 arch/arm/boards/freescale-mx6-arm2/flash_header.c |  170 +
 arch/arm/configs/freescale-mx6-arm2_defconfig     |   69 +
 arch/arm/mach-imx/Kconfig                         |   22 +-
 arch/arm/mach-imx/Makefile                        |    1 +
 arch/arm/mach-imx/imx6.c                          |   71 +
 arch/arm/mach-imx/include/mach/clock-imx6.h       |  530 ++
 arch/arm/mach-imx/include/mach/devices-imx6.h     |   46 +
 arch/arm/mach-imx/include/mach/generic.h          |    6 +
 arch/arm/mach-imx/include/mach/imx-regs.h         |    2 +
 arch/arm/mach-imx/include/mach/imx6-anadig.h      |  721 +++
 arch/arm/mach-imx/include/mach/imx6-regs.h        |  132 +
 arch/arm/mach-imx/include/mach/imx6.h             |    6 +
 arch/arm/mach-imx/include/mach/iomux-mx6.h        | 5630 +++++++++++++++++++++
 arch/arm/mach-imx/speed-imx6.c                    |  393 ++
 drivers/mci/Kconfig                               |    2 +-
 drivers/mci/imx-esdhc.c                           |   15 +-
 drivers/net/fec_imx.c                             |   25 +-
 drivers/net/miidev.c                              |   20 +
 drivers/serial/serial_imx.c                       |    2 +-
 include/asm-generic/barebox.lds.h                 |    7 +-
 include/fec.h                                     |    1 +
 include/miidev.h                                  |    5 +
 27 files changed, 8092 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/env/config
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/flash_header.c
 create mode 100644 arch/arm/configs/freescale-mx6-arm2_defconfig
 create mode 100644 arch/arm/mach-imx/imx6.c
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx6.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx6.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-anadig.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx6.h
 create mode 100644 arch/arm/mach-imx/speed-imx6.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
