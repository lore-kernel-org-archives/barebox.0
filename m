Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJncL-0002qi-SH
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 15:45:44 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TJncK-0001gn-Bo
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:45:40 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TJncK-0001a0-As
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:45:40 +0200
Date: Thu, 4 Oct 2012 17:45:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121004154540.GM1322@pengutronix.de>
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
Subject: v2012.10.0 is out
To: barebox@lists.infradead.org

We have an october release. Quite much has happened all over the place.
Most notable feature is the support for compressed images on ARM which
has the potential to reduce the binary size significantly.

Thank you all for working on barebox :)

Sascha

----------------------------------------------------------------
Alexander Aring (6):
      mtd: fix compiler warnings
      mtd: add private data to mtddev-hook
      sandbox: add asm-generic/io.h
      sandbox: fix whitespaces in board file
      sandbox: fix malloc argument
      fs: fs.c fix cast

Alexander Shiyan (3):
      mc13xxx: Added mc13xxx_revision() function.
      mc13xxx: Hide private struct mc13xxx from other units
      mc13xxx: Fixed memory leak

Antony Pavlov (1):
      commands/digest: don't print checksum for non-existing files

Eric B=E9nard (4):
      i.MX35: add cspi1 support
      stringlist: fix division by zero
      i.MX51: unbreak FEC iomux
      miidev: fix 1G wrong detection

Franck Jullien (1):
      nios2: Fix DMA functions when CPU has no dcache

Jan Luebbe (2):
      mtd: use correct format specifier
      mtd/mtdraw: fix format specifier for ssize_t

Jan Weitzel (7):
      ARM OMAP4: use writel and readl
      Add support for OMAP4460 TPS62361
      OMAP4460: ram init changes
      OMAP4460: clock init
      pcm049: use NAND_BUSWIDTH_AUTO
      PCM049: nand_bootstrap add shebang
      smsc911x: Check platformdata pointer

Jean-Christophe PLAGNIOL-VILLARD (60):
      kbuild: add pre-bootloader (pbl) target
      Add pre-bootloader (pbl) image support
      pbl: discard unwind symbol if enable in barebox
      Add compressed image support
      decompressor: import malloc/free implementation for linux 3.4
      ARM: add early malloc support needed by the decompressor
      compressed image: add gzip support
      at91: add lowlevel init to the pbl
      kbuild: allow to have custom cppflags for pbl
      arm: always enable the garbage collector for pbl
      arm: at91: add debug_ll support
      arm introduce CONFIG_MACH_ARM_HEAD option to allow custom head
      arm: at91: add custom barebox-arm-head
      at91: sam9260/sam9g20/sam9261/sam9g10/sam9263 add autodetect sdram si=
ze
      at91: Calao and Atmel reboard sam{9260/9g20/9261/9g10/9263}ek autodet=
ect sdram size
      menu: add number key support
      devices: fix missing conversion to DEVICE_ID_DYNAMIC
      driver: set DEVICE_ID_DYNAMIC to -2 and DEVICE_ID_SINGLE to -1
      arm: do not enable the previous bootz command
      smc911x: move register define to smc911x.h
      smc911x: introduce read/write ops
      smc911x: add 16bit bus width support
      smc911x: add support to pass the shift via platform data
      smc911x: improve detection handle
      smc911x: update chip detection
      smc911x: check if the device is ready before using it
      fs/mount: add autodetection type support
      filetype: add fat filesystem support
      fs/fat: add filetype
      command/mount: add autodetection support
      fs: add readlink support
      fs: fix rmdir with symlink
      fs: rename stat to lstat as we implement lstat
      fs: add symlink support
      fs: implement stat
      fs: open: add symlink support
      fs: introduce get_mounted_path to get the path where a file is mounted
      ramfs: add symlink and readlink support
      nfs: add readlink support
      test: add -L support to test if it's a symbolic link
      command: add readlink support
      command: add ln support
      ls: add symlink support to -l
      dirname: add -V option to return only path related to the mountpoint
      recursive_action: add ACTION_FOLLOWLINKS support
      envfs: introduce version major and minor
      envfs: add support of variable inode size
      envfs: add support of symlink
      defautenv: add support of symlink
      Calao boards: enable the pbl
      Atmel sam9x boards: enable the pbl
      fs/nfs: fix read when size < 1024
      smc911x: fix typo pn check if the device is ready before using it
      uncompress: drop wrong BUG(uncompress_size)
      arm: armlinux: get the architecture before shutdown barebox
      tap: fix missing parent setting on eth_device
      MAKEALL: accept defconfig with '-' in it
      sandbox: check only image option in the second getopt
      sandbox: do not register device before barebox is started
      net/tap: use xzalloc to allocate data

