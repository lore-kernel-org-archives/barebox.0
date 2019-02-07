Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOh-0003Yl-AB
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id d72so3757150pga.9
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:01 -0800
Message-Id: <20190207012214.5060-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190207012214.5060-1-andrew.smirnov@gmail.com>
References: <20190207012214.5060-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/16] net/e1000: Don't use coherent memory for Rx buffer
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to avoid issues on AArch64, convert the driver to use regular
memory and add appropriate DMA sync calls. Drop needless (uchar *)
cast while at it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h |  1 +
 drivers/net/e1000/main.c  | 18 ++++++++++++++----
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 0a9e107c0..52ad3d4cd 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2182,6 +2182,7 @@ struct e1000_hw {
 	struct e1000_tx_desc *tx_base;
 	struct e1000_rx_desc *rx_base;
 	unsigned char *packet;
+	dma_addr_t packet_dma;
 
 	int tx_tail;
 	int rx_tail, rx_last;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 0ef8fd623..7358763f9 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3215,7 +3215,7 @@ static void fill_rx(struct e1000_hw *hw)
 	for (i = 0; i < 4; i++)
 		*bla++ = 0;
 
-	rd->buffer_addr = cpu_to_le64((unsigned long)hw->packet);
+	rd->buffer_addr = cpu_to_le64(hw->packet_dma);
 
 	e1000_write_reg(hw, E1000_RDT, hw->rx_tail);
 }
@@ -3406,9 +3406,11 @@ static int e1000_poll(struct eth_device *edev)
 
 	len = le32_to_cpu(rd->length);
 
-	dma_sync_single_for_cpu((unsigned long)hw->packet, len, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(hw->packet_dma, len, DMA_FROM_DEVICE);
 
-	net_receive(edev, (uchar *)hw->packet, len);
+	net_receive(edev, hw->packet, len);
+
+	dma_sync_single_for_device(hw->packet_dma, len, DMA_FROM_DEVICE);
 	fill_rx(hw);
 	return 1;
 }
@@ -3561,7 +3563,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), DMA_ADDRESS_BROKEN);
 	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), DMA_ADDRESS_BROKEN);
-	hw->packet = dma_alloc_coherent(4096, DMA_ADDRESS_BROKEN);
 
 	edev = &hw->edev;
 
@@ -3570,6 +3571,15 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	pdev->dev.priv = hw;
 	edev->priv = hw;
 
+	hw->packet = dma_alloc(PAGE_SIZE);
+	if (!hw->packet)
+		return -ENOMEM;
+
+	hw->packet_dma = dma_map_single(hw->dev, hw->packet, PAGE_SIZE,
+					DMA_FROM_DEVICE);
+	if (dma_mapping_error(hw->dev, hw->packet_dma))
+		return -EFAULT;
+
 	hw->hw_addr = pci_iomap(pdev, 0);
 
 	/* MAC and Phy settings */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
