Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLs-0001ZK-1n
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:29 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:04:59 +0300
Message-Id: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 0/8] i.MX25 3DS fixes and enhancements
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

This series of patches includes the following:

1. Fixes and clean-ups for the i.MX25 3DS board code
2. New driver for the i.MX25 3DS on-board PMIC
3. Enable proper FEC initialization including PHY power supply enable
4. Add support for boot from UART on the i.MX25 3DS

Note that currently there is no watchdog service routine. Since the UART boot 
mode enables the watchdog, this means that you can only have Barebox running 
for 90 seconds before the watchdog resets the CPU.

Baruch Siach (8):
  mx25 3ds: fix build failure
  mx25: fix typo in imx25-regs.h
  mx25 3ds: cleanup lowlevel_init code
  mx25: add support for i2c
  i2c: add driver for the MC34704 PMIC
  mx25 3ds: add support for i2c master and PMIC
  mx25 3ds: fix fec initialization
  mx25 3ds: add support for boot from UART

 arch/arm/mach-imx/Kconfig                    |    5 +
 arch/arm/mach-imx/include/mach/imx25-regs.h  |    3 +-
 arch/arm/mach-imx/include/mach/iomux-mx25.h  |    4 +-
 arch/arm/mach-imx/speed-imx25.c              |    5 +
 board/freescale-mx25-3-stack/3stack.c        |   87 ++++++++++------
 board/freescale-mx25-3-stack/lowlevel_init.S |   18 ++--
 drivers/i2c/Kconfig                          |    3 +
 drivers/i2c/Makefile                         |    1 +
 drivers/i2c/mc34704.c                        |  140 ++++++++++++++++++++++++++
 include/i2c/mc34704.h                        |   26 +++++
 10 files changed, 247 insertions(+), 45 deletions(-)
 create mode 100644 drivers/i2c/mc34704.c
 create mode 100644 include/i2c/mc34704.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
