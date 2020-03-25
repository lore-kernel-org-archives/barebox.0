Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00052t-FA
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:47 +0100
Message-Id: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/24] USB3 support
To: Barebox List <barebox@lists.infradead.org>

This series adds support for USB3 devices. The XHCI driver we currently
have in barebox only supports USB2 devices or USB3 devices behind a USB2
cable or hub. We replace the XHCI driver with the one from U-Boot, this
series contains the missing pieces to the USB layer to make that work.

Also contained in this series is a driver for the Asix AX88179 USB
ethernet converter. While this is not directly related to this series
it was the original goal to make this device work.

Sascha

Sascha Hauer (24):
  usb: hub: Make debugging output more consistent
  usb: hub: do not reset devices twice
  usb: hub: let usb_scan_port() return void
  usb: Remove hack from the early days
  usb: Pass portstatus/portchange to usb_hub_port_connect_change()
  usb: hub: Do not power-cycle usb devices on init
  usb: Make driver_info const
  usb: Set new USB device name earlier
  usb: Use dev_*
  usb: hub: Parse and save TT details from device descriptor
  usb: host: make init hook optional
  usb: support set hub depth request for USB 3.0 hubs
  usb: Assign dev_index once
  usb: remove unnecessary variable
  usb: net: Allocate rx buffer dynamically
  usb: net: Allocate tx buffer dynamically
  net: usb: add hook for link changes
  usb: net: Add support for the Asix AX88179
  usb: factor out a usb_setup_descriptor() function
  usb: hub: Translate USB 3.0 hub port status into old version
  usb: Add super speed support
  usb: hub: When no connection came up remove from scanning list
  usb: host: remove xhci driver
  usb: Add U-Boot xhci driver

 drivers/net/usb/Kconfig        |   11 +
 drivers/net/usb/Makefile       |    1 +
 drivers/net/usb/ax88179_178a.c |  753 ++++++++++++++
 drivers/net/usb/usbnet.c       |   46 +-
 drivers/usb/core/hub.c         |  287 ++++--
 drivers/usb/core/hub.h         |    7 -
 drivers/usb/core/usb.c         |  253 +++--
 drivers/usb/host/Kconfig       |    8 -
 drivers/usb/host/Makefile      |    3 +-
 drivers/usb/host/xhci-hcd.c    | 1675 --------------------------------
 drivers/usb/host/xhci-hub.c    |  646 ------------
 drivers/usb/host/xhci-mem.c    |  871 +++++++++++++++++
 drivers/usb/host/xhci-pci.c    |   40 -
 drivers/usb/host/xhci-ring.c   |  977 +++++++++++++++++++
 drivers/usb/host/xhci.c        | 1437 +++++++++++++++++++++++++++
 drivers/usb/host/xhci.h        | 1509 ++++++++++++++--------------
 include/usb/ch9.h              |   20 +
 include/usb/usb.h              |   34 +-
 include/usb/usb_defs.h         |    3 +
 include/usb/usbnet.h           |    2 +
 include/usb/xhci.h             |    6 -
 21 files changed, 5247 insertions(+), 3342 deletions(-)
 create mode 100644 drivers/net/usb/ax88179_178a.c
 delete mode 100644 drivers/usb/core/hub.h
 delete mode 100644 drivers/usb/host/xhci-hcd.c
 delete mode 100644 drivers/usb/host/xhci-hub.c
 create mode 100644 drivers/usb/host/xhci-mem.c
 delete mode 100644 drivers/usb/host/xhci-pci.c
 create mode 100644 drivers/usb/host/xhci-ring.c
 create mode 100644 drivers/usb/host/xhci.c

-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
