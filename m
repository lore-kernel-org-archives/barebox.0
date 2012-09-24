Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGEzq-0003BL-2Y
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 20:11:15 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D11ECFFA84E
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 22:17:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 22:08:41 +0200
Message-Id: <1348517321-28652-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [for next PATCH 1/1] macb: fix typos in the phy_interface
To: barebox@lists.infradead.org

the RMII is set a RGMII and the flags are only check if MII

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 15548cf..64970ba 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -439,13 +439,13 @@ static int macb_probe(struct device_d *dev)
 	macb->miibus.priv = macb;
 	macb->miibus.parent = dev;
 
-	if (pdata->flags & AT91SAM_ETHER_RMII) {
-		macb->interface = PHY_INTERFACE_MODE_RGMII;
-	} else {
+	if (pdata->flags & AT91SAM_ETHER_RMII)
+		macb->interface = PHY_INTERFACE_MODE_RMII;
+	else
 		macb->interface = PHY_INTERFACE_MODE_MII;
-		macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
+
+	macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
 					PHYLIB_FORCE_LINK : 0;
-	}
 
 	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
 	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
