Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ykptf-00081t-K6
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 08:20:43 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 22 Apr 2015 10:20:12 +0200
Message-Id: <1429690812-26083-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1429690812-26083-1-git-send-email-mkl@pengutronix.de>
References: <1429690812-26083-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 5/5] of_path: of_find_path(): add possibility to return .bb
 device
To: barebox@lists.infradead.org

This patch adds a flags argument to the of_find_path() function. The only flag
defined for now is OF_FIND_PATH_FLAGS_BB. When used on NAND devices, the
function returns the bad block aware device (the ".bb" device).

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/misc/state.c |  2 +-
 drivers/of/barebox.c | 20 +-------------------
 drivers/of/of_path.c | 12 ++++++++++--
 include/of.h         |  3 ++-
 4 files changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index f066a836cb93..3b07bb93d725 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -41,7 +41,7 @@ static int state_probe(struct device_d *dev)
 	if (IS_ERR(state))
 		return PTR_ERR(state);
 
-	ret = of_find_path(np, "backend", &path);
+	ret = of_find_path(np, "backend", &path, 0);
 	if (ret)
 		return ret;
 
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 0220bc6b3123..1b3078eb4757 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -31,28 +31,10 @@ static int environment_probe(struct device_d *dev)
 	char *path;
 	int ret;
 
-	ret = of_find_path(dev->device_node, "device-path", &path);
+	ret = of_find_path(dev->device_node, "device-path", &path, OF_FIND_PATH_FLAGS_BB);
 	if (ret)
 		return ret;
 
-	/*
-	 * The environment support is not bad block aware, hence we
-	 * have to use the .bb device. Test if we have a nand device
-	 * and if yes, append .bb to the filename.
-	 */
-	if (!strncmp(path, "/dev/", 5)) {
-		struct cdev *cdev;
-		char *cdevname;
-
-		cdevname = path + 5;
-		cdev = cdev_by_name(cdevname);
-		if (cdev && cdev->mtd && mtd_can_have_bb(cdev->mtd)) {
-			char *bbpath = asprintf("%s.bb", path);
-			free(path);
-			path = bbpath;
-		}
-	}
-
 	dev_info(dev, "setting default environment path to %s\n", path);
 
 	default_environment_path_set(path);
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index df63c5782a02..2dc784851de8 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -21,6 +21,8 @@
 #include <malloc.h>
 #include <of.h>
 
+#include <linux/mtd/mtd.h>
+
 struct of_path {
 	struct cdev *cdev;
 	struct device_d *dev;
@@ -112,6 +114,7 @@ out:
  * @propname: the property name of the path description
  * @outpath: if this function returns 0 outpath will contain the path belonging
  *           to the input path description. Must be freed with free().
+ * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
  *
  * paths in the devicetree have the form of a multistring property. The first
  * string contains the full path to the physical device containing the path.
@@ -127,11 +130,12 @@ out:
  * device-path = &mmc0, "partname:0";
  * device-path = &norflash, "partname:barebox-environment";
  */
-int of_find_path(struct device_node *node, const char *propname, char **outpath)
+int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
 {
 	struct of_path op = {};
 	struct device_node *rnode;
 	const char *path, *str;
+	bool add_bb = false;
 	int i, ret;
 
 	path = of_get_property(node, propname, NULL);
@@ -166,7 +170,11 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath)
 	if (!op.cdev)
 		return -ENOENT;
 
-	*outpath = asprintf("/dev/%s", op.cdev->name);
+	if ((flags & OF_FIND_PATH_FLAGS_BB) && op.cdev->mtd &&
+	    mtd_can_have_bb(op.cdev->mtd))
+		add_bb = true;
+
+	*outpath = asprintf("/dev/%s%s", op.cdev->name, add_bb ? ".bb" : "");
 
 	return 0;
 }
diff --git a/include/of.h b/include/of.h
index 7235138f30bf..2dcb613a77ba 100644
--- a/include/of.h
+++ b/include/of.h
@@ -240,7 +240,8 @@ int of_add_memory(struct device_node *node, bool dump);
 void of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size);
 struct device_d *of_find_device_by_node_path(const char *path);
-int of_find_path(struct device_node *node, const char *propname, char **outpath);
+#define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
+int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 struct device_node *of_find_node_by_alias(struct device_node *root,
 		const char *alias);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
