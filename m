Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001nW-0v
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TjC9N-0004wb-OJ
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 18:00:45 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TjC9N-0007Ks-NK
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 18:00:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:35 +0100
Message-Id: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i.MX chipidea support
To: barebox@lists.infradead.org


The following adds support for the chipidea core of the i.MX SoCs.
It is somewhat designed after the kernel chipidea driver. A usb-misc
driver matches to the misc registers and allows a driver which binds
to the usb devices themselves to configure the misc registers. If ULPI
support is selected, the ULPI phy will be configured automatically.
This is done to simplify the board code for USB. Currently no support
for USB device is available, that could be added later. This series
also contains a patch which allows it to register a EHCI HCD without
matching to a device, which is needed for the chipidea support.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      USB ehci: Allow to register independently from device
      USB i.MX: Add chipidea driver support
      ARM i.MX27: Add USB device functions
      ARM i.MX51: Add USB device functions
      ARM i.MX31: Add USB device functions
      ARM i.MX pcm038: switch to chipidea support
      pcm038: Stop ongoing ULPI transfers before registering the transceiver
      fixup! USB i.MX: Add chipidea driver support
      ARM i.MX pcm038: Update defconfig for chipidea driver

 arch/arm/boards/pcm038/pcm970.c                |   42 +--
 arch/arm/configs/pcm038_defconfig              |   10 +-
 arch/arm/mach-imx/devices.c                    |    5 +
 arch/arm/mach-imx/imx27.c                      |    1 +
 arch/arm/mach-imx/imx31.c                      |    1 +
 arch/arm/mach-imx/imx51.c                      |    1 +
 arch/arm/mach-imx/include/mach/devices-imx27.h |   15 +
 arch/arm/mach-imx/include/mach/devices-imx31.h |   15 +
 arch/arm/mach-imx/include/mach/devices-imx51.h |   15 +
 arch/arm/mach-imx/include/mach/devices.h       |    2 +
 drivers/usb/Kconfig                            |    2 +
 drivers/usb/Makefile                           |    1 +
 drivers/usb/host/ehci-hcd.c                    |   46 +--
 drivers/usb/imx/Kconfig                        |   15 +
 drivers/usb/imx/Makefile                       |    1 +
 drivers/usb/imx/chipidea-imx.c                 |   91 ++++++
 drivers/usb/imx/imx-usb-misc.c                 |  410 ++++++++++++++++++++++++
 include/usb/chipidea-imx.h                     |   46 +++
 include/usb/ehci.h                             |   17 +-
 19 files changed, 683 insertions(+), 53 deletions(-)
 create mode 100644 drivers/usb/imx/Kconfig
 create mode 100644 drivers/usb/imx/Makefile
 create mode 100644 drivers/usb/imx/chipidea-imx.c
 create mode 100644 drivers/usb/imx/imx-usb-misc.c
 create mode 100644 include/usb/chipidea-imx.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
