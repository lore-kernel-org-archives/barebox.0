Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOr-0003hg-CV
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so4008717plo.3
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:09 -0800
Message-Id: <20190207012214.5060-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/16] net/e1000: Make use of readl_poll_timeout() in
 e1000_transmit()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify code of e1000_transmit() with readl_poll_timeout().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 866d8def3..425d478ed 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -33,6 +33,7 @@ tested on both gig copper and gig fiber boards
 #include <init.h>
 #include <malloc.h>
 #include <linux/pci.h>
+#include <linux/iopoll.h>
 #include <dma.h>
 #include "e1000.h"
 #include <io-64-nonatomic-lo-hi.h>
@@ -3415,9 +3416,9 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 {
 	struct e1000_hw *hw = edev->priv;
 	struct e1000_tx_desc *txp = &hw->tx_base[hw->tx_tail];
-	uint64_t to;
 	dma_addr_t dma;
-	int ret = 0;
+	uint32_t stat;
+	int ret;
 
 	hw->tx_tail = (hw->tx_tail + 1) % 8;
 
@@ -3433,16 +3434,11 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 
 	e1000_write_flush(hw);
 
-	to = get_time_ns();
-	while (1) {
-		if (readl(&txp->upper.data) & E1000_TXD_STAT_DD)
-			break;
-		if (is_timeout(to, MSECOND)) {
-			dev_dbg(hw->dev, "e1000: tx timeout\n");
-			ret = -ETIMEDOUT;
-			break;
-		}
-	}
+	ret = readl_poll_timeout(&txp->upper.data,
+				 stat, stat & E1000_TXD_STAT_DD,
+				 MSECOND / USECOND);
+	if (ret)
+		dev_dbg(hw->dev, "e1000: tx timeout\n");
 
 	dma_unmap_single(hw->dev, dma, length, DMA_TO_DEVICE);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
