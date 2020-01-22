Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGW-0007eP-F4
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 67A1027E0F5A
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:49:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:41 +0100
Message-Id: <20200122154950.22746-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 0/9] usb: Add dwc2 gadget driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

This driver is a slimed down version of Linux's dwc2 gadget driver.
It only support direct dma (not descriptor based dma) and does not
support direct buffer (aka slave mode) although this could be nice
to have.

This patchset also backport two commits from Linux that change the
behavior of usb_endpint_maxp() to only return the packet size, the
other information is now available in usb_endpoint_maxp_mult().
At the time I write this lines, I notice that the mult information
is only needed for isochronous transfers, which are not supported
by this driver...

Once again this driver as only be tested on our custom SoC, this is
still a work in progress.

Any feedback are welcome, cheers.
Jules

---

Jules Maselbas (9):
  BACKPORT: usb: Add helper to extract bits 12:11 of wMaxPacketize
  BACKPORT: usb: ch9: make usb_endpoint_maxp() return only packet size
  usb: Update uses of usb_endpoint_maxp
  usb: dwc2: Add otg state
  usb: dwc2: Add function to flush a tx fifo
  usb: dwc2: Add structure for gadget driver
  usb: dwc2: Add getter for gadget fifo hwparams
  usb: dwc2: gadget: Configure fifo size
  usb: dwc2: Add gadget driver

 drivers/usb/dwc2/Makefile       |    2 +-
 drivers/usb/dwc2/core.c         |  148 ++
 drivers/usb/dwc2/core.h         |   64 +
 drivers/usb/dwc2/dwc2.c         |    2 +
 drivers/usb/dwc2/dwc2.h         |    3 +
 drivers/usb/dwc2/gadget.c       | 2668 +++++++++++++++++++++++++++++++
 drivers/usb/dwc2/regs.h         |    1 +
 drivers/usb/gadget/epautoconf.c |    2 +-
 drivers/usb/musb/musb_gadget.c  |   12 +-
 drivers/usb/musb/musb_host.c    |    3 +-
 include/usb/ch9.h               |   25 +-
 11 files changed, 2916 insertions(+), 14 deletions(-)
 create mode 100644 drivers/usb/dwc2/gadget.c

-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
