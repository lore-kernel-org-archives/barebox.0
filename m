Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1WC-0008KF-Vw
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:56 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id F009A26C2009
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:15 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:58 +0100
Message-Id: <1423777200-22965-23-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 22/24] usb: host: ohci: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/host/ohci-hcd.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 0cdcbb5..ed3a00e 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -43,6 +43,7 @@
 #include <common.h>
 #include <dma.h>
 #include <clock.h>
+#include <dma.h>
 #include <malloc.h>
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
@@ -52,7 +53,6 @@
 
 #include <asm/byteorder.h>
 #include <io.h>
-#include <asm/mmu.h>
 
 #include "ohci.h"
 
@@ -857,7 +857,7 @@ static void td_fill(struct ohci *ohci, unsigned int info,
 
 	td->hwNextTD = virt_to_phys((void *)m32_swap((unsigned long)td_pt));
 
-	dma_flush_range((unsigned long)data, (unsigned long)(data + len));
+	dma_sync_single_for_device((unsigned long)data, len, DMA_BIDIRECTIONAL);
 
 	/* append to queue */
 	td->ed->hwTailP = td->hwNextTD;
@@ -1093,7 +1093,8 @@ static int dl_done_list(struct ohci *ohci)
 	unsigned long ptdphys = virt_to_phys(ptd);
 	struct td *td_list;
 
-	dma_clean_range(ptdphys, ptdphys + (sizeof(struct td) * NUM_TD));
+	dma_sync_single_for_device((unsigned long)ptdphys,
+				sizeof(struct td) * NUM_TD, DMA_BIDIRECTIONAL);
 
 	td_list = dl_reverse_done_list(ohci);
 
@@ -1529,7 +1530,8 @@ static int submit_common_msg(struct usb_device *dev, unsigned long pipe, void *b
 	dev->status = stat;
 	dev->act_len = urb->actual_length;
 
-	dma_inv_range((unsigned long)buffer, (unsigned long)(buffer + transfer_len));
+	dma_sync_single_for_cpu((unsigned long)buffer, transfer_len,
+				DMA_BIDIRECTIONAL);
 
 	pkt_print(urb, dev, pipe, buffer, transfer_len,
 		  setup, "RET(ctlr)", usb_pipein(pipe));
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
