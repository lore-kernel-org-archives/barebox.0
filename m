Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKA-0002jG-L6
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id y1so11414015pgk.11
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:05 -0800
Message-Id: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/25] i.MX8MQ USB support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series contains changes I made while working on adding USB
support for ZII i.MX8MQ boards. There are several distinct parts in
this series:

 1. xHCI fixes, features and improvements
 2. PHY driver deferral support
 3. i.MX8MQ USB PHY driver
 4. DWC3 USB support and related patches
 5. USB251x USB hub and related patches

First four are neccessary for i.MX8MQ in general and last part is ZII
specific only. Hopefully all patches are self explanatory.

Tested on ZII i.MX8MQ boards.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (25):
  usb: xhci-hcd: Tabify the file
  usb: xhci-hcd: Do not zero out DMA coherent memory
  usb: xhci-hcd: Cast ~XHCI_IRQS to u32
  usb: xhci-hcd: Make sure to initialize xhci->rings_list
  usb: xhci-hcd: Drop pointless bitwise or
  usb: xhci-hcd: Add support for 64-byte context size
  usb: xhci-hcd: Don't try to DMA sync if buffer is NULL
  usb: xhci-hcd: Always wait for "Response Data" completion
  usb: xhci-hcd: Convert xhci_submit_normal() to use dma_map_single()
  usb: xhci-hcd: Convert xhci_submit_control() to use dma_map_single()
  usb: xhci-hcd: Simplify TRB initialization code
  usb: xhci-hcd: Drop 'dma' field from struct xhci_hcd
  usb: xhci-hcd: Check usb_pipein(pipe) only once in
    xhci_submit_normal()
  usb: xhci-hcd: Initialize TRT flag for xHCI >= 1.0
  usb: xhci-hcd: Simplify route string building loop
  usb: xhci-hcd: Make use of lo_hi_readq/writeq()
  phy: core: Assume EPROBE_DEFER in of_phy_provider_lookup()
  phy: Port i.MX8MQ USB PHY driver from Linux
  clk: Drop separate definitions of clk_put()
  include/usb: Import USB_SPEED_SUPER_PLUS from Linux
  clk: Import a subset of clk_bulk API from Linux
  usb: Import DWC3 USB controller driver from Linux
  lib: Port basic Linux kernel NLS functions
  usb: Port Microchip USB251x USB hub driver from Linux
  usb: usb251xb: add usb data lane port swap feature

 drivers/clk/Makefile                       |    3 +-
 drivers/clk/clk-bulk.c                     |  102 ++
 drivers/clk/clkdev.c                       |    5 -
 drivers/phy/Kconfig                        |    2 +
 drivers/phy/Makefile                       |    1 +
 drivers/phy/freescale/Kconfig              |    4 +
 drivers/phy/freescale/Makefile             |    1 +
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c |  130 ++
 drivers/phy/phy-core.c                     |    4 +-
 drivers/usb/Kconfig                        |    4 +
 drivers/usb/Makefile                       |    2 +
 drivers/usb/dwc3/Kconfig                   |   22 +
 drivers/usb/dwc3/Makefile                  |   10 +
 drivers/usb/dwc3/core.c                    |  740 ++++++++++++
 drivers/usb/dwc3/core.h                    | 1267 ++++++++++++++++++++
 drivers/usb/dwc3/debug.h                   |  664 ++++++++++
 drivers/usb/dwc3/host.c                    |   36 +
 drivers/usb/dwc3/io.h                      |   41 +
 drivers/usb/host/xhci-hcd.c                |  549 +++++----
 drivers/usb/host/xhci.h                    |   51 +-
 drivers/usb/misc/Kconfig                   |   14 +
 drivers/usb/misc/Makefile                  |    6 +
 drivers/usb/misc/usb251xb.c                |  683 +++++++++++
 include/linux/clk.h                        |  107 +-
 include/linux/nls.h                        |   40 +
 include/usb/ch9.h                          |    1 +
 lib/Kconfig                                |    3 +
 lib/Makefile                               |    1 +
 lib/nls_base.c                             |  131 ++
 29 files changed, 4377 insertions(+), 247 deletions(-)
 create mode 100644 drivers/clk/clk-bulk.c
 create mode 100644 drivers/phy/freescale/Kconfig
 create mode 100644 drivers/phy/freescale/Makefile
 create mode 100644 drivers/phy/freescale/phy-fsl-imx8mq-usb.c
 create mode 100644 drivers/usb/dwc3/Kconfig
 create mode 100644 drivers/usb/dwc3/Makefile
 create mode 100644 drivers/usb/dwc3/core.c
 create mode 100644 drivers/usb/dwc3/core.h
 create mode 100644 drivers/usb/dwc3/debug.h
 create mode 100644 drivers/usb/dwc3/host.c
 create mode 100644 drivers/usb/dwc3/io.h
 create mode 100644 drivers/usb/misc/Kconfig
 create mode 100644 drivers/usb/misc/Makefile
 create mode 100644 drivers/usb/misc/usb251xb.c
 create mode 100644 include/linux/nls.h
 create mode 100644 lib/nls_base.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
