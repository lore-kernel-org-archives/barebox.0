Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiSiU-0004PY-4O
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 15:25:28 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RiSiJ-0005W2-4z
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 16:25:15 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RiSiI-00040x-W2
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 16:25:14 +0100
Date: Wed, 4 Jan 2012 16:25:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120104152514.GV5446@pengutronix.de>
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
Subject: v2012.01.0
To: barebox@lists.infradead.org

Happy newyear release :)

This is one of the bigger releases. Here is what happened since the last
release.

Sascha

Antony Pavlov (2):
      fix "no previous prototype for 'sbrk'" warning
      decompress_inflate.c: fix "no previous prototype for 'gunzip'" warning

Enrico Scholz (2):
      ARM: mark 'lr' as clobbered by inline assembler
      ARM: set SCTRL[A] only when architecture does not support unaligned a=
ccess

Eric B=E9nard (7):
      i.MX25: fix LD16 & LD17 iomux
      CPUIMX35: enable the watchdog clock asap
      CPUIMX51: fix environement
      CPUIMX51: configure SD1 iomux when ESDHC is enabled
      CPUIMX51: update defconfig
      eukrea_cpuimx25: update defconfig
      eukrea_cpuimx35: update defconfig

Franck Jullien (4):
      crypto: Add crc7 function
      mci: Add MCI over SPI support
      spi/altera_spi: Add cs_change support
      nios2: remove one "_" from etext an stext

Hubert Feurstein (1):
      commands/cp: add verbose mode which displays progress bar

Jean-Christophe PLAGNIOL-VILLARD (10):
      sandbox: move ELFCLASS detection to asm/elf.h
      mx53: fix devid for imx53_add_mmc1/2
      imx-esdhc: add support of card detect
      mx53 loco: update sd support
      imx: add mx53 SMD board support
      mci: add the probe parameter if any error happened during the probe
      sanbox: add linux_execve and linux_exec command
      at91sam9263: fix mci clock
      at91: fix reset
      usb-a926x: fix mem init

Juergen Beisert (14):
      Mini2440: Everything's now present to provide USB host feature
      USB Mass Storage driver: Fix compile time warning
      Create a unique cdev number for on demand devices
      ATA/DISK: Add generic disk support when enabling the BIOS disk driver
      ATA/DISK: Enabling write support does not belong to 'drive types'
      ATA/DISK: Reorganize file structure and names for future updates
      ATA/DISK: The BIOS based disk driver is not an interface
      ATA/DISK: Share important constants and structures
      DISK: Add common partition handling for disk like media
      Use generic block layer to access the drives and do partition parsing
      Remove 'disk_drive.c' as it is now replaced by generic partition hand=
ling
      ATA/DISK: Remove the now unused header <ata.h>
      ATA Disk Support: Add support for native ATA type drives
      Add driver for IDE like interfaces

Marc Kleine-Budde (1):
      arm/mach-pxa: Initial Intel/Marvell PXA support

Michael Grzeschik (8):
      storage/usb.c: fix test_unit_ready
      atmel_mci: check for device id we use to address the right slot
      at91sam9260_devices: properly set slot id
      at91sam9260_devices: add flag to change ETX{2,3} pincfg on add_device=
_eth
      arm: update mach-types
      platform: add support for aizo dSS11
      dss11: add defconfig
      at91sam9260_devices: change flag ETX{2,3} to what was intended

Robert Jarzmik (7):
      arm: trivial renaming create_sections
      console: add console unregistering
      usb/gadget: add pxa27x_udc driver
      usb/gadget: use generic usb_gadget_poll() in u_serial
      usb/gadget: add USB serial connect and disconnect
      usb/gadget: make serial gadget resistant to cable unplug
      drivers/video: add PXA framebuffer support

Robert P. J. Day (2):
      Some trivial grammar/spelling fixes for main README file.
      Update README to refer to newer location of example environment

Sanjeev Premi (1):
      omap: Unify run_shell() in xload configuration

