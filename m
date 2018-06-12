Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIV-0001YL-Fu
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:02 +0000
Received: by mail-pf0-x244.google.com with SMTP id a11-v6so151456pff.8
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:53:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:23 -0700
Message-Id: <20180612205310.25745-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 07/54] net: fec_imx: remove unnecessary DMA sync ops
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The fec receive buffers are coherently mapped, no need to dma_sync on
them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index d506fd64f..33599dd82 100644
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
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
