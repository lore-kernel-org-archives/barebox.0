Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOp-0003eu-60
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id q1so4000460pfi.5
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:07 -0800
Message-Id: <20190207012214.5060-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/16] net/e1000: Remove pointer arithmetic in e1000_transmit()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of relying on reles of pointer arithmetic (implicit
multiplication by the size of pointer type), change the code to
retreive address of an array elemet to clarify the intent.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index b8222c7ae..f7e26a0e5 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3413,12 +3413,11 @@ static int e1000_poll(struct eth_device *edev)
 static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 {
 	struct e1000_hw *hw = edev->priv;
-	volatile struct e1000_tx_desc *txp;
+	volatile struct e1000_tx_desc *txp = &hw->tx_base[hw->tx_tail];
 	uint64_t to;
 	dma_addr_t dma;
 	int ret = 0;
 
-	txp = hw->tx_base + hw->tx_tail;
 	hw->tx_tail = (hw->tx_tail + 1) % 8;
 
 	txp->lower.data = cpu_to_le32(hw->txd_cmd | length);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
