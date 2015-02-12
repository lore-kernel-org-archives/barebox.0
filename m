Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLpYK-0003py-Dh
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:32 +0100
Message-Id: <1423731274-9860-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/17] mtd: fixup device tree partitions
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 64 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/mtd.h |  2 ++
 2 files changed, 66 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ac1001e..63b1e4a 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -482,6 +482,66 @@ static int mtd_part_compare(struct list_head *a, struct list_head *b)
 	return 0;
 }
 
+static int of_mtd_fixup(struct device_node *root, void *ctx)
+{
+	struct mtd_info *mtd = ctx, *partmtd;
+	struct device_node *np, *part, *tmp;
+	int ret, i = 0;
+
+	np = of_find_node_by_path(mtd->of_path);
+	if (!np) {
+		dev_err(&mtd->class_dev, "Cannot find nodepath %s, cannot fixup\n",
+				mtd->of_path);
+		return -EINVAL;
+	}
+
+	for_each_child_of_node_safe(np, tmp, part) {
+		if (of_get_property(part, "compatible", NULL))
+			continue;
+		of_delete_node(part);
+	}
+
+	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
+		int na, ns, len = 0;
+		char *name = asprintf("partition@%d", i++);
+		void *p;
+		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
+
+		if (!name)
+			return -ENOMEM;
+
+		part = of_new_node(np, name);
+		free(name);
+		if (!part)
+			return -ENOMEM;
+
+		p = of_new_property(part, "label", partmtd->cdev.partname,
+                                strlen(partmtd->cdev.partname) + 1);
+		if (!p)
+			return -ENOMEM;
+
+		na = of_n_addr_cells(np);
+		ns = of_n_size_cells(np);
+
+		of_write_number(tmp + len, partmtd->master_offset, na);
+		len += na * 4;
+		of_write_number(tmp + len, partmtd->size, ns);
+		len += ns * 4;
+
+		ret = of_set_property(part, "reg", tmp, len, 1);
+		if (ret)
+			return ret;
+
+		if (partmtd->cdev.flags & DEVFS_PARTITION_READONLY) {
+			ret = of_set_property(part, "read-only", NULL, 0, 1);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
 int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
@@ -544,6 +604,10 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	if (mtd->parent && !mtd->master) {
 		dev_add_param(&mtd->class_dev, "partitions", mtd_partition_set, mtd_partition_get, 0);
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
+		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->parent->device_node) {
+			mtd->of_path = xstrdup(mtd->parent->device_node->full_name);
+			of_register_fixup(of_mtd_fixup, mtd);
+		}
 	}
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 72bd66b..33f1fd5 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -223,6 +223,8 @@ struct mtd_info {
 
 	struct list_head partitions;
 	struct list_head partitions_entry;
+
+	char *of_path;
 };
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
