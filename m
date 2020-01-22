Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIG8-0007LJ-FN
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:49:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7BBDC27E1233
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:49:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:01 +0100
Message-Id: <20200122154908.22635-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 0/7] usb: dwc2 host driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Hi,

This patchset add USB host support for the DWC2 controller
As I said before, this driver comes from U-Boot and is modified
with some part taken from Linux.

I've only tested this driver on our custom SoC (k1c MPPA Coolidge)
using an external ULPI phy.  More tests are welcome.

changes since rfc:
 - error message for timeout in wait bit set/clear
 - in the commit 'Fix toggle reset': pipe is used instead of
   wIndex field from setup packet to get epnum and in.

---

Jules Maselbas (7):
  usb: dwc2: Add host controller driver
  usb: dwc2: host: Read dr_mode from device tree
  usb: dwc2: host: Rework roothub interface
  usb: dwc2: host: Handle dma mapping errors
  usb: dwc2: host: Dynamic fifo size support from Linux
  usb: dwc2: host: Fix toggle reset
  usb: dwc2: host: Rewrite dwc2_hc_init

 drivers/usb/Kconfig       |   2 +
 drivers/usb/Makefile      |   1 +
 drivers/usb/dwc2/Kconfig  |   4 +
 drivers/usb/dwc2/Makefile |   1 +
 drivers/usb/dwc2/core.c   | 703 ++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/core.h   | 546 +++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.c   | 103 +++++
 drivers/usb/dwc2/dwc2.h   |  42 ++
 drivers/usb/dwc2/host.c   | 747 +++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/regs.h   | 839 ++++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/rhub.c   | 384 +++++++++++++++++
 11 files changed, 3372 insertions(+)
 create mode 100644 drivers/usb/dwc2/Kconfig
 create mode 100644 drivers/usb/dwc2/Makefile
 create mode 100644 drivers/usb/dwc2/core.c
 create mode 100644 drivers/usb/dwc2/core.h
 create mode 100644 drivers/usb/dwc2/dwc2.c
 create mode 100644 drivers/usb/dwc2/dwc2.h
 create mode 100644 drivers/usb/dwc2/host.c
 create mode 100644 drivers/usb/dwc2/regs.h
 create mode 100644 drivers/usb/dwc2/rhub.c

-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
