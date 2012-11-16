Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZLWp-0002xq-M2
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 13:00:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TZLWe-0004XJ-M7
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 14:00:04 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TZLWe-0003CD-L6
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 14:00:04 +0100
Date: Fri, 16 Nov 2012 14:00:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121116130004.GS10369@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2012.11.0 - The late one
To: barebox@lists.infradead.org

Finally released. With the latest phy related fixes this hopefully is
ready for release.

Have fun,
 Sascha

----------------------------------------------------------------
Alexander Aring (12):
      libbb: remove vi tabwidth setting
      commands: add testing menu
      commands: move nandtest to testing
      commands: move memtest to testing
      sandbox-unaligned: better usement of ifdef
      sandbox: fix posix_types
      sandbox: add missed case statement
      sandbox: move add_image for env in second getopt
      sandbox: fix malloc argument string
      documentation: add sandbox malloc argument
      mtd-core: add writesize in MEMGETINFO ioctl
      devfs-core: add writesize in mtd partition ioctl

Alexander Shiyan (2):
      ARM: Fix Kconfig link for Cirrus Logic EP9312 CPU.
      Add more generated files to .gitignore

Antony Pavlov (1):
      davinci_emac: fix comment for the _send function

Carlo Caione (1):
      cosmetic: extra new line in automount usage command

Eric B=E9nard (1):
      miidev: fix 1G wrong detection

Fabio Porcedda (1):
      ARM pbl: add generated file zbarebox.map to .gitignore

Fadil Berisha (1):
      boards: Add support for imx233-olinuxino board

Franck Jullien (6):
      Add __ashrdi3 and remove link to libgcc
      Add OpenRISC Image type
      Fix endianness error on be target
      filetype: Improve FAT detection
      fs/fat: Handle MBR on the first sector
      common/paritions.c: force little endian reads

Jan Luebbe (24):
      drivers/nor/m25p80: add JEDEC ID for Micron/Numonyx SPI NOR flash
      common: split out meminfo output and make it optional
      omap3: remove unused coded for clock configuration
      kbuild: keep the barebox binary accessible
      ARM Makefile: switch to kbuild command definition for mkublheader
      drivers/spi: add driver for the Multichannel SPI controller found in =
TI SoCs
      xload: make internal functions static
      xload: add SPI as a boot mode
      drivers/net/ksz8864rmn: add driver for Micrel KSZ8864RMN Ethernet Swi=
tch
      drivers/nor/m25p80: add MTD support
      drivers/nor/cfi_flash: use IS_ENABLED instead of an ifdef
      drivers/net: add driver for the EMAC device found in some TI SoCs
      spi: switch from printf back to debug
      ARM: give boards control of the reset entry point
      gpio: reduce verbosity while probing
      gpio: reduce verbosity while probing
      davinci_emac: return 0 on successful transmit
      davinci_emac: adjust to new phylib framework
      davinci_emac: get rid of mdio wrapper functions
      Makefile: add target to produce a SPL compatible uImage
      scripts: add tool to create image for SPI boot on AM35xx
      commands/mount: fix typo and wording in help message
      parameter: fix memory leak
      defaultenv-2: boot: add missing space in error message

Jan Weitzel (2):
      xload: get barebox size from barebox_arm_head
      pcm049 phycard l + xl2: update partion sizes

Jean-Christophe PLAGNIOL-VILLARD (60):
      Introduce ARM AMBA bus
      amba-pl011: switch to amba bus
      amba-pl011: add st specific init
      genenv: Allow to also specify files for the environment instead of on=
ly directories
      bmp: rename it to splash
      bmp: Move bmp rendering to lib/bmp.c
      Introduce graphic utils
      introduce image_renderer framework
      filetype: add BMP support
      splash/bmp: switch to image_renderer
      splash: add support to set a background color
      graphic_utils: add rgba support
      filetype: add PNG support
      add PNG support
      png: add picoPNG lib support
      globalvar: add inline when not enabled
      echo: always allow to pass -e option
      defaultenv-2/ansi-colors: export color only if enable
      globalvar: add support to set a value to of all globalvars beginning =
with 'match'
      defaultenv-2: boot use global.linux.bootargs.dyn for dynamic globalvar
      defaultenv-2: boot reset linux.bootargs.dyn. and bootm. globalvar
      net: catch error on eth_send
      add barebox logo
      driver: register bus
      driver: search device and driver based on the bus instead of all
      fb: add it's own bus for fb devices
      net: introduce phylib
      sandbox: add sdl video support
      defaultenv: enable glovalvar support
      defaultenv: switch hostname to global.hostname
      dhcp: switch to global var support
      dhcp: add copy_only_if_valid support
      dhcp: add retries limit support
      defaultenv-2: eth0 add default global.dhcp.vendor_id
      fb: move add param to bus probe
      switch all platform_bus device/driver registering to platform_driver/=
device_register
      devinfo: display device bus name
      amba/bus: add missing bus_register
      net/designware: update version display to print user ID and Synosys ID
      net/designware: fix phy_addr type to int
      net/designware: fix phylib support
      image_renderer: fix size type
      gui: move gui file to include/gui and lib/gui
      graphic_utils: pass image so we can draw only the visible part of the=
 image
      gui: introduce screen and surface to factorize and simplify code
      graphic_utils: introduce common fb_open/close
      gui: blit the surface on demand
      calao: at91 qil/tny/usb auto detect the phy addr
      designware: fix 100mps phy support
      at91sam9x5: udpate default ARCH_TEXT to 0x26f00000
      sam9x5ek: drop uart2 as it's not always present
      at91sam9x5ek: fix bootstrap size to 256KiB
      pm9g45: fix nand partition in c code
      pm9g45: fix config and defconfig
      at91sam9xek: fix mtd partition
      mx53-loco: fix phy reset
      phy: add phy_drivers_register
      phy: add smsc phy driver support
      mx53 loco: enable smsc phy driver
      mci-core: fix debug Capacity cast

Marcus Folkesson (1):
      mtd: nand: extend NAND flash detection to new MLC chips

Maxime Ripard (1):
      arm: cfa10036: Add the OCOTP device

Sascha Hauer (166):
      ARM lowlevel: Update function documentation
      ARM: Add assembler function to get runtime offset
      ARM lowlevel: Use get_runtime_offset
      mfd mc13xxx: Separate I2C and SPI probe
      Merge tag 'amba_bus' of git://git.jcrosoft.org/barebox into for-next/=
amba
      mfd mc34708: Separate I2C and SPI probe
      SPI: Put SPI devices on their own bus
      I2C: Put I2C devices on their own bus
      driver: rewrite dev_printf as a function
      driver: Add platform_device_id mechanism
      driver: add dev_get_drvdata function
      of: add devicetree probing support
      oftree command: Add devicetree probe support
      of: Add devicetree partition parsing
      spi: add oftree support
      ARM i.MX: Use platform_device_id for gpio driver
      ARM i.MX: Add Ka-Ro TX53 board support
      ARM i.MX TX53: Add defconfig
      ARM mxs: Clear USB boot mode during startup
      Merge tag 'logo' of git://git.jcrosoft.org/barebox into for-next/logo
      Treewide: remove address of the Free Software Foundation
      ARM i.MX: implement clocksource as driver
      serial i.MX: oftree support
      net fec_mpc5200: Use same platform_data as i.MX fec driver
      spi imx: dt support
      mfd mc13xxx: Add devicetree support
      cfi-flash: Add devicetree probe support
      mci i.MX esdhc: Add oftree support
      ARM i.MX: add devicetree support for gpio driver
      ARM i.MX: Add devicetree support for clocksource driver
      ARM OMAP: remove SRAM stack
      ARM OMAP3: rename arch_init_lowlevel to board_init_lowlevel
      ARM: remove ARCH_HAS_LOWLEVEL_INIT
      ARM OMAP: remove SRAM stack
      ARM OMAP3: rename arch_init_lowlevel to board_init_lowlevel
      ARM: remove ARCH_HAS_LOWLEVEL_INIT
      net/eth: fix link handling
      net: remove unused prototypes for eth_[open|halt]
      ARM i.MX: add debug for iomux-v3
      scripts/bareboxenv: Only print information if -v is given
      environment generation: remove unused CLEAN_FILES
      environment generation: Fix dependencies
      net: Add tftp command which uses the new tftp code
      defconfig: Switch all defconfig to new tftp command
      net: remove old tftp support
      net: remove unused miidev.h
      Merge branch 'for-next/driver'
      Merge branch 'for-next/net'
      Merge branch 'for-next/amba'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/boot-sequence-dhcp'
      Merge branch 'for-next/fat-detection'
      Merge branch 'for-next/karo-tx53'
      Merge branch 'for-next/logo'
      Merge branch 'for-next/make'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/openrisc'
      Merge branch 'for-next/png'
      Merge branch 'for-next/remove-fsf-address'
      Merge branch 'for-next/sandbox'
      Merge branch 'for-next/spi'
      Merge branch 'for-next/testing-menu'
      Merge branch 'for-next/arm-remove-arch-init-ll'
      Merge branch 'for-next/tftp'
      Merge branch 'for-next/defaultenv-deps'
      Merge branch 'for-next/arm-board-reset'
      driver: move dev_get_drvdata out of CONFIG_CMD_DEVINFO
      provide static inline function for export
      ARM i.MX31: give register base addresses a proper MX31_ prefix
      ARM i.MX35: give register base addresses a proper MX35_ prefix
      ARM i.MX21: give register base addresses a proper MX21_ prefix
      ARM i.MX1: give register base addresses a proper MX1_ prefix
      ARM i.MX27: give register base addresses a proper MX27_ prefix
      ARM i.MX25: give register base addresses a proper MX25_ prefix
      ARM i.MX/MXS: Allow to include imx*-regs.h directly
      ARM i.MX51: Use defines rather than hardcoded addresses
      ARM i.MX: Add header file for WEIM cs setup
      ARM i.MX1: Add function to setup chipselect
      ARM i.MX21: Add function to setup chipselect
      ARM i.MX31: Add function to setup chipselect
      ARM i.MX35: Add function to setup chipselect
      ARM i.MX25: Add function to setup chipselect
      err.h: introduce IS_ERR_OR_NULL
      clk clkdev: Add clkdev matching based on physbase
      clk: initial common clk support
      commands: Add clk commands
      ARM i.MX: initial clk support
      ARM i.MX27: implement clk support
      ARM i.MX25: Switch to common clk support
      ARM i.MX5: Switch to common clk support
      ARM i.MX1: Switch to common clk support
      ARM i.MX31: Switch to common clk
      ARM i.MX6: Switch to common clk
      ARM i.MX21: Switch to common clk
      ARM i.MX35: Switch to common clk
      net fec: Switch to clk support
      serial i.MX: Switch to clk support
      spi i.MX: Switch to clk support
      ARM i.MX: Switch clocksource to clk_get
      mci i.MX ESDHC: Switch to clock support
      mci i.MX: Switch to clock support
      i2c i.MX: Switch to clock support
      video i.MX: Switch to clock support
      video i.MX IPU: Switch to clock support
      ARM i.MX: Remove old clock support
      ARM i.MX clocksource: fix timer source selection
      ARM i.MX51 babbage: Add delay after phy reset
      Merge branch 'for-next/imx-clk'
      Merge branch 'for-next/fixes'
      nios2: Fix stray comment start in longlong.h
      driver: make get_bus_by_name static
      net mdio_bus: Add missing bus_register
      i2c i.MX: fixup clock support for powerpc
      ARM pbl: Provide a dummy error function for the decompressor
      ARM pbl: actually create cached mappings in the decompressor
      Merge branch 'pu/misc-fixes'
      ARM i.MX gpio: fix of gpio base
      ARM i.MX25: Enable all needed clocks during startup
      Makefile: Add missing force for barebox-flash-image
      defaultenv: dependencies fixes
      platform driver: Drop check for resource conflicts
      ARM a9m2440: Fix lowlevel init
      ARM samsung S5P: Enable board support
      mips: remove unused variable
      sandbox: only test for sdl libs when sdl is enabled
      net gianfar: remove unused variable
      Merge branch 'pu/compiler-warnings'
      fs tftp: Only request a block once
      fs tftp: Fix possible fifo overflow
      defenv-2: set username to 'none'
      pbl: Add missing FORCE
      wd: Provide default value for watchdog timeout
      mtd: fix mtdraw_write/mtdraw_erase arguments
      ARM: let THUMB2 select EABI
      ARM Samsung: fix pbl build for tiny210 board
      ARM omap: pbl fixes
      ARM Samsung: Let Nand boot depend on ARCH_S3C24xx
      mfd stmpe: Add missing semicolons at end of EXPORT_SYMBOL
      misc JTAG: Let Jtag driver depend on GENERIC_GPIO
      mtd mxs nand: select NAND_BBT
      mtd nand i.MX: fix compilation for unsupported SoC
      of gpio: Build gpio helper only when gpiolib is selected
      pbl: provide hang() function for the pbl
      ARM omap spi image: relax size constrains
      ARM omap spi image: print error to stderr
      misc JTAG: include fixes
      of: Check for NULL pointer in of_find_property
      net fec: connect phy at probe time
      net eth: make edev->init optional
      uimage: Fix deleting of temporary file
      net fec: call fec_init at probe time
      Merge branch 'pu/net-fixes'
      net usb asix: Add missing line breaks in dev_* messages
      bootm: Add a define for the additional devicetree size
      bootm: Do not cross 1MiB sections for the devicetree
      command: return 1 on unknown command
      mount: add compatibility to old mount command
      defenv-2 menu: when booting failed wait for key press
      replace barebox* in .gitignore with individual files
      Revert "net fec: connect phy at probe time"
      Merge branch 'phy-fixes'
      Release v2012.11.0

