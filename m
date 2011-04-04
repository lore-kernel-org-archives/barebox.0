Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jNQ-0001xx-NX
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 12:59:34 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q6jNP-0002RA-5x
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:59:27 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q6jNP-0000kO-4r
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:59:27 +0200
Date: Mon, 4 Apr 2011 14:59:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110404125927.GE7285@pengutronix.de>
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
Subject: v2011.04.0
To: barebox@lists.infradead.org

Hi all,

We have 2011.04.0. Find the changes since the last release below.

Sascha

Baruch Siach (1):
      mtd/nand_imx: fix read past buffer end

Eric B=E9nard (5):
      eukrea_cpuimx35: switch to default env
      eukrea_cpuimx35: use OTG workaround only when gadget is selected
      eukrea_cpuimx35: update defconfig
      iomux-mx51: add more pins definitions
      add eukrea_cpuimx51 board

Jean-Christophe PLAGNIOL-VILLARD (6):
      at91sam263ek: switch to default env
      dm9000: read the mac address from the register if none are specified
      at91sam9261: set sdram_dev id to -1
      at91: fix missing nand_device in board config in board that nand
      at91sam9261ek: fix env location and size
      at91sam9263ek: update defconfig

Jon Ringle (1):
      defaultenv: fix empty CONFIG_DEFAULT_ENVIRONMENT_PATH

Juergen Beisert (29):
      Generic environment: Fix assembling of the 'mtdparts' variable
      S3C24xx: Just remove a trailing whitespace
      MACH-S3C24XX: Fix typo in UART2_SIZE macro
      MACH-S3C24XX: Change detection method of the second SDRAM bank
      MACH-S3C24XX: Add support for flash based BBT
      MACH-S3C2440: Fix NAND controller for this CPU
      MACH-S3C2440: Speed up NAND controller for this CPU
      mini2440: Be a little be pedantic with the include file order
      mini2440: Fix a runtime warning when '.id=3D0' is used
      mini2440: Add some useful documentation
      mini2440: Add PLL settings
      mini2440: Add SDRAM config settings
      mini2440: Configure debug UART pins very early
      mini2440: Add SDRAM size autodetection
      mini2440: Add GPIO settings
      mini2440: Add MCI support
      mini2440: Make it able to save a runtime environment
      mini2440: Use a flash based BBT as the kernel also does
      mini2440: Add booting from NAND support
      mini2440: Remove some A9M2440 platform leftovers
      mini2440: Use generic environment
      Fix end of expression char
      Fix end of expression char (some lines forgotten in v1)
      x86: Remove not used expressions from the makefile
      x86: Use the generic linker script initializing
      x86 ATA: Don't touch the size entry for the BIOS disk based device
      x86 Generic platform: Fix some typos
      x86 Generic platform: Fix disk drive name
      x86 Generic platform: Fix prompt name

Sascha Hauer (15):
      ARM i.MX: sync i.MX25 iomux support with kernel
      ARM i.MX esdctl: Add some missing bitfields
      initial karo tx25 board support
      ARM tx25: Add defconfig
      ARM i.MX35 3stack: Switch to default env
      net: use dev_* for printing network related stuff
      ARM i.MX: cleanup boot modes
      ARM tx28: add a bigger delay in display enable
      ARM v7: Fix broken mmu initialization
      ARM v7: Fix typos in cache-armv7.S
      ARM: use memalign to allocate page table
      mfd/mc13892: Add missing semicolons
      module: CONFIG_COMMAND does not exist anymore, remove ifdefs
      trigger command: fix printf format
      Release v2011.04.0

 Makefile                                           |    2 +-
 arch/arm/Makefile                                  |    2 +
 arch/arm/boards/at91sam9261ek/env/config           |    3 +-
 arch/arm/boards/at91sam9261ek/init.c               |    4 +-
 arch/arm/boards/at91sam9263ek/env/bin/_update      |   36 -
 arch/arm/boards/at91sam9263ek/env/bin/boot         |   47 -
 arch/arm/boards/at91sam9263ek/env/bin/hush_hack    |    1 -
 arch/arm/boards/at91sam9263ek/env/bin/init         |   38 -
 .../at91sam9263ek/env/bin/update_barebox_xmodem    |   26 -
 .../arm/boards/at91sam9263ek/env/bin/update_kernel |   15 -
 arch/arm/boards/at91sam9263ek/env/bin/update_root  |   16 -
 arch/arm/boards/at91sam9263ek/env/config           |   52 +-
 arch/arm/boards/at91sam9m10g45ek/env/config        |    1 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   90 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/_update    |   36 -
 arch/arm/boards/eukrea_cpuimx35/env/bin/boot       |   52 -
 arch/arm/boards/eukrea_cpuimx35/env/bin/hush_hack  |    1 -
 arch/arm/boards/eukrea_cpuimx35/env/bin/init       |   45 -
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |   20 +
 .../boards/eukrea_cpuimx35/env/bin/update_kernel   |    8 -
 .../arm/boards/eukrea_cpuimx35/env/bin/update_root |    8 -
 arch/arm/boards/eukrea_cpuimx35/env/config         |   53 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    3 +-
 arch/arm/boards/eukrea_cpuimx51/Makefile           |    3 +
 arch/arm/boards/eukrea_cpuimx51/config.h           |   24 +
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |   20 +
 arch/arm/boards/eukrea_cpuimx51/env/config         |   58 +
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |  175 +++
 .../arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox |    4 +
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |   84 ++
 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S    |  216 ++++
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   36 +-
 .../boards/freescale-mx35-3-stack/env/bin/_update  |   39 -
 .../arm/boards/freescale-mx35-3-stack/env/bin/boot |   57 -
 .../freescale-mx35-3-stack/env/bin/hush_hack       |    1 -
 .../arm/boards/freescale-mx35-3-stack/env/bin/init |   38 -
 .../freescale-mx35-3-stack/env/bin/update_kernel   |   15 -
 .../freescale-mx35-3-stack/env/bin/update_rootfs   |   20 -
 arch/arm/boards/freescale-mx35-3-stack/env/config  |   47 +-
 arch/arm/boards/karo-tx25/Makefile                 |   24 +
 arch/arm/boards/karo-tx25/board.c                  |  313 +++++
 arch/arm/boards/karo-tx25/config.h                 |   31 +
 arch/arm/boards/karo-tx25/env/bin/init_board       |    6 +
 arch/arm/boards/karo-tx25/env/config               |   53 +
 arch/arm/boards/karo-tx25/lowlevel.c               |  173 +++
 arch/arm/boards/karo-tx28/tx28-stk5.c              |    4 +-
 arch/arm/boards/mini2440/Makefile                  |    2 +-
 arch/arm/boards/mini2440/config.h                  |   80 ++
 arch/arm/boards/mini2440/env/bin/_update           |   34 -
 arch/arm/boards/mini2440/env/bin/boot              |   40 -
 arch/arm/boards/mini2440/env/bin/hush_hack         |    1 -
 arch/arm/boards/mini2440/env/bin/init              |   34 -
 arch/arm/boards/mini2440/env/bin/update_kernel     |   13 -
 arch/arm/boards/mini2440/env/bin/update_root       |   13 -
 arch/arm/boards/mini2440/env/config                |   71 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |   39 +
 arch/arm/boards/mini2440/mini2440.c                |  334 +++++-
 arch/arm/boards/pm9g45/env/config                  |    1 +
 arch/arm/configs/at91sam9263ek_defconfig           |    7 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    8 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |   45 +
 arch/arm/configs/freescale_mx35_3stack_defconfig   |   12 +-
 arch/arm/configs/mini2440_defconfig                |  226 +----
 arch/arm/configs/tx25stk5_defconfig                |   49 +
 arch/arm/cpu/cache-armv7.S                         |    5 +-
 arch/arm/cpu/mmu.c                                 |    3 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |    2 +-
 arch/arm/mach-imx/Kconfig                          |   70 ++
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/include/mach/esdctl.h            |    4 +
 arch/arm/mach-imx/include/mach/imx-nand.h          |   56 +-
 arch/arm/mach-imx/include/mach/iomux-mx25.h        | 1288 ++++++++--------=
