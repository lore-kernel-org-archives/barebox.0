Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOq-0003gO-54
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id y126so4002242pfb.4
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:08 -0800
Message-Id: <20190207012214.5060-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/16] net/e1000: Improve Tx descriptor handling in
 e1000_transmit
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit "volatile" specifier for struct e1000_tx_desc as well as
explicit endiannes fix, by using little endian IO accessors (readl,
writel, etc.)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index f7e26a0e5..866d8def3 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -35,6 +35,7 @@ tested on both gig copper and gig fiber boards
 #include <linux/pci.h>
 #include <dma.h>
 #include "e1000.h"
+#include <io-64-nonatomic-lo-hi.h>
 
 #define PCI_VENDOR_ID_INTEL	0x8086
 
@@ -3413,29 +3414,28 @@ static int e1000_poll(struct eth_device *edev)
 static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 {
 	struct e1000_hw *hw = edev->priv;
-	volatile struct e1000_tx_desc *txp = &hw->tx_base[hw->tx_tail];
+	struct e1000_tx_desc *txp = &hw->tx_base[hw->tx_tail];
 	uint64_t to;
 	dma_addr_t dma;
 	int ret = 0;
 
 	hw->tx_tail = (hw->tx_tail + 1) % 8;
 
-	txp->lower.data = cpu_to_le32(hw->txd_cmd | length);
-	txp->upper.data = 0;
+	writel(hw->txd_cmd | length, &txp->lower.data);
+	writel(0, &txp->upper.data);
 
 	dma = dma_map_single(hw->dev, txpacket, length, DMA_TO_DEVICE);
 	if (dma_mapping_error(hw->dev, dma))
 		return -EFAULT;
 
-	txp->buffer_addr = cpu_to_le64(dma);
-
+	writeq(dma, &txp->buffer_addr);
 	e1000_write_reg(hw, E1000_TDT, hw->tx_tail);
 
 	e1000_write_flush(hw);
 
 	to = get_time_ns();
 	while (1) {
-		if (le32_to_cpu(txp->upper.data) & E1000_TXD_STAT_DD)
+		if (readl(&txp->upper.data) & E1000_TXD_STAT_DD)
 			break;
 		if (is_timeout(to, MSECOND)) {
 			dev_dbg(hw->dev, "e1000: tx timeout\n");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
