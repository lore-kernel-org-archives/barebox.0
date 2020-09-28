Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQi-0000ZZ-3Y
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZB-UX
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000Jt-LS
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:33 +0200
Message-Id: <20200928155041.32649-11-m.felsch@pengutronix.de>
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
Subject: [PATCH 10/18] regulator: treewide: drop local device_d reference
To: barebox@lists.infradead.org

Drop the local reference for each driver since the regulator_dev can
handle this now. Attention: The pfuze is out of scope since this driver
is not really a regulator driver.

While on it fix a few minor style issues on the bcm2835 driver too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/regulator/bcm2835.c           | 23 +++++++++--------------
 drivers/regulator/stm32-pwr.c         |  6 ++----
 drivers/regulator/stpmic1_regulator.c |  2 --
 3 files changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 1b1eeaf3b8..6423b8a834 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -14,7 +14,7 @@
 
 #define REG_DEV(_id, _name)		\
 	{				\
-		.id 		= _id,	\
+		.id		= _id,	\
 		.devname	= _name,\
 	}
 
@@ -22,7 +22,6 @@ static struct regulator_bcm2835 {
 	int id;
 	char *devname;
 
-	struct device_d *dev;
 	struct regulator_dev rdev;
 	struct regulator_desc rdesc;
 } regs[] = {
@@ -43,8 +42,9 @@ struct msg_set_power_state {
 	u32 end_tag;
 };
 
-static int regulator_bcm2835_set(struct regulator_bcm2835 *rb, int state)
+static int regulator_bcm2835_set(struct regulator_dev *rdev, int state)
 {
+	struct regulator_bcm2835 *rb = container_of(rdev, struct regulator_bcm2835, rdev);
 	BCM2835_MBOX_STACK_ALIGN(struct msg_set_power_state, msg_pwr);
 	int ret;
 
@@ -59,8 +59,8 @@ static int regulator_bcm2835_set(struct regulator_bcm2835 *rb, int state)
 	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN,
 				     &msg_pwr->hdr);
 	if (ret) {
-		dev_err(rb->dev ,"bcm2835: Could not set module %u power state\n",
-		       rb->id);
+		dev_err(rdev->dev, "bcm2835: Could not set module %u power state\n",
+			rb->id);
 		return ret;
 	}
 
@@ -69,16 +69,12 @@ static int regulator_bcm2835_set(struct regulator_bcm2835 *rb, int state)
 
 static int regulator_bcm2835_enable(struct regulator_dev *rdev)
 {
-	struct regulator_bcm2835 *rb = container_of(rdev, struct regulator_bcm2835, rdev);
-
-	return regulator_bcm2835_set(rb, BCM2835_MBOX_SET_POWER_STATE_REQ_ON);
+	return regulator_bcm2835_set(rdev, BCM2835_MBOX_SET_POWER_STATE_REQ_ON);
 }
 
 static int regulator_bcm2835_disable(struct regulator_dev *rdev)
 {
-	struct regulator_bcm2835 *rb = container_of(rdev, struct regulator_bcm2835, rdev);
-
-	return regulator_bcm2835_set(rb, BCM2835_MBOX_SET_POWER_STATE_REQ_OFF);
+	return regulator_bcm2835_set(rdev, BCM2835_MBOX_SET_POWER_STATE_REQ_OFF);
 }
 
 struct msg_get_power_state {
@@ -101,8 +97,8 @@ static int regulator_bcm2835_is_enabled(struct regulator_dev *rdev)
 	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN,
 				     &msg_pwr->hdr);
 	if (ret) {
-		dev_err(rb->dev ,"bcm2835: Could not get module %u power state\n",
-		       rb->id);
+		dev_err(rdev->dev, "bcm2835: Could not get module %u power state\n",
+			rb->id);
 		return ret;
 	}
 
@@ -125,7 +121,6 @@ static int regulator_bcm2835_probe(struct device_d *dev)
 
 		rb->rdesc.ops = &bcm2835_ops;
 		rb->rdev.desc = &rb->rdesc;
-		rb->dev = dev;
 		rb->rdev.dev = dev;
 
 		ret = dev_regulator_register(&rb->rdev, rb->devname, NULL);
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index a509eb6ae6..54ba716a8f 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -44,7 +44,6 @@ static u32 ready_mask_table[STM32PWR_REG_NUM_REGS] = {
 
 struct stm32_pwr_reg {
 	void __iomem *base;
-	struct device_d *dev;
 	u32 ready_mask;
 	struct regulator_dev rdev;
 	struct regulator *supply;
@@ -97,7 +96,7 @@ static int stm32_pwr_reg_enable(struct regulator_dev *rdev)
 	ret = readx_poll_timeout(stm32_pwr_reg_is_ready, rdev, val, val,
 				 20 * USEC_PER_MSEC);
 	if (ret)
-		dev_err(priv->dev, "%s: regulator enable timed out!\n",
+		dev_err(rdev->dev, "%s: regulator enable timed out!\n",
 			desc->name);
 
 	return ret;
@@ -118,7 +117,7 @@ static int stm32_pwr_reg_disable(struct regulator_dev *rdev)
 	ret = readx_poll_timeout(stm32_pwr_reg_is_ready, rdev, val, !val,
 				 20 * USEC_PER_MSEC);
 	if (ret)
-		dev_err(priv->dev, "%s: regulator disable timed out!\n",
+		dev_err(rdev->dev, "%s: regulator disable timed out!\n",
 			desc->name);
 
 	regulator_disable(priv->supply);
@@ -179,7 +178,6 @@ static int stm32_pwr_regulator_probe(struct device_d *dev)
 		priv = xzalloc(sizeof(*priv));
 		priv->base = IOMEM(iores->start);
 		priv->ready_mask = ready_mask_table[i];
-		priv->dev = dev;
 
 		priv->rdev.desc = &desc->desc;
 		priv->rdev.dev = dev;
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index 60905d394e..61227e0855 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -21,7 +21,6 @@
  * @icc_mask: icc register mask
  */
 struct stpmic1_regulator_cfg {
-	struct device_d *dev;
 	struct regulator_dev rdev;
 	struct regulator_desc desc;
 	u8 mask_reset_reg;
@@ -388,7 +387,6 @@ static int stpmic1_regulator_register(struct device_d *dev, int id,
 		return 0;
 	}
 
-	cfg->dev = dev;
 	cfg->rdev.desc = &cfg->desc;
 	cfg->rdev.dev = dev;
 	cfg->rdev.regmap = dev_get_regmap(dev->parent, NULL);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
