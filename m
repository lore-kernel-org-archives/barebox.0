Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXPSQ-0005MQ-Rv
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 08:01:20 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZXPS4-0004y9-Kh
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 10:00:56 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  3 Sep 2015 10:00:54 +0200
Message-Id: <1441267256-17522-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] mfd: da9053: remove references to nonexistent cdev member
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/da9053.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 3fb5295cf910..250c0556ec3c 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -149,7 +149,7 @@ static int da9053_enable_multiwrite(struct da9053_priv *da9053)
 static int da9053_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct da9053_priv *da9053 = wd_to_da9053_priv(wd);
-	struct device_d *dev = da9053->cdev.dev;
+	struct device_d *dev = da9053->dev;
 	unsigned scale = 0;
 	int ret;
 	u8 val;
@@ -269,7 +269,6 @@ static int da9053_probe(struct device_d *dev)
 
 	da9053 = xzalloc(sizeof(*da9053));
 	da9053->dev = dev;
-	da9053->cdev.name = DRIVERNAME;
 	da9053->client = to_i2c_client(dev);
 	da9053->wd.set_timeout = da9053_set_timeout;
 	da9053->wd.priority = of_get_watchdog_priority(dev->device_node);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
