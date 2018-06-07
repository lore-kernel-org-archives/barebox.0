Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQrRS-0004l2-ER
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 09:42:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fQrRD-00055A-4s
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 11:42:35 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  7 Jun 2018 11:42:34 +0200
Message-Id: <20180607094235.29848-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] wdt: da9053: fix missed dev->hwdev conversion
To: barebox@lists.infradead.org

Fixes: 1ef7cd07a304 (watchdog: rename dev to hwdev)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/da9053.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 9adab8c75a25..c706082a8b39 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -276,7 +276,7 @@ static int da9053_probe(struct device_d *dev)
 	da9053->client = to_i2c_client(dev);
 	da9053->wd.set_timeout = da9053_set_timeout;
 	da9053->wd.priority = of_get_watchdog_priority(dev->device_node);
-	da9053->wd.dev = dev;
+	da9053->wd.hwdev = dev;
 
 	ret = da9053_enable_multiwrite(da9053);
 	if (ret < 0)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
