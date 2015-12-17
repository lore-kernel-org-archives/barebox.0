Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9Mnx-0004WG-3Y
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 00:52:25 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 17 Dec 2015 00:52:00 +0000
Message-ID: <1450313520.26955.189.camel@rtred1test09.kymeta.local>
References: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
In-Reply-To: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <1AC86A3FFA60884E9058364D0BD1E261@kymetacorp.com>
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
Subject: [PATCH 2/4] of_path: Fix bug with partitions, simply code
To: barebox <barebox@lists.infradead.org>

In commit 75b682795eafb2385556a9642f09e0af96a1264a using a path that
has a partition description broke.

Fix this and simpfy the code some.

There is no need to loop over each string in the path property:  it's
defined to have at most one parition description, no extant dts has
more than one, and how it would handle more than one didn't make sense
anyway.

Once not looping, __of_find_path() just needs the partition
description text, not both the original node and property name to look
it up from.

When using a partition description, don't lookup the cdev of the node
just to replace it with the partition's cdev.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/of/of_path.c | 47 +++++++++++++++++++++++++++++------------------
 1 file changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 6903905..9016147 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -106,12 +106,22 @@ out:
 	return ret;
 }
 
-static int __of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
+/**
+ * __of_find_path
+ *
+ * @node: The node to find the cdev for, can be the device or a
+ *        partition in the device
+ * @part: Optionally, a description of a parition of @node.  See of_find_path
+ * @outpath: if this function returns 0 outpath will contain the path belonging
+ *           to the input path description. Must be freed with free().
+ * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
+ *
+ */
+static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
 {
-	struct of_path op = {};
-	const char *str;
+	struct of_path op;
 	bool add_bb = false;
-	int i, ret;
+	int ret;
 
 	op.dev = of_find_device_by_node_path(node->full_name);
 	if (!op.dev) {
@@ -122,23 +132,18 @@ static int __of_find_path(struct device_node *node, const char *propname, char *
 
 	device_detect(op.dev);
 
-	op.cdev = cdev_by_device_node(node);
-
-	i = 1;
-
-	while (propname) {
-		ret = of_property_read_string_index(node, propname, i++, &str);
-		if (ret)
-			break;
-
-		ret = of_path_parse_one(&op, str);
+	if (part) {
+		/* Find a partition inside op.dev */
+		ret = of_path_parse_one(&op, part);
 		if (ret)
 			return ret;
+	} else {
+		/* node points directly to device */
+		op.cdev = cdev_by_device_node(node);
+		if (!op.cdev)
+			return -ENOENT;
 	}
 
-	if (!op.cdev)
-		return -ENOENT;
-
 	if ((flags & OF_FIND_PATH_FLAGS_BB) && op.cdev->mtd &&
 	    mtd_can_have_bb(op.cdev->mtd))
 		add_bb = true;
@@ -193,6 +198,8 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 {
 	struct device_node *rnode;
 	const char *path;
+	const char *part;
+	int ret;
 
 	path = of_get_property(node, propname, NULL);
 	if (!path)
@@ -202,5 +209,9 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 	if (!rnode)
 		return -ENODEV;
 
-	return __of_find_path(rnode, propname, outpath, flags);
+	ret = of_property_read_string_index(node, propname, 1, &part);
+	if (ret)
+		part = NULL;
+
+	return __of_find_path(rnode, part, outpath, flags);
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
