Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nl-00026G-BC
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:15 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pb9ni-0007HD-4t
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 11:44:06 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pb9ni-0001Pe-3k
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 11:44:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:40 +0100
Message-Id: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: fix printf related compiler warnings
To: barebox@lists.infradead.org

The printf format checking introduced with d66ae58cd87c78b76652ecf750371b1e005d44de
introduced a bunch of new compiler warnings. These patches fix
the warnings visible when compiling all defconfigs.

Sascha

The following changes since commit d4b8e67fcd9eccdc908cbd851ffe4d4a8de0a60a:

  nand: Fix warnings due to incompatible format strings (2011-01-07 10:34:27 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git compiler-warnings

Sascha Hauer (24):
      i.MX: fix printf compiler warnings
      net: fix printf compiler warnings
      fec_imx: fix printf compiler warnings
      nand: fix printf compiler warnings
      cdev: fix printf compiler warnings
      usb: add missing byteorder include
      add to speed
      eukrea_cpuimx35: fix printf compiler warnings
      blackfin: fix printf compiler warnings
      cs8900: fix printf compiler warnings
      dm9000: fix printf compiler warnings
      smc911x: fix printf compiler warnings
      ipe337: fix printf compiler warnings
      device tree: fix printf compiler warnings
      netx: fix printf compiler warnings
      guf-cupid: fix printf compiler warnings
      pcm043: fix printf compiler warnings
      at91: fix printf compiler warnings
      ppc: fix printf compiler warnings
      imx-esdhc: fix printf compiler warnings
      mci-core: fix printf compiler warnings
      imx-ipu-fb: fix printf compiler warnings
      mpc5xxx: fix printf compiler warnings
      i.MX nand: do not select NAND_IMX_BOOT

 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/mach-at91/clock.c                        |    2 +-
 arch/arm/mach-imx/Kconfig                         |    1 -
 arch/arm/mach-imx/speed-imx1.c                    |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx21.c                   |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx25.c                   |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx27.c                   |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx31.c                   |    4 ++--
 arch/arm/mach-imx/speed-imx35.c                   |   18 +++++++++---------
 arch/arm/mach-netx/generic.c                      |    2 +-
 arch/blackfin/boards/ipe337/cmd_alternate.c       |    4 ++--
 arch/blackfin/lib/blackfin_linux.c                |    2 +-
 arch/blackfin/lib/traps.c                         |    2 +-
 arch/ppc/lib/ppclinux.c                           |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c                       |    2 +-
 commands/nand.c                                   |    2 +-
 common/ft_build.c                                 |    2 +-
 drivers/mci/imx-esdhc.c                           |    2 +-
 drivers/mci/mci-core.c                            |    4 ++--
 drivers/mtd/ubi/cdev.c                            |    2 +-
 drivers/net/cs8900.c                              |    6 +++---
 drivers/net/dm9000.c                              |   12 ++++++------
 drivers/net/fec_imx.c                             |    6 +++---
 drivers/net/smc911x.c                             |    2 +-
 drivers/video/imx-ipu-fb.c                        |    2 +-
 include/usb/usb.h                                 |    1 +
 net/eth.c                                         |    2 +-
 29 files changed, 84 insertions(+), 84 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
