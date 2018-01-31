Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bO-IN
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:09 +0100
Message-Id: <20180131111116.9638-2-s.hauer@pengutronix.de>
In-Reply-To: <20180131111116.9638-1-s.hauer@pengutronix.de>
References: <20180131111116.9638-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] bootm: FIT: do not depend on FIT pre-opened images
To: Barebox List <barebox@lists.infradead.org>

When calling fit_open_configuration the FIT code already opens
the images "kernel", "ramdisk" and "dtb". This does not fit well
into the FIT code, so make the bootm code independent of these
pre-opened images so that we can drop the opening from the FIT
code in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c  | 46 ++++++++++++++++++++++++++++++++--------------
 include/bootm.h |  3 +++
 2 files changed, 35 insertions(+), 14 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 05314a0a10..8961c58c8b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -111,13 +111,14 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		return -EINVAL;
 
 	if (data->os_fit) {
+		const void *kernel = data->fit_kernel;
+		unsigned long kernel_size = data->fit_kernel_size;
+
 		data->os_res = request_sdram_region("kernel",
-				load_address,
-				data->os_fit->kernel_size);
+				load_address, kernel_size);
 		if (!data->os_res)
 			return -ENOMEM;
-		memcpy((void *)load_address, data->os_fit->kernel,
-		       data->os_fit->kernel_size);
+		memcpy((void *)load_address, kernel, kernel_size);
 		return 0;
 	}
 
@@ -150,7 +151,8 @@ bool bootm_has_initrd(struct image_data *data)
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return false;
 
-	if (data->os_fit && data->os_fit->initrd)
+	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
+	    fit_has_image(data->os_fit, "ramdisk"))
 		return true;
 
 	if (data->initrd_file)
@@ -211,14 +213,20 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	if (data->initrd_res)
 		return 0;
 
-	if (data->os_fit && data->os_fit->initrd) {
+	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
+	    fit_has_image(data->os_fit, "ramdisk")) {
+		const void *initrd;
+		unsigned long initrd_size;
+
+		ret = fit_open_image(data->os_fit, "ramdisk", &initrd,
+				     &initrd_size);
+
 		data->initrd_res = request_sdram_region("initrd",
 				load_address,
-				data->os_fit->initrd_size);
+				initrd_size);
 		if (!data->initrd_res)
 			return -ENOMEM;
-		memcpy((void *)load_address, data->os_fit->initrd,
-		       data->os_fit->initrd_size);
+		memcpy((void *)load_address, initrd, initrd_size);
 		printf("Loaded initrd from FIT image\n");
 		goto done1;
 	}
@@ -335,11 +343,16 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return 0;
 
-	if (data->os_fit && data->os_fit->oftree) {
-		data->of_root_node = of_unflatten_dtb(data->os_fit->oftree);
+	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
+	    fit_has_image(data->os_fit, "dtb")) {
+		const void *of_tree;
+		unsigned long of_size;
 
-		if (IS_ERR(data->of_root_node))
-			data->of_root_node = NULL;
+		ret = fit_open_image(data->os_fit, "dtb", &of_tree, &of_size);
+		if (ret)
+			return ret;
+
+		data->of_root_node = of_unflatten_dtb(of_tree);
 	} else if (data->oftree_file) {
 		size_t size;
 
@@ -429,7 +442,7 @@ int bootm_get_os_size(struct image_data *data)
 	if (data->os)
 		return uimage_get_size(data->os, uimage_part_num(data->os_part));
 	if (data->os_fit)
-		return data->os_fit->kernel_size;
+		return data->fit_kernel_size;
 
 	if (data->os_file) {
 		struct stat s;
@@ -584,6 +597,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 			       data->os_part ? data->os_part : "default");
 			goto err_out;
 		}
+
+		ret = fit_open_image(data->os_fit, "kernel", &data->fit_kernel,
+				     &data->fit_kernel_size);
+		if (ret)
+			goto err_out;;
 	}
 
 	if (os_type == filetype_uimage) {
diff --git a/include/bootm.h b/include/bootm.h
index 6e9777a9ac..7ba7b8b96f 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -73,6 +73,9 @@ struct image_data {
 	char *oftree_file;
 	char *oftree_part;
 
+	const void *fit_kernel;
+	unsigned long fit_kernel_size;
+
 	struct device_node *of_root_node;
 	struct fdt_header *oftree;
 	struct resource *oftree_res;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