----
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |   22 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h          |   37 +-
 arch/arm/mach-imx/internal-nand-boot.c             |  269 ++++
 arch/arm/mach-s3c24xx/Kconfig                      |    6 +-
 arch/arm/mach-s3c24xx/generic.c                    |    5 +-
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h |    2 +-
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h  |    1 +
 arch/x86/Makefile                                  |   11 +-
 arch/x86/boards/x86_generic/generic_pc.c           |    6 +-
 arch/x86/configs/generic_defconfig                 |    2 +-
 arch/x86/lib/barebox.lds.S                         |    2 +-
 .../asm =3D> mach-i386/include/mach}/barebox.lds.h   |   14 -
 commands/trigger.c                                 |    2 +-
 common/Makefile                                    |    4 +-
 common/module.c                                    |    2 -
 defaultenv/bin/boot                                |    7 +-
 drivers/ata/bios.c                                 |    1 -
 drivers/mfd/mc13892.c                              |    4 +-
 drivers/mtd/nand/Kconfig                           |   21 -
 drivers/mtd/nand/nand_imx.c                        |  311 +-----
 drivers/mtd/nand/nand_s3c2410.c                    |   79 ++-
 drivers/net/dm9000.c                               |   18 +-
 drivers/net/fec_imx.c                              |   14 +-
 include/asm-generic/barebox.lds.h                  |    2 +-
 net/eth.c                                          |    4 +-
 scripts/setupmbr/setupmbr.c                        |    2 +-
 98 files changed, 3101 insertions(+), 2185 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/_update
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/boot
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/init
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xm=
odem
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/update_root
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/_update
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/boot
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/init
 create mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/env/bin/update_root
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/Makefile
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/config.h
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/env/config
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.dox
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/env/bin/_update
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/env/bin/boot
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/env/bin/init
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/env/bin/update_k=
ernel
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/env/bin/update_r=
ootfs
 create mode 100644 arch/arm/boards/karo-tx25/Makefile
 create mode 100644 arch/arm/boards/karo-tx25/board.c
 create mode 100644 arch/arm/boards/karo-tx25/config.h
 create mode 100644 arch/arm/boards/karo-tx25/env/bin/init_board
 create mode 100644 arch/arm/boards/karo-tx25/env/config
 create mode 100644 arch/arm/boards/karo-tx25/lowlevel.c
 delete mode 100644 arch/arm/boards/mini2440/env/bin/_update
 delete mode 100644 arch/arm/boards/mini2440/env/bin/boot
 delete mode 100644 arch/arm/boards/mini2440/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/mini2440/env/bin/init
 delete mode 100644 arch/arm/boards/mini2440/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/mini2440/env/bin/update_root
 create mode 100644 arch/arm/boards/mini2440/lowlevel_init.S
 create mode 100644 arch/arm/configs/eukrea_cpuimx51_defconfig
 create mode 100644 arch/arm/configs/tx25stk5_defconfig
 create mode 100644 arch/arm/mach-imx/internal-nand-boot.c
 rename arch/x86/{include/asm =3D> mach-i386/include/mach}/barebox.lds.h (8=
9%)
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
