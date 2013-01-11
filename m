Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qb-6I
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:33 +0100
Message-Id: <1357910676-4231-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/16] of: add of_delete_property
To: barebox@lists.infradead.org

This adds a function to delete a property from the currently loaded
devicetree. Also export new_property as of_new_property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   13 +++++++++++--
 include/of.h      |    3 +++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 527121d..5910b40 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -600,7 +600,7 @@ static struct device_node *new_device_node(struct device_node *parent)
 	return node;
 }
 
-static struct property *new_property(struct device_node *node, const char *name,
+struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len)
 {
 	struct property *prop;
@@ -617,6 +617,15 @@ static struct property *new_property(struct device_node *node, const char *name,
 	return prop;
 }
 
+void of_delete_property(struct property *pp)
+{
+	list_del(&pp->list);
+
+	free(pp->name);
+	free(pp->value);
+	free(pp);
+}
+
 static struct device_d *add_of_device(struct device_node *node)
 {
 	struct device_d *dev;
@@ -902,7 +911,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 				p->value = xzalloc(len);
 				memcpy(p->value, nodep, len);
 			} else {
-				new_property(node, pathp, nodep, len);
+				of_new_property(node, pathp, nodep, len);
 			}
 			break;
 		case FDT_NOP:
diff --git a/include/of.h b/include/of.h
index e1a778d..e53f94c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -108,6 +108,9 @@ int of_parse_dtb(struct fdt_header *fdt);
 void of_free(struct device_node *node);
 int of_unflatten_dtb(struct fdt_header *fdt);
 void *of_flatten_dtb(void);
+struct property *of_new_property(struct device_node *node, const char *name,
+		const void *data, int len);
+void of_delete_property(struct property *pp);
 
 int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