Maxime Ripard (1):
      arm: cfa10036: Add proper resource length

Renaud Barbier (12):
      ppc: GIANFAR base address definition
      net: GIANFAR driver
      fsl: Freescale TSEC specific initialization.
      ppc: P2020RDB Ethernet configuration
      mpc85xx: i2c frequency
      ppc/asm/fsl_i2c.h is removed
      mpc85xx: header update
      ppc: add unaligned support
      IMX driver: replace imx -> fsl
      i2c: adapt the i2c-imx driver to mpc85xx machines
      ppc: p2020rdb i2c support
      fsl TSEC: register map boundary

Sascha Hauer (59):
      mtd OMAP NAND: Fix dev_ready handling
      Makefile.clean: include Makefiles again
      ARM pbl: Add .gitignore for generated files
      Merge tag 'pbl' of git://git.jcrosoft.org/barebox into for-next/pbl
      ARM OMAP gpmc nand: specify platform data in boards
      mtd OMAP NAND: Use prefetch engine
      mtd nand: implement buswidth detection
      mtd OMAP NAND: implement buswidth autodetection support
      hush: Make exit a shell builtin
      hush: catch errors from execute_binfmt
      Makefile.lib: add disasm and ln commands
      Makefile: generate a barebox-flash-image link
      ARM eukrea cpuimx25: Move flash_header to seperate file
      ARM s3c boards: Do not hardcode image sizes
      ARM boards: Make boards pbl safe
      ARM Makefile: Do not hardcode targets in MLO/netx/davinci/s5p
      ARM: fix netx/MLO/s5p image build for pbl
      ARM pbl: generate zbarebox.map in $(obj)
      ARM __mmu_cache_*: Do not clobber registers
      ARM MMU: call __mmu_cache_* as regular C functions
      ARM pbl: enable MMU during decompression
      create a common ARM flush_icache function
      add gpiolib support
      ARM i.MX35 3stack: do not dereference members of struct mc13xxx
      blackfin: Add unaligned support
      openrisc: Add unaligned support
      ARM i.MX: switch to gpiolib support
      Merge tag 'fs-symlink' of git://git.jcrosoft.org/barebox into for-nex=
t/link
      Merge branch 'for-next/atmel'
      Merge branch 'for-next/device-id'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/gpiolib'
      Merge branch 'for-next/hush'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/jtag'
      Merge branch 'for-next/link'
      Merge branch 'for-next/mc13xxx'
      Merge branch 'for-next/menu'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/pbl'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/sandbox'
      Merge branch 'for-next/smc911x'
      Merge branch 'for-next/usb'
      ARM i.MX21: Add missing include
      mips: remove undefined local_irq_save/local_irq_restore
      mtd mtdraw: Fix partial page read
      Make: Fix if_changed when command contains backslashes
      ARM mmu: use xmemalign
      mtd mtdraw: fix fixing partial page read
      ARM i.MX51 babbage: update defconfig
      kconfig: remove autogenerated file
      mci imx-esdhc: increase write timeout
      ARM i.MX pca100: Fix nand boot
      ARM: Disable MMU feature in PBL
      Release v2012.10.0

Steffen Trumtrar (10):
      ARM i.MX: Add support for i2c on imx6
      usb: use ep-specific pwrgood delay
      ARM i.MX6: add the usbphy1 base addr
      ARM i.MX6: enable usbphy1
      ARM i.MX6: Add usb-ehci to sabrelite
      ARM i.MX6: Add i2c iomux to sabrelite
      mfd: add stmpe-i2c driver
      gpio: add driver for stmpe io-expander
      ARM i.MX6: add usb function prototypes
      ARM i.MX6: fix usb_ehci warnings for sabrelite

