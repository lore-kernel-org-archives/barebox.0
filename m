Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfB6-0003Eo-28
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:42 +0100
Message-Id: <20181119084454.17599-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/12] More -Wmissing-prototypes fixes
To: Barebox List <barebox@lists.infradead.org>

It's a long way to go still...

Sascha Hauer (12):
  ARM: start: Add missing prototype
  ARM: samsung: remove unused function
  ARM: samsung: make locally used function static
  ARM: samsung: provide prototype for nand_boot()
  ARM: samsung: Add missing include
  state: remove unused function
  mtd: nand: omap: Add header file for bch decoder
  net: cpsw: Make locally used function static
  usb: musb: Add missing includes
  spi: omap: make locally used functions static
  bus: omap-gpmc: make locally used function static
  ARM: omap: Add missing includes

 arch/arm/boards/a9m2440/a9m2410dev.c              |  2 ++
 arch/arm/cpu/start.c                              |  2 ++
 arch/arm/mach-omap/am33xx_bbu_emmc.c              |  1 +
 arch/arm/mach-omap/am33xx_bbu_nand.c              |  1 +
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c           |  1 +
 arch/arm/mach-omap/am33xx_clock.c                 |  1 +
 arch/arm/mach-samsung/clocks-s3c24xx.c            | 11 +----------
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h |  2 ++
 common/state/state_variables.c                    | 13 -------------
 drivers/bus/omap-gpmc.c                           |  2 +-
 drivers/mtd/nand/nand_omap_bch_decoder.c          |  2 ++
 drivers/mtd/nand/nand_omap_bch_decoder.h          |  6 ++++++
 drivers/mtd/nand/nand_omap_gpmc.c                 |  4 ++--
 drivers/net/cpsw.c                                |  2 +-
 drivers/spi/omap3_spi.c                           |  8 ++++----
 drivers/usb/musb/phy-am335x-control.c             |  5 +----
 drivers/usb/musb/phy-am335x.c                     |  1 +
 17 files changed, 29 insertions(+), 35 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_omap_bch_decoder.h

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
