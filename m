Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O8vC5-00029V-8b
	for barebox@lists.infradead.org; Mon, 03 May 2010 12:56:20 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1O8vC3-0001W9-1Y
	for barebox@lists.infradead.org; Mon, 03 May 2010 14:56:15 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1O8vC3-0004La-0c
	for barebox@lists.infradead.org; Mon, 03 May 2010 14:56:15 +0200
Date: Mon, 3 May 2010 14:56:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100503125614.GB31199@pengutronix.de>
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
Subject: barebox-2010.05.0
To: barebox@lists.infradead.org

Here we go again for another release. I reverted "nand_imx: Speed up
sequential read" for this release as it breaks on v1 controllers with 2k
pagesize. Download it the usual place:

http://barebox.org/download/barebox-2010.05.0.tar.bz2

Sascha

The following changes since commit 9c3df274acbd5b08502833516fb327c98c359937:
  Sascha Hauer (1):
        Release v2010.04.0

are available in the git repository at:

  git+ssh://sha@git.pengutronix.de/git/barebox.git master

Eric Benard (2):
      i.MX25 : add lcdc clock support
      i.MX25 : change IOMUX for LD16 and LD17

Ivo Clarysse (2):
      i.MX21: support framebuffer
      MX21ADS: Support LCD panel

Jan Weitzel (2):
      fix miiphy alloc
      tftp return value

Sascha Hauer (29):
      Merge branch 'master' into next
      hush: Fix return code when calling 'exit' inside loops
      nand_imx: use optimized memcpy
      nand_imx: Speed up sequential read
      imx_nand: use memcpy for copying from/to buffer
      add unaligned access support
      add unlzo support
      add snprintf function
      add process_escape_sequence function
      echo: add -e option support
      hush: only remove backslashes introduced from glob
      hush: allow fancy prompts
      make reset_cpu a __noreturn function
      make panic and hang __noreturn functions
      introduce a arch_shutdown call and call it from shutdown_barebox
      blackfin: implement arch_shutdown call
      go command: shutdown barebox before calling an application
      remove now unused arch_execute
      ARM: replace cleanup_before_linux with the generic shutdown_barebox f=
unction
      pass arguments to dma_* as unsigned long as the kernel does
      ARM: Add a wrapper around dma_* functions
      add l2x0 cache support
      pcm043: enable l2x0 cache
      netx eth driver: remove local definition of ARRAY_SIZE
      Merge branch 'pu' into next
      Merge branch 'next'
      i.MX35 3stack: fix typo in comment
      Revert "nand_imx: Speed up sequential read"
      barebox 2010.05.0

Uwe Kleine-K=F6nig (3):
      arm: update mach-types
      board/pcm038: document value written to ESDCFG0
      clock: fix possible error on overflow in is_timeout

marc (3):
      mc9s08dz60: Fixed incorrect register offsets.
      Freescale i.MX35 3stack: Enable power to LCD.
      Freescale i.MX35 3stack: Remove comment about LCD power enable.

 Makefile                                    |    2 +-
 arch/arm/cpu/Kconfig                        |    8 +
 arch/arm/cpu/Makefile                       |    2 +
 arch/arm/cpu/cache-armv4.S                  |    6 +-
 arch/arm/cpu/cache-armv5.S                  |    6 +-
 arch/arm/cpu/cache-armv6.S                  |    6 +-
 arch/arm/cpu/cache-armv7.S                  |   12 +-
 arch/arm/cpu/cache-l2x0.c                   |  183 +++++++++++++++
 arch/arm/cpu/cpu.c                          |   12 +-
 arch/arm/cpu/mmu.c                          |   28 +++-
 arch/arm/include/asm/common.h               |    2 +-
 arch/arm/include/asm/mmu.h                  |   27 ++-
 arch/arm/include/asm/unaligned.h            |   19 ++
 arch/arm/lib/armlinux.c                     |    6 +-
 arch/arm/mach-at91/clocksource.c            |    5 +-
 arch/arm/mach-ep93xx/clocksource.c          |    2 +-
 arch/arm/mach-imx/Kconfig                   |    3 +-
 arch/arm/mach-imx/clocksource.c             |    2 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h |   35 +++-
 arch/arm/mach-imx/include/mach/iomux-mx25.h |    4 +-
 arch/arm/mach-imx/speed-imx21.c             |    5 +
 arch/arm/mach-imx/speed-imx25.c             |    6 +
 arch/arm/mach-netx/generic.c                |    5 +-
 arch/arm/mach-omap/omap3_generic.c          |    2 +-
 arch/arm/mach-s3c24xx/generic.c             |    2 +-
 arch/arm/tools/mach-types                   |  325 +++++++++++++++++++++++=
