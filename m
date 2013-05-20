Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R7-S6
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:19 +0200
Message-Id: <1369059260-28872-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
References: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] of: Add of_match_node function
To: barebox@lists.infradead.org

To match a of_device_id arrays against a device_node. Same functionality
as in the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 35 +++++++++++++++++++++++++----------
 include/driver.h  |  2 +-
 include/of.h      |  3 +++
 3 files changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c3395cf..85d9dc0 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -295,21 +295,36 @@ int of_device_is_compatible(const struct device_node *device,
 }
 EXPORT_SYMBOL(of_device_is_compatible);
 
+/**
+ * of_match_node - Tell if an device_node has a matching of_match structure
+ *      @matches:       array of of device match structures to search in
+ *      @node:          the of device structure to match against
+ *
+ *      Low level utility function used by device matching.
+ */
+const struct of_device_id *of_match_node(const struct of_device_id *matches,
+					 const struct device_node *node)
+{
+	while (matches->compatible) {
+		if (of_device_is_compatible(node, matches->compatible) == 1)
+			return matches;
+		matches++;
+	}
+
+	return NULL;
+}
+
 int of_match(struct device_d *dev, struct driver_d *drv)
 {
-	struct of_device_id *id;
+	const struct of_device_id *id;
 
-	id = drv->of_compatible;
+	id = of_match_node(drv->of_compatible, dev->device_node);
+	if (!id)
+		return 1;
 
-	while (id->compatible) {
-		if (of_device_is_compatible(dev->device_node, id->compatible) == 1) {
-			dev->of_id_entry = id;
-			return 0;
-		}
-		id++;
-	}
+	dev->of_id_entry = id;
 
-	return 1;
+	return 0;
 }
 EXPORT_SYMBOL(of_match);
 
diff --git a/include/driver.h b/include/driver.h
index 716f792..7d5f65e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -106,7 +106,7 @@ struct device_d {
 	struct platform_device_id *id_entry;
 	struct device_node *device_node;
 
-	struct of_device_id *of_id_entry;
+	const struct of_device_id *of_id_entry;
 };
 
 /** @brief Describes a driver present in the system */
diff --git a/include/of.h b/include/of.h
index 4dcf37e..3f64667 100644
--- a/include/of.h
+++ b/include/of.h
@@ -170,6 +170,9 @@ struct device_node *of_create_node(struct device_node *root, const char *path);
 struct device_node *of_get_root_node(void);
 int of_set_root_node(struct device_node *);
 
+const struct of_device_id *of_match_node(const struct of_device_id *matches,
+					 const struct device_node *node);
+
 struct cdev;
 
 #ifdef CONFIG_OFTREE
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
