Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGTHj-0002up-8U
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 11:26:43 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TGTHf-0002iA-S7
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 13:26:35 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TGTHf-0004zL-Qp
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 13:26:35 +0200
Date: Tue, 25 Sep 2012 13:26:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120925112635.GE1322@pengutronix.de>
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
Subject: next-stable tag
To: barebox@lists.infradead.org

Hi All,

I decided to create a next-stable tag to base further patches on until
the next release. So if your patches conflict to master please use this
tag as a base until the next release.

Here's what we've queued up so far:


The following changes since commit 1af6fdcd03dbc311d785625bd6e2329f7ce1adb7:

  ARM i.MX51 babbage: update defconfig (2012-09-21 10:33:52 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git tags/next-stable

for you to fetch changes up to 05b9f24e3ea4071f76ffc4157526946a1c2b1b96:

  Merge branch 'for-next/sandbox' into next (2012-09-25 10:20:03 +0200)

----------------------------------------------------------------

next-stable tag for adding more patches ontop

----------------------------------------------------------------
Alexander Aring (7):
      libbb: remove vi tabwidth setting
      commands: add testing menu
      commands: move nandtest to testing
      commands: move memtest to testing
      sandbox-unaligned: better usement of ifdef
      sandbox: fix posix_types
      sandbox: add missed case statement

Eric B=E9nard (1):
      miidev: fix 1G wrong detection

Fadil Berisha (1):
      boards: Add support for imx233-olinuxino board

Franck Jullien (5):
      Add __ashrdi3 and remove link to libgcc
      Add OpenRISC Image type
      Fix endianness error on be target
      filetype: Improve FAT detection
      fs/fat: Handle MBR on the first sector

Jan Luebbe (12):
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

Jan Weitzel (2):
      xload: get barebox size from barebox_arm_head
      pcm049 phycard l + xl2: update partion sizes

Jean-Christophe PLAGNIOL-VILLARD (35):
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
      defaultenv-2: add boot sequence
      defaultenv: enable glovalvar support
      defaultenv: switch hostname to global.hostname
      net: catch error on eth_send
      add barebox logo
      driver: register bus
      driver: search device and driver based on the bus instead of all
      fb: add it's own bus for fb devices
      net: introduce phylib
      dhcp: switch to global var support
      dhcp: add copy_only_if_valid support
      dhcp: add retries limit support
      defaultenv-2: eth0 add default global.dhcp.vendor_id
      sandbox: add sdl video support

Marcus Folkesson (1):
      mtd: nand: extend NAND flash detection to new MLC chips

Sascha Hauer (55):
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
      Merge branch 'for-next/driver' into next
      Merge branch 'for-next/net' into next
      Merge branch 'for-next/amba' into next
      Merge branch 'for-next/arm' into next
      Merge branch 'for-next/boot-sequence-dhcp' into next
      Merge branch 'for-next/fat-detection' into next
      Merge branch 'for-next/karo-tx53' into next
      Merge branch 'for-next/logo' into next
      Merge branch 'for-next/make' into next
      Merge branch 'for-next/misc' into next
      Merge branch 'for-next/mmc' into next
      Merge branch 'for-next/mtd' into next
      Merge branch 'for-next/mxs' into next
      Merge branch 'for-next/omap' into next
      Merge branch 'for-next/openrisc' into next
      Merge branch 'for-next/png' into next
      Merge branch 'for-next/remove-fsf-address' into next
      Merge branch 'for-next/sandbox' into next
      Merge branch 'for-next/spi' into next
      Merge branch 'for-next/testing-menu' into next
      ARM OMAP: remove SRAM stack
      ARM OMAP3: rename arch_init_lowlevel to board_init_lowlevel
      ARM: remove ARCH_HAS_LOWLEVEL_INIT
      Merge branch 'for-next/arm-remove-arch-init-ll' into next
      Merge branch 'for-next/sandbox' into next

Teresa G=E1mez (1):
      ARM OMAP: switch to gpiolib support

 Documentation/barebox-main.dox                     |    4 -
 Documentation/commands.dox                         |    2 +-
 Makefile                                           |   16 +-
 arch/arm/Kconfig                                   |    1 +
 arch/arm/Makefile                                  |   23 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    4 -
 arch/arm/boards/a9m2410/config.h                   |    4 -
 arch/arm/boards/a9m2440/a9m2410dev.c               |    4 -
 arch/arm/boards/a9m2440/a9m2440.c                  |    4 -
 arch/arm/boards/a9m2440/baseboards.h               |    4 -
 arch/arm/boards/a9m2440/config.h                   |    4 -
 arch/arm/boards/at91rm9200ek/env/config            |    2 +-
 arch/arm/boards/at91rm9200ek/init.c                |    4 -
 arch/arm/boards/at91sam9260ek/env/config           |    4 +-
 arch/arm/boards/at91sam9260ek/init.c               |    4 -
 arch/arm/boards/at91sam9260ek/lowlevel_init.S      |    4 -
 arch/arm/boards/at91sam9261ek/env/config           |    4 +-
 arch/arm/boards/at91sam9261ek/init.c               |    4 -
 arch/arm/boards/at91sam9263ek/env/config           |    2 +-
 arch/arm/boards/at91sam9263ek/init.c               |    4 -
 arch/arm/boards/at91sam9m10g45ek/env/config        |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    4 -
 arch/arm/boards/at91sam9x5ek/env/config            |    2 +-
 arch/arm/boards/at91sam9x5ek/init.c                |    4 -
 arch/arm/boards/beagle/board.c                     |    4 -
 arch/arm/boards/beagle/config.h                    |    4 -
 arch/arm/boards/chumby_falconwing/config.h         |    4 -
 arch/arm/boards/chumby_falconwing/env/config       |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |    4 -
 .../arm/boards/crystalfontz-cfa10036/env/boot.d/01 |    1 +
 .../arm/boards/crystalfontz-cfa10036/env/boot.d/02 |    1 +
 .../arm/boards/crystalfontz-cfa10036/env/boot.d/03 |    1 +
 .../boards/crystalfontz-cfa10036/env/init/general  |    3 -
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
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    4 -
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    4 -
 arch/arm/boards/eukrea_cpuimx27/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    4 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    4 -
 arch/arm/boards/eukrea_cpuimx35/Makefile           |    4 -
 arch/arm/boards/eukrea_cpuimx35/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx35/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    4 -
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    4 -
 arch/arm/boards/eukrea_cpuimx51/config.h           |    4 -
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx51/env/config         |   14 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    4 -
 arch/arm/boards/freescale-mx23-evk/config.h        |    4 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |    4 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    4 -
 arch/arm/boards/freescale-mx25-3-stack/Makefile    |    4 -
 arch/arm/boards/freescale-mx25-3-stack/config.h    |    4 -
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    4 -
 arch/arm/boards/freescale-mx28-evk/env/config      |   12 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    4 -
 .../freescale-mx35-3-stack/board-mx35_3stack.h     |    4 -
 arch/arm/boards/freescale-mx35-3-stack/config.h    |    4 -
 arch/arm/boards/freescale-mx35-3-stack/env/config  |   14 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    4 -
 arch/arm/boards/freescale-mx51-pdk/board.c         |    4 -
 arch/arm/boards/freescale-mx51-pdk/config.h        |    4 -
 arch/arm/boards/freescale-mx53-loco/config.h       |    4 -
 arch/arm/boards/freescale-mx53-loco/env/config     |   16 +-
 arch/arm/boards/freescale-mx53-smd/config.h        |    4 -
 arch/arm/boards/freescale-mx53-smd/env/config      |   14 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |   48 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   45 +-
 .../boards/freescale-mx6-sabrelite/env/boot.d/01   |    1 +
 .../boards/freescale-mx6-sabrelite/env/boot.d/02   |    1 +
 arch/arm/boards/friendlyarm-mini2440/config.h      |    4 -
 arch/arm/boards/friendlyarm-mini2440/env/config    |   14 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    4 -
 arch/arm/boards/guf-cupid/Makefile                 |    4 -
 arch/arm/boards/guf-cupid/board.c                  |    4 -
 arch/arm/boards/guf-cupid/config.h                 |    4 -
 arch/arm/boards/guf-cupid/env/config               |   14 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |    4 -
 arch/arm/boards/guf-neso/board.c                   |    4 -
 arch/arm/boards/guf-neso/config.h                  |    4 -
 arch/arm/boards/guf-neso/env/config                |   14 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    4 -
 arch/arm/boards/imx21ads/config.h                  |    4 -
 arch/arm/boards/imx21ads/imx21ads.c                |    4 -
 arch/arm/boards/imx21ads/lowlevel_init.S           |    4 -
 arch/arm/boards/imx233-olinuxino/Makefile          |    1 +
 arch/arm/boards/imx233-olinuxino/config.h          |   21 +
 arch/arm/boards/imx233-olinuxino/env/bin/boot      |   32 +
 arch/arm/boards/imx233-olinuxino/env/bin/init      |   15 +
 arch/arm/boards/imx233-olinuxino/env/config        |   42 +
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  254 +
 arch/arm/boards/imx27ads/config.h                  |    4 -
 arch/arm/boards/imx27ads/imx27ads.c                |    4 -
 arch/arm/boards/karo-tx25/Makefile                 |    4 -
 arch/arm/boards/karo-tx25/board.c                  |    4 -
 arch/arm/boards/karo-tx25/config.h                 |    4 -
 arch/arm/boards/karo-tx25/env/bin/init_board       |    2 +-
 arch/arm/boards/karo-tx25/env/config               |   14 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    4 -
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
 arch/arm/boards/netx/platform.S                    |    4 -
 arch/arm/boards/nhk8815/setup.c                    |    4 -
 arch/arm/boards/omap343xdsp/board.c                |    4 -
 arch/arm/boards/omap343xdsp/config.h               |    4 -
 arch/arm/boards/omap3evm/board.c                   |    4 -
 arch/arm/boards/omap3evm/config.h                  |    4 -
 arch/arm/boards/panda/env/config                   |   12 +-
 arch/arm/boards/panda/lowlevel.c                   |    4 -
 arch/arm/boards/pcm027/board.c                     |    4 -
 arch/arm/boards/pcm027/config.h                    |    4 -
 arch/arm/boards/pcm027/env/config                  |   14 +-
 arch/arm/boards/pcm027/lowlevel_init.S             |    4 -
 arch/arm/boards/pcm037/Makefile                    |    4 -
 arch/arm/boards/pcm037/config.h                    |    4 -
 arch/arm/boards/pcm037/env/config                  |   14 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |    4 -
 arch/arm/boards/pcm037/pcm037.c                    |    4 -
 arch/arm/boards/pcm038/config.h                    |    4 -
 arch/arm/boards/pcm038/env/boot.d/01               |    1 +
 arch/arm/boards/pcm038/env/boot.d/02               |    1 +
 arch/arm/boards/pcm038/env/boot.d/03               |    1 +
 arch/arm/boards/pcm038/lowlevel.c                  |    4 -
 arch/arm/boards/pcm038/pcm038.c                    |    4 -
 arch/arm/boards/pcm038/pcm970.c                    |    4 -
 arch/arm/boards/pcm038/pll.h                       |    4 -
 arch/arm/boards/pcm043/Makefile                    |    4 -
 arch/arm/boards/pcm043/config.h                    |    4 -
 arch/arm/boards/pcm043/env/config                  |   14 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    4 -
 arch/arm/boards/pcm043/pcm043.c                    |    4 -
 arch/arm/boards/pcm049/board.c                     |    8 +-
 arch/arm/boards/pcm049/env/config                  |   16 +-
 arch/arm/boards/pcm049/lowlevel.c                  |    4 -
 arch/arm/boards/phycard-a-l1/Makefile              |    4 -
 arch/arm/boards/phycard-a-l1/config.h              |    4 -
 arch/arm/boards/phycard-a-l1/env/config            |   20 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |   10 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.h            |    4 -
 arch/arm/boards/phycard-a-xl2/Makefile             |    4 -
 arch/arm/boards/phycard-a-xl2/env/config           |   16 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |    4 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |    8 +-
 arch/arm/boards/phycard-i.MX27/config.h            |    4 -
 arch/arm/boards/phycard-i.MX27/env/config          |   14 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    4 -
 arch/arm/boards/pm9261/init.c                      |    4 -
 arch/arm/boards/pm9263/init.c                      |    4 -
 arch/arm/boards/pm9g45/init.c                      |    4 -
 arch/arm/boards/qil-a9260/env/config               |    2 +-
 arch/arm/boards/scb9328/config.h                   |    4 -
 arch/arm/boards/scb9328/env/config                 |   14 +-
 arch/arm/boards/scb9328/lowlevel_init.S            |    6 -
 arch/arm/boards/scb9328/scb9328.c                  |    4 -
 arch/arm/boards/tny-a926x/env/config               |    6 +-
 arch/arm/boards/tny-a926x/init.c                   |    4 -
 arch/arm/boards/toshiba-ac100/board.c              |    4 -
 arch/arm/boards/toshiba-ac100/serial.c             |    4 -
 arch/arm/boards/tqma53/env/boot.d/01               |    1 +
 arch/arm/boards/tqma53/env/boot.d/02               |    1 +
 arch/arm/boards/usb-a926x/env/config               |    6 +-
 arch/arm/boards/usb-a926x/init.c                   |    4 -
 arch/arm/boards/versatile/versatilepb.c            |    4 -
 arch/arm/configs/chumbyone_defconfig               |    2 +-
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/imx233-olinuxino_defconfig        |   63 +
 arch/arm/configs/imx28evk_defconfig                |    2 +-
 arch/arm/configs/mioa701_defconfig                 |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/pcm027_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/phycard_a_l1_defconfig            |    2 +-
 arch/arm/configs/tx25stk5_defconfig                |    2 +-
 arch/arm/configs/tx28stk5_defconfig                |    2 +-
 arch/arm/configs/tx51stk5_defconfig                |    2 +-
 arch/arm/configs/tx53stk5_defconfig                |   76 +
 arch/arm/cpu/cpu.c                                 |    4 -
 arch/arm/cpu/cpuinfo.c                             |    4 -
 arch/arm/cpu/interrupts.c                          |    3 -
 arch/arm/cpu/start-pbl.c                           |   15 +-
 arch/arm/cpu/start-reset.c                         |    7 +-
 arch/arm/cpu/start.c                               |   20 +-
 arch/arm/include/asm/barebox-arm.h                 |    7 +-
 arch/arm/include/asm/cache-l2x0.h                  |    3 -
 arch/arm/include/asm/unified.h                     |    3 -
 arch/arm/include/asm/unwind.h                      |    3 -
 arch/arm/lib/Makefile                              |    2 +
 arch/arm/lib/armlinux.c                            |    5 -
 arch/arm/lib/ashldi3.S                             |    6 +-
 arch/arm/lib/ashrdi3.S                             |    6 +-
 arch/arm/lib/barebox.lds.S                         |    6 -
 arch/arm/lib/div0.c                                |    4 -
 arch/arm/lib/lib1funcs.S                           |    6 +-
 arch/arm/lib/lshrdi3.S                             |    6 +-
 arch/arm/lib/runtime-offset.S                      |   17 +
 arch/arm/mach-at91/at91rm9200_time.c               |    4 -
 arch/arm/mach-at91/at91sam926x_time.c              |    4 -
 arch/arm/mach-at91/gpio.c                          |    4 -
 arch/arm/mach-at91/include/mach/board.h            |    3 -
 arch/arm/mach-at91/include/mach/io.h               |    3 -
 arch/arm/mach-ep93xx/clocksource.c                 |    4 -
 arch/arm/mach-ep93xx/gpio.c                        |    3 -
 arch/arm/mach-ep93xx/include/mach/gpio.h           |    3 -
 arch/arm/mach-ep93xx/led.c                         |    4 -
 arch/arm/mach-ep93xx/led.h                         |    4 -
 arch/arm/mach-ep93xx/lowlevel_init.S               |    4 -
 arch/arm/mach-imx/Kconfig                          |    8 +
 arch/arm/mach-imx/boot.c                           |    4 -
 arch/arm/mach-imx/clocksource.c                    |   93 +-
 arch/arm/mach-imx/external-nand-boot.c             |    4 -
 arch/arm/mach-imx/gpio.c                           |  114 +-
 arch/arm/mach-imx/imx1.c                           |   13 +-
 arch/arm/mach-imx/imx21.c                          |   17 +-
 arch/arm/mach-imx/imx25.c                          |   14 +-
 arch/arm/mach-imx/imx27.c                          |   19 +-
 arch/arm/mach-imx/imx31.c                          |   11 +-
 arch/arm/mach-imx/imx35.c                          |   11 +-
 arch/arm/mach-imx/imx51.c                          |   13 +-
 arch/arm/mach-imx/imx53.c                          |   20 +-
 arch/arm/mach-imx/imx6.c                           |   19 +-
 arch/arm/mach-imx/include/mach/iim.h               |    4 -
 arch/arm/mach-imx/include/mach/imx-regs.h          |    4 -
 arch/arm/mach-imx/include/mach/imx1-regs.h         |   23 -
 arch/arm/mach-imx/include/mach/imx21-regs.h        |   24 -
 arch/arm/mach-imx/include/mach/imx25-regs.h        |   31 -
 arch/arm/mach-imx/include/mach/imx27-regs.h        |   23 -
 arch/arm/mach-imx/include/mach/imx31-regs.h        |   31 -
 arch/arm/mach-imx/include/mach/imx35-regs.h        |   32 -
 arch/arm/mach-imx/include/mach/imx51-regs.h        |   19 -
 arch/arm/mach-imx/include/mach/imx53-regs.h        |   19 -
 arch/arm/mach-imx/include/mach/imx6-anadig.h       |    5 -
 arch/arm/mach-imx/include/mach/imx6-regs.h         |   19 -
 arch/arm/mach-imx/include/mach/iomux-mx21.h        |    5 -
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-mx2x.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-mx31.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-mx35.h        |    4 -
 arch/arm/mach-imx/include/mach/iomux-v3.h          |    4 -
 arch/arm/mach-imx/iomux-v2.c                       |    3 -
 arch/arm/mach-imx/iomux-v3.c                       |    4 -
 arch/arm/mach-imx/nand.c                           |    4 -
 arch/arm/mach-imx/speed-imx1.c                     |    4 -
 arch/arm/mach-imx/speed-imx21.c                    |    4 -
 arch/arm/mach-imx/speed-imx27.c                    |    4 -
 arch/arm/mach-imx/speed-imx31.c                    |    4 -
 arch/arm/mach-imx/speed-imx35.c                    |    4 -
 arch/arm/mach-imx/speed.c                          |    4 -
 arch/arm/mach-mxs/Kconfig                          |    7 +
 arch/arm/mach-mxs/clocksource-imx23.c              |    4 -
 arch/arm/mach-mxs/imx.c                            |   28 +-
 arch/arm/mach-mxs/include/mach/clock.h             |    4 -
 arch/arm/mach-mxs/include/mach/generic.h           |    4 -
 arch/arm/mach-mxs/include/mach/gpio.h              |    4 -
 arch/arm/mach-mxs/include/mach/imx-regs.h          |    4 -
 arch/arm/mach-mxs/include/mach/imx23-regs.h        |    4 -
 arch/arm/mach-mxs/include/mach/iomux-imx23.h       |    4 -
 arch/arm/mach-mxs/include/mach/mci.h               |    4 -
 arch/arm/mach-mxs/iomux-imx.c                      |    4 -
 arch/arm/mach-mxs/speed-imx23.c                    |    4 -
 arch/arm/mach-mxs/usb-imx23.c                      |    4 -
 arch/arm/mach-netx/clocksource.c                   |    4 -
 arch/arm/mach-netx/generic.c                       |    4 -
 arch/arm/mach-netx/include/mach/netx-regs.h        |    3 -
 arch/arm/mach-nomadik/8815.c                       |   13 +-
 arch/arm/mach-nomadik/include/mach/board.h         |    4 -
 arch/arm/mach-nomadik/include/mach/hardware.h      |    4 -
 arch/arm/mach-nomadik/reset.c                      |    3 -
 arch/arm/mach-omap/Kconfig                         |   22 -
 arch/arm/mach-omap/Makefile                        |    4 -
 arch/arm/mach-omap/devices-gpmc-nand.c             |    4 -
 arch/arm/mach-omap/gpio.c                          |  175 +-
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
 arch/arm/mach-omap/omap3_core.S                    |   14 +-
 arch/arm/mach-omap/omap3_generic.c                 |   23 +-
 arch/arm/mach-omap/omap4_generic.c                 |   19 +
 arch/arm/mach-omap/omap4_twl6030_mmc.c             |    4 -
 arch/arm/mach-omap/s32k_clksource.c                |    4 -
 arch/arm/mach-omap/syslib.c                        |    4 -
 arch/arm/mach-omap/xload.c                         |   99 +-
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
 arch/arm/pbl/zbarebox.lds.S                        |    2 -
 arch/blackfin/boards/ipe337/barebox.lds.S          |    4 -
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
 arch/mips/include/asm/barebox.h                    |    4 -
 arch/mips/include/asm/bitops.h                     |    4 -
 arch/mips/include/asm/common.h                     |    4 -
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
 arch/nios2/lib/longlong.h                          |    5 -
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
 arch/sandbox/Makefile                              |    6 +-
 arch/sandbox/board/board.c                         |   24 +-
 arch/sandbox/board/clock.c                         |    3 -
 arch/sandbox/board/console.c                       |    3 -
 arch/sandbox/board/hostfile.c                      |    3 -
 arch/sandbox/include/asm/posix_types.h             |   14 +
 arch/sandbox/include/asm/processor.h               |    4 -
 arch/sandbox/include/asm/unaligned.h               |    2 +-
 arch/sandbox/mach-sandbox/include/mach/linux.h     |   14 +
 arch/sandbox/os/Makefile                           |    2 +
 arch/sandbox/os/common.c                           |   36 +-
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
 commands/Kconfig                                   |   55 +-
 commands/Makefile                                  |    2 +-
 commands/automount.c                               |    4 -
 commands/bmp.c                                     |  221 -
 commands/bootm.c                                   |    4 -
 commands/cat.c                                     |    3 -
 commands/cd.c                                      |    3 -
 commands/clear.c                                   |    3 -
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
 commands/mem.c                                     |    4 -
 commands/meminfo.c                                 |    3 -
 commands/memtest.c                                 |    4 -
 commands/menu.c                                    |    4 -
 commands/mkdir.c                                   |    3 -
 commands/mount.c                                   |    3 -
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
 commands/splash.c                                  |  133 +
 commands/test.c                                    |    3 -
 commands/timeout.c                                 |    3 -
 commands/trigger.c                                 |    4 -
 commands/true.c                                    |    4 -
 commands/umount.c                                  |    3 -
 commands/uncompress.c                              |    3 -
 commands/usb.c                                     |    3 -
 commands/usbserial.c                               |    3 -
 commands/version.c                                 |    4 -
 common/Kconfig                                     |   10 +-
 common/Makefile                                    |    1 +
 common/block.c                                     |    3 -
 common/bootargs.c                                  |    3 -
 common/clock.c                                     |    3 -
 common/command.c                                   |    4 -
 common/complete.c                                  |    3 -
 common/console.c                                   |    4 -
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
 common/partitions.c                                |    4 -
 common/password.c                                  |    3 -
 common/resource.c                                  |    4 -
 common/s_record.c                                  |    4 -
 common/startup.c                                   |   25 -
 common/tlsf_malloc.c                               |    3 -
 common/uimage.c                                    |    4 -
 crypto/sha1.c                                      |    5 -
 crypto/sha2.c                                      |    3 -
 defaultenv-2/base/bin/boot                         |   61 +-
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
 defaultenv-2/base/bin/init                         |    6 +-
 defaultenv-2/base/boot/initrd                      |    2 +-
 defaultenv-2/base/data/ansi-colors                 |    4 +
 defaultenv-2/base/init/general                     |    3 -
 defaultenv-2/base/network/eth0                     |    1 +
 defaultenv-2/menu/menu/boot-entries-collect        |    6 +-
 defaultenv-2/menu/menu/mainmenu                    |    4 +-
 defaultenv/bin/boot                                |   12 +-
 defaultenv/bin/init                                |    2 +
 defaultenv/config                                  |   18 +-
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    2 +
 drivers/amba/Makefile                              |    2 +
 drivers/amba/bus.c                                 |  210 +
 drivers/ata/disk_bios_drive.c                      |    4 -
 drivers/base/Makefile                              |    1 +
 drivers/base/bus.c                                 |   37 +
 drivers/base/driver.c                              |   66 +-
 drivers/base/platform.c                            |   39 +-
 drivers/base/resource.c                            |    4 -
 drivers/eeprom/at25.c                              |    2 +-
 drivers/i2c/busses/i2c-imx.c                       |    5 -
 drivers/i2c/busses/i2c-omap.c                      |    4 -
 drivers/i2c/i2c.c                                  |   30 +
 drivers/led/core.c                                 |    4 -
 drivers/led/led-gpio.c                             |    4 -
 drivers/led/led-triggers.c                         |    4 -
 drivers/mci/imx-esdhc.c                            |   26 +-
 drivers/mci/imx-esdhc.h                            |    4 -
 drivers/mci/mci-core.c                             |    4 -
 drivers/mci/mci_spi.c                              |   13 +-
 drivers/mci/mxs.c                                  |    4 -
 drivers/mci/omap_hsmmc.c                           |    4 -
 drivers/mci/s3c.c                                  |    4 -
 drivers/mfd/lp3972.c                               |    6 +-
 drivers/mfd/mc13xxx.c                              |   44 +-
 drivers/mfd/mc34704.c                              |    8 +-
 drivers/mfd/mc34708.c                              |   33 +-
 drivers/mfd/mc9sdz60.c                             |    6 +-
 drivers/mfd/stmpe-i2c.c                            |    2 +-
 drivers/mfd/twl4030.c                              |    2 +-
 drivers/mfd/twl6030.c                              |    2 +-
 drivers/mtd/nand/nand-bb.c                         |    3 -
 drivers/mtd/nand/nand_base.c                       |   97 +-
 drivers/mtd/nand/nand_ids.c                        |   30 +
 drivers/mtd/nand/nand_s3c24xx.c                    |    3 -
 drivers/mtd/ubi/build.c                            |    3 -
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
 drivers/net/altera_tse.c                           |   52 +-
 drivers/net/altera_tse.h                           |    3 +-
 drivers/net/at91_ether.c                           |   53 +-
 drivers/net/davinci_emac.c                         |  618 ++
 drivers/net/davinci_emac.h                         |  289 +
 drivers/net/designware.c                           |   62 +-
 drivers/net/dm9k.c                                 |   50 +-
 drivers/net/ep93xx.c                               |   35 +-
 drivers/net/ep93xx.h                               |    6 +-
 drivers/net/fec_imx.c                              |   93 +-
 drivers/net/fec_imx.h                              |   10 +-
 drivers/net/fec_mpc5200.c                          |   58 +-
 drivers/net/fec_mpc5200.h                          |    4 +-
 drivers/net/gianfar.c                              |   61 +-
 drivers/net/gianfar.h                              |    2 +-
 drivers/net/ks8851_mll.c                           |   40 +-
 drivers/net/ksz8864rmn.c                           |  191 +
 drivers/net/macb.c                                 |   82 +-
 drivers/net/macb.h                                 |    4 -
 drivers/net/miidev.c                               |  316 --
 drivers/net/netx_eth.c                             |   26 +-
 drivers/net/phy/Kconfig                            |   17 +
 drivers/net/phy/Makefile                           |    2 +
 drivers/net/phy/generic.c                          |   36 +
 drivers/net/phy/mdio_bus.c                         |  248 +
 drivers/net/phy/phy.c                              |  568 ++
 drivers/net/smc91111.c                             |   51 +-
 drivers/net/smc911x.c                              |   41 +-
 drivers/net/tap.c                                  |    3 -
 drivers/net/usb/Kconfig                            |    4 +-
 drivers/net/usb/asix.c                             |   29 +-
 drivers/net/usb/smsc95xx.c                         |   45 +-
 drivers/net/usb/smsc95xx.h                         |    4 -
 drivers/net/usb/usbnet.c                           |   11 +-
 drivers/nor/cfi_flash.c                            |   41 +-
 drivers/nor/cfi_flash.h                            |    6 -
 drivers/nor/m25p80.c                               |   76 +-
 drivers/nor/m25p80.h                               |    2 +-
 drivers/of/Kconfig                                 |    2 +
 drivers/of/Makefile                                |    3 +
 drivers/of/base.c                                  |  802 +++
 drivers/of/gpio.c                                  |   28 +
 drivers/of/partition.c                             |   64 +
 drivers/pwm/core.c                                 |    4 -
 drivers/serial/amba-pl011.c                        |   78 +-
 drivers/serial/arm_dcc.c                           |    3 -
 drivers/serial/atmel.c                             |    3 -
 drivers/serial/linux_console.c                     |    3 -
 drivers/serial/serial_altera.c                     |    4 -
 drivers/serial/serial_altera_jtag.c                |    4 -
 drivers/serial/serial_blackfin.c                   |    4 -
 drivers/serial/serial_imx.c                        |   20 +-
 drivers/serial/serial_mpc5xxx.c                    |    4 -
 drivers/serial/serial_netx.c                       |    4 -
 drivers/serial/serial_ns16550.c                    |    4 -
 drivers/serial/serial_pl010.c                      |    4 -
 drivers/serial/serial_pl010.h                      |    4 -
 drivers/serial/serial_s3c.c                        |    3 -
 drivers/serial/stm-serial.c                        |    3 -
 drivers/spi/Kconfig                                |    6 +
 drivers/spi/Makefile                               |    1 +
 drivers/spi/altera_spi.c                           |    4 -
 drivers/spi/atmel_spi.c                            |    4 -
 drivers/spi/imx_spi.c                              |   53 +-
 drivers/spi/omap3_spi.c                            |  399 ++
 drivers/spi/omap3_spi.h                            |   94 +
 drivers/spi/spi.c                                  |   67 +-
 drivers/usb/core/usb.c                             |    9 +-
 drivers/usb/gadget/composite.c                     |    3 -
 drivers/usb/gadget/dfu.c                           |    4 -
 drivers/usb/gadget/epautoconf.c                    |    3 -
 drivers/usb/gadget/pxa27x_udc.c                    |    3 -
 drivers/usb/gadget/pxa27x_udc.h                    |    4 -
 drivers/usb/host/ehci-core.h                       |    4 -
 drivers/usb/host/ehci-hcd.c                        |    4 -
 drivers/usb/host/ehci.h                            |    4 -
 drivers/usb/host/ohci-at91.c                       |    4 -
 drivers/usb/host/ohci-hcd.c                        |    4 -
 drivers/usb/otg/twl4030.c                          |    4 -
 drivers/usb/otg/ulpi.c                             |    5 -
 drivers/usb/storage/transport.c                    |    4 -
 drivers/usb/storage/transport.h                    |    4 -
 drivers/usb/storage/usb.c                          |    4 -
 drivers/usb/storage/usb.h                          |    4 -
 drivers/video/Kconfig                              |    4 +
 drivers/video/Makefile                             |    1 +
 drivers/video/fb.c                                 |   31 +-
 drivers/video/imx-ipu-fb.c                         |    4 -
 drivers/video/pxa.c                                |    5 -
 drivers/video/s3c24xx.c                            |    4 -
 drivers/video/sdl.c                                |  101 +
 fs/devfs-core.c                                    |    3 -
 fs/devfs.c                                         |    3 -
 fs/fat/fat.c                                       |    3 -
 fs/fat/ff.c                                        |   37 +-
 fs/fs.c                                            |    9 +-
 fs/nfs.c                                           |    3 -
 fs/ramfs.c                                         |    3 -
 fs/tftp.c                                          |    3 -
 include/command.h                                  |    4 -
 include/common.h                                   |    8 +-
 include/console.h                                  |    4 -
 include/debug_ll.h                                 |    6 -
 include/digest.h                                   |    4 -
 include/driver.h                                   |   49 +-
 include/environment.h                              |    4 -
 include/fb.h                                       |    2 +
 include/fec.h                                      |    7 +-
 include/filetype.h                                 |   20 +
 include/getopt.h                                   |    3 -
 include/globalvar.h                                |   23 +
 include/graphic_utils.h                            |   17 +
 include/i2c/i2c.h                                  |    8 +
 include/image.h                                    |    9 +-
 include/image_renderer.h                           |   85 +
 include/kfifo.h                                    |    5 -
 include/linux/amba/bus.h                           |  153 +
 include/linux/amba/serial.h                        |   32 +-
 include/linux/ethtool.h                            |  114 +
 include/linux/mii.h                                |  421 +-
 include/linux/mtd/ubi.h                            |    3 -
 include/linux/phy.h                                |  266 +
 include/linux/rbtree.h                             |    3 -
 include/mci.h                                      |    4 -
 include/menu.h                                     |    4 -
 include/miidev.h                                   |   55 +-
 include/mtd/ubi-user.h                             |    3 -
 include/net.h                                      |    4 +
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
 lib/Kconfig                                        |   36 +
 lib/Makefile                                       |    5 +
 lib/bmp.c                                          |  134 +
 {include =3D> lib}/bmp_layout.h                      |   15 +-
 lib/ctype.c                                        |    4 -
 lib/decompress_unlzo.c                             |    5 -
 lib/display_options.c                              |    4 -
 lib/getopt.c                                       |    3 -
 lib/graphic_utils.c                                |  191 +
 lib/image_renderer.c                               |   96 +
 lib/kfifo.c                                        |    5 -
 lib/libbb.c                                        |    1 -
 lib/libgen.c                                       |    3 -
 lib/lodepng.c                                      | 5928 ++++++++++++++++=
++++
 lib/lodepng.h                                      | 1640 ++++++
 lib/misc.c                                         |    3 -
 lib/parameter.c                                    |    3 -
 lib/picopng.c                                      |  810 +++
 lib/picopng.h                                      |   34 +
 lib/png.c                                          |   89 +
 lib/png.h                                          |   21 +
 lib/png_lode.c                                     |   90 +
 lib/png_pico.c                                     |   85 +
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
 net/dhcp.c                                         |  167 +-
 net/eth.c                                          |   12 +-
 net/net.c                                          |   21 +-
 net/netconsole.c                                   |    3 -
 net/rarp.h                                         |    4 -
 scripts/bareboxenv.c                               |    3 -
 scripts/genenv                                     |    6 +-
 scripts/kconfig/lxdialog/checklist.c               |    4 -
 scripts/kconfig/lxdialog/dialog.h                  |    4 -
 scripts/kconfig/lxdialog/inputbox.c                |    4 -
 scripts/kconfig/lxdialog/menubox.c                 |    4 -
 scripts/kconfig/lxdialog/textbox.c                 |    4 -
 scripts/kconfig/lxdialog/util.c                    |    4 -
 scripts/kconfig/lxdialog/yesno.c                   |    4 -
 scripts/kconfig/zconf.tab.c_shipped                |    5 +-
 scripts/mkimage.c                                  |    4 -
 scripts/omap_signGP.c                              |    3 -
 scripts/s5p_cksum.c                                |    4 -
 scripts/setupmbr/setupmbr.c                        |    4 -
 918 files changed, 17878 insertions(+), 4737 deletions(-)
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03
 create mode 120000 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01
 create mode 120000 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02
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
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/01
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/02
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/03
 create mode 120000 arch/arm/boards/tqma53/env/boot.d/01
 create mode 120000 arch/arm/boards/tqma53/env/boot.d/02
 create mode 100644 arch/arm/configs/imx233-olinuxino_defconfig
 create mode 100644 arch/arm/configs/tx53stk5_defconfig
 create mode 100644 arch/arm/lib/runtime-offset.S
 create mode 100644 arch/arm/mach-omap/include/mach/emac_defs.h
 create mode 100644 arch/arm/mach-omap/include/mach/mcspi.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap3-devices.h
 create mode 100644 arch/openrisc/lib/ashrdi3.S
 delete mode 100644 arch/ppc/mach-mpc5xxx/include/mach/fec.h
 create mode 100644 arch/sandbox/os/sdl.c
 delete mode 100644 commands/bmp.c
 create mode 100644 commands/splash.c
 create mode 100644 common/meminfo.c
 create mode 100644 drivers/amba/Makefile
 create mode 100644 drivers/amba/bus.c
 create mode 100644 drivers/base/bus.c
 create mode 100644 drivers/net/davinci_emac.c
 create mode 100644 drivers/net/davinci_emac.h
 create mode 100644 drivers/net/ksz8864rmn.c
 delete mode 100644 drivers/net/miidev.c
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 create mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/mdio_bus.c
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 drivers/of/Kconfig
 create mode 100644 drivers/of/Makefile
 create mode 100644 drivers/of/base.c
 create mode 100644 drivers/of/gpio.c
 create mode 100644 drivers/of/partition.c
 create mode 100644 drivers/spi/omap3_spi.c
 create mode 100644 drivers/spi/omap3_spi.h
 create mode 100644 drivers/video/sdl.c
 create mode 100644 include/graphic_utils.h
 create mode 100644 include/image_renderer.h
 create mode 100644 include/linux/amba/bus.h
 create mode 100644 include/linux/ethtool.h
 create mode 100644 include/linux/phy.h
 create mode 100644 lib/bmp.c
 rename {include =3D> lib}/bmp_layout.h (84%)
 create mode 100644 lib/graphic_utils.c
 create mode 100644 lib/image_renderer.c
 create mode 100644 lib/lodepng.c
 create mode 100644 lib/lodepng.h
 create mode 100644 lib/picopng.c
 create mode 100644 lib/picopng.h
 create mode 100644 lib/png.c
 create mode 100644 lib/png.h
 create mode 100644 lib/png_lode.c
 create mode 100644 lib/png_pico.c
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


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
