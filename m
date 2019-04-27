Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKSCA-0003kQ-In
 for barebox@lists.infradead.org; Sat, 27 Apr 2019 18:37:09 +0000
Received: from antimon.fritz.box (a89-183-44-132.net-htp.de [89.183.44.132])
 by lynxeye.de (Postfix) with ESMTPA id B45EEE741C4
 for <barebox@lists.infradead.org>; Sat, 27 Apr 2019 20:36:30 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Sat, 27 Apr 2019 20:36:23 +0200
Message-Id: <20190427183627.22549-1-l.stach@pengutronix.de>
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
Subject: [PATCH 0/4] BCM283x sdhost driver
To: barebox@lists.infradead.org

It's a rainy day and someone asked for it on the mailing list, so here
it is: This series adds the driver for the BCM283x sdhost controller,
ported from U-Boot, and enables it on the Raspberry Pi 3.

Have fun,
Lucas

Lucas Stach (4):
  mci: add driver for BCM283x sdhost core
  ARM: rpi: add clock for sdhost
  ARM: rpi: enable sdhost driver in defconfig
  ARM: rpi3: remove swapped sdhci and sdhost

 arch/arm/boards/raspberry-pi/rpi-common.c |   8 +
 arch/arm/configs/rpi_defconfig            |   2 +-
 arch/arm/dts/bcm2837-rpi-3.dts            |   5 -
 drivers/mci/Kconfig                       |   4 +
 drivers/mci/Makefile                      |   1 +
 drivers/mci/bcm2835-sdhost.c              | 657 ++++++++++++++++++++++
 6 files changed, 671 insertions(+), 6 deletions(-)
 create mode 100644 drivers/mci/bcm2835-sdhost.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
