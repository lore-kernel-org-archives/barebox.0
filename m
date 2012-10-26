Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003yn-HX
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TRdsr-0004lI-CL
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 08:59:09 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TRdsr-0006XI-BI
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 08:59:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:58:53 +0200
Message-Id: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] random compile fixes
To: barebox@lists.infradead.org

These came up during some randconfig builds. intended for master.

Sascha

----------------------------------------------------------------
Sascha Hauer (15):
      pbl: Add missing FORCE
      wd: Provide default value for watchdog timeout
      mtd: fix mtdraw_write/mtdraw_erase arguments
      ARM: let THUMB2 select EABI
      ARM Samsung: fix pbl build for tiny210 board
      ARM omap: pbl fixes
      ARM Samsung: Let Nand boot depend on ARCH_S3C24xx
      mfd stmpe: Add missing semicolons at end of EXPORT_SYMBOL
      misc JTAG: Let Jtag driver depend on GENERIC_GPIO
      mtd mxs nand: select NAND_BBT
      mtd nand i.MX: fix compilation for unsupported SoC
      of gpio: Build gpio helper only when gpiolib is selected
      pbl: provide hang() function for the pbl
      ARM omap spi image: relax size constrains
      ARM omap spi image: print error to stderr

 arch/arm/Kconfig                             |    1 +
 arch/arm/boards/friendlyarm-tiny210/Makefile |    1 +
 arch/arm/mach-omap/Makefile                  |    1 +
 arch/arm/mach-omap/omap3_generic.c           |    2 ++
 arch/arm/mach-samsung/Kconfig                |    1 +
 arch/arm/mach-samsung/Makefile               |    1 +
 commands/Kconfig                             |    1 +
 drivers/mfd/stmpe-i2c.c                      |    4 ++--
 drivers/misc/Kconfig                         |    1 +
 drivers/mtd/mtdraw.c                         |    4 ++--
 drivers/mtd/nand/Kconfig                     |    1 +
 drivers/mtd/nand/nand_imx.c                  |    3 +++
 drivers/of/Makefile                          |    2 +-
 pbl/misc.c                                   |    5 +++++
 scripts/Makefile.build                       |    4 ++--
 scripts/mk-am35xx-spi-image.c                |   10 ++++------
 16 files changed, 29 insertions(+), 13 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
