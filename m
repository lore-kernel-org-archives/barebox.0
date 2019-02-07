Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOv-0003mg-D2
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id c25so3764821pgb.4
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:13 -0800
Message-Id: <20190207012214.5060-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/16] net/e1000: Improve RX buffer handling in e1000_fill_rx()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit "volatile" specifier for struct e1000_rx_desc, "bla"
variable as well as explicit endiannes fix, by using little endian IO
accessors (readl, writel, etc.)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 01330f5a5..c6b6906ce 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3205,18 +3205,17 @@ static int e1000_bd_next_index(int index)
 
 static void e1000_fill_rx(struct e1000_hw *hw)
 {
-	volatile struct e1000_rx_desc *rd = &hw->rx_base[hw->rx_tail];
-	volatile u32 *bla;
-	int i;
+	struct e1000_rx_desc *rd = &hw->rx_base[hw->rx_tail];
 
 	hw->rx_last = hw->rx_tail;
 	hw->rx_tail = e1000_bd_next_index(hw->rx_tail);
 
-	bla = (void *)rd;
-	for (i = 0; i < 4; i++)
-		*bla++ = 0;
-
-	rd->buffer_addr = cpu_to_le64(hw->packet_dma);
+	writeq(hw->packet_dma, &rd->buffer_addr);
+	writew(0, &rd->length);
+	writew(0, &rd->csum);
+	writeb(0, &rd->status);
+	writeb(0, &rd->errors);
+	writew(0, &rd->special);
 
 	e1000_write_reg(hw, E1000_RDT, hw->rx_tail);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
