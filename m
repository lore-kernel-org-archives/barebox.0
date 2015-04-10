Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNKz-0002PM-9K
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:02:27 +0000
Received: by widdi4 with SMTP id di4so111253634wid.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:03 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:01:53 +0200
Message-Id: <1428627714-17077-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/4] net: mvneta: Remove unnecessary DMA ops
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Commit a76c62f80d95860e6c5904ab5cb91667c43f61eb
 ("net: mvneta: convert to streaming DMA ops")
converted explicit ARM cache flushes to streaming DMA calls.

However, in mvneta_send() we are not interested in the sent data buffer
anymore. Also, in mvneta_recv() the device does not care about received
data buffer.

Remove unnecessary dma_sync_single_for_cpu() in mvneta_send() and
dma_sync_single_for_device() in mvneta_recv().

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Lucas Stach <dev@lynxeye.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 drivers/net/mvneta.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 3be2ec531fb1..e1c7f15210e4 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -409,7 +409,6 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	 * the Tx port status register (PTXS).
 	 */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT, !mvneta_pending_tx(priv));
-	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -468,9 +467,6 @@ static int mvneta_recv(struct eth_device *edev)
 			  rxdesc->data_size - MVNETA_MH_SIZE);
 	ret = 0;
 
-	dma_sync_single_for_device((unsigned long)rxdesc->buf_phys_addr,
-				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
-
 recv_err:
 	/* reset this and get next rx descriptor*/
 	rxdesc->data_size = 0;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
