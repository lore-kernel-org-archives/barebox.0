Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RENEb-0005Q0-OS
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:30:14 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1RENEZ-0008I5-I1
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 17:30:11 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1RENEZ-0004yC-GT
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 17:30:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 17:30:02 +0200
Message-Id: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX53 patches
To: barebox@lists.infradead.org

The following patches rework the lowlevel init code for i.MX53
processors. For the LOCO board the plls were initialized poorly
which resulted in slow bus clocks. I took this opportunity to
rewrite it to C in a way it could be used by other i.MX53 boards
aswell.
Also, Nand support for i.MX53 is added and the iomux table is updated
to the latest kernel version.

Sascha Hauer (6):
      ARM i.MX53: Add lowlevel init code
      ARM i.MX53 Loco: Use generic lowlevel init code
      ARM i.MX53: sync iomux data with latest kernel
      mtd nand i.MX: Add i.MX53 support
      mtd nand i.MX: depend on ARCH_IMX instead of individual SoCs
      ARM i.MX53: Fix nand registration helper

 arch/arm/boards/freescale-mx53-loco/Makefile       |    1 -
 arch/arm/boards/freescale-mx53-loco/board.c        |    3 +
 .../arm/boards/freescale-mx53-loco/lowlevel_init.S |  172 --
 arch/arm/mach-imx/Kconfig                          |    1 -
 arch/arm/mach-imx/imx53.c                          |  147 ++
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |    3 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   25 +-
 arch/arm/mach-imx/include/mach/imx-nand.h          |    2 +-
 arch/arm/mach-imx/include/mach/imx53.h             |    6 +
 arch/arm/mach-imx/include/mach/iomux-mx53.h        | 2354 ++++++++++----------
 drivers/mtd/nand/Kconfig                           |    2 +-
 drivers/mtd/nand/nand_imx.c                        |   10 +-
 12 files changed, 1376 insertions(+), 1350 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
 create mode 100644 arch/arm/mach-imx/include/mach/imx53.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
