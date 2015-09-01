Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWeqj-0007fd-P9
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 06:15:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Sep 2015 08:14:48 +0200
Message-Id: <1441088089-20649-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1441088089-20649-1-git-send-email-s.hauer@pengutronix.de>
References: <1441088089-20649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] of_path: Allow pointing directly to the partition
To: Barebox List <barebox@lists.infradead.org>

We could only point to partitions in the device tree by using
&norflash, "partname:barebox-environment". Allow to point to the
partition directly without having to parse the partition labels.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,environment.rst    |  5 +++--
 drivers/of/of_path.c                                       | 14 +++++++++-----
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index d472f66..d5e52ea 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -8,8 +8,9 @@ Required properties:
 * ``compatible``: should be ``barebox,environment``
 * ``device-path``: path to the environment
 
-The device-path is a multistring property. The first string should be a
-nodepath to the node containing the physical device of the environment.
+The device-path is a multistring property. The first string should contain
+a nodepath to the node containing the physical device of the environment or
+a nodepath to a partition described by the OF partition binding.
 The subsequent strings are of the form <type>:<options> to further describe
 the path to the environment. Supported values for <type>:
 
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 2dc7848..992972c 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -117,7 +117,8 @@ out:
  * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
  *
  * paths in the devicetree have the form of a multistring property. The first
- * string contains the full path to the physical device containing the path.
+ * string contains the full path to the physical device containing the path or
+ * a full path to a partition described by the OF partition binding.
  * The remaining strings have the form "<type>:<options>". Currently supported
  * for <type> are:
  *
@@ -129,6 +130,7 @@ out:
  *
  * device-path = &mmc0, "partname:0";
  * device-path = &norflash, "partname:barebox-environment";
+ * device-path = &environment_nor;
  */
 int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
 {
@@ -147,13 +149,15 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 		return -ENODEV;
 
 	op.dev = of_find_device_by_node_path(rnode->full_name);
-	if (!op.dev)
-		return -ENODEV;
+	if (!op.dev) {
+		op.dev = of_find_device_by_node_path(rnode->parent->full_name);
+		if (!op.dev)
+			return -ENODEV;
+	}
 
 	device_detect(op.dev);
 
-	if (list_is_singular(&op.dev->cdevs))
-		op.cdev = list_first_entry(&op.dev->cdevs, struct cdev, devices_list);
+	op.cdev = cdev_by_device_node(rnode);
 
 	i = 1;
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
