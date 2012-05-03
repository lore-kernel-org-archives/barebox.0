Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPqy0-00040w-6N
 for barebox@lists.infradead.org; Thu, 03 May 2012 08:00:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SPqxx-0000cZ-T6
 for barebox@lists.infradead.org; Thu, 03 May 2012 10:00:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SPqxx-0007xB-S0
 for barebox@lists.infradead.org; Thu, 03 May 2012 10:00:45 +0200
Date: Thu, 3 May 2012 10:00:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120503080045.GI4141@pengutronix.de>
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
Subject: v2012.05.0
To: barebox@lists.infradead.org

Hi All,

We have a may release \o/. 145 non merge patches made it into this release,
here is what happened:

----------------------------------------------------------------
Alexander Shiyan (28):
      i.MX51: add support for UART3
      i.MX51: Remove GPIO2.6 setup from lowlevel_init
      i.MX27: Use resigter name in imx27_add_fb
      Use register names for MC13892
      Use mx53-related functions for i.MX53 boards
      Remove duplicate voltage setup for imx-esdhc
      i.MX27: Define base address for SDHC1,2,3
      i.MX27: Add support for SDHC1,3
      i.MX51: Fix name definition for SSI3
      ARM i.MX51 babbage: Remove clock raise from power_init.
      ARM i.MX51 eukrea_cpuimx51: Remove unused include
      Rename definitions for ULPI registers
      Add ULPI detection function.
      Move set_vbus_power code to ULPI driver
      Rename function ulpi_init to ulpi_detect
      Completely migrate option ISP1504 to ULPI
      Cosmetic change name ISP1504 -> ISP150x
      i.MX27: Added helper for setup chipselect control register
      i.MX51: Added definition for 600 mHz PLL setup.
      Select POLLER option for fsl_udc
      i.MX27: Export boot source to magic variables
      Add barebox.map and compressed default_env to distclean
      i.MX51: Fix NANDF_RDY_INT pin definition
      i.MX51: Use register names for imx_gpio_base
      i.MX51: Removed 1000 MHz pll definition
      i.MX5x: Unused pll definitions removed
      PCM-038: fix SRAM device name
      Define barebox_loc magic variable only once

Allan Heldgaard (1):
      mx28-evk: Add LCD support

Asen Chavdarov Dimov (4):
      pm9g45: boot from NAND
      pm9g45: fix Ethernet
      pm9g45: enable MCI0
      pm9g45: enable USB OHCI host and USB mass storage

Enrico Scholz (1):
      net: dhcp: allow to set transmitted vendor id

Eric B=E9nard (3):
      imx27-regs: fix .h usage in assembly file
      fix mxs iomux error in mx23 case
      at91sam9g45_devices: fix warning

Esben Haabendal (5):
      mxs: Fix support for BITKEEPER() macro
      mxs: Fix i.MX28 PWM3 iomux configuration
      mxs: Cleanup use of blank lines in i.MX28 iomux configurations
      mxs: Add remaining i.MX28 iomux configurations
      mx28-evk: Enable LCD support and bmp command

Jan Weitzel (5):
      omap: move scale_vcores to omap4_generic
      omap: move do_set_mux to omap4_generic
      omap: add support for phycard-a-xl2
      NET: Add support for ks8851_mll
      ENV: remove kernelimage_type from env/config

Jean-Christophe PLAGNIOL-VILLARD (48):
      macb: fix mmu support
      at91sam9263ek: add runtime nor detection
      at91sam9263ek: add leds support
      at91sam9263ek: add dfu and usb serial support
      at91sam9263ek: update defconfig
      at91sam9261ek/9g10ek: update partition layout
      at91sam9261ek/9g10ek: add leds support
      at91sam9261ek/9g10ek: add dfu and usb serial support
      at91sam9261ek/9g10ek: add gpio Keyboard support
      at91sam9261ek/9g10ek: update board supprt
      at91sam9m10g45ek: update partition layout
      at91sam9m10g45ek: add leds support
      at91sam9m10g45ek: update defconfig
      at91sam9260ek/9g20ek: update defconfig
      at91: set dhcp vendor id on Atmel Reference board
      defaultenv: add bootp support
      defaultenv: add dhcp-barebox option
      net: at91_ether re-implement against new at91rm9200 api
      at91rm9200ek: enable at91_ether and net support
      at91: set ip mode to dhcp-barebox
      at91rm9200ek: update config for network
      at91rm9200ek: adjust kernel partition to be able to flash mainline ke=