Teresa G=E1mez (5):
      ARM OMAP: switch to gpiolib support
      ARM OMAP: gpiolib fix chip.base
      ARM OMAP: Remove usage of gpio lib calls in lowlevel code
      ARM OMAP: change region size for gpio banks
      ARM OMAP: Enable gpio output

Uwe Kleine-K=F6nig (1):
      iomux-imx35: add missing comma in pad definition

Vicente (1):
      bootm: close open files

Wolfram Sang (3):
      mtd: ubi: cdev: fix build warning for 64-bit
      Makefile: disable CDPATH
      mtd: ubi: fix typos in comment of build.c

vicencb@gmail.com (1):
      regression: reset can not return

 .gitignore                                         |    3 +
 Documentation/barebox-main.dox                     |    4 -
 Documentation/commands.dox                         |    2 +-
 Documentation/porting.txt                          |    2 +-
 Makefile                                           |   44 +-
 arch/arm/Kconfig                                   |   18 +-
 arch/arm/Makefile                                  |   34 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    4 -
 arch/arm/boards/a9m2410/config.h                   |    4 -
 arch/arm/boards/a9m2410/lowlevel_init.S            |   17 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |    4 -
 arch/arm/boards/a9m2440/a9m2440.c                  |    4 -
 arch/arm/boards/a9m2440/baseboards.h               |    4 -
 arch/arm/boards/a9m2440/config.h                   |    4 -
 arch/arm/boards/a9m2440/lowlevel_init.S            |   17 +-
 arch/arm/boards/at91rm9200ek/env/config            |    2 +-
 arch/arm/boards/at91rm9200ek/init.c                |    4 -
 arch/arm/boards/at91sam9260ek/env/config           |    4 +-
 arch/arm/boards/at91sam9260ek/init.c               |    4 -
 arch/arm/boards/at91sam9260ek/lowlevel_init.S      |   13 +-
 arch/arm/boards/at91sam9261ek/env/config           |    4 +-
 arch/arm/boards/at91sam9261ek/init.c               |    4 -
 arch/arm/boards/at91sam9263ek/env/config           |    2 +-
 arch/arm/boards/at91sam9263ek/init.c               |    4 -
 arch/arm/boards/at91sam9m10g45ek/env/config        |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    4 -
 arch/arm/boards/at91sam9x5ek/env/config            |    5 +-
 arch/arm/boards/at91sam9x5ek/init.c                |    5 -
 arch/arm/boards/beagle/board.c                     |    4 -
 arch/arm/boards/beagle/config.h                    |    4 -
 arch/arm/boards/chumby_falconwing/config.h         |    4 -
 arch/arm/boards/chumby_falconwing/env/config       |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |    4 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |    4 +
 arch/arm/boards/edb93xx/early_udelay.h             |    4 -
 arch/arm/boards/edb93xx/edb93xx.c                  |    4 -
 arch/arm/boards/edb93xx/edb93xx.h                  |    4 -
 arch/arm/boards/edb93xx/flash_cfg.c                |    4 -
 arch/arm/boards/edb93xx/pll_cfg.c                  |    4 -
 arch/arm/boards/edb93xx/pll_cfg.h                  |    4 -
 arch/arm/boards/edb93xx/sdram_cfg.c                |    4 -
 arch/arm/boards/edb93xx/sdram_cfg.h                |    4 -
 arch/arm/boards/eukrea_cpuimx25/Makefile           |    4 -
 arch/arm/boards/eukrea_cpuimx25/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx25/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   36 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   41 +-
 arch/arm/boards/eukrea_cpuimx27/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    4 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    9 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   15 +-
 arch/arm/boards/eukrea_cpuimx35/Makefile           |    4 -
 arch/arm/boards/eukrea_cpuimx35/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx35/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  104 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   33 +-
 arch/arm/boards/eukrea_cpuimx51/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx51/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    4 -
 arch/arm/boards/freescale-mx23-evk/config.h        |    4 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |    4 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   24 +-
 arch/arm/boards/freescale-mx25-3-stack/Makefile    |    4 -
 arch/arm/boards/freescale-mx25-3-stack/config.h    |    4 -
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   41 +-
 arch/arm/boards/freescale-mx28-evk/env/config      |   12 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   92 +-
 .../freescale-mx35-3-stack/board-mx35_3stack.h     |    4 -
 arch/arm/boards/freescale-mx35-3-stack/config.h    |    4 -
 arch/arm/boards/freescale-mx35-3-stack/env/config  |   14 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   22 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    8 +-
 arch/arm/boards/freescale-mx51-pdk/config.h        |    4 -
 arch/arm/boards/freescale-mx53-loco/board.c        |    3 +-
 arch/arm/boards/freescale-mx53-loco/config.h       |    4 -
 arch/arm/boards/freescale-mx53-loco/env/config     |   16 +-
 arch/arm/boards/freescale-mx53-smd/config.h        |    4 -
 arch/arm/boards/freescale-mx53-smd/env/config      |   14 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |   48 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   45 +-
 arch/arm/boards/friendlyarm-mini2440/config.h      |    4 -
 arch/arm/boards/friendlyarm-mini2440/env/config    |   14 +-
 .../boards/friendlyarm-mini2440/lowlevel_init.S    |   18 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    4 -
 arch/arm/boards/friendlyarm-tiny210/Makefile       |    1 +
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    7 +-
 arch/arm/boards/guf-cupid/Makefile                 |    4 -
 arch/arm/boards/guf-cupid/board.c                  |   84 +-
 arch/arm/boards/guf-cupid/config.h                 |    4 -
 arch/arm/boards/guf-cupid/env/config               |   14 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |   39 +-
 arch/arm/boards/guf-neso/board.c                   |   16 +-
 arch/arm/boards/guf-neso/config.h                  |    4 -
 arch/arm/boards/guf-neso/env/config                |   14 +-
 arch/arm/boards/guf-neso/lowlevel.c                |   14 +-
 arch/arm/boards/imx21ads/config.h                  |    4 -
 arch/arm/boards/imx21ads/imx21ads.c                |   37 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   20 +-
 arch/arm/boards/imx233-olinuxino/Makefile          |    1 +
 arch/arm/boards/imx233-olinuxino/config.h          |   21 +
 arch/arm/boards/imx233-olinuxino/env/bin/boot      |   32 +
 arch/arm/boards/imx233-olinuxino/env/bin/init      |   15 +
 arch/arm/boards/imx233-olinuxino/env/config        |   42 +
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  254 +
 arch/arm/boards/imx27ads/config.h                  |    4 -
 arch/arm/boards/imx27ads/imx27ads.c                |    9 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |   11 +-
 arch/arm/boards/karo-tx25/Makefile                 |    4 -
 arch/arm/boards/karo-tx25/board.c                  |   10 +-
 arch/arm/boards/karo-tx25/config.h                 |    4 -
 arch/arm/boards/karo-tx25/env/bin/init_board       |    2 +-
 arch/arm/boards/karo-tx25/env/config               |   14 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |   23 +-
 arch/arm/boards/karo-tx28/env/config               |   14 +-
 arch/arm/boards/karo-tx51/config.h                 |    4 -
 arch/arm/boards/karo-tx51/flash_header.c           |    4 -
 arch/arm/boards/karo-tx51/tx51.c                   |    4 -
 arch/arm/boards/karo-tx53/Makefile                 |    2 +
 arch/arm/boards/karo-tx53/board.c                  |  240 +
 arch/arm/boards/karo-tx53/config.h                 |   24 +
 arch/arm/boards/karo-tx53/env/init/bootargs-base   |    8 +
 arch/arm/boards/karo-tx53/env/init/hostname        |    8 +
 arch/arm/boards/karo-tx53/flash_header.c           |  147 +
 arch/arm/boards/mioa701/env/bin/init               |    2 +-
 arch/arm/boards/mmccpu/init.c                      |    4 -
 arch/arm/boards/netx/netx.c                        |    4 -
 arch/arm/boards/netx/platform.S                    |   13 +-
 arch/arm/boards/nhk8815/setup.c                    |    6 +-
 arch/arm/boards/omap343xdsp/board.c                |    4 -
 arch/arm/boards/omap343xdsp/config.h               |    4 -
 arch/arm/boards/omap3evm/board.c                   |    4 -
 arch/arm/boards/omap3evm/config.h                  |    4 -
 arch/arm/boards/panda/env/config                   |   12 +-
 arch/arm/boards/panda/lowlevel.c                   |   13 +-
 arch/arm/boards/pcm027/board.c                     |    4 -
 arch/arm/boards/pcm027/config.h                    |    4 -
 arch/arm/boards/pcm027/env/config                  |   14 +-
 arch/arm/boards/pcm027/lowlevel_init.S             |   14 +-
 arch/arm/boards/pcm037/Makefile                    |    4 -
 arch/arm/boards/pcm037/config.h                    |    4 -
 arch/arm/boards/pcm037/env/config                  |   14 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |   57 +-
 arch/arm/boards/pcm037/pcm037.c                    |   70 +-
 arch/arm/boards/pcm038/config.h                    |    4 -
 arch/arm/boards/pcm038/lowlevel.c                  |   13 +-
 arch/arm/boards/pcm038/pcm038.c                    |    5 +-
 arch/arm/boards/pcm038/pcm970.c                    |   23 +-
 arch/arm/boards/pcm038/pll.h                       |    4 -
 arch/arm/boards/pcm043/Makefile                    |    4 -
 arch/arm/boards/pcm043/config.h                    |    4 -
 arch/arm/boards/pcm043/env/config                  |   14 +-
 arch/arm/boards/pcm043/lowlevel.c                  |   35 +-
 arch/arm/boards/pcm043/pcm043.c                    |   87 +-
 arch/arm/boards/pcm049/board.c                     |    8 +-
 arch/arm/boards/pcm049/env/config                  |   16 +-
 arch/arm/boards/pcm049/lowlevel.c                  |   11 +-
 arch/arm/boards/phycard-a-l1/Makefile              |    4 -
 arch/arm/boards/phycard-a-l1/config.h              |    4 -
 arch/arm/boards/phycard-a-l1/env/config            |   20 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |   10 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.h            |    4 -
 arch/arm/boards/phycard-a-xl2/Makefile             |    4 -
 arch/arm/boards/phycard-a-xl2/env/config           |   16 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |   11 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |    8 +-
 arch/arm/boards/phycard-i.MX27/config.h            |    4 -
 arch/arm/boards/phycard-i.MX27/env/config          |   14 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   16 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |   24 +-
 arch/arm/boards/pm9261/init.c                      |    4 -
 arch/arm/boards/pm9263/init.c                      |    4 -
 arch/arm/boards/pm9g45/env/config                  |   13 +-
 arch/arm/boards/pm9g45/init.c                      |   11 +-
 arch/arm/boards/qil-a9260/env/config               |    2 +-
 arch/arm/boards/qil-a9260/init.c                   |    2 +-
 arch/arm/boards/scb9328/config.h                   |    4 -
 arch/arm/boards/scb9328/env/config                 |   14 +-
 arch/arm/boards/scb9328/lowlevel_init.S            |   17 +-
 arch/arm/boards/scb9328/scb9328.c                  |   23 +-
 arch/arm/boards/tny-a926x/env/config               |    6 +-
 arch/arm/boards/tny-a926x/init.c                   |    6 +-
 arch/arm/boards/toshiba-ac100/board.c              |    4 -
 arch/arm/boards/toshiba-ac100/serial.c             |    4 -
 arch/arm/boards/usb-a926x/env/config               |    6 +-
 arch/arm/boards/usb-a926x/init.c                   |    6 +-
 arch/arm/boards/versatile/versatilepb.c            |    4 -
 arch/arm/configs/a9m2410_defconfig                 |    3 +-
 arch/arm/configs/a9m2440_defconfig                 |    3 +-
 arch/arm/configs/at91rm9200ek_defconfig            |    4 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    4 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |    3 +-
 arch/arm/configs/chumbyone_defconfig               |    6 +-
 arch/arm/configs/cupid_defconfig                   |    6 +-
 arch/arm/configs/dss11_defconfig                   |    4 +-
 arch/arm/configs/edb93xx_defconfig                 |    3 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    6 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    5 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    6 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    4 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |    4 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |    3 +
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    3 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    5 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    5 +-
 arch/arm/configs/freescale_mx53_smd_defconfig      |    4 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig    |    3 +-
 arch/arm/configs/imx233-olinuxino_defconfig        |   63 +
 arch/arm/configs/imx28evk_defconfig                |    5 +-
 arch/arm/configs/mioa701_defconfig                 |    2 +-
 arch/arm/configs/mmccpu_defconfig                  |    3 +-
 arch/arm/configs/mx21ads_defconfig                 |    3 +-
 arch/arm/configs/mx27ads_defconfig                 |    3 +-
 arch/arm/configs/neso_defconfig                    |    6 +-
 arch/arm/configs/netx_nxdb500_defconfig            |    3 +-
 arch/arm/configs/nhk8815_defconfig                 |    4 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    4 +-
 arch/arm/configs/panda_defconfig                   |    4 +-
 arch/arm/configs/pca100_defconfig                  |    4 +-
 arch/arm/configs/pcm027_defconfig                  |    6 +-
 arch/arm/configs/pcm037_defconfig                  |    4 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    4 +-
 arch/arm/configs/pcm049_defconfig                  |    4 +-
 arch/arm/configs/phycard_a_l1_defconfig            |    6 +-
 arch/arm/configs/phycard_a_xl2_defconfig           |    4 +-
 arch/arm/configs/pm9261_defconfig                  |    4 +-
 arch/arm/configs/pm9263_defconfig                  |    3 +-
 arch/arm/configs/pm9g45_defconfig                  |   32 +-
 arch/arm/configs/qil_a9260_128mib_defconfig        |    4 +-
 arch/arm/configs/qil_a9260_defconfig               |    4 +-
 arch/arm/configs/scb9328_defconfig                 |    4 +-
 arch/arm/configs/tny_a9260_defconfig               |    3 +-
 arch/arm/configs/tny_a9263_defconfig               |    3 +-
 arch/arm/configs/tny_a9g20_defconfig               |    3 +-
 arch/arm/configs/toshiba_ac100_defconfig           |    4 +-
 arch/arm/configs/tx25stk5_defconfig                |    6 +-
 arch/arm/configs/tx28stk5_defconfig                |    5 +-
 arch/arm/configs/tx51stk5_defconfig                |    6 +-
 arch/arm/configs/tx53stk5_defconfig                |   76 +
 arch/arm/configs/usb_a9260_defconfig               |    4 +-
 arch/arm/configs/usb_a9263_128mib_defconfig        |    4 +-
 arch/arm/configs/usb_a9263_defconfig               |    4 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    4 +-
 arch/arm/configs/usb_a9g20_defconfig               |    4 +-
 arch/arm/configs/versatilepb_defconfig             |    4 +-
 arch/arm/cpu/Kconfig                               |    2 +-
 arch/arm/cpu/Makefile                              |    4 +-
 arch/arm/cpu/cpu.c                                 |    4 -
 arch/arm/cpu/cpuinfo.c                             |    4 -
 arch/arm/cpu/interrupts.c                          |    3 -
 arch/arm/cpu/start-pbl.c                           |   41 +-
 arch/arm/cpu/start-reset.c                         |   67 -
 arch/arm/cpu/start.c                               |   32 +-
 arch/arm/include/asm/barebox-arm-head.h            |   68 +
 arch/arm/include/asm/barebox-arm.h                 |    7 +-
 arch/arm/include/asm/cache-l2x0.h                  |    3 -
 arch/arm/include/asm/system.h                      |    4 +
 arch/arm/include/asm/unified.h                     |    3 -
 arch/arm/include/asm/unwind.h                      |    3 -
 arch/arm/lib/Makefile                              |    2 +
 arch/arm/lib/armlinux.c                            |    5 -
 arch/arm/lib/ashldi3.S                             |    6 +-
 arch/arm/lib/ashrdi3.S                             |    6 +-
 arch/arm/lib/barebox.lds.S                         |    6 -
 arch/arm/lib/bootm.c                               |    4 +-
 arch/arm/lib/div0.c                                |    4 -
 arch/arm/lib/lib1funcs.S                           |    6 +-
 arch/arm/lib/lshrdi3.S                             |    6 +-
 arch/arm/lib/runtime-offset.S                      |   17 +
 arch/arm/mach-at91/Kconfig                         |    1 +
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |    5 +-
 arch/arm/mach-at91/at91rm9200_time.c               |    4 -
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |    5 +-
 arch/arm/mach-at91/at91sam926x_time.c              |    4 -
 arch/arm/mach-at91/gpio.c                          |    4 -
 arch/arm/mach-at91/include/mach/board.h            |    3 -
 arch/arm/mach-at91/include/mach/io.h               |    3 -
 arch/arm/mach-ep93xx/clocksource.c                 |    4 -
 arch/arm/mach-ep93xx/gpio.c                        |    3 -
 arch/arm/mach-ep93xx/include/mach/gpio.h           |    3 -
 arch/arm/mach-ep93xx/led.c                         |    4 -
 arch/arm/mach-ep93xx/led.h                         |    4 -
 arch/arm/mach-ep93xx/lowlevel_init.S               |   19 +-
 arch/arm/mach-imx/Kconfig                          |   16 +-
 arch/arm/mach-imx/Makefile                         |   21 +-
 arch/arm/mach-imx/boot.c                           |    4 -
 arch/arm/mach-imx/clk-imx1.c                       |  108 +
 arch/arm/mach-imx/clk-imx21.c                      |  119 +
 arch/arm/mach-imx/clk-imx25.c                      |  164 +
 arch/arm/mach-imx/clk-imx27.c                      |  154 +
 arch/arm/mach-imx/clk-imx31.c                      |  133 +
 arch/arm/mach-imx/clk-imx35.c                      |  186 +
 arch/arm/mach-imx/clk-imx5.c                       |  298 +
 arch/arm/mach-imx/clk-imx6.c                       |  306 +
 arch/arm/mach-imx/clk-pfd.c                        |  148 +
 arch/arm/mach-imx/{speed.c =3D> clk-pllv1.c}         |   74 +-
 arch/arm/mach-imx/clk-pllv2.c                      |  164 +
 arch/arm/mach-imx/clk-pllv3.c                      |  386 ++
 arch/arm/mach-imx/clk.h                            |   66 +
 arch/arm/mach-imx/clko.c                           |   60 -
 arch/arm/mach-imx/clocksource.c                    |  112 +-
 arch/arm/mach-imx/external-nand-boot.c             |    6 +-
 arch/arm/mach-imx/gpio.c                           |  119 +-
 arch/arm/mach-imx/iim.c                            |    2 +-
 arch/arm/mach-imx/imx1.c                           |   25 +-
 arch/arm/mach-imx/imx21.c                          |   28 +-
 arch/arm/mach-imx/imx25.c                          |   36 +-
 arch/arm/mach-imx/imx27.c                          |   34 +-
 arch/arm/mach-imx/imx31.c                          |   26 +-
 arch/arm/mach-imx/imx35.c                          |   29 +-
 arch/arm/mach-imx/imx51.c                          |   16 +-
 arch/arm/mach-imx/imx53.c                          |   23 +-
 arch/arm/mach-imx/imx6.c                           |   22 +-
 arch/arm/mach-imx/include/mach/clkdev.h            |    7 +
 arch/arm/mach-imx/include/mach/clock.h             |   42 +-
 arch/arm/mach-imx/include/mach/devices-imx1.h      |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx21.h     |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h     |   55 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   28 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h     |   34 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h     |   34 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |    2 +-
 arch/arm/mach-imx/include/mach/iim.h               |    4 -
 arch/arm/mach-imx/include/mach/imx-regs.h          |    4 -
 arch/arm/mach-imx/include/mach/imx1-regs.h         |  154 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h        |  197 +-
 arch/arm/mach-imx/include/mach/imx25-regs.h        |  163 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |  244 +-
 arch/arm/mach-imx/include/mach/imx31-regs.h        |  248 +-
 arch/arm/mach-imx/include/mach/imx35-regs.h        |  203 +-
 arch/arm/mach-imx/include/mach/imx51-regs.h        |   19 -
 arch/arm/mach-imx/include/mach/imx53-regs.h        |   19 -
 arch/arm/mach-imx/include/mach/imx6-anadig.h       |    5 -
 arch/arm/mach-imx/include/mach/imx6-regs.h         |   19 -
 arch/arm/mach-imx/include/mach/iomux-mx21.h        |    5 -
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-mx2x.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-mx31.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-mx35.h        |    6 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h          |    4 -
 arch/arm/mach-imx/include/mach/weim.h              |   20 +
 arch/arm/mach-imx/iomux-v2.c                       |    3 -
 arch/arm/mach-imx/iomux-v3.c                       |    8 +-
 arch/arm/mach-imx/nand.c                           |    4 -
 arch/arm/mach-imx/speed-imx1.c                     |   95 -
 arch/arm/mach-imx/speed-imx21.c                    |  197 -
 arch/arm/mach-imx/speed-imx25.c                    |  155 -
 arch/arm/mach-imx/speed-imx27.c                    |  231 -
 arch/arm/mach-imx/speed-imx31.c                    |   83 -
 arch/arm/mach-imx/speed-imx35.c                    |  259 -
 arch/arm/mach-imx/speed-imx51.c                    |  311 -
 arch/arm/mach-imx/speed-imx53.c                    |  236 -
 arch/arm/mach-imx/speed-imx6.c                     |  404 --
 arch/arm/mach-mxs/Kconfig                          |    7 +
 arch/arm/mach-mxs/clocksource-imx23.c              |    4 -
 arch/arm/mach-mxs/imx.c                            |   28 +-
 arch/arm/mach-mxs/include/mach/clock.h             |    4 -
 arch/arm/mach-mxs/include/mach/generic.h           |    4 -
 arch/arm/mach-mxs/include/mach/gpio.h              |    4 -
 arch/arm/mach-mxs/include/mach/imx-regs.h          |    4 -
 arch/arm/mach-mxs/include/mach/imx23-regs.h        |   11 -
 arch/arm/mach-mxs/include/mach/imx28-regs.h        |    7 -
 arch/arm/mach-mxs/include/mach/iomux-imx23.h       |    4 -
 arch/arm/mach-mxs/include/mach/mci.h               |    4 -
 arch/arm/mach-mxs/iomux-imx.c                      |    4 -
 arch/arm/mach-mxs/ocotp.c                          |    2 +-
 arch/arm/mach-mxs/speed-imx23.c                    |    4 -
 arch/arm/mach-mxs/usb-imx23.c                      |    4 -
 arch/arm/mach-netx/clocksource.c                   |    4 -
 arch/arm/mach-netx/generic.c                       |    4 -
 arch/arm/mach-netx/include/mach/netx-regs.h        |    3 -
 arch/arm/mach-nomadik/8815.c                       |   13 +-
 arch/arm/mach-nomadik/include/mach/board.h         |    4 -
 arch/arm/mach-nomadik/include/mach/hardware.h      |    4 -
 arch/arm/mach-nomadik/reset.c                      |    3 -
 arch/arm/mach-omap/Kconfig                         |   34 +-
 arch/arm/mach-omap/Makefile                        |    5 +-
 arch/arm/mach-omap/arch-omap.dox                   |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c             |    4 -
 arch/arm/mach-omap/gpio.c                          |  174 +-
 arch/arm/mach-omap/gpmc.c                          |    4 -
 arch/arm/mach-omap/include/mach/clocks.h           |    4 -
 arch/arm/mach-omap/include/mach/control.h          |    4 -
 arch/arm/mach-omap/include/mach/debug_ll.h         |    3 -
 arch/arm/mach-omap/include/mach/emac_defs.h        |   48 +
 arch/arm/mach-omap/include/mach/gpio.h             |    4 -
 arch/arm/mach-omap/include/mach/gpmc.h             |    4 -
 arch/arm/mach-omap/include/mach/intc.h             |    4 -
 arch/arm/mach-omap/include/mach/mcspi.h            |   11 +
 arch/arm/mach-omap/include/mach/omap3-clock.h      |    4 -
 arch/arm/mach-omap/include/mach/omap3-devices.h    |   32 +
 arch/arm/mach-omap/include/mach/omap3-mux.h        |    4 -
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |    6 -
 arch/arm/mach-omap/include/mach/omap3-smx.h        |    3 -
 arch/arm/mach-omap/include/mach/omap4-mux.h        |    4 -
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |    6 -
 arch/arm/mach-omap/include/mach/sdrc.h             |    4 -
 arch/arm/mach-omap/include/mach/silicon.h          |    4 -
 arch/arm/mach-omap/include/mach/sys_info.h         |    4 -
 arch/arm/mach-omap/include/mach/syslib.h           |    4 -
 arch/arm/mach-omap/include/mach/timers.h           |    4 -
 arch/arm/mach-omap/include/mach/wdt.h              |    4 -
 arch/arm/mach-omap/include/mach/xload.h            |    4 +-
 arch/arm/mach-omap/omap3_clock.c                   |   18 +-
 arch/arm/mach-omap/omap3_core.S                    |   19 +-
 arch/arm/mach-omap/omap3_generic.c                 |   25 +-
 arch/arm/mach-omap/omap4_generic.c                 |   48 +-
 arch/arm/mach-omap/omap4_twl6030_mmc.c             |    4 -
 arch/arm/mach-omap/s32k_clksource.c                |    4 -
 arch/arm/mach-omap/syslib.c                        |    4 -
 arch/arm/mach-omap/xload.c                         |   99 +-
 arch/arm/mach-samsung/Kconfig                      |    1 +
 arch/arm/mach-samsung/Makefile                     |    1 +
 arch/arm/mach-samsung/generic.c                    |    4 -
 arch/arm/mach-samsung/gpio-s3c24x0.c               |    4 -
 arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h |    4 -
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |    4 -
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |    4 -
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |    4 -
 arch/arm/mach-samsung/include/mach/s3c-mci.h       |    4 -
 arch/arm/mach-samsung/include/mach/s3c24xx-fb.h    |    4 -
 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h |    4 -
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |    4 -
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h  |    4 -
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |    4 -
 arch/arm/mach-samsung/mem-s3c24x0.c                |    4 -
 arch/arm/mach-tegra/clock.c                        |    3 -
 arch/arm/mach-tegra/include/mach/debug_ll.h        |    3 -
 arch/arm/mach-tegra/reset.c                        |    3 -
 arch/arm/mach-versatile/core.c                     |   11 +-
 arch/arm/mach-versatile/include/mach/debug_ll.h    |    3 -
 arch/arm/mach-versatile/include/mach/platform.h    |    3 -
 arch/arm/pbl/.gitignore                            |    1 +
 arch/arm/pbl/zbarebox.lds.S                        |    2 -
 arch/blackfin/boards/ipe337/barebox.lds.S          |    4 -
 arch/blackfin/configs/ipe337_defconfig             |    3 +-
 arch/blackfin/cpu-bf561/start.S                    |    4 -
 arch/blackfin/include/asm/barebox.h                |    4 -
 arch/blackfin/include/asm/bitops.h                 |    4 -
 arch/blackfin/include/asm/blackfin.h               |    4 -
 arch/blackfin/include/asm/blackfin_defs.h          |    4 -
 arch/blackfin/include/asm/byteorder.h              |    4 -
 arch/blackfin/include/asm/cpu.h                    |    4 -
 arch/blackfin/include/asm/current.h                |    4 -
 arch/blackfin/include/asm/entry.h                  |    4 -
 arch/blackfin/include/asm/hw_irq.h                 |    4 -
 arch/blackfin/include/asm/io.h                     |    4 -
 arch/blackfin/include/asm/linkage.h                |    4 -
 arch/blackfin/include/asm/mem_init.h               |    4 -
 arch/blackfin/include/asm/page.h                   |    4 -
 arch/blackfin/include/asm/page_offset.h            |    4 -
 arch/blackfin/include/asm/posix_types.h            |    4 -
 arch/blackfin/include/asm/processor.h              |    4 -
 arch/blackfin/include/asm/ptrace.h                 |    4 -
 arch/blackfin/include/asm/segment.h                |    4 -
 arch/blackfin/include/asm/setup.h                  |    4 -
 arch/blackfin/include/asm/string.h                 |    4 -
 arch/blackfin/include/asm/system.h                 |    4 -
 arch/blackfin/include/asm/traps.h                  |    4 -
 arch/blackfin/include/asm/types.h                  |    4 -
 arch/blackfin/lib/ashldi3.c                        |    5 -
 arch/blackfin/lib/bf533_string.c                   |    4 -
 arch/blackfin/lib/blackfin_linux.c                 |    4 -
 arch/blackfin/lib/board.c                          |    4 -
 arch/blackfin/lib/cpu.c                            |    4 -
 arch/blackfin/lib/divsi3.S                         |    5 -
 arch/blackfin/lib/gcclib.h                         |    5 -
 arch/blackfin/lib/interrupt.S                      |    4 -
 arch/blackfin/lib/lshrdi3.c                        |    5 -
 arch/blackfin/lib/modsi3.S                         |    5 -
 arch/blackfin/lib/module.c                         |    5 -
 arch/blackfin/lib/muldi3.c                         |    4 -
 arch/blackfin/lib/traps.c                          |    4 -
 arch/blackfin/lib/udivsi3.S                        |    5 -
 arch/blackfin/lib/umodsi3.S                        |    5 -
 arch/mips/boards/dlink-dir-320/config.h            |    4 -
 arch/mips/boards/dlink-dir-320/serial.c            |    3 -
 arch/mips/boards/qemu-malta/config.h               |    4 -
 arch/mips/boards/qemu-malta/init.c                 |    3 -
 arch/mips/boards/rzx50/config.h                    |    4 -
 arch/mips/boards/rzx50/include/board/debug_ll.h    |    3 -
 arch/mips/boards/rzx50/serial.c                    |    3 -
 arch/mips/boot/main_entry.c                        |    4 -
 arch/mips/boot/start.S                             |    3 -
 arch/mips/configs/dlink-dir-320_defconfig          |    4 +-
 arch/mips/configs/qemu-malta_defconfig             |    4 +-
 arch/mips/include/asm/barebox.h                    |    4 -
 arch/mips/include/asm/bitops.h                     |    4 -
 arch/mips/include/asm/common.h                     |    4 -
 arch/mips/include/asm/mipsregs.h                   |    3 -
 arch/mips/include/asm/module.h                     |    4 -
 arch/mips/include/asm/string.h                     |    4 -
 arch/mips/include/debug_ll_ns16550.h               |    3 -
 arch/mips/lib/barebox.lds.S                        |    3 -
 arch/mips/lib/cpuinfo.c                            |    3 -
 arch/mips/lib/csrc-r4k.c                           |    3 -
 arch/mips/lib/memory.c                             |    3 -
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h     |    3 -
 arch/mips/mach-bcm47xx/include/mach/hardware.h     |    3 -
 arch/mips/mach-bcm47xx/reset.c                     |    3 -
 arch/mips/mach-malta/include/mach/debug_ll.h       |    3 -
 arch/mips/mach-malta/include/mach/hardware.h       |    3 -
 arch/mips/mach-malta/reset.c                       |    3 -
 arch/mips/mach-xburst/csrc-jz4750.c                |    3 -
 arch/mips/mach-xburst/include/mach/debug_ll.h      |    3 -
 arch/mips/mach-xburst/reset-jz4750.c               |    3 -
 arch/nios2/boards/generic/generic.c                |    2 +-
 arch/nios2/cpu/barebox.lds.S                       |    4 -
 arch/nios2/cpu/cpu.c                               |    4 -
 arch/nios2/cpu/exceptions.S                        |    4 -
 arch/nios2/cpu/start.S                             |    4 -
 arch/nios2/cpu/traps.c                             |    4 -
 arch/nios2/include/asm/io.h                        |    4 -
 arch/nios2/include/asm/nios2-io.h                  |    4 -
 arch/nios2/include/asm/nios2.h                     |    4 -
 arch/nios2/include/asm/opcodes.h                   |    4 -
 arch/nios2/include/asm/ptrace.h                    |    4 -
 arch/nios2/include/asm/string.h                    |    4 -
 arch/nios2/include/asm/system.h                    |    4 -
 arch/nios2/lib/board.c                             |    4 -
 arch/nios2/lib/bootm.c                             |    4 -
 arch/nios2/lib/clock.c                             |    4 -
 arch/nios2/lib/early_printf.c                      |    4 -
 arch/nios2/lib/longlong.h                          |    7 +-
 arch/openrisc/Makefile                             |    4 -
 arch/openrisc/cpu/barebox.lds.S                    |    4 -
 arch/openrisc/cpu/cache.c                          |    4 -
 arch/openrisc/cpu/cpu.c                            |    4 -
 arch/openrisc/cpu/exceptions.c                     |    4 -
 arch/openrisc/cpu/start.S                          |    4 -
 arch/openrisc/include/asm/bitops.h                 |    4 -
 arch/openrisc/include/asm/cache.h                  |    4 -
 arch/openrisc/include/asm/io.h                     |    4 -
 arch/openrisc/include/asm/openrisc_exc.h           |    4 -
 arch/openrisc/include/asm/system.h                 |    4 -
 arch/openrisc/include/asm/types.h                  |    4 -
 arch/openrisc/lib/Makefile                         |    1 +
 arch/openrisc/lib/ashrdi3.S                        |   59 +
 arch/openrisc/lib/board.c                          |    4 -
 arch/openrisc/lib/clock.c                          |    4 -
 arch/openrisc/lib/cpuinfo.c                        |    4 -
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S   |    4 -
 arch/ppc/boards/freescale-p2020rdb/config.h        |    4 -
 arch/ppc/boards/freescale-p2020rdb/law.c           |    4 -
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |    4 -
 arch/ppc/boards/freescale-p2020rdb/tlb.c           |    4 -
 arch/ppc/boards/pcm030/barebox.lds.S               |    4 -
 arch/ppc/boards/pcm030/config.h                    |    4 -
 arch/ppc/boards/pcm030/mt46v32m16-75.h             |    4 -
 arch/ppc/boards/pcm030/pcm030.c                    |    9 +-
 arch/ppc/configs/pcm030_defconfig                  |    3 +-
 arch/ppc/cpu-85xx/fixed_ivor.S                     |    4 -
 arch/ppc/cpu-85xx/start.S                          |    4 -
 arch/ppc/cpu-85xx/tlb.c                            |    4 -
 arch/ppc/cpu-85xx/traps.c                          |    4 -
 arch/ppc/include/asm/barebox.h                     |    4 -
 arch/ppc/include/asm/config.h                      |    4 -
 arch/ppc/include/asm/ppc_asm.tmpl                  |    4 -
 arch/ppc/include/asm/ppc_defs.h                    |    4 -
 arch/ppc/lib/bat_rw.c                              |    4 -
 arch/ppc/lib/board.c                               |    4 -
 arch/ppc/lib/crtsavres.S                           |    5 -
 arch/ppc/lib/extable.c                             |    4 -
 arch/ppc/lib/module.c                              |    3 -
 arch/ppc/lib/reloc.S                               |    4 -
 arch/ppc/lib/ticks.S                               |    4 -
 arch/ppc/mach-mpc5xxx/cpu.c                        |    4 -
 arch/ppc/mach-mpc5xxx/cpu_init.c                   |    4 -
 arch/ppc/mach-mpc5xxx/include/mach/fec.h           |   14 -
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h       |    4 -
 arch/ppc/mach-mpc5xxx/io.S                         |    4 -
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c                |    4 -
 arch/ppc/mach-mpc5xxx/speed.c                      |    4 -
 arch/ppc/mach-mpc5xxx/start.S                      |    4 -
 arch/ppc/mach-mpc5xxx/time.c                       |    4 -
 arch/ppc/mach-mpc5xxx/traps.c                      |    4 -
 arch/ppc/mach-mpc85xx/cpu.c                        |    4 -
 arch/ppc/mach-mpc85xx/cpu_init.c                   |    4 -
 arch/ppc/mach-mpc85xx/cpuid.c                      |    4 -
 arch/ppc/mach-mpc85xx/fsl_law.c                    |    4 -
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |    4 -
 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h  |    4 -
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |    4 -
 arch/ppc/mach-mpc85xx/speed.c                      |    4 -
 arch/ppc/mach-mpc85xx/time.c                       |    4 -
 arch/sandbox/Kconfig                               |    3 +
 arch/sandbox/Makefile                              |    9 +-
 arch/sandbox/board/board.c                         |   26 +-
 arch/sandbox/board/clock.c                         |    3 -
 arch/sandbox/board/console.c                       |    3 -
 arch/sandbox/board/devices.c                       |    2 +-
 arch/sandbox/board/hostfile.c                      |    5 +-
 arch/sandbox/configs/sandbox_defconfig             |    3 +-
 arch/sandbox/include/asm/posix_types.h             |   14 +
 arch/sandbox/include/asm/processor.h               |    4 -
 arch/sandbox/include/asm/unaligned.h               |    2 +-
 arch/sandbox/mach-sandbox/include/mach/linux.h     |   14 +
 arch/sandbox/os/Makefile                           |    2 +
 arch/sandbox/os/common.c                           |   54 +-
 arch/sandbox/os/sdl.c                              |  108 +
 arch/sandbox/os/tap.c                              |    3 -
 arch/x86/boards/x86_generic/config.h               |    4 -
 arch/x86/boards/x86_generic/generic_pc.c           |    4 -
 arch/x86/boot/boot_hdisk.S                         |    4 -
 arch/x86/boot/boot_main.S                          |    4 -
 arch/x86/boot/main_entry.c                         |    4 -
 arch/x86/include/asm/barebox.h                     |    4 -
 arch/x86/include/asm/bitops.h                      |    4 -
 arch/x86/include/asm/byteorder.h                   |    4 -
 arch/x86/include/asm/common.h                      |    4 -
 arch/x86/include/asm/elf.h                         |    4 -
 arch/x86/include/asm/modes.h                       |    4 -
 arch/x86/include/asm/module.h                      |    4 -
 arch/x86/include/asm/posix_types.h                 |    4 -
 arch/x86/include/asm/segment.h                     |    4 -
 arch/x86/include/asm/string.h                      |    4 -
 arch/x86/include/asm/syslib.h                      |    4 -
 arch/x86/include/asm/types.h                       |    4 -
 arch/x86/lib/barebox.lds.S                         |    4 -
 arch/x86/lib/bios_disk.S                           |    4 -
 arch/x86/lib/gdt.c                                 |    4 -
 arch/x86/lib/linux_start.S                         |    4 -
 arch/x86/lib/memory.c                              |    4 -
 arch/x86/lib/memory16.S                            |    4 -
 arch/x86/lib/traveler.S                            |    4 -
 arch/x86/mach-i386/generic.c                       |    4 -
 arch/x86/mach-i386/include/mach/barebox.lds.h      |    4 -
 arch/x86/mach-i386/pit_timer.c                     |    4 -
 arch/x86/mach-i386/reset.c                         |    4 -
 commands/Kconfig                                   |   89 +-
 commands/Makefile                                  |    4 +-
 commands/automount.c                               |    6 +-
 commands/bmp.c                                     |  221 -
 commands/bootm.c                                   |   29 +-
 commands/cat.c                                     |    3 -
 commands/cd.c                                      |    3 -
 commands/clear.c                                   |    3 -
 commands/clk.c                                     |  144 +
 commands/cp.c                                      |    3 -
 commands/crc.c                                     |    3 -
 commands/dfu.c                                     |    3 -
 commands/digest.c                                  |    3 -
 commands/echo.c                                    |   15 +-
 commands/edit.c                                    |    3 -
 commands/exec.c                                    |    3 -
 commands/export.c                                  |    3 -
 commands/false.c                                   |    4 -
 commands/flash.c                                   |    4 -
 commands/global.c                                  |   54 +-
 commands/go.c                                      |    4 -
 commands/gpio.c                                    |    4 -
 commands/help.c                                    |    4 -
 commands/i2c.c                                     |    4 -
 commands/iomem.c                                   |    4 -
 commands/led.c                                     |    4 -
 commands/linux16.c                                 |    4 -
 commands/linux_exec.c                              |    3 -
 commands/loadb.c                                   |    4 -
 commands/loadenv.c                                 |    3 -
 commands/loads.c                                   |    4 -
 commands/login.c                                   |    3 -
 commands/ls.c                                      |    3 -
 commands/mem.c                                     |    6 +-
 commands/meminfo.c                                 |    3 -
 commands/memtest.c                                 |    4 -
 commands/menu.c                                    |    4 -
 commands/mkdir.c                                   |    3 -
 commands/mount.c                                   |   22 +-
 commands/nand.c                                    |    3 -
 commands/nandtest.c                                |    3 -
 commands/net.c                                     |    4 -
 commands/oftree.c                                  |   31 +-
 commands/partition.c                               |    3 -
 commands/passwd.c                                  |    3 -
 commands/printenv.c                                |    3 -
 commands/pwd.c                                     |    3 -
 commands/readline.c                                |    4 -
 commands/reginfo.c                                 |    3 -
 commands/reset.c                                   |    3 -
 commands/rm.c                                      |    3 -
 commands/saveenv.c                                 |    3 -
 commands/setenv.c                                  |    3 -
 commands/sleep.c                                   |    3 -
 commands/splash.c                                  |  103 +
 commands/test.c                                    |    3 -
 commands/tftp.c                                    |  103 +
 commands/timeout.c                                 |    3 -
 commands/trigger.c                                 |    4 -
 commands/true.c                                    |    4 -
 commands/umount.c                                  |    3 -
 commands/uncompress.c                              |    3 -
 commands/usb.c                                     |    3 -
 commands/usbserial.c                               |    3 -
 commands/version.c                                 |    4 -
 common/Kconfig                                     |    8 +-
 common/Makefile                                    |   38 +-
 common/block.c                                     |    3 -
 common/bootargs.c                                  |    3 -
 common/clock.c                                     |    3 -
 common/command.c                                   |    6 +-
 common/complete.c                                  |    3 -
 common/console.c                                   |    6 +-
 common/date.c                                      |    4 -
 common/digest.c                                    |    4 -
 common/env.c                                       |    3 -
 common/environment.c                               |    3 -
 common/filetype.c                                  |   81 +-
 common/globalvar.c                                 |   10 +
 common/hush.c                                      |    3 -
 common/image.c                                     |    6 +-
 common/meminfo.c                                   |   23 +
 common/memory.c                                    |    3 -
 common/memsize.c                                   |    4 -
 common/menu.c                                      |    4 -
 common/misc.c                                      |    3 -
 common/module.c                                    |    3 -
 common/module.lds.S                                |    4 -
 common/oftree.c                                    |    4 +-
 common/partitions.c                                |   12 +-
 common/password.c                                  |    3 -
 common/resource.c                                  |    4 -
 common/s_record.c                                  |    4 -
 common/startup.c                                   |   27 +-
 common/tlsf_malloc.c                               |    3 -
 common/uimage.c                                    |    8 +-
 crypto/sha1.c                                      |    5 -
 crypto/sha2.c                                      |    3 -
 defaultenv-2/base/bin/boot                         |    6 +-
 defaultenv-2/base/bin/bootargs-ip                  |    4 +-
 defaultenv-2/base/bin/bootargs-ip-barebox          |    2 +-
 defaultenv-2/base/bin/bootargs-ip-dhcp             |    2 +-
 defaultenv-2/base/bin/bootargs-ip-none             |    2 +-
 defaultenv-2/base/bin/bootargs-root-disk           |    2 +-
 defaultenv-2/base/bin/bootargs-root-ext            |    2 +-
 defaultenv-2/base/bin/bootargs-root-initrd         |    2 +-
 defaultenv-2/base/bin/bootargs-root-jffs2          |    2 +-
 defaultenv-2/base/bin/bootargs-root-nfs            |    2 +-
 defaultenv-2/base/bin/bootargs-root-ubi            |    2 +-
 defaultenv-2/base/bin/init                         |    5 +-
 defaultenv-2/base/boot/initrd                      |    2 +-
 defaultenv-2/base/data/ansi-colors                 |    4 +
 defaultenv-2/base/init/general                     |    2 +-
 defaultenv-2/base/network/eth0                     |    1 +
 defaultenv-2/menu/menu/boot-menu-add-entry         |    2 +-
 defaultenv-2/menu/menu/mainmenu                    |    4 +-
 defaultenv/bin/boot                                |   12 +-
 defaultenv/bin/init                                |    2 +
 defaultenv/config                                  |   18 +-
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    2 +
 drivers/amba/Makefile                              |    2 +
 drivers/amba/bus.c                                 |  217 +
 drivers/ata/disk_bios_drive.c                      |    6 +-
 drivers/ata/intf_platform_ide.c                    |    2 +-
 drivers/base/Makefile                              |    1 +
 drivers/base/bus.c                                 |   37 +
 drivers/base/driver.c                              |   71 +-
 drivers/base/platform.c                            |   53 +-
 drivers/base/resource.c                            |    6 +-
 drivers/clk/Kconfig                                |    3 +
 drivers/clk/Makefile                               |    2 +-
 drivers/clk/clk-divider.c                          |   98 +
 drivers/clk/clk-fixed-factor.c                     |   63 +
 drivers/clk/clk-fixed.c                            |   55 +
 drivers/clk/clk-mux.c                              |   77 +
 drivers/clk/clk.c                                  |  224 +
 drivers/clk/clkdev.c                               |   55 +
 drivers/eeprom/at25.c                              |    2 +-
 drivers/gpio/gpio-stmpe.c                          |    4 +-
 drivers/i2c/busses/i2c-imx.c                       |   17 +-
 drivers/i2c/busses/i2c-omap.c                      |    6 +-
 drivers/i2c/i2c.c                                  |   30 +
 drivers/input/gpio_keys.c                          |    2 +-
 drivers/input/imx_keypad.c                         |    2 +-
 drivers/led/core.c                                 |    4 -
 drivers/led/led-gpio.c                             |    4 -
 drivers/led/led-triggers.c                         |    4 -
 drivers/mci/atmel_mci.c                            |    2 +-
 drivers/mci/imx-esdhc.c                            |   42 +-
 drivers/mci/imx-esdhc.h                            |    4 -
 drivers/mci/imx.c                                  |   17 +-
 drivers/mci/mci-core.c                             |   10 +-
 drivers/mci/mci_spi.c                              |   13 +-
 drivers/mci/mxs.c                                  |    6 +-
 drivers/mci/omap_hsmmc.c                           |    6 +-
 drivers/mci/pxamci.c                               |    2 +-
 drivers/mci/s3c.c                                  |    6 +-
 drivers/mfd/lp3972.c                               |    6 +-
 drivers/mfd/mc13xxx.c                              |   44 +-
 drivers/mfd/mc34704.c                              |    8 +-
 drivers/mfd/mc34708.c                              |   33 +-
 drivers/mfd/mc9sdz60.c                             |    6 +-
 drivers/mfd/stmpe-i2c.c                            |    6 +-
 drivers/mfd/twl4030.c                              |    2 +-
 drivers/mfd/twl6030.c                              |    2 +-
 drivers/misc/Kconfig                               |    1 +
 drivers/misc/jtag.c                                |    6 +-
 drivers/mtd/core.c                                 |    3 +-
 drivers/mtd/devices/docg3.c                        |    2 +-
 drivers/mtd/mtdraw.c                               |    4 +-
 drivers/mtd/nand/Kconfig                           |    1 +
 drivers/mtd/nand/atmel_nand.c                      |    2 +-
 drivers/mtd/nand/nand-bb.c                         |    3 -
 drivers/mtd/nand/nand_base.c                       |   97 +-
 drivers/mtd/nand/nand_ids.c                        |   30 +
 drivers/mtd/nand/nand_imx.c                        |    5 +-
 drivers/mtd/nand/nand_mxs.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |    5 +-
 drivers/mtd/nand/nomadik_nand.c                    |    2 +-
 drivers/mtd/ubi/build.c                            |    5 +-
 drivers/mtd/ubi/cdev.c                             |    2 +-
 drivers/mtd/ubi/debug.c                            |    3 -
 drivers/mtd/ubi/debug.h                            |    3 -
 drivers/mtd/ubi/eba.c                              |    3 -
 drivers/mtd/ubi/io.c                               |    3 -
 drivers/mtd/ubi/kapi.c                             |    3 -
 drivers/mtd/ubi/misc.c                             |    3 -
 drivers/mtd/ubi/scan.c                             |    3 -
 drivers/mtd/ubi/scan.h                             |    3 -
 drivers/mtd/ubi/ubi-media.h                        |    3 -
 drivers/mtd/ubi/ubi.h                              |    3 -
 drivers/mtd/ubi/upd.c                              |    3 -
 drivers/mtd/ubi/vmt.c                              |    3 -
 drivers/mtd/ubi/vtbl.c                             |    3 -
 drivers/mtd/ubi/wl.c                               |    3 -
 drivers/net/Kconfig                                |   42 +-
 drivers/net/Makefile                               |    4 +-
 drivers/net/altera_tse.c                           |   54 +-
 drivers/net/altera_tse.h                           |    3 +-
 drivers/net/at91_ether.c                           |   55 +-
 drivers/net/cs8900.c                               |    2 +-
 drivers/net/davinci_emac.c                         |  618 ++
 drivers/net/davinci_emac.h                         |  289 +
 drivers/net/designware.c                           |   84 +-
 drivers/net/dm9k.c                                 |   52 +-
 drivers/net/ep93xx.c                               |   37 +-
 drivers/net/ep93xx.h                               |    6 +-
 drivers/net/fec_imx.c                              |  134 +-
 drivers/net/fec_imx.h                              |   11 +-
 drivers/net/fec_mpc5200.c                          |   60 +-
 drivers/net/fec_mpc5200.h                          |    4 +-
 drivers/net/gianfar.c                              |   64 +-
 drivers/net/gianfar.h                              |    2 +-
 drivers/net/ks8851_mll.c                           |   42 +-
 drivers/net/ksz8864rmn.c                           |  191 +
 drivers/net/macb.c                                 |   84 +-
 drivers/net/macb.h                                 |    4 -
 drivers/net/miidev.c                               |  316 --
 drivers/net/netx_eth.c                             |   28 +-
 drivers/net/phy/Kconfig                            |   22 +
 drivers/net/phy/Makefile                           |    3 +
 drivers/net/phy/generic.c                          |   36 +
 drivers/net/phy/mdio_bus.c                         |  248 +
 drivers/net/phy/phy.c                              |  595 ++
 drivers/net/phy/smsc.c                             |  146 +
 drivers/net/smc91111.c                             |   53 +-
 drivers/net/smc911x.c                              |   43 +-
 drivers/net/tap.c                                  |    5 +-
 drivers/net/usb/Kconfig                            |    4 +-
 drivers/net/usb/asix.c                             |   85 +-
 drivers/net/usb/smsc95xx.c                         |   45 +-
 drivers/net/usb/smsc95xx.h                         |    4 -
 drivers/net/usb/usbnet.c                           |   11 +-
 drivers/nor/cfi_flash.c                            |   41 +-
 drivers/nor/cfi_flash.h                            |    6 -
 drivers/nor/m25p80.c                               |   76 +-
 drivers/nor/m25p80.h                               |    2 +-
 drivers/of/Kconfig                                 |    2 +
 drivers/of/Makefile                                |    3 +
 drivers/of/base.c                                  |  805 +++
 drivers/of/gpio.c                                  |   28 +
 drivers/of/partition.c                             |   64 +
 drivers/pwm/core.c                                 |    4 -
 drivers/pwm/pxa_pwm.c                              |    2 +-
 drivers/serial/amba-pl011.c                        |   78 +-
 drivers/serial/arm_dcc.c                           |    7 +-
 drivers/serial/atmel.c                             |    5 +-
 drivers/serial/linux_console.c                     |    5 +-
 drivers/serial/serial_altera.c                     |    6 +-
 drivers/serial/serial_altera_jtag.c                |    6 +-
 drivers/serial/serial_blackfin.c                   |    6 +-
 drivers/serial/serial_imx.c                        |   48 +-
 drivers/serial/serial_mpc5xxx.c                    |    6 +-
 drivers/serial/serial_netx.c                       |    6 +-
 drivers/serial/serial_ns16550.c                    |    8 +-
 drivers/serial/serial_pl010.c                      |    6 +-
 drivers/serial/serial_pl010.h                      |    4 -
 drivers/serial/serial_pxa.c                        |    2 +-
 drivers/serial/serial_s3c.c                        |    5 +-
 drivers/serial/stm-serial.c                        |    5 +-
 drivers/spi/Kconfig                                |    6 +
 drivers/spi/Makefile                               |    1 +
 drivers/spi/altera_spi.c                           |    6 +-
 drivers/spi/atmel_spi.c                            |    6 +-
 drivers/spi/imx_spi.c                              |   77 +-
 drivers/spi/omap3_spi.c                            |  399 ++
 drivers/spi/omap3_spi.h                            |   94 +
 drivers/spi/spi.c                                  |   65 +-
 drivers/usb/core/usb.c                             |    9 +-
 drivers/usb/gadget/at91_udc.c                      |    2 +-
 drivers/usb/gadget/composite.c                     |    3 -
 drivers/usb/gadget/dfu.c                           |    4 -
 drivers/usb/gadget/epautoconf.c                    |    3 -
 drivers/usb/gadget/fsl_udc.c                       |    2 +-
 drivers/usb/gadget/pxa27x_udc.c                    |    5 +-
 drivers/usb/gadget/pxa27x_udc.h                    |    4 -
 drivers/usb/host/ehci-core.h                       |    4 -
 drivers/usb/host/ehci-hcd.c                        |    6 +-
 drivers/usb/host/ehci.h                            |    4 -
 drivers/usb/host/ohci-at91.c                       |    6 +-
 drivers/usb/host/ohci-hcd.c                        |    6 +-
 drivers/usb/otg/twl4030.c                          |    4 -
 drivers/usb/otg/ulpi.c                             |    5 -
 drivers/usb/storage/transport.c                    |    4 -
 drivers/usb/storage/transport.h                    |    4 -
 drivers/usb/storage/usb.c                          |    4 -
 drivers/usb/storage/usb.h                          |    4 -
 drivers/video/Kconfig                              |    4 +
 drivers/video/Makefile                             |    1 +
 drivers/video/fb.c                                 |   52 +-
 drivers/video/imx-ipu-fb.c                         |   16 +-
 drivers/video/imx.c                                |   12 +-
 drivers/video/pxa.c                                |    7 +-
 drivers/video/s3c24xx.c                            |    6 +-
 drivers/video/sdl.c                                |  101 +
 drivers/video/stm.c                                |    2 +-
 drivers/watchdog/im28wd.c                          |    2 +-
 fs/devfs-core.c                                    |    4 +-
 fs/devfs.c                                         |    3 -
 fs/fat/fat.c                                       |    3 -
 fs/fat/ff.c                                        |   37 +-
 fs/fs.c                                            |    9 +-
 fs/nfs.c                                           |    3 -
 fs/ramfs.c                                         |    3 -
 fs/tftp.c                                          |   15 +-
 include/command.h                                  |    4 -
 include/common.h                                   |    8 +-
 include/console.h                                  |    4 -
 include/debug_ll.h                                 |    6 -
 include/digest.h                                   |    4 -
 include/driver.h                                   |   52 +-
 include/environment.h                              |   10 +-
 include/fb.h                                       |    2 +
 include/fec.h                                      |    7 +-
 include/filetype.h                                 |   20 +
 include/getopt.h                                   |    3 -
 include/globalvar.h                                |   23 +
 include/gui/graphic_utils.h                        |   24 +
 include/gui/gui.h                                  |   38 +
 include/gui/image.h                                |   20 +
 include/gui/image_renderer.h                       |   74 +
 include/i2c/i2c.h                                  |    8 +
 include/image.h                                    |    9 +-
 include/kfifo.h                                    |    5 -
 include/linux/amba/bus.h                           |  153 +
 include/linux/amba/serial.h                        |   32 +-
 include/linux/clk.h                                |   42 +
 include/linux/clkdev.h                             |    3 +
 include/linux/err.h                                |    5 +
 include/linux/ethtool.h                            |  114 +
 include/linux/mii.h                                |  421 +-
 include/linux/mtd/ubi.h                            |    3 -
 include/linux/phy.h                                |  270 +
 include/linux/rbtree.h                             |    3 -
 include/linux/smscphy.h                            |   25 +
 include/mci.h                                      |    4 -
 include/menu.h                                     |    4 -
 include/miidev.h                                   |   77 -
 include/mtd/ubi-user.h                             |    3 -
 include/net.h                                      |    6 +-
 include/net/davinci_emac.h                         |   10 +
 include/net/designware.h                           |    2 +-
 include/ns16550.h                                  |    4 -
 include/of.h                                       |  113 +
 include/part.h                                     |    4 -
 include/password.h                                 |    3 -
 include/rtc.h                                      |    4 -
 include/s_record.h                                 |    4 -
 include/scsi.h                                     |    4 -
 include/sizes.h                                    |    4 -
 include/spi/spi.h                                  |   13 +
 include/ubi-media.h                                |    3 -
 include/usb/composite.h                            |    4 -
 include/usb/dfu.h                                  |    3 -
 include/usb/usb.h                                  |    4 -
 include/usb/usb_defs.h                             |    4 -
 include/usb/usbnet.h                               |    8 +-
 lib/Kconfig                                        |    2 +
 lib/Makefile                                       |    1 +
 lib/ctype.c                                        |    4 -
 lib/decompress_unlzo.c                             |    5 -
 lib/display_options.c                              |    4 -
 lib/getopt.c                                       |    3 -
 lib/gui/Kconfig                                    |   39 +
 lib/gui/Makefile                                   |    5 +
 lib/gui/bmp.c                                      |  134 +
 {include =3D> lib/gui}/bmp_layout.h                  |   15 +-
 lib/gui/graphic_utils.c                            |  252 +
 lib/gui/image_renderer.c                           |   95 +
 lib/gui/lodepng.c                                  | 5928 ++++++++++++++++=
