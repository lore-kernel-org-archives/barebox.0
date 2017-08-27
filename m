Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dlrb9-0002Z6-8S
 for barebox@lists.infradead.org; Sun, 27 Aug 2017 07:03:14 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 27 Aug 2017 09:02:20 +0200
Message-Id: <20170827070230.13382-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 00/10] provide ethernet support for ar9344 and TP-LINK
 TL-WDR4300
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patches should go on top of my previous set "[PATCH v1 1/3] net: ath79: add ag71xx Ethernet driver"
It is enabling networking support for ar9344 on TP-LINK TL-WDR4300 router.

Oleksij Rempel (10):
  net: ath79: add ar9344 support
  MIPS: dts: ar9331: update compatible for mac0 node
  MIPS: dts: ar9344: add mac0 node
  MIPS: dts: tl_wdr4300: enable mac0
  MIPS: dts: tl_wdr4300: add alias for spiflash
  MIPS: dts: tl_wdr4300: remove RO flag from barebox partition
  add phy: ar8327 driver
  rename tplink devicetree
  MIPS: tplink-wdr4300_defconfig: add network support
  MIPS: dts: ar9344: add APB bus

 arch/mips/configs/tplink-wdr4300_defconfig         |  12 +-
 arch/mips/dts/ar9331.dtsi                          |   2 +-
 ...4_tl_wdr4300.dts => ar9344-tl-wdr4300-v1.7.dts} |  10 +-
 arch/mips/dts/ar9344.dtsi                          |  44 +++-
 drivers/net/ag71xx.c                               | 192 ++++++++++++--
 drivers/net/phy/Kconfig                            |   5 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/ar8327.c                           | 276 +++++++++++++++++++++
 8 files changed, 494 insertions(+), 48 deletions(-)
 rename arch/mips/dts/{ar9344_tl_wdr4300.dts => ar9344-tl-wdr4300-v1.7.dts} (85%)
 create mode 100644 drivers/net/phy/ar8327.c

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
