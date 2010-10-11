Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003Fm-5O
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:35 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1P5GYM-0004Pv-Bn
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 13:28:26 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1P5GYM-0004LG-Aa
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 13:28:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:08 +0200
Message-Id: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Patches for -next
To: barebox@lists.infradead.org

Hi All,

Here are several patches leading to i.MX51 babbage support in the end.
Not all patches are directly i.MX51/babbage related but are needed
to make it work.

Sascha

The following changes since commit 3eec12c24a53e7b9b9c1c5d9778fc4357aaaedef:

  ARM pca100: Add mci support (2010-10-11 13:08:28 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git mx51

Sascha Hauer (17):
      i.MX27: Add support for SDHC pins
      mci: Add i.MX esdhc support
      mci: print error code on failure
      spi i.MX: add spi version namespace to register defines
      spi i.MX: redirect functions to version specific functions
      spi i.MX: Add i.MX51 support
      Move mfd drivers to drivers/mfd
      move include files for mfd drivers to include/mfd
      mfd mc13892: Add spi support
      mfd mc13892: support reading the revision
      mci: handle SD cards < 2.0 correctly
      mci: align write buffer if necessary
      defaultenv: handle disk partitions
      imx_serial: Add mx51 support
      ARM mmu: Call __mmu_cache_flush instead of hardcoded v4/v5 only function
      ARM i.MX: Add basic i.MX51 support
      ARM i.MX51: Add babbage board support

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    6 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    3 +
 arch/arm/boards/freescale-mx51-pdk/board.c         |  318 +++++++++
 arch/arm/boards/freescale-mx51-pdk/config.h        |   24 +
 arch/arm/boards/freescale-mx51-pdk/env/config      |   52 ++
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   85 +++
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  216 ++++++
 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox    |    4 +
 arch/arm/boards/freescale-mx51-pdk/spi.c           |  340 ++++++++++
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   43 ++
 arch/arm/cpu/mmu.c                                 |    6 +-
 arch/arm/mach-imx/Kconfig                          |   24 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/imx51.c                          |   51 ++
 arch/arm/mach-imx/include/mach/clock-imx51.h       |  696 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/generic.h           |    6 +
 arch/arm/mach-imx/include/mach/imx-regs.h          |    2 +
 arch/arm/mach-imx/include/mach/imx51-regs.h        |  131 ++++
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |    6 +
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |  330 +++++++++
 arch/arm/mach-imx/include/mach/iomux-v3.h          |   10 +-
 arch/arm/mach-imx/speed-imx51.c                    |  163 +++++
 defaultenv/bin/init                                |    4 +
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/i2c/Kconfig                                |   16 -
 drivers/i2c/Makefile                               |    6 -
 drivers/i2c/mc13892.c                              |  164 -----
 drivers/mci/Kconfig                                |   13 +
 drivers/mci/Makefile                               |    1 +
 drivers/mci/imx-esdhc.c                            |  512 ++++++++++++++
 drivers/mci/imx-esdhc.h                            |  164 +++++
 drivers/mci/mci-core.c                             |   45 +-
 drivers/mfd/Kconfig                                |   28 +
 drivers/mfd/Makefile                               |    6 +
 drivers/{i2c => mfd}/lp3972.c                      |    0
 drivers/{spi => mfd}/mc13783.c                     |    0
 drivers/mfd/mc13892.c                              |  327 +++++++++
 drivers/{i2c => mfd}/mc34704.c                     |    2 +-
 drivers/{i2c => mfd}/mc9sdz60.c                    |    2 +-
 drivers/{i2c => mfd}/twl4030.c                     |    2 +-
 drivers/serial/serial_imx.c                        |    3 +-
 drivers/spi/Kconfig                                |   12 +-
 drivers/spi/Makefile                               |    2 -
 drivers/spi/imx_spi.c                              |  347 ++++++++--
 drivers/usb/host/ehci-omap.c                       |    2 +-
 drivers/usb/otg/twl4030.c                          |    2 +-
 include/asm-generic/barebox.lds.h                  |    2 +-
 include/{i2c => mfd}/lp3972.h                      |    0
 include/{i2c => mfd}/mc13892.h                     |   28 +
 include/{i2c => mfd}/mc34704.h                     |    0
 include/{i2c => mfd}/mc9sdz60.h                    |    0
 include/{i2c => mfd}/twl4030.h                     |    0
 56 files changed, 3911 insertions(+), 303 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/board.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/config.h
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/config
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/spi.c
 create mode 100644 arch/arm/configs/freescale_mx51_babbage_defconfig
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx51-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx51.h
 create mode 100644 arch/arm/mach-imx/speed-imx51.c
 delete mode 100644 drivers/i2c/mc13892.c
 create mode 100644 drivers/mci/imx-esdhc.c
 create mode 100644 drivers/mci/imx-esdhc.h
 create mode 100644 drivers/mfd/Kconfig
 create mode 100644 drivers/mfd/Makefile
 rename drivers/{i2c => mfd}/lp3972.c (100%)
 rename drivers/{spi => mfd}/mc13783.c (100%)
 create mode 100644 drivers/mfd/mc13892.c
 rename drivers/{i2c => mfd}/mc34704.c (99%)
 rename drivers/{i2c => mfd}/mc9sdz60.c (99%)
 rename drivers/{i2c => mfd}/twl4030.c (99%)
 rename include/{i2c => mfd}/lp3972.h (100%)
 rename include/{i2c => mfd}/mc13892.h (82%)
 rename include/{i2c => mfd}/mc34704.h (100%)
 rename include/{i2c => mfd}/mc9sdz60.h (100%)
 rename include/{i2c => mfd}/twl4030.h (100%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
