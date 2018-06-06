Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbi-0004EJ-MO
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:11:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:29 +0200
Message-Id: <20180606071129.28884-7-s.hauer@pengutronix.de>
In-Reply-To: <20180606071129.28884-1-s.hauer@pengutronix.de>
References: <20180606071129.28884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] bootm: Split bootm_load_devicetree into two functions
To: Barebox List <barebox@lists.infradead.org>

It is not always desired to get the devicetree from image data and load
it to a SDRAM region at the same time. Sometimes it's enough to just
load it to an allocated address (in case the user has no constraints
where the devicetree should be placed.

This patch splits bootm_load_devicetree into bootm_get_devicetree which
returns a pointer to the allocated devicetree and bootm_load_devicetree
which loads the devicetree to a specified region.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c    | 13 ++++++--
 arch/arm/lib64/armlinux.c | 12 ++++++-
 common/bootm.c            | 66 ++++++++++++++++++++++++---------------
 include/bootm.h           |  4 ++-
 4 files changed, 64 insertions(+), 31 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 7817e1bdc1..a205228b43 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -165,11 +165,18 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 		free_mem = PAGE_ALIGN(initrd_end + 1);
 	}
 
+	if (!fdt) {
+		fdt = bootm_get_devicetree(data);
+		if (IS_ERR(fdt))
+			return PTR_ERR(fdt);
+	}
+
 	if (fdt) {
-		fdt_load_address = fdt;
-	} else {
 		fdt_load_address = (void *)free_mem;
-		ret = bootm_load_devicetree(data, free_mem);
+		ret = bootm_load_devicetree(data, fdt, free_mem);
+
+		free(fdt);
+
 		if (ret)
 			return ret;
 	}
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 238e8b67a4..afa56792fb 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -38,6 +38,7 @@ static int do_bootm_linux(struct image_data *data)
 	resource_size_t start, end;
 	unsigned long text_offset, image_size, devicetree, kernel;
 	int ret;
+	void *fdt;
 
 	text_offset = le64_to_cpup(data->os_header + 8);
 	image_size = le64_to_cpup(data->os_header + 16);
@@ -54,7 +55,16 @@ static int do_bootm_linux(struct image_data *data)
 
 	devicetree = ALIGN(kernel + image_size, PAGE_SIZE);
 
-	ret = bootm_load_devicetree(data, devicetree);
+	fdt = bootm_get_devicetree(data);
+	if (IS_ERR(fdt)) {
+		ret = PTR_ERR(fdt);
+		goto out;
+	}
+
+	ret = bootm_load_devicetree(data, fdt, devicetree);
+
+	free(fdt);
+
 	if (ret)
 		goto out;
 
diff --git a/common/bootm.c b/common/bootm.c
index 8167c3a603..b95bca4984 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -320,25 +320,24 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
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
+ * This gets the fixed devicetree from the various image sources or the internal
+ * devicetree. It returns a pointer to the allocated devicetree which must be
+ * freed after use.
  *
- * Return: 0 on success, negative error code otherwise
+ * Return: pointer to the fixed devicetree or a ERR_PTR() on failure.
  */
-int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
+void *bootm_get_devicetree(struct image_data *data)
 {
 	enum filetype type;
-	int fdt_size;
 	struct fdt_header *oftree;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
-		return 0;
+		return ERR_PTR(-ENOSYS);
 
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
 	    fit_has_image(data->os_fit, data->fit_config, "fdt")) {
@@ -348,7 +347,7 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
 				     &of_tree, &of_size);
 		if (ret)
-			return ret;
+			return ERR_PTR(ret);
 
 		data->of_root_node = of_unflatten_dtb(of_tree);
 	} else if (data->oftree_file) {
@@ -359,7 +358,7 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 		if ((int)type < 0) {
 			printf("could not open %s: %s\n", data->oftree_file,
 					strerror(-type));
-			return (int)type;
+			return ERR_PTR((int)type);
 		}
 
 		switch (type) {
@@ -372,11 +371,11 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 					  FILESIZE_MAX);
 			break;
 		default:
-			return -EINVAL;
+			return ERR_PTR(-EINVAL);
 		}
 
 		if (ret)
-			return ret;
+			return ERR_PTR(ret);
 
 		data->of_root_node = of_unflatten_dtb(oftree);
 
@@ -385,13 +384,13 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 		if (IS_ERR(data->of_root_node)) {
 			data->of_root_node = NULL;
 			pr_err("unable to unflatten devicetree\n");
-			return -EINVAL;
+			return ERR_PTR(-EINVAL);
 		}
 
 	} else {
 		data->of_root_node = of_get_root_node();
 		if (!data->of_root_node)
-			return 0;
+			return NULL;
 
 		if (bootm_verbose(data) > 1 && data->of_root_node)
 			printf("using internal devicetree\n");
@@ -405,24 +404,39 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 
 	oftree = of_get_fixed_tree(data->of_root_node);
 	if (!oftree)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 
-	fdt_size = be32_to_cpu(oftree->totalsize);
+	fdt_add_reserve_map(oftree);
 
-	data->oftree_res = request_sdram_region("oftree", load_address,
-			fdt_size);
-	if (!data->oftree_res) {
-		free(oftree);
-		return -ENOMEM;
-	}
+	return oftree;
+}
 
-	memcpy((void *)data->oftree_res->start, oftree, fdt_size);
+/*
+ * bootm_load_devicetree() - load devicetree
+ *
+ * @data:		image data context
+ * @fdt:		The flat device tree to load
+ * @load_address:	The address where the devicetree should be loaded to
+ *
+ * This loads the devicetree to a RAM location. load_address must be a valid
+ * address which is requested with request_sdram_region. The associated region
+ * is released automatically in the bootm error path.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int bootm_load_devicetree(struct image_data *data, void *fdt,
+			    unsigned long load_address)
+{
+	int fdt_size;
 
-	free(oftree);
+	fdt_size = be32_to_cpu(((struct fdt_header *)fdt)->totalsize);
 
-	oftree = (void *)data->oftree_res->start;
+	data->oftree_res = request_sdram_region("oftree", load_address,
+			fdt_size);
+	if (!data->oftree_res)
+		return -ENOMEM;
 
-	fdt_add_reserve_map(oftree);
+	memcpy((void *)data->oftree_res->start, fdt, fdt_size);
 
 	of_print_cmdline(data->of_root_node);
 	if (bootm_verbose(data) > 1)
diff --git a/include/bootm.h b/include/bootm.h
index 03779772c4..fdc73f711a 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -125,7 +125,9 @@ int bootm_load_os(struct image_data *data, unsigned long load_address);
 bool bootm_has_initrd(struct image_data *data);
 int bootm_load_initrd(struct image_data *data, unsigned long load_address);
 
-int bootm_load_devicetree(struct image_data *data, unsigned long load_address);
+void *bootm_get_devicetree(struct image_data *data);
+int bootm_load_devicetree(struct image_data *data, void *fdt,
+			  unsigned long load_address);
 int bootm_get_os_size(struct image_data *data);
 
 enum bootm_verify bootm_get_verify_mode(void);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
