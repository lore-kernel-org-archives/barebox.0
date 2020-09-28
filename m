Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQg-0008Bz-UZ
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZA-LS
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000Jq-L7
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:32 +0200
Message-Id: <20200928155041.32649-10-m.felsch@pengutronix.de>
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 09/18] regulator: add device reference to regulator_dev
To: barebox@lists.infradead.org

It is useful to know the physical device a regulator_dev belongs to.
This is at least needed for the new deep-probe mechanism. It is also
useful for a few regulator drivers to drop their own device_d reference.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/regulator/anatop-regulator.c  | 1 +
 drivers/regulator/bcm2835.c           | 1 +
 drivers/regulator/fixed.c             | 1 +
 drivers/regulator/stm32-pwr.c         | 1 +
 drivers/regulator/stpmic1_regulator.c | 1 +
 include/regulator.h                   | 2 ++
 6 files changed, 7 insertions(+)

diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
index 7ec9446a0a..917f7e8fdd 100644
--- a/drivers/regulator/anatop-regulator.c
+++ b/drivers/regulator/anatop-regulator.c
@@ -67,6 +67,7 @@ static int anatop_regulator_probe(struct device_d *dev)
 
 	rdev->desc = rdesc;
 	rdev->regmap = syscon_node_to_regmap(anatop_np);
+	rdev->dev = dev;
 	if (IS_ERR(rdev->regmap))
 		return PTR_ERR(rdev->regmap);
 
diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index ea7cf7fe1e..1b1eeaf3b8 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -126,6 +126,7 @@ static int regulator_bcm2835_probe(struct device_d *dev)
 		rb->rdesc.ops = &bcm2835_ops;
 		rb->rdev.desc = &rb->rdesc;
 		rb->dev = dev;
+		rb->rdev.dev = dev;
 
 		ret = dev_regulator_register(&rb->rdev, rb->devname, NULL);
 		if (ret)
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 0b1c752493..160a55163f 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -82,6 +82,7 @@ static int regulator_fixed_probe(struct device_d *dev)
 
 	fix->rdesc.ops = &fixed_ops;
 	fix->rdev.desc = &fix->rdesc;
+	fix->rdev.dev = dev;
 
 	if (of_find_property(dev->device_node, "regulator-always-on", NULL) ||
 	    of_find_property(dev->device_node, "regulator-boot-on", NULL)) {
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index 296f95bc4c..a509eb6ae6 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -182,6 +182,7 @@ static int stm32_pwr_regulator_probe(struct device_d *dev)
 		priv->dev = dev;
 
 		priv->rdev.desc = &desc->desc;
+		priv->rdev.dev = dev;
 
 		priv->supply = regulator_get(dev, desc->supply_name);
 		if (IS_ERR(priv->supply))
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index 2b4b729541..60905d394e 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -390,6 +390,7 @@ static int stpmic1_regulator_register(struct device_d *dev, int id,
 
 	cfg->dev = dev;
 	cfg->rdev.desc = &cfg->desc;
+	cfg->rdev.dev = dev;
 	cfg->rdev.regmap = dev_get_regmap(dev->parent, NULL);
 	if (IS_ERR(cfg->rdev.regmap))
 		return PTR_ERR(cfg->rdev.regmap);
diff --git a/include/regulator.h b/include/regulator.h
index a9cb6dedca..44eee7b0ad 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -77,6 +77,8 @@ struct regulator_dev {
 	const struct regulator_desc *desc;
 	struct regmap *regmap;
 	int boot_on;
+	/* the device this regulator device belongs to */
+	struct device_d *dev;
 };
 
 struct regulator_ops {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
