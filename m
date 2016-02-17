Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwV-0003nc-Ax
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:14 +0000
Received: by mail-pa0-x232.google.com with SMTP id fy10so1485575pac.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:17 -0800
Message-Id: <1455672559-25061-17-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/18] [RFC] nvmem: Add of_nvmem_cell_from_cell_np
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add of_nvmem_cell_from_cell_np to allow creating 'struct nvmem_cell'
form a phandle of 'nvmem' cell.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c           | 57 ++++++++++++++++++++++++++----------------
 include/linux/nvmem-consumer.h | 10 ++++++++
 2 files changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 0214253..5f9b2ce 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -342,32 +342,16 @@ static struct nvmem_cell *nvmem_cell_get_from_list(const char *cell_id)
 }
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
-/**
- * of_nvmem_cell_get() - Get a nvmem cell from given device node and cell id
- *
- * @dev node: Device tree node that uses the nvmem cell
- * @id: nvmem cell name from nvmem-cell-names property.
- *
- * Return: Will be an ERR_PTR() on error or a valid pointer
- * to a struct nvmem_cell.  The nvmem_cell will be freed by the
- * nvmem_cell_put().
- */
-struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
-					    const char *name)
+
+
+struct nvmem_cell *
+of_nvmem_cell_from_cell_np(struct device_node *cell_np)
 {
-	struct device_node *cell_np, *nvmem_np;
+	struct device_node *nvmem_np;
 	struct nvmem_cell *cell;
 	struct nvmem_device *nvmem;
 	const __be32 *addr;
-	int rval, len, index;
-
-	index = of_property_match_string(np, "nvmem-cell-names", name);
-	if (index < 0)
-		return ERR_PTR(index);
-
-	cell_np = of_parse_phandle(np, "nvmem-cells", index);
-	if (!cell_np)
-		return ERR_PTR(-EINVAL);
+	int rval, len;
 
 	nvmem_np = of_get_parent(cell_np);
 	if (!nvmem_np)
@@ -429,6 +413,35 @@ err_mem:
 
 	return ERR_PTR(rval);
 }
+EXPORT_SYMBOL_GPL(of_nvmem_cell_from_cell_np);
+
+/**
+ * of_nvmem_cell_get() - Get a nvmem cell from given device node and cell id
+ *
+ * @dev node: Device tree node that uses the nvmem cell
+ * @id: nvmem cell name from nvmem-cell-names property.
+ *
+ * Return: Will be an ERR_PTR() on error or a valid pointer
+ * to a struct nvmem_cell.  The nvmem_cell will be freed by the
+ * nvmem_cell_put().
+ */
+struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
+				     const char *name)
+{
+	struct device_node *cell_np;
+	int index;
+
+	index = of_property_match_string(np, "nvmem-cell-names", name);
+	if (index < 0)
+		return ERR_PTR(index);
+
+	cell_np = of_parse_phandle(np, "nvmem-cells", index);
+	if (!cell_np)
+		return ERR_PTR(-EINVAL);
+
+
+	return of_nvmem_cell_from_cell_np(cell_np);
+}
 EXPORT_SYMBOL_GPL(of_nvmem_cell_get);
 #endif
 
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index cae6ec7..76d6138 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -136,11 +136,21 @@ static inline int nvmem_device_write(struct nvmem_device *nvmem,
 #endif /* CONFIG_NVMEM */
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
+struct nvmem_cell *
+of_nvmem_cell_from_cell_np(struct device_node *cell_np);
+
 struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 				     const char *name);
 struct nvmem_device *of_nvmem_device_get(struct device_node *np,
 					 const char *name);
+
 #else
+struct nvmem_cell *
+of_nvmem_cell_from_cell_np(struct device_node *cell_np)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 				     const char *name)
 {
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
