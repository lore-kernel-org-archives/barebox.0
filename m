Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgsgZ-0006IU-D5
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 07:49:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TgsgX-0006YL-9h
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 08:49:25 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TgsgX-0002yp-8j
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 08:49:25 +0100
Date: Fri, 7 Dec 2012 08:49:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121207074925.GZ10369@pengutronix.de>
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
Subject: v2012.12.0
To: barebox@lists.infradead.org

Hi All,

We have a december release. In number of patches this is the
biggest Release we ever had: 275 non merge patches have gone into this
release. Here's some statisitics over the releases we currently have:

v2010.03.0: 72
v2010.04.0: 18
v2010.05.0: 38
v2010.06.0: 28
v2010.07.0: 29
v2010.08.0: 74
v2010.09.0: 34
v2010.10.0: 88
v2010.11.0: 86
v2010.12.0: 191
v2011.01.0: 69
v2011.02.0: 110
v2011.03.0: 69
v2011.04.0: 57
v2011.05.0: 39
v2011.06.0: 124
v2011.07.0: 15
v2011.08.0: 36
v2011.09.0: 170
v2011.10.0: 59
v2011.11.0: 106
v2011.12.0: 68
v2012.01.0: 143
v2012.02.0: 157
v2012.03.0: 93
v2012.04.0: 110
v2012.05.0: 145
v2012.06.0: 179
v2012.07.0: 138
v2012.08.0: 132
v2012.09.0: 130
v2012.10.0: 155
v2012.11.0: 258
v2012.12.0: 275

And here's as usual what changed between this and the last release

Have fun
 Sascha

----------------------------------------------------------------
Alexander Aring (9):
      nandtest: stat ecc per page not per eraseblock
      nandtest: add progressbar instead of offset print
      nandtest: rename command argument p to i
      nandtest: change flash length variable type
      nandtest: use get_random_bytes instead of for loop
      nandtest: clean up code
      nandtest: use loff_t instead off_t
      nandtest: add another constraints check
      progressbar: use __stringify in format string

Alexander Shiyan (3):
      ARM: Add initial support for CLPS711X architecture
      ARM: clps711x: Add serial driver
      ARM: clps711x: Add generic board support (CLEP7212)

Andreas Pretzsch (2):
      mdiobus: unbreak phy_device_connect(): honor masked out PHYs
      net smc911x: add support for external PHY

Antony Pavlov (13):
      readline: move backspace key handling to the DO_BACKSPACE macro
      readline: add ctrl-w handling (cut-the-last-word)
      readline: fix the 'new blank line at EOF' typo
      commands/Kconfig: move 'ln' to the 'file commands' section
      add 'miitool' command to view media-independent interface status
      MIPS: main_entry.c: fix typo
      ARM: pbl: remove zbarebox.map during 'make clean'
      ARM: start-pbl.c: make errorfn() static
      ARM: start-pbl.c: unifify path to lib/decompress_*.c
      xymodem.c: fix compiler warning
      phylib: fix compiler warning
      MIPS: fix out-of-tree build
      at91: add_gpio_keys_device: fix missing conversion to DEVICE_ID_DYNAMIC

Carlo Caione (7):
      cosmetic: improve command list display
      clkdev: add helper function to register one clock lookup for a struct clk
      BCM2835: add clocksource driver
      BCM2835: add gpio driver
      ARM1176: add support
      BCM2835: add support (arch)
      Raspberry-Pi: add support (board)

Christian Hemp (1):
      ARM pcm043, cupid: Fix macro name

Christian Kapeller (2):
      tx53: Fix unbootable TX53-8030.
      tx53: remove reset() when not doing lowlevel init.

Christoph Fritz (1):
      i.MX25 & 35 usb config bits : fix host power bit

Fabio Porcedda (1):
      at91sam9260ek: fix BOARDINFO text

Franck Jullien (7):
      common/partitions.c: make use of is_fat_or_mbr
      cosmetic: remove right alignment on driver list
      openrisc: switch to defaultenv-2 and change boardinfo
      openrisc: generic board cleanup
      mci_spi: always compute command crc byte
      nios2: use barebox_add_memory_bank in generic.c
      nios2: update generic_defconfig

Jan Luebbe (4):
      parameter: remove unused function global_add_parameter
      parameter: support removing named parameters
      omap3_spi: fix bus numbers according to omap3_add_spi[1-4]
      omap: gpmc: mark hex debug values as such

Jan Weitzel (1):
      OMAP: Documentation file misspelled

Jean-Christophe PLAGNIOL-VILLARD (98):
      arm: add generic smp twd timer
      arm: move nomadik timer to drivers/clocksource
      gpiolib: select GENERIC_GPIO
      gpio: provide generic gpio header
      gpio: add ARM Primcell pl061 support
      versatilepb: add gpio support
      net:designware: allow to pass the phy interface
      amba: add periph id RO params to the device
      designware: set parent for eth_device and miibus
      import include/linux/math64.h
      mtd: add dataflash support
      usb-a9263: add spi dataflash support
      mtd: register device a pure device
      mtd: add parent support
      nand: atmel add pmecc support
      at91sam9x5: add pmecc support
      at91sam9x5ek: switch to hw pmecc nand support
      driver: add support for requesting resource by name
      nomadik_nand: switch to named resource
      debug_ll: use const char* for PUTS_LL
      clock: introduce non interruptible timeout
      add 1-wire support
      1-wire: add gpio bus
      1-wire: add ds2431 support
      1-wire: add ds2433 support
      console: use debug_ll before the console is available
      spi: move the depends on SPI to if SPI and keep config alphanum ordered
      driver: add support for requesting resource by name
      nomadik_nand: switch to named resource
      console: display Switch to console [csxx] when switching from debug_ll to real console
      gpio: move gpio_is_valid to gpio.h
      mtd: dataflash: fix spi_transfer init
      input: add qt1070 touch keyboard support
      mtd: introduce mtd_block_isbad
      spi: introduce spi_get_master
      introduce spi command
      atmel_spi: use device id as bus num
      atmel_spi: split transfer to atmel_spi_do_xfer
      atmel_spi: after setup the cs need to be disable
      atmel_spi: add sanity check in setup
      atmel_spi: fix cs support
      atmel_spi: drop setup during transfer
      atmel_spi: add cs change support
      at91rm9200: fix spi cs support
      eth: register device a pure device
      mci-core: spi fix op cond support
      mci_spi: add sanity check
      mci_spi: add clock frequency change support
      i2c: adapter: register it's own device
      i2c: add i2c algo bit support
      i2c: add i2c-gpio support
      i2c: add versatile support
      versatilepb: add i2c support
      i2c: algo-bit add missing acknak
      i2c: introduce i2c_new_dummy
      i2c: add id_table support
      import log2 support from linux
      add roundup and rounddown support
      eeprom: add at24 support
      at91sam9x5ek: enable MMU
      arm: at91: add gpio_is_valid support
      w1: introduce helper to generate mac address from 1-wire id
      pm9g45: add 1-wire support
      pm9g45: use w1 serial number to generate local mac address
      pm9263: add 1-wire support
      pm9263: use w1 serial number to generate local mac address
      pm9261: add 1-wire support
      pm9261: use w1 serial number to generate local mac address
      at91sam9x5ek: add 1-wire support
      at91sam9x5ek: add hw detection support
      at91sam9x5ek: add fixup for cogent cpu module
      at91sam9x5ek: use w1 serial number to generate local mac address
      at91sam9x5: add i2c support
      at91rm9200: add i2c support
      at91sam9260/sam9g20: add i2c support
      at91sam9263: add i2c support
      at91sam9261/sam9g10: add i2c support
      at91sam9g45: add i2c support
      at91sam9x5ek: add i2c support
      at91sam9x5: add spi support
      at91sam9x5: add mci support
      at91rm9200ek: enable dt support
      at91sam9x5ek: add at24c512 support
      at91sam9x5ek: add spi support
      at91sam9x5ek: add mci support
      at91sam9: add detection of low power sdram
      usb-a9g20: add mmc spi support
      tny-a9g20: add mmc spi support
      at91rm9200ek: add spi support
      m25p80: re-import it againt mtd_add_host
      m25p80: sync flash support with the kernel
      splash: init struct allocated the stack to 0
      bmp: specify we need to keep the data read from the file
      at91: fix timer rate
      atmel_nand: fix pmecc timeout
      at91: clock: check overclock for sam9260/9261/9263/9rl
      Revert "mtd: atmel_nand: optimize read/write buffer functions"
      mdio_bus: fix match

