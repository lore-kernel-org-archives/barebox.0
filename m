Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOl-0003bG-DA
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id h3so4002220pfg.1
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:04 -0800
Message-Id: <20190207012214.5060-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/16] net/e1000: Fix incorrect "Rx ready" check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Due to wrong placement of parenthesis in

	if (!(le32_to_cpu(rd->status)) & E1000_RXD_STAT_DD)
		return 0;

instead of checking that E1000_RXD_STAT_DD is not set, the condition
ends up checking that "status" is 0.

Change the code to invert the condition tested and get rid of !
entirely.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 5ab4eb3fd..e793785e6 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3396,18 +3396,21 @@ static int e1000_poll(struct eth_device *edev)
 
 	rd = hw->rx_base + hw->rx_last;
 
-	if (!(le32_to_cpu(rd->status)) & E1000_RXD_STAT_DD)
-		return 0;
+	if (le32_to_cpu(rd->status) & E1000_RXD_STAT_DD) {
+		len = le32_to_cpu(rd->length);
 
-	len = le32_to_cpu(rd->length);
+		dma_sync_single_for_cpu(hw->packet_dma, len,
+					DMA_FROM_DEVICE);
 
-	dma_sync_single_for_cpu(hw->packet_dma, len, DMA_FROM_DEVICE);
+		net_receive(edev, hw->packet, len);
 
-	net_receive(edev, hw->packet, len);
+		dma_sync_single_for_device(hw->packet_dma, len,
+					   DMA_FROM_DEVICE);
+		fill_rx(hw);
+		return 1;
+	}
 
-	dma_sync_single_for_device(hw->packet_dma, len, DMA_FROM_DEVICE);
-	fill_rx(hw);
-	return 1;
+	return 0;
 }
 
 static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
