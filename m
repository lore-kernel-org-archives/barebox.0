Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpx-0000kG-70
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:40 +0100
Message-Id: <20180319091146.4112-9-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] net: fec_imx: remove unnecessary DMA sync ops
To: Barebox List <barebox@lists.infradead.org>

The fec receive buffers are coherently mapped, no need to dma_sync on
them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index d506fd64f1..33599dd826 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -580,11 +580,7 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			frame = phys_to_virt(readl(&rbd->data_pointer));
 			frame_length = readw(&rbd->data_length) - 4;
-			dma_sync_single_for_cpu((unsigned long)frame->data,
-						frame_length, DMA_FROM_DEVICE);
 			net_receive(dev, frame->data, frame_length);
-			dma_sync_single_for_device((unsigned long)frame->data,
-						   frame_length, DMA_FROM_DEVICE);
 			len = frame_length;
 		} else {
 			if (bd_status & FEC_RBD_ERR) {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