Juergen Kilb (1):
      nand-bb: Fix remove of nand-bb device.

Robert Jarzmik (3):
      usb: add flow control to u_serial
      commands: change Y-Modem implementation
      commands: remove old Y-Modem implementation

Robert P. J. Day (5):
      mach-imx: Comment typo fix, "enviroment" -> "environment"
      arm lib: Remove redundant boot usage info from boot[uz].c
      bareboxenv.c: simple grammatical fix
      mach-imx: Add/correct help info in mach-imx/Kconfig
      correct simple typo, "plarform_init"

Sascha Hauer (141):
      watchdog: Add i.MX watchdog support
      ARM i.MX: Add watchdog devices to SoCs
      ARM i.MX/watchdog: Make i.MX watchdog driver the reset source on i.MX
      serial i.MX: Use devtype data to determine uart version
      net fec_imx: determine fec version based on device ids
      ARM i.MX: Add devicetree support to the ccm drivers
      Merge tag 'clocksource' of git://git.jcrosoft.org/barebox into for-next/clocksource
      Merge tag 'gpio_arm' of git://git.jcrosoft.org/barebox into for-next/gpio
      ARM: add assembly function for setting up C environment
      introduce region_overlap() function
      ARM: cleanup piggydata copy check
      ARM i.MX27: Use standard IMX_CHIP_REV_* defines
      ARM i.MX: streamline imx_silicon_revision
      ARM i.MX1: move iomux definitions to separate header file
      ARM i.MX boards: Use IMX_GPIO_NR
      ARM i.MX iomux-v1: Add separate header file
      ARM i.MX: Turn iomux-v2 into driver
      ARM i.MX: Turn iomux-v3 into driver
      driver: print error message when probe fails
      resource: statically initialize iomem resource
      memory: return error in barebox_add_memory_bank
      of: find and register memory during probe
      reset_source: provide static inline function if disabled
      ARM i.MX: move reset source detection code
      ARM at91sam9260ek: remove unused reset entry
      ARM: simplify start.c
      console: Cleanup console activation
      console: cleanup Kconfig
      startup: Print error message when initcall fails
      of: Add function to get the model name
      of: Print model name in banner
      console/of: evaluate linux,stdout-path property
      ARM: Add cpu_architecture() function
      clk: Add clk gate support
      ARM i.MX: Add clk_gate inline function
      ARM i.MX21: Fix CSPI parent clock
      ARM i.MX21: Enable all needed clocks during startup
      ARM i.MX21: Add lcdc per gate
      ARM i.MX27: Add lcdc per gate
      ARM i.MX25: Add lcdc per gate
      video i.MX: Use regular clk_[en|dis]able functions
      ARM i.MX: Enable clocks in common place
      ARM exceptions: Do not use hardcoded STACK_BASE
      ARM: no need to call cache functions when MMU is disabled
      ARM: Support multiple ARM architectures
      ARM: introduce arm_setup_stack function and use it
      ARM i.MX: rework bootsource setting
      ARM i.MX: Print silicon revision in common place
      ARM bootz: use request_sdram_region
      Merge branch 'for-next/arm-start' into for-next/arm
      Merge branch 'for-next/imx-dt' into for-next/imx
      Merge branch 'for-next/imx-watchdog' into for-next/imx
      Merge branch 'for-next/imx-work' into for-next/imx
      Merge branch 'for-next/clk' into for-next/imx
      ARM i.MX: Use SoC specific base to access sdram controller registers
      ARM i.MX nand layout: make multisoc safe
      ARM i.MX31: Cleanup remaining unprefixed registers
      ARM i.MX25: Cleanup remaining unprefixed registers
      ARM i.MX35: Cleanup remaining unprefixed registers
      ARM i.MX external nand boot: Use SoC specific base addresses
      ARM i.MX: remove unused improperly prefixed register defines
      ARM i.MX1: Cleanup remaining unprefixed registers
      ARM i.MX21: Cleanup remaining unprefixed registers
      ARM i.MX27: Cleanup remaining unprefixed registers
      ARM i.MX27: move PCCR gate registers to its only user
      ARM i.MX27: remove duplicate ESDCTL registers
      ARM i.MX: get rid of imx-regs.h
      Merge branch 'pu/imx-register-cleanup' into for-next/imx
      ARM i.MX53: enable imx53_init_lowlevel for pbl
      ARM i.MX tx53: Add rev xx30 board support
      ARM i.MX53: set bootsource location
      ARM i.MX Karo tx53: Add env depending on bootsource
      Merge branch 'pu/karo-tx53' into for-next/imx
      Add in-system barebox update infrastructure
      ARM i.MX: Add barebox update handler for internal boot
      ARM i.MX51 babbage: register MMC update handler
      ARM i.MX53 loco: register MMC update handler
      ARM i.MX53 tx53: register MMC and NAND update handler
      Merge branch 'pu/bbu' into for-next/imx
      make make -s more silent
      Merge branch 'for-next/clocksource' into for-next/bcm2835
      Merge branch 'for-next/gpio' into for-next/bcm2835
      environment variables: use linux list
      filetype: add shortnames
      add filetype command support
      mdiobus: return existing phydev in mdiobus_scan
      defenv-2: remove initrd boot script
      defenv-2: remove some helper scripts
      defenv-2: bring back /env/config
      defenv-2 menu: when booting failed wait for key press
      ARM OMAP4: Turn puts into debug
      ARM OMAP3: Put reset() into its own section
      ARM OMAP4 panda: switch to new environment
      ARM OMAP4 panda xload: Enable MMU and Thumb2 support
      ARM OMAP3 beagle: switch to new environment
      ARM OMAP3 boards: Call omap3_core_init only from SRAM
      mdiobus: do not scan the bus at registration time
      Merge commit 'a8a9542' into HEAD
      Merge branch 'for-next/w1' into for-next/at91
      Merge branch 'for-next/input' into for-next/at91
      Merge branch 'for-next/i2c' into for-next/at91
      Merge branch 'for-next/amba'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/bcm2835'
      Merge branch 'for-next/clps711x'
      Merge branch 'for-next/console'
      Merge branch 'for-next/defenv-2'
      Merge branch 'for-next/filetype-command'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mfd'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/named-resources'
      Merge branch 'for-next/nand-test'
      Merge branch 'for-next/net'
      Merge branch 'for-next/nios2'
      Merge branch 'for-next/of'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/openrisc'
      Merge branch 'for-next/phylib'
      Merge branch 'for-next/readline'
      Merge branch 'for-next/spi'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/ymodem'
      Merge branch 'for-next/m25p80'
      ARM i.MX bbu: Fix compiling with DEBUG enabled
      ARM i.MX esdctl.h: Add double include protection
      i.MX27 regs remove unnecessary include
      serial i.MX: Make locally used variables static
      barebox update: fix finding default handler
      i2c: Add missing DEVICE_ID_DYNAMIC
      ata: Allow partitions > 4GiB
      mfd stmpe: fix test for features
      ARM i.MX bbu: Fix wrong buffer free
      USB ulpi: pass return value
      Release v2012.12.0

