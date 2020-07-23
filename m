Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyYXc-0000mS-BK
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 10:33:33 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 23 Jul 2020 12:33:15 +0200
Message-Id: <20200723103326.23226-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 00/11] prepare Protonic board code for mainline
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This patch series is a preparation and actual Protonic board code.
Following changes was made in the main code:
- register DT root node as device to make it possible to loade board
  code as usual driver
- provide helpers to read ethernet mac from nvmem cell register in a
  devicetree.
- provide barebox-serial driver which should be a nvmem cell consumer and
  serial-number DT property provider.
- provide gpio helper to read gpio based board revision.

Oleksij Rempel (11):
  ARM: dts: imx6q-prti6q: fix PHY register
  of: base: register DT root as device
  ARM: embest-riotboard: port board file to the driver model
  net: port nvmem_get_mac_address() from linux kernel
  of: of_net: sync of_get_mac_address() with latest kernel version
  net: fec_imx: use of_get_mac_address() to get mac address out of DT
  of: of_device_get_match_compatible() helper
  gpiolib: add gpio_array_to_id helper to get ID out of GPIO array
  ARM: protonic-imx6: port protonic specific board code
  of: add barebox-serial driver
  ARM: dts: imx6q-prti6q: add barebox.serial node

 arch/arm/boards/embest-riotboard/board.c |  18 +-
 arch/arm/boards/protonic-imx6/Makefile   |   1 +
 arch/arm/boards/protonic-imx6/board.c    | 598 +++++++++++++++++++++++
 arch/arm/dts/imx6q-prti6q.dts            |   9 +-
 drivers/gpio/gpiolib.c                   |  28 ++
 drivers/net/fec_imx.c                    |   9 +
 drivers/of/Makefile                      |   2 +-
 drivers/of/barebox_serial.c              | 111 +++++
 drivers/of/base.c                        |   5 +
 drivers/of/device.c                      |  12 +
 drivers/of/of_net.c                      |  63 ++-
 include/gpio.h                           |   5 +
 include/net.h                            |   4 +
 include/of_device.h                      |   6 +
 net/eth.c                                |  38 ++
 15 files changed, 889 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/boards/protonic-imx6/board.c
 create mode 100644 drivers/of/barebox_serial.c

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
