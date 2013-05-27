Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001Dv-RA
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:28 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UgtAm-0006nf-1j
 for barebox@lists.infradead.org; Mon, 27 May 2013 10:52:56 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UgtAm-0004rC-0Y
 for barebox@lists.infradead.org; Mon, 27 May 2013 10:52:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:48 +0200
Message-Id: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] MCI patches
To: barebox@lists.infradead.org

Some time ago we introduced the possibility to register the
SD/MMC device files with specific names to get persistent
names for them. The devices needed to probe/info the cards are
still named mcix though and still have dynamic numbers. This
series renames the devices to the same name as the device files.

Also for the i.MX ESDHC controller on i.MX51 we allow to specify
aliases for the controllers. The devices are now registered
using the aliases making it possible to have persistent names for
devicetree based boards.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      driver: Attach info callback to device, not to driver
      mci: make mci device a pure device
      mci: embed mci device into struct mci
      mci: set name of mci device to same name as the filename
      of: Add of_alias_get function
      mci: imx-esdhc: allow to specify devicename via OF alias
      ARM: i.MX51: Add aliases for MMC controllers

 arch/arm/boards/freescale-mx51-pdk/board.c |   6 +-
 arch/arm/dts/imx51.dtsi                    |   4 +
 arch/sandbox/board/hostfile.c              |   5 +-
 drivers/ata/ahci.c                         |   2 +-
 drivers/ata/sata-imx.c                     |   2 +-
 drivers/base/driver.c                      |  18 +--
 drivers/mci/atmel_mci.c                    |   8 +-
 drivers/mci/imx-esdhc.c                    |   7 +-
 drivers/mci/mci-core.c                     | 235 ++++++++++++++---------------
 drivers/mci/mxs.c                          |  14 +-
 drivers/mci/s3c.c                          |   8 +-
 drivers/misc/jtag.c                        |  40 ++---
 drivers/mtd/nor/cfi_flash.c                |   3 +-
 drivers/net/cs8900.c                       |   3 +-
 drivers/of/base.c                          |  13 ++
 drivers/video/fb.c                         |   3 +-
 drivers/video/s3c24xx.c                    |   8 +-
 drivers/video/stm.c                        |   3 +-
 include/driver.h                           |   5 +-
 include/mci.h                              |   2 +-
 include/of.h                               |   6 +
 21 files changed, 196 insertions(+), 199 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
