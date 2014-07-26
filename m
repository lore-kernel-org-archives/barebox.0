Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB3qU-0000bM-9M
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 15:25:15 +0000
Received: by mail-wg0-f49.google.com with SMTP id k14so5467195wgh.20
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 08:24:52 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat, 26 Jul 2014 17:24:38 +0200
Message-Id: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 0/7] Minor USB fixes and xHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This is v2 of the xHCI platform and PCI driver patch set. Compared
to last version, this one successfully works with all kinds of USB
devices (LS,FS,HS,SS) attached to USB host controller. There still
is no SuperSpeed support and likely never will be, as devices work
well without it and speed isn't really important here. The HCD now
also correctly tracks device attach/removal of non-RH devices and
tears down the corresponding virtual devices, too.

The xHCI driver still has some FIXME statements inside, which are
mostly related with SS support. It also lacks some error warnings
when Slots or Endpoints moved to non-usable states. Also, don't
expect attach/detach to work smoothly like in your OS, give them
some time to settle before rescan the bus.

Anyway, I have again successfully tested attach/detach of LS,FS,HS,
SS devices on RH ports, Single-TT HS hub, and Multi-TT HS hub.
Compared to v1, this patch set now includes Patch 3/7 that improves
USB core error handling and device tear-down. The current error
handling caused hangs when something goes wrong, e.g. by unregistering
devices that have never been registered before.

There has been no changes to the patches besides Patch 3/7 which is
new and xHCI HCD and hub (now Patch 6/7) with the following changelog:

v1->v2:
- complete Endpoint Config
- update Endpoint Context for external hubs
- track non-RootHub device removal
- correct FS MaxPacketSize assumption
- drop fake USB 2.0/3.0 Root Hub separation
- cleanup housekeeping structs

Below is a sample output of 'usb -t' after retesting the driver. This
is without the SS device but also with Hub-Hub connections. From top
to bottom, the tree shows (1) Root Hub, (10) 7-port Multi-TT HS hub
with (14) LS USB Keyboard, (15) Single-TT HS Hub with (16) integrated
USB card reader (no card inserted), (17) FS 128M USB 1.1 thumb drive,
and (18) HS 2G USB 2.0 thumb drive.

barebox:/ usb -t
USB: scanning bus for devices...
Bus 001 Device 014: ID 0dc6:3401 SCISSORS Keyboard
Bus 001 Device 015: ID 058f:6254 USB2.0Hub
Bus 001 Device 016: ID 058f:6366 Mass Storage Device
Bus 001 Device 017: ID 05dc:0080 LEXR PLUG DRIVE
Using index 0 for the new disk
Bus 001 Device 018: ID 0951:1643 DataTraveler G3
Using index 1 for the new disk
7 USB Device(s) found
  1 ID 0000:0000
  |  barebox USB 3.0 Root Hub 
  |
  +-10 ID 1a40:0201
    |   USB 2.0 Hub [MTT] 
    |
    +-14 ID 0dc6:3401
    |      SCISSORS Keyboard 
    |  
    +-15 ID 058f:6254
    | |   USB2.0Hub 
    | |
    | +-16 ID 058f:6366
    |      Generic Mass Storage Device 058F0O1111B1
    |    
    +-17 ID 05dc:0080
    |    LEXR PLUG DRIVE LEXR PLUG DRIVE 0000001050509582980900000000000
    |  
    +-18 ID 0951:1643
         Kingston DataTraveler G3 001CC0EC348AFC6135AA2418

Sebastian Hesselbarth (7):
  USB: Fix stale usb devices in usb_device_list
  USB: Count detected USB devices independent of dev_index
  USB: improve error paths and tear-down
  USB: EHCI: use min3 from Linux
  include: import {lower,upper}_32_bits helpers
  USB: host: add xHCI HCD, Hub, and platform driver
  USB: host: add xHCI PCI driver

 drivers/usb/core/hub.c      |   19 +-
 drivers/usb/core/usb.c      |   50 +-
 drivers/usb/core/usb.h      |    1 +
 drivers/usb/host/Kconfig    |   18 +
 drivers/usb/host/Makefile   |    2 +
 drivers/usb/host/ehci-hcd.c |   12 +-
 drivers/usb/host/xhci-hcd.c | 1509 +++++++++++++++++++++++++++++++++++++++++++
 drivers/usb/host/xhci-hub.c |  647 +++++++++++++++++++
 drivers/usb/host/xhci-pci.c |   45 ++
 drivers/usb/host/xhci.h     | 1279 ++++++++++++++++++++++++++++++++++++
 include/common.h            |   16 +
 include/linux/kernel.h      |   18 +
 include/usb/xhci.h          |   33 +
 13 files changed, 3612 insertions(+), 37 deletions(-)
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
