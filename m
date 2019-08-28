Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7W-0002jH-Jt
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Aug 2019 12:23:56 +0200
Message-Id: <20190828102402.18332-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] OMAP updates
To: Barebox List <barebox@lists.infradead.org>

This series has a few updates for OMAP. First of all BCH16 support is
added to the GPMC NAND driver which is needed for NAND chips with bigger
OOB sizes. Changes to the CPSW driver allow to specify the phy in th
device tree. Finally a new type of NAND barebox update handler is added
that is easier to use (both for the board code and for the user) than
the existing one.

Sascha Hauer (6):
  ARM: omap: am35xx_emif4: Fix bit polling
  mtd: nand: gpmc: Add support for ELM
  mtd: nand: gpmc: Add BCH16 support
  net: cpsw: Make phy its own driver
  mtd: peb: Add function to write file
  ARM: OMAP: bbu: Add an all-in-one NAND update handler

 arch/arm/mach-omap/am33xx_bbu_nand.c        | 146 +++++++
 arch/arm/mach-omap/am35xx_emif4.c           |   2 +-
 arch/arm/mach-omap/include/mach/bbu.h       |   6 +
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   1 +
 drivers/bus/omap-gpmc.c                     |   3 +
 drivers/mtd/nand/Kconfig                    |  10 +
 drivers/mtd/nand/Makefile                   |   1 +
 drivers/mtd/nand/nand_omap_gpmc.c           | 333 +++++++++++++++-
 drivers/mtd/nand/omap_elm.c                 | 413 ++++++++++++++++++++
 drivers/mtd/peb.c                           |  84 ++++
 drivers/net/cpsw.c                          | 178 +++++----
 include/linux/mtd/mtd-abi.h                 |   2 +-
 include/mtd/mtd-peb.h                       |   2 +
 include/platform_data/elm.h                 |  53 +++
 14 files changed, 1142 insertions(+), 92 deletions(-)
 create mode 100644 drivers/mtd/nand/omap_elm.c
 create mode 100644 include/platform_data/elm.h

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
