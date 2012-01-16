Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje5-0008A7-U7
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:37 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Rmjdu-000136-VC
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:18:22 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1Rmjdt-00082W-Ky
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:18:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:10 +0100
Message-Id: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] omap3 towards thumb2 support
To: barebox@lists.infradead.org

The following patches rework the omap3 support to be thumb2 safe.
The initialisation order is changed so that more stuff can be
done in a regular C environment rather than in lowlevel time.

Together with git://git.pengutronix.de/git/barebox.git work/thumb2
the beagle board Xload config now fits into 34k.

The following changes since commit be07ecb5c50e007d71f75145938c66bd04960b43:

  omap343xdsp: move to arch/arm/boards/omap343xdsp (2012-01-16 10:28:00 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git work/omap3

Sascha Hauer (10):
      ARM omap3: remove OMAP3_COPY_CLOCK_SRAM
      ARM omap3 beagle xload: Move stack to SRAM
      ARM omap3: move board_init to pure_initcall
      ARM omap3: call a_init from board code
      ARM omap3 clock: move pll tables to C code
      ARM omap3: remove vector setup from lowlevel code
      ARM omap3: reimplement setup_auxcr in pure asm
      ARM cache-armv7: Add additional ISB
      mtd omap nand: fix driver without CONFIG_PARAMETER
      ARM omap3: make omap3_core.S thumb safe

 arch/arm/boards/beagle/board.c                   |    8 +-
 arch/arm/boards/omap343xdsp/board.c              |    8 +-
 arch/arm/boards/omap3evm/board.c                 |    8 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig |    4 +-
 arch/arm/cpu/cache-armv7.S                       |    1 +
 arch/arm/mach-omap/Kconfig                       |   11 -
 arch/arm/mach-omap/Makefile                      |    5 +-
 arch/arm/mach-omap/auxcr.S                       |   16 +
 arch/arm/mach-omap/include/mach/board.h          |   35 --
 arch/arm/mach-omap/include/mach/omap3-clock.h    |   10 -
 arch/arm/mach-omap/include/mach/silicon.h        |    4 +-
 arch/arm/mach-omap/omap3_clock.c                 |  212 ++++++-----
 arch/arm/mach-omap/omap3_clock_core.S            |  426 ----------------------
 arch/arm/mach-omap/omap3_core.S                  |   64 +---
 arch/arm/mach-omap/omap3_generic.c               |   22 +-
 arch/arm/mach-omap/omap3_platform.S              |   65 ----
 drivers/mtd/nand/nand_omap_gpmc.c                |    1 +
 17 files changed, 171 insertions(+), 729 deletions(-)
 create mode 100644 arch/arm/mach-omap/auxcr.S
 delete mode 100644 arch/arm/mach-omap/include/mach/board.h
 delete mode 100644 arch/arm/mach-omap/omap3_clock_core.S
 delete mode 100644 arch/arm/mach-omap/omap3_platform.S

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
