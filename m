Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoxMa-0006Sk-JC
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 12:49:26 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QoxMV-000145-0I
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 14:49:19 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QoxMU-0000Hv-VG
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 14:49:18 +0200
Date: Thu, 4 Aug 2011 14:49:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110804124918.GZ31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2011.08.0
To: barebox@lists.infradead.org

Hi all,

I just released v2011.08.0. Again a rather calm release, not much has
happened except for some new drivers.

Sascha

Andre Naujoks (2):
      barebox compilation with gcc 4.5.2 and ptxdist
      barebox compilation with gcc 4.5.2 and ptxdist

Antony Pavlov (8):
      include/linux/stat.h: make struct stat unified
      commands/bootm.c: fix unused-but-set-variable gcc warning
      lib/readline.c: fix unused-but-set-variable gcc warning
      NiosII: fix typo in cpu/exceptions.S
      x86: fix typo in include/asm/posix_types.h
      serial_ns16550: remove legacy code copied from U-Boot v1
      commands/led.c: check registered LEDs
      fs/fat/ff.c: fix 'no previous prototype' warnings

Carlo Caione (1):
      shift and clocksource

Franck Jullien (4):
      Add Altera JTAG UART driver
      spi: add bits_per_word to proxy structure
      spi: unregister dev if master->setup fails
      Nios2: Compile bootm only if needed

Hubert Feurstein (9):
      at91sam9m10g45ek: add mci0 support
      mci: add Atmel AT91 MCI driver
      at91sam9m10g45ek: update mci0 support
      macb: add support for board specific get_ethaddr function
      spi: add platform_data pointer to spi_board_info
      spi: add more spi transfer functions
      eeprom: add at25 eeprom driver
      atmel-mci: fix wrong pointer cast
      atmel-mci: fix initialization of 8bit-bus-width-mode for at91sam9g45

Jan Weitzel (2):
      pcm049: use gpmc_generic_init
      update: add xload

Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9263ek: add mci1 support
      mach-versatile: switch debug_ll.h to GPLv2 or later
      at91sam9263ek: fix env location and size
      fix: commands/bootm.c:346:2: warning: statement with no effect

Marc Kleine-Budde (1):
      Makefile: remove -Map option from global LDFLAGS

Sascha Hauer (8):
      Merge branch 'atmel-mci-support-3' of git://gitorious.org/hfe-repos/barebox into next
      Merge branch 'master' into next
      Merge branch 'next'
      ARM i.MX35: Fix bogus L2 cache settings
      ARM pcm043: update defconfig
      ARM i.MX51 babbage: remove dead code
      Fix memory corruption bug in dev_id()
      Release v2011.08.0

 Makefile                                        |    4 +-
 arch/arm/boards/at91sam9263ek/env/config        |    2 +-
 arch/arm/boards/at91sam9263ek/init.c            |   16 +
 arch/arm/boards/at91sam9m10g45ek/init.c         |   18 +
 arch/arm/boards/freescale-mx51-pdk/board.c      |    2 -
 arch/arm/boards/freescale-mx51-pdk/spi.c        |  340 ----------------
 arch/arm/boards/pcm049/board.c                  |    2 +
 arch/arm/configs/at91sam9263ek_defconfig        |    5 +
 arch/arm/configs/at91sam9m10g45ek_defconfig     |    5 +
 arch/arm/configs/pcm043_defconfig               |    9 +-
 arch/arm/mach-at91/at91sam9260_devices.c        |   50 +++
 arch/arm/mach-at91/at91sam9261_devices.c        |   50 +++
 arch/arm/mach-at91/at91sam9263_devices.c        |   78 ++++
 arch/arm/mach-at91/at91sam9g45_devices.c        |   91 +++++
 arch/arm/mach-at91/include/mach/board.h         |   12 +
 arch/arm/mach-imx/imx35.c                       |   19 +
 arch/arm/mach-imx/include/mach/imx35-regs.h     |    1 +
 arch/arm/mach-versatile/include/mach/debug_ll.h |    2 +-
 arch/nios2/cpu/exceptions.S                     |    2 +-
 arch/nios2/lib/Makefile                         |    2 +-
 arch/ppc/lib/Makefile                           |    1 +
 arch/ppc/lib/crtsavres.S                        |  239 +++++++++++
 arch/ppc/lib/misc.S                             |   14 +
 arch/x86/include/asm/posix_types.h              |    2 +-
 commands/bootm.c                                |    3 +-
 commands/led.c                                  |    6 +
 common/clock.c                                  |   55 +++
 defaultenv/bin/_update_help                     |    3 +-
 defaultenv/bin/update                           |    2 +
 drivers/Kconfig                                 |    1 +
 drivers/Makefile                                |    1 +
 drivers/eeprom/Kconfig                          |   11 +
 drivers/eeprom/Makefile                         |    1 +
 drivers/eeprom/at25.c                           |  319 +++++++++++++++
 drivers/mci/Kconfig                             |    7 +
 drivers/mci/Makefile                            |    1 +
 drivers/mci/at91_mci.h                          |  121 ++++++
 drivers/mci/atmel_mci.c                         |  494 +++++++++++++++++++++++
 drivers/net/macb.c                              |    2 +-
 drivers/serial/Kconfig                          |    5 +
 drivers/serial/Makefile                         |    1 +
 drivers/serial/serial_altera_jtag.c             |  101 +++++
 drivers/serial/serial_ns16550.c                 |   19 -
 drivers/serial/serial_ns16550.h                 |    4 -
 drivers/spi/spi.c                               |   44 ++
 fs/fat/ff.c                                     |    8 +-
 include/clock.h                                 |    2 +
 include/common.h                                |   10 +-
 include/linux/stat.h                            |   58 ---
 include/spi/eeprom.h                            |   22 +
 include/spi/spi.h                               |   79 ++++-
 lib/driver.c                                    |    4 +-
 lib/readline.c                                  |    2 -
 53 files changed, 1904 insertions(+), 448 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/spi.c
 create mode 100644 arch/ppc/lib/crtsavres.S
 create mode 100644 drivers/eeprom/Kconfig
 create mode 100644 drivers/eeprom/Makefile
 create mode 100644 drivers/eeprom/at25.c
 create mode 100644 drivers/mci/at91_mci.h
 create mode 100644 drivers/mci/atmel_mci.c
 create mode 100644 drivers/serial/serial_altera_jtag.c
 create mode 100644 include/spi/eeprom.h
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
