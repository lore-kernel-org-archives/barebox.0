Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjh-0006oY-0f
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:18 +0100
Message-Id: <20191114130021.1029-4-s.hauer@pengutronix.de>
In-Reply-To: <20191114130021.1029-1-s.hauer@pengutronix.de>
References: <20191114130021.1029-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] net: fsl-fman: move status read into loop
To: Barebox List <barebox@lists.infradead.org>

Instead of reading the status once before the loop and then again right
before the next iteration, just read the status in the loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index b5d617212e..5dc7ed5090 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -900,9 +900,12 @@ static int fm_eth_recv(struct eth_device *edev)
 
 	pram = fm_eth->rx_pram;
 	rxbd = fm_eth->cur_rxbd;
-	status = muram_readw(&rxbd->status);
 
-	while (!(status & RxBD_EMPTY)) {
+	while (1) {
+		status = muram_readw(&rxbd->status);
+		if (status & RxBD_EMPTY)
+			break;
+
 		if (!(status & RxBD_ERROR)) {
 			buf_hi = muram_readw(&rxbd->buf_ptr_hi);
 			buf_lo = in_be32(&rxbd->buf_ptr_lo);
@@ -932,8 +935,6 @@ static int fm_eth_recv(struct eth_device *edev)
 		rxbd_base = fm_eth->rx_bd_ring;
 		if (rxbd >= (rxbd_base + RX_BD_RING_SIZE))
 			rxbd = rxbd_base;
-		/* read next status */
-		status = muram_readw(&rxbd->status);
 
 		/* update RxQD */
 		offset_out = muram_readw(&pram->rxqd.offset_out);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