Wjatscheslaw Stoljarski (1):
      Add JTAG bitbang driver

Wolfram Sang (3):
      net: miidev: really wait for auto negotiation
      arm: mxs: add proper resource length
      net: tftp: timeout only after a proper amount of time

gregory hermant (3):
      Enable pull-up on Rx serial ports for the CALAO MB-QIL-A9260
      Add documentation for the calao boards
      NAND Flash SMC timings update (nwe_pulse) for calao board based on AT=
91SAM9G20 SoC

vicencb@gmail.com (3):
      ARM: set rev instead of returning it
      mmc_omap: improve error message
      add gitignore file

 Documentation/boards.dox                           |    5 +
 MAKEALL                                            |    7 +-
 Makefile                                           |   32 +-
 arch/arm/Kconfig                                   |    8 +
 arch/arm/Makefile                                  |   56 +-
 arch/arm/boards/a9m2410/Makefile                   |    1 +
 arch/arm/boards/a9m2410/a9m2410.c                  |    7 -
 arch/arm/boards/a9m2440/Makefile                   |    1 +
 arch/arm/boards/a9m2440/a9m2440.c                  |    7 -
 arch/arm/boards/at91sam9260ek/init.c               |    2 +-
 arch/arm/boards/at91sam9261ek/init.c               |    2 +-
 arch/arm/boards/at91sam9263ek/init.c               |    2 +-
 arch/arm/boards/beagle/board.c                     |   11 +-
 arch/arm/boards/ccxmx51/Makefile                   |    1 +
 arch/arm/boards/ccxmx51/ccxmx51.c                  |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |    2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |    5 +-
 .../crystalfontz-cfa10036/env/init/automount       |    2 +-
 arch/arm/boards/edb93xx/Makefile                   |    1 +
 arch/arm/boards/edb93xx/edb93xx.c                  |    2 +-
 arch/arm/boards/eukrea_cpuimx25/Makefile           |    3 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   34 -
 arch/arm/boards/eukrea_cpuimx25/flash_header.c     |   61 +
 arch/arm/boards/eukrea_cpuimx27/Makefile           |    1 +
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    8 +-
 arch/arm/boards/eukrea_cpuimx35/Makefile           |    2 +
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx51/Makefile           |    1 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/Makefile    |    1 +
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   10 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    6 +-
 arch/arm/boards/freescale-mx35-3-stack/Makefile    |    2 +
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    1 +
 arch/arm/boards/freescale-mx51-pdk/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-loco/Makefile       |    1 +
 arch/arm/boards/freescale-mx53-smd/Makefile        |    1 +
 arch/arm/boards/freescale-mx6-arm2/Makefile        |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   33 +
 arch/arm/boards/friendlyarm-mini2440/Makefile      |    1 +
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    7 -
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |    2 +-
 arch/arm/boards/guf-cupid/Makefile                 |    1 +
 arch/arm/boards/guf-neso/Makefile                  |    3 +-
 arch/arm/boards/guf-neso/board.c                   |    2 +-
 arch/arm/boards/imx21ads/Makefile                  |    1 +
 arch/arm/boards/imx21ads/imx21ads.c                |    2 +-
 arch/arm/boards/imx27ads/Makefile                  |    1 +
 arch/arm/boards/imx27ads/imx27ads.c                |    2 +-
 arch/arm/boards/karo-tx25/Makefile                 |    1 +
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   12 +-
 arch/arm/boards/karo-tx51/Makefile                 |    3 +-
 arch/arm/boards/mioa701/board.c                    |    2 +-
 arch/arm/boards/mioa701/env/bin/sdcard_override    |    2 +-
 arch/arm/boards/netx/Makefile                      |    2 +-
 arch/arm/boards/netx/netx.c                        |    2 +-
 arch/arm/boards/omap343xdsp/board.c                |    2 +-
 arch/arm/boards/panda/Makefile                     |    4 +-
 arch/arm/boards/panda/board.c                      |    2 +-
 arch/arm/boards/panda/lowlevel.c                   |    4 +-
 arch/arm/boards/panda/mux.c                        |    8 +
 arch/arm/boards/pcm027/Makefile                    |    1 +
 arch/arm/boards/pcm037/Makefile                    |    1 +
 arch/arm/boards/pcm038/Makefile                    |    1 +
 arch/arm/boards/pcm038/pcm038.c                    |    2 +-
 arch/arm/boards/pcm038/pcm970.c                    |    4 +-
 arch/arm/boards/pcm043/Makefile                    |    1 +
 arch/arm/boards/pcm043/pcm043.c                    |    2 +-
 arch/arm/boards/pcm049/Makefile                    |    1 +
 arch/arm/boards/pcm049/board.c                     |    9 +-
 arch/arm/boards/pcm049/env/bin/nand_bootstrap      |    4 +-
 arch/arm/boards/pcm049/lowlevel.c                  |   15 +-
 arch/arm/boards/pcm049/mux.c                       |    8 +
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |   11 +-
 arch/arm/boards/phycard-a-xl2/Makefile             |    1 +
 .../boards/phycard-a-xl2/env/bin/nand_bootstrap    |    2 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |   13 +-
 arch/arm/boards/phycard-a-xl2/mux.c                |    8 +
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |   13 +-
 arch/arm/boards/phycard-i.MX27/Makefile            |    1 +
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    5 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |   12 +-
 arch/arm/boards/qil-a9260/init.c                   |   12 +-
 arch/arm/boards/qil-a9260/qil-a9260.dox            |   22 +
 arch/arm/boards/scb9328/Makefile                   |    1 +
 arch/arm/boards/scb9328/scb9328.c                  |    4 +-
 arch/arm/boards/tny-a926x/init.c                   |    4 +-
 arch/arm/boards/tny-a926x/tny-a9263.dox            |   33 +
 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox        |   37 +
 arch/arm/boards/toshiba-ac100/serial.c             |    2 +-
 arch/arm/boards/tqma53/Makefile                    |    1 +
 arch/arm/boards/usb-a926x/init.c                   |   10 +-
 arch/arm/boards/usb-a926x/usb-a9263.dox            |   30 +
 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox        |   33 +
 arch/arm/boards/versatile/versatilepb.c            |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    1 +
 arch/arm/configs/at91sam9261ek_defconfig           |    1 +
 arch/arm/configs/at91sam9263ek_defconfig           |    1 +
 arch/arm/configs/at91sam9g10ek_defconfig           |    1 +
 arch/arm/configs/at91sam9g20ek_defconfig           |    1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    1 +
 arch/arm/configs/at91sam9x5ek_defconfig            |    1 +
 arch/arm/configs/freescale_mx51_babbage_defconfig  |    2 +-
 arch/arm/configs/qil_a9260_128mib_defconfig        |    1 +
 arch/arm/configs/qil_a9260_defconfig               |    1 +
 arch/arm/configs/tny_a9260_defconfig               |    1 +
 arch/arm/configs/tny_a9263_defconfig               |    1 +
 arch/arm/configs/tny_a9g20_defconfig               |    1 +
 arch/arm/configs/usb_a9260_defconfig               |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig        |    1 +
 arch/arm/configs/usb_a9263_defconfig               |    1 +
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    1 +
 arch/arm/configs/usb_a9g20_defconfig               |    1 +
 arch/arm/cpu/Makefile                              |    7 +-
 arch/arm/cpu/cache-armv4.S                         |    3 +-
 arch/arm/cpu/cache-armv7.S                         |    6 +-
 arch/arm/cpu/mmu.c                                 |   27 +-
 arch/arm/cpu/mmu.h                                 |    8 +
 arch/arm/cpu/start-pbl.c                           |  217 ++
 arch/arm/cpu/start-reset.c                         |   67 +
 arch/arm/cpu/start.c                               |   58 +-
 arch/arm/include/asm/barebox-arm-head.h            |    4 +
 arch/arm/include/asm/cache.h                       |    9 +
 arch/arm/lib/Makefile                              |    4 +
 arch/arm/lib/armlinux.c                            |    5 +-
 arch/arm/lib/barebox.lds.S                         |    3 +-
 arch/arm/mach-at91/Makefile                        |    2 +
 arch/arm/mach-at91/at91sam9260_devices.c           |    4 +
 arch/arm/mach-at91/at91sam9261_devices.c           |    4 +
 arch/arm/mach-at91/at91sam9263_devices.c           |    4 +
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h  |   28 +
 arch/arm/mach-at91/include/mach/barebox-arm-head.h |   33 +
 arch/arm/mach-at91/include/mach/debug_ll.h         |   37 +
 arch/arm/mach-ep93xx/Makefile                      |    1 +
 arch/arm/mach-imx/Makefile                         |    3 +-
 arch/arm/mach-imx/devices.c                        |    2 +-
 arch/arm/mach-imx/gpio.c                           |   94 +-
 arch/arm/mach-imx/gpio.h                           |    4 -
 arch/arm/mach-imx/imx1.c                           |   21 +-
 arch/arm/mach-imx/imx21.c                          |   24 +-
 arch/arm/mach-imx/imx25.c                          |   15 +-
 arch/arm/mach-imx/imx27.c                          |   19 +-
 arch/arm/mach-imx/imx31.c                          |   14 +-
 arch/arm/mach-imx/imx35.c                          |   14 +-
 arch/arm/mach-imx/imx51.c                          |   16 +-
 arch/arm/mach-imx/imx53.c                          |   21 +-
 arch/arm/mach-imx/imx6.c                           |   28 +-
 arch/arm/mach-imx/include/mach/clock.h             |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h     |    5 +
 arch/arm/mach-imx/include/mach/devices-imx6.h      |   15 +
 arch/arm/mach-imx/include/mach/imx35-regs.h        |    2 +
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |   14 +-
 arch/arm/mach-imx/include/mach/usb.h               |    3 +
 arch/arm/mach-imx/speed-imx25.c                    |    2 +-
 arch/arm/mach-imx/speed-imx27.c                    |    2 +-
 arch/arm/mach-imx/speed-imx35.c                    |    7 +-
 arch/arm/mach-imx/speed-imx51.c                    |    2 +-
 arch/arm/mach-imx/speed-imx53.c                    |    4 +-
 arch/arm/mach-imx/speed-imx6.c                     |    6 +
 arch/arm/mach-imx/usb-imx6.c                       |  111 +
 arch/arm/mach-omap/Makefile                        |    3 +
 arch/arm/mach-omap/devices-gpmc-nand.c             |   26 +-
 arch/arm/mach-omap/gpmc.c                          |   61 +
 arch/arm/mach-omap/include/mach/gpmc.h             |   16 +-
 arch/arm/mach-omap/include/mach/gpmc_nand.h        |   20 +-
 arch/arm/mach-omap/include/mach/omap4-clock.h      |   19 +
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |   13 +-
 arch/arm/mach-omap/omap4_clock.c                   |   58 +-
 arch/arm/mach-omap/omap4_generic.c                 |   90 +-
 arch/arm/mach-samsung/Makefile                     |    2 +
 arch/arm/pbl/.gitignore                            |    5 +
 arch/arm/pbl/Makefile                              |   40 +
 arch/arm/pbl/piggy.gzip.S                          |    6 +
 arch/arm/pbl/piggy.lzo.S                           |    6 +
 arch/arm/pbl/zbarebox.lds.S                        |   78 +
 arch/blackfin/Makefile                             |    2 +-
 arch/blackfin/boards/ipe337/ipe337.c               |    7 +-
 arch/blackfin/include/asm/unaligned.h              |   11 +
 arch/mips/Makefile                                 |    2 -
 arch/mips/boards/dlink-dir-320/serial.c            |    2 +-
 arch/mips/boards/qemu-malta/init.c                 |    2 +-
 arch/mips/boards/rzx50/serial.c                    |    2 +-
 arch/mips/include/asm/mipsregs.h                   |    4 -
 arch/nios2/boards/generic/generic.c                |    2 +-
 arch/nios2/include/asm/dma-mapping.h               |   14 +-
 arch/openrisc/boards/generic/generic.c             |    2 +-
 arch/openrisc/include/asm/unaligned.h              |   51 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |   30 +-
 arch/ppc/configs/p2020rdb_defconfig                |    9 +
 arch/ppc/include/asm/fsl_i2c.h                     |   86 -
 arch/ppc/include/asm/unaligned.h                   |   16 +
 arch/ppc/mach-mpc85xx/Makefile                     |    1 +
 arch/ppc/mach-mpc85xx/eth-devices.c                |   49 +
 .../include/mach/{clocks.h =3D> clock.h}             |    1 +
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h       |   31 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   11 +
 arch/ppc/mach-mpc85xx/speed.c                      |   11 +-
 arch/ppc/mach-mpc85xx/time.c                       |    2 +-
 arch/sandbox/board/Makefile                        |    1 +
 arch/sandbox/board/board.c                         |    2 +-
 arch/sandbox/board/console.c                       |    2 +-
 arch/sandbox/board/devices.c                       |   33 +
 arch/sandbox/board/hostfile.c                      |   19 +-
 arch/sandbox/include/asm/io.h                      |    7 +-
 arch/sandbox/mach-sandbox/include/mach/linux.h     |    3 +
 arch/sandbox/os/common.c                           |   77 +-
 arch/x86/Makefile                                  |    5 -
 arch/x86/boards/x86_generic/generic_pc.c           |    2 +-
 commands/Kconfig                                   |   11 +-
 commands/Makefile                                  |    2 +
 commands/dirname.c                                 |   24 +-
 commands/ln.c                                      |   51 +
 commands/ls.c                                      |   31 +-
 commands/mount.c                                   |   18 +-
 commands/readlink.c                                |   80 +
 commands/test.c                                    |   11 +-
 common/Kconfig                                     |   44 +
 common/Makefile                                    |    2 +-
 common/command.c                                   |   20 -
 common/environment.c                               |  150 +-
 common/filetype.c                                  |   20 +
 common/hush.c                                      |   45 +-
 common/menu.c                                      |   17 +
 defaultenv-2/base/init/automount                   |    6 +-
 drivers/Kconfig                                    |    2 +
 drivers/Makefile                                   |    2 +
 drivers/gpio/Kconfig                               |   13 +
 drivers/gpio/Makefile                              |    2 +
 drivers/gpio/gpio-stmpe.c                          |  161 ++
 drivers/gpio/gpio.c                                |  134 ++
 drivers/i2c/busses/Kconfig                         |    4 +-
 drivers/i2c/busses/i2c-imx.c                       |  324 ++-
 drivers/mci/imx-esdhc.c                            |    2 +-
 drivers/mci/omap_hsmmc.c                           |    2 +-
 drivers/mfd/Kconfig                                |    4 +
 drivers/mfd/Makefile                               |    1 +
 drivers/mfd/mc13xxx.c                              |   31 +-
 drivers/mfd/stmpe-i2c.c                            |  153 ++
 drivers/misc/Kconfig                               |   17 +
 drivers/misc/Makefile                              |    5 +
 drivers/misc/jtag.c                                |  392 ++++
 drivers/mtd/core.c                                 |   12 +-
 drivers/mtd/mtd.h                                  |    5 +-
 drivers/mtd/mtdoob.c                               |   15 +-
 drivers/mtd/mtdraw.c                               |   22 +-
 drivers/mtd/nand/Makefile                          |    1 +
 drivers/mtd/nand/nand_base.c                       |   20 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |  177 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |   10 +
 drivers/net/Kconfig                                |   11 +-
 drivers/net/Makefile                               |    1 +
 drivers/net/gianfar.c                              |  548 +++++
 drivers/net/gianfar.h                              |  284 +++
 drivers/net/miidev.c                               |   35 +-
 drivers/net/smc911x.c                              |  589 ++---
 drivers/net/smc911x.h                              |  342 +++
 drivers/net/tap.c                                  |    5 +-
 drivers/spi/Kconfig                                |    2 +-
 drivers/spi/imx_spi.c                              |    2 +-
 drivers/usb/core/usb.c                             |    3 +-
 fs/Kconfig                                         |    5 +
 fs/fat/fat.c                                       |    1 +
 fs/fs.c                                            |  267 ++-
 fs/nfs.c                                           |   92 +-
 fs/ramfs.c                                         |   61 +-
 include/asm-generic/memory_layout.h                |    1 +
 include/asm-generic/sections.h                     |    2 +
 include/driver.h                                   |    4 +-
 include/envfs.h                                    |   15 +-
 include/filetype.h                                 |    1 +
 include/fs.h                                       |   17 +
 include/gpio.h                                     |   27 +-
 include/jtag.h                                     |  109 +
 include/libbb.h                                    |    2 +-
 include/linux/decompress/mm.h                      |   68 +
 include/linux/mtd/nand.h                           |    3 +
 include/mfd/mc13xxx.h                              |   19 +-
 include/mfd/stmpe-i2c.h                            |   53 +
 include/smc911x.h                                  |   18 +
 lib/decompress_inflate.c                           |    1 +
 lib/recursive_action.c                             |    7 +-
 lib/uncompress.c                                   |    2 -
 net/tftp.c                                         |    3 +-
 pbl/Makefile                                       |    5 +
 pbl/misc.c                                         |   14 +
 pbl/string.c                                       |  127 +
 scripts/Kbuild.include                             |    2 +-
 scripts/Makefile.build                             |   48 +-
 scripts/Makefile.clean                             |    2 +-
 scripts/Makefile.lib                               |   20 +
 scripts/bareboxenv.c                               |    2 +-
 scripts/kconfig/.gitignore                         |    1 +
 scripts/kconfig/zconf.lex.c                        | 2420 ----------------=
