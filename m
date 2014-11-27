Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1S5-0004at-2N
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 15:57:53 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xu1Oe-00025Y-Qq
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:54:20 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Nov 2014 16:54:17 +0100
Message-Id: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] usb: musb: only build musb_barebox if host is enabled
To: barebox@lists.infradead.org

musb_barebox.c contains code that is only ever used if CONFIG_MUSB_HOST
is set. Building it uncoditionally breaks the build depending on the link
order.

Fixes:
drivers/usb/musb/musb_barebox.c:64: undefined reference to `musb_urb_enqueue'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/musb/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/musb/Makefile b/drivers/usb/musb/Makefile
index 364a43fecb62..9f9c21030047 100644
--- a/drivers/usb/musb/Makefile
+++ b/drivers/usb/musb/Makefile
@@ -2,9 +2,9 @@
 # for USB OTG silicon based on Mentor Graphics INVENTRA designs
 #
 
-obj-y += musb_core.o musb_barebox.o
+obj-y += musb_core.o
 
-obj-$(CONFIG_USB_MUSB_HOST) += musb_host.o
+obj-$(CONFIG_USB_MUSB_HOST) += musb_host.o musb_barebox.o
 obj-$(CONFIG_USB_MUSB_GADGET) += musb_gadget.o musb_gadget_ep0.o
 
 obj-$(CONFIG_USB_MUSB_DSPS)	+= musb_dsps.o
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
