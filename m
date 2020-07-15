Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from dedi548.your-server.de ([85.10.215.148])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvdgz-0002LD-Nf
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 09:27:11 +0000
From: Christian Mauderer <christian.mauderer@embedded-brains.de>
Date: Wed, 15 Jul 2020 11:26:56 +0200
Message-Id: <20200715092656.27253-1-christian.mauderer@embedded-brains.de>
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
Subject: [PATCH v5] FIT: Parse `load` and `entry` addresses.
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de

According to the U-Boot documentation for the FIT file format, the load
and entry have to be allways defined for a "kernel" or "standalone".
But Barebox ignored the parameters. That changes with this patch.

For backward compatibility the default address is still used for images
without `load` or `entry`.

Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
---
 common/blspec.c     |  1 +
 common/boot.c       |  1 +
 common/bootm.c      | 24 ++++++++++-
 common/image-fit.c  | 97 ++++++++++++++++++++++++++++++++++++++-------
 include/image-fit.h |  3 ++
 5 files changed, 110 insertions(+), 16 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 7fb62d310..050aed26a 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -142,6 +142,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	globalvar_set_match("bootm.initrd", "");
 
 	bootm_data_init_defaults(&data);
+	data.os_entry = 0;
 
 	devicetree = blspec_entry_var_get(entry, "devicetree");
 	initrd = blspec_entry_var_get(entry, "initrd");
diff --git a/common/boot.c b/common/boot.c
index dcbe5cc2e..93ac1612d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -104,6 +104,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	bootm_data_init_defaults(&data);
 
+	data.os_entry = 0;
 	if (verbose)
 		data.verbose = verbose;
 	if (dryrun)