rnel
      at91rm9200ek: add ohci support
      at91rm9200ek: add leds support
      at91rm9200ek: add usb serial support
      at91rm9200ek: update defconfig
      atmel_nand: add on_flash_btt option to enable bbt option
      ARM: at91: add sam9x5 series CPU definition and cpu_is_xxx macro
      ARM: at91: allow to pass the interface id to at91_add_device_eth
      ARM: at91/pio: add new PIO3 features
      AT91: at91sam9x5: add chip and board file
      net: dhcp: factorise option recption handling
      net: dhcp: reset env variable before do a dhcp request
      net: dhcp: add support of tftp name server
      net: dhcp: factorise setting option code
      net: dhcp: allow to set transmitted client id
      net: dhcp: allow to set transmitted client uuid
      net: dhcp: allow to set transmitted user class
      net: env: getenv_ip use resolv
      at91rm9200ek: set maximum nor flash size
      defaultenv/update: fix dhcp-barebox support
      at91: at91_register_uart use number instead of IDs
      tny-a926x: fix MOB-TNY-MD2 Motherboard support
      usb: fix driver name
      menu: fix double action when "\n\r" or "\r\n" is received
      menu: fix non command management support
      menu: fix support for "\n", "\n\r" and "\r"
      menu: fix menu alloc init

Marc Kleine-Budde (1):
      common: memory: fix off-by-one in tlsf_create

Michael Grzeschik (1):
      imx_nand_load_image: change all users to use barebox_image_size

Robert Jarzmik (8):
      drivers/mtd: improve docg3 write speed
      mci: pxamci define timeouts
      mci: pxamci change clocks handling
      mci: pxamci fix response type
      mci: pxamci fix CMD12 handling
      mci: pxamci fix R1b responses
      mci: pxamci poweron ramp delay
      mtd: docg3 fixes backport from Linux kernel

Sascha Hauer (30):
      Merge remote-tracking branch 'jean/at91-update' into next
      fs: change get_fs_device_by_path prototype
      fs: drop struct mtab_entry
      Add automount support
      fs open: pass error from stat
      hush source: expand $PATH
      FAT: Fix error path
      usb command: by default scan only once for USB devices
      partition command: optionally do not automatically prepend the device=
 name
      Merge branch 'work/automount' into next
      defenv: remove bogus defaultenv from defconfigs
      Revert "ARM i.MX53:: Add i2cclk"
      ARM linker script: Fix barebox_image_size
      ARM i.MX flash header: Fix barebox image sizes
      ARM i.MX51 clk: select uart clk parent based on hardware setting
      ARM i.MX51 babbage: move lowlevel setup after power init
      ARM i.MX51 lowlevel: setup full cpu speed unconditionally
      Merge branch 'work/imx-dcd-size' into next
      Merge branch 'work/imx51-babbage-clk' into next
      cfi flash: Fix loop count calculation
      cfi flash: Fix alignment problem
      Merge branch 'next'
      Merge branch 'work/cfi-fixes'
      addpart: remove duplicate line in help text
      filetype: Make it work on files < 512 bytes
      Merge tag 'j-master-fixes' of git://git.jcrosoft.org/barebox
      bootm: fix initrd handling
      hush: bail out of scripts on syntax error
      uimage/file_to_sdram: fix resource allocation
      Release v2012.05.0

Teresa G=E1mez (5):
      pcm049: Update RAM timings
      pcm049: Update muxing
      pcm049: Update GPMC net conf
      devices-gpmc-nand: Add OMAP4 gpmc nand timings
      pcm049_xload_defconfig: activate Thumb-2 support

Uwe Hermann (2):
      Fixup DRIVER_VIDEO_S3C24XX usage.
      menuconfig: Show "Barebox", not "Linux" at the top.

