Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuXx-000695-Tg
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:01:47 +0000
Received: by mail-pl0-x243.google.com with SMTP id w17-v6so6105132pll.9
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:24 -0700
Message-Id: <20180607130108.5339-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 08/52] net: fec_imx: Use dma mapping functions
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Rather than doing DMA on the input buffer address get a proper DMA
address from the mapping functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 15 +++++++++------
 drivers/net/fec_imx.h |  1 +
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 33599dd82..0ca594082 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -453,6 +453,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 {
 	unsigned int status;
 	uint64_t tmo;
+	dma_addr_t dma;
 
 	/*
 	 * This routine transmits one frame.  This routine only accepts
@@ -466,7 +467,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 		return -1;
 	}
 
-	if ((uint32_t)eth_data & (DB_DATA_ALIGNMENT-1))
+	if ((unsigned long)eth_data & (DB_DATA_ALIGNMENT - 1))
 		dev_warn(&dev->dev, "Transmit data not aligned: %p!\n", eth_data);
 
 	/*
@@ -479,10 +480,12 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 
 	writew(data_length, &fec->tbd_base[fec->tbd_index].data_length);
 
-	writel((uint32_t)(eth_data), &fec->tbd_base[fec->tbd_index].data_pointer);
+	dma = dma_map_single(fec->dev, eth_data, data_length, DMA_TO_DEVICE);
+	if (dma_mapping_error(fec->dev, dma))
+		return -EIO;
+
+	writel((uint32_t)(dma), &fec->tbd_base[fec->tbd_index].data_pointer);
 
-	dma_sync_single_for_device((unsigned long)eth_data, data_length,
-				   DMA_TO_DEVICE);
 	/*
 	 * update BD's status now
 	 * This block:
@@ -505,8 +508,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 			break;
 		}
 	}
-	dma_sync_single_for_cpu((unsigned long)eth_data, data_length,
-				DMA_TO_DEVICE);
+	dma_unmap_single(fec->dev, dma, data_length, DMA_TO_DEVICE);
 
 	/* for next transmission use the other buffer */
 	if (fec->tbd_index)
@@ -748,6 +750,7 @@ static int fec_probe(struct device_d *dev)
 
 	fec = xzalloc(sizeof(*fec));
 	fec->type = type;
+	fec->dev = dev;
 	edev = &fec->edev;
 	dev->priv = fec;
 	edev->priv = fec;
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 561de0890..e3f60dd66 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -149,6 +149,7 @@ enum fec_opt_clock {
  */
 struct fec_priv {
 	struct eth_device edev;
+	struct device_d *dev;
 	void __iomem *regs;
 	struct buffer_descriptor __iomem *rbd_base;	/* RBD ring                  */
 	int rbd_index;				/* next receive BD to read   */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
