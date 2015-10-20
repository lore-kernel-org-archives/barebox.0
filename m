Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoSSE-0001CN-Rl
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 08:39:35 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 20 Oct 2015 10:39:05 +0200
Message-Id: <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 1/8] of_path: of_find_path() factor out device detection
 logic into separate function
To: barebox@lists.infradead.org

This patch factors out the device detection logic into separate function, so
that it can be used from another function.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/of/of_path.c | 81 ++++++++++++++++++++++++++++------------------------
 1 file changed, 44 insertions(+), 37 deletions(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 992972c9b52e..b3ef26c6a50d 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -106,6 +106,48 @@ out:
 	return ret;
 }
 
+int __of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
+{
+	struct of_path op = {};
+	const char *str;
+	bool add_bb = false;
+	int i, ret;
+
+	op.dev = of_find_device_by_node_path(node->full_name);
+	if (!op.dev) {
+		op.dev = of_find_device_by_node_path(node->parent->full_name);
+		if (!op.dev)
+			return -ENODEV;
+	}
+
+	device_detect(op.dev);
+
+	op.cdev = cdev_by_device_node(node);
+
+	i = 1;
+
+	while (propname) {
+		ret = of_property_read_string_index(node, propname, i++, &str);
+		if (ret)
+			break;
+
+		ret = of_path_parse_one(&op, str);
+		if (ret)
+			return ret;
+	}
+
+	if (!op.cdev)
+		return -ENOENT;
+
+	if ((flags & OF_FIND_PATH_FLAGS_BB) && op.cdev->mtd &&
+	    mtd_can_have_bb(op.cdev->mtd))
+		add_bb = true;
+
+	*outpath = asprintf("/dev/%s%s", op.cdev->name, add_bb ? ".bb" : "");
+
+	return 0;
+}
+
 /**
  * of_find_path - translate a path description in the devicetree to a barebox
  *                path
@@ -134,11 +176,8 @@ out:
  */
 int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
 {
-	struct of_path op = {};
 	struct device_node *rnode;
-	const char *path, *str;
-	bool add_bb = false;
-	int i, ret;
+	const char *path;
 
 	path = of_get_property(node, propname, NULL);
 	if (!path)
@@ -148,37 +187,5 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 	if (!rnode)
 		return -ENODEV;
 
-	op.dev = of_find_device_by_node_path(rnode->full_name);
-	if (!op.dev) {
-		op.dev = of_find_device_by_node_path(rnode->parent->full_name);
-		if (!op.dev)
-			return -ENODEV;
-	}
-
-	device_detect(op.dev);
-
-	op.cdev = cdev_by_device_node(rnode);
-
-	i = 1;
-
-	while (1) {
-		ret = of_property_read_string_index(node, propname, i++, &str);
-		if (ret)
-			break;
-
-		ret = of_path_parse_one(&op, str);
-		if (ret)
-			return ret;
-	}
-
-	if (!op.cdev)
-		return -ENOENT;
-
-	if ((flags & OF_FIND_PATH_FLAGS_BB) && op.cdev->mtd &&
-	    mtd_can_have_bb(op.cdev->mtd))
-		add_bb = true;
-
-	*outpath = asprintf("/dev/%s%s", op.cdev->name, add_bb ? ".bb" : "");
-
-	return 0;
+	return __of_find_path(rnode, propname, outpath, flags);
 }
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
