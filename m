Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqoW-0008KU-NP
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:39:33 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 14 May 2012 10:39:29 +0200
Message-Id: <1336984769-10728-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ohci-hcd: use dma_flush/inv_range to allow using the driver
 with enabled MMU
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/usb/host/ohci-hcd.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index f103101..05e4094 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -859,6 +859,8 @@ static void td_fill(struct ohci *ohci, unsigned int info,
 
 	td->hwNextTD = virt_to_phys((void *)m32_swap((unsigned long)td_pt));
 
+	dma_flush_range((unsigned long)data, (unsigned long)(data + len));
+
 	/* append to queue */
 	td->ed->hwTailP = td->hwNextTD;
 }
@@ -1555,6 +1557,8 @@ int submit_common_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	dev->status = stat;
 	dev->act_len = urb->actual_length;
 
+	dma_inv_range((unsigned long)buffer, (unsigned long)(buffer + transfer_len));
+
 	pkt_print(urb, dev, pipe, buffer, transfer_len,
 		  setup, "RET(ctlr)", usb_pipein(pipe));
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
