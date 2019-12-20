Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKY-0003jj-Gm
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:24 +0100
Message-Id: <20191220143232.28354-3-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/10] of: Add of_bus_n_xxx_cells()
To: Barebox List <barebox@lists.infradead.org>

Added straight from the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 46 ++++++++++++++++++++++++++++------------------
 include/of.h      | 12 ++++++++++++
 2 files changed, 40 insertions(+), 18 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 80ceeab13b..9ede052274 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -78,36 +78,46 @@ static struct device_node *of_aliases;
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
 #define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
 
-int of_n_addr_cells(struct device_node *np)
+int of_bus_n_addr_cells(struct device_node *np)
 {
-	const __be32 *ip;
+	u32 cells;
+
+	for (; np; np = np->parent)
+		if (!of_property_read_u32(np, "#address-cells", &cells))
+			return cells;
 
-	do {
-		if (np->parent)
-			np = np->parent;
-		ip = of_get_property(np, "#address-cells", NULL);
-		if (ip)
-			return be32_to_cpup(ip);
-	} while (np->parent);
 	/* No #address-cells property for the root node */
 	return OF_ROOT_NODE_ADDR_CELLS_DEFAULT;
 }
+
+int of_n_addr_cells(struct device_node *np)
+{
+	if (np->parent)
+		np = np->parent;
+
+	return of_bus_n_addr_cells(np);
+}
 EXPORT_SYMBOL(of_n_addr_cells);
 
-int of_n_size_cells(struct device_node *np)
+int of_bus_n_size_cells(struct device_node *np)
 {
-	const __be32 *ip;
+	u32 cells;
+
+	for (; np; np = np->parent)
+		if (!of_property_read_u32(np, "#size-cells", &cells))
+			return cells;
 
-	do {
-		if (np->parent)
-			np = np->parent;
-		ip = of_get_property(np, "#size-cells", NULL);
-		if (ip)
-			return be32_to_cpup(ip);
-	} while (np->parent);
 	/* No #size-cells property for the root node */
 	return OF_ROOT_NODE_SIZE_CELLS_DEFAULT;
 }
+
+int of_n_size_cells(struct device_node *np)
+{
+	if (np->parent)
+		np = np->parent;
+
+	return of_bus_n_size_cells(np);
+}
 EXPORT_SYMBOL(of_n_size_cells);
 
 struct property *of_find_property(const struct device_node *np,
diff --git a/include/of.h b/include/of.h
index f63a3efe13..67601ce80c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -113,7 +113,9 @@ struct device_node *of_unflatten_dtb_const(const void *infdt);
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
+extern int of_bus_n_size_cells(struct device_node *np);
 extern int of_n_size_cells(struct device_node *np);
 
 extern struct property *of_find_property(const struct device_node *np,
@@ -328,11 +330,21 @@ static inline struct device_d *of_platform_device_create(struct device_node *np,
 	return NULL;
 }
 
+static inline int of_bus_n_addr_cells(struct device_node *np)
+{
+	return 0;
+}
+
 static inline int of_n_addr_cells(struct device_node *np)
 {
 	return 0;
 }
 
+static inline int of_bus_n_size_cells(struct device_node *np)
+{
+	return 0;
+}
+
 static inline int of_n_size_cells(struct device_node *np)
 {
 	return 0;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
