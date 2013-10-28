Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ValWG-0003ZG-Te
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:02:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2013 13:01:33 +0100
Message-Id: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: spi/mtd/m25p80 patches
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

The following series fixes usage of multiple SPI masters probed from
devicetree. Also it adds support for persistent devicenames from
devicetree for the m25p80 driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      spi: Call spi_of_register_slaves from core
      spi: support dynamic bus ids
      spi: Get bus_num from devicetree
      ARM: i.MX6: Add spi aliases to devicetree
      mtd: raw: rename raw device
      mtd: Pass device_id to add_mtd_device
      mtd: m25p80: Allow to specify devicename via devicetree alias

 arch/arm/boards/mioa701/env/bin/barebox_update |  8 ++++----
 arch/arm/boards/mioa701/env/bin/dps1_update    |  6 +++---
 arch/arm/dts/imx6q.dtsi                        |  4 ++++
 arch/arm/dts/imx6qdl.dtsi                      |  4 ++++
 drivers/mtd/core.c                             | 10 +++++++---
 drivers/mtd/devices/docg3.c                    |  2 +-
 drivers/mtd/devices/m25p80.c                   | 23 ++++++++++++++++-------
 drivers/mtd/devices/mtd_dataflash.c            |  2 +-
 drivers/mtd/mtdraw.c                           |  2 +-
 drivers/mtd/nand/nand_base.c                   |  2 +-
 drivers/mtd/nor/cfi_flash.c                    |  2 +-
 drivers/spi/imx_spi.c                          |  2 --
 drivers/spi/mvebu_spi.c                        |  3 ---
 drivers/spi/spi.c                              | 16 +++++++++++++++-
 include/linux/mtd/mtd.h                        |  2 +-
 include/spi/spi.h                              |  2 --
 16 files changed, 59 insertions(+), 31 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
