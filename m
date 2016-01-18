Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sm-0004ww-OR
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:33 +0000
Received: by mail-pf0-x242.google.com with SMTP id 65so11175651pfd.1
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:12 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:24 -0800
Message-Id: <1453089161-6697-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/20] e1000: Remove unnecessary variable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There doesn't seem to be any point for having 'nv_packet' variable and
it looks like a leftover from driving porting. Remove it and use
'txpacket' instead

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 05c3a78..66ec72f 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3397,7 +3397,6 @@ static int e1000_poll(struct eth_device *edev)

 static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 {
-	void *nv_packet = (void *)txpacket;
 	struct e1000_hw *hw = edev->priv;
 	volatile struct e1000_tx_desc *txp;
 	uint64_t to;
@@ -3405,7 +3404,7 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 	txp = hw->tx_base + hw->tx_tail;
 	hw->tx_tail = (hw->tx_tail + 1) % 8;

-	txp->buffer_addr = cpu_to_le64(virt_to_bus(hw->pdev, nv_packet));
+	txp->buffer_addr = cpu_to_le64(virt_to_bus(hw->pdev, txpacket));
 	txp->lower.data = cpu_to_le32(hw->txd_cmd | length);
 	txp->upper.data = 0;

--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
