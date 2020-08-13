Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6ClN-00071y-BG
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 12:55:45 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 13 Aug 2020 14:55:08 +0200
Message-Id: <20200813125514.13574-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 0/6] prepare Protonic board code for mainline 
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v3:
- remove barebox-serial driver and use read the rfid directy from board
  code (as was done in initial implementation)
- use initcall instead of registering driver in the board code
- add delayed USB scan
- add rampoops node
- add partition tables 

changes v2:
- add power init support for KvG boards
- spell fixes
- do not print error on probe exit
- add of_console_get_by_alias() helper
- free requested gpio array
- exit fec init only in case of PROBE_DEFERED

This patch series is a preparation and actual Protonic board code.
Following changes was made in the main code:
- register DT root node as device to make it possible to loade board
  code as usual driver
- provide helpers to read ethernet mac from nvmem cell register in a
  devicetree.
- provide barebox-serial driver which should be a nvmem cell consumer
  and
  serial-number DT property provider.
- provide gpio helper to read gpio based board revision.

Oleksij Rempel (6):
  gpiolib: add gpio_array_to_id helper to get ID out of GPIO array
  common: console_common: add of_console_get_by_alias() helper
  of: of_device_get_match_compatible() helper
  ARM: protonic-imx6: port Protonic specific board code
  ARM: dts: unify barebox and barebox,env partitions for all Protonic
    boards
  ARM: dts: imx6q-prti6q: add pstore/ramoops node

 arch/arm/boards/protonic-imx6/Makefile |    1 +
 arch/arm/boards/protonic-imx6/board.c  | 1002 ++++++++++++++++++++++++
 arch/arm/dts/imx6dl-plym2m.dts         |   25 +
 arch/arm/dts/imx6dl-prtrvt.dts         |    1 +
 arch/arm/dts/imx6q-prti6q.dts          |   24 +-
 arch/arm/dts/imx6qdl-prti6q-nor.dtsi   |   10 +
 arch/arm/dts/imx6qdl-prti6q.dtsi       |   31 +
 arch/arm/dts/imx6qdl-vicut1.dtsi       |   26 +
 common/console_common.c                |   18 +
 drivers/gpio/gpiolib.c                 |   31 +
 drivers/of/device.c                    |   12 +
 include/console.h                      |    1 +
 include/gpio.h                         |    5 +
 include/of_device.h                    |    6 +
 14 files changed, 1170 insertions(+), 23 deletions(-)
 create mode 100644 arch/arm/boards/protonic-imx6/board.c
 create mode 100644 arch/arm/dts/imx6qdl-prti6q-nor.dtsi

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
