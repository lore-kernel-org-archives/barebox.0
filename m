Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5a-0006Wk-KD
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:16 +0100
Message-Id: <1362390820-10333-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/37] of: Add initrd helper
To: barebox@lists.infradead.org

Add a helper to set the initrd properties in the unflattened tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   39 +++++++++++++++++++++++++++++++++++++++
 include/of.h      |    3 +++
 2 files changed, 42 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 721db29..4dbe11e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1201,3 +1201,42 @@ int of_device_is_stdout_path(struct device_d *dev)
 
 	return 0;
 }
+
+/**
+ * of_add_initrd - add initrd properties to the devicetree
+ * @root - the root node of the tree
+ * @start - physical start address of the initrd image
+ * @end - physical end address of the initrd image
+ *
+ * Add initrd properties to the devicetree, or, if end is 0,
+ * delete them.
+ */
+int of_add_initrd(struct device_node *root, resource_size_t start,
+		resource_size_t end)
+{
+	struct device_node *chosen;
+	__be32 buf[2];
+
+	chosen = of_find_node_by_path(root, "/chosen");
+	if (!chosen)
+		return -EINVAL;
+
+	if (end) {
+		of_write_number(buf, start, 2);
+		of_set_property(chosen, "linux,initrd-start", buf, 8, 1);
+		of_write_number(buf, end, 2);
+		of_set_property(chosen, "linux,initrd-end", buf, 8, 1);
+	} else {
+		struct property *pp;
+
+		pp = of_find_property(chosen, "linux,initrd-start");
+		if (pp)
+			of_delete_property(pp);
+
+		pp = of_find_property(chosen, "linux,initrd-end");
+		if (pp)
+			of_delete_property(pp);
+	}
+
+	return 0;
+}
diff --git a/include/of.h b/include/of.h
index 6154490..1562f4e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -68,6 +68,9 @@ struct driver_d;
 
 int of_match(struct device_d *dev, struct driver_d *drv);
 
+int of_add_initrd(struct device_node *root, resource_size_t start,
+		resource_size_t end);
+
 struct property *of_find_property(const struct device_node *node, const char *name);
 
 struct device_node *of_find_node_by_path(struct device_node *root, const char *path);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
