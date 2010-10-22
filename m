Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT4-0006Hm-6O
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:36 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1P9HT2-0002bV-2T
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 15:15:32 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1P9HT2-00063S-1N
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 15:15:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:18 +0200
Message-Id: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: more patches for next
To: barebox@lists.infradead.org


The following changes since commit 298252bdef6a97d988f83f5ea554a2262c529ae2:

  process_escape_sequence: Add missing include (2010-10-21 22:21:42 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (13):
      ARM pca100: Use a flash bbt
      i.MX nand: optimize nand boot code for size
      mci-core: add multiple block support
      i.MX51: Fix mmcclk rate
      i.MX esdctl: Add register bits from redboot
      i.MX35 regs: Add watchdog base
      fb: i.MX IPU: remove unnecessary printf
      fb: i.MX IPU: move fb_info initialization to a single function
      fb: i.MX IPU: fold mx3fb_set_par into its only user
      mci: align data for commands
      ARM: Add Garz+Fricke Cupid board support
      defaultenv: fix mtdparts
      ARM: Add defconfig for Garz+Fricke cupid board

 arch/arm/Makefile                           |    1 +
 arch/arm/boards/guf-cupid/Makefile          |   24 ++
 arch/arm/boards/guf-cupid/board.c           |  426 +++++++++++++++++++++++++++
 arch/arm/boards/guf-cupid/config.h          |   31 ++
 arch/arm/boards/guf-cupid/cupid.dox         |    9 +
 arch/arm/boards/guf-cupid/env/config        |   56 ++++
 arch/arm/boards/guf-cupid/lowlevel.c        |  349 ++++++++++++++++++++++
 arch/arm/boards/phycard-i.MX27/pca100.c     |    1 +
 arch/arm/configs/cupid_defconfig            |   56 ++++
 arch/arm/mach-imx/Kconfig                   |   11 +
 arch/arm/mach-imx/include/mach/esdctl.h     |   88 ++++++
 arch/arm/mach-imx/include/mach/imx35-regs.h |    1 +
 arch/arm/mach-imx/speed-imx51.c             |   33 ++-
 defaultenv/bin/boot                         |    2 +-
 drivers/mci/mci-core.c                      |   47 ++-
 drivers/mtd/nand/Kconfig                    |   16 +
 drivers/mtd/nand/nand_imx.c                 |  196 +++++++++----
 drivers/video/imx-ipu-fb.c                  |   92 +++----
 18 files changed, 1307 insertions(+), 132 deletions(-)
 create mode 100644 arch/arm/boards/guf-cupid/Makefile
 create mode 100644 arch/arm/boards/guf-cupid/board.c
 create mode 100644 arch/arm/boards/guf-cupid/config.h
 create mode 100644 arch/arm/boards/guf-cupid/cupid.dox
 create mode 100644 arch/arm/boards/guf-cupid/env/config
 create mode 100644 arch/arm/boards/guf-cupid/lowlevel.c
 create mode 100644 arch/arm/configs/cupid_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
