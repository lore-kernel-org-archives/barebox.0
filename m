Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOu-0003lk-OH
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id a14so3992167plm.12
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:12 -0800
Message-Id: <20190207012214.5060-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/16] net/e1000: Consolidate next index calculation code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Consolidate next index calculation code into a helper function and
convert the code to make use of it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 90b6d6e43..01330f5a5 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3198,6 +3198,11 @@ static int e1000_sw_init(struct eth_device *edev)
 	return E1000_SUCCESS;
 }
 
+static int e1000_bd_next_index(int index)
+{
+	return (index + 1) % 8;
+}
+
 static void e1000_fill_rx(struct e1000_hw *hw)
 {
 	volatile struct e1000_rx_desc *rd = &hw->rx_base[hw->rx_tail];
@@ -3205,7 +3210,7 @@ static void e1000_fill_rx(struct e1000_hw *hw)
 	int i;
 
 	hw->rx_last = hw->rx_tail;
-	hw->rx_tail = (hw->rx_tail + 1) % 8;
+	hw->rx_tail = e1000_bd_next_index(hw->rx_tail);
 
 	bla = (void *)rd;
 	for (i = 0; i < 4; i++)
@@ -3419,7 +3424,7 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 	uint32_t stat;
 	int ret;
 
-	hw->tx_tail = (hw->tx_tail + 1) % 8;
+	hw->tx_tail = e1000_bd_next_index(hw->tx_tail);
 
 	writel(hw->txd_cmd | length, &txp->lower.data);
 	writel(0, &txp->upper.data);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
