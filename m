Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueh9b-0002QR-Ti
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:38:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Ueh9E-0000ya-AV
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:38:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Ueh9E-0003lO-92
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:38:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 09:38:10 +0200
Message-Id: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] misc oftree patches
To: barebox@lists.infradead.org

Some assorted devicetree related patches. This makes the SPI support
more complete, adds devicetree probing to the dataflash driver and some
more.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      pinctrl: imx-iomux-v3: only register pinctrl when device node is available
      spi: improve devicetree support
      mtd: dataflash: Add devicetree probing support
      net: Add of_register_ethaddr
      net: fec: Add imx25 compatible property

 drivers/mtd/devices/mtd_dataflash.c | 11 ++++++
 drivers/net/fec_imx.c               |  3 ++
 drivers/pinctrl/imx-iomux-v3.c      |  2 +-
 drivers/spi/spi.c                   | 15 ++++++--
 include/net.h                       |  5 +++
 net/eth.c                           | 68 ++++++++++++++++++++++++++++++-------
 6 files changed, 89 insertions(+), 15 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