Sascha Hauer (89):
      mci: implement multi block write
      mci: remove unnecessary loops
      ARM i.MX53: enable l2 cache
      Merge branch 'pu/mci/multiblock-write' into next
      mmc spi: add missing dependency on SPI
      mmc spi: compile fix
      remove irq support fragments
      MAKEALL: use '.' instead of 'source'
      Merge branch 'pu/mmc-spi' into next
      Merge branch 'master' into next
      add magicvar command
      bootm: Add bootargs magicvar
      ARM i.MX boot: Add barebox_loc magicvar
      hush: Add magicvars
      dhcp: Add magicvars
      Merge branch 'work/magicvars' into next
      bootm: remove dead code
      factor out iminfo command
      compile in simple_strtoull
      introduce some env helpers
      armlinux: cleanup linux vars
      ARM bootm: remove now obsolete args
      bootm: handle initrds inline
      bootm: remove image handler options
      bootm: fix various memory leaks
      bootm: do not require -L after -r
      bootm: fix typo, update help str
      bootm relocate_image: honour load_address
      bootm: push relocate_image up to the generic command
      bootm: use initrd_address and initrd_size
      armlinux: remove unnecessary include
      arm bootm: remove unnecessary include
      scripts/mkimage.c: remove unnecessary include
      use kernel bunzip implementation
      remove old bzlib
      add kernel gunzip implementation
      remove old zlib
      lib: prompt for uncompression functions
      bootm: do not select uncompression methods
      add file detection support
      lzo: export decompress_unlzo function
      Add generic uncompress function
      add generic uncompress command
      update configs and default envs for uncompress
      remove now unused unlzo function
      bootm: use generic uncompress function
      bootm: remove dead code
      fix malloc space sizes
      add resource management functions
      add iomem command to show iomem usage
      register sdram as resources
      implement resource management for platform devices
      mci imx esdhc: enable i.MX53 fix for i.MX51 aswell
      ARM i.MX53: Adjust MMC clock frequencies to 200MHz
      mci imx-esdhc: do not overwrite probed host caps
      fix cramfs support broken since zlib update
      add armlinux specific magicvar descriptions
      ramfs: increase chunk size to 8192 bytes
      Merge branch 'pu/imx53-sdhc' into next
      Merge branch 'pu/resources' into next
      Merge branch 'pu/cramfs-fix' into next
      mci Kconfig: select DISK_WRITE instead of ATA_WRITE
      Merge branch 'next'
      mci s3c: remove unused code
      memory: do not try to reserve iomem on sandbox
      remove unused Kconfig variable HAS_CFI
      fix underscore count in bss_start/bss_stop
      console_simple: fix compiler warning
      net macb: remove unused variable
      pxa: add type to Kconfig choice
      ft_build: temporarily disable bootm oftree support
      arm eukrea boards: fix breakage after mach-types update
      arm at91sam9260: Add missing AT91SAM_ETX2_ETX3_ALTERNATIVE define
      x86: Fix linker script for magic vars
      make dos partition support default yes if we have disk partition supp=
ort
      bootm: factor out initrd code from option parser
      uncompress: fix uncompress_buf usage
      time command: Fix needed string length
      ARM: pass -msoft-float
      uncompress: fix uncompress_buf usage
      time command: Fix needed string length
      ARM: pass -msoft-float
      Merge branch 'pu/fixes'
      ppc pcm030: Fix device resource sizes
      pcm030: update defconfig
      ppc pcm030: Move memory registration to mem_initcall
      mtd nand: fix oob compile time option
      uart drivers: use xzalloc instead of xmalloc
      Release v2012.01.0

Steve Schefter (1):
      nand_omap_bch_decoder: Fix up error detection

Teresa G=E1mez (1):
      pcm038: Updated NOR-Flash CS values

