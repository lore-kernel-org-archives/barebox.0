Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFj-0003sG-Vy
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XYxCK-0005vn-Il
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 15:10:32 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XYxCK-0004av-Ha
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 15:10:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:26 +0200
Message-Id: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AM335x patches
To: barebox@lists.infradead.org

AM335x related patches, additions to the update handlers code and
documentation updates.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      ARM: am33xx update SPI NOR: Check image size before flashing
      ARM: am33xx update SPI NOR: Ask use before flashing
      ARM: am335x: Add a NAND update handler for the regular barebox
      ARM: am335x Phytec phyCORE: register SPI NOR and NAND update handlers
      ARM: am335x: NAND MLO update: always let the user confirm updating
      Documentation: Add some TI AM335x specific documentation

 Documentation/boards/am335x.rst                    | 42 +++++++++++++++++++
 Documentation/boards/omap.rst                      |  4 +-
 Documentation/user/barebox.rst                     |  2 +
 arch/arm/boards/phytec-phycore-am335x/board.c      |  2 +
 arch/arm/configs/am335x_defconfig                  |  2 +-
 arch/arm/mach-omap/Kconfig                         | 11 ++---
 arch/arm/mach-omap/Makefile                        |  2 +-
 ...3xx_bbu_nand_xloadslots.c => am33xx_bbu_nand.c} | 47 ++++++++++++++++++++--
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c            | 17 ++++++++
 arch/arm/mach-omap/include/mach/bbu.h              |  8 +++-
 10 files changed, 123 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/boards/am335x.rst
 rename arch/arm/mach-omap/{am33xx_bbu_nand_xloadslots.c => am33xx_bbu_nand.c} (74%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
