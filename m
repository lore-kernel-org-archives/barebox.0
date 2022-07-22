Delivery-date: Fri, 22 Jul 2022 14:30:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oErnA-0003mt-PS
	for lore@lore.pengutronix.de; Fri, 22 Jul 2022 14:30:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oErn8-0007sw-4c
	for lore@pengutronix.de; Fri, 22 Jul 2022 14:30:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FqMHxXGqk8weIHGalgULkTjekE+mHA4+TY7s+pimyAo=; b=Sj8VLQvycK76Bfe6AjvzStf823
	NlLp2behL76/3nNUc1ee76lgb3EDhWjoK3Bh2ToMAFS9p6EO6RGjuzKl9gVQUpkyygBznEMNxciN+
	gkdMF7D3Q784HrQ32C5P974w4Z2zT8SCIKwoC+7mypO7UKRef/+2ZMeoSLnTrV5V+PABDiSmnwirW
	wBA1dDVGLTAilptffHfeMDOrvyyKEgIHC0KajFzKODs0HyeazCc1/XXnQN+8t0OyE3g+PQ67OFZDd
	Mq73drxlsabDuB1dTweXJiKuWMlj2oyeOQiZdej1OrYRvUnGSRsK0jB9nDOz4WX9fCLLX9+JsDD66
	n/xDjuIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oErlg-004EFK-2X; Fri, 22 Jul 2022 12:28:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oErlX-004E85-Dp
	for barebox@lists.infradead.org; Fri, 22 Jul 2022 12:28:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oErlV-0007fW-Am; Fri, 22 Jul 2022 14:28:21 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oErlU-002VkT-3F; Fri, 22 Jul 2022 14:28:20 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oErlT-00FLrB-81; Fri, 22 Jul 2022 14:28:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Jul 2022 14:28:17 +0200
Message-Id: <20220722122818.3658884-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220722122818.3658884-1-a.fatoum@pengutronix.de>
References: <20220722122818.3658884-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220722_052823_511097_1747E7B0 
X-CRM114-Status: GOOD (  18.80  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] regulator: recursively enable/disable regulator dependency tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Regulators may themself have other regulators supplying them.
The regulators need to be enabled recursively for proper operation.

Linux handles this by allows drivers to provide
struct regulator_desc::supply_name, which will be requested when the
regulator itself is requested and enabled/disabled as necessary.

As no driver yet uses this new member, this should introduce no
functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 46 +++++++++++++++++++++++++++++++++++-----
 include/regulator.h      |  5 +++++
 2 files changed, 46 insertions(+), 5 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 29a335f50278..acbb3c11d6ea 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -42,6 +42,7 @@ static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
 
 static int regulator_enable_internal(struct regulator_internal *ri)
 {
+	struct regulator_dev *rdev = ri->rdev;
 	int ret;
 
 	if (ri->enable_count) {
@@ -49,13 +50,20 @@ static int regulator_enable_internal(struct regulator_internal *ri)
 		return 0;
 	}
 
-	if (!ri->rdev->desc->ops->enable)
+	if (!rdev->desc->ops->enable)
 		return -ENOSYS;
 
-	ret = ri->rdev->desc->ops->enable(ri->rdev);
+	/* turn on parent regulator */
+	ret = regulator_enable(rdev->supply);
 	if (ret)
 		return ret;
 
+	ret = rdev->desc->ops->enable(ri->rdev);
+	if (ret) {
+		regulator_disable(rdev->supply);
+		return ret;
+	}
+
 	if (ri->enable_time_us)
 		udelay(ri->enable_time_us);
 
@@ -66,6 +74,7 @@ static int regulator_enable_internal(struct regulator_internal *ri)
 
 static int regulator_disable_internal(struct regulator_internal *ri)
 {
+	struct regulator_dev *rdev = ri->rdev;
 	int ret;
 
 	if (!ri->enable_count)
@@ -76,16 +85,16 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 		return 0;
 	}
 
-	if (!ri->rdev->desc->ops->disable)
+	if (!rdev->desc->ops->disable)
 		return -ENOSYS;
 
-	ret = ri->rdev->desc->ops->disable(ri->rdev);
+	ret = rdev->desc->ops->disable(rdev);
 	if (ret)
 		return ret;
 
 	ri->enable_count--;
 
-	return 0;
+	return regulator_disable(rdev->supply);
 }
 
 static int regulator_set_voltage_internal(struct regulator_internal *ri,
@@ -319,6 +328,26 @@ static struct regulator_internal *dev_regulator_get(struct device_d *dev, const
 	return ret;
 }
 
+static int regulator_resolve_supply(struct regulator_dev *rdev)
+{
+	struct regulator *supply;
+	const char *supply_name;
+
+	if (!rdev || rdev->supply)
+		return 0;
+
+	supply_name = rdev->desc->supply_name;
+	if (!supply_name)
+		return 0;
+
+	supply = regulator_get(rdev->dev, supply_name);
+	if (IS_ERR(supply))
+		return PTR_ERR(supply);
+
+	rdev->supply = supply;
+	return 0;
+}
+
 /*
  * regulator_get - get the supply for a device.
  * @dev:	the device a supply is requested for
@@ -333,6 +362,7 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 {
 	struct regulator_internal *ri = NULL;
 	struct regulator *r;
+	int ret;
 
 	if (dev->device_node) {
 		ri = of_regulator_get(dev, supply);
@@ -349,6 +379,10 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 	if (!ri)
 		return NULL;
 
+	ret = regulator_resolve_supply(ri->rdev);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
 	r = xzalloc(sizeof(*r));
 	r->ri = ri;
 	r->dev = dev;
@@ -588,6 +622,8 @@ int regulator_get_voltage(struct regulator *regulator)
 		ret = rdev->desc->ops->list_voltage(rdev, 0);
 	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
 		ret = rdev->desc->fixed_uV;
+	} else if (rdev->supply) {
+		ret = regulator_get_voltage(rdev->supply);
 	} else {
 		return -EINVAL;
 	}
diff --git a/include/regulator.h b/include/regulator.h
index dfdfbf033262..1ae31ad7cf23 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -32,6 +32,8 @@ struct regulator_bulk_data {
  * structure contains the non-varying parts of the regulator
  * description.
  *
+ * @supply_name: Identifying the supply of this regulator
+ *
  * @n_voltages: Number of selectors available for ops.list_voltage().
  * @ops: Regulator operations table.
  *
@@ -57,6 +59,7 @@ struct regulator_bulk_data {
  */
 
 struct regulator_desc {
+	const char *supply_name;
 	unsigned n_voltages;
 	const struct regulator_ops *ops;
 
@@ -88,6 +91,8 @@ struct regulator_dev {
 	bool always_on;
 	/* the device this regulator device belongs to */
 	struct device_d *dev;
+	/* The regulator powering this device */
+	struct regulator *supply;
 };
 
 struct regulator_ops {
-- 
2.30.2



