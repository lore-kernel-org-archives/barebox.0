Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tws0f-00075h-OG
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:20:18 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tws0J-0001Zq-Lo
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 11:19:55 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tws0J-00068a-Kp
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 11:19:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 11:19:49 +0100
Message-Id: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX6 USB phy support
To: barebox@lists.infradead.org

This i.MX6 support for the i.MX chipidea driver, or more specifically:

- a USB phy driver
- device registration convenience wrappers
- clock support

With this the imx6_usb_phy* functions should no longer be used. These
can be removed once the sabrelite is converted to the chipidea driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      ARM i.MX6 USB phy: Fix phy function names
      ARM i.MX6: Fix usb phy base addresses
      ARM i.MX6: Add usbphy clocks
      USB: Add usb phy driver for i.MX
      ARM i.MX6: Add Chipidea support

 arch/arm/boards/freescale-mx6-sabrelite/board.c |    4 +-
 arch/arm/mach-imx/clk-imx6.c                    |    5 ++
 arch/arm/mach-imx/imx6.c                        |    1 +
 arch/arm/mach-imx/include/mach/devices-imx6.h   |   26 ++++++
 arch/arm/mach-imx/include/mach/imx6-regs.h      |    3 +-
 arch/arm/mach-imx/include/mach/usb.h            |    4 +-
 arch/arm/mach-imx/usb-imx6.c                    |   14 +--
 drivers/usb/imx/Kconfig                         |    5 ++
 drivers/usb/imx/Makefile                        |    1 +
 drivers/usb/imx/imx-usb-misc.c                  |   12 +++
 drivers/usb/imx/imx-usb-phy.c                   |  105 +++++++++++++++++++++++
 11 files changed, 168 insertions(+), 12 deletions(-)
 create mode 100644 drivers/usb/imx/imx-usb-phy.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