diff --git a/common/bootm.c b/common/bootm.c
index 366f31455..8f8dbe6cb 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -58,6 +58,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 {
 	data->initrd_address = UIMAGE_INVALID_ADDRESS;
 	data->os_address = UIMAGE_SOME_ADDRESS;
+	data->os_entry = UIMAGE_SOME_ADDRESS;
 	data->oftree_file = getenv_nonempty("global.bootm.oftree");
 	data->tee_file = getenv_nonempty("global.bootm.tee");
 	data->os_file = getenv_nonempty("global.bootm.image");
@@ -601,6 +602,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	if (IS_ENABLED(CONFIG_FITIMAGE) && os_type == filetype_oftree) {
 		struct fit_handle *fit;
+		static const char *kernel_img = "kernel";
 
 		fit = fit_open(data->os_file, data->verbose, data->verify);
 		if (IS_ERR(fit)) {
@@ -621,10 +623,28 @@ int bootm_boot(struct bootm_data *bootm_data)
 			goto err_out;
 		}
 
-		ret = fit_open_image(data->os_fit, data->fit_config, "kernel",
+		ret = fit_open_image(data->os_fit, data->fit_config, kernel_img,
 				     &data->fit_kernel, &data->fit_kernel_size);
 		if (ret)
 			goto err_out;
+		if (data->os_address == UIMAGE_SOME_ADDRESS) {
+			ret = fit_get_image_address(data->os_fit,
+						    data->fit_config,
+						    kernel_img,
+						    "load", &data->os_address);
+			if (ret)
+				goto err_out;
+		}
+		if (data->os_entry == UIMAGE_SOME_ADDRESS) {
+			unsigned long entry;
+			ret = fit_get_image_address(data->os_fit,
+						    data->fit_config,
+						    kernel_img,
+						    "entry", &entry);
+			if (!ret)
+				data->os_entry = entry - data->os_address;
+				/* Note: Error case used default value. */
+		}
 	}
 
 	if (os_type == filetype_uimage) {
@@ -672,6 +692,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = UIMAGE_INVALID_ADDRESS;
+	if (data->os_entry == UIMAGE_SOME_ADDRESS)
+		data->os_entry = 0;
 
 	handler = bootm_find_handler(os_type, data);
 	if (!handler) {
diff --git a/common/image-fit.c b/common/image-fit.c
index 2681d62a9..61aa299b1 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -517,6 +517,83 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
 	return 1;
 }
 
+static int fit_get_address(struct device_node *image, const char *property,
+			   unsigned long *addr)
+{
+	const __be32 *cell;
+	int len = 0;
+
+	cell = of_get_property(image, property, &len);
+	if (!cell)
+		return -EINVAL;
+	if (len > sizeof(*addr))
+		return -ENOTSUPP;
+
+	*addr = (unsigned long)of_read_number(cell, len / sizeof(*cell));
+	return 0;
+}
+
+static int
+fit_get_image(struct fit_handle *handle, void *configuration,
+	      const char **unit, struct device_node **image)
+{
+	struct device_node *conf_node = configuration;
+
+	if (conf_node) {
+		if (of_property_read_string(conf_node, *unit, unit)) {
+			pr_err("No image named '%s'\n", *unit);
+			return -ENOENT;
+		}
+	}
+
+	*image = of_get_child_by_name(handle->images, *unit);
+	if (!*image)
+		return -ENOENT;
+
+	return 0;
+}
+
+/**
+ * fit_get_image_address - Get an address from an image in a FIT image
+ * @handle: The FIT image handle
+ * @name: The name of the image to open
+ * @property: The name of the address to get (for example "load" or "entry")
+ * @address: The address given by the image
+ *
+ * Try to parse the @property in the image @name as an address. @configuration
+ * holds the cookie returned from fit_open_configuration() if the image is
+ * opened as part of a configuration, or NULL if the image is opened without a
+ * configuration. If it exists the value will be returned in @address. Otherwise
+ * @address won't be changed.
+ *
+ * Return: 0 for success, negative error code otherwise
+ */
+int fit_get_image_address(struct fit_handle *handle, void *configuration,
+			  const char *name, const char *property,
+			  unsigned long *address)
+{
+	struct device_node *image;
+	const char *unit = name;
+	int ret;
+
+	if (!address || !property || !name)
+		return -EINVAL;
+
+	ret = fit_get_image(handle, configuration, &unit, &image);
+	if (ret)
+		return ret;
+
+	pr_info("%s/%s: ", image->full_name, property);
+
+	ret = fit_get_address(image, property, address);
+	if (ret < 0)
+		pr_cont("<not found>\n");
+	else
+		pr_cont("0x%lx\n", *address);
+
+	return ret;
+}
+
 /**
  * fit_open_image - Open an image in a FIT image
  * @handle: The FIT image handle
@@ -539,24 +616,14 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		   unsigned long *outsize)
 {
 	struct device_node *image;
-	const char *unit, *type = NULL, *desc= "(no description)";
+	const char *unit = name, *type = NULL, *desc= "(no description)";
 	const void *data;
 	int data_len;
 	int ret = 0;
-	struct device_node *conf_node = configuration;
 
-	if (conf_node) {
-		if (of_property_read_string(conf_node, name, &unit)) {
-			pr_err("No image named '%s'\n", name);
-			return -ENOENT;
-		}
-	} else {
-		unit = name;
-	}
-
-	image = of_get_child_by_name(handle->images, unit);
-	if (!image)
-		return -ENOENT;
+	ret = fit_get_image(handle, configuration, &unit, &image);
+	if (ret)
+		return ret;
 
 	of_property_read_string(image, "description", &desc);
 	pr_info("image '%s': '%s'\n", unit, desc);
@@ -573,7 +640,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return -EINVAL;
 	}
 
-	if (conf_node)
+	if (configuration)
 		ret = fit_verify_hash(handle, image, data, data_len);
 	else
 		ret = fit_image_verify_signature(handle, image, data, data_len);
diff --git a/include/image-fit.h b/include/image-fit.h
index 27c9e8351..f21545988 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -32,6 +32,9 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
 int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
 		   unsigned long *outsize);
+int fit_get_image_address(struct fit_handle *handle, void *configuration,
+			  const char *name, const char *property,
+			  unsigned long *address);
 
 void fit_close(struct fit_handle *handle);
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
