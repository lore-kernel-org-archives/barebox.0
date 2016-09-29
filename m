Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacY-00034O-8R
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:57 +0200
Message-Id: <20160929123900.24853-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] phy: Introduce to_usbphy conversion function
To: Barebox List <barebox@lists.infradead.org>

The generic phy support layer has the necessary list handling
and phy retrieval functions, so we should reuse them for usb
phys. This adds a phy_to_usbphy() conversion function which
drivers can implement which attach to the generic phy layer
and are really usb phys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/phy-core.c  | 12 ++++++++++++
 include/linux/phy/phy.h |  8 ++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 7c1f3d4..1b6a9f7 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <linux/phy/phy.h>
+#include <usb/phy.h>
 
 static LIST_HEAD(phy_provider_list);
 static int phy_ida;
@@ -201,6 +202,17 @@ int phy_power_off(struct phy *phy)
 	return 0;
 }
 
+struct usb_phy *phy_to_usbphy(struct phy *phy)
+{
+	if (!phy)
+		return NULL;
+
+	if (!phy->ops->to_usbphy)
+		return ERR_PTR(-EINVAL);
+
+	return phy->ops->to_usbphy(phy);
+}
+
 static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 {
 	struct phy_provider *phy_provider;
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 0d78923..5d96e02 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -33,6 +33,7 @@ struct phy_ops {
 	int	(*exit)(struct phy *phy);
 	int	(*power_on)(struct phy *phy);
 	int	(*power_off)(struct phy *phy);
+	struct usb_phy *(*to_usbphy)(struct phy *phy);
 };
 
 /**
@@ -150,6 +151,7 @@ struct phy_provider *__of_phy_provider_register(struct device_d *dev,
 	struct phy * (*of_xlate)(struct device_d *dev,
 	struct of_phandle_args *args));
 void of_phy_provider_unregister(struct phy_provider *phy_provider);
+struct usb_phy *phy_to_usbphy(struct phy *phy);
 #else
 static inline int phy_init(struct phy *phy)
 {
@@ -243,6 +245,12 @@ static inline struct phy_provider *__of_phy_provider_register(
 static inline void of_phy_provider_unregister(struct phy_provider *phy_provider)
 {
 }
+
+static inline struct usb_phy *phy_to_usbphy(struct phy *phy)
+{
+	return NULL;
+}
+
 #endif
 
 #endif /* __DRIVERS_PHY_H */
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
