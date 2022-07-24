Delivery-date: Sun, 24 Jul 2022 08:08:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUnE-001iLa-Fz
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:08:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFUnB-0006Tc-G2
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:08:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=19bT9WnkLBseDXduBDpu53sQHBATnpjvZct322SDH3g=; b=CB+xNedi+/owtZRGiutm0q9eTy
	H9yxX5Cxl44NrrYCbsPTZ01SCeLJv0mXs3cyILWRtutNVug07esHc9wfFwsd0Y4mBfSI5xoDgUqVg
	tgH2YGK3xAugZiHZqTNqaiKfyeA0u1jVD9tQyE3dazbrsQNnHNepWjcrUDI8hASB4oZlIoVNNcdEg
	+CDdbC+kqSnap4kVj5Mwfj9G8u2T0TISA5fF/zjpWg6BLfHNaKyjU11biUtenRoAL/3QSM9lYBY6O
	D8R3kjhxh0CG7LcC2Cb/XS9mNkkkuuXMcbhUn+sVFguhxcq6KlfFFSMBh9zO8Vm1gAedFH8BKdUao
	7qQlz2wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlW-00GzrG-Tw; Sun, 24 Jul 2022 06:06:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFUlG-00Gzin-5c
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:06:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlB-00065S-9F; Sun, 24 Jul 2022 08:06:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUlA-002rUK-Hm; Sun, 24 Jul 2022 08:06:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFUl9-007R2l-4u; Sun, 24 Jul 2022 08:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:06:27 +0200
Message-Id: <20220724060629.1772193-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
References: <20220724060629.1772193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_230642_271755_228A1C3A 
X-CRM114-Status: GOOD (  22.36  )
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
Subject: [PATCH v2 4/6] regulator: recursively enable/disable regulator dependency tree
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
v1 -> v2:
  - resolve parent supply in regulator_enable for always_on || boot_on
    regulators
  - don't propagate resolution breakage for non-deep probe systems
---
 drivers/regulator/core.c | 61 ++++++++++++++++++++++++++++++++++++++--
 include/regulator.h      |  5 ++++
 2 files changed, 63 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 4eeb00e5a363..c58999420b86 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -9,6 +9,7 @@
 #include <of.h>
 #include <malloc.h>
 #include <linux/err.h>
+#include <deep-probe.h>
 
 static LIST_HEAD(regulator_list);
 
@@ -42,6 +43,7 @@ static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
 
 static int regulator_enable_internal(struct regulator_internal *ri)
 {
+	struct regulator_dev *rdev = ri->rdev;
 	int ret;
 
 	if (ri->enable_count) {
@@ -49,13 +51,20 @@ static int regulator_enable_internal(struct regulator_internal *ri)
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
 
@@ -90,7 +99,7 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 
 	ri->enable_count--;
 
-	return 0;
+	return regulator_disable(rdev->supply);
 }
 
 static int regulator_set_voltage_internal(struct regulator_internal *ri,
@@ -120,6 +129,41 @@ static int regulator_set_voltage_internal(struct regulator_internal *ri,
 	return -ENOSYS;
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
+	if (IS_ERR(supply)) {
+		if (deep_probe_is_supported())
+			return PTR_ERR(supply);
+
+		/* For historic reasons, some regulator consumers don't handle
+		 * -EPROBE_DEFER (e.g. vmmc-supply). If we now start propagating
+		 * parent EPROBE_DEFER, previously requested vmmc-supply with
+		 * always-on parent that worked before will end up not being
+		 * requested breaking MMC use. So for non-deep probe systems,
+		 * just make best effort to resolve, but don't fail the get if
+		 * we couldn't. If you want to get rid of this warning, consider
+		 * migrating your platform to have deep probe support.
+		 */
+		dev_warn(rdev->dev, "Failed to get '%s' regulator (ignored).\n",
+			 supply_name);
+		return 0;
+	}
+
+	rdev->supply = supply;
+	return 0;
+}
+
 static struct regulator_internal * __regulator_register(struct regulator_dev *rd, const char *name)
 {
 	struct regulator_internal *ri;
@@ -136,6 +180,10 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
 		ri->name = xstrdup(name);
 
 	if (rd->boot_on || rd->always_on) {
+		ret = regulator_resolve_supply(ri->rdev);
+		if (ret < 0)
+			goto err;
+
 		ret = regulator_enable_internal(ri);
 		if (ret && ret != -ENOSYS)
 			goto err;
@@ -338,6 +386,7 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 {
 	struct regulator_internal *ri = NULL;
 	struct regulator *r;
+	int ret;
 
 	if (dev->device_node) {
 		ri = of_regulator_get(dev, supply);
@@ -354,6 +403,10 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 	if (!ri)
 		return NULL;
 
+	ret = regulator_resolve_supply(ri->rdev);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
 	r = xzalloc(sizeof(*r));
 	r->ri = ri;
 	r->dev = dev;
@@ -595,6 +648,8 @@ int regulator_get_voltage(struct regulator *regulator)
 		ret = rdev->desc->fixed_uV;
 	} else if (ri->min_uv == ri->max_uv) {
 		ret = ri->min_uv;
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



