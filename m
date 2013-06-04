Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ujlgl-0004V5-AN
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 07:29:52 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id A2F5E7D42E3
 for <barebox@lists.infradead.org>; Tue,  4 Jun 2013 09:29:15 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  4 Jun 2013 09:29:10 +0200
Message-Id: <1370330951-3548-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1370330951-3548-1-git-send-email-dev@lynxeye.de>
References: <1370330951-3548-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/3] of: import of_property_match_string from Linux
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/of/base.c | 37 +++++++++++++++++++++++++++++++++++++
 include/of.h      |  2 ++
 2 files changed, 39 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b3d012c..912e793 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -683,6 +683,43 @@ int of_property_read_string_index(struct device_node *np, const char *propname,
 EXPORT_SYMBOL_GPL(of_property_read_string_index);
 
 /**
+ * of_property_match_string() - Find string in a list and return index
+ * @np: pointer to node containing string list property
+ * @propname: string list property name
+ * @string: pointer to string to search for in string list
+ *
+ * This function searches a string list property and returns the index
+ * of a specific string value.
+ */
+int of_property_match_string(struct device_node *np, const char *propname,
+			     const char *string)
+{
+	struct property *prop = of_find_property(np, propname);
+	size_t l;
+	int i;
+	const char *p, *end;
+
+	if (!prop)
+		return -EINVAL;
+	if (!prop->value)
+		return -ENODATA;
+
+	p = prop->value;
+	end = p + prop->length;
+
+	for (i = 0; p < end; i++, p += l) {
+		l = strlen(p) + 1;
+		if (p + l > end)
+			return -EILSEQ;
+		pr_debug("comparing %s with %s\n", string, p);
+		if (strcmp(string, p) == 0)
+			return i; /* Found it; return index */
+	}
+	return -ENODATA;
+}
+EXPORT_SYMBOL_GPL(of_property_match_string);
+
+/**
  * of_modalias_node - Lookup appropriate modalias for a device node
  * @node:	pointer to a device tree node
  * @modalias:	Pointer to buffer that modalias value will be copied into
diff --git a/include/of.h b/include/of.h
index f00d1b4..27fd8da 100644
--- a/include/of.h
+++ b/include/of.h
@@ -172,6 +172,8 @@ int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
 int of_property_read_string_index(struct device_node *np, const char *propname,
 				  int index, const char **output);
+int of_property_match_string(struct device_node *np, const char *propname,
+			     const char *string);
 int of_set_property(struct device_node *node, const char *p, const void *val, int len,
 		int create);
 struct device_node *of_create_node(struct device_node *root, const char *path);
-- 
1.8.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
