Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCtw-0007YD-2F
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:41 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XDCtY-0001ny-3b
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 15:29:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.83)
 (envelope-from <sha@pengutronix.de>) id 1XDCtX-0000Hy-TD
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 15:29:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:08 +0200
Message-Id: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Phytec phyCORE AM335x updates
To: barebox@lists.infradead.org

The Phytec phyCORE-AM335x comes in various different RAM settings.
This series adds support for the 128MB and 256MB configurations.
Also the NAND ECC mode setting is fixed, it is now compatible to
the Kernel.

With this the phyBOARD WEGA is working. Some of the devices are
different from the phyCORE on the RDK, so we'll need a different
device tree in the future, but for now it's enough to get something
started.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      ARM: AM33xx: Add SDRAM size detection
      ARM: phyCORE-am335x: read back SDRAM controller settings
      ARM: phyCORE-am335x: Add support for more SDRAM configurations
      mtd: omap gpmc: fix ecc bytes/size
      mtd: omap gpmc: reserve 14 byte/subpage for ECC in BCH8 romcode
      mtd: omap gpmc: fix bch8 nand-ecc-opt property
      ARM: AM3355x: Update defconfig

 arch/arm/boards/phytec-phycore-am335x/lowlevel.c | 113 ++++++++++++++++++-----
 arch/arm/configs/am335x_defconfig                |  83 +++++++++--------
 arch/arm/dts/am335x-phytec-phycore.dts           |   5 -
 arch/arm/mach-omap/Makefile                      |   1 +
 arch/arm/mach-omap/am33xx_generic.c              |  56 +++++++++++
 arch/arm/mach-omap/am33xx_scrm.c                 |  51 ++++++++++
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |   2 +
 drivers/bus/omap-gpmc.c                          |   3 -
 drivers/mtd/nand/nand_omap_gpmc.c                |  20 ++--
 images/Makefile.am33xx                           |  14 ++-
 10 files changed, 261 insertions(+), 87 deletions(-)
 create mode 100644 arch/arm/mach-omap/am33xx_scrm.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
