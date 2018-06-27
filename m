Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fY1bt-0007Vb-7Z
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 03:59:14 +0000
Received: by mail-pg0-x244.google.com with SMTP id z1-v6so321463pgv.12
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 20:59:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 20:58:41 -0700
Message-Id: <20180627035842.17858-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] nvmem: Introduce nvmem_cell_get_and_read()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce nvmem_cell_get_and_read() that combines getting a NVMEM cell
by name and reading its contents.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c           | 23 +++++++++++++++++++++++
 include/linux/nvmem-consumer.h | 10 ++++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 53b934bb3..c785de125 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -750,3 +750,26 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 	return bytes;
 }
 EXPORT_SYMBOL_GPL(nvmem_device_write);
+
+void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
+			      size_t bytes)
+{
+	struct nvmem_cell *cell;
+	void *value;
+	size_t len;
+
+	cell = of_nvmem_cell_get(np, cell_name);
+	if (IS_ERR(cell))
+		return cell;
+
+	value = nvmem_cell_read(cell, &len);
+	if (!IS_ERR(value) && len != bytes) {
+		kfree(value);
+		value = ERR_PTR(-EINVAL);
+	}
+
+	nvmem_cell_put(cell);
+
+	return value;
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_get_and_read);
\ No newline at end of file
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 606cadb49..0ec2f05b9 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -32,6 +32,9 @@ struct nvmem_cell_info {
 struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *name);
 void nvmem_cell_put(struct nvmem_cell *cell);
 void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len);
+void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
+			      size_t bytes);
+
 int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
 
 /* direct nvmem device read/write interface */
@@ -55,6 +58,13 @@ static inline char *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline void *nvmem_cell_get_and_read(struct device_node *np,
+					    const char *cell_name,
+					    size_t bytes)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline int nvmem_cell_write(struct nvmem_cell *cell,
 				    const char *buf, size_t len)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
