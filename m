Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bN-IP
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:11 +0100
Message-Id: <20180131111116.9638-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] FIT: Let user specify the configuration to use
To: Barebox List <barebox@lists.infradead.org>

The images in FIT images can be opened in two different ways. They
can be either opened directly based on their names in the images/
node or as part of a configuration based on their names in the
corresponding /configuration/ node.

So far we only supported the latter. To prepare supporting the former
we return a cookie belonging to the configuration from
fit_open_configuration() which we use in fit_open_image() to refer
to the desired configuration.

While at it document fit_open_configuration().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c      | 25 ++++++++++++++-----------
 common/image-fit.c  | 37 ++++++++++++++++++++++++-------------
 include/bootm.h     |  1 +
 include/image-fit.h | 11 ++++++-----
 4 files changed, 45 insertions(+), 29 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 8961c58c8b..6f6178575f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -152,7 +152,7 @@ bool bootm_has_initrd(struct image_data *data)
 		return false;
 
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
-	    fit_has_image(data->os_fit, "ramdisk"))
+	    fit_has_image(data->os_fit, data->fit_config, "ramdisk"))
 		return true;
 
 	if (data->initrd_file)
@@ -214,12 +214,12 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		return 0;
 
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
-	    fit_has_image(data->os_fit, "ramdisk")) {
+	    fit_has_image(data->os_fit, data->fit_config, "ramdisk")) {
 		const void *initrd;
 		unsigned long initrd_size;
 
-		ret = fit_open_image(data->os_fit, "ramdisk", &initrd,
-				     &initrd_size);
+		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
+				     &initrd, &initrd_size);
 
 		data->initrd_res = request_sdram_region("initrd",
 				load_address,
@@ -344,11 +344,12 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 		return 0;
 
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit &&
-	    fit_has_image(data->os_fit, "dtb")) {
+	    fit_has_image(data->os_fit, data->fit_config, "dtb")) {
 		const void *of_tree;
 		unsigned long of_size;
 
-		ret = fit_open_image(data->os_fit, "dtb", &of_tree, &of_size);
+		ret = fit_open_image(data->os_fit, data->fit_config, "dtb",
+				     &of_tree, &of_size);
 		if (ret)
 			return ret;
 
@@ -591,17 +592,19 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 		data->os_fit = fit;
 
-		ret = fit_open_configuration(data->os_fit, data->os_part);
-		if (ret) {
+		data->fit_config = fit_open_configuration(data->os_fit,
+							  data->os_part);
+		if (IS_ERR(data->fit_config)) {
 			printf("Cannot open FIT image configuration '%s'\n",
 			       data->os_part ? data->os_part : "default");
+			ret = PTR_ERR(data->fit_config);
 			goto err_out;
 		}
 
-		ret = fit_open_image(data->os_fit, "kernel", &data->fit_kernel,
-				     &data->fit_kernel_size);
+		ret = fit_open_image(data->os_fit, data->fit_config, "kernel",
+				     &data->fit_kernel, &data->fit_kernel_size);
 		if (ret)
-			goto err_out;;
+			goto err_out;
 	}
 
 	if (os_type == filetype_uimage) {
diff --git a/common/image-fit.c b/common/image-fit.c
index 8715689cfb..138696ab78 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -397,10 +397,11 @@ err_digest_free:
 	return ret;
 }
 
-int fit_has_image(struct fit_handle *handle, const char *name)
+int fit_has_image(struct fit_handle *handle, void *configuration,
+		  const char *name)
 {
 	const char *unit;
-	struct device_node *conf_node = handle->conf_node;
+	struct device_node *conf_node = configuration;
 
 	if (!conf_node)
 		return -EINVAL;
@@ -411,15 +412,16 @@ int fit_has_image(struct fit_handle *handle, const char *name)
 	return 1;
 }
 
-int fit_open_image(struct fit_handle *handle, const char *name,
-		   const void **outdata, unsigned long *outsize)
+int fit_open_image(struct fit_handle *handle, void *configuration,
+		   const char *name, const void **outdata,
+		   unsigned long *outsize)
 {
 	struct device_node *image = NULL, *hash;
 	const char *unit, *type = NULL, *desc= "(no description)";
 	const void *data;
 	int data_len;
 	int ret = 0;
-	struct device_node *conf_node = handle->conf_node;
+	struct device_node *conf_node = configuration;
 
 	if (!conf_node)
 		return -EINVAL;
@@ -546,7 +548,18 @@ default_unit:
 	return -ENOENT;
 }
 
-int fit_open_configuration(struct fit_handle *handle, const char *name)
+/**
+ * fit_open_configuration - open a FIT configuration
+ * @handle: The FIT image handle
+ * @name: The name of the configuration
+ *
+ * This opens a FIT configuration and eventually checks the signature
+ * depending on the verify mode the FIT image is opened with.
+ *
+ * Return: If successful a pointer to a valid configuration node,
+ *         otherwise a ERR_PTR()
+ */
+void *fit_open_configuration(struct fit_handle *handle, const char *name)
 {
 	struct device_node *conf_node = NULL;
 	const char *unit, *desc = "(no description)";
@@ -554,7 +567,7 @@ int fit_open_configuration(struct fit_handle *handle, const char *name)
 
 	conf_node = of_get_child_by_name(handle->root, "configurations");
 	if (!conf_node)
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 
 	if (name) {
 		unit = name;
@@ -562,14 +575,14 @@ int fit_open_configuration(struct fit_handle *handle, const char *name)
 		ret = fit_find_compatible_unit(conf_node, &unit);
 		if (ret) {
 			pr_info("Couldn't get a valid configuration. Aborting.\n");
-			return ret;
+			return ERR_PTR(ret);
 		}
 	}
 
 	conf_node = of_get_child_by_name(conf_node, unit);
 	if (!conf_node) {
 		pr_err("configuration '%s' not found\n", unit);
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 	}
 
 	of_property_read_string(conf_node, "description", &desc);
@@ -577,11 +590,9 @@ int fit_open_configuration(struct fit_handle *handle, const char *name)
 
 	ret = fit_config_verify_signature(handle, conf_node);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
-	handle->conf_node = conf_node;
-
-	return 0;
+	return conf_node;
 }
 
 struct fit_handle *fit_open(const char *filename, bool verbose,
diff --git a/include/bootm.h b/include/bootm.h
index 7ba7b8b96f..35c18dc276 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -75,6 +75,7 @@ struct image_data {
 
 	const void *fit_kernel;
 	unsigned long fit_kernel_size;
+	void *fit_config;
 
 	struct device_node *of_root_node;
 	struct fdt_header *oftree;
diff --git a/include/image-fit.h b/include/image-fit.h
index 0e26a40ef7..31e23b235a 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -29,15 +29,16 @@ struct fit_handle {
 	enum bootm_verify verify;
 
 	struct device_node *root;
-	struct device_node *conf_node;
 };
 
 struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify);
-int fit_open_configuration(struct fit_handle *handle, const char *name);
-int fit_has_image(struct fit_handle *handle, const char *name);
-int fit_open_image(struct fit_handle *handle, const char *name,
-		   const void **outdata, unsigned long *outsize);
+void *fit_open_configuration(struct fit_handle *handle, const char *name);
+int fit_has_image(struct fit_handle *handle, void *configuration,
+		  const char *name);
+int fit_open_image(struct fit_handle *handle, void *configuration,
+		   const char *name, const void **outdata,
+		   unsigned long *outsize);
 
 void fit_close(struct fit_handle *handle);
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
