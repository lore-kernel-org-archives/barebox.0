Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ec9ig-00026n-FP
 for barebox@lists.infradead.org; Thu, 18 Jan 2018 12:55:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jan 2018 13:54:46 +0100
Message-Id: <20180118125446.29535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] FIT: export fit_open_configuration() and fit_open_image()
To: Barebox List <barebox@lists.infradead.org>

Currently only fit_open() is exported which only opens the predefined
images "kernel", "dtb" and "ramdisk". To make the FIT code more usable
for other code which may want to open other images export
fit_open_configuration() and fit_open_image().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c      |  9 ++++++-
 common/image-fit.c  | 77 ++++++++++++++++++++++++++++++++++++++---------------
 include/image-fit.h |  8 +++++-
 3 files changed, 71 insertions(+), 23 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index c23898bea7..05314a0a10 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -568,7 +568,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (IS_ENABLED(CONFIG_FITIMAGE) && os_type == filetype_oftree) {
 		struct fit_handle *fit;
 
-		fit = fit_open(data->os_file, data->os_part, data->verbose, data->verify);
+		fit = fit_open(data->os_file, data->verbose, data->verify);
 		if (IS_ERR(fit)) {
 			printf("Loading FIT image %s failed with: %s\n", data->os_file,
 			       strerrorp(fit));
@@ -577,6 +577,13 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 
 		data->os_fit = fit;
+
+		ret = fit_open_configuration(data->os_fit, data->os_part);
+		if (ret) {
+			printf("Cannot open FIT image configuration '%s'\n",
+			       data->os_part ? data->os_part : "default");
+			goto err_out;
+		}
 	}
 
 	if (os_type == filetype_uimage) {
diff --git a/common/image-fit.c b/common/image-fit.c
index 81433e6ecf..4d4b29ac26 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -397,14 +397,37 @@ err_digest_free:
 	return ret;
 }
 
-static int fit_open_image(struct fit_handle *handle, const char *unit, const void **outdata,
-	unsigned long *outsize)
+int fit_has_image(struct fit_handle *handle, const char *name)
+{
+	const char *unit;
+	struct device_node *conf_node = handle->conf_node;
+
+	if (!conf_node)
+		return -EINVAL;
+
+	if (of_property_read_string(conf_node, name, &unit))
+		return 0;
+
+	return 1;
+}
+
+int fit_open_image(struct fit_handle *handle, const char *name,
+		   const void **outdata, unsigned long *outsize)
 {
 	struct device_node *image = NULL, *hash;
-	const char *type = NULL, *desc= "(no description)";
+	const char *unit, *type = NULL, *desc= "(no description)";
 	const void *data;
 	int data_len;
 	int ret = 0;
+	struct device_node *conf_node = handle->conf_node;
+
+	if (!conf_node)
+		return -EINVAL;
+
+	if (of_property_read_string(conf_node, name, &unit)) {
+		pr_err("No image named '%s'\n", name);
+		return -ENOENT;
+	}
 
 	image = of_get_child_by_name(handle->root, "images");
 	if (!image)
@@ -523,7 +546,7 @@ default_unit:
 	return -ENOENT;
 }
 
-static int fit_open_configuration(struct fit_handle *handle, const char *name)
+int fit_open_configuration(struct fit_handle *handle, const char *name)
 {
 	struct device_node *conf_node = NULL;
 	const char *unit, *desc = "(no description)";
@@ -556,22 +579,25 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 	if (ret)
 		return ret;
 
-	if (of_property_read_string(conf_node, "kernel", &unit) == 0) {
-		ret = fit_open_image(handle, unit, &handle->kernel, &handle->kernel_size);
+	handle->conf_node = conf_node;
+
+	if (fit_has_image(handle, "kernel")) {
+		ret = fit_open_image(handle, "kernel", &handle->kernel,
+				     &handle->kernel_size);
 		if (ret)
 			return ret;
-	} else {
-		return -ENOENT;
 	}
 
-	if (of_property_read_string(conf_node, "fdt", &unit) == 0) {
-		ret = fit_open_image(handle, unit, &handle->oftree, &handle->oftree_size);
+	if (fit_has_image(handle, "ramdisk")) {
+		ret = fit_open_image(handle, "ramdisk", &handle->initrd,
+				     &handle->initrd_size);
 		if (ret)
 			return ret;
 	}
 
-	if (of_property_read_string(conf_node, "ramdisk", &unit) == 0) {
-		ret = fit_open_image(handle, unit, &handle->initrd, &handle->initrd_size);
+	if (fit_has_image(handle, "fdt")) {
+		ret = fit_open_image(handle, "fdt", &handle->oftree,
+				     &handle->oftree_size);
 		if (ret)
 			return ret;
 	}
@@ -579,7 +605,7 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 	return 0;
 }
 
-struct fit_handle *fit_open(const char *filename, const char *config, bool verbose,
+struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify)
 {
 	struct fit_handle *handle = NULL;
@@ -607,10 +633,6 @@ struct fit_handle *fit_open(const char *filename, const char *config, bool verbo
 	of_property_read_string(handle->root, "description", &desc);
 	pr_info("'%s': %s\n", filename, desc);
 
-	ret = fit_open_configuration(handle, config);
-	if (ret)
-		goto err;
-
 	return handle;
  err:
 	if (handle->root)
@@ -634,10 +656,23 @@ void fit_close(struct fit_handle *handle)
 static int do_bootm_sandbox_fit(struct image_data *data)
 {
 	struct fit_handle *handle;
-	handle = fit_open(data->os_file, data->os_part, data->verbose);
-	if (handle)
-		fit_close(handle);
-	return 0;
+	int ret;
+	void *kernel;
+	unsigned long kernel_size;
+
+	handle = fit_open(data->os_file, data->verbose);
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	ret = fit_open_configuration(handle, data->os_part);
+	if (ret)
+		goto out;
+
+	ret = 0;
+out:
+	fit_close(handle);
+
+	return ret;
 }
 
 static struct image_handler sandbox_fit_handler = {
diff --git a/include/image-fit.h b/include/image-fit.h
index c49f958268..62f44dcc8d 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -29,6 +29,7 @@ struct fit_handle {
 	enum bootm_verify verify;
 
 	struct device_node *root;
+	struct device_node *conf_node;
 
 	const void *kernel;
 	unsigned long kernel_size;
@@ -38,8 +39,13 @@ struct fit_handle {
 	unsigned long initrd_size;
 };
 
-struct fit_handle *fit_open(const char *filename, const char *config, bool verbose,
+struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify);
+int fit_open_configuration(struct fit_handle *handle, const char *name);
+int fit_has_image(struct fit_handle *handle, const char *name);
+int fit_open_image(struct fit_handle *handle, const char *name,
+		   const void **outdata, unsigned long *outsize);
+
 void fit_close(struct fit_handle *handle);
 
 #endif	/* __IMAGE_FIT_H__ */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
