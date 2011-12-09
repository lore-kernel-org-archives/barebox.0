Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYycW-0000rY-Fi
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:28:05 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycK-00025S-B9
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:27:52 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYycK-0002B3-9s
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:27:52 +0100
Date: Fri, 9 Dec 2011 12:27:52 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111209112752.GA8203@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/7] platformsupport for aizo dSS11
To: barebox@lists.infradead.org

This v2 patchseries adds platform support for the aizo dss11 based on the
AT91SAM9G20 SoC. It handles smaller issues on some Atmel device drivers, to make
all devices work properly. It also updates the mach-types file.

It has nand, ethernet, usb and sd support:

nand     -> atmel_nand
ethernet -> macb
sd       -> atmel_mci
usb      -> ohci-at91

Michael Grzeschik (7):
  storage/usb.c: fix test_unit_ready
  atmel_mci: check for device id we use to address the right slot
  at91sam9260_devices: properly set slot id
  at91sam9260_devices: add flag to change ETX{2,3} pincfg on
    add_device_eth
  arm: update mach-types
  platform: add support for aizo dSS11
  dss11: add defconfig

 arch/arm/Makefile                        |    1 +
 arch/arm/boards/dss11/Makefile           |    1 +
 arch/arm/boards/dss11/config.h           |    6 +
 arch/arm/boards/dss11/env/config         |   42 +++
 arch/arm/boards/dss11/init.c             |  156 ++++++++++
 arch/arm/configs/dss11_defconfig         |   48 +++
 arch/arm/mach-at91/Kconfig               |    8 +
 arch/arm/mach-at91/at91sam9260_devices.c |   41 ++-
 arch/arm/tools/mach-types                |  473 +++++++++++++++++++++++++++++-
 drivers/mci/atmel_mci.c                  |    2 +
 drivers/usb/storage/usb.c                |    4 +-
 11 files changed, 756 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm/boards/dss11/Makefile
 create mode 100644 arch/arm/boards/dss11/config.h
 create mode 100644 arch/arm/boards/dss11/env/config
 create mode 100644 arch/arm/boards/dss11/init.c
 create mode 100644 arch/arm/configs/dss11_defconfig

-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
