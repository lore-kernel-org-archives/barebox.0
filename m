Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2qb-0008Kp-Rc
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:53:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:53:16 +0200
Message-Id: <1378738401-723-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
References: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] net: designware: Fix broken cache invalidate
To: barebox@lists.infradead.org

Move the cache invalidation of a received packet before we actually
use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index a6b32b9..45de31c 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -337,14 +337,15 @@ static int dwc_ether_rx(struct eth_device *dev)
 	length = (status & DESC_RXSTS_FRMLENMSK) >> \
 		 DESC_RXSTS_FRMLENSHFT;
 
-	net_receive(desc_p->dmamac_addr, length);
-
 	/*
 	 * Make the current descriptor valid again and go to
 	 * the next one
 	 */
 	dma_inv_range((unsigned long)desc_p->dmamac_addr,
 		      (unsigned long)desc_p->dmamac_addr + length);
+
+	net_receive(desc_p->dmamac_addr, length);
+
 	desc_p->txrx_status |= DESC_RXSTS_OWNBYDMA;
 
 	/* Test the wrap-around condition. */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
