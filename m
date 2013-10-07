Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VT4Ja-0001Vi-11
 for barebox@lists.infradead.org; Mon, 07 Oct 2013 06:29:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VT4JE-0000dW-Df
 for barebox@lists.infradead.org; Mon, 07 Oct 2013 08:28:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VT4JE-00019u-Bw
 for barebox@lists.infradead.org; Mon, 07 Oct 2013 08:28:48 +0200
Date: Mon, 7 Oct 2013 08:28:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131007062848.GS30088@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2013.10.0
To: barebox@lists.infradead.org


Hi All,

We have an October release, see below what went into this release.

The codename was changed to 'La Tour Eiffel' because that's exactly
where I'm going to be this week, so I won't be able (or willing ;)
to answer mails until the beginning of next week.

Vive la France!

Sascha

----------------------------------------------------------------
Alexander Shiyan (1):
      mfd: syscon: Replace dev_info with dev_dbg

Antony Pavlov (1):
      MIPS: qemu-malta: switch to devicetree

Baruch Siach (2):
      net: fix checksum verification
      fs: tftp: don't duplicate timeout information

Darren Garnier (1):
      small tweeks to build system for compatibility on MacOS X

Dmitry Smagin (1):
      Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER option

Eric B=E9nard (10):
      i.MX53: add imx53_add_mmc3
      mxs_spi: fix compile error
      serial_auart: fix compile error
      cfa10036: fix warning
      mxs_spi: unbreak driver
      nand_mxs: fix on i.MX28
      video/stm: don't fail when the pixel clock is properly set
      video/stm: enable clock to get the display working
      i.MX28: unbreak ethernet
      usb-imx28: fix enable

Fargier Sylvain (1):
      Fix lseek on fat filesystems.

Jan Luebbe (8):
      ARM: cpuinfo: display the core name and version
      ARM: am33xx: implement cpu revision decoding
      ARM: am33xx: beaglebone: configure I2C EEPROM
      ARM: beaglebone: add support for beaglebone black with DDR3 RAM
      am33xx_generic: convert from switch to if/else
      arm: mmu: be more verbose if ttb setup fails
      arm: omap: am33xx_generic: fix DDR setup for DDR2
      beaglebone: use most recent timings for white variant

Jan Weitzel (1):
      net/phy: support of mmd register read and write

Jean-Christophe PLAGNIOL-VILLARD (3):
      bootm: add global bootm.{image/initrd}.loadaddr support
      at91: add irq fixup
      animeo_ip: fix macb pin mux and set phy interface as MII

Lucas Stach (1):
      images: correctly linebreak built images output

Renaud Barbier (4):
      of: base: import of_find_node_by_type
      net, of: fixup MAC address by alias
      ppc: add and update device tree fixup functions
      ppc: bootm: relocate fdt to valid boot memory

Sascha Hauer (84):
      ARM: i.MX: bbu-internal: factor out a prereq function
      ARM: i.MX: bbu-internal: optionally use DCD data from image
      ARM: dts: imx: share pad macro names between imx6q and imx6dl
      ARM: i.MX6: Add dfi fs700 m60 i.MX6 Q7 board support
      mtd: ubi: add ubi info functions
      filetype: Add ubifs detection
      mtd: ubi: Add support for opening a volume by cdev
      move print_hex_dump function to include/common.h
      extend barebox wrapper header
      Add deflate_decompress function
      fs: Add ubifs support
      ARM: Create an assembly arm_cpu_lowlevel_init function
      fb: make fb device a pure device
      images: get rid of imximage-y
      of: fix merge mode in of_unflatten_dtb
      of: parse phandles during unflatten
      of: default to internal tree in of_find_node_by_path_from
      of: introduce some new helpers
      of_property command: allow to specify a node by alias
      of_property command: allow to set phandles
      oftree command: Allow to specify node by alias
      ARM: i.MX6 phyflex: Enable lowlevel UART
      globalvar: Allow to set initial value
      Add a global.version variable
      globalvar: move globalvar init to pure_initcall
      remove remaining references of CONFIG_BOARDINFO
      introduce barebox_set_model
      Make hostname available to C Code
      Set model and hostname at boardlevel
      export model as globalvar
      ARM: mvebu: move Makefile entries back to arch/arm/Makefile
      ARM: dts: cubox: fix stdout-path property
      ARM: mvebu: introduce multi image support
      ARM: mvebu: cubox: Update defconfig
      ARM: AT91: Add missing include
      ARM: include <gpio.h> instead of <mach/gpio.h>
      ARM: i.MX23: Fix double include protection
      ARM: AT91: move iomux definitions to iomux.h
      ARM: MXS: move iomux definitions to iomux.h
      ARM: Samsung: move iomux definitions to iomux.h
      ARM: i.MX: move iomux definitions to iomux.h
      ARM: remove include of mach/gpio.h for gpiolib users
      mci: omap: advertise 8 bit support
      mci: omap: implement device detect callback
      mci: omap: Allow to set mmc devname via platformdata
      ARM: omap: Allow to set mmc devname used for booting
      ARM: omap: fix omap_save_bootinfo
      ARM: omap: rename INIT_LL to omap_uart_lowlevel_init
      ARM: am33xx: set bootsource instance correctly for MMC1
      ARM: am33xx: Add mmc1 registration helper
      ARM: am33xx: make DDR PLL frequency configurable
      Merge branch 'for-next/arm'
      Merge branch 'for-next/fb'
      Merge branch 'for-next/ubifs'
      rework debug_ll
      ARM: beaglebone: Initialize UART for lowlevel debugging
      ARM: beaglebone: register sd/emmc with persistent name
      ARM: beaglebone: update mlo_small defconfig
      ARM: beaglebone: update defconfig
      Merge branch 'for-next/of'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/arm-gpio'
      Merge branch 'for-next/boardinfo'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/powerpc'
      ARM: invalidate caches thoroughly
      bootstrap: Add missing include
      ARM: dts: i.MX6q: cpus/cpu nodes dts updates
      pwm: sanity check values before passing them to the drivers
      ARM: pfla02: Fix compiler warning
      detect command: Add missing help text for -a option
      ata: ide-sff: Add missing wait for ready in write function
      copy_file: Add missing O_TRUNC
      ARM: edb93xx: Add missing include
      ARM: friendlyarm-tiny210: remove unused variable
      ARM: mx23-evk: Fix result checking of devfs_add_partition
      ARM: Ka-Ro TX28: Fix result checking of devfs_add_partition
      ARM: vexpress: Fix compiler warning
      mips: bcm47xx: Fix compiler warning
      Release v2013.10.0

