Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-000203-Sg
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:49 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qh-Nv
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002IJ-Mm
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:23 +0100
Message-Id: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] i.MX28 architecture inclusion into barebox
To: barebox@lists.infradead.org

This patch stack adds the new Freescale i.MX28 CPU as a basic implementation
to barebox. This new CPU shares most components with the existing i.MX23
(former STM378x), but also some components with the existing IMX. So, this
patch stack has to touch i.MX23 related files and also some IMX related ones.
As a user of this implementation the stack comes with support for the KARO
TX28 CPU card and its evaluation starterkit-5.

The following changes since commit 4f21f1ec978c5cb43a25d1b52a49ff5fe84d4206:

  arm: update mach-types (2010-12-10 10:06:18 +0100)

are available in the git repository at:
  http://git.pengutronix.de/git/jbe/for_barebox_next/ next_iMX28v4

Juergen Beisert (14):
      Make DIV_ROUND_UP macro globally available
      Add macro for correct rounding in integer devisions
      STM378x: Use Hz as the clock unit like in all other arch
      STM378x: Do not configure any pin usage in the driver
      STM378x: Parameterize the max. possible GPIO number
      STM378x: Separate i.MX23 clock handling
      IMX: Ignore i.MX23/i.MX28 related code in shared devices
      STM378x: Add i.MX28 architecture
      STM378x: Adapt the serial driver to support i.MX23 and i.MX28
      STM378x: Adapt the MCI driver to support i.MX23 and i.MX28
      Fixup the FEC driver files
      MX28: add FEC support
      STM378x: Add TX28 CPU module
      STM378x: Add the TX28 Starterkit-5 baseboard

 Documentation/boards.dox                         |    1 +
 arch/arm/Makefile                                |    1 +
 arch/arm/boards/karo-tx28/Makefile               |    2 +
 arch/arm/boards/karo-tx28/config.h               |   16 +
 arch/arm/boards/karo-tx28/env/config             |   47 ++
 arch/arm/boards/karo-tx28/tx28-stk5.c            |  229 +++++++++
 arch/arm/boards/karo-tx28/tx28.c                 |  156 ++++++
 arch/arm/configs/tx28stk5_defconfig              |   38 ++
 arch/arm/mach-imx/include/mach/generic.h         |    2 +
 arch/arm/mach-stm/Kconfig                        |   36 ++
 arch/arm/mach-stm/Makefile                       |    5 +-
 arch/arm/mach-stm/clocksource-imx28.c            |   73 +++
 arch/arm/mach-stm/{imx23.c => imx.c}             |    0
 arch/arm/mach-stm/include/mach/clock-imx23.h     |   26 +
 arch/arm/mach-stm/include/mach/clock-imx28.h     |   29 ++
 arch/arm/mach-stm/include/mach/clock.h           |   22 +-
 arch/arm/mach-stm/include/mach/generic.h         |    6 +
 arch/arm/mach-stm/include/mach/gpio.h            |    3 +
 arch/arm/mach-stm/include/mach/imx-regs.h        |    9 +
 arch/arm/mach-stm/include/mach/imx28-regs.h      |   47 ++
 arch/arm/mach-stm/include/mach/iomux-imx28.h     |  552 ++++++++++++++++++++++
 arch/arm/mach-stm/{iomux-imx23.c => iomux-imx.c} |   29 +-
 arch/arm/mach-stm/{reset-imx23.c => reset-imx.c} |    0
 arch/arm/mach-stm/speed-imx23.c                  |   52 +-
 arch/arm/mach-stm/speed-imx28.c                  |  392 +++++++++++++++
 drivers/mci/Kconfig                              |    4 +-
 drivers/mci/stm378x.c                            |  141 +++++-
 drivers/net/fec_imx.c                            |   95 +++-
 drivers/net/fec_imx.h                            |   21 +-
 drivers/serial/Kconfig                           |    2 +-
 drivers/serial/stm-serial.c                      |    9 +-
 drivers/spi/imx_spi.c                            |    3 -
 include/common.h                                 |    9 +
 33 files changed, 1955 insertions(+), 102 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx28/Makefile
 create mode 100644 arch/arm/boards/karo-tx28/config.h
 create mode 100644 arch/arm/boards/karo-tx28/env/config
 create mode 100644 arch/arm/boards/karo-tx28/tx28-stk5.c
 create mode 100644 arch/arm/boards/karo-tx28/tx28.c
 create mode 100644 arch/arm/configs/tx28stk5_defconfig
 create mode 100644 arch/arm/mach-stm/clocksource-imx28.c
 rename arch/arm/mach-stm/{imx23.c => imx.c} (100%)
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx23.h
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx28.h
 create mode 100644 arch/arm/mach-stm/include/mach/imx28-regs.h
 create mode 100644 arch/arm/mach-stm/include/mach/iomux-imx28.h
 rename arch/arm/mach-stm/{iomux-imx23.c => iomux-imx.c} (82%)
 rename arch/arm/mach-stm/{reset-imx23.c => reset-imx.c} (100%)
 create mode 100644 arch/arm/mach-stm/speed-imx28.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
