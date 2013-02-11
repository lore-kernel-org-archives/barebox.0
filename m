Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ylu-0001o2-MF
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 19:10:35 +0000
Received: from mail194.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 71EB3FFA33B
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 20:25:51 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 20:09:25 +0100
Message-Id: <1360609765-22416-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] amba: add oftree probe support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/amba/bus.c |    1 +
 drivers/of/base.c  |   60 +++++++++++++++++++++++++++++++++++++++++++++-------
 2 files changed, 53 insertions(+), 8 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index d1ab53c..dcb52bf 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -212,6 +212,7 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
 	dev->res.start = base;
 	dev->res.end = base + size - 1;
 	dev->res.flags = IORESOURCE_MEM;
+	dev->dev.resource = &dev->res;
 
 	return dev;
 }
diff --git a/drivers/of/base.c b/drivers/of/base.c
index eaaeaf4..c2737ec 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -26,6 +26,7 @@
 #include <memory.h>
 #include <sizes.h>
 #include <linux/ctype.h>
+#include <linux/amba/bus.h>
 
 /**
  * struct alias_prop - Alias property in 'aliases' node
@@ -641,18 +642,44 @@ void of_delete_property(struct property *pp)
 	free(pp);
 }
 
-static struct device_d *add_of_device(struct device_node *node)
+static struct device_d *add_of_amba_device(struct device_node *node)
 {
-	struct device_d *dev;
+	struct amba_device *dev;
 	char *name, *at;
-	const struct property *cp;
 
-	if (of_node_disabled(node))
-		return NULL;
+	dev = xzalloc(sizeof(*dev));
 
-	cp = of_get_property(node, "compatible", NULL);
-	if (!cp)
-		return NULL;
+	name = xstrdup(node->name);
+	at = strchr(name, '@');
+	if (at) {
+		*at = 0;
+		snprintf(dev->dev.name, MAX_DRIVER_NAME, "%s.%s", at + 1, name);
+	} else {
+		strncpy(dev->dev.name, node->name, MAX_DRIVER_NAME);
+	}
+
+	dev->dev.id = DEVICE_ID_SINGLE;
+	memcpy(&dev->res, &node->resource[0], sizeof(struct resource));
+	dev->dev.resource = node->resource;
+	dev->dev.num_resources = 1;
+	dev->dev.device_node = node;
+	node->device = &dev->dev;
+
+	of_property_read_u32(node, "arm,primecell-periphid", &dev->periphid);
+
+	debug("register device 0x%08x\n", node->resource[0].start);
+
+	amba_device_add(dev);
+
+	free(name);
+
+	return &dev->dev;
+}
+
+static struct device_d *add_of_platfrom_device(struct device_node *node)
+{
+	struct device_d *dev;
+	char *name, *at;
 
 	dev = xzalloc(sizeof(*dev));
 
@@ -679,6 +706,23 @@ static struct device_d *add_of_device(struct device_node *node)
 
 	return dev;
 }
+
+static struct device_d *add_of_device(struct device_node *node)
+{
+	const struct property *cp;
+
+	if (of_node_disabled(node))
+		return NULL;
+
+	cp = of_get_property(node, "compatible", NULL);
+	if (!cp)
+		return NULL;
+
+	if (of_device_is_compatible(node, "arm,primecell") == 1)
+		return add_of_amba_device(node);
+	else
+		return add_of_platfrom_device(node);
+}
 EXPORT_SYMBOL(add_of_device);
 
 u64 dt_mem_next_cell(int s, const __be32 **cellp)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
