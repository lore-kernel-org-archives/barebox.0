Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0nMg-0001v3-Po
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 09:24:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2015 10:24:29 +0100
Message-Id: <1448270671-24307-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] reset: Allow dummy reset lines
To: Barebox List <barebox@lists.infradead.org>

Treat NULL as a dummy reset line which is returned by the reset core
when there is no reset line connected to a device (that is, no
reset is described in the device tree). With this consumers can
just use the reset functions without having to check for existence.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/reset/core.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 101913a..1821283 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -84,6 +84,9 @@ EXPORT_SYMBOL_GPL(reset_controller_unregister);
  */
 int reset_control_reset(struct reset_control *rstc)
 {
+	if (!rstc)
+		return 0;
+
 	if (rstc->rcdev->ops->reset)
 		return rstc->rcdev->ops->reset(rstc->rcdev, rstc->id);
 
@@ -97,6 +100,9 @@ EXPORT_SYMBOL_GPL(reset_control_reset);
  */
 int reset_control_assert(struct reset_control *rstc)
 {
+	if (!rstc)
+		return 0;
+
 	if (rstc->rcdev->ops->assert)
 		return rstc->rcdev->ops->assert(rstc->rcdev, rstc->id);
 
@@ -110,6 +116,9 @@ EXPORT_SYMBOL_GPL(reset_control_assert);
  */
 int reset_control_deassert(struct reset_control *rstc)
 {
+	if (!rstc)
+		return 0;
+
 	if (rstc->rcdev->ops->deassert)
 		return rstc->rcdev->ops->deassert(rstc->rcdev, rstc->id);
 
@@ -136,6 +145,9 @@ struct reset_control *of_reset_control_get(struct device_node *node,
 	int rstc_id;
 	int ret;
 
+	if (!of_get_property(node, "resets", NULL))
+		return NULL;
+
 	if (id)
 		index = of_property_match_string(node,
 						 "reset-names", id);
@@ -188,8 +200,13 @@ struct reset_control *reset_control_get(struct device_d *dev, const char *id)
 		return ERR_PTR(-EINVAL);
 
 	rstc = of_reset_control_get(dev->device_node, id);
-	if (!IS_ERR(rstc))
-		rstc->dev = dev;
+	if (IS_ERR(rstc))
+		return ERR_CAST(rstc);
+
+	if (!rstc)
+		return NULL;
+
+	rstc->dev = dev;
 
 	return rstc;
 }
@@ -202,7 +219,7 @@ EXPORT_SYMBOL_GPL(reset_control_get);
 
 void reset_control_put(struct reset_control *rstc)
 {
-	if (IS_ERR(rstc))
+	if (IS_ERR_OR_NULL(rstc))
 		return;
 
 	kfree(rstc);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
