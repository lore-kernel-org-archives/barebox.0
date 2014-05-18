Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wm2Mj-00079j-Ce
 for barebox@lists.infradead.org; Sun, 18 May 2014 14:47:06 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sun, 18 May 2014 16:46:30 +0200
Message-Id: <1400424390-24736-5-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
References: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 4/4] net: dm9k: only read on packet for each call to
 dm9k_eth_rx()
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Some users such as fs/nfs.c just save the pointer to the packet in the
handler and process it after net_poll() returns. This break when more than
one packet is received using the same buffer.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 drivers/net/dm9k.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index e98b8f4..3a4c6aa 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -541,7 +541,6 @@ static int dm9k_check_for_rx_packet(struct dm9k *priv)
 		return 0;	/* no packet */
 
 	dev_dbg(dev, "Packet present\n");
-	dm9k_iow(priv, DM9K_ISR, ISR_PR); /* clear PR status latched in bit 0 */
 	return 1; /* packet present */
 }
 
@@ -587,8 +586,10 @@ static int dm9k_eth_rx(struct eth_device *edev)
 		return 0;	/* no data present */
 
 	do {
-		if (!dm9k_validate_entry(priv))
+		if (!dm9k_validate_entry(priv)) {
+			dm9k_iow(priv, DM9K_ISR, ISR_PR); /* clear PR status latched in bit 0 */
 			return 0;
+		}
 
 		/* assume this packet is valid */
 		p_valid = true;
@@ -634,6 +635,7 @@ static int dm9k_eth_rx(struct eth_device *edev)
 			dm9k_rd(priv->buswidth, priv->iodata, priv->pckt, rx_len);
 			dev_dbg(dev, "passing %u bytes packet to upper layer\n", rx_len);
 			net_receive(edev, priv->pckt, rx_len);
+			return 0;
 		} else {
 			dev_dbg(dev, "Discarding packet\n");
 			dm9k_dump(priv->buswidth, priv->iodata, rx_len); /* discard packet */
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