----
 295 files changed, 6096 insertions(+), 3834 deletions(-)
 create mode 100644 arch/arm/boards/eukrea_cpuimx25/flash_header.c
 create mode 100644 arch/arm/boards/qil-a9260/qil-a9260.dox
 create mode 100644 arch/arm/boards/tny-a926x/tny-a9263.dox
 create mode 100644 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
 create mode 100644 arch/arm/boards/usb-a926x/usb-a9263.dox
 create mode 100644 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox
 create mode 100644 arch/arm/cpu/mmu.h
 create mode 100644 arch/arm/cpu/start-pbl.c
 create mode 100644 arch/arm/cpu/start-reset.c
 create mode 100644 arch/arm/include/asm/cache.h
 create mode 100644 arch/arm/mach-at91/include/mach/barebox-arm-head.h
 create mode 100644 arch/arm/mach-at91/include/mach/debug_ll.h
 delete mode 100644 arch/arm/mach-imx/gpio.h
 create mode 100644 arch/arm/mach-imx/usb-imx6.c
 create mode 100644 arch/arm/pbl/.gitignore
 create mode 100644 arch/arm/pbl/Makefile
 create mode 100644 arch/arm/pbl/piggy.gzip.S
 create mode 100644 arch/arm/pbl/piggy.lzo.S
 create mode 100644 arch/arm/pbl/zbarebox.lds.S
 create mode 100644 arch/blackfin/include/asm/unaligned.h
 create mode 100644 arch/openrisc/include/asm/unaligned.h
 delete mode 100644 arch/ppc/include/asm/fsl_i2c.h
 create mode 100644 arch/ppc/include/asm/unaligned.h
 create mode 100644 arch/ppc/mach-mpc85xx/eth-devices.c
 rename arch/ppc/mach-mpc85xx/include/mach/{clocks.h =3D> clock.h} (91%)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gianfar.h
 create mode 100644 arch/sandbox/board/devices.c
 create mode 100644 commands/ln.c
 create mode 100644 commands/readlink.c
 create mode 100644 drivers/gpio/Kconfig
 create mode 100644 drivers/gpio/Makefile
 create mode 100644 drivers/gpio/gpio-stmpe.c
 create mode 100644 drivers/gpio/gpio.c
 create mode 100644 drivers/mfd/stmpe-i2c.c
 create mode 100644 drivers/misc/Kconfig
 create mode 100644 drivers/misc/Makefile
 create mode 100644 drivers/misc/jtag.c
 create mode 100644 drivers/net/gianfar.c
 create mode 100644 drivers/net/gianfar.h
 create mode 100644 drivers/net/smc911x.h
 create mode 100644 include/jtag.h
 create mode 100644 include/linux/decompress/mm.h
 create mode 100644 include/mfd/stmpe-i2c.h
 create mode 100644 include/smc911x.h
 create mode 100644 pbl/Makefile
 create mode 100644 pbl/misc.c
 create mode 100644 pbl/string.c
 delete mode 100644 scripts/kconfig/zconf.lex.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
