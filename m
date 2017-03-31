Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC8-0005H5-88
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:23 +0200
Message-Id: <20170331053323.17821-15-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] of: of_path: add of_find_node_by_devpath()
To: Barebox List <barebox@lists.infradead.org>

We already have of_find_path_by_node() which finds a device path
for a given device node. This is used by the state framework to
find its backend path. This path has to be translated back to
a device node when Linux is started. The current approach turned
out to be too simple: We assumed that the node path is the same
in the tree Linux is started with. This is not true in several
cases:
- partition nodes should have the name "partition@<offset>", but
  in several trees they have "partition@<num>"
- There are two different partition bindings: The legacy binding
  and the new one with an additional partitions subnode which has
  a compatible = "fixed-partitions" property.
The node path only stays the same when the internal tree uses the
same bindings and node names as the tree Linux is started with.

To overcome this limitation we create of_find_node_by_devpath()
which converts the device path back to a device node. It does
so by finding the device node of the hardware device rather than
the partition node. It then parses over the partitions in this
device node with the known bindings looking for a partition which
matches in offset and size to the barebox partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_path.c | 107 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h         |   1 +
 2 files changed, 108 insertions(+)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index e0b2dc1247..a5886dffac 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -104,6 +104,113 @@ int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flag
 }
 
 /**
+ * of_find_node_by_devpath - translate a device path to a device tree node
+ *
+ * @root: The device tree root. Can be NULL, in this case the internal tree is used
+ * @path: The path to look the node up for. Can be "/dev/cdevname" or "cdevname" directly.
+ *
+ * This is the counterpart of of_find_path_by_node(). Given a path this function tries
+ * to find the corresponding node in the given device tree.
+ *
+ * We first have to find the hardware device in the tree we are passed and then find
+ * a partition matching offset/size in this tree. This is necessary because the
+ * passed tree may use another partition binding (legacy vs. fixed-partitions). Also
+ * the node names may differ (some device trees have partition@<num> instead of
+ * partition@<offset>.
+ */
+struct device_node *of_find_node_by_devpath(struct device_node *root, const char *path)
+{
+	struct cdev *cdev;
+	bool is_partition = false;
+	struct device_node *np, *partnode, *rnp;
+	loff_t part_offset = 0, part_size = 0;
+
+	pr_debug("%s: looking for path %s\n", __func__, path);
+
+	if (!strncmp(path, "/dev/", 5))
+		path += 5;
+
+	cdev = cdev_by_name(path);
+	if (!cdev) {
+		pr_debug("%s: cdev %s not found\n", __func__, path);
+		return NULL;
+	}
+
+	/*
+	 * Look for the device node of the master device (the one of_parse_partitions() has
+	 * been called with
+	 */
+	if (cdev->master) {
+		is_partition = true;
+		part_offset = cdev->offset;
+		part_size = cdev->size;
+		pr_debug("%s path %s: is a partition with offset 0x%08llx, size 0x%08llx\n",
+			 __func__, path, part_offset, part_size);
+		np = cdev->master->device_node;
+	} else {
+		np = cdev->device_node;
+	}
+
+	/*
+	 * Now find the device node of the master device in the device tree we have
+	 * been passed.
+	 */
+	rnp = of_find_node_by_path_from(root, np->full_name);
+	if (!rnp) {
+		pr_debug("%s path %s: %s not found in passed tree\n", __func__, path,
+			np->full_name);
+		return NULL;
+	}
+
+	if (!is_partition) {
+		pr_debug("%s path %s: returning full device node %s\n", __func__, path,
+			rnp->full_name);
+		return rnp;
+	}
+
+	/*
+	 * Look for a partition with matching offset/size in the device node of
+	 * the tree we have been passed.
+	 */
+	partnode = of_get_child_by_name(rnp, "partitions");
+	if (!partnode) {
+		pr_debug("%s path %s: using legacy partition binding\n", __func__, path);
+		partnode = rnp;
+	}
+
+	for_each_child_of_node(partnode, np) {
+		const __be32 *reg;
+		int na, ns, len;
+		loff_t offset, size;
+
+		reg = of_get_property(np, "reg", &len);
+		if (!reg)
+			return NULL;
+
+		na = of_n_addr_cells(np);
+		ns = of_n_size_cells(np);
+
+		if (len < (na + ns) * sizeof(__be32)) {
+			pr_err("reg property too small in %s\n", np->full_name);
+			continue;
+		}
+
+		offset = of_read_number(reg, na);
+		size = of_read_number(reg + na, ns);
+
+		if (part_offset == offset && part_size == size) {
+			pr_debug("%s path %s: found matching partition in %s\n", __func__, path,
+				np->full_name);
+			return np;
+		}
+	}
+
+	pr_debug("%s path %s: no matching node found\n", __func__, path);
+
+	return NULL;
+}
+
+/**
  * of_find_path - translate a path description in the devicetree to a barebox
  *                path
  *
diff --git a/include/of.h b/include/of.h
index 87d96055a2..0ba73f197f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -251,6 +251,7 @@ struct device_d *of_find_device_by_node_path(const char *path);
 #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
 int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags);
 int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flags);
+struct device_node *of_find_node_by_devpath(struct device_node *root, const char *path);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 int of_unregister_fixup(int (*fixup)(struct device_node *, void *), void *context);
 int of_register_set_status_fixup(const char *node, bool status);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
