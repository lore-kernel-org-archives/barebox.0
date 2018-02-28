Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1er5R0-00056k-1U
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 17:22:31 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 28 Feb 2018 18:22:05 +0100
Message-Id: <20180228172206.12823-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/2] watchdog: ar9344-wdt: disable watchdog in probe
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This should avoid of triggering reset if we boot barebox from
barebox.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/watchdog/ar9344_wdt.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index d570cb40f..b61786b1b 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -101,6 +101,8 @@ static int ar9344_wdt_probe(struct device_d *dev)
 	dev->priv = priv;
 
 	ar9344_watchdog_detect_reset_source(priv);
+	/* disable watchdog on probe */
+	iowrite32be(0, priv->base + AR9344_WD_REG_CTRL);
 
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk)) {
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
