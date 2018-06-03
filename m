Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPMQN-0006C9-RZ
 for barebox@lists.infradead.org; Sun, 03 Jun 2018 06:23:36 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sun,  3 Jun 2018 08:23:13 +0200
Message-Id: <20180603062314.26960-4-o.rempel@pengutronix.de>
In-Reply-To: <20180603062314.26960-1-o.rempel@pengutronix.de>
References: <20180603062314.26960-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/4] bootm: split split bootm_load_devicetree function
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

In some cases we don't won't to load devicetree some where in free ram
area, it is easier to keep it withing allocated area of barebox
and then give the pointer to the kernel.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/bootm.c  | 39 +++++++++++++++++++++++++++++++++------
 include/bootm.h |  1 +
 2 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 5ff6683fe..a9d18fb57 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -320,20 +320,17 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 }
 
 /*
- * bootm_load_devicetree() - load devicetree
+ * bootm_get_devicetree() - get devicetree
  *
  * @data:		image data context
- * @load_address:	The address where the devicetree should be loaded to
  *
- * This loads the devicetree to a RAM location. load_address must be a valid
- * address. The resulting devicetree will be found at data->oftree.
+ * Prepare devicetree for later use by boot handler.
  *
  * Return: 0 on success, negative error code otherwise
  */
-int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
+int bootm_get_devicetree(struct image_data *data)
 {
 	enum filetype type;
-	int fdt_size;
 	struct fdt_header *oftree;
 	int ret;
 
@@ -410,6 +407,36 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 	if (!oftree)
 		return -EINVAL;
 
+	data->oftree = oftree;
+
+	return 0;
+}
+
+/*
+ * bootm_load_devicetree() - load devicetree
+ *
+ * @data:		image data context
+ * @load_address:	The address where the devicetree should be loaded to
+ *
+ * This loads the devicetree to a RAM location. load_address must be a valid
+ * address. The resulting devicetree will be found at data->oftree.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+
+int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
+{
+	struct fdt_header *oftree;
+	int fdt_size;
+	int ret;
+
+	ret = bootm_get_devicetree(data);
+	if (ret)
+		return ret;
+
+	oftree = data->oftree;
+
+
 	fdt_size = be32_to_cpu(oftree->totalsize);
 
 	data->oftree_res = request_sdram_region("oftree", load_address,
diff --git a/include/bootm.h b/include/bootm.h
index 62951d605..410b42cde 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -126,6 +126,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address);
 bool bootm_has_initrd(struct image_data *data);
 int bootm_load_initrd(struct image_data *data, unsigned long load_address);
 
+int bootm_get_devicetree(struct image_data *data);
 int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
 int bootm_get_os_size(struct image_data *data);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
