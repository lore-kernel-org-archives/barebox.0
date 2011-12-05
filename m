Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXULK-0006VB-HK
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:56:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:55:58 +0100
Message-Id: <1323075361-27455-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] add resource management functions
To: barebox@lists.infradead.org

It is time to track our memory usage. Add a simple resource
management.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile        |    1 +
 common/resource.c      |  121 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |   14 ++++++
 3 files changed, 136 insertions(+), 0 deletions(-)
 create mode 100644 common/resource.c

diff --git a/common/Makefile b/common/Makefile
index 55d9dbc..9bce479 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -27,6 +27,7 @@ obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
 obj-y += filetype.o
+obj-y += resource.o
 obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
diff --git a/common/resource.c b/common/resource.c
new file mode 100644
index 0000000..63e9c49
--- /dev/null
+++ b/common/resource.c
@@ -0,0 +1,121 @@
+/*
+ * resource.c - barebox resource management
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ */
+#include <common.h>
+#include <malloc.h>
+#include <errno.h>
+#include <init.h>
+#include <linux/ioport.h>
+
+static int init_resource(struct resource *res, const char *name)
+{
+	INIT_LIST_HEAD(&res->children);
+	res->parent = NULL;
+	res->name = xstrdup(name);
+
+	return 0;
+}
+
+/*
+ * request a region.
+ * This will succedd when the requested region is completely inside
+ * the parent resource and does not conflict with any of the child
+ * resources.
+ */
+struct resource *request_region(struct resource *parent,
+		const char *name, resource_size_t start,
+		resource_size_t size)
+{
+	struct resource *r, *new;
+
+	/* outside parent resource? */
+	if (start < parent->start ||
+			start + size > parent->start + parent->size) {
+		debug("%s: 0x%08x:0x%08x outside parent resource 0x%08x:0x%08x\n",
+				__func__, start, size, parent->start,
+				parent->size);
+		return NULL;
+	}
+
+	/*
+	 * We keep the list of child resources ordered which helps
+	 * us searching for conflicts here.
+	 */
+	list_for_each_entry(r, &parent->children, sibling) {
+		if (start + size <= r->start)
+			goto ok;
+		if (start >= r->start + r->size)
+			continue;
+		debug("%s: 0x%08x:0x%08x conflicts with 0x%08x:0x%08x\n",
+				__func__, start, size, r->start, r->size);
+		return NULL;
+	}
+
+ok:
+	debug("%s ok: 0x%08x 0x%08x\n", __func__, start, size);
+
+	new = xzalloc(sizeof(*new));
+	init_resource(new, name);
+	new->start = start;
+	new->size = size;
+	new->parent = parent;
+	list_add_tail(&new->sibling, &r->sibling);
+
+	return new;
+}
+
+/*
+ * release a region previously requested with request_region
+ */
+int release_region(struct resource *res)
+{
+	if (!list_empty(&res->children))
+		return -EBUSY;
+
+	list_del(&res->sibling);
+	free((char *)res->name);
+	free(res);
+
+	return 0;
+}
+
+/* The root resource for the whole io space */
+struct resource iomem_resource = {
+	.start = 0,
+	.size = ~0,
+};
+
+/*
+ * request a region inside the io space
+ */
+struct resource *request_iomem_region(const char *name,
+		resource_size_t start, resource_size_t size)
+{
+	return request_region(&iomem_resource, name, start, size);
+}
+
+static int iomem_init(void)
+{
+	init_resource(&iomem_resource, "iomem");
+
+	return 0;
+}
+postcore_initcall(iomem_init);
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 5143115..c837b53 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -20,6 +20,9 @@ struct resource {
 	resource_size_t size;
 	const char *name;
 	unsigned long flags;
+	struct resource *parent;
+	struct list_head children;
+	struct list_head sibling;
 };
 
 /*
@@ -111,5 +114,16 @@ static inline unsigned long resource_type(const struct resource *res)
 	return res->flags & IORESOURCE_TYPE_BITS;
 }
 
+struct resource *request_iomem_region(const char *name,
+		resource_size_t start, resource_size_t size);
+
+struct resource *request_region(struct resource *parent,
+		const char *name, resource_size_t start,
+		resource_size_t size);
+
+int release_region(struct resource *res);
+
+extern struct resource iomem_resource;
+
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
