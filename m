Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuwO-0002RE-ON
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:27:02 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3B7D61004759
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:26:39 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:26:15 +0100
Message-Id: <1421130376-32428-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113062416.GB30554@ns203013.ovh.net>
 <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] regulator: allow to use it with non DT device
To: barebox@lists.infradead.org

this will use the device name as regulator name

with the same Algo as clkdev for lookup

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/regulator/Kconfig |  2 +-
 drivers/regulator/core.c  | 98 +++++++++++++++++++++++++++++++++++++++--------
 include/regulator.h       | 10 +++++
 3 files changed, 93 insertions(+), 17 deletions(-)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 493b18a..4085b3f 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1,5 +1,4 @@
 menuconfig REGULATOR
-	depends on OFDEVICE
 	bool "voltage regulator support"
 
 if REGULATOR
@@ -7,6 +6,7 @@ if REGULATOR
 config REGULATOR_FIXED
 	bool "fixed/gpio regulator"
 	depends on GENERIC_GPIO
+	depends on OFDEVICE
 	help
 	  This enables a simple fixed regulator. It is used for regulators
 	  which are not software controllable or controllable via gpio.
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 2808c27..a3c9e41 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -33,6 +33,7 @@ struct regulator_internal {
 	int min_uv;
 	int max_uv;
 	char *name;
+	const char *supply;
 	struct list_head consumer_list;
 };
 
@@ -42,6 +43,25 @@ struct regulator {
 	struct device_d *dev;
 };
 
+static struct regulator_internal * __regulator_register(struct regulator_dev *rd, const char *name)
+{
+	struct regulator_internal *ri;
+
+	ri = xzalloc(sizeof(*ri));
+	ri->rdev = rd;
+
+	INIT_LIST_HEAD(&ri->consumer_list);
+
+	list_add_tail(&ri->list, &regulator_list);
+
+	if (name)
+		ri->name = xstrdup(name);
+
+	return ri;
+}
+
+
+#ifdef CONFIG_OFDEVICE
 /*
  * of_regulator_register - register a regulator corresponding to a device_node
  * @rd:		the regulator device providing the ops
@@ -54,18 +74,10 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 	struct regulator_internal *ri;
 	const char *name;
 
-	ri = xzalloc(sizeof(*ri));
-	ri->rdev = rd;
-	ri->node = node;
-
-	INIT_LIST_HEAD(&ri->consumer_list);
-
-	list_add_tail(&ri->list, &regulator_list);
-
 	name = of_get_property(node, "regulator-name", NULL);
 
-	if (name)
-		ri->name = xstrdup(name);
+	ri = __regulator_register(rd, name);
+	ri->node = node;
 
 	of_property_read_u32(node, "regulator-enable-ramp-delay",
 			&ri->enable_time_us);
@@ -127,6 +139,55 @@ out:
 
 	return ri;
 }
+#else
+static struct regulator_internal *of_regulator_get(struct device_d *dev, const char *supply)
+{
+	return NULL;
+}
+#endif
+
+int dev_regulator_register(struct regulator_dev *rd, const char * name, const char* supply)
+{
+	struct regulator_internal *ri;
+
+	ri = __regulator_register(rd, name);
+
+	ri->supply = supply;
+
+	return 0;
+}
+
+static struct regulator_internal *dev_regulator_get(struct device_d *dev, const char *supply)
+{
+	struct regulator_internal *ri;
+	struct regulator_internal *ret = NULL;
+	int match, best = 0;
+	const char *dev_id = dev ? dev_name(dev) : NULL;
+
+	list_for_each_entry(ri, &regulator_list, list) {
+		match = 0;
+		if (ri->name) {
+			if (!dev_id || strcmp(ri->name, dev_id))
+				continue;
+			match += 2;
+		}
+		if (ri->supply) {
+			if (!supply || strcmp(ri->supply, supply))
+				continue;
+			match += 1;
+		}
+
+		if (match > best) {
+			ret = ri;
+			if (match != 3)
+				best = match;
+			else
+				break;
+		}
+	}
+
+	return ret;
+}
 
 /*
  * regulator_get - get the supply for a device.
@@ -140,15 +201,20 @@ out:
  */
 struct regulator *regulator_get(struct device_d *dev, const char *supply)
 {
-	struct regulator_internal *ri;
+	struct regulator_internal *ri = NULL;
 	struct regulator *r;
 
-	if (!dev->device_node)
-		return NULL;
+	if (dev->device_node) {
+		ri = of_regulator_get(dev, supply);
+		if (IS_ERR(ri))
+			return ERR_CAST(ri);
+	}
 
-	ri = of_regulator_get(dev, supply);
-	if (IS_ERR(ri))
-		return ERR_CAST(ri);
+	if (!ri) {
+		ri = dev_regulator_get(dev, supply);
+		if (IS_ERR(ri))
+			return ERR_CAST(ri);
+	}
 
 	if (!ri)
 		return NULL;
diff --git a/include/regulator.h b/include/regulator.h
index 26a5e56..a43d3df 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -15,7 +15,17 @@ struct regulator_ops {
 	int (*is_enabled) (struct regulator_dev *);
 };
 
+#ifdef CONFIG_OFDEVICE
 int of_regulator_register(struct regulator_dev *rd, struct device_node *node);
+#else
+static inline int of_regulator_register(struct regulator_dev *rd,
+					struct device_node *node)
+{
+	return -ENOSYS;
+}
+#endif
+int dev_regulator_register(struct regulator_dev *rd, const char * name,
+			   const char* supply);
 
 void regulators_print(void);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
