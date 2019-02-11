Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtDKA-0008RD-OQ
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 15:16:48 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Feb 2019 16:16:37 +0100
Message-Id: <1549898200-32688-5-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 4/7] drivers: of: Add function to enable and register a device
 by alias
To: barebox@lists.infradead.org

In some cases node names are not unique and passing the full path is really long.
So make add a new device by passing the alias string possible.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/of/platform.c | 19 +++++++++++++++++++
 include/of.h          |  8 ++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ef8969ca8b19..d3795d799a13 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -207,6 +207,25 @@ struct device_d *of_device_enable_and_register_by_name(const char *name)
 }
 EXPORT_SYMBOL(of_device_enable_and_register_by_name);
 
+/**
+ * of_device_enable_and_register_by_alias - Enable and register device by alias
+ * @name: alias of the device node
+ *
+ * Returns pointer to created platform device, or NULL if a device was not
+ * registered. Unavailable devices will not get registered.
+ */
+struct device_d *of_device_enable_and_register_by_alias(const char *alias)
+{
+	struct device_node *node;
+
+	node = of_find_node_by_alias(NULL, alias);
+	if (!node)
+		return NULL;
+
+	return of_device_enable_and_register(node);
+}
+EXPORT_SYMBOL(of_device_enable_and_register_by_alias);
+
 #ifdef CONFIG_ARM_AMBA
 static struct device_d *of_amba_device_create(struct device_node *np)
 {
diff --git a/include/of.h b/include/of.h
index 184acb474136..b5f54dd4e5b5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -255,6 +255,8 @@ extern int of_platform_populate(struct device_node *root,
 extern struct device_d *of_find_device_by_node(struct device_node *np);
 extern struct device_d *of_device_enable_and_register(struct device_node *np);
 extern struct device_d *of_device_enable_and_register_by_name(const char *name);
+extern struct device_d *of_device_enable_and_register_by_alias(
+							const char *alias);
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
@@ -670,6 +672,12 @@ static inline struct device_d *of_device_enable_and_register_by_name(
 	return NULL;
 }
 
+static inline struct device_d *of_device_enable_and_register_by_alias(
+				const char *alias)
+{
+	return NULL;
+}
+
 static inline int of_register_fixup(int (*fixup)(struct device_node *, void *),
 				void *context)
 {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