Sebastian Hesselbarth (3):
      ARM: dove: add missing clocks property to timer node
      clk: mvebu: add OF clock providers for Marvell MVEBU SoCs
      ARM: dove: remove temporary clock and non-DT device probing

Steffen Trumtrar (1):
      mci: sdhci: fix IRQSTAT_DMAE bit shift

Teresa G=E1mez (12):
      ARM: OMAP: Pass TEXT_BASE address to mk-am35xx-spi-image
      ARM: OMAP: pcm051: Increase console output for MLO
      ARM: OMAP: pcm051: Update enviroment
      ARM: OMAP: pcm051: Create own NAND mux struct
      AM33xx: Make OSC frequency board depended
      ARM: OMAP: PCM051: Remove spi platform data
      ARM: am33xx: Cleanup of lowlevel code
      ARM: pcm051: Clean up lowlevel code
      ARM: beaglebone: Clean up lowlevel code
      PCM051: Fixup DDRPLL
      lib: Fix copy_file when filesize is FILESIZE_MAX
      mci: omap: Fix default value of mci.f_max

shravan (2):
      ARM: omap: barebox update spi nor MLO handler
      PCM051: Added barebox update SPI NOR MLO handler

 Documentation/board.dox                            |    1 -
 Makefile                                           |   10 +-
 arch/arm/Kconfig                                   |    2 +
 arch/arm/Makefile                                  |    7 +-
 arch/arm/boards/Makefile                           |    6 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    3 +
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    3 +
 arch/arm/boards/a9m2440/lowlevel_init.S            |    2 +-
 arch/arm/boards/animeo_ip/init.c                   |    7 +
 arch/arm/boards/archosg9/board.c                   |    6 +-
 arch/arm/boards/archosg9/lowlevel.c                |    3 +-
 arch/arm/boards/at91rm9200ek/init.c                |    6 +-
 arch/arm/boards/at91sam9260ek/init.c               |    9 +
 arch/arm/boards/at91sam9261ek/init.c               |    9 +
 arch/arm/boards/at91sam9263ek/init.c               |    4 +
 arch/arm/boards/at91sam9m10g45ek/init.c            |    6 +-
 arch/arm/boards/at91sam9m10ihd/env/config          |    2 -
 arch/arm/boards/at91sam9m10ihd/init.c              |    4 +
 arch/arm/boards/at91sam9n12ek/init.c               |    4 +
 arch/arm/boards/at91sam9x5ek/init.c                |    4 +
 arch/arm/boards/avnet-zedboard/board.c             |    3 +
 .../boards/avnet-zedboard/env/init/config-board    |    1 -
 arch/arm/boards/beagle/board.c                     |    3 +
 arch/arm/boards/beagle/env/config-board            |    1 -
 arch/arm/boards/beagle/lowlevel.c                  |    3 +-
 arch/arm/boards/beaglebone/beaglebone.h            |    9 +
 arch/arm/boards/beaglebone/board.c                 |   73 +-
 arch/arm/boards/beaglebone/env/config              |    2 -
 arch/arm/boards/beaglebone/lowlevel.c              |  311 +--
 arch/arm/boards/ccxmx51/ccxmx51.c                  |    4 +-
 arch/arm/boards/ccxmx51/ccxmx51js.c                |    2 +-
 arch/arm/boards/ccxmx51/env/config-board           |    2 -
 arch/arm/boards/chumby_falconwing/env/config       |    2 -
 arch/arm/boards/chumby_falconwing/falconwing.c     |    4 +
 arch/arm/boards/clep7212/clep7212.c                |    3 +
 arch/arm/boards/clep7212/env/config-board          |    2 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |    5 +-
 .../boards/crystalfontz-cfa10036/env/config-board  |    1 -
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |    4 +-
 arch/arm/boards/dfi-fs700-m60/Makefile             |    5 +
 arch/arm/boards/dfi-fs700-m60/board.c              |   80 +
 .../dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg |  128 +
 .../dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg |   63 +
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |  102 +
 arch/arm/boards/dmo-mx6-realq7/board.c             |   16 +-
 arch/arm/boards/dmo-mx6-realq7/env/config-board    |    1 -
 arch/arm/boards/dss11/init.c                       |    4 +
 arch/arm/boards/edb93xx/edb93xx.c                  |   26 +
 arch/arm/boards/efika-mx-smartbook/board.c         |    2 +
 .../arm/boards/efika-mx-smartbook/env/config-board |    1 -
 arch/arm/boards/eukrea_cpuimx25/env/config         |    2 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    5 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    5 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |    2 +-
 arch/arm/boards/eukrea_cpuimx35/env/config         |    2 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    5 +-
 arch/arm/boards/eukrea_cpuimx51/env/config         |    2 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    5 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   10 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    5 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    2 +-
 arch/arm/boards/freescale-mx28-evk/env/config      |    1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |    4 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    5 +-
 arch/arm/boards/freescale-mx35-3-stack/env/config  |    1 -
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    5 +-
 arch/arm/boards/freescale-mx53-smd/env/config      |    1 -
 arch/arm/boards/freescale-mx6-arm2/board.c         |    5 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |    5 +-
 .../freescale-mx6-sabrelite/env/config-board       |    1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c      |    5 +-
 .../boards/freescale-mx6-sabresd/env/config-board  |    1 -
 arch/arm/boards/friendlyarm-mini2440/env/config    |    1 -
 .../boards/friendlyarm-mini2440/lowlevel_init.S    |    2 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    6 +-
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |    4 +
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    2 -
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |    4 +
 .../friendlyarm-tiny6410/development-board.c       |    4 +
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |    1 +
 arch/arm/boards/gk802/board.c                      |    2 +
 arch/arm/boards/gk802/env/config-board             |    1 -
 arch/arm/boards/guf-cupid/board.c                  |    6 +-
 arch/arm/boards/guf-cupid/env/config               |    1 -
 arch/arm/boards/guf-neso/board.c                   |    5 +-
 arch/arm/boards/guf-neso/env/config                |    1 -
 arch/arm/boards/guf-vincell/board.c                |    3 +
 arch/arm/boards/highbank/env/config-board          |    1 -
 arch/arm/boards/highbank/init.c                    |    3 +
 arch/arm/boards/imx21ads/imx21ads.c                |    5 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |    2 +-
 arch/arm/boards/imx233-olinuxino/env/config        |    2 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |    4 +
 arch/arm/boards/imx27ads/imx27ads.c                |    5 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |    2 +-
 arch/arm/boards/karo-tx25/board.c                  |    5 +-
 arch/arm/boards/karo-tx28/env/config               |    1 -
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   10 +-
 arch/arm/boards/karo-tx28/tx28.c                   |    1 +
 arch/arm/boards/karo-tx51/tx51.c                   |    6 +-
 arch/arm/boards/karo-tx53/board.c                  |    5 +-
 arch/arm/boards/karo-tx53/env/config-board         |    1 -
 arch/arm/boards/mioa701/board.c                    |    3 +
 arch/arm/boards/mmccpu/init.c                      |    6 +-
 arch/arm/boards/netx/netx.c                        |    3 +
 arch/arm/boards/netx/platform.S                    |    2 +-
 arch/arm/boards/nhk8815/setup.c                    |    4 +
 arch/arm/boards/omap343xdsp/board.c                |    7 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             |    3 +-
 arch/arm/boards/omap3evm/board.c                   |    6 +-
 arch/arm/boards/omap3evm/lowlevel.c                |    3 +-
 arch/arm/boards/panda/board.c                      |    5 +-
 arch/arm/boards/panda/env/config-board             |    1 -
 arch/arm/boards/panda/lowlevel.c                   |    3 +-
 arch/arm/boards/pcm027/board.c                     |    3 +
 arch/arm/boards/pcm027/env/config                  |    1 -
 arch/arm/boards/pcm027/lowlevel_init.S             |    2 +-
 arch/arm/boards/pcm037/env/config-board            |    1 -
 arch/arm/boards/pcm037/pcm037.c                    |    5 +-
 arch/arm/boards/pcm038/env/config-board            |    1 -
 arch/arm/boards/pcm038/pcm038.c                    |    5 +-
 arch/arm/boards/pcm038/pcm970.c                    |    2 +-
 arch/arm/boards/pcm043/env/config-board            |    1 -
 arch/arm/boards/pcm043/pcm043.c                    |    5 +-
 arch/arm/boards/pcm049/board.c                     |    5 +-
 arch/arm/boards/pcm049/env/config                  |    1 -
 arch/arm/boards/pcm049/lowlevel.c                  |    3 +-
 arch/arm/boards/pcm051/board.c                     |   14 +-
 arch/arm/boards/pcm051/env/boot/{sd =3D> mmc}        |    0
 arch/arm/boards/pcm051/env/boot/{nand-ubi =3D> nand} |    2 +-
 arch/arm/boards/pcm051/env/boot/spi                |   11 +
 arch/arm/boards/pcm051/env/boot/spi-nor            |   12 -
 arch/arm/boards/pcm051/env/config                  |   22 -
 arch/arm/boards/pcm051/env/config-board            |    7 +
 arch/arm/boards/pcm051/lowlevel.c                  |  214 +-
 arch/arm/boards/pcm051/mux.c                       |   23 +
 arch/arm/boards/pcm051/mux.h                       |    1 +
 arch/arm/boards/phycard-a-l1/env/config            |    1 -
 arch/arm/boards/phycard-a-l1/lowlevel.c            |    3 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    3 +
 arch/arm/boards/phycard-a-xl2/env/config           |    1 -
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |    3 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |    5 +-
 arch/arm/boards/phycard-i.MX27/env/config          |    1 -
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    5 +-
 arch/arm/boards/phytec-pfla02/lowlevel.c           |   35 +
 arch/arm/boards/pm9261/init.c                      |    6 +-
 arch/arm/boards/pm9263/init.c                      |    6 +-
 arch/arm/boards/pm9g45/init.c                      |    6 +-
 arch/arm/boards/qil-a926x/init.c                   |    9 +
 arch/arm/boards/raspberry-pi/env/init/hostname     |    8 -
 arch/arm/boards/raspberry-pi/rpi.c                 |    3 +
 arch/arm/boards/sama5d3xek/init.c                  |    4 +
 arch/arm/boards/scb9328/env/config                 |    1 -
 arch/arm/boards/scb9328/lowlevel_init.S            |    2 +-
 arch/arm/boards/scb9328/scb9328.c                  |    4 +-
 arch/arm/boards/solidrun-cubox/Makefile            |    1 +
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   37 +
 arch/arm/boards/telit-evk-pro3/init.c              |    4 +
 arch/arm/boards/tny-a926x/init.c                   |   12 +
 arch/arm/boards/toshiba-ac100/Kconfig              |    2 -
 arch/arm/boards/tqma53/board.c                     |    6 +-
 arch/arm/boards/tqma53/env/config-board            |    1 -
 arch/arm/boards/tqma6x/board.c                     |   14 +-
 arch/arm/boards/tqma6x/lowlevel.c                  |    4 +-
 arch/arm/boards/usb-a926x/init.c                   |   12 +
 arch/arm/boards/versatile/Kconfig                  |    2 -
 arch/arm/boards/versatile/versatilepb.c            |    3 +
 arch/arm/boards/vexpress/Kconfig                   |    2 -
 arch/arm/boards/vexpress/env/config                |    2 -
 arch/arm/boards/vexpress/init.c                    |   20 +-
 arch/arm/configs/am335x_beaglebone_defconfig       |   17 +-
 .../configs/am335x_beaglebone_mlo_small_defconfig  |    6 +-
 arch/arm/configs/friendlyarm_tiny210_defconfig     |    1 -
 arch/arm/configs/imx_v7_defconfig                  |    1 +
 arch/arm/configs/pcm051_defconfig                  |    1 +
 arch/arm/configs/pcm051_mlo_defconfig              |    2 +-
 arch/arm/configs/phycard_a_l1_defconfig            |    1 -
 arch/arm/configs/solidrun_cubox_defconfig          |   25 +-
 arch/arm/cpu/Makefile                              |    8 +-
 arch/arm/cpu/cpuinfo.c                             |   33 +
 arch/arm/cpu/lowlevel.S                            |   39 +
 arch/arm/cpu/mmu.c                                 |    2 +-
 arch/arm/cpu/start.c                               |    4 +-
 arch/arm/cpu/uncompress.c                          |    2 +
 arch/arm/dts/Makefile                              |    4 +
 arch/arm/dts/dove-cubox.dts                        |    2 +-
 arch/arm/dts/dove.dtsi                             |    3 +-
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts           |   23 +
 arch/arm/dts/imx6dl-mba6x.dts                      |   30 +-
 arch/arm/dts/imx6dl-pinfunc.h                      | 2138 +++++++--------
 arch/arm/dts/imx6dl-tqma6s.dtsi                    |   84 +-
 arch/arm/dts/imx6dl.dtsi                           |  356 +--
 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts            |   23 +
 arch/arm/dts/imx6q-dmo-realq7.dts                  |   24 +-
 arch/arm/dts/imx6q-gk802.dts                       |   12 +-
 arch/arm/dts/imx6q-mba6x.dts                       |   28 +-
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              |    8 +-
 arch/arm/dts/imx6q-pinfunc.h                       | 2050 +++++++--------
 arch/arm/dts/imx6q-sabrelite.dts                   |   16 +-
 arch/arm/dts/imx6q-sabresd.dts                     |   12 +-
 arch/arm/dts/imx6q-tqma6q.dtsi                     |  140 +-
 arch/arm/dts/imx6q-tqma6x.dts                      |   34 +-
 arch/arm/dts/imx6q.dtsi                            |  305 +--
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi            |  115 +
 arch/arm/dts/imx6qdl.dtsi                          |  303 +++
 arch/arm/include/asm/barebox-arm-head.h            |   64 +-
 arch/arm/include/asm/cache.h                       |   10 -
 arch/arm/include/asm/gpio.h                        |    5 +-
 arch/arm/mach-at91/Kconfig                         |   28 -
 arch/arm/mach-at91/Makefile                        |    2 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |    3 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   11 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   11 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   11 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   10 +-
 arch/arm/mach-at91/at91sam9n12_devices.c           |    3 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |    3 +-
 arch/arm/mach-at91/generic.h                       |    2 +
 arch/arm/mach-at91/gpio.c                          |    2 +-
 arch/arm/mach-at91/include/mach/at91_rtt.h         |   35 +
 arch/arm/mach-at91/include/mach/gpio.h             |  268 --
 arch/arm/mach-at91/include/mach/io.h               |    1 +
 arch/arm/mach-at91/include/mach/iomux.h            |  266 ++
 arch/arm/mach-at91/irq_fixup.c                     |   22 +
 arch/arm/mach-at91/sama5d3_devices.c               |    3 +-
 arch/arm/mach-bcm2835/Kconfig                      |    3 -
 arch/arm/mach-bcm2835/include/mach/gpio.h          |    1 -
 arch/arm/mach-clps711x/Kconfig                     |    3 -
 arch/arm/mach-clps711x/include/mach/gpio.h         |    3 -
 arch/arm/mach-ep93xx/Kconfig                       |   24 -
 arch/arm/mach-ep93xx/lowlevel_init.S               |    2 +-
 arch/arm/mach-highbank/Kconfig                     |    3 -
 arch/arm/mach-highbank/include/mach/gpio.h         |    1 -
 arch/arm/mach-imx/Kconfig                          |   36 +-
 arch/arm/mach-imx/imx-bbu-internal.c               |  104 +-
 arch/arm/mach-imx/include/mach/debug_ll.h          |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |    5 +
 arch/arm/mach-imx/include/mach/gpio.h              |    8 -
 arch/arm/mach-imx/include/mach/iomux-v1.h          |    1 +
 arch/arm/mach-mvebu/Kconfig                        |    9 +-
 arch/arm/mach-mvebu/Makefile                       |    2 +-
 arch/arm/mach-mvebu/armada-370-xp.c                |    3 +
 arch/arm/mach-mvebu/common.c                       |    4 +-
 arch/arm/mach-mvebu/dove.c                         |   58 -
 arch/arm/mach-mvebu/include/mach/gpio.h            |    6 -
 arch/arm/mach-mvebu/include/mach/lowlevel.h        |    2 +-
 arch/arm/mach-mvebu/kirkwood.c                     |    3 +
 arch/arm/mach-mvebu/lowlevel.c                     |    2 +-
 arch/arm/mach-mxs/Kconfig                          |    8 -
 arch/arm/mach-mxs/include/mach/gpio.h              |   11 -
 arch/arm/mach-mxs/include/mach/iomux-imx23.h       |    6 +-
 arch/arm/mach-mxs/include/mach/iomux.h             |   30 +
 arch/arm/mach-mxs/iomux-imx.c                      |    1 +
 arch/arm/mach-mxs/usb-imx28.c                      |    5 +-
 arch/arm/mach-netx/Kconfig                         |    3 -
 arch/arm/mach-nomadik/Kconfig                      |    3 -
 arch/arm/mach-omap/Kconfig                         |   20 +-
 arch/arm/mach-omap/Makefile                        |    1 +
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c            |   88 +
 arch/arm/mach-omap/am33xx_clock.c                  |   28 +-
 arch/arm/mach-omap/am33xx_generic.c                |  190 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h     |   11 +-
 arch/arm/mach-omap/include/mach/am33xx-devices.h   |    6 +
 arch/arm/mach-omap/include/mach/am33xx-generic.h   |   19 +
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |   52 +-
 arch/arm/mach-omap/include/mach/bbu.h              |   15 +
 arch/arm/mach-omap/include/mach/debug_ll.h         |    4 +-
 arch/arm/mach-omap/include/mach/generic.h          |   10 +-
 arch/arm/mach-omap/include/mach/gpio.h             |    1 -
 arch/arm/mach-omap/include/mach/omap3-generic.h    |   21 +
 arch/arm/mach-omap/include/mach/omap4-generic.h    |   21 +
 arch/arm/mach-omap/include/mach/omap_hsmmc.h       |    1 +
 arch/arm/mach-omap/include/mach/sys_info.h         |   10 +-
 arch/arm/mach-omap/omap4_generic.c                 |    1 -
 arch/arm/mach-omap/omap_generic.c                  |   31 +-
 arch/arm/mach-omap/xload.c                         |   19 +-
 arch/arm/mach-pxa/Kconfig                          |    5 -
 arch/arm/mach-samsung/Kconfig                      |    8 -
 arch/arm/mach-samsung/gpio-s3c24x0.c               |    1 +
 arch/arm/mach-samsung/gpio-s3c64xx.c               |    1 +
 arch/arm/mach-samsung/gpio-s5pcxx.c                |    1 +
 arch/arm/mach-samsung/include/mach/gpio.h          |   12 -
 arch/arm/mach-samsung/include/mach/iomux.h         |   28 +
 arch/arm/mach-tegra/Kconfig                        |    3 -
 arch/arm/mach-tegra/include/mach/gpio.h            |    1 -
 arch/arm/mach-vexpress/Kconfig                     |    3 -
 arch/arm/mach-zynq/Kconfig                         |    3 -
 arch/blackfin/Kconfig                              |    3 -
 arch/blackfin/boards/ipe337/ipe337.c               |    4 +-
 arch/mips/boards/dlink-dir-320/Kconfig             |    6 -
 arch/mips/boards/dlink-dir-320/serial.c            |    3 +
 arch/mips/boards/netgear-wg102/Kconfig             |    6 -
 arch/mips/boards/netgear-wg102/ram.c               |    3 +
 arch/mips/boards/qemu-malta/Kconfig                |    6 -
 arch/mips/boards/qemu-malta/init.c                 |   29 +-
 arch/mips/boards/rzx50/Kconfig                     |    6 -
 arch/mips/boards/rzx50/serial.c                    |    3 +
 arch/mips/boot/main_entry-pbl.c                    |    2 +-
 arch/mips/configs/qemu-malta_defconfig             |    1 +
 arch/mips/dts/qemu-malta.dts                       |   33 +
 arch/mips/mach-ar231x/Kconfig                      |    2 -
 arch/mips/mach-bcm47xx/Kconfig                     |    2 -
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h     |    6 +-
 arch/mips/mach-malta/Kconfig                       |    2 -
 arch/mips/mach-xburst/Kconfig                      |    2 -
 arch/nios2/Kconfig                                 |    3 -
 arch/nios2/boards/generic/generic.c                |    3 +
 arch/openrisc/Kconfig                              |    3 -
 arch/openrisc/boards/generic/generic.c             |    3 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |    3 +
 arch/ppc/boards/pcm030/pcm030.c                    |    3 +
 arch/ppc/include/asm/processor.h                   |    4 +
 arch/ppc/lib/ppclinux.c                            |   49 +-
 arch/ppc/mach-mpc5xxx/Kconfig                      |    3 -
 arch/ppc/mach-mpc85xx/Kconfig                      |    3 -
 arch/ppc/mach-mpc85xx/Makefile                     |    1 +
 arch/ppc/mach-mpc85xx/fdt.c                        |  146 ++
 arch/sandbox/Kconfig                               |    3 -
 arch/sandbox/board/devices.c                       |    3 +
 arch/x86/Kconfig                                   |    3 -
 arch/x86/boards/x86_generic/generic_pc.c           |    3 +
 commands/bootm.c                                   |   29 +-
 commands/detect.c                                  |    1 +
 commands/dfu.c                                     |    4 +-
 commands/global.c                                  |   17 +-
 commands/of_property.c                             |   36 +-
 commands/oftree.c                                  |    2 +-
 commands/usbserial.c                               |    4 +-
 common/Kconfig                                     |    2 +-
 common/console.c                                   |    8 +-
 common/console_simple.c                            |    2 +-
 common/filetype.c                                  |    2 +
 common/globalvar.c                                 |   19 +-
 common/misc.c                                      |   67 +-
 common/reset_source.c                              |    4 +-
 common/version.c                                   |    2 +-
 drivers/ata/ide-sff.c                              |    3 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/mvebu/Makefile                         |    5 +
 drivers/clk/mvebu/armada-370.c                     |  160 ++
 drivers/clk/mvebu/armada-xp.c                      |  194 ++
 drivers/clk/mvebu/common.c                         |  208 ++
 drivers/clk/mvebu/common.h                         |   70 +
 drivers/clk/mvebu/dove.c                           |  179 ++
 drivers/clk/mvebu/kirkwood.c                       |  224 ++
 drivers/clk/mxs/clk-imx28.c                        |    5 +-
 drivers/mci/omap_hsmmc.c                           |   24 +-
 drivers/mci/sdhci.h                                |    4 +-
 drivers/mfd/syscon.c                               |    2 +-
 drivers/mtd/nand/nand_mxs.c                        |    1 +
 drivers/mtd/ubi/cdev.c                             |    6 +
 drivers/mtd/ubi/kapi.c                             |   93 +
 drivers/mtd/ubi/ubi-barebox.h                      |    8 -
 drivers/mtd/ubi/ubi.h                              |    2 +
 drivers/net/phy/phy.c                              |   63 +
 drivers/of/Kconfig                                 |    1 +
 drivers/of/base.c                                  |  158 +-
 drivers/of/fdt.c                                   |    5 +-
 drivers/pwm/core.c                                 |    7 +
 drivers/serial/serial_auart.c                      |    2 +-
 drivers/spi/atmel_spi.c                            |    1 +
 drivers/spi/mxs_spi.c                              |    4 +-
 drivers/video/fb.c                                 |   98 +-
 drivers/video/stm.c                                |    3 +-
 fs/Kconfig                                         |    1 +
 fs/Makefile                                        |    1 +
 fs/fat/fat.c                                       |    1 +
 fs/tftp.c                                          |    2 +-
 fs/ubifs/Kconfig                                   |   18 +
 fs/ubifs/Makefile                                  |    4 +
 fs/ubifs/budget.c                                  |  113 +
 fs/ubifs/crc16.c                                   |   60 +
 fs/ubifs/crc16.h                                   |   29 +
 fs/ubifs/debug.c                                   |  156 ++
 fs/ubifs/debug.h                                   |  392 +++
 fs/ubifs/io.c                                      |  316 +++
 fs/ubifs/key.h                                     |  557 ++++
 fs/ubifs/log.c                                     |  104 +
 fs/ubifs/lprops.c                                  |  842 ++++++
 fs/ubifs/lpt.c                                     | 1105 ++++++++
 fs/ubifs/lpt_commit.c                              |  171 ++
 fs/ubifs/master.c                                  |  341 +++
 fs/ubifs/misc.h                                    |  311 +++
 fs/ubifs/orphan.c                                  |  318 +++
 fs/ubifs/recovery.c                                | 1225 +++++++++
 fs/ubifs/replay.c                                  | 1070 ++++++++
 fs/ubifs/sb.c                                      |  346 +++
 fs/ubifs/scan.c                                    |  362 +++
 fs/ubifs/super.c                                   |  907 +++++++
 fs/ubifs/tnc.c                                     | 2767 ++++++++++++++++=
