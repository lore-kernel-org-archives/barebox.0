Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Z-0006W3-GZ
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:10 +0100
Message-Id: <1362390820-10333-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/37] of: Add of_set_property and of_create_node
To: barebox@lists.infradead.org

Add functions to create a new device node and to create/set
a new property based on the nodepath.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   79 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |    3 ++
 2 files changed, 82 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ad278ad..11d17c6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -663,6 +663,41 @@ void of_delete_property(struct property *pp)
 	free(pp);
 }
 
+/**
+ * of_set_property - create a property for a given node
+ * @node - the node
+ * @name - the name of the property
+ * @val - the value for the property
+ * @len - the length of the properties value
+ * @create - if true, the property is created if not existing already
+ */
+int of_set_property(struct device_node *np, const char *name, const void *val, int len,
+		int create)
+{
+	struct property *pp;
+
+	if (!np)
+		return -ENOENT;
+
+	pp = of_find_property(np, name);
+	if (pp) {
+		void *data;
+
+		free(pp->value);
+		data = xzalloc(len);
+		memcpy(data, val, len);
+		pp->value = data;
+		pp->length = len;
+	} else {
+		if (!create)
+			return -ENOENT;
+
+		pp = of_new_property(np, name, val, len);
+	}
+
+	return 0;
+}
+
 static struct device_d *add_of_amba_device(struct device_node *node)
 {
 	struct amba_device *dev;
@@ -942,6 +977,50 @@ struct device_node *of_find_child_by_name(struct device_node *node, const char *
 	return NULL;
 }
 
+/**
+ * of_create_node - create a new node including its parents
+ * @path - the nodepath to create
+ */
+struct device_node *of_create_node(struct device_node *root, const char *path)
+{
+	char *slash, *p, *freep;
+	struct device_node *tmp, *dn = root;
+
+	if (*path != '/')
+		return NULL;
+
+	path++;
+
+	p = freep = xstrdup(path);
+
+	while (1) {
+		if (!*p)
+			goto out;
+
+		slash = strchr(p, '/');
+		if (slash)
+			*slash = 0;
+
+		tmp = of_find_child_by_name(dn, p);
+		if (tmp)
+			dn = tmp;
+		else
+			dn = of_new_node(dn, p);
+
+		if (!dn)
+			goto out;
+
+		if (!slash)
+			goto out;
+
+		p = slash + 1;
+	}
+out:
+	free(freep);
+
+	return dn;
+}
+
 /*
  * Parse a flat device tree binary blob and store it in the barebox
  * internal tree format,
diff --git a/include/of.h b/include/of.h
index 8166273..3305f03 100644
--- a/include/of.h
+++ b/include/of.h
@@ -138,6 +138,9 @@ void of_delete_property(struct property *pp);
 
 int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
+int of_set_property(struct device_node *node, const char *p, const void *val, int len,
+		int create);
+struct device_node *of_create_node(struct device_node *root, const char *path);
 
 #ifdef CONFIG_OFDEVICE
 int of_parse_partitions(const char *cdevname,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