Vicente (11):
      twl6030: add debug info
      fs: improve robustness
      omap4: add usb boot source
      omap4: add rename definitions to match datasheet
      uimage: improve transfer speed
      omap4: add support for booting cpu from usb
      omap4: add serial communications over usb boot
      omap4: add filesystem support over usb boot
      omap4: add support for loading second stage from usb
      Add support for Archos G9 tablet
      ARM: use arm_setup_stack function on archosg9

Vicente Bergas (3):
      ARM: add rename PSR bits to match linux names
      ARM: ensure irqs are disabled at barebox exit
      UIMAGE: improve transfer speed

Wolfram Sang (7):
      arm: mxs: use timeouts in block reset routines
      dma: apbh: check for errors when resetting ip core
      mtd: nand: mxs: check for errors when resetting ip core
      mxs: mx28evk: add nand device
      configs: mx28evk: add NAND support
      mxs: tx28: fix NAND usage
      mtd: nand: mxs: reset BCH earlier, too, to avoid NAND startup problems

 Documentation/omap4_usb_booting.txt                |   27 +
 Makefile                                           |    8 +-
 arch/arm/Kconfig                                   |   19 +
 arch/arm/Makefile                                  |    5 +
 arch/arm/boards/archosg9/Makefile                  |    3 +
 arch/arm/boards/archosg9/board.c                   |   71 ++
 arch/arm/boards/archosg9/config.h                  |    1 +
 arch/arm/boards/archosg9/env/config                |    1 +
 arch/arm/boards/archosg9/env/init/usbboot          |    5 +
 arch/arm/boards/archosg9/lowlevel.c                |   76 ++
 arch/arm/boards/archosg9/mux.c                     |  459 ++++++++++
 arch/arm/boards/archosg9/mux.h                     |    6 +
 arch/arm/boards/at91rm9200ek/env/config            |    2 +
 arch/arm/boards/at91rm9200ek/init.c                |   49 ++
 arch/arm/boards/at91sam9260ek/Makefile             |    1 -
 arch/arm/boards/at91sam9261ek/init.c               |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    2 +-
 arch/arm/boards/at91sam9x5ek/Makefile              |    1 +
 arch/arm/boards/at91sam9x5ek/env/config            |    1 +
 arch/arm/boards/at91sam9x5ek/hw_version.c          |  272 ++++++
 arch/arm/boards/at91sam9x5ek/hw_version.h          |   34 +
 arch/arm/boards/at91sam9x5ek/init.c                |  121 ++-
 arch/arm/boards/beagle/board.c                     |    3 +-
 arch/arm/boards/beagle/env/boot/mmc                |   10 +
 arch/arm/boards/beagle/env/init/config-board       |    7 +
 arch/arm/boards/beagle/env/network/eth0-discover   |    5 +
 arch/arm/boards/ccxmx51/ccxmx51.c                  |    3 +-
 arch/arm/boards/ccxmx51/ccxmx51js.c                |    2 +-
 arch/arm/boards/clep7212/Makefile                  |    2 +
 arch/arm/boards/clep7212/clep7212.c                |   64 ++
 arch/arm/boards/clep7212/config.h                  |    4 +
 arch/arm/boards/clep7212/env/bin/mtdparts-add      |   21 +
 arch/arm/boards/clep7212/env/boot/nor              |    9 +
 arch/arm/boards/clep7212/env/init/automount        |    6 +
 .../env/init/bootargs-base                         |    2 +-
 arch/arm/boards/clep7212/env/init/general          |   12 +
 .../env/init/hostname                              |    2 +-
 arch/arm/boards/clep7212/lowlevel.c                |   56 ++
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    2 +-
 .../crystalfontz-cfa10036/env/init/bootargs-base   |    8 -
 .../crystalfontz-cfa10036/env/init/config-board    |    7 +
 .../boards/crystalfontz-cfa10036/env/init/hostname |    8 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   17 +-
 arch/arm/boards/eukrea_cpuimx25/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   31 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   10 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   77 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   22 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   43 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   10 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    8 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   22 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   13 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    2 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   22 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   12 +-
 arch/arm/boards/freescale-mx51-pdk/dcd-data.h      |   60 ++
 .../freescale-mx51-pdk/env/init/config-board       |    7 +
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   61 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |   12 +-
 arch/arm/boards/freescale-mx53-loco/dcd-data.h     |   54 ++
 arch/arm/boards/freescale-mx53-loco/flash_header.c |   56 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |    6 +-
 .../freescale-mx6-sabrelite/env/init/config-board  |    7 +
 arch/arm/boards/guf-cupid/board.c                  |    8 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |   65 +-
 arch/arm/boards/guf-neso/board.c                   |    8 +-
 arch/arm/boards/guf-neso/lowlevel.c                |   55 +-
 arch/arm/boards/guf-neso/pll_init.S                |   39 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    7 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   20 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    2 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |   30 +-
 arch/arm/boards/karo-tx25/board.c                  |   14 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   21 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |    2 +-
 arch/arm/boards/karo-tx28/tx28.c                   |    6 +-
 arch/arm/boards/karo-tx51/tx51.c                   |    2 +-
 arch/arm/boards/karo-tx53/Makefile                 |    3 +
 arch/arm/boards/karo-tx53/board.c                  |   49 +-
 arch/arm/boards/karo-tx53/dcd-data-1011.h          |   94 +++
 arch/arm/boards/karo-tx53/dcd-data-xx30.h          |  144 ++++
 arch/arm/boards/karo-tx53/env/init/bootargs-base   |    8 -
 arch/arm/boards/karo-tx53/env/init/config-board    |    7 +
 arch/arm/boards/karo-tx53/env/init/hostname        |    8 -
 arch/arm/boards/karo-tx53/flash_header.c           |  118 +--
 arch/arm/boards/karo-tx53/lowlevel.c               |   22 +
 arch/arm/boards/nhk8815/setup.c                    |    3 +
 arch/arm/boards/omap343xdsp/board.c                |    3 +-
 arch/arm/boards/panda/env/boot/mmc                 |   10 +
 arch/arm/boards/panda/env/config                   |   40 -
 arch/arm/boards/panda/env/init/config-board        |    7 +
 arch/arm/boards/panda/env/network/eth0-discover    |    5 +
 arch/arm/boards/panda/lowlevel.c                   |    6 +-
 arch/arm/boards/panda/mux.c                        |   52 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |   65 +-
 arch/arm/boards/pcm037/pcm037.c                    |    4 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi           |    2 +-
 arch/arm/boards/pcm038/env/init/bootargs-base      |    8 -
 arch/arm/boards/pcm038/env/init/config-board       |    7 +
 arch/arm/boards/pcm038/env/init/hostname           |    8 -
 arch/arm/boards/pcm038/lowlevel.c                  |   62 +-
 arch/arm/boards/pcm038/pcm038.c                    |   29 +-
 arch/arm/boards/pcm038/pcm970.c                    |   26 +-
 arch/arm/boards/pcm038/pll.h                       |   54 +-
 arch/arm/boards/pcm043/lowlevel.c                  |   48 +-
 arch/arm/boards/pcm043/pcm043.c                    |    8 +-
 arch/arm/boards/pcm049/lowlevel.c                  |    6 +-
 arch/arm/boards/pcm049/mux.c                       |   44 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    3 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |    5 +-
 arch/arm/boards/phycard-a-xl2/mux.c                |   46 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   71 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    6 +-
 arch/arm/boards/pm9261/init.c                      |   10 +
 arch/arm/boards/pm9263/init.c                      |   38 +-
 arch/arm/boards/pm9g45/init.c                      |   22 +-
 arch/arm/boards/raspberry-pi/Makefile              |    1 +
 arch/arm/boards/raspberry-pi/config.h              |    4 +
 .../env/init/bootargs-base                         |    0
 .../env/init/hostname                              |    2 +-
 arch/arm/boards/raspberry-pi/rpi.c                 |   44 +
 arch/arm/boards/scb9328/lowlevel_init.S            |   31 +-
 arch/arm/boards/scb9328/scb9328.c                  |    7 +-
 arch/arm/boards/tny-a926x/init.c                   |   41 +-
 arch/arm/boards/tqma53/board.c                     |    2 +-
 arch/arm/boards/tqma53/env/init/bootargs-base      |    8 -
 arch/arm/boards/tqma53/env/init/config-board       |    7 +
 arch/arm/boards/tqma53/env/init/hostname           |    8 -
 arch/arm/boards/usb-a926x/init.c                   |   46 +
 arch/arm/boards/versatile/versatilepb.c            |    1 +
 arch/arm/configs/archosg9_defconfig                |   70 ++
 arch/arm/configs/archosg9_xload_defconfig          |   24 +
 arch/arm/configs/at91rm9200ek_defconfig            |   15 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |   31 +-
 arch/arm/configs/clps711x_defconfig                |   42 +
 arch/arm/configs/imx28evk_defconfig                |   18 +-
 arch/arm/configs/omap3530_beagle_defconfig         |   49 +-
 arch/arm/configs/panda_defconfig                   |   34 +-
 arch/arm/configs/panda_xload_defconfig             |    5 +-
 arch/arm/configs/pm9261_defconfig                  |    2 +
 arch/arm/configs/pm9263_defconfig                  |    2 +
 arch/arm/configs/pm9g45_defconfig                  |    2 +
 arch/arm/configs/rpi_defconfig                     |   41 +
 arch/arm/configs/tny_a9g20_defconfig               |    5 +
 arch/arm/configs/tx53stk5_defconfig                |   12 +-
 arch/arm/configs/usb_a9263_128mib_defconfig        |    3 +-
 arch/arm/configs/usb_a9263_defconfig               |    3 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |   10 +-
 arch/arm/configs/usb_a9g20_defconfig               |   10 +-
 arch/arm/configs/versatilepb_defconfig             |    5 +
 arch/arm/cpu/Kconfig                               |    5 +
 arch/arm/cpu/Makefile                              |    7 +-
 arch/arm/cpu/cache-armv4.S                         |   28 +-
 arch/arm/cpu/cache-armv5.S                         |   30 +-
 arch/arm/cpu/cache-armv6.S                         |   34 +-
 arch/arm/cpu/cache-armv7.S                         |   38 +-
 arch/arm/cpu/cache.c                               |  103 +++
 arch/arm/cpu/cpu.c                                 |   71 +-
 arch/arm/cpu/exceptions.S                          |   16 +-
 arch/arm/cpu/interrupts.c                          |    6 +-
 arch/arm/cpu/mmu.c                                 |   28 +-
 arch/arm/cpu/setupc.S                              |   34 +
 arch/arm/cpu/start-pbl.c                           |   56 +-
 arch/arm/cpu/start.c                               |   45 +-
 arch/arm/include/asm/barebox-arm.h                 |    2 +
 arch/arm/include/asm/cache.h                       |    2 +
 arch/arm/include/asm/common.h                      |    5 +
 arch/arm/include/asm/cputype.h                     |  100 +++
 arch/arm/include/asm/ptrace.h                      |   56 +-
 arch/arm/include/asm/system_info.h                 |   60 ++
 arch/arm/lib/bootu.c                               |    2 +-
 arch/arm/lib/bootz.c                               |   14 +-
 arch/arm/mach-at91/Kconfig                         |   12 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |   35 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   32 +
 arch/arm/mach-at91/at91sam9261_devices.c           |   31 +
 arch/arm/mach-at91/at91sam9263_devices.c           |   31 +
 arch/arm/mach-at91/at91sam926x_time.c              |    7 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   50 ++
 arch/arm/mach-at91/at91sam9x5.c                    |    4 +
 arch/arm/mach-at91/at91sam9x5_devices.c            |  198 ++++-
 arch/arm/mach-at91/clock.c                         |   12 +
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h  |    5 +
 arch/arm/mach-at91/include/mach/board.h            |    7 +
 arch/arm/mach-at91/include/mach/gpio.h             |   11 +
 arch/arm/mach-bcm2835/Kconfig                      |   18 +
 arch/arm/mach-bcm2835/Makefile                     |    1 +
 arch/arm/mach-bcm2835/core.c                       |  101 +++
 arch/arm/mach-bcm2835/include/mach/clkdev.h        |    7 +
 .../include/mach/core.h}                           |   17 +-
 arch/arm/mach-bcm2835/include/mach/gpio.h          |    1 +
 arch/arm/mach-bcm2835/include/mach/platform.h      |   50 ++
 arch/arm/mach-bcm2835/include/mach/wd.h            |   47 ++
 arch/arm/mach-clps711x/Kconfig                     |   26 +
 arch/arm/mach-clps711x/Makefile                    |    1 +
 arch/arm/mach-clps711x/clock.c                     |  113 +++
 arch/arm/mach-clps711x/devices.c                   |   97 +++
 arch/arm/mach-clps711x/include/mach/clkdev.h       |    7 +
 arch/arm/mach-clps711x/include/mach/clps711x.h     |  284 +++++++
 arch/arm/mach-clps711x/include/mach/devices.h      |    7 +
 arch/arm/mach-clps711x/reset.c                     |   21 +
 arch/arm/mach-ep93xx/include/mach/gpio.h           |   27 +-
 arch/arm/mach-imx/Kconfig                          |   21 +-
 arch/arm/mach-imx/Makefile                         |    5 +-
 arch/arm/mach-imx/boot.c                           |  213 +++--
 arch/arm/mach-imx/clk-imx1.c                       |    9 +
 arch/arm/mach-imx/clk-imx21.c                      |   26 +-
 arch/arm/mach-imx/clk-imx25.c                      |   13 +-
 arch/arm/mach-imx/clk-imx27.c                      |  102 ++-
 arch/arm/mach-imx/clk-imx31.c                      |    9 +
 arch/arm/mach-imx/clk-imx35.c                      |    9 +
 arch/arm/mach-imx/clk-imx5.c                       |   21 +-
 arch/arm/mach-imx/clk-imx6.c                       |    9 +
 arch/arm/mach-imx/clk-pllv2.c                      |    1 -
 arch/arm/mach-imx/clk-pllv3.c                      |    1 -
 arch/arm/mach-imx/clk.h                            |    6 +
 arch/arm/mach-imx/clocksource.c                    |   50 --
 arch/arm/mach-imx/devices.c                        |   18 +-
 arch/arm/mach-imx/external-nand-boot.c             |   36 +-
 arch/arm/mach-imx/gpio.c                           |    1 -
 arch/arm/mach-imx/imx-bbu-internal.c               |  543 ++++++++++++
 arch/arm/mach-imx/imx.c                            |   31 +
 arch/arm/mach-imx/imx1.c                           |   32 +-
 arch/arm/mach-imx/imx21.c                          |   14 +-
 arch/arm/mach-imx/imx25.c                          |   10 +-
 arch/arm/mach-imx/imx27.c                          |   37 +-
 arch/arm/mach-imx/imx31.c                          |    4 +-
 arch/arm/mach-imx/imx35.c                          |   17 +-
 arch/arm/mach-imx/imx51.c                          |  102 +--
 arch/arm/mach-imx/imx53.c                          |   36 +-
 arch/arm/mach-imx/imx6.c                           |    2 +
 arch/arm/mach-imx/include/mach/bbu.h               |   51 ++
 arch/arm/mach-imx/include/mach/devices-imx1.h      |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx21.h     |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h     |   12 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   10 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h     |   12 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h     |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h      |   10 +-
 arch/arm/mach-imx/include/mach/devices.h           |    6 +-
 arch/arm/mach-imx/include/mach/esdctl.h            |   13 +-
 arch/arm/mach-imx/include/mach/generic.h           |   27 +-
 arch/arm/mach-imx/include/mach/gpio.h              |    7 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   35 +
 arch/arm/mach-imx/include/mach/imx-regs.h          |  119 ---
 arch/arm/mach-imx/include/mach/imx1-regs.h         |  176 +---
 arch/arm/mach-imx/include/mach/imx21-regs.h        |  136 ++-
 arch/arm/mach-imx/include/mach/imx25-regs.h        |   77 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |  236 ++----
 arch/arm/mach-imx/include/mach/imx31-regs.h        |  138 ++-
 arch/arm/mach-imx/include/mach/imx35-regs.h        |   70 +-
 arch/arm/mach-imx/include/mach/imx51-regs.h        |    4 -
 arch/arm/mach-imx/include/mach/imx53-regs.h        |    4 -
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    6 -
 arch/arm/mach-imx/include/mach/iomux-mx1.h         |  135 +++
 arch/arm/mach-imx/include/mach/iomux-mx21.h        |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |    1 +
 arch/arm/mach-imx/include/mach/iomux-v1.h          |   48 ++
 arch/arm/mach-imx/include/mach/revision.h          |   22 +
 arch/arm/mach-imx/include/mach/usb.h               |    2 +-
 arch/arm/mach-imx/iomux-v1.c                       |  123 +--
 arch/arm/mach-imx/iomux-v2.c                       |   66 +-
 arch/arm/mach-imx/iomux-v3.c                       |   43 +-
 arch/arm/mach-imx/nand.c                           |   58 +-
 arch/arm/mach-imx/reset_source.c                   |   72 --
 arch/arm/mach-mxs/common.c                         |   39 +-
 arch/arm/mach-mxs/include/mach/gpio.h              |    6 +-
 arch/arm/mach-nomadik/8815.c                       |    5 +
 arch/arm/mach-nomadik/include/mach/mtu.h           |   46 -
 arch/arm/mach-nomadik/include/mach/timex.h         |    6 -
 arch/arm/mach-nomadik/timer.c                      |   54 +-
 arch/arm/mach-omap/Kconfig                         |   20 +
 arch/arm/mach-omap/Makefile                        |    1 +
 arch/arm/mach-omap/gpmc.c                          |   10 +-
 arch/arm/mach-omap/include/mach/gpio.h             |   43 +-
 arch/arm/mach-omap/include/mach/omap4-mux.h        |   80 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |   13 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h    |  141 ++++
 arch/arm/mach-omap/include/mach/xload.h            |    1 +
 arch/arm/mach-omap/omap3_core.S                    |    1 +
 arch/arm/mach-omap/omap4_clock.c                   |    2 +-
 arch/arm/mach-omap/omap4_generic.c                 |   25 +-
 arch/arm/mach-omap/omap4_rom_usb.c                 |  198 +++++
 arch/arm/mach-omap/xload.c                         |   26 +
 arch/arm/mach-samsung/include/mach/gpio.h          |    6 +-
 arch/arm/mach-versatile/core.c                     |   17 +
 arch/arm/mach-versatile/include/mach/gpio.h        |    1 +
 arch/arm/mach-versatile/include/mach/init.h        |    1 +
 arch/arm/pbl/Makefile                              |    4 +-
 arch/arm/tools/Makefile                            |    4 +-
 arch/mips/Makefile                                 |    8 +-
 arch/mips/boot/main_entry.c                        |    1 -
 arch/nios2/Makefile                                |    2 +-
 arch/nios2/boards/generic/generic.c                |   11 +-
 arch/nios2/configs/generic_defconfig               |   11 +-
 arch/openrisc/Kconfig                              |    3 +-
 arch/openrisc/boards/generic/config.h              |    7 +-
 arch/openrisc/boards/generic/generic.c             |    2 +-
 arch/openrisc/configs/generic_defconfig            |    4 +-
 commands/Kconfig                                   |   36 +-
 commands/Makefile                                  |    8 +-
 commands/barebox-update.c                          |   86 ++
 commands/filetype.c                                |   97 +++
 commands/help.c                                    |    7 +-
 commands/loadb.c                                   |  102 +--
 commands/loads.c                                   |    1 -
 commands/loadxy.c                                  |  273 ++++++
 commands/miitool.c                                 |  268 ++++++
 commands/nandtest.c                                |  190 +++--
 commands/printenv.c                                |   22 +-
 commands/spi.c                                     |  132 +++
 commands/splash.c                                  |    4 +
 commands/xyzModem.c                                |  785 -----------------
 common/Kconfig                                     |   38 +-
 common/Makefile                                    |    1 +
 common/bbu.c                                       |  153 ++++
 common/clock.c                                     |   16 +-
 common/complete.c                                  |   12 +-
 common/console.c                                   |   59 +-
 common/console_simple.c                            |    5 +-
 common/env.c                                       |  121 +--
 common/filetype.c                                  |   51 +-
 common/memory.c                                    |    8 +-
 common/partitions.c                                |    3 +-
 common/resource.c                                  |   10 +-
 common/startup.c                                   |    4 +-
 common/uimage.c                                    |   29 +-
 common/version.c                                   |   11 +-
 defaultenv-2/base/bin/bootargs-ip-barebox          |    7 -
 defaultenv-2/base/bin/bootargs-ip-dhcp             |    5 -
 defaultenv-2/base/bin/bootargs-ip-none             |    5 -
 defaultenv-2/base/bin/bootargs-root-disk           |   26 -
 defaultenv-2/base/bin/bootargs-root-ext            |   12 -
 defaultenv-2/base/bin/bootargs-root-initrd         |   16 -
 defaultenv-2/base/bin/bootargs-root-jffs2          |   21 -
 defaultenv-2/base/bin/bootargs-root-nfs            |   20 -
 defaultenv-2/base/bin/bootargs-root-ubi            |   24 -
 defaultenv-2/base/bin/init                         |   10 +-
 defaultenv-2/base/boot/initrd                      |   17 -
 defaultenv-2/base/boot/net                         |    2 +-
 defaultenv-2/base/config                           |   21 +
 defaultenv-2/base/data/boot-template               |    4 +-
 defaultenv-2/base/init/bootargs-base               |    8 -
 defaultenv-2/base/init/general                     |   15 -
 defaultenv-2/base/init/hostname                    |    8 -
 defaultenv-2/base/init/prompt                      |    7 -
 defaultenv-2/menu/menu/mainmenu                    |    1 +
 drivers/Kconfig                                    |    2 +
 drivers/Makefile                                   |    2 +
 drivers/amba/bus.c                                 |    7 +
 drivers/ata/disk_ata_drive.c                       |   10 +-
 drivers/base/driver.c                              |   55 +-
 drivers/base/platform.c                            |    4 +-
 drivers/clk/Makefile                               |    3 +-
 drivers/clk/clk-gate.c                             |   78 ++
 drivers/clk/clkdev.c                               |   21 +
 drivers/clocksource/Kconfig                        |   11 +
 drivers/clocksource/Makefile                       |    3 +
 drivers/clocksource/arm_smp_twd.c                  |  101 +++
 drivers/clocksource/bcm2835.c                      |   90 ++
 drivers/clocksource/nomadik.c                      |  147 ++++
 drivers/dma/apbh_dma.c                             |    4 +-
 drivers/eeprom/Kconfig                             |   19 +
 drivers/eeprom/Makefile                            |    1 +
 drivers/eeprom/at24.c                              |  460 ++++++++++
 drivers/gpio/Kconfig                               |   11 +
 drivers/gpio/Makefile                              |    2 +
 drivers/gpio/gpio-bcm2835.c                        |  158 ++++
 drivers/gpio/gpio-pl061.c                          |  158 ++++
 drivers/gpio/gpio.c                                |    9 -
 drivers/i2c/Kconfig                                |    1 +
 drivers/i2c/Makefile                               |    2 +-
 drivers/i2c/algos/Kconfig                          |    6 +
 drivers/i2c/algos/Makefile                         |    5 +
 drivers/i2c/algos/i2c-algo-bit.c                   |  605 +++++++++++++
 drivers/i2c/busses/Kconfig                         |   16 +
 drivers/i2c/busses/Makefile                        |    2 +
 drivers/i2c/busses/i2c-gpio.c                      |  177 ++++
 drivers/i2c/busses/i2c-imx.c                       |   30 +-
 drivers/i2c/busses/i2c-omap.c                      |   30 +-
 drivers/i2c/busses/i2c-versatile.c                 |  112 +++
 drivers/i2c/i2c.c                                  |   63 +-
 drivers/input/Kconfig                              |    8 +
 drivers/input/Makefile                             |    1 +
 drivers/input/qt1070.c                             |  296 +++++++
 drivers/mci/Kconfig                                |    2 +-
 drivers/mci/mci-core.c                             |   10 +-
 drivers/mci/mci_spi.c                              |   52 +-
 drivers/mfd/stmpe-i2c.c                            |    2 +-
 drivers/mfd/twl6030.c                              |   21 +
 drivers/mtd/core.c                                 |   19 +-
 drivers/mtd/devices/Kconfig                        |   45 +
 drivers/mtd/devices/Makefile                       |    2 +
 drivers/mtd/devices/docg3.c                        |    1 +
 drivers/{nor => mtd/devices}/m25p80.c              |  512 +++++------
 drivers/mtd/devices/mtd_dataflash.c                |  888 ++++++++++++++++++++
 drivers/mtd/mtdraw.c                               |    2 +-
 drivers/mtd/nand/Kconfig                           |    8 +
 drivers/mtd/nand/atmel_nand.c                      |  816 ++++++++++++++++--
 drivers/mtd/nand/atmel_nand_ecc.h                  |  114 ++-
 drivers/mtd/nand/nand-bb.c                         |    1 +
 drivers/mtd/nand/nand_imx.c                        |    9 +-
 drivers/mtd/nand/nand_mxs.c                        |   26 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    3 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |    1 +
 drivers/mtd/nand/nomadik_nand.c                    |    7 +-
 drivers/mtd/partition.c                            |    2 +-
 drivers/mtd/ubi/io.c                               |    2 +-
 drivers/net/designware.c                           |    6 +-
 drivers/net/fec_imx.c                              |   72 +-
 drivers/net/fec_imx.h                              |   22 +
 drivers/net/phy/mdio_bus.c                         |   28 +-
 drivers/net/phy/phy.c                              |   10 +-
 drivers/net/smc911x.c                              |   97 ++-
 drivers/nor/Kconfig                                |   27 -
 drivers/nor/Makefile                               |    1 -
 drivers/nor/m25p80.h                               |   84 --
 drivers/of/base.c                                  |  109 ++-
 drivers/serial/Kconfig                             |   12 +
 drivers/serial/Makefile                            |    2 +
 drivers/serial/serial_clps711x.c                   |  157 ++++
 drivers/serial/serial_imx.c                        |   99 ++-
 drivers/serial/serial_omap4_usbboot.c              |   83 ++
 drivers/spi/Kconfig                                |   25 +-
 drivers/spi/atmel_spi.c                            |  260 ++++--
 drivers/spi/omap3_spi.c                            |   14 +-
 drivers/spi/spi.c                                  |   12 +
 drivers/usb/gadget/u_serial.c                      |   25 +-
 drivers/usb/otg/ulpi.c                             |    7 +-
 drivers/video/imx-ipu-fb.c                         |    6 +-
 drivers/video/imx.c                                |   45 +-
 drivers/w1/Kconfig                                 |   14 +
 drivers/w1/Makefile                                |    6 +
 drivers/w1/masters/Kconfig                         |   14 +
 drivers/w1/masters/Makefile                        |    5 +
 drivers/w1/masters/w1-gpio.c                       |  116 +++
 drivers/w1/slaves/Kconfig                          |   27 +
 drivers/w1/slaves/Makefile                         |    6 +
 drivers/w1/slaves/w1_ds2431.c                      |  294 +++++++
 drivers/w1/slaves/w1_ds2433.c                      |  196 +++++
 drivers/w1/w1.c                                    |  621 ++++++++++++++
 drivers/w1/w1.h                                    |  152 ++++
 drivers/watchdog/Kconfig                           |    9 +
 drivers/watchdog/Makefile                          |    1 +
 drivers/watchdog/imxwd.c                           |  235 ++++++
 fs/Kconfig                                         |    5 +
 fs/Makefile                                        |    1 +
 fs/fs.c                                            |   27 +-
 fs/omap4_usbbootfs.c                               |  219 +++++
 include/asm-generic/gpio.h                         |   21 +
 include/bbu.h                                      |   49 ++
 include/clock.h                                    |    1 +
 include/common.h                                   |   13 +
 include/debug_ll.h                                 |    2 +-
 include/driver.h                                   |   15 +
 include/environment.h                              |   11 +-
 include/filetype.h                                 |    2 +
 include/i2c/at24.h                                 |   35 +
 include/i2c/i2c-algo-bit.h                         |   55 ++
 include/i2c/i2c-gpio.h                             |   38 +
 include/i2c/i2c.h                                  |   12 +-
 include/input/qt1070.h                             |   18 +
 include/linux/amba/pl061.h                         |   12 +
 include/linux/clk.h                                |    2 +
 include/linux/clkdev.h                             |    1 +
 include/linux/kernel.h                             |   15 +
 include/linux/log2.h                               |  190 +++++
 include/linux/math64.h                             |  121 +++
 include/linux/mtd/cfi.h                            |   65 ++
 include/linux/mtd/mtd.h                            |    4 +-
 include/linux/w1-gpio.h                            |   25 +
 include/memory.h                                   |    2 +-
 include/mfd/twl6030.h                              |    8 +
 include/net/designware.h                           |    3 +
 include/of.h                                       |   15 +
 include/param.h                                    |   11 +-
 include/reset_source.h                             |    6 +
 include/smc911x.h                                  |    6 +
 include/spi/flash.h                                |    2 +-
 include/spi/spi.h                                  |    2 +
 include/w1_mac_address.h                           |   65 ++
 include/xymodem.h                                  |   25 +
 include/xyzModem.h                                 |  109 ---
 lib/Kconfig                                        |    3 +
 lib/Makefile                                       |    1 +
 lib/gui/bmp.c                                      |    1 +
 lib/parameter.c                                    |   18 +
 lib/readline.c                                     |   34 +-
 lib/show_progress.c                                |    3 +-
 lib/xymodem.c                                      |  597 +++++++++++++
 net/eth.c                                          |    2 +-
 scripts/.gitignore                                 |    1 +
 scripts/Makefile                                   |    4 +
 scripts/bareboxenv.c                               |    4 +-
 scripts/omap4_usbboot.c                            |  415 +++++++++
 scripts/usb.h                                      |   61 ++
 scripts/usb_linux.c                                |  397 +++++++++
 504 files changed, 18755 insertions(+), 4825 deletions(-)
 create mode 100644 Documentation/omap4_usb_booting.txt
 create mode 100644 arch/arm/boards/archosg9/Makefile
 create mode 100644 arch/arm/boards/archosg9/board.c
 create mode 100644 arch/arm/boards/archosg9/config.h
 create mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/env/init/usbboot
 create mode 100644 arch/arm/boards/archosg9/lowlevel.c
 create mode 100644 arch/arm/boards/archosg9/mux.c
 create mode 100644 arch/arm/boards/archosg9/mux.h
 create mode 100644 arch/arm/boards/at91sam9x5ek/hw_version.c
 create mode 100644 arch/arm/boards/at91sam9x5ek/hw_version.h
 create mode 100644 arch/arm/boards/beagle/env/boot/mmc
 create mode 100644 arch/arm/boards/beagle/env/init/config-board
 create mode 100644 arch/arm/boards/beagle/env/network/eth0-discover
 create mode 100644 arch/arm/boards/clep7212/Makefile
 create mode 100644 arch/arm/boards/clep7212/clep7212.c
 create mode 100644 arch/arm/boards/clep7212/config.h
 create mode 100644 arch/arm/boards/clep7212/env/bin/mtdparts-add
 create mode 100644 arch/arm/boards/clep7212/env/boot/nor
 create mode 100644 arch/arm/boards/clep7212/env/init/automount
 rename arch/arm/boards/{freescale-mx6-sabrelite => clep7212}/env/init/bootargs-base (57%)
 create mode 100644 arch/arm/boards/clep7212/env/init/general
 rename arch/arm/boards/{freescale-mx51-pdk => clep7212}/env/init/hostname (76%)
 create mode 100644 arch/arm/boards/clep7212/lowlevel.c
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/config-board
 create mode 100644 arch/arm/boards/freescale-mx53-loco/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
 create mode 100644 arch/arm/boards/karo-tx53/dcd-data-1011.h
 create mode 100644 arch/arm/boards/karo-tx53/dcd-data-xx30.h
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/karo-tx53/env/init/config-board
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/hostname
 create mode 100644 arch/arm/boards/karo-tx53/lowlevel.c
 create mode 100644 arch/arm/boards/panda/env/boot/mmc
 delete mode 100644 arch/arm/boards/panda/env/config
 create mode 100644 arch/arm/boards/panda/env/init/config-board
 create mode 100644 arch/arm/boards/panda/env/network/eth0-discover
 delete mode 100644 arch/arm/boards/pcm038/env/init/bootargs-base
 create mode 100644 arch/arm/boards/pcm038/env/init/config-board
 delete mode 100644 arch/arm/boards/pcm038/env/init/hostname
 create mode 100644 arch/arm/boards/raspberry-pi/Makefile
 create mode 100644 arch/arm/boards/raspberry-pi/config.h
 rename arch/arm/boards/{freescale-mx51-pdk => raspberry-pi}/env/init/bootargs-base (100%)
 rename arch/arm/boards/{freescale-mx6-sabrelite => raspberry-pi}/env/init/hostname (74%)
 create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
 delete mode 100644 arch/arm/boards/tqma53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/tqma53/env/init/config-board
 delete mode 100644 arch/arm/boards/tqma53/env/init/hostname
 create mode 100644 arch/arm/configs/archosg9_defconfig
 create mode 100644 arch/arm/configs/archosg9_xload_defconfig
 create mode 100644 arch/arm/configs/clps711x_defconfig
 create mode 100644 arch/arm/configs/rpi_defconfig
 create mode 100644 arch/arm/cpu/cache.c
 create mode 100644 arch/arm/cpu/setupc.S
 create mode 100644 arch/arm/include/asm/cputype.h
 create mode 100644 arch/arm/include/asm/system_info.h
 create mode 100644 arch/arm/mach-bcm2835/Kconfig
 create mode 100644 arch/arm/mach-bcm2835/Makefile
 create mode 100644 arch/arm/mach-bcm2835/core.c
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 rename arch/arm/{boards/at91sam9260ek/lowlevel_init.S => mach-bcm2835/include/mach/core.h} (70%)
 create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/wd.h
 create mode 100644 arch/arm/mach-clps711x/Kconfig
 create mode 100644 arch/arm/mach-clps711x/Makefile
 create mode 100644 arch/arm/mach-clps711x/clock.c
 create mode 100644 arch/arm/mach-clps711x/devices.c
 create mode 100644 arch/arm/mach-clps711x/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-clps711x/include/mach/clps711x.h
 create mode 100644 arch/arm/mach-clps711x/include/mach/devices.h
 create mode 100644 arch/arm/mach-clps711x/reset.c
 create mode 100644 arch/arm/mach-imx/imx-bbu-internal.c
 create mode 100644 arch/arm/mach-imx/imx.c
 create mode 100644 arch/arm/mach-imx/include/mach/bbu.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx1.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-v1.h
 create mode 100644 arch/arm/mach-imx/include/mach/revision.h
 delete mode 100644 arch/arm/mach-imx/reset_source.c
 delete mode 100644 arch/arm/mach-nomadik/include/mach/mtu.h
 delete mode 100644 arch/arm/mach-nomadik/include/mach/timex.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
 create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
 create mode 100644 arch/arm/mach-versatile/include/mach/gpio.h
 create mode 100644 commands/barebox-update.c
 create mode 100644 commands/filetype.c
 create mode 100644 commands/loadxy.c
 create mode 100644 commands/miitool.c
 create mode 100644 commands/spi.c
 delete mode 100644 commands/xyzModem.c
 create mode 100644 common/bbu.c
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-barebox
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-dhcp
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-none
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-disk
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-ext
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-initrd
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-jffs2
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-nfs
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-ubi
 delete mode 100644 defaultenv-2/base/boot/initrd
 create mode 100644 defaultenv-2/base/config
 delete mode 100644 defaultenv-2/base/init/bootargs-base
 delete mode 100644 defaultenv-2/base/init/general
 delete mode 100644 defaultenv-2/base/init/hostname
 delete mode 100644 defaultenv-2/base/init/prompt
 create mode 100644 drivers/clk/clk-gate.c
 create mode 100644 drivers/clocksource/Kconfig
 create mode 100644 drivers/clocksource/Makefile
 create mode 100644 drivers/clocksource/arm_smp_twd.c
 create mode 100644 drivers/clocksource/bcm2835.c
 create mode 100644 drivers/clocksource/nomadik.c
 create mode 100644 drivers/eeprom/at24.c
 create mode 100644 drivers/gpio/gpio-bcm2835.c
 create mode 100644 drivers/gpio/gpio-pl061.c
 create mode 100644 drivers/i2c/algos/Kconfig
 create mode 100644 drivers/i2c/algos/Makefile
 create mode 100644 drivers/i2c/algos/i2c-algo-bit.c
 create mode 100644 drivers/i2c/busses/i2c-gpio.c
 create mode 100644 drivers/i2c/busses/i2c-versatile.c
 create mode 100644 drivers/input/qt1070.c
 rename drivers/{nor => mtd/devices}/m25p80.c (65%)
 create mode 100644 drivers/mtd/devices/mtd_dataflash.c
 delete mode 100644 drivers/nor/m25p80.h
 create mode 100644 drivers/serial/serial_clps711x.c
 create mode 100644 drivers/serial/serial_omap4_usbboot.c
 create mode 100644 drivers/w1/Kconfig
 create mode 100644 drivers/w1/Makefile
 create mode 100644 drivers/w1/masters/Kconfig
 create mode 100644 drivers/w1/masters/Makefile
 create mode 100644 drivers/w1/masters/w1-gpio.c
 create mode 100644 drivers/w1/slaves/Kconfig
 create mode 100644 drivers/w1/slaves/Makefile
 create mode 100644 drivers/w1/slaves/w1_ds2431.c
 create mode 100644 drivers/w1/slaves/w1_ds2433.c
 create mode 100644 drivers/w1/w1.c
 create mode 100644 drivers/w1/w1.h
 create mode 100644 drivers/watchdog/imxwd.c
 create mode 100644 fs/omap4_usbbootfs.c
 create mode 100644 include/asm-generic/gpio.h
 create mode 100644 include/bbu.h
 create mode 100644 include/i2c/at24.h
 create mode 100644 include/i2c/i2c-algo-bit.h
 create mode 100644 include/i2c/i2c-gpio.h
 create mode 100644 include/input/qt1070.h
 create mode 100644 include/linux/amba/pl061.h
 create mode 100644 include/linux/log2.h
 create mode 100644 include/linux/math64.h
 create mode 100644 include/linux/mtd/cfi.h
 create mode 100644 include/linux/w1-gpio.h
 create mode 100644 include/w1_mac_address.h
 create mode 100644 include/xymodem.h
 delete mode 100644 include/xyzModem.h
 create mode 100644 lib/xymodem.c
 create mode 100644 scripts/omap4_usbboot.c
 create mode 100644 scripts/usb.h
 create mode 100644 scripts/usb_linux.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
