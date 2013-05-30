Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui1Me-0005Zv-Sj
 for barebox@lists.infradead.org; Thu, 30 May 2013 11:49:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Ui1MH-0001e7-O8
 for barebox@lists.infradead.org; Thu, 30 May 2013 13:49:29 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Ui1MH-0002v7-Mw
 for barebox@lists.infradead.org; Thu, 30 May 2013 13:49:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 13:49:19 +0200
Message-Id: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX6: Add devicetree support
To: barebox@lists.infradead.org

This adds devicetree support for i.MX6 and switches the sabresd
and sabrelite board over to devicetree probing.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      mtd: m25p80: add devicetree support
      ARM: i.MX6: Fix CCM compatible node
      ARM: i.MX6: skip devices register when devicetree is present
      ARM: i.MX6: Add devicetree files
      ARM: i.MX6: add imx31 compatible entry for GPT
      ARM: i.MX6: Add usdhc aliases
      ARM: i.MX6 sabrelite: switch to devicetree probing
      ARM: i.MX6 sabresd: Switch to devicetree probing

 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  156 +--
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  143 +--
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |   28 +-
 arch/arm/dts/Makefile                              |    2 +
 arch/arm/dts/imx6q-pinfunc.h                       | 1041 ++++++++++++++++++++
 arch/arm/dts/imx6q-sabrelite.dts                   |  174 ++++
 arch/arm/dts/imx6q-sabresd.dts                     |   43 +
 arch/arm/dts/imx6q.dtsi                            |  358 +++++++
 arch/arm/dts/imx6qdl-sabresd.dtsi                  |   87 ++
 arch/arm/dts/imx6qdl.dtsi                          |  840 ++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |    1 +
 arch/arm/mach-imx/clk-imx6.c                       |    2 +-
 arch/arm/mach-imx/imx6.c                           |    3 +
 drivers/mtd/devices/m25p80.c                       |    9 +
 14 files changed, 2621 insertions(+), 266 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-pinfunc.h
 create mode 100644 arch/arm/dts/imx6q-sabrelite.dts
 create mode 100644 arch/arm/dts/imx6q-sabresd.dts
 create mode 100644 arch/arm/dts/imx6q.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-sabresd.dtsi
 create mode 100644 arch/arm/dts/imx6qdl.dtsi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