Wolfram Sang (2):
      nand: base: Improve error reporting if reading NAND-ID fails
      commands: really print BAREBOX_CMD_HELP_TEXT

 MAKEALL                                            |    2 +-
 Makefile                                           |    4 +-
 README                                             |   22 +-
 arch/arm/Kconfig                                   |    5 +
 arch/arm/Makefile                                  |    8 +-
 arch/arm/boards/dss11/Makefile                     |    1 +
 arch/arm/boards/dss11/config.h                     |    6 +
 arch/arm/boards/dss11/env/config                   |   42 +
 arch/arm/boards/dss11/init.c                       |  156 ++
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    5 +
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx51/env/config         |    1 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    9 +
 arch/arm/boards/freescale-mx53-loco/board.c        |   36 +-
 arch/arm/boards/freescale-mx53-smd/Makefile        |    2 +
 arch/arm/boards/freescale-mx53-smd/board.c         |  170 ++
 .../arm/boards/freescale-mx53-smd/config.h         |   29 +-
 arch/arm/boards/freescale-mx53-smd/env/config      |   51 +
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |  101 +
 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox    |    4 +
 arch/arm/boards/mini2440/mini2440.c                |    2 +
 arch/arm/boards/omap/board-beagle.c                |   31 -
 arch/arm/boards/panda/board.c                      |   19 -
 arch/arm/boards/pcm038/pcm038.c                    |    6 +-
 arch/arm/boards/pcm049/board.c                     |   30 -
 arch/arm/boards/usb-a926x/init.c                   |   17 +-
 arch/arm/configs/at91rm9200ek_defconfig            |    2 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    2 +-
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/dss11_defconfig                   |   48 +
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   29 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |   21 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |   26 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    2 +-
 arch/arm/configs/freescale_mx53_smd_defconfig      |   51 +
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/nhk8815_defconfig                 |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    2 +-
 arch/arm/configs/panda_defconfig                   |    2 +-
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pcm049_defconfig                  |    2 +-
 arch/arm/configs/pm9261_defconfig                  |    2 +-
 arch/arm/configs/pm9g45_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/arm/configs/versatilepb_defconfig             |    2 +-
 arch/arm/cpu/Kconfig                               |    5 +
 arch/arm/cpu/cpu.c                                 |    2 +-
 arch/arm/cpu/exceptions.S                          |   21 -
 arch/arm/cpu/mmu.c                                 |   12 +-
 arch/arm/cpu/start.c                               |   13 +-
 arch/arm/lib/arm.c                                 |    2 +-
 arch/arm/lib/armlinux.c                            |  108 +-
 arch/arm/lib/barebox.lds.S                         |    4 +
 arch/arm/lib/bootm.c                               |   37 -
 arch/arm/mach-at91/Kconfig                         |   20 +
 arch/arm/mach-at91/Makefile                        |    3 +
 arch/arm/mach-at91/at91sam9260_devices.c           |   41 +-
 arch/arm/mach-at91/at91sam9263.c                   |    4 +-
 arch/arm/mach-at91/at91sam926x_time.c              |   14 -
 arch/arm/mach-at91/at91sam9_reset.S                |   43 +
 arch/arm/mach-at91/at91sam9g45_reset.S             |   40 +
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h  |  134 ++
 arch/arm/mach-at91/include/mach/board.h            |    1 +
 arch/arm/mach-imx/Kconfig                          |   13 +-
 arch/arm/mach-imx/boot.c                           |    3 +
 arch/arm/mach-imx/devices.c                        |    2 +-
 arch/arm/mach-imx/imx53.c                          |    9 +
 arch/arm/mach-imx/include/mach/devices-imx25.h     |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h     |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   15 +-
 arch/arm/mach-imx/include/mach/devices.h           |    3 +-
 arch/arm/mach-imx/include/mach/esdhc.h             |   43 +
 arch/arm/mach-imx/include/mach/iomux-mx25.h        |    4 +-
 arch/arm/mach-omap/Makefile                        |    3 +-
 arch/arm/mach-omap/xload.c                         |   41 +
 arch/arm/mach-pxa/Kconfig                          |   38 +
 arch/arm/mach-pxa/Makefile                         |    6 +
 arch/arm/mach-pxa/clocksource.c                    |   45 +
 arch/arm/mach-pxa/common.c                         |   37 +
 arch/arm/mach-pxa/devices.c                        |   49 +
 arch/arm/mach-pxa/gpio.c                           |   68 +
 arch/arm/mach-pxa/include/mach/clock.h             |   17 +
 arch/arm/mach-pxa/include/mach/devices.h           |   26 +
 arch/arm/mach-pxa/include/mach/gpio.h              |  132 ++
 arch/arm/mach-pxa/include/mach/hardware.h          |   31 +
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h        |  438 ++++
 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h        |  133 ++
 arch/arm/mach-pxa/include/mach/mfp.h               |   21 +
 arch/arm/mach-pxa/include/mach/pxa-regs.h          |   33 +
 arch/arm/mach-pxa/include/mach/pxa27x-regs.h       |    6 +
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h       |  267 +++
 arch/arm/mach-pxa/include/mach/pxafb.h             |   80 +
 arch/arm/mach-pxa/include/mach/regs-intc.h         |   34 +
 arch/arm/mach-pxa/include/mach/regs-lcd.h          |  180 ++
 arch/arm/mach-pxa/include/mach/regs-ost.h          |   34 +
 arch/arm/mach-pxa/include/mach/udc_pxa2xx.h        |   26 +
 arch/arm/mach-pxa/include/plat/gpio.h              |   74 +
 arch/arm/mach-pxa/include/plat/mfp.h               |  468 +++++
 arch/arm/mach-pxa/mfp-pxa2xx.c                     |  189 ++
 arch/arm/mach-pxa/speed-pxa27x.c                   |   44 +
 arch/arm/tools/mach-types                          |  473 +++++-
 arch/blackfin/boards/ipe337/barebox.lds.S          |    8 +-
 arch/blackfin/cpu-bf561/start.S                    |    8 +-
 arch/blackfin/lib/blackfin_linux.c                 |    3 -
 arch/blackfin/lib/board.c                          |    2 +-
 arch/mips/configs/dlink-dir-320_defconfig          |    2 +-
 arch/mips/configs/qemu-malta_defconfig             |    2 +-
 arch/mips/lib/barebox.lds.S                        |    4 +
 arch/mips/lib/memory.c                             |    2 +-
 arch/nios2/cpu/Makefile                            |    1 -
 arch/nios2/cpu/barebox.lds.S                       |    8 +-
 arch/nios2/cpu/cpu.c                               |    3 -
 arch/nios2/cpu/exceptions.S                        |    9 -
 arch/nios2/cpu/interrupts.c                        |  140 --
 arch/nios2/include/asm/spi.h                       |    1 +
 arch/nios2/lib/board.c                             |    5 +-
 arch/nios2/lib/bootm.c                             |    7 -
 arch/ppc/boards/pcm030/barebox.lds.S               |    4 +
 arch/ppc/boards/pcm030/pcm030.c                    |   22 +-
 arch/ppc/configs/pcm030_defconfig                  |   27 +-
 arch/ppc/lib/Makefile                              |    1 -
 arch/ppc/lib/board.c                               |    9 +-
 arch/ppc/lib/interrupts.c                          |  133 --
 arch/ppc/lib/ppclinux.c                            |    3 -
 arch/ppc/mach-mpc5xxx/Makefile                     |    1 -
 arch/ppc/mach-mpc5xxx/interrupts.c                 |  349 ----
 arch/ppc/mach-mpc5xxx/start.S                      |    9 -
 arch/sandbox/Makefile                              |   13 -
 arch/sandbox/board/barebox.lds.S                   |    5 +
 arch/sandbox/include/asm/elf.h                     |   11 +-
 arch/sandbox/mach-sandbox/include/mach/linux.h     |    2 +
 arch/sandbox/os/common.c                           |   32 +-
 arch/x86/lib/barebox.lds.S                         |    9 +-
 arch/x86/lib/memory.c                              |    4 +-
 commands/Kconfig                                   |   55 +-
 commands/Makefile                                  |    6 +-
 commands/bootm.c                                   |  338 +---
 commands/cp.c                                      |   26 +-
 commands/iminfo.c                                  |   71 +
 commands/iomem.c                                   |   56 +
 commands/magicvar.c                                |   20 +
 commands/time.c                                    |    2 +-
 commands/{unlzo.c =3D> uncompress.c}                 |   23 +-
 common/Kconfig                                     |   14 +
 common/Makefile                                    |    4 +
 common/console.c                                   |   24 +-
 common/console_simple.c                            |    5 +
 common/env.c                                       |   22 +
 common/filetype.c                                  |   99 +
 common/ft_build.c                                  |    3 +-
 common/hush.c                                      |    8 +
 common/image.c                                     |    3 +-
 common/memory.c                                    |   60 +
 common/partitions.c                                |  200 ++
 common/resource.c                                  |  121 ++
 crypto/Kconfig                                     |    3 +
 crypto/Makefile                                    |    1 +
 crypto/crc7.c                                      |   63 +
 defaultenv/bin/boot                                |    2 +-
 drivers/Makefile                                   |    2 +-
 drivers/ata/Kconfig                                |   41 +-
 drivers/ata/Makefile                               |    5 +-
 drivers/ata/disk_ata_drive.c                       |  618 ++++++
 drivers/ata/{bios.c =3D> disk_bios_drive.c}          |  102 +-
 drivers/ata/disk_drive.c                           |  248 ---
 drivers/ata/intf_platform_ide.c                    |  130 ++
 drivers/base/driver.c                              |   29 +-
 drivers/mci/Kconfig                                |   23 +-
 drivers/mci/Makefile                               |    1 +
 drivers/mci/atmel_mci.c                            |    2 +
 drivers/mci/imx-esdhc.c                            |   41 +-
 drivers/mci/mci-core.c                             |  264 ++-
 drivers/mci/mci_spi.c                              |  430 ++++
 drivers/mci/s3c.c                                  |   26 -
 drivers/mtd/nand/Kconfig                           |    7 +-
 drivers/mtd/nand/nand.c                            |    2 +-
 drivers/mtd/nand/nand_base.c                       |    8 +-
 drivers/mtd/nand/nand_omap_bch_decoder.c           |    8 +-
 drivers/net/macb.c                                 |   14 -
 drivers/nor/Kconfig                                |    3 -
 drivers/serial/Kconfig                             |    4 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/amba-pl011.c                        |    2 +-
 drivers/serial/atmel.c                             |    2 +-
 drivers/serial/serial_altera.c                     |    2 +-
 drivers/serial/serial_altera_jtag.c                |    2 +-
 drivers/serial/serial_blackfin.c                   |    2 +-
 drivers/serial/serial_imx.c                        |    2 +-
 drivers/serial/serial_netx.c                       |    2 +-
 drivers/serial/serial_pl010.c                      |    2 +-
 drivers/serial/serial_pxa.c                        |  201 ++
 drivers/serial/serial_s3c24x0.c                    |    2 +-
 drivers/spi/altera_spi.c                           |   27 +-
 drivers/usb/gadget/Kconfig                         |    7 +
 drivers/usb/gadget/Makefile                        |    1 +
 drivers/usb/gadget/dfu.c                           |    2 +-
 drivers/usb/gadget/f_serial.c                      |    5 +-
 drivers/usb/gadget/pxa27x_udc.c                    | 1524 ++++++++++++++
 drivers/usb/gadget/pxa27x_udc.h                    |  393 ++++
 drivers/usb/gadget/u_serial.c                      |   27 +-
 drivers/usb/storage/Kconfig                        |    1 +
 drivers/usb/storage/usb.c                          |  130 +-
 drivers/usb/storage/usb.h                          |    8 +-
 drivers/video/Kconfig                              |    7 +
 drivers/video/Makefile                             |    1 +
 drivers/video/pxa.c                                |  562 +++++
 fs/cramfs/cramfs.c                                 |    2 +-
 fs/cramfs/uncompress.c                             |   93 +-
 fs/devfs-core.c                                    |   14 +
 fs/ramfs.c                                         |    2 +-
 include/asm-generic/barebox.lds.h                  |    2 +
 include/ata_drive.h                                |  100 +
 include/boot.h                                     |    6 +-
 include/bunzip2.h                                  |   10 +
 include/bzlib.h                                    |  329 ---
 include/command.h                                  |    2 +-
 include/common.h                                   |   23 -
 include/console.h                                  |    1 +
 include/cramfs/cramfs_fs.h                         |    4 +-
 include/crc7.h                                     |   14 +
 include/disks.h                                    |   41 +
 include/driver.h                                   |    7 +-
 include/environment.h                              |    3 +
 include/filetype.h                                 |   23 +
 include/gunzip.h                                   |   10 +
 include/image.h                                    |    3 -
 include/libbb.h                                    |    2 +-
 include/linux/ioport.h                             |   14 +
 include/linux/zconf.h                              |   57 +
 include/linux/zlib.h                               |  711 +++++++
 include/linux/zutil.h                              |  106 +
 include/lzo.h                                      |    6 +-
 include/magicvar.h                                 |   32 +
 include/mci.h                                      |   21 +-
 include/memory.h                                   |    5 +
 include/platform_ide.h                             |   32 +
 include/uncompress.h                               |   19 +
 include/zlib.h                                     |  434 ----
 lib/Kconfig                                        |    6 +-
 lib/Makefile                                       |    5 +-
 lib/bzlib.c                                        | 1592 ---------------
 lib/bzlib_crctable.c                               |  145 --
 lib/bzlib_decompress.c                             |  674 ------
 lib/bzlib_huffman.c                                |  229 ---
 lib/bzlib_randtable.c                              |  126 --
 lib/copy_file.c                                    |   21 +-
 lib/decompress_bunzip2.c                           |  756 +++++++
 lib/decompress_inflate.c                           |  185 ++
 lib/decompress_unlzo.c                             |   27 +-
 lib/gunzip.c                                       |   85 -
 lib/lzo/Kconfig                                    |    1 +
 lib/uncompress.c                                   |  160 ++
 lib/vsprintf.c                                     |    2 -
 lib/zlib.c                                         | 2158 ----------------=
