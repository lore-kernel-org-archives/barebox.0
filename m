Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAJ4x-0004eP-6u
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 13:29:03 +0000
Received: by mail-wi0-f172.google.com with SMTP id n3so9624112wiv.5
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 06:28:40 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 24 Jul 2014 15:28:40 +0200
Message-Id: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/6] Minor USB fixes and xHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch set adds initial support for xHCI host controllers either
as platform_device or PCI attached device. Compared to EHCI, the
xHCI added even more SW stuff around the host controller interface
we have to deal with. From a topology point-of-view each xHCI HC
represents two virtual Root Hubs, one for USB 3.0 and one for USB
2.0 with TT.

The xHCI driver currently only supports virtual USB 2.0 ports of the
xHCI controller. If a USB 3.0 device is used, it has to be connected
with a USB 2.0 cable, i.e. no SuperSpeed cable. Also, I haven't been
able to test any USB 1.1 devices, yet. Anyway, I plan to have a look
at both USB 1.1 and USB 3.0 but still I consider the driver in a
quite good shape to be released.

I successfully tested the driver on Marvell Armada 370 Mirabox
(PCI xHCI) with USB 2.0 thumbdrives and a USB 3.0 docking station
using above cable workaround.

The first three patches of this series are fixes not directly
related with xHCI driver itself and can be picked independent of
the last two patches.

Patch 1 fixes a missing list_del for removed usb devices, Patch 2
introduces dev_count to separate usb device indexing from detected
number of devices. Patch 3 imports min3() from Linux and makes
EHCI HCD use it.

Patch 4 introduces mentioned xHCI HCD and Root Hub driver, also
it provides platform_device registration for xHCI IP. Patch 5
adds a PCI device driver for xHCI controllers.

Sebastian

Sebastian Hesselbarth (6):
  USB: Fix stale usb devices in usb_device_list
  USB: Count detected USB devices independent of dev_index
  USB: EHCI: use min3 from Linux
  include: import {lower,upper}_32_bits helpers
  USB: host: add xHCI HCD, Hub, and platform driver
  USB: host: add xHCI PCI driver

 drivers/usb/core/usb.c      |    6 +-
 drivers/usb/host/Kconfig    |   18 +
 drivers/usb/host/Makefile   |    2 +
 drivers/usb/host/ehci-hcd.c |   12 +-
 drivers/usb/host/xhci-hcd.c | 1251 +++++++++++++++++++++++++++++++++++++++++
 drivers/usb/host/xhci-hub.c |  699 +++++++++++++++++++++++
 drivers/usb/host/xhci-pci.c |   45 ++
 drivers/usb/host/xhci.h     | 1284 +++++++++++++++++++++++++++++++++++++++++++
 include/common.h            |   16 +
 include/linux/kernel.h      |   18 +
 include/usb/xhci.h          |   33 ++
 11 files changed, 3372 insertions(+), 12 deletions(-)
 create mode 100644 drivers/usb/host/xhci-hcd.c
 create mode 100644 drivers/usb/host/xhci-hub.c
 create mode 100644 drivers/usb/host/xhci-pci.c
 create mode 100644 drivers/usb/host/xhci.h
 create mode 100644 include/usb/xhci.h

---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
