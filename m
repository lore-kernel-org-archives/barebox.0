Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjVI4-0005dT-RG
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 20:26:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id j10so1730944pga.1
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2019 12:26:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Jan 2019 12:25:45 -0800
Message-Id: <20190115202601.24831-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190115202601.24831-1-andrew.smirnov@gmail.com>
References: <20190115202601.24831-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 01/17] regulator: Convert drivers to use struct
 regulator_desc
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

To simplify porting kernel code, port a very basic struct
regulator_desc and convert all of the code to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/regulator/bcm2835.c | 6 ++++--
 drivers/regulator/core.c    | 8 ++++----
 drivers/regulator/fixed.c   | 6 ++++--
 include/regulator.h         | 6 +++++-
 4 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 0ada05db16..ea7cf7fe1e 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -24,6 +24,7 @@ static struct regulator_bcm2835 {
 
 	struct device_d *dev;
 	struct regulator_dev rdev;
+	struct regulator_desc rdesc;
 } regs[] = {
 	REG_DEV(BCM2835_MBOX_POWER_DEVID_SDHCI, "bcm2835_mci0"),
 	REG_DEV(BCM2835_MBOX_POWER_DEVID_UART0, "uart0-pl0110"),
@@ -108,7 +109,7 @@ static int regulator_bcm2835_is_enabled(struct regulator_dev *rdev)
 	return msg_pwr->get_power_state.body.resp.state;
 }
 
-static struct regulator_ops bcm2835_ops = {
+const static struct regulator_ops bcm2835_ops = {
 	.enable = regulator_bcm2835_enable,
 	.disable = regulator_bcm2835_disable,
 	.is_enabled = regulator_bcm2835_is_enabled,
@@ -122,7 +123,8 @@ static int regulator_bcm2835_probe(struct device_d *dev)
 	for (i = 0; i < ARRAY_SIZE(regs); i++) {
 		rb = &regs[i];
 
-		rb->rdev.ops = &bcm2835_ops;
+		rb->rdesc.ops = &bcm2835_ops;
+		rb->rdev.desc = &rb->rdesc;
 		rb->dev = dev;
 
 		ret = dev_regulator_register(&rb->rdev, rb->devname, NULL);
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 39df980dcb..bcfbda62e3 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -52,10 +52,10 @@ static int regulator_enable_internal(struct regulator_internal *ri)
 		return 0;
 	}
 
-	if (!ri->rdev->ops->enable)
+	if (!ri->rdev->desc->ops->enable)
 		return -ENOSYS;
 
-	ret = ri->rdev->ops->enable(ri->rdev);
+	ret = ri->rdev->desc->ops->enable(ri->rdev);
 	if (ret)
 		return ret;
 
@@ -74,10 +74,10 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 	if (!ri->enable_count)
 		return -EINVAL;
 
-	if (!ri->rdev->ops->disable)
+	if (!ri->rdev->desc->ops->disable)
 		return -ENOSYS;
 
-	ret = ri->rdev->ops->disable(ri->rdev);
+	ret = ri->rdev->desc->ops->disable(ri->rdev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 87554d22e3..cb5d785817 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -29,6 +29,7 @@ struct regulator_fixed {
 	int active_low;
 	int always_on;
 	struct regulator_dev rdev;
+	struct regulator_desc rdesc;
 };
 
 static int regulator_fixed_enable(struct regulator_dev *rdev)
@@ -54,7 +55,7 @@ static int regulator_fixed_disable(struct regulator_dev *rdev)
 	return gpio_direction_output(fix->gpio, fix->active_low);
 }
 
-static struct regulator_ops fixed_ops = {
+const static struct regulator_ops fixed_ops = {
 	.enable = regulator_fixed_enable,
 	.disable = regulator_fixed_disable,
 };
@@ -82,7 +83,8 @@ static int regulator_fixed_probe(struct device_d *dev)
 			fix->active_low = 1;
 	}
 
-	fix->rdev.ops = &fixed_ops;
+	fix->rdesc.ops = &fixed_ops;
+	fix->rdev.desc = &fix->rdesc;
 
 	if (of_find_property(dev->device_node, "regulator-always-on", NULL)) {
 		fix->always_on = 1;
diff --git a/include/regulator.h b/include/regulator.h
index 367e13f05b..907073607f 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -4,8 +4,12 @@
 /* struct regulator is an opaque object for consumers */
 struct regulator;
 
+struct regulator_desc {
+	const struct regulator_ops *ops;
+};
+
 struct regulator_dev {
-	struct regulator_ops *ops;
+	const struct regulator_desc *desc;
 	int boot_on;
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
