Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ac-00060y-FM
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bK0AG-0001XU-HE
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 11:27:40 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1bK0AG-0001Tv-6l
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 11:27:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:27 +0200
Message-Id: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX53 NAND xload support
To: Barebox List <barebox@lists.infradead.org>

This series adds NAND xload support for i.MX53 and more specifically
to the Garz+Fricke Vincell board. With this images bigger than the
SoC internal SRAM can be supported and the Vincell can now be enabled
in the imx_v7_defconfig. The existing vincell_defconfig unfortunately
is not obsolete though, since we still need a small image for loading
it with imx-usb-loader.
Also included some misc patches I came up with during working with the
Vincell board.

Sascha

----------------------------------------------------------------
Sascha Hauer (12):
      ARM: i.MX53: do not pass base address to imx*_boot_save_loc
      ARM: i.MX: Provide bootsource functions for early boot code
      ARM: i.MX53: Detect booting from USB
      mtd: imx-nand: Move v3 register definitions to include file
      ARM: i.MX53: Implement NAND xload
      ARM: i.MX53: Add uart5 clock support
      ARM: i.MX53 Vincell: Reset phy consistently from device tree
      ARM: i.MX53 Vincell: Adjust bbu handler partition size to real partition size
      ARM: i.MX53 Vincell: Add PBL console support
      ARM: i.MX53 Vincell: Add NAND xload support
      ARM: imx_v7_defconfig: Enable Vincell support
      ARM: vincell_defconfig: make smaller

 arch/arm/boards/guf-vincell/board.c       |  13 +-
 arch/arm/boards/guf-vincell/lowlevel.c    |  36 +++-
 arch/arm/configs/imx_v7_defconfig         |   4 +-
 arch/arm/configs/vincell_defconfig        |   4 +-
 arch/arm/dts/imx53-guf-vincell-lt.dts     |   1 +
 arch/arm/mach-imx/Kconfig                 |   9 +
 arch/arm/mach-imx/Makefile                |   2 +-
 arch/arm/mach-imx/boot.c                  | 106 +++++++---
 arch/arm/mach-imx/clk-imx5.c              |   1 +
 arch/arm/mach-imx/imx25.c                 |   2 +-
 arch/arm/mach-imx/imx27.c                 |   2 +-
 arch/arm/mach-imx/imx35.c                 |   2 +-
 arch/arm/mach-imx/imx51.c                 |   2 +-
 arch/arm/mach-imx/imx53.c                 |   2 +-
 arch/arm/mach-imx/imx6.c                  |   2 +-
 arch/arm/mach-imx/include/mach/generic.h  |  17 +-
 arch/arm/mach-imx/include/mach/imx-nand.h |  49 +++++
 arch/arm/mach-imx/include/mach/xload.h    |   1 +
 arch/arm/mach-imx/xload-imx-nand.c        | 308 ++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_imx.c               |  49 -----
 images/Makefile.imx                       |  14 +-
 21 files changed, 511 insertions(+), 115 deletions(-)
 create mode 100644 arch/arm/mach-imx/xload-imx-nand.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
