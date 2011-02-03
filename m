Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pkvo3-000725-3b
	for barebox@lists.infradead.org; Thu, 03 Feb 2011 09:48:53 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pkvo1-0007oK-4G
	for barebox@lists.infradead.org; Thu, 03 Feb 2011 10:48:49 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pkvo1-0003lV-39
	for barebox@lists.infradead.org; Thu, 03 Feb 2011 10:48:49 +0100
Date: Thu, 3 Feb 2011 10:48:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110203094849.GC9041@pengutronix.de>
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
Subject: v2011.02.0
To: barebox@lists.infradead.org

Hi all,

v2011.02.0 is out. Here is what happened since the last release:

The following changes since commit d836124f8bbe05843a3f954727e6544a0fb96013:

  Release v2011.01.0 (2011-01-06 11:25:35 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git master

Alexey Zaytsev (1):
      Add basic support from ARM Versatile/PB

Baruch Siach (2):
      remove redundant .gitignore entries
      miidev: allow read/write of all registers

Fabio Porcedda (1):
      xyzModem.c: fix 'dummy' is used uninitialized in this function warning

Jean-Christophe PLAGNIOL-VILLARD (2):
      versatile: add missing env/config
      at91sam9g45: fix ARCH_TEXT_BASE

Juergen Beisert (35):
      STM/MCI: Fix wrong register bit
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
      Add more useful generic macros
      ARM Chumby: Fix memory index
      ARM Chumby: Fix unit of the clocks after the change to Hz
      ARM Chumby: Just fix some typos
      Fix default framebuffer 'enable' set
      Add the feature to change the video mode at runtime
      ARM STM/i.MX: Add a pixel clock calculation routine for i.MX23/i.MX28
      ARM STM/i.MX: Add video driver for i.MX23/i.MX28
      ARM KARO-TX28-STK5: Add a user for video graphics support on i.MX28
      ARM Chumby-Falconwing: Add a user for video graphics support on i.MX23
      Fix a typo in the GPIO doc
      ARM STM/i.MX: Fix register offset calculation for GPIO input pins
      ARM STM/i.MX: Remove variable size restrictions in iomux managing routines
      ARM STM/i.MX: Setting the iomux needs at least 32 bit.
      ARM STM/i.MX: Just fix the docs
      ARM STM/i.MX: Add support for the gpio commands
      ARM STM/i.MX: Avoid very long lines
      ARM STM/i.MX: Replace cryptic numbers
      ARM Chumby: Add list of available GPIOs and their meaning
      Fix default baudrate setting

Krzysztof Halasa (10):
      Remove unused eth_get_name() prototype.
      Flash CFI: removed unused 'size' variable.
      Fix help text for "loadb" and "loady" commands.
      Fix top-level Makefile to work with GNU make 3.82.
      Cosmetic fixes, including format attributes for printf() and friends.
      ARM: support big-endian processors.
      Silence few warnings.
      Fix NOR CFI flash driver to work on big endian systems.
      Fix usage of __LITTLE_ENDIAN macro.
      CFI NOR flash: fix write timeout units.

Marc Kleine-Budde (1):
      Add generic poll infrastructure

Marc Reilly (3):
      arm: update mach-types
      imx: add IMX_GPIO_NR macro.
      Put the explicit flash header sections back in.

Peter Korsgaard (1):
      console_simple: add fprintf / console_list for commands/loadb.c

Sanjeev Premi (17):
      omap3: Add macros to extract hawkeye and version
      omap3: Detect cpu based on hawkeye
      omap3: Update method to detect si revision
      omap3: Add DPLL tables for silicon rev 1 and 2
      omap3: Define separate functions for DPLL configuration
      omap3: Select DPLL tables based on cpu revision
      omap34x: Add suffix to DPLL tables and related function
      omap36x: Add support for dynamic detection
      omap36x: Detect silicon revisions
      omap36x: Define structure for PER DPLL
      omap36x: Add DPLL tables and functions to access them
      omap36x: Define per domain functions for DPLL configuration
      omap36x: Perform basic clock initialization
      omap3: Avoid sudden change to SYS_CLK divider
      omap3: Define GFX_DIV values for OMAP34xx and OMAP36xx
      omap: echi: fix compile error
      nand: Fix warnings due to incompatible format strings

Sascha Hauer (39):
      ARM STM/i.MX: remove GENERIC_GPIO from ARCH_STM
      ARM tx28stk5_defconfig: update config
      cfi flash driver: check for ctrl-c during erase
      basic LED support
      LED: Add gpio LED support
      LED: Add LED trigger support
      LED: Add led command
      LED: Add trigger command
      ARM pcm043 board: Add LED support
      Merge branch 'led' into next
      Merge branch 'next'
      i.MX: fix printf compiler warnings
      net: fix printf compiler warnings
      fec_imx: fix printf compiler warnings
      nand: fix printf compiler warnings
      cdev: fix printf compiler warnings
      usb: add missing byteorder include
      add to speed
      eukrea_cpuimx35: fix printf compiler warnings
      blackfin: fix printf compiler warnings
      cs8900: fix printf compiler warnings
      dm9000: fix printf compiler warnings
      smc911x: fix printf compiler warnings
      ipe337: fix printf compiler warnings
      device tree: fix printf compiler warnings
      netx: fix printf compiler warnings
      guf-cupid: fix printf compiler warnings
      pcm043: fix printf compiler warnings
      at91: fix printf compiler warnings
      ppc: fix printf compiler warnings
      imx-esdhc: fix printf compiler warnings
      mci-core: fix printf compiler warnings
      imx-ipu-fb: fix printf compiler warnings
      mpc5xxx: fix printf compiler warnings
      i.MX nand: do not select NAND_IMX_BOOT
      fb: update cdev map_base
      Merge branch 'fb-master'
      fb: When setting a mode, also update xres, yres and fb size
      Release v2011.02.0

Wolfram Sang (1):
      defaultenv: make 'boot' work from subdirs

 .gitignore                                        |    2 -
 Documentation/boards.dox                          |    1 +
 Makefile                                          |   10 +-
 arch/arm/Kconfig                                  |    5 +
 arch/arm/Makefile                                 |    3 +
 arch/arm/boards/chumby_falconwing/falconwing.c    |  184 ++++++-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/karo-tx28/Makefile                |    2 +
 arch/arm/boards/karo-tx28/config.h                |   16 +
 arch/arm/boards/karo-tx28/env/config              |   47 ++
 arch/arm/boards/karo-tx28/tx28-stk5.c             |  377 ++++++++++++++
 arch/arm/boards/karo-tx28/tx28.c                  |  156 ++++++
 arch/arm/boards/pcm043/pcm043.c                   |   12 +-
 arch/arm/boards/versatile/Kconfig                 |   10 +
 arch/arm/boards/versatile/Makefile                |    2 +
 arch/arm/boards/versatile/config.h                |    5 +
 arch/arm/boards/versatile/env/config              |   43 ++
 arch/arm/boards/versatile/versatilepb.c           |   72 +++
 arch/arm/configs/chumbyone_defconfig              |    4 +
 arch/arm/configs/tx28stk5_defconfig               |   46 ++
 arch/arm/configs/versatilepb_defconfig            |   48 ++
 arch/arm/cpu/Kconfig                              |    3 +
 arch/arm/cpu/start.c                              |    3 +
 arch/arm/include/asm/hardware/arm_timer.h         |   33 ++
 arch/arm/mach-at91/Kconfig                        |    1 +
 arch/arm/mach-at91/clock.c                        |    2 +-
 arch/arm/mach-imx/Kconfig                         |    1 -
 arch/arm/mach-imx/include/mach/generic.h          |    2 +
 arch/arm/mach-imx/include/mach/imx-flash-header.h |   12 +
 arch/arm/mach-imx/include/mach/imx-regs.h         |    4 +
 arch/arm/mach-imx/speed-imx1.c                    |   20 +-
 arch/arm/mach-imx/speed-imx21.c                   |   20 +-
 arch/arm/mach-imx/speed-imx25.c                   |   20 +-
 arch/arm/mach-imx/speed-imx27.c                   |   20 +-
 arch/arm/mach-imx/speed-imx31.c                   |    4 +-
 arch/arm/mach-imx/speed-imx35.c                   |   18 +-
 arch/arm/mach-netx/generic.c                      |    2 +-
 arch/arm/mach-omap/include/mach/omap3-clock.h     |   33 +-
 arch/arm/mach-omap/include/mach/omap3-silicon.h   |   16 +-
 arch/arm/mach-omap/include/mach/sys_info.h        |   40 +-
 arch/arm/mach-omap/omap3_clock.c                  |  547 ++++++++++++++++----
 arch/arm/mach-omap/omap3_clock_core.S             |  290 ++++++++----
 arch/arm/mach-omap/omap3_generic.c                |   89 +++-
 arch/arm/mach-stm/Kconfig                         |   36 ++
 arch/arm/mach-stm/Makefile                        |    6 +-
 arch/arm/mach-stm/clocksource-imx28.c             |   73 +++
 arch/arm/mach-stm/{imx23.c => imx.c}              |    0
 arch/arm/mach-stm/imx_lcd_clk.c                   |  149 ++++++
 arch/arm/mach-stm/include/mach/clock-imx23.h      |   28 +
 arch/arm/mach-stm/include/mach/clock-imx28.h      |   31 ++
 arch/arm/mach-stm/include/mach/clock.h            |   22 +-
 arch/arm/mach-stm/include/mach/fb.h               |   43 ++
 arch/arm/mach-stm/include/mach/generic.h          |    6 +
 arch/arm/mach-stm/include/mach/gpio.h             |   11 +-
 arch/arm/mach-stm/include/mach/imx-regs.h         |    9 +
 arch/arm/mach-stm/include/mach/imx23-regs.h       |    1 +
 arch/arm/mach-stm/include/mach/imx28-regs.h       |   47 ++
 arch/arm/mach-stm/include/mach/iomux-imx28.h      |  552 +++++++++++++++++++++
 arch/arm/mach-stm/{iomux-imx23.c => iomux-imx.c}  |  114 ++++-
 arch/arm/mach-stm/{reset-imx23.c => reset-imx.c}  |    0
 arch/arm/mach-stm/speed-imx23.c                   |   52 +-
 arch/arm/mach-stm/speed-imx28.c                   |  392 +++++++++++++++
 arch/arm/mach-versatile/Kconfig                   |   16 +
 arch/arm/mach-versatile/Makefile                  |    2 +
 arch/arm/mach-versatile/core.c                    |  224 +++++++++
 arch/arm/mach-versatile/include/mach/clkdev.h     |    7 +
 arch/arm/mach-versatile/include/mach/debug_ll.h   |   37 ++
 arch/arm/mach-versatile/include/mach/init.h       |    8 +
 arch/arm/mach-versatile/include/mach/platform.h   |  417 ++++++++++++++++
 arch/arm/tools/mach-types                         |  385 ++++++++++++++-
 arch/blackfin/boards/ipe337/cmd_alternate.c       |    4 +-
 arch/blackfin/lib/blackfin_linux.c                |    2 +-
 arch/blackfin/lib/traps.c                         |    2 +-
 arch/ppc/lib/ppclinux.c                           |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c                       |    2 +-
 commands/Kconfig                                  |   15 +
 commands/Makefile                                 |    2 +
 commands/crc.c                                    |    2 +-
 commands/flash.c                                  |    4 +-
 commands/go.c                                     |    2 +-
 commands/gpio.c                                   |    2 +-
 commands/led.c                                    |   90 ++++
 commands/loadb.c                                  |    3 +-
 commands/ls.c                                     |    4 +-
 commands/menu.c                                   |    2 +-
 commands/nand.c                                   |    2 +-
 commands/trigger.c                                |  107 ++++
 commands/xyzModem.c                               |    2 +-
 common/Kconfig                                    |    3 +
 common/Makefile                                   |    1 +
 common/console.c                                  |    8 +-
 common/console_simple.c                           |   26 +-
 common/ft_build.c                                 |    2 +-
 common/poller.c                                   |   45 ++
 common/startup.c                                  |    2 +-
 defaultenv/bin/boot                               |    4 +-
 drivers/Kconfig                                   |    1 +
 drivers/Makefile                                  |    1 +
 drivers/led/Kconfig                               |   21 +
 drivers/led/Makefile                              |    3 +
 drivers/led/core.c                                |  157 ++++++
 drivers/led/led-gpio.c                            |   94 ++++
 drivers/led/led-triggers.c                        |  153 ++++++
 drivers/mci/Kconfig                               |    4 +-
 drivers/mci/imx-esdhc.c                           |    2 +-
 drivers/mci/mci-core.c                            |    4 +-
 drivers/mci/stm378x.c                             |  143 +++++-
 drivers/mtd/nand/nand.c                           |   14 +-
 drivers/mtd/nand/nand_base.c                      |    2 +-
 drivers/mtd/ubi/cdev.c                            |    2 +-
 drivers/net/cs8900.c                              |    6 +-
 drivers/net/dm9000.c                              |   12 +-
 drivers/net/fec_imx.c                             |  101 +++-
 drivers/net/fec_imx.h                             |   21 +-
 drivers/net/miidev.c                              |    2 +-
 drivers/net/netx_eth.c                            |    1 -
 drivers/net/smc911x.c                             |    2 +-
 drivers/nor/cfi_flash.c                           |  161 +++----
 drivers/nor/cfi_flash.h                           |   25 +-
 drivers/serial/Kconfig                            |    2 +-
 drivers/serial/stm-serial.c                       |    9 +-
 drivers/spi/imx_spi.c                             |    3 -
 drivers/usb/host/ehci-omap.c                      |    2 +-
 drivers/video/Kconfig                             |    7 +
 drivers/video/Makefile                            |    1 +
 drivers/video/fb.c                                |   52 ++-
 drivers/video/imx-ipu-fb.c                        |    2 +-
 drivers/video/stm.c                               |  540 ++++++++++++++++++++
 include/common.h                                  |   19 +
 include/cramfs/cramfs_fs.h                        |    4 +-
 include/fb.h                                      |    3 +
 include/led.h                                     |  102 ++++
 include/net.h                                     |    4 +-
 include/poller.h                                  |   31 ++
 include/stdio.h                                   |   18 +-
 include/usb/usb.h                                 |    3 +-
 lib/readline.c                                    |    4 +-
 lib/vsprintf.c                                    |    4 +
 net/eth.c                                         |   10 +-
 net/net.c                                         |   20 +-
 net/tftp.c                                        |    2 +-
 142 files changed, 6368 insertions(+), 643 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx28/Makefile
 create mode 100644 arch/arm/boards/karo-tx28/config.h
 create mode 100644 arch/arm/boards/karo-tx28/env/config
 create mode 100644 arch/arm/boards/karo-tx28/tx28-stk5.c
 create mode 100644 arch/arm/boards/karo-tx28/tx28.c
 create mode 100644 arch/arm/boards/versatile/Kconfig
 create mode 100644 arch/arm/boards/versatile/Makefile
 create mode 100644 arch/arm/boards/versatile/config.h
 create mode 100644 arch/arm/boards/versatile/env/config
 create mode 100644 arch/arm/boards/versatile/versatilepb.c
 create mode 100644 arch/arm/configs/tx28stk5_defconfig
 create mode 100644 arch/arm/configs/versatilepb_defconfig
 create mode 100644 arch/arm/include/asm/hardware/arm_timer.h
 create mode 100644 arch/arm/mach-stm/clocksource-imx28.c
 rename arch/arm/mach-stm/{imx23.c => imx.c} (100%)
 create mode 100644 arch/arm/mach-stm/imx_lcd_clk.c
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx23.h
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx28.h
 create mode 100644 arch/arm/mach-stm/include/mach/fb.h
 create mode 100644 arch/arm/mach-stm/include/mach/imx28-regs.h
 create mode 100644 arch/arm/mach-stm/include/mach/iomux-imx28.h
 rename arch/arm/mach-stm/{iomux-imx23.c => iomux-imx.c} (50%)
 rename arch/arm/mach-stm/{reset-imx23.c => reset-imx.c} (100%)
 create mode 100644 arch/arm/mach-stm/speed-imx28.c
 create mode 100644 arch/arm/mach-versatile/Kconfig
 create mode 100644 arch/arm/mach-versatile/Makefile
 create mode 100644 arch/arm/mach-versatile/core.c
 create mode 100644 arch/arm/mach-versatile/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-versatile/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-versatile/include/mach/init.h
 create mode 100644 arch/arm/mach-versatile/include/mach/platform.h
 create mode 100644 commands/led.c
 create mode 100644 commands/trigger.c
 create mode 100644 common/poller.c
 create mode 100644 drivers/led/Kconfig
 create mode 100644 drivers/led/Makefile
 create mode 100644 drivers/led/core.c
 create mode 100644 drivers/led/led-gpio.c
 create mode 100644 drivers/led/led-triggers.c
 create mode 100644 drivers/video/stm.c
 create mode 100644 include/led.h
 create mode 100644 include/poller.h
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
