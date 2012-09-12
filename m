Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDk-0001sR-QZ
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:36 +0200
Message-Id: <1347480407-16865-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/15] of: Add devicetree partition parsing
To: barebox@lists.infradead.org

Helper code to probe mtd partitions from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Makefile    |    1 +
 drivers/of/partition.c |   64 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h           |    9 +++++++
 3 files changed, 74 insertions(+)
 create mode 100644 drivers/of/partition.c

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b38d40b..c14aaec 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,2 +1,3 @@
 obj-y += base.o
 obj-y += gpio.o
+obj-y += partition.o
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
new file mode 100644
index 0000000..6a57a60
--- /dev/null
+++ b/drivers/of/partition.c
@@ -0,0 +1,64 @@
+/*
+ * partition.c - devicetree partition parsing
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * based on Linux devicetree support
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
+ */
+#include <common.h>
+#include <of.h>
+#include <malloc.h>
+#include <linux/mtd/mtd.h>
+
+int of_parse_partitions(const char *cdevname,
+				   struct device_node *node)
+{
+	struct device_node *n;
+	const char *partname;
+	char *filename;
+
+	device_node_for_nach_child(node, n) {
+		const __be32 *reg;
+		unsigned long offset, size;
+		const char *name;
+		int len;
+		unsigned long flags = 0;
+
+		reg = of_get_property(n, "reg", &len);
+		if (!reg)
+			continue;
+
+		offset = be32_to_cpu(reg[0]);
+		size = be32_to_cpu(reg[1]);
+
+		partname = of_get_property(n, "label", &len);
+		if (!partname)
+			partname = of_get_property(n, "name", &len);
+		name = (char *)partname;
+
+		debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdevname, partname, offset, size);
+
+		if (of_get_property(n, "read-only", &len))
+			flags = DEVFS_PARTITION_READONLY;
+
+		filename = asprintf("%s.%s", cdevname, partname);
+
+		devfs_add_partition(cdevname, offset, size, flags, filename);
+
+		free(filename);
+	}
+
+	return 0;
+}
diff --git a/include/of.h b/include/of.h
index 762df9d..7b6a23a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -109,9 +109,18 @@ int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 
 #ifdef CONFIG_OFDEVICE
+int of_parse_partitions(const char *cdevname,
+			    struct device_node *node);
+
 struct device_node *of_get_root_node(void);
 int of_alias_get_id(struct device_node *np, const char *stem);
 #else
+static inline int of_parse_partitions(const char *cdevname,
+					  struct device_node *node)
+{
+	return -EINVAL;
+}
+
 static inline struct device_node *of_get_root_node(void)
 {
 	return NULL;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
