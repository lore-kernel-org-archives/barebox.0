Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YQMba-0000iV-9j
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 21:01:23 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id ADD7818B4233
 for <barebox@lists.infradead.org>; Tue, 24 Feb 2015 22:00:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 24 Feb 2015 22:00:19 +0100
Message-Id: <1424811619-12636-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1424811619-12636-1-git-send-email-dev@lynxeye.de>
References: <1424811619-12636-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 2/2] net: rtl8169: silence compiler warning
To: barebox@lists.infradead.org

Silence warning about cast from volatile to normal pointer,
as this is the intended bhavior here.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/rtl8169.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 19f5763..f8a6500 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -236,8 +236,8 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	dma_clean_range((unsigned long)priv->rx_buf,
 			(unsigned long)priv->rx_buf + NUM_RX_DESC * PKT_BUF_SIZE);
 
-	memset(priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
-	memset(priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
+	memset((void *)priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
+	memset((void *)priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
 
 	for (i = 0; i < NUM_RX_DESC; i++) {
 		if (i == (NUM_RX_DESC - 1))
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
