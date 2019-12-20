Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKY-0003jf-FD
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:22 +0100
Message-Id: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/10] Add Raspberry Pi USB support
To: Barebox List <barebox@lists.infradead.org>

This series adds USB host support for the Raspberry Pi. The dwc2 USB
host driver is ported from U-Boot and tested on a Raspberry Pi 3b with
the USB ethernet adapter found on that board.

Finally we have ethernet support on the Raspberry Pi \o/

Sascha

Sascha Hauer (10):
  usb: Make timeout unit clear
  of: Add of_bus_n_xxx_cells()
  device: Introduce dma_offset
  of: Read dma_offset from device tree
  usb: Add usbroothubdes.h
  regulator: add function to get regulator by its name
  rpi: Enable USB Power domain during startup
  usb: Forward error code from usb_set_configuration
  usb: Add dwc2 host driver
  ARM: rpi_defconfig: Enable networking support

 arch/arm/boards/raspberry-pi/rpi-common.c |   10 +
 arch/arm/configs/rpi_defconfig            |   13 +
 arch/arm/cpu/mmu-common.c                 |   33 +-
 arch/arm/cpu/mmu.c                        |    4 +
 arch/arm/cpu/mmu_64.c                     |    4 +
 drivers/of/address.c                      |  109 ++
 drivers/of/base.c                         |   46 +-
 drivers/of/platform.c                     |   18 +
 drivers/regulator/core.c                  |   30 +-
 drivers/usb/core/usb.c                    |   18 +-
 drivers/usb/host/Kconfig                  |    3 +
 drivers/usb/host/Makefile                 |    1 +
 drivers/usb/host/dwc2.c                   | 1132 +++++++++++++++++++++
 drivers/usb/host/dwc2.h                   |  778 ++++++++++++++
 include/driver.h                          |    2 +
 include/of.h                              |   12 +
 include/of_address.h                      |    9 +
 include/regulator.h                       |    1 +
 include/usb/usb.h                         |    8 +-
 include/usb/usbroothubdes.h               |  128 +++
 20 files changed, 2326 insertions(+), 33 deletions(-)
 create mode 100644 drivers/usb/host/dwc2.c
 create mode 100644 drivers/usb/host/dwc2.h
 create mode 100644 include/usb/usbroothubdes.h

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
