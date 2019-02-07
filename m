Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOs-0003j7-Ai
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id k15so3992258pls.8
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:10 -0800
Message-Id: <20190207012214.5060-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/16] net/e1000: Rename fill_rx() to e1000_fill_rx()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Rename fill_rx() to e1000_fill_rx() to match the naming convention of
other functions in the file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 425d478ed..b728add7f 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3198,7 +3198,7 @@ static int e1000_sw_init(struct eth_device *edev)
 	return E1000_SUCCESS;
 }
 
-static void fill_rx(struct e1000_hw *hw)
+static void e1000_fill_rx(struct e1000_hw *hw)
 {
 	volatile struct e1000_rx_desc *rd;
 	volatile u32 *bla;
@@ -3387,7 +3387,7 @@ static void e1000_configure_rx(struct e1000_hw *hw)
 
 	e1000_write_reg(hw, E1000_RCTL, rctl);
 
-	fill_rx(hw);
+	e1000_fill_rx(hw);
 }
 
 static int e1000_poll(struct eth_device *edev)
@@ -3405,7 +3405,7 @@ static int e1000_poll(struct eth_device *edev)
 
 		dma_sync_single_for_device(hw->packet_dma, len,
 					   DMA_FROM_DEVICE);
-		fill_rx(hw);
+		e1000_fill_rx(hw);
 		return 1;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
