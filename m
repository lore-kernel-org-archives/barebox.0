Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zv1-0006iv-Hf
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:56 +0100
Message-Id: <1389351959-20448-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
References: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] bootm: introduce bootm_load_devicetree helper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/boot.h |  2 ++
 2 files changed, 65 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 9ccbe8f..d62d011 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -123,6 +123,67 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	return 0;
 }
 
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
+int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
+{
+	int fdt_size;
+	struct fdt_header *oftree;
+
+	if (data->oftree)
+		return 0;
+
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return 0;
+
+	if (!data->of_root_node)
+		return 0;
+
+	if (data->initrd_res) {
+		of_add_initrd(data->of_root_node, data->initrd_res->start,
+				data->initrd_res->end);
+		of_add_reserve_entry(data->initrd_res->start, data->initrd_res->end);
+	}
+
+	oftree = of_get_fixed_tree(data->of_root_node);
+	if (!oftree)
+		return -EINVAL;
+
+	fdt_size = be32_to_cpu(oftree->totalsize);
+
+	data->oftree_res = request_sdram_region("oftree", load_address,
+			fdt_size);
+	if (!data->oftree_res) {
+		free(oftree);
+		return -ENOMEM;
+	}
+
+	memcpy((void *)data->oftree_res->start, oftree, fdt_size);
+
+	free(oftree);
+
+	oftree = (void *)data->oftree_res->start;
+
+	fdt_add_reserve_map(oftree);
+
+	of_print_cmdline(data->of_root_node);
+	if (bootm_verbose(data) > 1)
+		of_print_nodes(data->of_root_node, 0);
+
+	data->oftree = oftree;
+
+	return 0;
+}
+
 static int bootm_open_os_uimage(struct image_data *data)
 {
 	int ret;
@@ -412,6 +473,8 @@ err_out:
 		release_sdram_region(data->os_res);
 	if (data->initrd_res)
 		release_sdram_region(data->initrd_res);
+	if (data->oftree_res)
+		release_sdram_region(data->oftree_res);
 	if (data->initrd && data->initrd != data->os)
 		uimage_close(data->initrd);
 	if (data->os)
diff --git a/include/boot.h b/include/boot.h
index 0cb2949..bdd5477 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -61,6 +61,7 @@ struct image_data {
 
 	struct device_node *of_root_node;
 	struct fdt_header *oftree;
+	struct resource *oftree_res;
 
 	int verify;
 	int verbose;
@@ -110,6 +111,7 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 
 int bootm_load_os(struct image_data *data, unsigned long load_address);
 int bootm_load_initrd(struct image_data *data, unsigned long load_address);
+int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
