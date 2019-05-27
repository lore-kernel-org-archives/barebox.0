Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK9Y-0001a6-4Q
 for barebox@lists.infradead.org; Mon, 27 May 2019 18:15:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so9484563pgv.0
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 11:15:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 11:14:54 -0700
Message-Id: <20190527181500.17456-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190527181500.17456-1-andrew.smirnov@gmail.com>
References: <20190527181500.17456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/8] net: rtl8169: Do not zero out DMA coherent memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory returned by dma_alloc_coherent() should already be zeroed
out, so there's no need to do this explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/rtl8169.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 4e9823d42..80997dc89 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -227,9 +227,6 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	dma_sync_single_for_device((unsigned long)priv->rx_buf,
 				   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
 
-	memset((void *)priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
-	memset((void *)priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
-
 	for (i = 0; i < NUM_RX_DESC; i++) {
 		if (i == (NUM_RX_DESC - 1))
 			priv->rx_desc[i].status =
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