++++
 lib/gui/lodepng.h                                  | 1640 ++++++
 lib/gui/picopng.c                                  |  810 +++
 lib/gui/picopng.h                                  |   34 +
 lib/gui/png.c                                      |   86 +
 lib/gui/png.h                                      |   21 +
 lib/gui/png_lode.c                                 |   90 +
 lib/gui/png_pico.c                                 |   85 +
 lib/kfifo.c                                        |    5 -
 lib/libbb.c                                        |    1 -
 lib/libgen.c                                       |    3 -
 lib/misc.c                                         |    3 -
 lib/parameter.c                                    |    4 +-
 lib/process_escape_sequence.c                      |    3 -
 lib/rbtree.c                                       |    3 -
 lib/readkey.c                                      |    3 -
 lib/show_progress.c                                |    3 -
 lib/uncompress.c                                   |    3 -
 lib/xfuncs.c                                       |    3 -
 logo/LICENCE                                       |   22 +
 logo/png24/100x100/color/barebox.png               |  Bin 0 -> 22724 bytes
 logo/png24/100x100/white/barebox.png               |  Bin 0 -> 12053 bytes
 logo/png24/200x200/color/barebox.png               |  Bin 0 -> 71557 bytes
 logo/png24/200x200/white/barebox.png               |  Bin 0 -> 31132 bytes
 logo/png24/400x400/color/barebox.png               |  Bin 0 -> 217170 bytes
 logo/png24/400x400/white/barebox.png               |  Bin 0 -> 78591 bytes
 logo/png24/600x600/color/barebox.png               |  Bin 0 -> 406788 bytes
 logo/png24/600x600/while/barebox.png               |  Bin 0 -> 137235 bytes
 logo/png24/800x800/color/barebox.png               |  Bin 0 -> 627433 bytes
 logo/png24/800x800/white/barebox.png               |  Bin 0 -> 210397 bytes
 logo/png8/100x100/color/blackbg/barebox.png        |  Bin 0 -> 8279 bytes
 logo/png8/100x100/white/blackbg/barebox.png        |  Bin 0 -> 6089 bytes
 logo/png8/200x200/color/blackbg/barebox.png        |  Bin 0 -> 23616 bytes
 logo/png8/200x200/white/blackbg/barebox.png        |  Bin 0 -> 14838 bytes
 logo/png8/400x400/color/blackbg/barebox.png        |  Bin 0 -> 71295 bytes
 logo/png8/400x400/white/blackbg/barebox.png        |  Bin 0 -> 38480 bytes
 logo/png8/600x600/color/blackbg/barebox.png        |  Bin 0 -> 130709 bytes
 logo/png8/600x600/while/blackbg/barebox.png        |  Bin 0 -> 68648 bytes
 logo/png8/800x800/color/blackbg/barebox.png        |  Bin 0 -> 205281 bytes
 logo/png8/800x800/white/blackbg/barebox.png        |  Bin 0 -> 104173 bytes
 net/Kconfig                                        |    8 -
 net/Makefile                                       |    1 -
 net/dhcp.c                                         |  167 +-
 net/eth.c                                          |   82 +-
 net/net.c                                          |   21 +-
 net/netconsole.c                                   |    3 -
 net/rarp.h                                         |    4 -
 net/tftp.c                                         |  412 --
 net/tftp.h                                         |   18 -
 pbl/misc.c                                         |    5 +
 scripts/.gitignore                                 |    1 +
 scripts/Makefile                                   |    2 +-
 scripts/Makefile.build                             |    4 +-
 scripts/bareboxenv.c                               |   18 +-
 scripts/genenv                                     |   23 +-
 scripts/kconfig/lxdialog/checklist.c               |    4 -
 scripts/kconfig/lxdialog/dialog.h                  |    4 -
 scripts/kconfig/lxdialog/inputbox.c                |    4 -
 scripts/kconfig/lxdialog/menubox.c                 |    4 -
 scripts/kconfig/lxdialog/textbox.c                 |    4 -
 scripts/kconfig/lxdialog/util.c                    |    4 -
 scripts/kconfig/lxdialog/yesno.c                   |    4 -
 scripts/kconfig/zconf.tab.c_shipped                |    5 +-
 scripts/mk-am35xx-spi-image.c                      |  139 +
 scripts/mkimage.c                                  |    4 -
 scripts/omap_signGP.c                              |    3 -
 scripts/s5p_cksum.c                                |    4 -
 scripts/setupmbr/setupmbr.c                        |    4 -
 1077 files changed, 23738 insertions(+), 8787 deletions(-)
 create mode 100644 arch/arm/boards/imx233-olinuxino/Makefile
 create mode 100644 arch/arm/boards/imx233-olinuxino/config.h
 create mode 100644 arch/arm/boards/imx233-olinuxino/env/bin/boot
 create mode 100644 arch/arm/boards/imx233-olinuxino/env/bin/init
 create mode 100644 arch/arm/boards/imx233-olinuxino/env/config
 create mode 100644 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
 create mode 100644 arch/arm/boards/karo-tx53/Makefile
 create mode 100644 arch/arm/boards/karo-tx53/board.c
 create mode 100644 arch/arm/boards/karo-tx53/config.h
 create mode 100644 arch/arm/boards/karo-tx53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/karo-tx53/env/init/hostname
 create mode 100644 arch/arm/boards/karo-tx53/flash_header.c
 create mode 100644 arch/arm/configs/imx233-olinuxino_defconfig
 create mode 100644 arch/arm/configs/tx53stk5_defconfig
 delete mode 100644 arch/arm/cpu/start-reset.c
 create mode 100644 arch/arm/lib/runtime-offset.S
 create mode 100644 arch/arm/mach-imx/clk-imx1.c
 create mode 100644 arch/arm/mach-imx/clk-imx21.c
 create mode 100644 arch/arm/mach-imx/clk-imx25.c
 create mode 100644 arch/arm/mach-imx/clk-imx27.c
 create mode 100644 arch/arm/mach-imx/clk-imx31.c
 create mode 100644 arch/arm/mach-imx/clk-imx35.c
 create mode 100644 arch/arm/mach-imx/clk-imx5.c
 create mode 100644 arch/arm/mach-imx/clk-imx6.c
 create mode 100644 arch/arm/mach-imx/clk-pfd.c
 rename arch/arm/mach-imx/{speed.c =3D> clk-pllv1.c} (53%)
 create mode 100644 arch/arm/mach-imx/clk-pllv2.c
 create mode 100644 arch/arm/mach-imx/clk-pllv3.c
 create mode 100644 arch/arm/mach-imx/clk.h
 delete mode 100644 arch/arm/mach-imx/clko.c
 create mode 100644 arch/arm/mach-imx/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-imx/include/mach/weim.h
 delete mode 100644 arch/arm/mach-imx/speed-imx1.c
 delete mode 100644 arch/arm/mach-imx/speed-imx21.c
 delete mode 100644 arch/arm/mach-imx/speed-imx25.c
 delete mode 100644 arch/arm/mach-imx/speed-imx27.c
 delete mode 100644 arch/arm/mach-imx/speed-imx31.c
 delete mode 100644 arch/arm/mach-imx/speed-imx35.c
 delete mode 100644 arch/arm/mach-imx/speed-imx51.c
 delete mode 100644 arch/arm/mach-imx/speed-imx53.c
 delete mode 100644 arch/arm/mach-imx/speed-imx6.c
 create mode 100644 arch/arm/mach-omap/include/mach/emac_defs.h
 create mode 100644 arch/arm/mach-omap/include/mach/mcspi.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap3-devices.h
 create mode 100644 arch/openrisc/lib/ashrdi3.S
 delete mode 100644 arch/ppc/mach-mpc5xxx/include/mach/fec.h
 create mode 100644 arch/sandbox/os/sdl.c
 delete mode 100644 commands/bmp.c
 create mode 100644 commands/clk.c
 create mode 100644 commands/splash.c
 create mode 100644 commands/tftp.c
 create mode 100644 common/meminfo.c
 create mode 100644 drivers/amba/Makefile
 create mode 100644 drivers/amba/bus.c
 create mode 100644 drivers/base/bus.c
 create mode 100644 drivers/clk/clk-divider.c
 create mode 100644 drivers/clk/clk-fixed-factor.c
 create mode 100644 drivers/clk/clk-fixed.c
 create mode 100644 drivers/clk/clk-mux.c
 create mode 100644 drivers/clk/clk.c
 create mode 100644 drivers/net/davinci_emac.c
 create mode 100644 drivers/net/davinci_emac.h
 create mode 100644 drivers/net/ksz8864rmn.c
 delete mode 100644 drivers/net/miidev.c
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 create mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/mdio_bus.c
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 drivers/net/phy/smsc.c
 create mode 100644 drivers/of/Kconfig
 create mode 100644 drivers/of/Makefile
 create mode 100644 drivers/of/base.c
 create mode 100644 drivers/of/gpio.c
 create mode 100644 drivers/of/partition.c
 create mode 100644 drivers/spi/omap3_spi.c
 create mode 100644 drivers/spi/omap3_spi.h
 create mode 100644 drivers/video/sdl.c
 create mode 100644 include/gui/graphic_utils.h
 create mode 100644 include/gui/gui.h
 create mode 100644 include/gui/image.h
 create mode 100644 include/gui/image_renderer.h
 create mode 100644 include/linux/amba/bus.h
 create mode 100644 include/linux/ethtool.h
 create mode 100644 include/linux/phy.h
 create mode 100644 include/linux/smscphy.h
 delete mode 100644 include/miidev.h
 create mode 100644 include/net/davinci_emac.h
 create mode 100644 lib/gui/Kconfig
 create mode 100644 lib/gui/Makefile
 create mode 100644 lib/gui/bmp.c
 rename {include =3D> lib/gui}/bmp_layout.h (84%)
 create mode 100644 lib/gui/graphic_utils.c
 create mode 100644 lib/gui/image_renderer.c
 create mode 100644 lib/gui/lodepng.c
 create mode 100644 lib/gui/lodepng.h
 create mode 100644 lib/gui/picopng.c
 create mode 100644 lib/gui/picopng.h
 create mode 100644 lib/gui/png.c
 create mode 100644 lib/gui/png.h
 create mode 100644 lib/gui/png_lode.c
 create mode 100644 lib/gui/png_pico.c
 create mode 100644 logo/LICENCE
 create mode 100644 logo/png24/100x100/color/barebox.png
 create mode 100644 logo/png24/100x100/white/barebox.png
 create mode 100644 logo/png24/200x200/color/barebox.png
 create mode 100644 logo/png24/200x200/white/barebox.png
 create mode 100644 logo/png24/400x400/color/barebox.png
 create mode 100644 logo/png24/400x400/white/barebox.png
 create mode 100644 logo/png24/600x600/color/barebox.png
 create mode 100644 logo/png24/600x600/while/barebox.png
 create mode 100644 logo/png24/800x800/color/barebox.png
 create mode 100644 logo/png24/800x800/white/barebox.png
 create mode 100644 logo/png8/100x100/color/blackbg/barebox.png
 create mode 100644 logo/png8/100x100/white/blackbg/barebox.png
 create mode 100644 logo/png8/200x200/color/blackbg/barebox.png
 create mode 100644 logo/png8/200x200/white/blackbg/barebox.png
 create mode 100644 logo/png8/400x400/color/blackbg/barebox.png
 create mode 100644 logo/png8/400x400/white/blackbg/barebox.png
 create mode 100644 logo/png8/600x600/color/blackbg/barebox.png
 create mode 100644 logo/png8/600x600/while/blackbg/barebox.png
 create mode 100644 logo/png8/800x800/color/blackbg/barebox.png
 create mode 100644 logo/png8/800x800/white/blackbg/barebox.png
 delete mode 100644 net/tftp.c
 delete mode 100644 net/tftp.h
 create mode 100644 scripts/mk-am35xx-spi-image.c

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
