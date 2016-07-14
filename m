Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNZsD-0006dH-9l
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 06:11:51 +0000
Received: by mail-pa0-x244.google.com with SMTP id dx3so4137974pab.2
 for <barebox@lists.infradead.org>; Wed, 13 Jul 2016 23:11:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jul 2016 23:11:01 -0700
Message-Id: <1468476665-26409-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
References: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] mfd: syscon: Decouple syscon interface from platform
 devices
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Follow Linux Kernel change introduced in
bdb0066df96e74a4002125467ebe459feff1ebef and avoid device/driver model
for DT-based platforms. See the original kernel commit for the rationale.

Also make syscon_base_lookup_by_pdevname() behave the same way as its
kernel counterpart in the case whern "property" argument is NULL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 79 ++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 61 insertions(+), 18 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index ac46122..5fd22dd 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -17,15 +17,68 @@
 #include <driver.h>
 #include <malloc.h>
 #include <xfuncs.h>
-
+#include <of_address.h>
 #include <linux/err.h>
 
 #include <mfd/syscon.h>
 
+static LIST_HEAD(syscon_list);
+
 struct syscon {
+	struct device_node *np;
 	void __iomem *base;
+	struct list_head list;
 };
 
+static struct syscon *of_syscon_register(struct device_node *np)
+{
+	int ret;
+	struct syscon *syscon;
+	struct resource res;
+
+	if (!of_device_is_compatible(np, "syscon"))
+		return ERR_PTR(-EINVAL);
+
+	syscon = xzalloc(sizeof(*syscon));
+
+	if (of_address_to_resource(np, 0, &res)) {
+		ret = -ENOMEM;
+		goto err_map;
+	}
+
+	syscon->base = IOMEM(res.start);
+	syscon->np   = np;
+
+	list_add_tail(&syscon->list, &syscon_list);
+
+	return syscon;
+
+err_map:
+	kfree(syscon);
+	return ERR_PTR(ret);
+}
+
+void __iomem *syscon_node_to_base(struct device_node *np)
+{
+	struct syscon *entry, *syscon = NULL;
+
+	list_for_each_entry(entry, &syscon_list, list)
+		if (entry->np == np) {
+			syscon = entry;
+			break;
+		}
+
+	if (!syscon)
+		syscon = of_syscon_register(np);
+
+	if (IS_ERR(syscon))
+		return ERR_CAST(syscon);
+
+	return syscon->base;
+}
+EXPORT_SYMBOL_GPL(syscon_node_to_regmap);
+
+
 void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
 	struct syscon *syscon;
@@ -44,21 +97,17 @@ void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
 					    const char *property)
 {
-	struct device_node *node;
-	struct syscon *syscon;
-	struct device_d *dev;
+	struct device_node *syscon_np;
 
-	node = of_parse_phandle(np, property, 0);
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (property)
+		syscon_np = of_parse_phandle(np, property, 0);
+	else
+		syscon_np = np;
 
-	dev = of_find_device_by_node(node);
-	if (!dev)
+	if (!syscon_np)
 		return ERR_PTR(-ENODEV);
 
-	syscon = dev->priv;
-
-	return syscon->base;
+	return syscon_node_to_base(syscon_np);
 }
 
 static int syscon_probe(struct device_d *dev)
@@ -89,16 +138,10 @@ static struct platform_device_id syscon_ids[] = {
 	{ }
 };
 
-static struct of_device_id of_syscon_match[] = {
-	{ .compatible = "syscon" },
-	{ },
-};
-
 static struct driver_d syscon_driver = {
 	.name		= "syscon",
 	.probe		= syscon_probe,
 	.id_table	= syscon_ids,
-	.of_compatible	= DRV_OF_COMPAT(of_syscon_match),
 };
 
 static int __init syscon_init(void)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
