Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jy9p9-0000dK-Un
 for barebox@lists.infradead.org; Wed, 22 Jul 2020 08:10:00 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Jul 2020 10:09:56 +0200
Message-Id: <20200722080956.17454-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200722080956.17454-1-a.fatoum@pengutronix.de>
References: <20200722080956.17454-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] regulator: stm32-pwr: release resources to properly
 support EPROBE_DEFER
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Driver failed to release resources on failed probe so far, leading to
deferred probe failing with -EBUSY. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/stm32-pwr.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index 296f95bc4c32..99cabc5f8882 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -184,18 +184,25 @@ static int stm32_pwr_regulator_probe(struct device_d *dev)
 		priv->rdev.desc = &desc->desc;
 
 		priv->supply = regulator_get(dev, desc->supply_name);
-		if (IS_ERR(priv->supply))
-			return PTR_ERR(priv->supply);
+		if (IS_ERR(priv->supply)) {
+			ret = PTR_ERR(priv->supply);
+			goto release_region;
+		}
 
 		ret = of_regulator_register(&priv->rdev, child);
 		if (ret) {
 			dev_err(dev, "%s: Failed to register regulator: %d\n",
 				desc->name, ret);
-			return ret;
+			goto release_region;
 		}
 	}
 
 	return 0;
+
+release_region:
+	release_region(iores);
+
+	return ret;
 }
 
 static const struct of_device_id stm32_pwr_of_match[] = {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
