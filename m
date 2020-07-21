Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxr2S-0007A9-G4
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 12:06:31 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 21 Jul 2020 14:05:46 +0200
Message-Id: <20200721120600.15114-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v3 00/14] usb: dwc2: Add host and gadget driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

This patchset add USB host and gadget support for the DWC2 controller
The host driver is ported from the U-Boot driver, some part are taken
taken from Linux.

The gadget driver is ported from Linux and only support direct dma (not
descriptor based) and does not support direct buffer although this could
be nice to have.

changes since v2:
 - rework timeout handling for networking
 - use usb_register_otg_device
 - rework gadget fifo allocation
 - modified makefile/kconfig for host or gadget only

---

Jules Maselbas (14):
  Revert "usb: Add dwc2 host driver"
  usb: dwc2: Add host controller driver
  usb: dwc2: host: Read dr_mode from device tree
  usb: dwc2: Rework roothub interface
  usb: dwc2: Rework timeout
  usb: dwc2: host: Handle dma mapping errors
  usb: dwc2: host: Dynamic fifo size support from Linux
  usb: dwc2: host: Fix toggle reset
  usb: dwc2: host: Rewrite dwc2_hc_init
  usb: dwc2: Add function to flush tx fifo
  usb: dwc2: Add structure for gadget driver
  usb: dwc2: Add gadget driver
  usb: dwc2: Use register_otg_device
  usb: dwc2: Add ulpi phy function

 drivers/usb/Kconfig       |    2 +
 drivers/usb/Makefile      |    1 +
 drivers/usb/dwc2/Kconfig  |   21 +
 drivers/usb/dwc2/Makefile |    2 +
 drivers/usb/dwc2/core.c   |  839 ++++++++++++
 drivers/usb/dwc2/core.h   |  562 ++++++++
 drivers/usb/dwc2/dwc2.c   |  117 ++
 drivers/usb/dwc2/dwc2.h   |   49 +
 drivers/usb/dwc2/gadget.c | 2736 +++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/host.c   |  781 +++++++++++
 drivers/usb/dwc2/regs.h   |  841 ++++++++++++
 drivers/usb/dwc2/rhub.c   |  384 ++++++
 drivers/usb/host/Kconfig  |    3 -
 drivers/usb/host/Makefile |    1 -
 drivers/usb/host/dwc2.c   | 1132 ---------------
 drivers/usb/host/dwc2.h   |  778 -----------
 16 files changed, 6335 insertions(+), 1914 deletions(-)
 create mode 100644 drivers/usb/dwc2/Kconfig
 create mode 100644 drivers/usb/dwc2/Makefile
 create mode 100644 drivers/usb/dwc2/core.c
 create mode 100644 drivers/usb/dwc2/core.h
 create mode 100644 drivers/usb/dwc2/dwc2.c
 create mode 100644 drivers/usb/dwc2/dwc2.h
 create mode 100644 drivers/usb/dwc2/gadget.c
 create mode 100644 drivers/usb/dwc2/host.c
 create mode 100644 drivers/usb/dwc2/regs.h
 create mode 100644 drivers/usb/dwc2/rhub.c
 delete mode 100644 drivers/usb/host/dwc2.c
 delete mode 100644 drivers/usb/host/dwc2.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
