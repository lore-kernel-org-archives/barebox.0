Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OUy6a-0004ab-Bm
	for barebox@lists.infradead.org; Sat, 03 Jul 2010 08:29:46 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OUy6S-0005UH-Pu
	for barebox@lists.infradead.org; Sat, 03 Jul 2010 10:29:36 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OUy6S-0005h4-Om
	for barebox@lists.infradead.org; Sat, 03 Jul 2010 10:29:36 +0200
Date: Sat, 3 Jul 2010 10:29:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100703082936.GI5929@pengutronix.de>
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
Subject: barebox-2010.07.0
To: barebox@lists.infradead.org

Hi all,

Yet again we have a new release. Here is what happened since the last
release:


The following changes since commit 7f37262ee5b28f5c08377188d3a9e6167d480989:

  v2010-06.0 (2010-06-02 10:36:28 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox master

Baruch Siach (2):
      i2c: fix adapter_list manipulation
      byteorder: add missing {BIG,LITTLE}_ENDIAN defines

Eric Benard (2):
      i.MX25 : add Framebuffer support
      Add support for Eukrea's CPUIMX25

Eric B=E9nard (12):
      i2c-imx: change log level for No ACK
      commands: add i2c commands
      eukrea_cpuimx27: add fb support
      eukrea_cpuimx27: update env
      eukrea_cpuimx27: update defconfig
      arm: update mach-types
      eukrea_cpuimx25: fix machine ID
      eukrea_cpuimx25: update env
      eukrea_cpuimx25: add compressed logo support
      eukrea_cpuimx25: update defconfig
      cpuimx25: remove unused define
      eukrea_cpuimx25: fix env partition size

Marc Reilly (5):
      arm: Add revision tag to boot parameters
      arm boot: Formatting
      imx35: add detection of silicon revision
      imx35pdk: correct mode for display contrast pin
      imx35pdk: Detect and set silicon and board revision for boot params.

Sascha Hauer (8):
      i2c: implement i2c_get_adapter()
      Merge branch 'next'
      arm: use processor specififc functions to turn off MMU
      arm start.c: Make runtime function address calculation tolerant for m=
ore compilers
      arch/arm/cpu/cpu.c: remove unused variable
      ARM: add missing call to arch_init_lowlevel
      OMAP: fix compilation
      v2010.07.0

Wolfram Sang (1):
      nor: don't use sector for ERASE_START

 Makefile                                    |    2 +-
 arch/arm/Makefile                           |    1 +
 arch/arm/configs/eukrea_cpuimx25_defconfig  |  254 +++++++++++++++++++++++=
++
 arch/arm/configs/eukrea_cpuimx27_defconfig  |   79 +++++---
 arch/arm/cpu/cpu.c                          |   17 +-
 arch/arm/cpu/start.c                        |   20 ++-
 arch/arm/include/asm/armlinux.h             |    6 +
 arch/arm/include/asm/barebox-arm.h          |    1 +
 arch/arm/lib/armlinux.c                     |   23 +++
 arch/arm/mach-imx/Kconfig                   |   10 +
 arch/arm/mach-imx/imx35.c                   |   11 +
 arch/arm/mach-imx/include/mach/generic.h    |    5 +
 arch/arm/mach-imx/include/mach/imx35-regs.h |   18 ++
 arch/arm/mach-omap/omap3_core.S             |    2 +-
 arch/arm/tools/mach-types                   |  133 +++++++++++++-
 board/eukrea_cpuimx25/Makefile              |   24 +++
 board/eukrea_cpuimx25/config.h              |   27 +++
 board/eukrea_cpuimx25/env/bin/_update       |   36 ++++
 board/eukrea_cpuimx25/env/bin/boot          |   53 +++++
 board/eukrea_cpuimx25/env/bin/hush_hack     |    1 +
 board/eukrea_cpuimx25/env/bin/init          |   41 ++++
 board/eukrea_cpuimx25/env/bin/update_kernel |    8 +
 board/eukrea_cpuimx25/env/bin/update_root   |    8 +
 board/eukrea_cpuimx25/env/config            |   27 +++
 board/eukrea_cpuimx25/eukrea_cpuimx25.c     |  273 +++++++++++++++++++++++=
++++
 board/eukrea_cpuimx25/lowlevel.c            |  130 +++++++++++++
 board/eukrea_cpuimx27/env/bin/boot          |   10 +-
 board/eukrea_cpuimx27/env/config            |   14 +-
 board/eukrea_cpuimx27/eukrea_cpuimx27.c     |   67 +++++++-
 board/freescale-mx35-3-stack/3stack.c       |   57 +++++-
 commands/Kconfig                            |    8 +
 commands/Makefile                           |    1 +
 commands/i2c.c                              |  214 +++++++++++++++++++++
 drivers/i2c/i2c-imx.c                       |    2 +-
 drivers/i2c/i2c.c                           |   24 +++-
 drivers/nor/cfi_flash_amd.c                 |    3 +-
 drivers/video/Kconfig                       |    4 +-
 drivers/video/imx.c                         |   19 ++-
 include/i2c/i2c.h                           |    2 +
 include/linux/byteorder/generic.h           |    6 +
 40 files changed, 1563 insertions(+), 78 deletions(-)
 create mode 100644 arch/arm/configs/eukrea_cpuimx25_defconfig
 create mode 100644 board/eukrea_cpuimx25/Makefile
 create mode 100644 board/eukrea_cpuimx25/config.h
 create mode 100644 board/eukrea_cpuimx25/env/bin/_update
 create mode 100644 board/eukrea_cpuimx25/env/bin/boot
 create mode 100644 board/eukrea_cpuimx25/env/bin/hush_hack
 create mode 100644 board/eukrea_cpuimx25/env/bin/init
 create mode 100644 board/eukrea_cpuimx25/env/bin/update_kernel
 create mode 100644 board/eukrea_cpuimx25/env/bin/update_root
 create mode 100644 board/eukrea_cpuimx25/env/config
 create mode 100644 board/eukrea_cpuimx25/eukrea_cpuimx25.c
 create mode 100644 board/eukrea_cpuimx25/lowlevel.c
 create mode 100644 commands/i2c.c

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
