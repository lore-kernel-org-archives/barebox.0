Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacl-00035h-3x
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:56 +0200
Message-Id: <20160929123900.24853-5-s.hauer@pengutronix.de>
In-Reply-To: <20160929123900.24853-1-s.hauer@pengutronix.de>
References: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] phy: Introduce of_phy_get_by_phandle
To: Barebox List <barebox@lists.infradead.org>

Currently generic phy support assumes that the standard phy binding from
dts/Bindings/phy/phy-bindings.txt is used. This adds a helper function
which can be used to retrieve a phy when this standard binding is not
used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/phy-core.c  | 36 ++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h |  8 ++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 67af14f..7c1f3d4 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -268,6 +268,42 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
 }
 
 /**
+ * of_phy_get_by_phandle() - lookup and obtain a reference to a phy.
+ * @dev: device that requests this phy
+ * @phandle - name of the property holding the phy phandle value
+ * @index - the index of the phy
+ *
+ * Returns the phy driver, after getting a refcount to it; or
+ * -ENODEV if there is no such phy. The caller is responsible for
+ * calling phy_put() to release that count.
+ */
+struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
+				  u8 index)
+{
+	struct device_node *np;
+	struct phy_provider *phy_provider;
+
+	if (!dev->device_node) {
+		dev_dbg(dev, "device does not have a device node entry\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	np = of_parse_phandle(dev->device_node, phandle, index);
+	if (!np) {
+		dev_dbg(dev, "failed to get %s phandle in %s node\n", phandle,
+			dev->device_node->full_name);
+		return ERR_PTR(-ENODEV);
+	}
+
+	phy_provider = of_phy_provider_lookup(np);
+	if (IS_ERR(phy_provider)) {
+		return ERR_PTR(-ENODEV);
+	}
+
+	return phy_provider->of_xlate(phy_provider->dev, NULL);
+}
+
+/**
  * phy_get() - lookup and obtain a reference to a phy.
  * @dev: device that requests this phy
  * @string: the phy name as given in the dt data or the name of the controller
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 94f0044..0d78923 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -136,6 +136,8 @@ static inline void phy_set_bus_width(struct phy *phy, int bus_width)
 }
 struct phy *phy_get(struct device_d *dev, const char *string);
 struct phy *phy_optional_get(struct device_d *dev, const char *string);
+struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
+				  u8 index);
 void phy_put(struct phy *phy);
 struct phy *of_phy_get(struct device_node *np, const char *con_id);
 struct phy *of_phy_simple_xlate(struct device_d *dev,
@@ -198,6 +200,12 @@ static inline struct phy *phy_optional_get(struct device_d *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct phy *of_phy_get_by_phandle(struct device_d *dev,
+						const char *phandle, u8 index)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline void phy_put(struct phy *phy)
 {
 }
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
