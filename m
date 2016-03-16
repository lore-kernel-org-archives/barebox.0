Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x230.google.com ([2607:f8b0:400e:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EF-0007dt-RY
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:37 +0000
Received: by mail-pf0-x230.google.com with SMTP id n5so56133775pfn.2
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:43 -0700
Message-Id: <1458099232-9050-8-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/16] fec_imx: Deallocate DMA buffers when probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index fc2c8e1..465dcf9 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -621,6 +621,12 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 	return 0;
 }
 
+static void fec_free_receive_packets(struct fec_priv *fec, int count, int size)
+{
+	void *p = phys_to_virt(fec->rbd_base[0].data_pointer);
+	dma_free_coherent(p, 0, size * count);
+}
+
 #ifdef CONFIG_OFDEVICE
 static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 {
@@ -722,8 +728,9 @@ static int fec_probe(struct device_d *dev)
 	 * reserve memory for both buffer descriptor chains at once
 	 * Datasheet forces the startaddress of each chain is 16 byte aligned
 	 */
-	base = dma_alloc_coherent((2 + FEC_RBD_NUM) *
-			sizeof(struct buffer_descriptor), DMA_ADDRESS_BROKEN);
+#define FEC_XBD_SIZE ((2 + FEC_RBD_NUM) * sizeof(struct buffer_descriptor))
+
+	base = dma_alloc_coherent(FEC_XBD_SIZE, DMA_ADDRESS_BROKEN);
 	fec->rbd_base = base;
 	base += FEC_RBD_NUM * sizeof(struct buffer_descriptor);
 	fec->tbd_base = base;
@@ -731,7 +738,9 @@ static int fec_probe(struct device_d *dev)
 	writel(virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
 	writel(virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
 
-	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
+	ret = fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
+	if (ret < 0)
+		goto free_xbd;
 
 	if (dev->device_node) {
 		ret = fec_probe_dt(dev, fec);
@@ -746,7 +755,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto free_gpio;
+		goto free_receive_packets;
 
 	fec_init(edev);
 
@@ -766,6 +775,10 @@ static int fec_probe(struct device_d *dev)
 
 	return 0;
 
+free_receive_packets:
+	fec_free_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
+free_xbd:
+	dma_free_coherent(fec->rbd_base, 0, FEC_XBD_SIZE);
 free_gpio:
 	if (gpio_is_valid(phy_reset))
 		gpio_free(phy_reset);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
