Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82S-0003nM-SZ
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:12:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id 101so3164960pld.6
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:11:51 -0800
Message-Id: <20190109071210.18896-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/21] regulator: Port basic regmap regulator functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to be able to port Linux driver relying on this API, port
various regmap related regulator function to Barebox.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/regulator/Makefile  |  2 +-
 drivers/regulator/helpers.c | 87 +++++++++++++++++++++++++++++++++++++
 include/regulator.h         | 11 ++++-
 3 files changed, 98 insertions(+), 2 deletions(-)
 create mode 100644 drivers/regulator/helpers.c

diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index ff5daf9a7..36ce3e87f 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -1,4 +1,4 @@
-obj-$(CONFIG_REGULATOR) += core.o
+obj-$(CONFIG_REGULATOR) += core.o helpers.o
 obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
 obj-$(CONFIG_REGULATOR_BCM283X) += bcm2835.o
 obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
\ No newline at end of file
diff --git a/drivers/regulator/helpers.c b/drivers/regulator/helpers.c
new file mode 100644
index 000000000..4495b4403
--- /dev/null
+++ b/drivers/regulator/helpers.c
@@ -0,0 +1,87 @@
+#include <common.h>
+#include <regmap.h>
+#include <regulator.h>
+
+/**
+ * regulator_is_enabled_regmap - standard is_enabled() for regmap users
+ *
+ * @rdev: regulator to operate on
+ *
+ * Regulators that use regmap for their register I/O can set the
+ * enable_reg and enable_mask fields in their descriptor and then use
+ * this as their is_enabled operation, saving some code.
+ */
+int regulator_is_enabled_regmap(struct regulator_dev *rdev)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(rdev->regmap, rdev->desc->enable_reg, &val);
+	if (ret != 0)
+		return ret;
+
+	val &= rdev->desc->enable_mask;
+
+	if (rdev->desc->enable_is_inverted) {
+		if (rdev->desc->enable_val)
+			return val != rdev->desc->enable_val;
+		return val == 0;
+	} else {
+		if (rdev->desc->enable_val)
+			return val == rdev->desc->enable_val;
+		return val != 0;
+	}
+}
+EXPORT_SYMBOL_GPL(regulator_is_enabled_regmap);
+
+/**
+ * regulator_enable_regmap - standard enable() for regmap users
+ *
+ * @rdev: regulator to operate on
+ *
+ * Regulators that use regmap for their register I/O can set the
+ * enable_reg and enable_mask fields in their descriptor and then use
+ * this as their enable() operation, saving some code.
+ */
+int regulator_enable_regmap(struct regulator_dev *rdev)
+{
+	unsigned int val;
+
+	if (rdev->desc->enable_is_inverted) {
+		val = rdev->desc->disable_val;
+	} else {
+		val = rdev->desc->enable_val;
+		if (!val)
+			val = rdev->desc->enable_mask;
+	}
+
+	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
+				  rdev->desc->enable_mask, val);
+}
+EXPORT_SYMBOL_GPL(regulator_enable_regmap);
+
+/**
+ * regulator_disable_regmap - standard disable() for regmap users
+ *
+ * @rdev: regulator to operate on
+ *
+ * Regulators that use regmap for their register I/O can set the
+ * enable_reg and enable_mask fields in their descriptor and then use
+ * this as their disable() operation, saving some code.
+ */
+int regulator_disable_regmap(struct regulator_dev *rdev)
+{
+	unsigned int val;
+
+	if (rdev->desc->enable_is_inverted) {
+		val = rdev->desc->enable_val;
+		if (!val)
+			val = rdev->desc->enable_mask;
+	} else {
+		val = rdev->desc->disable_val;
+	}
+
+	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
+				  rdev->desc->enable_mask, val);
+}
+EXPORT_SYMBOL_GPL(regulator_disable_regmap);
diff --git a/include/regulator.h b/include/regulator.h
index 907073607..1824e6ea1 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -6,10 +6,17 @@ struct regulator;
 
 struct regulator_desc {
 	const struct regulator_ops *ops;
+
+	unsigned int enable_reg;
+	unsigned int enable_mask;
+	unsigned int enable_val;
+	unsigned int disable_val;
+	bool enable_is_inverted;
 };
 
 struct regulator_dev {
 	const struct regulator_desc *desc;
+	struct regmap *regmap;
 	int boot_on;
 };
 
@@ -39,7 +46,9 @@ void regulators_print(void);
 struct regulator *regulator_get(struct device_d *, const char *);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
-
+int regulator_is_enabled_regmap(struct regulator_dev *);
+int regulator_enable_regmap(struct regulator_dev *);
+int regulator_disable_regmap(struct regulator_dev *);
 #else
 
 static inline struct regulator *regulator_get(struct device_d *dev, const char *id)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