+++-
 arch/blackfin/include/asm/common.h          |    2 +-
 arch/blackfin/lib/board.c                   |    8 +-
 arch/blackfin/lib/cpu.c                     |    5 +-
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c       |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c                 |    2 +-
 arch/sandbox/os/common.c                    |    2 +-
 arch/x86/mach-i386/reset.c                  |    2 +-
 board/freescale-mx35-3-stack/3stack.c       |   14 +-
 board/imx21ads/imx21ads.c                   |   83 +++++++
 board/pcm038/lowlevel_init.S                |    5 +
 board/pcm043/pcm043.c                       |   15 +-
 commands/Kconfig                            |   14 ++
 commands/Makefile                           |    1 +
 commands/echo.c                             |   19 ++-
 commands/go.c                               |   19 +-
 commands/unlzo.c                            |   69 ++++++
 common/Kconfig                              |    9 +
 common/clock.c                              |    3 +-
 common/hush.c                               |   31 ++--
 common/startup.c                            |    5 +-
 drivers/nand/nand_imx.c                     |   23 ++-
 drivers/net/fec_imx.c                       |   11 +-
 drivers/net/netx_eth.c                      |    2 -
 drivers/usb/gadget/fsl_udc.c                |    3 +-
 drivers/usb/usb_ehci_core.c                 |    4 +-
 drivers/video/imx.c                         |    9 +
 include/common.h                            |    8 +-
 include/i2c/mc9sdz60.h                      |   82 ++++---
 include/libbb.h                             |    2 +
 include/lzo.h                               |   46 ++++
 include/stdio.h                             |    1 +
 include/unaligned/access_ok.h               |   67 ++++++
 include/unaligned/be_byteshift.h            |   70 ++++++
 include/unaligned/be_memmove.h              |   36 +++
 include/unaligned/be_struct.h               |   36 +++
 include/unaligned/generic.h                 |   68 ++++++
 include/unaligned/le_byteshift.h            |   70 ++++++
 include/unaligned/le_memmove.h              |   36 +++
 include/unaligned/le_struct.h               |   36 +++
 include/unaligned/memmove.h                 |   45 ++++
 include/unaligned/packed_struct.h           |   46 ++++
 lib/Kconfig                                 |    5 +
 lib/Makefile                                |    3 +
 lib/decompress_unlzo.c                      |  199 ++++++++++++++++
 lib/lzo/Kconfig                             |    6 +
 lib/lzo/Makefile                            |    4 +
 lib/lzo/lzo1x_compress.c                    |  226 +++++++++++++++++++
 lib/lzo/lzo1x_decompress.c                  |  247 ++++++++++++++++++++
 lib/lzo/lzodefs.h                           |   43 ++++
 lib/lzo/modules.builtin                     |    2 +
 lib/process_escape_sequence.c               |   78 +++++++
 lib/vsprintf.c                              |   14 +-
 net/tftp.c                                  |    3 +-
 79 files changed, 2395 insertions(+), 161 deletions(-)
 create mode 100644 arch/arm/cpu/cache-l2x0.c
 create mode 100644 arch/arm/include/asm/unaligned.h
 create mode 100644 commands/unlzo.c
 create mode 100644 include/lzo.h
 create mode 100644 include/unaligned/access_ok.h
 create mode 100644 include/unaligned/be_byteshift.h
 create mode 100644 include/unaligned/be_memmove.h
 create mode 100644 include/unaligned/be_struct.h
 create mode 100644 include/unaligned/generic.h
 create mode 100644 include/unaligned/le_byteshift.h
 create mode 100644 include/unaligned/le_memmove.h
 create mode 100644 include/unaligned/le_struct.h
 create mode 100644 include/unaligned/memmove.h
 create mode 100644 include/unaligned/packed_struct.h
 create mode 100644 lib/decompress_unlzo.c
 create mode 100644 lib/lzo/Kconfig
 create mode 100644 lib/lzo/Makefile
 create mode 100644 lib/lzo/lzo1x_compress.c
 create mode 100644 lib/lzo/lzo1x_decompress.c
 create mode 100644 lib/lzo/lzodefs.h
 create mode 100644 lib/lzo/modules.builtin
 create mode 100644 lib/process_escape_sequence.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
