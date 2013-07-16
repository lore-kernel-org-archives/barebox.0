Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tg-0005gr-VE
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Uz5tH-0002f6-SI
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 16:06:07 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Uz5tH-0004bH-R9
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 16:06:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:05:56 +0200
Message-Id: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] configure environment from devicetree
To: barebox@lists.infradead.org

This adds a driver which allows to configure the place where the
environment is stored from devicetree. The changes to the last
series I posted are:

- drop barebox specific partition driver and instead expect the
  partition nodes directly under the devicenode for the physical
  device.
- use /chosen instead of /chosen/barebox for barebox specific
  configuration drivers

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      of: partition: check for valid node
      of: Add convenience functions to en/disable devicenodes
      mtd: Add devicetree partition parsing
      mci: Add devicetree partition parsing
      Add configurability via devicetree
      ARM: i.MX Datamodul edmqx6: configure environment from devicetree
      ARM: i.MX51 babbage: configure environment from devicetree
      ARM: i.MX53 QSB: configure environment from devicetree
      ARM: i.MX51 efikasb: configure environment from devicetree
      ARM: i.MX6 tqma6x: configure environment from devicetree

 Documentation/devicetree/bindings/barebox.txt      |  10 ++
 .../bindings/barebox/barebox,environment.txt       |  25 ++++
 arch/arm/boards/dmo-mx6-realq7/board.c             |  26 ++--
 arch/arm/boards/efika-mx-smartbook/board.c         |  29 ++--
 arch/arm/boards/freescale-mx51-pdk/board.c         |   5 -
 arch/arm/boards/freescale-mx53-loco/board.c        |   4 -
 arch/arm/boards/tqma6x/board.c                     |   4 -
 arch/arm/configs/dmo-realq7_defconfig              |   1 +
 arch/arm/dts/imx51-babbage.dts                     |  12 ++
 arch/arm/dts/imx51-genesi-efika-sb.dts             |  26 ++++
 arch/arm/dts/imx53-qsb.dts                         |  12 ++
 arch/arm/dts/imx6dl-mba6x.dts                      |   5 +
 arch/arm/dts/imx6q-dmo-realq7.dts                  |  31 +++++
 arch/arm/dts/imx6q-mba6x.dts                       |   5 +
 drivers/mci/mci-core.c                             |   1 +
 drivers/mtd/core.c                                 |   1 +
 drivers/of/Kconfig                                 |   9 ++
 drivers/of/Makefile                                |   1 +
 drivers/of/barebox.c                               |  99 +++++++++++++
 drivers/of/base.c                                  |  65 +++++++++
 drivers/of/of_path.c                               | 155 +++++++++++++++++++++
 drivers/of/partition.c                             |   6 +
 include/of.h                                       |   7 +
 23 files changed, 491 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox.txt
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,environment.txt
 create mode 100644 drivers/of/barebox.c
 create mode 100644 drivers/of/of_path.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
