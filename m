Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOw-0003o2-Q1
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id i12so3995483pfo.7
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:14 -0800
Message-Id: <20190207012214.5060-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/16] net/e1000: Do not hardcode TDBAH and RDBAH to 0
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

While there currently no user of e1000 driver that places those rings
beyond 4GiB boundary, there's also no real reason not to initialize
those registers properly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index c6b6906ce..774e3d030 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3232,9 +3232,10 @@ static void e1000_configure_tx(struct e1000_hw *hw)
 	unsigned long tctl;
 	unsigned long tipg, tarc;
 	uint32_t ipgr1, ipgr2;
+	const unsigned long tx_base = (unsigned long)hw->tx_base;
 
-	e1000_write_reg(hw, E1000_TDBAL, (unsigned long)hw->tx_base);
-	e1000_write_reg(hw, E1000_TDBAH, 0);
+	e1000_write_reg(hw, E1000_TDBAL, lower_32_bits(tx_base));
+	e1000_write_reg(hw, E1000_TDBAH, upper_32_bits(tx_base));
 
 	e1000_write_reg(hw, E1000_TDLEN, 128);
 
@@ -3350,6 +3351,7 @@ static void e1000_setup_rctl(struct e1000_hw *hw)
 static void e1000_configure_rx(struct e1000_hw *hw)
 {
 	unsigned long rctl, ctrl_ext;
+	const unsigned long rx_base = (unsigned long)hw->rx_base;
 
 	hw->rx_tail = 0;
 	/* make sure receives are disabled while setting up the descriptors */
@@ -3371,8 +3373,8 @@ static void e1000_configure_rx(struct e1000_hw *hw)
 		e1000_write_flush(hw);
 	}
 	/* Setup the Base and Length of the Rx Descriptor Ring */
-	e1000_write_reg(hw, E1000_RDBAL, (unsigned long)hw->rx_base);
-	e1000_write_reg(hw, E1000_RDBAH, 0);
+	e1000_write_reg(hw, E1000_RDBAL, lower_32_bits(rx_base));
+	e1000_write_reg(hw, E1000_RDBAH, upper_32_bits(rx_base));
 
 	e1000_write_reg(hw, E1000_RDLEN, 128);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
