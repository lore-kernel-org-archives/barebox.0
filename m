Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OJji3-00074X-CD
	for barebox@lists.infradead.org; Wed, 02 Jun 2010 08:54:03 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OJji2-000657-3O
	for barebox@lists.infradead.org; Wed, 02 Jun 2010 10:53:58 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OJji2-0007HL-2O
	for barebox@lists.infradead.org; Wed, 02 Jun 2010 10:53:58 +0200
Date: Wed, 2 Jun 2010 10:53:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100602085358.GR26820@pengutronix.de>
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
Subject: barebox-2010.06.0
To: barebox@lists.infradead.org

I really like monthly releases. They show activity ;)

Here's what happened since the last release:


The following changes since commit 1d6d5108e56b6b6f2fc72d2b35118f8bf545280d:

  barebox 2010.05.0 (2010-05-03 14:32:02 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox master

Eric Benard (1):
      freescale-mx*5-3-stack : fix __flash_header_start

Eric B=E9nard (3):
      eukrea_cpuimx27: allow compilation without LP3972 selected
      i.MX27: add required defines for I2C2
      eukrea_cpuimx27_defconfig: increase MALLOC_SIZE

Ivo Clarysse (1):
      MX25PDK: Add support for 64MiB DDR2 SDRAM

Luotao Fu (1):
      fix error return value while loading environment

Sascha Hauer (18):
      i.MX35 stack: Fix mc9sdz60 reset register offset
      ARM: use memalign in dma_alloc_coherent to assure alignment
      fsl_udc: make it work with MMU on
      Increase MAX_FILES to 128
      fix _update scripts
      define __LINUX_ARM_ARCH__ for armv6 processors
      ARM: Add get_cr/set_cr functions
      ARM: update icache functions to use get_cr/set_cr
      add arm helper function to determine the program counter
      arm: remove unused variables from header file
      arm: move __mmu_cache_flush to bare_init section
      arm: reimplement startup code in C
      i.MX: remove __REG from esd controller regs. use readl/writel instead
      pcm043: reimplement lowlevel code in C
      i.MX35: Fix ahbclock calculation
      pcm038: reimplement lowlevel code in C
      pcm043: Fix check for being inside NFC space
      v2010-06.0

Uwe Kleine-K=F6nig (3):
      cfi_flash: use flash_write_word instead of reimplementing it again
      imx/gpio: make gpio_get_value actually work
      give nice output when generating barebox.bin and barebox.S

Wolfram Sang (1):
      nor: Don't use the sector for the unlock sequence

 Makefile                                     |   19 ++-
 arch/arm/Makefile                            |    1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig   |    2 +-
 arch/arm/cpu/Makefile                        |    6 +-
 arch/arm/cpu/cache-armv4.S                   |    2 +
 arch/arm/cpu/cache-armv5.S                   |    2 +
 arch/arm/cpu/cache-armv6.S                   |    3 +
 arch/arm/cpu/cache-armv7.S                   |    2 +
 arch/arm/cpu/cpu.c                           |   94 ++---------
 arch/arm/cpu/mmu.c                           |    2 +-
 arch/arm/cpu/start-arm.S                     |  248 ----------------------=
----
 arch/arm/cpu/start.c                         |  108 +++++++++++
 arch/arm/include/asm/barebox-arm.h           |   10 +-
 arch/arm/include/asm/common.h                |   18 ++
 arch/arm/include/asm/system.h                |   72 ++++++++
 arch/arm/lib/barebox.lds.S                   |    2 +-
 arch/arm/mach-imx/Kconfig                    |   12 ++-
 arch/arm/mach-imx/gpio.c                     |    2 +-
 arch/arm/mach-imx/include/mach/esdctl.h      |   10 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h  |    3 +
 arch/arm/mach-imx/speed-imx35.c              |    4 +-
 board/a9m2410/env/bin/_update                |    2 +-
 board/a9m2440/env/bin/_update                |    2 +-
 board/at91sam9260ek/env/bin/_update          |    2 +-
 board/at91sam9263ek/env/bin/_update          |    2 +-
 board/eukrea_cpuimx27/env/bin/_update        |    2 +-
 board/eukrea_cpuimx27/eukrea_cpuimx27.c      |    6 +-
 board/freescale-mx25-3-stack/3stack.c        |   32 ++++-
 board/freescale-mx25-3-stack/env/bin/_update |    2 +-
 board/freescale-mx35-3-stack/3stack.c        |    4 +-
 board/freescale-mx35-3-stack/env/bin/_update |    2 +-
 board/freescale-mx35-3-stack/flash_header.c  |    2 +-
 board/imx27ads/env/bin/_update               |    2 +-
 board/ipe337/env/bin/_update                 |    2 +-
 board/kp_ukd_r1_num/env/bin/_update          |    2 +-
 board/mmccpu/env/bin/_update                 |    2 +-
 board/pcm037/env/bin/_update                 |    2 +-
 board/pcm038/Makefile                        |    2 +-
 board/pcm038/env/bin/_update                 |    2 +-
 board/pcm038/lowlevel.c                      |  117 ++++++++++++
 board/pcm038/lowlevel_init.S                 |  116 ------------
 board/pcm038/pcm038.c                        |    9 -
 board/pcm043/Makefile                        |    2 +-
 board/pcm043/env/bin/_update                 |    2 +-
 board/pcm043/lowlevel.c                      |  214 ++++++++++++++++++++++
 board/pcm043/lowlevel_init.S                 |  231 ----------------------=
--
 board/pcm043/pcm043.c                        |   10 -
 board/phycard-i.MX27/env/bin/_update         |    2 +-
 board/phycore_mcf54xx/env/bin/_update        |    2 +-
 board/pm9263/env/bin/_update                 |    2 +-
 common/environment.c                         |    6 +-
 drivers/nor/cfi_flash.c                      |   19 +--
 drivers/nor/cfi_flash_amd.c                  |   16 +-
 drivers/usb/gadget/fsl_udc.c                 |   11 +-
 include/stdio.h                              |    2 +-
 55 files changed, 676 insertions(+), 779 deletions(-)
 delete mode 100644 arch/arm/cpu/start-arm.S
 create mode 100644 arch/arm/cpu/start.c
 create mode 100644 arch/arm/include/asm/system.h
 create mode 100644 board/pcm038/lowlevel.c
 delete mode 100644 board/pcm038/lowlevel_init.S
 create mode 100644 board/pcm043/lowlevel.c
 delete mode 100644 board/pcm043/lowlevel_init.S
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
