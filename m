Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X87X4-0006ih-4Z
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 12:45:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X87Wh-0003yQ-Tu
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 14:44:39 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X87Wh-0001ZS-Ss
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 14:44:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Jul 2014 14:44:35 +0200
Message-Id: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: USB Cleanup patches
To: barebox@lists.infradead.org

We have the USB Host stack from U-Boot and the USB Device stack
from the Kernel. Both have some conflicting definitiions of
some structs. This series cleans this up.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      USB: Kconfig: introduce USB_HOST symbol
      USB: introduce usb_interface/usb_configuration structs
      USB: Use descriptors from ch9.h
      USB: Remove conflicting USB_SPEED_* definitions

 arch/arm/configs/am335x_defconfig                  |  2 +-
 arch/arm/configs/animeo_ip_defconfig               |  2 +-
 arch/arm/configs/archosg9_defconfig                |  2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |  2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig          |  2 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |  2 +-
 arch/arm/configs/ccmx51_defconfig                  |  2 +-
 arch/arm/configs/chumbyone_defconfig               |  2 +-
 arch/arm/configs/dss11_defconfig                   |  2 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |  2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |  2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  2 +-
 arch/arm/configs/freescale-mx25-3ds_defconfig      |  2 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |  2 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig    |  2 +-
 arch/arm/configs/imx233-olinuxino_defconfig        |  2 +-
 arch/arm/configs/imx_defconfig                     |  2 +-
 arch/arm/configs/imx_v7_defconfig                  |  2 +-
 arch/arm/configs/module-mb7707_defconfig           |  2 +-
 arch/arm/configs/neso_defconfig                    |  2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |  2 +-
 arch/arm/configs/panda_defconfig                   |  2 +-
 arch/arm/configs/phytec-phycore-imx31_defconfig    |  2 +-
 arch/arm/configs/phytec-phycore-omap4460_defconfig |  2 +-
 arch/arm/configs/pm9g45_defconfig                  |  2 +-
 arch/arm/configs/solidrun_cubox_defconfig          |  2 +-
 commands/Kconfig                                   |  2 +-
 drivers/net/usb/Kconfig                            |  2 +-
 drivers/net/usb/usbnet.c                           | 17 ++--
 drivers/usb/Kconfig                                | 10 ++-
 drivers/usb/core/Makefile                          |  2 +-
 drivers/usb/core/usb.c                             | 52 ++++++------
 drivers/usb/gadget/Kconfig                         |  1 +
 drivers/usb/host/ehci-hcd.c                        | 17 +++-
 drivers/usb/host/ohci-hcd.c                        |  2 +-
 drivers/usb/storage/usb.c                          | 24 +++---
 include/usb/usb.h                                  | 92 ++++------------------
 include/usb/usb_defs.h                             |  6 --
 38 files changed, 112 insertions(+), 167 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
