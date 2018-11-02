Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gITrA-0005AR-TV
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 07:27:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 08:26:30 +0100
Message-Id: <20181102072632.10654-2-s.hauer@pengutronix.de>
In-Reply-To: <20181102072632.10654-1-s.hauer@pengutronix.de>
References: <20181102072632.10654-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] net: macb: remove unused variable
To: Barebox List <barebox@lists.infradead.org>

tx_tail is unused. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 8575c838a8..28065e1e13 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -65,7 +65,6 @@ struct macb_device {
 
 	unsigned int		rx_tail;
 	unsigned int		tx_head;
-	unsigned int		tx_tail;
 
 	void			*rx_buffer;
 	void			*tx_buffer;
@@ -344,7 +343,7 @@ static void macb_init(struct macb_device *macb)
 	}
 	macb->tx_ring[TX_RING_SIZE - 1].addr |= MACB_BIT(TX_WRAP);
 
-	macb->rx_tail = macb->tx_head = macb->tx_tail = 0;
+	macb->rx_tail = macb->tx_head = 0;
 
 	macb_configure_dma(macb);
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
