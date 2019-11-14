Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFAT-0001RI-17
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:28:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Nov 2019 14:28:08 +0100
Message-Id: <20191114132808.6424-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] net: designware: eqos: remove done TODO
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The todo split comment is a left-over from refactoring. Remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_stm32.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index ed54ff2b2615..bb6781fb3450 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -204,7 +204,6 @@ static void eqos_stop_stm32(struct eth_device *edev)
 	clk_bulk_disable(priv->num_clks, priv->clks);
 }
 
-// todo split!
 static struct eqos_ops stm32_ops = {
 	.init = eqos_init_stm32,
 	.get_ethaddr = eqos_get_ethaddr,
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
