Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOj-0003ZM-HJ
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id v28so3751377pgk.10
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:02 -0800
Message-Id: <20190207012214.5060-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/16] net/e1000: Convert e1000_transmit to use
 dma_map_single()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert e1000_transmit to use dma_map_single()/dma_unmap_single(),
which is more apporpirate in this case, since it will account for
phys/virtual address difference as well as allow us to check for DMA
mapping failure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 7358763f9..5ab4eb3fd 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -36,11 +36,6 @@ tested on both gig copper and gig fiber boards
 #include <dma.h>
 #include "e1000.h"
 
-static u32 inline virt_to_bus(struct pci_dev *pdev, void *adr)
-{
-	return (u32)adr;
-}
-
 #define PCI_VENDOR_ID_INTEL	0x8086
 
 
@@ -3420,15 +3415,20 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 	struct e1000_hw *hw = edev->priv;
 	volatile struct e1000_tx_desc *txp;
 	uint64_t to;
+	dma_addr_t dma;
+	int ret = 0;
 
 	txp = hw->tx_base + hw->tx_tail;
 	hw->tx_tail = (hw->tx_tail + 1) % 8;
 
-	txp->buffer_addr = cpu_to_le64(virt_to_bus(hw->pdev, txpacket));
 	txp->lower.data = cpu_to_le32(hw->txd_cmd | length);
 	txp->upper.data = 0;
 
-	dma_sync_single_for_device((unsigned long)txpacket, length, DMA_TO_DEVICE);
+	dma = dma_map_single(hw->dev, txpacket, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(hw->dev, dma))
+		return -EFAULT;
+
+	txp->buffer_addr = cpu_to_le64(dma);
 
 	e1000_write_reg(hw, E1000_TDT, hw->tx_tail);
 
@@ -3440,11 +3440,14 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 			break;
 		if (is_timeout(to, MSECOND)) {
 			dev_dbg(hw->dev, "e1000: tx timeout\n");
-			return -ETIMEDOUT;
+			ret = -ETIMEDOUT;
+			break;
 		}
 	}
 
-	return 0;
+	dma_unmap_single(hw->dev, dma, length, DMA_TO_DEVICE);
+
+	return ret;
 }
 
 static void e1000_disable(struct eth_device *edev)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
