Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS3mt-0008G2-I8
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 13:20:05 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 8E5C626C2010
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 14:17:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 14:17:13 +0100
Message-Id: <1425215842-6982-16-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
References: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 15/24] net: fec: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/fec_imx.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 5761256..484ea0d 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -31,8 +31,6 @@
 #include <of_gpio.h>
 #include <gpio.h>
 
-#include <asm/mmu.h>
-
 #include "fec_imx.h"
 
 struct fec_frame {
@@ -479,8 +477,9 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	writew(data_length, &fec->tbd_base[fec->tbd_index].data_length);
 
 	writel((uint32_t)(eth_data), &fec->tbd_base[fec->tbd_index].data_pointer);
-	dma_flush_range((unsigned long)eth_data,
-			(unsigned long)(eth_data + data_length));
+
+	dma_sync_single_for_device((unsigned long)eth_data, data_length,
+				   DMA_TO_DEVICE);
 	/*
 	 * update BD's status now
 	 * This block:
@@ -503,6 +502,8 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 			break;
 		}
 	}
+	dma_sync_single_for_cpu((unsigned long)eth_data, data_length,
+				DMA_TO_DEVICE);
 
 	/* for next transmission use the other buffer */
 	if (fec->tbd_index)
@@ -576,7 +577,11 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			frame = phys_to_virt(readl(&rbd->data_pointer));
 			frame_length = readw(&rbd->data_length) - 4;
+			dma_sync_single_for_cpu((unsigned long)frame->data,
+						frame_length, DMA_FROM_DEVICE);
 			net_receive(dev, frame->data, frame_length);
+			dma_sync_single_for_device((unsigned long)frame->data,
+						   frame_length, DMA_FROM_DEVICE);
 			len = frame_length;
 		} else {
 			if (bd_status & FEC_RBD_ERR) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
