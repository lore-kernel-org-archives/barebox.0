Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOt-0003kH-3g
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id g189so3763695pgc.5
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:11 -0800
Message-Id: <20190207012214.5060-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/16] net/e1000: Remove pointer arithmetic from
 e1000_fill_rx()
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
index b728add7f..90b6d6e43 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3200,12 +3200,11 @@ static int e1000_sw_init(struct eth_device *edev)
 
 static void e1000_fill_rx(struct e1000_hw *hw)
 {
-	volatile struct e1000_rx_desc *rd;
+	volatile struct e1000_rx_desc *rd = &hw->rx_base[hw->rx_tail];
 	volatile u32 *bla;
 	int i;
 
 	hw->rx_last = hw->rx_tail;
-	rd = hw->rx_base + hw->rx_tail;
 	hw->rx_tail = (hw->rx_tail + 1) % 8;
 
 	bla = (void *)rd;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
