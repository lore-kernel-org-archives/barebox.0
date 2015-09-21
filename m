Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze1jV-0004tG-NL
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 14:06:20 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 21 Sep 2015 16:04:40 +0200
Message-Id: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 0/4] New denali nand driver (ported from kernel)
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This series adds the denali NAND driver that is used, for example,
on socfpga platforms.

The driver is adapted from the mainline kernel driver with some bugfix patches
from Altera.

Enrico Jorns (4):
  mtd nand: added 'bits_per_cell' property
  mtd nand_denali: Add denali nand driver
  mtd denali: pass col argument to READID operation
  socfpga dts: set have-hw-ecc-fixup for nand

 arch/arm/dts/socfpga.dtsi         |    1 +
 drivers/mtd/nand/Kconfig          |   26 +
 drivers/mtd/nand/Makefile         |    3 +
 drivers/mtd/nand/denali.h         |  499 ++++++++++++
 drivers/mtd/nand/nand_base.c      |    2 +
 drivers/mtd/nand/nand_denali.c    | 1559 +++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_denali_dt.c |  101 +++
 include/linux/mtd/nand.h          |   12 +
 8 files changed, 2203 insertions(+)
 create mode 100644 drivers/mtd/nand/denali.h
 create mode 100644 drivers/mtd/nand/nand_denali.c
 create mode 100644 drivers/mtd/nand/nand_denali_dt.c

-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
