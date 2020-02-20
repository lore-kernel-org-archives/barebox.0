Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4if9-0004Kn-SP
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 10:02:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2020 11:01:05 +0100
Message-Id: <20200220100109.18147-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/6] phy: usb: add support for STM32 usbphyc
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de, rcz@pengutronix.de

This is only USB PHY support. Changes to the DWC2 (OTG) and/or OHCI
(Host) are still needed to make USB on the MP1 work.

I haven't yet groked the relation between generic phy and usb phy
frameworks, but the code is a straight port from Linux and it seems to
work[1], so let's upstream it now to make collaboration easier.

[1]: clock the EHCI and power on the PHY and 20% of the time, the bus
     can be enumerated completely. Still needs further debugging,
     but it's unlikely that the PHY driver is at fault.

Cheers,
Ahmad Fatoum (6):
  regulator: import Linux regulator_bulk API
  phy: remove unused init_data parameter
  phy: populate existing ->pwr member with phy-supply
  phy: introduce phy_get_by_index
  regulator: port over Linux stm32 PWR regulator driver
  phy: port over Linux stm32 usbphyc driver

 drivers/phy/Kconfig                        |  13 +
 drivers/phy/Makefile                       |   1 +
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c |   2 +-
 drivers/phy/phy-core.c                     |  29 +-
 drivers/phy/phy-stm32-usbphyc.c            | 434 +++++++++++++++++++++
 drivers/phy/usb-nop-xceiv.c                |   2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c       |   4 +-
 drivers/regulator/Kconfig                  |   7 +
 drivers/regulator/Makefile                 |   1 +
 drivers/regulator/core.c                   | 139 +++++++
 drivers/regulator/stm32-pwr.c              | 215 ++++++++++
 drivers/usb/imx/imx-usb-phy.c              |   2 +-
 include/linux/phy/phy.h                    |  14 +-
 include/regulator.h                        |  49 +++
 14 files changed, 897 insertions(+), 15 deletions(-)
 create mode 100644 drivers/phy/phy-stm32-usbphyc.c
 create mode 100644 drivers/regulator/stm32-pwr.c

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