++++
 fs/ubifs/tnc_misc.c                                |  435 +++
 fs/ubifs/ubifs-media.h                             |  775 ++++++
 fs/ubifs/ubifs.c                                   |  654 +++++
 fs/ubifs/ubifs.h                                   | 2151 +++++++++++++++
 images/.gitignore                                  |    2 +
 images/Makefile                                    |   10 +-
 images/Makefile.imx                                |   21 +-
 images/Makefile.mvebu                              |   26 +
 include/bootstrap.h                                |    2 +
 include/common.h                                   |   13 +-
 include/debug_ll.h                                 |   61 +-
 include/filetype.h                                 |    1 +
 include/globalvar.h                                |    4 +-
 include/linux/barebox-wrapper.h                    |   32 +
 include/linux/mtd/ubi.h                            |    1 +
 include/linux/phy.h                                |    4 +
 include/linux/zlib.h                               |    4 +
 include/of.h                                       |   16 +
 include/usb/dfu.h                                  |    2 +-
 include/usb/usbserial.h                            |    2 +-
 lib/copy_file.c                                    |   10 +-
 lib/decompress_inflate.c                           |   39 +
 lib/process_escape_sequence.c                      |    2 +-
 lib/show_progress.c                                |    5 +-
 net/dhcp.c                                         |    3 +-
 net/eth.c                                          |   22 +-
 net/net.c                                          |    2 +-
 scripts/Makefile.lib                               |    3 +
 scripts/genenv                                     |    2 +-
 424 files changed, 22697 insertions(+), 4551 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/beaglebone.h
 create mode 100644 arch/arm/boards/dfi-fs700-m60/Makefile
 create mode 100644 arch/arm/boards/dfi-fs700-m60/board.c
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q=
.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s=
.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/lowlevel.c
 rename arch/arm/boards/pcm051/env/boot/{sd =3D> mmc} (100%)
 rename arch/arm/boards/pcm051/env/boot/{nand-ubi =3D> nand} (64%)
 create mode 100644 arch/arm/boards/pcm051/env/boot/spi
 delete mode 100644 arch/arm/boards/pcm051/env/boot/spi-nor
 delete mode 100644 arch/arm/boards/pcm051/env/config
 create mode 100644 arch/arm/boards/pcm051/env/config-board
 delete mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
 create mode 100644 arch/arm/cpu/lowlevel.S
 create mode 100644 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts
 create mode 100644 arch/arm/dts/imx6q-dfi-fs700-m60-6q.dts
 create mode 100644 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
 create mode 100644 arch/arm/mach-at91/include/mach/at91_rtt.h
 create mode 100644 arch/arm/mach-at91/include/mach/iomux.h
 create mode 100644 arch/arm/mach-at91/irq_fixup.c
 delete mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-clps711x/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-imx/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-mvebu/include/mach/gpio.h
 create mode 100644 arch/arm/mach-mxs/include/mach/iomux.h
 create mode 100644 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
 create mode 100644 arch/arm/mach-omap/include/mach/bbu.h
 delete mode 100644 arch/arm/mach-omap/include/mach/gpio.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap3-generic.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-generic.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux.h
 delete mode 100644 arch/arm/mach-tegra/include/mach/gpio.h
 delete mode 100644 arch/mips/boards/dlink-dir-320/Kconfig
 delete mode 100644 arch/mips/boards/netgear-wg102/Kconfig
 delete mode 100644 arch/mips/boards/qemu-malta/Kconfig
 delete mode 100644 arch/mips/boards/rzx50/Kconfig
 create mode 100644 arch/ppc/mach-mpc85xx/fdt.c
 create mode 100644 drivers/clk/mvebu/Makefile
 create mode 100644 drivers/clk/mvebu/armada-370.c
 create mode 100644 drivers/clk/mvebu/armada-xp.c
 create mode 100644 drivers/clk/mvebu/common.c
 create mode 100644 drivers/clk/mvebu/common.h
 create mode 100644 drivers/clk/mvebu/dove.c
 create mode 100644 drivers/clk/mvebu/kirkwood.c
 create mode 100644 fs/ubifs/Kconfig
 create mode 100644 fs/ubifs/Makefile
 create mode 100644 fs/ubifs/budget.c
 create mode 100644 fs/ubifs/crc16.c
 create mode 100644 fs/ubifs/crc16.h
 create mode 100644 fs/ubifs/debug.c
 create mode 100644 fs/ubifs/debug.h
 create mode 100644 fs/ubifs/io.c
 create mode 100644 fs/ubifs/key.h
 create mode 100644 fs/ubifs/log.c
 create mode 100644 fs/ubifs/lprops.c
 create mode 100644 fs/ubifs/lpt.c
 create mode 100644 fs/ubifs/lpt_commit.c
 create mode 100644 fs/ubifs/master.c
 create mode 100644 fs/ubifs/misc.h
 create mode 100644 fs/ubifs/orphan.c
 create mode 100644 fs/ubifs/recovery.c
 create mode 100644 fs/ubifs/replay.c
 create mode 100644 fs/ubifs/sb.c
 create mode 100644 fs/ubifs/scan.c
 create mode 100644 fs/ubifs/super.c
 create mode 100644 fs/ubifs/tnc.c
 create mode 100644 fs/ubifs/tnc_misc.c
 create mode 100644 fs/ubifs/ubifs-media.h
 create mode 100644 fs/ubifs/ubifs.c
 create mode 100644 fs/ubifs/ubifs.h
 create mode 100644 images/Makefile.mvebu
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
