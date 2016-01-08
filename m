Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHRZm-0006Yw-JN
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 07:35:11 +0000
Date: Fri, 8 Jan 2016 08:34:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160108073446.GX13058@pengutronix.de>
References: <1452166031-9973-1-git-send-email-s.hauer@pengutronix.de>
 <1452191516.4474.81.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452191516.4474.81.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] of_path: Make partition names work again
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 07, 2016 at 06:31:45PM +0000, Trent Piepho wrote:
> There's already a patch in barebox-next that fixes this bug, 985e773.
> It doesn't delete the patname: parsing code, but does add a number of
> comments that this patch doesn't.

Indeed, it's not tool long ago, I should habe remembered that. In that
case I added your patch to the master branch to get that issue fixed for
the upcoming release.
The remaining removal of of_path_parse_one() can then go into -next with
the following cleanup patch.

Sascha

-------------------------------8<--------------------------------

From ae172dd2d06f16c413f0a472e1f6afbd6f6ab92b Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 7 Jan 2016 12:13:08 +0100
Subject: [PATCH] of_path: Drop possible further extensions of device-path
 property

Originally it was intended to further extend the multi string property
device-path further with more elements, like for example a filename. It
turned out though that this is too complex and instead of further
extending the property we should instead create additional properties,
so this mechanism is removed with this patch to make the code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_path.c | 123 ++++++++++++---------------------------------------
 1 file changed, 28 insertions(+), 95 deletions(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 9016147..ed620f1 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -23,16 +23,6 @@
 
 #include <linux/mtd/mtd.h>
 
-struct of_path {
-	struct cdev *cdev;
-	struct device_d *dev;
-};
-
-struct of_path_type {
-	const char *name;
-	int (*parse)(struct of_path *op, const char *str);
-};
-
 struct device_d *of_find_device_by_node_path(const char *path)
 {
 	struct device_d *dev;
@@ -48,65 +38,6 @@ struct device_d *of_find_device_by_node_path(const char *path)
 }
 
 /**
- * of_path_type_partname - find a partition based on physical device and
- *                         partition name
- * @op: of_path context
- * @name: the partition name to find
- */
-static int of_path_type_partname(struct of_path *op, const char *name)
-{
-	if (!op->dev)
-		return -EINVAL;
-
-	op->cdev = device_find_partition(op->dev, name);
-	if (op->cdev) {
-		pr_debug("%s: found part '%s'\n", __func__, name);
-		return 0;
-	} else {
-		pr_debug("%s: cannot find part '%s'\n", __func__, name);
-		return -ENODEV;
-	}
-}
-
-static struct of_path_type of_path_types[] = {
-	{
-		.name = "partname",
-		.parse = of_path_type_partname,
-	},
-};
-
-static int of_path_parse_one(struct of_path *op, const char *str)
-{
-	int i, ret;
-	char *name, *desc;
-
-	pr_debug("parsing: %s\n", str);
-
-	name = xstrdup(str);
-	desc = strchr(name, ':');
-	if (!desc) {
-		free(name);
-		return -EINVAL;
-	}
-
-	*desc = 0;
-	desc++;
-
-	for (i = 0; i < ARRAY_SIZE(of_path_types); i++) {
-		if (!strcmp(of_path_types[i].name, name)) {
-			ret = of_path_types[i].parse(op, desc);
-			goto out;
-		}
-	}
-
-	ret = -EINVAL;
-out:
-	free(name);
-
-	return ret;
-}
-
-/**
  * __of_find_path
  *
  * @node: The node to find the cdev for, can be the device or a
@@ -119,36 +50,32 @@ out:
  */
 static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
 {
-	struct of_path op;
+	struct device_d *dev;
+	struct cdev *cdev;
 	bool add_bb = false;
-	int ret;
 
-	op.dev = of_find_device_by_node_path(node->full_name);
-	if (!op.dev) {
-		op.dev = of_find_device_by_node_path(node->parent->full_name);
-		if (!op.dev)
+	dev = of_find_device_by_node_path(node->full_name);
+	if (!dev) {
+		dev = of_find_device_by_node_path(node->parent->full_name);
+		if (!dev)
 			return -ENODEV;
 	}
 
-	device_detect(op.dev);
+	device_detect(dev);
 
-	if (part) {
-		/* Find a partition inside op.dev */
-		ret = of_path_parse_one(&op, part);
-		if (ret)
-			return ret;
-	} else {
-		/* node points directly to device */
-		op.cdev = cdev_by_device_node(node);
-		if (!op.cdev)
-			return -ENOENT;
-	}
+	if (part)
+		cdev = device_find_partition(dev, part);
+	else
+		cdev = cdev_by_device_node(node);
 
-	if ((flags & OF_FIND_PATH_FLAGS_BB) && op.cdev->mtd &&
-	    mtd_can_have_bb(op.cdev->mtd))
+	if (!cdev)
+		return -ENOENT;
+
+	if ((flags & OF_FIND_PATH_FLAGS_BB) && cdev->mtd &&
+	    mtd_can_have_bb(cdev->mtd))
 		add_bb = true;
 
-	*outpath = asprintf("/dev/%s%s", op.cdev->name, add_bb ? ".bb" : "");
+	*outpath = asprintf("/dev/%s%s", cdev->name, add_bb ? ".bb" : "");
 
 	return 0;
 }
@@ -198,8 +125,8 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 {
 	struct device_node *rnode;
 	const char *path;
-	const char *part;
-	int ret;
+	const char *part = NULL;
+	const char partnamestr[] = "partname:";
 
 	path = of_get_property(node, propname, NULL);
 	if (!path)
@@ -209,9 +136,15 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 	if (!rnode)
 		return -ENODEV;
 
-	ret = of_property_read_string_index(node, propname, 1, &part);
-	if (ret)
-		part = NULL;
+	of_property_read_string_index(node, propname, 1, &part);
+	if (part) {
+		if (!strncmp(part, partnamestr, sizeof(partnamestr) - 1)) {
+			part += sizeof(partnamestr) - 1;
+		} else {
+			pr_err("Invalid device-path: %s\n", part);
+			return -EINVAL;
+		}
+	}
 
 	return __of_find_path(rnode, part, outpath, flags);
 }
-- 
2.6.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
