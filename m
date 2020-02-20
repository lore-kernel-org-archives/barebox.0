Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ifE-0004NY-MJ
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 10:02:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2020 11:01:09 +0100
Message-Id: <20200220100109.18147-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200220100109.18147-1-a.fatoum@pengutronix.de>
References: <20200220100109.18147-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/6] phy: introduce phy_get_by_index
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de, rcz@pengutronix.de

The upstream (v5.6-rc1) device tree node of the stm32mp157c-dk2's OHCI
has a phys property, but not phy-names. We have no API to reference
such a phy easily (passing NULL isn't allowed). Add one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/phy-core.c  | 14 ++++++++++++++
 include/linux/phy/phy.h |  6 ++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index ad1e8147881b..ff6e35d16060 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -371,3 +371,17 @@ struct phy *phy_optional_get(struct device_d *dev, const char *string)
 	return phy;
 }
 
+/**
+ * phy_get_by_index() - lookup and obtain a reference to a phy by index.
+ * @dev: device with node that references this phy
+ * @index: index of the phy
+ *
+ * Gets the phy using _of_phy_get()
+ */
+struct phy *phy_get_by_index(struct device_d *dev, int index)
+{
+	if (!dev->device_node)
+		return ERR_PTR(-ENODEV);
+
+	return _of_phy_get(dev->device_node, index);
+}
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index df480d4634ac..8a28b8e068b1 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -149,6 +149,7 @@ struct phy_provider *__of_phy_provider_register(struct device_d *dev,
 	struct of_phandle_args *args));
 void of_phy_provider_unregister(struct phy_provider *phy_provider);
 struct usb_phy *phy_to_usbphy(struct phy *phy);
+struct phy *phy_get_by_index(struct device_d *dev, int index);
 #else
 static inline int phy_init(struct phy *phy)
 {
@@ -247,6 +248,11 @@ static inline struct usb_phy *phy_to_usbphy(struct phy *phy)
 	return NULL;
 }
 
+static struct phy *phy_get_by_index(struct device_d *dev, int index)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 #endif
 
 #endif /* __DRIVERS_PHY_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
