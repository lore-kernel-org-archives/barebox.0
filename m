Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1WV-0007ao-SY
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:40 +0000
Received: by mail-pg0-x241.google.com with SMTP id 25so20991869pgy.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:20 -0800
Message-Id: <20170306225356.31475-10-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/45] regmap: Implement syscon_node_to_regmap()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Implement syscon_node_to_regmap() to simplify porting kernel code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 54 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/mfd/syscon.h |  8 ++++++++
 2 files changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 6ef30ce..957d9a7 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -28,6 +28,34 @@ struct syscon {
 	struct device_node *np;
 	void __iomem *base;
 	struct list_head list;
+	struct regmap *regmap;
+};
+
+static int syscon_reg_write(void *context, unsigned int reg,
+			    unsigned int val)
+{
+	struct syscon *syscon = context;
+	writel(val, syscon->base + reg);
+	return 0;
+}
+
+static int syscon_reg_read(void *context, unsigned int reg,
+			   unsigned int *val)
+{
+	struct syscon *syscon = context;
+	*val = readl(syscon->base + reg);
+	return 0;
+}
+
+static const struct regmap_bus syscon_regmap_bus = {
+	.reg_write = syscon_reg_write,
+	.reg_read  = syscon_reg_read,
+};
+
+static const struct regmap_config syscon_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
 };
 
 static struct syscon *of_syscon_register(struct device_node *np)
@@ -51,6 +79,10 @@ static struct syscon *of_syscon_register(struct device_node *np)
 
 	list_add_tail(&syscon->list, &syscon_list);
 
+	syscon->regmap = regmap_init(NULL,
+				     &syscon_regmap_bus,
+				     syscon,
+				     &syscon_regmap_config);
 	return syscon;
 
 err_map:
@@ -58,7 +90,7 @@ err_map:
 	return ERR_PTR(ret);
 }
 
-static void __iomem *syscon_node_to_base(struct device_node *np)
+static struct syscon *node_to_syscon(struct device_node *np)
 {
 	struct syscon *entry, *syscon = NULL;
 
@@ -74,6 +106,16 @@ static void __iomem *syscon_node_to_base(struct device_node *np)
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
 
+	return syscon;
+}
+
+static void __iomem *syscon_node_to_base(struct device_node *np)
+{
+	struct syscon *syscon = node_to_syscon(np);
+
+	if (IS_ERR(syscon))
+		return ERR_CAST(syscon);
+
 	return syscon->base;
 }
 
@@ -108,6 +150,16 @@ void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
 	return syscon_node_to_base(syscon_np);
 }
 
+struct regmap *syscon_node_to_regmap(struct device_node *np)
+{
+	struct syscon *syscon = node_to_syscon(np);
+
+	if (IS_ERR(syscon))
+		return ERR_CAST(syscon);
+
+	return syscon->regmap;
+}
+
 static int syscon_probe(struct device_d *dev)
 {
 	struct syscon *syscon;
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index 651d4c2..63b893e 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -14,10 +14,13 @@
 #ifndef __MFD_SYSCON_H__
 #define __MFD_SYSCON_H__
 
+#include <regmap.h>
+
 #ifdef CONFIG_MFD_SYSCON
 void __iomem *syscon_base_lookup_by_pdevname(const char *s);
 void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
+struct regmap *syscon_node_to_regmap(struct device_node *np);
 #else
 static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
@@ -29,6 +32,11 @@ static inline void __iomem *syscon_base_lookup_by_phandle
 {
 	return ERR_PTR(-ENOSYS);
 }
+
+static inline struct regmap *syscon_node_to_regmap(struct device_node *np)
+{
+	return ERR_PTR(-ENOSYS);
+}
 #endif
 
 #endif
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
