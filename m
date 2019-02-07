Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOn-0003cN-3B
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id s1so3992113plp.9
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:05 -0800
Message-Id: <20190207012214.5060-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/16] net/e1000: Get rid of pointer arithmetic in e1000_poll
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of relying on reles of pointer arithmetic (implicit
multiplication by the size of pointer type), change the code to
retreive address of an array elemet to clarify the intent.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index e793785e6..f13b48e0c 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3391,11 +3391,9 @@ static void e1000_configure_rx(struct e1000_hw *hw)
 static int e1000_poll(struct eth_device *edev)
 {
 	struct e1000_hw *hw = edev->priv;
-	volatile struct e1000_rx_desc *rd;
+	volatile struct e1000_rx_desc *rd = &hw->rx_base[hw->rx_last];
 	uint32_t len;
 
-	rd = hw->rx_base + hw->rx_last;
-
 	if (le32_to_cpu(rd->status) & E1000_RXD_STAT_DD) {
 		len = le32_to_cpu(rd->length);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
