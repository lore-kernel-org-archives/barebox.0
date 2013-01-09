Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TssAS-0002ir-00
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 09:41:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Jan 2013 10:41:39 +0100
Message-Id: <1357724499-30451-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357724499-30451-1-git-send-email-s.hauer@pengutronix.de>
References: <1357724499-30451-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] of: Add support for converting the unflattened tree back
 to a dtb
To: barebox@lists.infradead.org

We already have support for unflattening the devicetree. This patch
adds support for converting it back to a dtb.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   61 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |    1 +
 2 files changed, 62 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3c00fa5..b584cf2 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -24,6 +24,7 @@
 #include <malloc.h>
 #include <init.h>
 #include <memory.h>
+#include <sizes.h>
 #include <linux/ctype.h>
 
 /**
@@ -892,6 +893,66 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 	return 0;
 }
 
+static int __of_flatten_dtb(void *fdt, struct device_node *node)
+{
+	struct property *p;
+	struct device_node *n;
+	int ret;
+
+	ret = fdt_begin_node(fdt, node->name);
+	if (ret)
+		return ret;
+
+	list_for_each_entry(p, &node->properties, list) {
+		ret = fdt_property(fdt, p->name, p->value, p->length);
+		if (ret)
+			return ret;
+	}
+
+	list_for_each_entry(n, &node->children, parent_list) {
+		ret = __of_flatten_dtb(fdt, n);
+		if (ret)
+			return ret;
+	}
+
+	ret = fdt_end_node(fdt);
+
+	return ret;
+}
+
+#define DTB_SIZE	SZ_128K
+
+void *of_flatten_dtb(void)
+{
+	void *fdt;
+	int ret;
+
+	fdt = malloc(DTB_SIZE);
+	if (!fdt)
+		return NULL;
+
+	ret = fdt_create(fdt, DTB_SIZE);
+	if (ret)
+		goto out_free;
+
+	ret = fdt_finish_reservemap(fdt);
+	if (ret)
+		goto out_free;
+
+	ret = __of_flatten_dtb(fdt, root_node);
+	if (ret)
+		goto out_free;
+
+	fdt_finish(fdt);
+
+	return fdt;
+
+out_free:
+	free(fdt);
+
+	return NULL;
+}
+
 int of_device_is_stdout_path(struct device_d *dev)
 {
 	struct device_node *dn;
diff --git a/include/of.h b/include/of.h
index 6b562bd..303e036 100644
--- a/include/of.h
+++ b/include/of.h
@@ -107,6 +107,7 @@ int of_machine_is_compatible(const char *compat);
 void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_unflatten_dtb(struct fdt_header *fdt);
+void *of_flatten_dtb(void);
 
 int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
