Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUY4Z-0001ku-UC
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 07:55:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UUY4X-0006TL-W8
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 09:55:29 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UUY4X-0006Uh-V0
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 09:55:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Apr 2013 09:55:25 +0200
Message-Id: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] pinctrl support
To: barebox@lists.infradead.org

This adds some initial pinctrl support. I don't want to go the
way of adding full fledged pinctrl support, but still we will
need some instance which parses the devicetree for pinctrl
setup. The following does not parse the pinctrl devicetree
setup into internal data structures, but instead only calls
the pinmux driver with the devicetree node containing the
setup for a device. Turning this into register values is
completely up the pinmux driver then. The device core
will automatically call the pinctrl default setup before
probing a device so that we normally do not have to add
pinctrl code to device drivers.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      Add initial pinctrl support
      pinctrl: switch i.MX iomux-v3 support to pinctrl
      pinctrl: move imx-iomux-v2 to drivers/pinctrl/
      pinctrl: move imx-iomux-v1 to drivers/pinctrl/

 arch/arm/mach-imx/Kconfig                          |   9 +
 arch/arm/mach-imx/Makefile                         |  18 +-
 arch/arm/mach-imx/iomux-v3.c                       | 107 -----------
 drivers/Kconfig                                    |   1 +
 drivers/Makefile                                   |   1 +
 drivers/base/driver.c                              |   3 +
 drivers/pinctrl/Kconfig                            |  28 +++
 drivers/pinctrl/Makefile                           |   4 +
 .../iomux-v1.c => drivers/pinctrl/imx-iomux-v1.c   |   0
 .../iomux-v2.c => drivers/pinctrl/imx-iomux-v2.c   |   0
 drivers/pinctrl/imx-iomux-v3.c                     | 212 +++++++++++++++++++++
 drivers/pinctrl/pinctrl.c                          | 149 +++++++++++++++
 include/pinctrl.h                                  |  35 ++++
 13 files changed, 451 insertions(+), 116 deletions(-)
 delete mode 100644 arch/arm/mach-imx/iomux-v3.c
 create mode 100644 drivers/pinctrl/Kconfig
 create mode 100644 drivers/pinctrl/Makefile
 rename arch/arm/mach-imx/iomux-v1.c => drivers/pinctrl/imx-iomux-v1.c (100%)
 rename arch/arm/mach-imx/iomux-v2.c => drivers/pinctrl/imx-iomux-v2.c (100%)
 create mode 100644 drivers/pinctrl/imx-iomux-v3.c
 create mode 100644 drivers/pinctrl/pinctrl.c
 create mode 100644 include/pinctrl.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
