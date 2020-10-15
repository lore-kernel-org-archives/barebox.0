Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT3Bc-0003Xp-D5
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 13:20:53 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 15 Oct 2020 15:20:48 +0200
Message-Id: <20201015132048.420995-3-m.tretter@pengutronix.de>
In-Reply-To: <20201015132048.420995-1-m.tretter@pengutronix.de>
References: <20201015132048.420995-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 3/3] net: macb: fix compiler warning for 64 bit systems
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

On arm64 the compiler prints the following warning, when the macb driver
is enabled:

	warning: cast from pointer to integer of different size

Add the same explicit cast as implemented for all other dma addresses in
the macb driver.

Fixes: befd110b5922 ("net: macb: init multiple dummy TX queues")
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/macb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index fa530cfe8e4c..188dbf2d8c15 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -365,7 +365,7 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 		MACB_BIT(TX_LAST) | MACB_BIT(TX_USED);
 
 	for (i = 1; i < num_queues; i++)
-		gem_writel_queue_TBQP(macb, &macb->gem_q1_descs[0], i - 1);
+		gem_writel_queue_TBQP(macb, (ulong)macb->gem_q1_descs, i - 1);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
