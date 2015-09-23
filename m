Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zel8h-0008El-Dq
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 14:35:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 16:34:54 +0200
Message-Id: <1443018895-20796-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 1/2] fixup! usb: ehci-hcd: port periodic transactions
 implementation from the u-boot
To: Barebox List <barebox@lists.infradead.org>

Flush/invalidate caches for interrupt transfers.
---
 drivers/usb/host/ehci-hcd.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 394f2d1..4946bfa 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1266,6 +1266,9 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	dev_dbg(ehci->dev, "dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
 	      dev, pipe, buffer, length, interval);
 
+	dma_sync_single_for_device((unsigned long)buffer, length,
+				   DMA_BIDIRECTIONAL);
+
 	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, interval);
 	if (!queue) {
 		ehci->sem--;
@@ -1290,6 +1293,9 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 			result = -EINVAL;
 	}
 
+	dma_sync_single_for_cpu((unsigned long)buffer, length,
+				DMA_BIDIRECTIONAL);
+
 	ret = ehci_destroy_int_queue(dev, queue);
 	if (!result)
 		result = ret;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