Wolfram Sang (9):
      net: miidev: check for errors when accessing bus in restart_aneg
      net: miidev: Refactor timeout for aneg
      net: miidev: properly check for MII reset
      net: ping: send PING packets with 1-second interval
      net: ping: remove unneeded initialization
      net: tftp: check for error when retrying
      net: arp_request: do not retry endlessly
      net: tftp: do not retry endlessly
      net: ping: do not retry endlessly

guenter.gebhardt@rafi.de (1):
      ARM i.MX53:: Add i2cclk

 Kconfig                                            |    2 +-
 Makefile                                           |    6 +-
 arch/arm/Makefile                                  |    2 +
 arch/arm/boards/at91rm9200ek/env/bin/init_board    |   11 +
 arch/arm/boards/at91rm9200ek/env/config            |    7 +-
 arch/arm/boards/at91rm9200ek/init.c                |   68 +-
 arch/arm/boards/at91sam9260ek/env/config           |   14 +-
 arch/arm/boards/at91sam9260ek/init.c               |    2 +-
 arch/arm/boards/at91sam9261ek/env/bin/init_board   |   51 ++
 arch/arm/boards/at91sam9261ek/env/config           |   16 +-
 arch/arm/boards/at91sam9261ek/init.c               |  111 ++-
 arch/arm/boards/at91sam9263ek/env/bin/init_board   |   51 ++
 arch/arm/boards/at91sam9263ek/env/config           |    9 +-
 arch/arm/boards/at91sam9263ek/init.c               |   87 +-
 arch/arm/boards/at91sam9m10g45ek/env/config        |    7 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |   48 +-
 arch/arm/boards/at91sam9x5ek/Makefile              |    1 +
 arch/arm/boards/at91sam9x5ek/config.h              |    6 +
 arch/arm/boards/at91sam9x5ek/env/config            |   38 +
 arch/arm/boards/at91sam9x5ek/init.c                |  167 ++++
 arch/arm/boards/beagle/board.c                     |    3 +-
 arch/arm/boards/dss11/init.c                       |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    8 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    3 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   11 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    3 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    1 -
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    4 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    8 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   86 ++
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   66 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    4 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    2 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |    3 +-
 arch/arm/boards/guf-neso/board.c                   |    4 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    3 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    3 +-
 arch/arm/boards/imx27ads/imx27ads.c                |   12 +-
 arch/arm/boards/karo-tx25/board.c                  |    3 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    3 +-
 arch/arm/boards/mini2440/Kconfig                   |    2 +-
 arch/arm/boards/mmccpu/init.c                      |    2 +-
 arch/arm/boards/panda/lowlevel.c                   |   33 +-
 arch/arm/boards/panda/mux.c                        |   13 +-
 arch/arm/boards/pcm037/pcm037.c                    |    9 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    3 +-
 arch/arm/boards/pcm038/pcm038.c                    |   18 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    3 +-
 arch/arm/boards/pcm049/board.c                     |   15 +-
 arch/arm/boards/pcm049/lowlevel.c                  |   60 +-
 arch/arm/boards/pcm049/mux.c                       |  251 +++---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    2 +-
 arch/arm/boards/phycard-a-xl2/Makefile             |   20 +
 arch/arm/boards/phycard-a-xl2/config.h             |    1 +
 .../boards/phycard-a-xl2/env/bin/nand_bootstrap    |   31 +
 arch/arm/boards/phycard-a-xl2/env/config           |   47 ++
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |   94 +++
 arch/arm/boards/phycard-a-xl2/mux.c                |  245 ++++++
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |  147 ++++
 arch/arm/boards/phycard-i.MX27/pca100.c            |   11 +-
 arch/arm/boards/pm9263/init.c                      |    2 +-
 arch/arm/boards/pm9g45/env/config                  |    8 +-
 arch/arm/boards/pm9g45/init.c                      |   48 +-
 arch/arm/boards/tny-a926x/env/config               |    2 +-
 arch/arm/boards/tny-a926x/init.c                   |   38 +-
 arch/arm/boards/tqma53/board.c                     |    2 +-
 arch/arm/boards/tqma53/flash_header.c              |    2 +-
 arch/arm/boards/usb-a926x/env/config               |    3 +-
 arch/arm/boards/usb-a926x/init.c                   |    2 +-
 arch/arm/configs/at91rm9200ek_defconfig            |   27 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9261ek_defconfig           |   29 +-
 arch/arm/configs/at91sam9263ek_defconfig           |   31 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |   39 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |    3 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   32 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |   69 ++
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    2 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig  |    2 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    2 +-
 arch/arm/configs/freescale_mx53_smd_defconfig      |    2 +-
 arch/arm/configs/imx28evk_defconfig                |    3 +
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/nhk8815_defconfig                 |    2 +-
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm049_xload_defconfig            |    1 +
 arch/arm/configs/phycard_a_l1_defconfig            |    2 +-
 arch/arm/configs/phycard_a_xl2_defconfig           |   56 ++
 arch/arm/configs/phycard_a_xl2_xload_defconfig     |   41 +
 arch/arm/configs/pm9g45_defconfig                  |   49 +-
 arch/arm/configs/tny_a9260_defconfig               |    2 +-
 arch/arm/configs/tny_a9263_defconfig               |    2 +-
 arch/arm/configs/tny_a9g20_defconfig               |    2 +-
 arch/arm/configs/tqma53_defconfig                  |    2 +-
 arch/arm/lib/barebox.lds.S                         |    2 +-
 arch/arm/mach-at91/Kconfig                         |   35 +
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91rm9200_devices.c            |   17 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   23 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   10 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   14 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   21 +-
 arch/arm/mach-at91/at91sam9x5.c                    |  314 +++++++
 arch/arm/mach-at91/at91sam9x5_devices.c            |  270 ++++++
 arch/arm/mach-at91/clock.c                         |   82 +-
 arch/arm/mach-at91/gpio.c                          |  129 ++-
 arch/arm/mach-at91/include/mach/at91_pio.h         |   25 +
 arch/arm/mach-at91/include/mach/at91_pmc.h         |   68 +-
 arch/arm/mach-at91/include/mach/at91sam9x5.h       |  179 ++++
 .../arm/mach-at91/include/mach/at91sam9x5_matrix.h |  139 +++
 arch/arm/mach-at91/include/mach/board.h            |    2 +-
 arch/arm/mach-at91/include/mach/cpu.h              |   28 +
 arch/arm/mach-at91/include/mach/gpio.h             |    6 +
 arch/arm/mach-at91/include/mach/hardware.h         |    2 +
 arch/arm/mach-imx/Kconfig                          |    2 +-
 arch/arm/mach-imx/boot.c                           |   27 +-
 arch/arm/mach-imx/imx51.c                          |   37 +-
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |   39 -
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   12 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    5 +
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   10 +
 arch/arm/mach-imx/include/mach/imx27-regs.h        |   33 +-
 arch/arm/mach-imx/include/mach/imx51-regs.h        |    2 +-
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |    2 +-
 arch/arm/mach-imx/speed-imx51.c                    |   10 +-
 arch/arm/mach-mxs/include/mach/iomux-imx23.h       |    4 +
 arch/arm/mach-mxs/include/mach/iomux-imx28.h       |  163 +++-
 arch/arm/mach-mxs/iomux-imx.c                      |    6 +
 arch/arm/mach-omap/Kconfig                         |   10 +
 arch/arm/mach-omap/devices-gpmc-nand.c             |   33 +-
 arch/arm/mach-omap/include/mach/gpmc_nand.h        |    6 +-
 arch/arm/mach-omap/include/mach/omap4-mux.h        |    2 +
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |    1 +
 arch/arm/mach-omap/omap3_generic.c                 |   16 +
 arch/arm/mach-omap/omap4_generic.c                 |   57 ++
 arch/openrisc/boards/generic/env/config            |    1 -
 commands/Kconfig                                   |   10 +
 commands/Makefile                                  |    1 +
 commands/automount.c                               |   66 ++
 commands/bootm.c                                   |   24 +-
 commands/menu.c                                    |   17 +-
 commands/mount.c                                   |   10 +-
 commands/partition.c                               |   32 +-
 commands/usb.c                                     |   26 +-
 common/filetype.c                                  |    4 +-
 common/hush.c                                      |   21 +-
 common/memory.c                                    |    2 +-
 common/menu.c                                      |    9 +-
 common/uimage.c                                    |    6 +-
 defaultenv/bin/_boot_help                          |    8 +-
 defaultenv/bin/_update                             |    2 +-
 defaultenv/bin/boot                                |   17 +-
 defaultenv/config                                  |    1 +
 drivers/base/resource.c                            |   33 +
 drivers/mci/imx-esdhc.c                            |    2 -
 drivers/mci/pxamci.c                               |   49 +-
 drivers/mci/pxamci.h                               |    1 +
 drivers/mfd/mc13892.c                              |    2 +-
 drivers/mtd/devices/docg3.c                        |   41 +-
 drivers/mtd/nand/atmel_nand.c                      |    6 +
 drivers/net/Kconfig                                |    8 +
 drivers/net/Makefile                               |    1 +
 drivers/net/at91_ether.c                           |  495 ++++++-----
 drivers/net/at91_ether.h                           |   50 ++
 drivers/net/ks8851_mll.c                           |  891 ++++++++++++++++=
