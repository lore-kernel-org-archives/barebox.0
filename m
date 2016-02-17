Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22c.google.com ([2607:f8b0:400e:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwT-0003nX-HZ
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:10 +0000
Received: by mail-pa0-x22c.google.com with SMTP id fy10so1485134pac.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:14 -0800
Message-Id: <1455672559-25061-14-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/18] fec_imx: Deallocate DMA buffers when probe fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 99bd179..0877a53 100644
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
 #include <linux/nvmem-consumer.h>
 
 static int nvmem_test(struct device_d *dev)
@@ -754,8 +760,9 @@ static int fec_probe(struct device_d *dev)
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
@@ -763,7 +770,9 @@ static int fec_probe(struct device_d *dev)
 	writel(virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
 	writel(virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
 
-	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
+	ret = fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
+	if (ret < 0)
+		goto free_xbd;
 
 	if (dev->device_node) {
 		ret = fec_probe_dt(dev, fec);
@@ -778,7 +787,7 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	if (ret)
-		goto free_gpio;
+		goto free_receive_packets;
 
 	fec_init(edev);
 
@@ -798,6 +807,10 @@ static int fec_probe(struct device_d *dev)
 
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
