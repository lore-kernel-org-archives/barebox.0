Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zXE-0008Vp-Tj
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 11:46:17 +0000
Received: by fxd20 with SMTP id 20so2907220fxd.36
	for <barebox@lists.infradead.org>; Fri, 09 Sep 2011 04:46:12 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri,  9 Sep 2011 13:45:44 +0200
Message-Id: <1315568744-17729-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 1/4] macb: whitespace cleanup
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/net/macb.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 95ad3d7..9e5ce8b 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -392,7 +392,7 @@ static int macb_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
-	struct macb_device *macb = edev->priv; 
+	struct macb_device *macb = edev->priv;
 
 	debug("%s\n", __func__);
 
@@ -442,7 +442,7 @@ static int macb_probe(struct device_d *dev)
 	macb->miidev.edev = edev;
 	macb->flags = pdata->flags;
 
-	macb->rx_buffer = xmalloc(CFG_MACB_RX_BUFFER_SIZE); 
+	macb->rx_buffer = xmalloc(CFG_MACB_RX_BUFFER_SIZE);
 	macb->rx_ring = xmalloc(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
 	macb->tx_ring = xmalloc(sizeof(struct macb_dma_desc));
 
@@ -477,15 +477,15 @@ static int macb_probe(struct device_d *dev)
 }
 
 static struct driver_d macb_driver = {
-        .name  = "macb",
-        .probe = macb_probe,
+	.name  = "macb",
+	.probe = macb_probe,
 };
 
 static int macb_driver_init(void)
 {
 	debug("%s\n", __func__);
-        register_driver(&macb_driver);
-        return 0;
+	register_driver(&macb_driver);
+	return 0;
 }
 
 device_initcall(macb_driver_init);
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
