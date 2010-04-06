Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nz3IZ-0007jC-RC
	for barebox@lists.infradead.org; Tue, 06 Apr 2010 07:34:16 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1Nz3IY-0004Ji-3G
	for barebox@lists.infradead.org; Tue, 06 Apr 2010 09:34:10 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Nz3IY-0000TB-29
	for barebox@lists.infradead.org; Tue, 06 Apr 2010 09:34:10 +0200
Date: Tue, 6 Apr 2010 09:34:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100406073410.GB3688@pengutronix.de>
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
Subject: barebox-2010.04.0
To: barebox@lists.infradead.org

Hi all,

Babebox-2010.04.0 is out. Here is a changelog:

Eric Benard (1):
      i.MX25 : fix define name for clock frequency

Ivo Clarysse (1):
      MX21ADS: Support booting from NAND

Jaccon Bastiaansen (1):
      Barebox does not boot on iMX21ADS board

Juergen Beisert (1):
      Make some help comments less confusing

M=E1rton N=E9meth (1):
      u-boot-v2: fix typos in documentation

Sascha Hauer (13):
      cfi_flash_new: Fix Intel chips
      cfi_flash_new: Safe indention level by bailing out earlier in error c=
ase
      cfi_flash_new: generate flash erase dots in common function
      cfi_flash_new: make code more readable, return is not a function
      cfi_flash: remove old driver and switch to new one
      cfi_flash: move include/cfi_flash.c next to driver
      Merge branch 'nor' into next
      Merge branch 'next'
      armv5: use proper cache flush function
      remove unused file arch/arm/cpu/cache.S
      nand_imx: clear INT_MSK to fix i.MX21 nand boot
      i.MX35 3stack: Add a comment about the nonworking display
      Release v2010.04.0

Uwe Kleine-K=F6nig (1):
      trivial: fix command case for erase usage line

Wolfram Sang (1):
      Documentation: fix typos & correct symlink

 Documentation/barebox-main.dox                     |   14 +-
 Documentation/devices_drivers.txt                  |    4 +-
 Makefile                                           |    2 +-
 arch/arm/cpu/Makefile                              |    2 +-
 arch/arm/cpu/cache-armv5.S                         |  113 ++
 arch/arm/cpu/cache.S                               |   70 -
 arch/arm/mach-imx/speed-imx25.c                    |    4 +-
 board/at91sam9260ek/init.c                         |    1 -
 board/at91sam9263ek/init.c                         |    1 -
 board/eco920/eco920.c                              |    1 -
 board/eukrea_cpuimx27/eukrea_cpuimx27.c            |    1 -
 board/freescale-mx25-3-stack/config.h              |    2 +-
 board/freescale-mx35-3-stack/3stack.c              |    5 +-
 board/imx21ads/imx21ads.c                          |   10 +-
 board/imx21ads/lowlevel_init.S                     |  192 ++-
 board/imx27ads/imx27ads.c                          |    1 -
 board/mmccpu/init.c                                |    1 -
 board/netx/netx.c                                  |    1 -
 board/pcm030/pcm030.c                              |    1 -
 board/pcm038/pcm038.c                              |    1 -
 board/phycard-i.MX27/pca100.c                      |    1 -
 board/pm9263/init.c                                |    1 -
 board/scb9328/scb9328.c                            |    1 -
 commands/flash.c                                   |    3 +-
 commands/nand.c                                    |    2 +-
 drivers/nand/nand_imx.c                            |   10 +-
 drivers/nor/Kconfig                                |   34 +-
 drivers/nor/Makefile                               |    3 +-
 drivers/nor/cfi_flash.c                            | 1525 +++++++---------=
----
 include/cfi_flash_new.h =3D> drivers/nor/cfi_flash.h |   12 +-
 drivers/nor/cfi_flash_amd.c                        |   11 +-
 drivers/nor/cfi_flash_intel.c                      |   90 +-
 drivers/nor/cfi_flash_new.c                        |  995 -------------
 include/cfi_flash.h                                |  458 ------
 34 files changed, 835 insertions(+), 2738 deletions(-)
 create mode 100644 arch/arm/cpu/cache-armv5.S
 delete mode 100644 arch/arm/cpu/cache.S
 rename include/cfi_flash_new.h =3D> drivers/nor/cfi_flash.h (99%)
 delete mode 100644 drivers/nor/cfi_flash_new.c
 delete mode 100644 include/cfi_flash.h

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
