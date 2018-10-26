Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mJ-QP
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:30 +0200
Message-Id: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/8] USB ehci/chipidea fixes
To: Barebox List <barebox@lists.infradead.org>

This series fixes messages seen on i.MX when multiple chipidea
instances are registered:

ERROR: imx-usb 53f80000.usb: gadget not registered.

While I originally thought this is a simple one it turned out there
are several things wrong in the ehci/chipidea (un)registration code.
Most notably the ehci controllers were often not properly quiesced when
leaving barebox.

Sascha

Sascha Hauer (8):
  usb: gadget: fsl_udc: Drop using global variable
  usb: host: ehci: rename ehci_priv to ehci_host
  usb: Add usb_unregister_host()
  usb: host: ehci: add ehci_unregister()
  usb: host: ehci: do not use dev->priv
  usb: host: ehci-atmel: unregister host on device remove
  usb: imx: unregister ehci controller on device removal
  usb: gadget: fsl_udc: pass controller instance to unregister

 drivers/usb/core/usb.c         |  5 +++
 drivers/usb/gadget/fsl_udc.c   | 69 +++++++++++++++++------------
 drivers/usb/host/ehci-atmel.c  | 24 +++++++++-
 drivers/usb/host/ehci-hcd.c    | 80 +++++++++++++++++++++-------------
 drivers/usb/imx/chipidea-imx.c | 39 ++++++++++++++---
 include/usb/ehci.h             | 20 +++++++--
 include/usb/fsl_usb2.h         |  6 ++-
 include/usb/usb.h              |  1 +
 8 files changed, 174 insertions(+), 70 deletions(-)

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
