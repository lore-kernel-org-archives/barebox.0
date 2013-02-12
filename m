Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5DlC-0005Tw-V5
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 11:10:52 +0000
Received: from mail613.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id CBD5D104F26D
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 12:21:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Feb 2013 12:09:39 +0100
Message-Id: <1360667379-2789-1-git-send-email-plagnioj@jcrosoft.com>
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

move ARM_AMBA Kconfig to drivers/amba/Kconfig

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:
	only probe amba device when amba is enable

Best Regards,
J.
 arch/arm/Kconfig     |    3 ---
 drivers/Kconfig      |    1 +
 drivers/amba/Kconfig |    2 ++
 drivers/amba/bus.c   |    1 +
 drivers/of/base.c    |   61 +++++++++++++++++++++++++++++++++++++++++++-------
 5 files changed, 57 insertions(+), 11 deletions(-)
 create mode 100644 drivers/amba/Kconfig

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2ff544e..f002910 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -7,9 +7,6 @@ config ARM
 	select HAVE_IMAGE_COMPRESSION
 	default y
 
-config ARM_AMBA
-	bool
-
 config ARM_LINUX
 	bool
 	default y
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 988ec9e..dac22de 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -1,5 +1,6 @@
 menu "Drivers"
 
+source "drivers/amba/Kconfig"
 source "drivers/serial/Kconfig"
 source "drivers/net/Kconfig"
 source "drivers/spi/Kconfig"
diff --git a/drivers/amba/Kconfig b/drivers/amba/Kconfig
new file mode 100644
index 0000000..d1cba6a
--- /dev/null
+++ b/drivers/amba/Kconfig
@@ -0,0 +1,2 @@
+config ARM_AMBA
+	bool
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
index eaaeaf4..1f32bfb 100644
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
+static struct device_d *add_of_platform_device(struct device_node *node)
+{
+	struct device_d *dev;
+	char *name, *at;
 
 	dev = xzalloc(sizeof(*dev));
 
@@ -679,6 +706,24 @@ static struct device_d *add_of_device(struct device_node *node)
 
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
+	if (IS_ENABLED(CONFIG_ARM_AMBA) &&
+	    of_device_is_compatible(node, "arm,primecell") == 1)
+		return add_of_amba_device(node);
+	else
+		return add_of_platform_device(node);
+}
 EXPORT_SYMBOL(add_of_device);
 
 u64 dt_mem_next_cell(int s, const __be32 **cellp)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
