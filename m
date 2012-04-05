Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFikY-00014G-B6
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:13:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SFikO-0007jy-PB
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 11:12:52 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SFikO-0003aD-Nt
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 11:12:52 +0200
Date: Thu, 5 Apr 2012 11:12:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405091252.GY3852@pengutronix.de>
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
Subject: barebox-2012.04.0
To: barebox@lists.infradead.org


Hi All,

We have an April release. Here is what happened since the last release.

Happy Easter,

 Sascha

The following changes since commit 8bf69241883f46a2722a93d5198480d893a5c820:

  Release v2012.03.0 (2012-03-06 10:08:09 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git tags/v2012.04.0

for you to fetch changes up to 4eb3478212e49240a1d9e9d8a1e212049829ef68:

  Release v2012.04.0 (2012-04-05 11:03:03 +0200)

----------------------------------------------------------------
Release v2012.04.0

----------------------------------------------------------------
Eric B=E9nard (7):
      add i2c clock support
      mfd: add mc34708 driver
      i.MX53: add silicon revision functions
      i.MX53: enable pull up on I2C0 pins
      mx53-loco: add i2c support
      mx53-loco: add board revision support
      mx53-loco: update defconfig

Jan Weitzel (1):
      mach-omap: add HAS_DEBUG_LL

Jean-Christophe PLAGNIOL-VILLARD (8):
      dfu: add description how to specify the "description" to the long help
      defaultenv/boot: add getopt option support to select boot mode
      add gpio keyboard support
      readkey: add define for Ascii keys
      at91: at91_register_uart return device
      usb-a926x: add DAB MMX Daughter board support
      macb: add timeout on send
      macb: fix mmu support

Juergen Beisert (1):
      serial S3: fix local structure malloc

Lars Poeschel (1):
      Add unaligned.h to sandbox arch

Marek Belisko (1):
      pxa27x_udc: Fix compilation warning.

Robert Jarzmik (8):
      drivers/pwm: add duty_ns and period_ns to core pwm chip
      drivers/pwm: add PXA pulse width modulator controller
      drivers/video: remove pxafb enable on load
      arm/mach-pxa: add standard LCD panel GPIO settings
      arm/mach-pxa: add CCCR bits definitions
      drivers/serial: trivial regression fix
      arm/mach-pxa: add mioa701 board
      drivers/mci: fix read/write stalling

Sanjeev Premi (1):
      omap: xload: Make error more specific

Sascha Hauer (89):
      mci: Add complete definitions for the card type
      mci: use card type definitions
      mci: fix high capacity detection
      mci mxs: do not use external define for internal use
      mci core: replace discrete ios values with struct ios
      mci s3c: Do not mess with struct mci_host
      mci s3c: allocate host struct dynamically
      mci s3c: pass around the right pointer
      mci: remove unused device argument from set_ios
      mci core: fix mixup of max write/read block len
      mci: Use struct mci for internal argument passing
      mci: replace pr_debug with dev_dbg
      mci: factor out mci/sd specific startup functions
      mci: cdev_find_free_index won't fail, no need to check
      mci: Be more verbose on what device is associated to which disk
      Add a timeout polling loop convenience wrapper
      mci i.MX esdhc: use timeout loops
      mci: Add a complete list of EXT_CSD_* fields from the kernel
      mci: Fix 8 bit mmc cards
      mci i.MX esdhc: make 8bit modes platform dependent
      ARM: update mach-types
      ARM i.MX5: Allow to pass cpu clock to lowlevel init
      initial tqm53 support
      usb net smsc95xx: remove unused variable
      usb net smsc95xx: add missing mii_unregister
      usb net: fix unregistration
      net: fix eth device unregistration
      net: set enetaddr to invalid address when an invalid string is passed
      list: add list_last_entry function
      fat: revert fat caching mechanism
      block: reimplement caching
      USB storage: fix disconnect
      Merge branch 'master' into next
      Add pwm core support
      Merge branch 'gpio_keys' of git://uboot.jcrosoft.org/barebox into next
      Merge branch 'pu/block' into next
      Merge branch 'pu/net-usb' into next
      add list_is_singular
      dos partitions: Do not register as fixed partitions
      fs: Store mtab entries in list
      fs: make locally used function get_mtab_entry_by_path static
      fs: Store mtab path in allocated string
      fs: remove unused function fsdev_get_mountpoint
      fs: simplify get_mtab_entry_by_path
      fs: remove only once used variable
      fs: remove fs devices list
      fs: put fs devices on its own bus
      fs: allow to mount on subdirectories
      devices: unregister children when unregistering a device
      Merge branch 'pu/device-cleanup' into next
      Add suport for tftp as a filesystem
      make uimages work on tftpfs
      net: let net_udp_get_payload return void *
      add string for -ETIMEDOUT
      copy_file: limit progress bar to sensible limits
      Merge branch 'work/tftp' into next
      fs: get fs driver using container_of
      fs: get fs device using container_of
      console: use container_of instead of type_data
      serial drivers: remove unused type_data
      serial pxa: fix unregister
      serial imx: fix unregister
      serial stm: fix unregister
      serial s3c: add a driver private struct
      net: use container_of instead of dev->type_data
      net drivers: remove unused type_data
      net fec_imx: drop type_data usage
      net fec_mpc5200: drop type_data usage
      driver: remove unused type_data field from struct driver_d
      getopt: turn commented out printf into debug()
      getopt: save and restore context
      cp: fix memory leak
      command: do not allow abbreviated commands anymore
      ARM boot[zu]: return COMMAND_ERROR_USAGE instead of calling barebox_c=
md_usage
      commands: remove struct command pointer from commands
      remove unused variable from struct driver_d
      ARM: move exception vectors away from start of binary
      ARM: get runtime offset of board_init_lowlevel_return by using separa=
te section
      Merge branch 'pu/command' into next
      ARM: Allow to compile in thumb-2 mode
      ARM: use unconditional branch in exception vectors
      Merge branch 'work/thumb2' into next
      Merge branch 'next'
      string: remove unused bcopy function
      mtd: fix compiler warning
      USB gadget pxa: Fix compiler warning
      mips: Fix compiler warnings
      x86 linker script: Add missing _text
      Release v2012.04.0

Teresa G=E1mez (2):
      pca-a-l1: remove duplicate includes
      pcm038: increase size of barebox partition

 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |   13 +
 arch/arm/Makefile                                  |   13 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 +-
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    3 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |   68 ++-
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 +-
 arch/arm/boards/guf-cupid/board.c                  |    2 +-
 arch/arm/boards/mioa701/Makefile                   |    1 +
 arch/arm/boards/mioa701/board.c                    |  278 +++++++++
 arch/arm/boards/mioa701/config.h                   |   22 +
 arch/arm/boards/mioa701/env/bin/barebox_update     |    5 +
 arch/arm/boards/mioa701/env/bin/init               |   35 ++
 arch/arm/boards/mioa701/env/bin/mtd_env_override   |    4 +
 arch/arm/boards/mioa701/env/bin/sdcard_override    |   16 +
 arch/arm/boards/mioa701/env/config                 |    5 +
 arch/arm/boards/mioa701/mioa701.h                  |   81 +++
 arch/arm/boards/pcm038/env/config                  |    5 +-
 arch/arm/boards/pcm038/pcm038.c                    |   12 +-
 arch/arm/boards/pcm043/pcm043.c                    |    2 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    3 -
 arch/arm/boards/tqma53/Makefile                    |    2 +
 arch/arm/boards/tqma53/board.c                     |  272 +++++++++
 arch/arm/boards/tqma53/config.h                    |    4 +
 arch/arm/boards/tqma53/env/config                  |   43 ++
 arch/arm/boards/tqma53/flash_header.c              |  109 ++++
 arch/arm/boards/usb-a926x/init.c                   |  108 ++++
 arch/arm/configs/freescale_mx53_loco_defconfig     |    5 +-
 arch/arm/configs/mioa701_defconfig                 |   62 ++
 arch/arm/configs/tqma53_defconfig                  |   64 ++
 arch/arm/cpu/cpu.c                                 |   27 +
 arch/arm/cpu/cpuinfo.c                             |    2 +-
 arch/arm/cpu/exceptions.S                          |    1 +
 arch/arm/cpu/mmu.c                                 |    4 +-
 arch/arm/cpu/start.c                               |   35 +-
 arch/arm/include/asm/barebox-arm-head.h            |   36 ++
 arch/arm/include/asm/barebox-arm.h                 |    3 +
 arch/arm/include/asm/unified.h                     |    8 +-
 arch/arm/lib/armlinux.c                            |   17 +-
 arch/arm/lib/barebox.lds.S                         |    7 +-
 arch/arm/lib/bootu.c                               |    8 +-
 arch/arm/lib/bootz.c                               |    8 +-
 arch/arm/mach-at91/Kconfig                         |    9 +
 arch/arm/mach-at91/at91rm9200_devices.c            |    6 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |    6 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |    6 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |    6 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |    6 +-
 arch/arm/mach-at91/include/mach/board.h            |    2 +-
 arch/arm/mach-imx/Kconfig                          |   11 +
 arch/arm/mach-imx/clko.c                           |    2 +-
 arch/arm/mach-imx/imx53.c                          |   56 +-
 arch/arm/mach-imx/include/mach/esdhc.h             |    2 +
 arch/arm/mach-imx/include/mach/imx-regs.h          |    5 +
 arch/arm/mach-imx/include/mach/imx5.h              |    2 +-
 arch/arm/mach-imx/include/mach/iomux-mx53.h        |    8 +-
 arch/arm/mach-imx/internal-nand-boot.c             |    2 +-
 arch/arm/mach-imx/speed-imx53.c                    |   26 +
 arch/arm/mach-imx/speed.c                          |    2 +-
 arch/arm/mach-mxs/imx.c                            |    2 +-
 arch/arm/mach-netx/generic.c                       |    2 +-
 arch/arm/mach-omap/include/mach/debug_ll.h         |   54 ++
 arch/arm/mach-omap/xload.c                         |    5 +-
 arch/arm/mach-pxa/Kconfig                          |   18 +
 arch/arm/mach-pxa/Makefile                         |    1 +
 arch/arm/mach-pxa/devices.c                        |    5 +
 arch/arm/mach-pxa/include/mach/clock.h             |    1 +
 arch/arm/mach-pxa/include/mach/devices.h           |    2 +-
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h        |   32 +
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h       |    5 +
 arch/arm/mach-pxa/include/mach/pxafb.h             |    1 -
 arch/arm/mach-pxa/include/mach/regs-pwm.h          |   20 +
 arch/arm/mach-pxa/speed-pxa27x.c                   |    5 +
 arch/arm/tools/mach-types                          |   62 +-
 arch/blackfin/boards/ipe337/cmd_alternate.c        |    2 +-
 arch/mips/lib/cpuinfo.c                            |    2 +-
 arch/mips/lib/libgcc.h                             |    4 +
 arch/openrisc/lib/cpuinfo.c                        |    2 +-
 arch/sandbox/include/asm/unaligned.h               |   19 +
 arch/x86/lib/barebox.lds.S                         |    1 +
 commands/bmp.c                                     |    2 +-
 commands/bootm.c                                   |    2 +-
 commands/cat.c                                     |    3 +-
 commands/cd.c                                      |    2 +-
 commands/clear.c                                   |    2 +-
 commands/cp.c                                      |    5 +-
 commands/crc.c                                     |    2 +-
 commands/dfu.c                                     |    6 +-
 commands/digest.c                                  |    8 +-
 commands/echo.c                                    |    2 +-
 commands/edit.c                                    |    2 +-
 commands/exec.c                                    |    2 +-
 commands/export.c                                  |    2 +-
 commands/false.c                                   |    2 +-
 commands/flash.c                                   |    4 +-
 commands/go.c                                      |    8 +-
 commands/gpio.c                                    |    8 +-
 commands/help.c                                    |    4 +-
 commands/i2c.c                                     |    6 +-
 commands/insmod.c                                  |    2 +-
 commands/iomem.c                                   |    2 +-
 commands/led.c                                     |    2 +-
 commands/linux16.c                                 |    3 +-
 commands/linux_exec.c                              |    2 +-
 commands/loadb.c                                   |    2 +-
 commands/loadenv.c                                 |    2 +-
 commands/loads.c                                   |    4 +-
 commands/login.c                                   |    2 +-
 commands/ls.c                                      |    2 +-
 commands/lsmod.c                                   |    2 +-
 commands/magicvar.c                                |    2 +-
 commands/mem.c                                     |   10 +-
 commands/meminfo.c                                 |    2 +-
 commands/memtest.c                                 |    2 +-
 commands/menu.c                                    |    2 +-
 commands/mkdir.c                                   |    2 +-
 commands/mount.c                                   |   19 +-
 commands/nand.c                                    |    2 +-
 commands/nandtest.c                                |    2 +-
 commands/net.c                                     |    4 +-
 commands/oftree.c                                  |    2 +-
 commands/partition.c                               |    4 +-
 commands/passwd.c                                  |    2 +-
 commands/printenv.c                                |    2 +-
 commands/pwd.c                                     |    2 +-
 commands/readline.c                                |    2 +-
 commands/reginfo.c                                 |    2 +-
 commands/reset.c                                   |    2 +-
 commands/rm.c                                      |    2 +-
 commands/rmdir.c                                   |    2 +-
 commands/saveenv.c                                 |    2 +-
 commands/setenv.c                                  |    2 +-
 commands/sleep.c                                   |    2 +-
 commands/test.c                                    |    2 +-
 commands/time.c                                    |    2 +-
 commands/timeout.c                                 |    2 +-
 commands/trigger.c                                 |    2 +-
 commands/true.c                                    |    2 +-
 commands/ubi.c                                     |    6 +-
 commands/uimage.c                                  |    2 +-
 commands/umount.c                                  |    2 +-
 commands/uncompress.c                              |    2 +-
 commands/usb.c                                     |    2 +-
 commands/usbserial.c                               |    2 +-
 commands/version.c                                 |    2 +-
 common/block.c                                     |  274 ++++++---
 common/command.c                                   |   38 +-
 common/console.c                                   |    7 +-
 common/hush.c                                      |   23 +-
 common/menu.c                                      |    6 +-
 common/misc.c                                      |    5 +-
 common/partitions.c                                |    2 +-
 common/uimage.c                                    |   25 +
 defaultenv/bin/_boot_help                          |   18 +
 defaultenv/bin/boot                                |   26 +-
 drivers/Kconfig                                    |    3 +
 drivers/Makefile                                   |    2 +
 drivers/base/driver.c                              |   22 +-
 drivers/input/Kconfig                              |   19 +
 drivers/input/Makefile                             |    1 +
 drivers/input/gpio_keys.c                          |  115 ++++
 drivers/mci/atmel_mci.c                            |   19 +-
 drivers/mci/imx-esdhc.c                            |   50 +-
 drivers/mci/imx.c                                  |   19 +-
 drivers/mci/mci-core.c                             |  619 +++++++++++-----=
---
 drivers/mci/mci_spi.c                              |    3 +-
 drivers/mci/mxs.c                                  |   17 +-
 drivers/mci/omap_hsmmc.c                           |   20 +-
 drivers/mci/pxamci.c                               |   20 +-
 drivers/mci/s3c.c                                  |  165 +++--
 drivers/mfd/Kconfig                                |    4 +
 drivers/mfd/Makefile                               |    1 +
 drivers/mfd/mc34708.c                              |  294 +++++++++
 drivers/mtd/core.c                                 |    2 +
 drivers/mtd/nand/nand_s3c24xx.c                    |    2 +-
 drivers/net/altera_tse.c                           |    2 -
 drivers/net/cs8900.c                               |    3 +-
 drivers/net/dm9k.c                                 |    1 -
 drivers/net/ep93xx.c                               |    1 -
 drivers/net/fec_imx.c                              |    6 +-
 drivers/net/fec_mpc5200.c                          |   12 +-
 drivers/net/macb.c                                 |   14 +-
 drivers/net/netx_eth.c                             |    1 -
 drivers/net/smc91111.c                             |    1 -
 drivers/net/smc911x.c                              |    1 -
 drivers/net/tap.c                                  |    1 -
 drivers/net/usb/smsc95xx.c                         |    7 +-
 drivers/net/usb/usbnet.c                           |    6 +-
 drivers/pwm/Kconfig                                |   18 +
 drivers/pwm/Makefile                               |    2 +
 drivers/pwm/core.c                                 |  237 ++++++++
 drivers/pwm/pxa_pwm.c                              |  157 +++++
 drivers/serial/amba-pl011.c                        |    1 -
 drivers/serial/arm_dcc.c                           |    1 -
 drivers/serial/atmel.c                             |    1 -
 drivers/serial/linux_console.c                     |    1 -
 drivers/serial/serial_altera.c                     |    1 -
 drivers/serial/serial_altera_jtag.c                |    1 -
 drivers/serial/serial_blackfin.c                   |    1 -
 drivers/serial/serial_imx.c                        |    8 +-
 drivers/serial/serial_mpc5xxx.c                    |    3 +-
 drivers/serial/serial_netx.c                       |    1 -
 drivers/serial/serial_ns16550.c                    |    1 -
 drivers/serial/serial_pl010.c                      |    1 -
 drivers/serial/serial_pxa.c                        |    7 +-
 drivers/serial/serial_s3c.c                        |   47 +-
 drivers/serial/stm-serial.c                        |    9 +-
 drivers/usb/gadget/pxa27x_udc.c                    |    6 +-
 drivers/usb/gadget/u_serial.c                      |    2 +-
 drivers/usb/storage/usb.c                          |   23 +-
 drivers/usb/storage/usb.h                          |    1 +
 drivers/video/pxa.c                                |    3 -
 fs/Kconfig                                         |    4 +
 fs/Makefile                                        |    1 +
 fs/cramfs/cramfs.c                                 |    3 +-
 fs/devfs.c                                         |    1 -
 fs/fat/fat.c                                       |    3 +-
 fs/fat/ff.c                                        |   93 +--
 fs/fs.c                                            |  267 ++++----
 fs/ramfs.c                                         |    1 -
 fs/tftp.c                                          |  643 ++++++++++++++++=
++++
 include/block.h                                    |   16 +-
 include/clock.h                                    |   19 +
 include/command.h                                  |    2 +-
 include/common.h                                   |    6 +
 include/driver.h                                   |   12 +-
 include/fs.h                                       |   22 +-
 include/getopt.h                                   |   14 +-
 include/gpio_keys.h                                |   30 +
 include/linux/list.h                               |   20 +
 include/mci.h                                      |  103 +++-
 include/mfd/mc34708.h                              |  102 ++++
 include/net.h                                      |    4 +-
 include/pwm.h                                      |   68 +++
 include/readkey.h                                  |    4 +
 lib/copy_file.c                                    |    5 +-
 lib/getopt.c                                       |   24 +-
 lib/string.c                                       |   24 -
 net/dhcp.c                                         |    2 +-
 net/dns.c                                          |    2 +-
 net/eth.c                                          |   10 +-
 net/net.c                                          |    6 +-
 net/nfs.c                                          |    2 +-
 net/ping.c                                         |    2 +-
 net/tftp.c                                         |    2 +-
 252 files changed, 4803 insertions(+), 1146 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/Makefile
 create mode 100644 arch/arm/boards/mioa701/board.c
 create mode 100644 arch/arm/boards/mioa701/config.h
 create mode 100644 arch/arm/boards/mioa701/env/bin/barebox_update
 create mode 100644 arch/arm/boards/mioa701/env/bin/init
 create mode 100644 arch/arm/boards/mioa701/env/bin/mtd_env_override
 create mode 100644 arch/arm/boards/mioa701/env/bin/sdcard_override
 create mode 100644 arch/arm/boards/mioa701/env/config
 create mode 100644 arch/arm/boards/mioa701/mioa701.h
 create mode 100644 arch/arm/boards/tqma53/Makefile
 create mode 100644 arch/arm/boards/tqma53/board.c
 create mode 100644 arch/arm/boards/tqma53/config.h
 create mode 100644 arch/arm/boards/tqma53/env/config
 create mode 100644 arch/arm/boards/tqma53/flash_header.c
 create mode 100644 arch/arm/configs/mioa701_defconfig
 create mode 100644 arch/arm/configs/tqma53_defconfig
 create mode 100644 arch/arm/include/asm/barebox-arm-head.h
 create mode 100644 arch/arm/mach-omap/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-pwm.h
 create mode 100644 arch/sandbox/include/asm/unaligned.h
 create mode 100644 defaultenv/bin/_boot_help
 create mode 100644 drivers/input/Kconfig
 create mode 100644 drivers/input/Makefile
 create mode 100644 drivers/input/gpio_keys.c
 create mode 100644 drivers/mfd/mc34708.c
 create mode 100644 drivers/pwm/Kconfig
 create mode 100644 drivers/pwm/Makefile
 create mode 100644 drivers/pwm/core.c
 create mode 100644 drivers/pwm/pxa_pwm.c
 create mode 100644 fs/tftp.c
 create mode 100644 include/gpio_keys.h
 create mode 100644 include/mfd/mc34708.h
 create mode 100644 include/pwm.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