----
 lib/zlib_inflate/Makefile                          |   18 +
 lib/zlib_inflate/inffast.c                         |  363 ++++
 lib/zlib_inflate/inffast.h                         |   11 +
 lib/zlib_inflate/inffixed.h                        |   94 +
 lib/zlib_inflate/inflate.c                         |  918 +++++++++
 lib/zlib_inflate/inflate.h                         |  111 +
 lib/zlib_inflate/inftrees.c                        |  315 +++
 lib/zlib_inflate/inftrees.h                        |   59 +
 lib/zlib_inflate/infutil.c                         |   47 +
 lib/zlib_inflate/infutil.h                         |   25 +
 lib/zlib_inflate/modules.builtin                   |    1 +
 net/dhcp.c                                         |    6 +
 scripts/mkimage.c                                  |    1 -
 280 files changed, 14024 insertions(+), 7825 deletions(-)
 create mode 100644 arch/arm/boards/dss11/Makefile
 create mode 100644 arch/arm/boards/dss11/config.h
 create mode 100644 arch/arm/boards/dss11/env/config
 create mode 100644 arch/arm/boards/dss11/init.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-smd/board.c
 rename include/ata.h =3D> arch/arm/boards/freescale-mx53-smd/config.h (52%)
 create mode 100644 arch/arm/boards/freescale-mx53-smd/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-smd/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
 create mode 100644 arch/arm/configs/dss11_defconfig
 create mode 100644 arch/arm/configs/freescale_mx53_smd_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9_reset.S
 create mode 100644 arch/arm/mach-at91/at91sam9g45_reset.S
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
 create mode 100644 arch/arm/mach-imx/include/mach/esdhc.h
 create mode 100644 arch/arm/mach-pxa/Kconfig
 create mode 100644 arch/arm/mach-pxa/Makefile
 create mode 100644 arch/arm/mach-pxa/clocksource.c
 create mode 100644 arch/arm/mach-pxa/common.c
 create mode 100644 arch/arm/mach-pxa/devices.c
 create mode 100644 arch/arm/mach-pxa/gpio.c
 create mode 100644 arch/arm/mach-pxa/include/mach/clock.h
 create mode 100644 arch/arm/mach-pxa/include/mach/devices.h
 create mode 100644 arch/arm/mach-pxa/include/mach/gpio.h
 create mode 100644 arch/arm/mach-pxa/include/mach/hardware.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa27x-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxafb.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-intc.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-lcd.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-ost.h
 create mode 100644 arch/arm/mach-pxa/include/mach/udc_pxa2xx.h
 create mode 100644 arch/arm/mach-pxa/include/plat/gpio.h
 create mode 100644 arch/arm/mach-pxa/include/plat/mfp.h
 create mode 100644 arch/arm/mach-pxa/mfp-pxa2xx.c
 create mode 100644 arch/arm/mach-pxa/speed-pxa27x.c
 delete mode 100644 arch/nios2/cpu/interrupts.c
 delete mode 100644 arch/ppc/lib/interrupts.c
 delete mode 100644 arch/ppc/mach-mpc5xxx/interrupts.c
 create mode 100644 commands/iminfo.c
 create mode 100644 commands/iomem.c
 create mode 100644 commands/magicvar.c
 rename commands/{unlzo.c =3D> uncompress.c} (73%)
 create mode 100644 common/filetype.c
 create mode 100644 common/partitions.c
 create mode 100644 common/resource.c
 create mode 100644 crypto/crc7.c
 create mode 100644 drivers/ata/disk_ata_drive.c
 rename drivers/ata/{bios.c =3D> disk_bios_drive.c} (79%)
 delete mode 100644 drivers/ata/disk_drive.c
 create mode 100644 drivers/ata/intf_platform_ide.c
 create mode 100644 drivers/mci/mci_spi.c
 create mode 100644 drivers/serial/serial_pxa.c
 create mode 100644 drivers/usb/gadget/pxa27x_udc.c
 create mode 100644 drivers/usb/gadget/pxa27x_udc.h
 create mode 100644 drivers/video/pxa.c
 create mode 100644 include/ata_drive.h
 create mode 100644 include/bunzip2.h
 delete mode 100644 include/bzlib.h
 create mode 100644 include/crc7.h
 create mode 100644 include/disks.h
 create mode 100644 include/filetype.h
 create mode 100644 include/gunzip.h
 create mode 100644 include/linux/zconf.h
 create mode 100644 include/linux/zlib.h
 create mode 100644 include/linux/zutil.h
 create mode 100644 include/magicvar.h
 create mode 100644 include/platform_ide.h
 create mode 100644 include/uncompress.h
 delete mode 100644 include/zlib.h
 delete mode 100644 lib/bzlib.c
 delete mode 100644 lib/bzlib_crctable.c
 delete mode 100644 lib/bzlib_decompress.c
 delete mode 100644 lib/bzlib_huffman.c
 delete mode 100644 lib/bzlib_randtable.c
 create mode 100644 lib/decompress_bunzip2.c
 create mode 100644 lib/decompress_inflate.c
 delete mode 100644 lib/gunzip.c
 create mode 100644 lib/uncompress.c
 delete mode 100644 lib/zlib.c
 create mode 100644 lib/zlib_inflate/Makefile
 create mode 100644 lib/zlib_inflate/inffast.c
 create mode 100644 lib/zlib_inflate/inffast.h
 create mode 100644 lib/zlib_inflate/inffixed.h
 create mode 100644 lib/zlib_inflate/inflate.c
 create mode 100644 lib/zlib_inflate/inflate.h
 create mode 100644 lib/zlib_inflate/inftrees.c
 create mode 100644 lib/zlib_inflate/inftrees.h
 create mode 100644 lib/zlib_inflate/infutil.c
 create mode 100644 lib/zlib_inflate/infutil.h
 create mode 100644 lib/zlib_inflate/modules.builtin
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
