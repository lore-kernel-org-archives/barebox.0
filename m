Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeJn-0002jg-79
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 16:19:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iVeJl-0003bd-OW
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 17:19:29 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1iVeJl-0003sn-E5
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 17:19:29 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 15 Nov 2019 17:19:28 +0100
Message-Id: <20191115161928.12313-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] net: cpsw: don't reset twice
To: barebox@lists.infradead.org

The softreset was already called previously in open and other settings
have been prepared afterwards, so don't reset it a second time.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/cpsw.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index b9a6575009..4eb2205daa 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -676,8 +676,6 @@ static void cpsw_slave_init(struct cpsw_slave *slave, struct cpsw_priv *priv)
 
 	dev_dbg(&slave->dev, "* %s\n", __func__);
 
-	soft_reset(priv, &slave->sliver->soft_reset);
-
 	/* setup priority mapping */
 	writel(0x76543210, &slave->sliver->rx_pri_map);
 	writel(0x33221100, &slave->regs->tx_pri_map);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
