Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0nMg-0001vV-Pr
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 09:24:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2015 10:24:31 +0100
Message-Id: <1448270671-24307-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1448270671-24307-1-git-send-email-s.hauer@pengutronix.de>
References: <1448270671-24307-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] reset: Add gpio reset support
To: Barebox List <barebox@lists.infradead.org>

If a device has the reset-gpios property we can support this through
the reset controller API, so drivers do not have to open code the
support for this property each time themselves as done a few dozen times
in the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/reset/core.c  | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/linux/reset.h |  8 ++++++
 2 files changed, 87 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 1821283..0f900a9 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -9,7 +9,9 @@
  * (at your option) any later version.
  */
 #include <common.h>
+#include <gpio.h>
 #include <malloc.h>
+#include <of_gpio.h>
 #include <linux/err.h>
 #include <linux/kernel.h>
 #include <linux/reset.h>
@@ -26,6 +28,10 @@ static LIST_HEAD(reset_controller_list);
  */
 struct reset_control {
 	struct reset_controller_dev *rcdev;
+
+	int gpio;
+	int gpio_active_high;
+
 	struct device_d *dev;
 	unsigned int id;
 };
@@ -103,6 +109,9 @@ int reset_control_assert(struct reset_control *rstc)
 	if (!rstc)
 		return 0;
 
+	if (rstc->gpio >= 0)
+		return gpio_direction_output(rstc->gpio, rstc->gpio_active_high);
+
 	if (rstc->rcdev->ops->assert)
 		return rstc->rcdev->ops->assert(rstc->rcdev, rstc->id);
 
@@ -119,6 +128,9 @@ int reset_control_deassert(struct reset_control *rstc)
 	if (!rstc)
 		return 0;
 
+	if (rstc->gpio >= 0)
+		return gpio_direction_output(rstc->gpio, !rstc->gpio_active_high);
+
 	if (rstc->rcdev->ops->deassert)
 		return rstc->rcdev->ops->deassert(rstc->rcdev, rstc->id);
 
@@ -183,6 +195,29 @@ struct reset_control *of_reset_control_get(struct device_node *node,
 }
 EXPORT_SYMBOL_GPL(of_reset_control_get);
 
+struct reset_control *gpio_reset_control_get(struct device_d *dev, const char *id)
+{
+	struct reset_control *rc;
+	int gpio;
+	enum of_gpio_flags flags;
+
+	if (id)
+		return ERR_PTR(-EINVAL);
+
+	if (!of_get_property(dev->device_node, "reset-gpios", NULL))
+		return NULL;
+
+	gpio = of_get_named_gpio_flags(dev->device_node, "reset-gpios", 0, &flags);
+	if (gpio < 0)
+		return ERR_PTR(gpio);
+
+	rc = xzalloc(sizeof(*rc));
+	rc->gpio = gpio;
+	rc->gpio_active_high = !(flags & OF_GPIO_ACTIVE_LOW);
+
+	return rc;
+}
+
 /**
  * reset_control_get - Lookup and obtain a reference to a reset controller.
  * @dev: device to be reset by the controller
@@ -203,6 +238,16 @@ struct reset_control *reset_control_get(struct device_d *dev, const char *id)
 	if (IS_ERR(rstc))
 		return ERR_CAST(rstc);
 
+	/*
+	 * If there is no dedicated reset controller device, check if we have
+	 * a reset line controlled by a GPIO instead.
+	 */
+	if (!rstc) {
+		rstc = gpio_reset_control_get(dev, id);
+		if (IS_ERR(rstc))
+			return ERR_CAST(rstc);
+	}
+
 	if (!rstc)
 		return NULL;
 
@@ -241,8 +286,12 @@ int device_reset(struct device_d *dev)
 	int ret;
 
 	rstc = reset_control_get(dev, NULL);
-	if (IS_ERR(rstc))
+	if (IS_ERR(rstc)) {
+		if (PTR_ERR(rstc) == -ENOENT)
+			return 0;
+
 		return PTR_ERR(rstc);
+	}
 
 	ret = reset_control_reset(rstc);
 
@@ -251,3 +300,32 @@ int device_reset(struct device_d *dev)
 	return ret;
 }
 EXPORT_SYMBOL_GPL(device_reset);
+
+int device_reset_us(struct device_d *dev, int us)
+{
+	struct reset_control *rstc;
+	int ret;
+
+	rstc = reset_control_get(dev, NULL);
+	if (IS_ERR(rstc)) {
+		if (PTR_ERR(rstc) == -ENOENT)
+			return 0;
+
+		return PTR_ERR(rstc);
+	}
+
+	ret = reset_control_assert(rstc);
+	if (ret)
+		return ret;
+
+	udelay(us);
+
+	ret = reset_control_deassert(rstc);
+	if (ret)
+		return ret;
+
+	reset_control_put(rstc);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(device_reset_us);
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 3f810bd..be0d1bb 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -15,6 +15,8 @@ void reset_control_put(struct reset_control *rstc);
 
 int __must_check device_reset(struct device_d *dev);
 
+int __must_check device_reset_us(struct device_d *dev, int us);
+
 #else
 
 static inline int reset_control_reset(struct reset_control *rstc)
@@ -40,6 +42,12 @@ static inline void reset_control_put(struct reset_control *rstc)
 	WARN_ON(1);
 }
 
+static inline int device_reset_us(struct device_d *dev, int us)
+{
+	WARN_ON(1);
+	return 0;
+}
+
 #endif /* CONFIG_RESET_CONTROLLER */
 
 #endif
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
