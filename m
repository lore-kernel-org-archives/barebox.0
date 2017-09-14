Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsPSv-0005Tl-O3
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 08:25:44 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Thu, 14 Sep 2017 10:24:59 +0200
Message-Id: <20170914082509.23583-1-linux@rempel-privat.de>
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
Subject: [PATCH v3 00/10] provide ethernet support for ar9344 and ar9331
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

changes v3:
 - ag71xx_ether_halt had wrong timeout test.
 - ag71xx_ether_init should return 0

changes v2:
 - merge all ag71xx in to one patch
 - make sere all new driver use dev_* instead of printk
 - rework miibus functions.
 - use it_timedout instead of own implementation
 - add comments to the patches.

Oleksij Rempel (9):
  add ar9331.dtsi and enable mac0
  MIPS: dts: ar9344: add mac0 node
  MIPS: dts: tl_wdr4300: enable mac0
  MIPS: dts: tl_wdr4300: add alias for spiflash
  MIPS: dts: tl_wdr4300: remove RO flag from barebox partition
  add phy: ar8327 driver
  MIPS: dts: tl_wdr4300: rename it to tl_wdr4300 v1.7
  MIPS: tplink-wdr4300_defconfig: add network support
  MIPS: dts: ar9344: add APB bus

Yegor Yefremov (1):
  net: ath79: add ag71xx Ethernet driver

 arch/mips/configs/tplink-wdr4300_defconfig         |  12 +-
 arch/mips/dts/ar9331.dtsi                          |  12 +
 ...4_tl_wdr4300.dts => ar9344-tl-wdr4300-v1.7.dts} |  10 +-
 arch/mips/dts/ar9344.dtsi                          |  44 +-
 arch/mips/dts/tplink-mr3020.dts                    |   5 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  12 +
 drivers/net/Kconfig                                |   7 +
 drivers/net/Makefile                               |   1 +
 drivers/net/ag71xx.c                               | 673 +++++++++++++++++++++
 drivers/net/phy/Kconfig                            |   5 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/ar8327.c                           | 280 +++++++++
 12 files changed, 1042 insertions(+), 20 deletions(-)
 create mode 100644 arch/mips/dts/ar9331.dtsi
 rename arch/mips/dts/{ar9344_tl_wdr4300.dts => ar9344-tl-wdr4300-v1.7.dts} (85%)
 create mode 100644 drivers/net/ag71xx.c
 create mode 100644 drivers/net/phy/ar8327.c

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
