Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dihxC-0002Hz-8C
 for barebox@lists.infradead.org; Fri, 18 Aug 2017 14:08:52 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 18 Aug 2017 16:03:00 +0200
Message-Id: <20170818140301.18749-2-linux@rempel-privat.de>
In-Reply-To: <20170818140301.18749-1-linux@rempel-privat.de>
References: <20170818140301.18749-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/3] net: ag71xx: bit 19 should be set to 1 for GE0
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/ag71xx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index b2e066be3..d13bf9171 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -492,7 +492,8 @@ static int ag71xx_probe(struct device_d *dev)
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG2, 0xAAA0555);
 
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG4, 0x3ffff);
-	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG5, 0x66b82);
+	/* bit 19 should be set to 1 for GE0 */
+	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG5, (0x66b82) | (1 << 19));
 	ag71xx_wr(priv, AG71XX_REG_FIFO_CFG3, 0x1f00140);
 
 	priv->rx_buffer = xmemalign(PAGE_SIZE, NO_OF_RX_FIFOS * MAX_RBUFF_SZ);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