++++
 drivers/net/miidev.c                               |   63 +-
 drivers/nor/cfi_flash_intel.c                      |   20 +-
 drivers/usb/core/usb.c                             |    1 +
 drivers/usb/gadget/Kconfig                         |    1 +
 drivers/usb/otg/Kconfig                            |    8 +-
 drivers/usb/otg/Makefile                           |    1 -
 drivers/usb/otg/isp1504.c                          |   37 -
 drivers/usb/otg/ulpi.c                             |   80 +-
 drivers/usb/storage/usb.c                          |    1 -
 drivers/video/Kconfig                              |    2 +-
 fs/Kconfig                                         |    3 +
 fs/fat/fat.c                                       |   18 +-
 fs/fat/ff.c                                        |    4 +-
 fs/fs.c                                            |  282 +++++--
 include/driver.h                                   |   11 +
 include/fs.h                                       |   19 +-
 include/menu.h                                     |    1 +
 include/net.h                                      |    8 +-
 include/usb/isp1504.h                              |    6 -
 include/usb/ulpi.h                                 |   21 +-
 net/dhcp.c                                         |  434 +++++++---
 net/dns.c                                          |    2 +-
 net/net.c                                          |   14 +-
 net/ping.c                                         |   12 +-
 net/tftp.c                                         |   14 +-
 198 files changed, 5834 insertions(+), 1383 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/env/bin/init_board
 create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/init_board
 create mode 100644 arch/arm/boards/at91sam9263ek/env/bin/init_board
 create mode 100644 arch/arm/boards/at91sam9x5ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9x5ek/config.h
 create mode 100644 arch/arm/boards/at91sam9x5ek/env/config
 create mode 100644 arch/arm/boards/at91sam9x5ek/init.c
 create mode 100644 arch/arm/boards/phycard-a-xl2/Makefile
 create mode 100644 arch/arm/boards/phycard-a-xl2/config.h
 create mode 100644 arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
 create mode 100644 arch/arm/boards/phycard-a-xl2/env/config
 create mode 100644 arch/arm/boards/phycard-a-xl2/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-xl2/mux.c
 create mode 100644 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
 create mode 100644 arch/arm/configs/at91sam9x5ek_defconfig
 create mode 100644 arch/arm/configs/phycard_a_xl2_defconfig
 create mode 100644 arch/arm/configs/phycard_a_xl2_xload_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9x5.c
 create mode 100644 arch/arm/mach-at91/at91sam9x5_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9x5.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
 create mode 100644 commands/automount.c
 create mode 100644 drivers/net/at91_ether.h
 create mode 100644 drivers/net/ks8851_mll.c
 delete mode 100644 drivers/usb/otg/isp1504.c
 delete mode 100644 include/usb/isp1504.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
