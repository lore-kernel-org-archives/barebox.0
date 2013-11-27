Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlbdL-0005CO-Kj
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 09:42:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2013 10:41:47 +0100
Message-Id: <1385545308-22820-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385545308-22820-1-git-send-email-s.hauer@pengutronix.de>
References: <1385545308-22820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] pinctrl: Add functions to select pinctrl from device_node
To: barebox@lists.infradead.org

Instead of requiring a device pointer, add a functions to select
the pinctrl state based on a device node.
The AM33xx cpsw devicetree description has several subdevices with
pinctrl information attached to them. In barebox we do not handle
the subdevices as distinct devices, so the pinctrl is never configured
correctly and the mdio bus subdevice stops working. This patch makes
it possible to configure the pinctrl without having a device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c | 24 ++++++++++++++++++------
 include/pinctrl.h         | 12 ++++++++++++
 2 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 7f76d5a..8963ac7 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -51,7 +51,7 @@ static int pinctrl_config_one(struct device_node *np)
 	return pdev->ops->set_state(pdev, np);
 }
 
-int pinctrl_select_state(struct device_d *dev, const char *name)
+int of_pinctrl_select_state(struct device_node *np, const char *name)
 {
 	int state, ret;
 	char *propname;
@@ -59,13 +59,9 @@ int pinctrl_select_state(struct device_d *dev, const char *name)
 	const __be32 *list;
 	int size, config;
 	phandle phandle;
-	struct device_node *np_config, *np;
+	struct device_node *np_config;
 	const char *statename;
 
-	np = dev->device_node;
-	if (!np)
-		return 0;
-
 	if (!of_find_property(np, "pinctrl-0", NULL))
 		return 0;
 
@@ -127,6 +123,22 @@ err:
 	return ret;
 }
 
+int of_pinctrl_select_state_default(struct device_node *np)
+{
+	return of_pinctrl_select_state(np, "default");
+}
+
+int pinctrl_select_state(struct device_d *dev, const char *name)
+{
+	struct device_node *np;
+
+	np = dev->device_node;
+	if (!np)
+		return 0;
+
+	return of_pinctrl_select_state(np, name);
+}
+
 int pinctrl_select_state_default(struct device_d *dev)
 {
 	return pinctrl_select_state(dev, "default");
diff --git a/include/pinctrl.h b/include/pinctrl.h
index 7323f8b..0f03b10 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -20,6 +20,8 @@ void pinctrl_unregister(struct pinctrl_device *pdev);
 #ifdef CONFIG_PINCTRL
 int pinctrl_select_state(struct device_d *dev, const char *state);
 int pinctrl_select_state_default(struct device_d *dev);
+int of_pinctrl_select_state(struct device_node *np, const char *state);
+int of_pinctrl_select_state_default(struct device_node *np);
 #else
 static inline int pinctrl_select_state(struct device_d *dev, const char *state)
 {
@@ -30,6 +32,16 @@ static inline int pinctrl_select_state_default(struct device_d *dev)
 {
 	return -ENODEV;
 }
+
+static inline int of_pinctrl_select_state(struct device_node *np, const char *state)
+{
+	return -ENODEV;
+}
+
+static inline int of_pinctrl_select_state_default(struct device_node *np)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* PINCTRL_H */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
