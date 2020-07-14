Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from dedi548.your-server.de ([85.10.215.148])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvG2D-0002EJ-P1
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 08:11:30 +0000
From: Christian Mauderer <christian.mauderer@embedded-brains.de>
Date: Tue, 14 Jul 2020 10:11:25 +0200
Message-Id: <20200714081125.18397-1-christian.mauderer@embedded-brains.de>
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
Subject: [PATCH v3] FIT: Parse `load` and `entry` addresses.
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de

According to the U-Boot documentation for the FIT file format, the load
and entry have to be allways defined for a "kernel" or "standalone".
But Barebox ignored the parameters. That changes with this patch.

For backward compatibility the default address is still used for images
without `load` or `entry`.

Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
---
 arch/arm/mach-layerscape/ppa.c |  3 +-
 common/bootm.c                 |  7 +++--
 common/image-fit.c             | 51 ++++++++++++++++++++++++++++++++--
 include/image-fit.h            |  3 +-
 4 files changed, 57 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 477e89478..3eb7ab641 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -82,7 +82,8 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 	}
 
 
-	ret = fit_open_image(fit, conf, "firmware", &buf, &firmware_size);
+	ret = fit_open_image(fit, conf, "firmware", &buf, &firmware_size,
+			     NULL, NULL);
 	if (ret) {
 		pr_err("Cannot open firmware image in ppa FIT image: %s\n",
 		       strerror(-ret));
diff --git a/common/bootm.c b/common/bootm.c
index 366f31455..94600cae3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -222,7 +222,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		unsigned long initrd_size;
 
 		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
-				     &initrd, &initrd_size);
+				     &initrd, &initrd_size, NULL, NULL);
 
 		data->initrd_res = request_sdram_region("initrd",
 				load_address,
@@ -348,7 +348,7 @@ void *bootm_get_devicetree(struct image_data *data)
 		unsigned long of_size;
 
 		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
-				     &of_tree, &of_size);
+				     &of_tree, &of_size, NULL, NULL);
 		if (ret)
 			return ERR_PTR(ret);
 
@@ -622,7 +622,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 
 		ret = fit_open_image(data->os_fit, data->fit_config, "kernel",
-				     &data->fit_kernel, &data->fit_kernel_size);
+				     &data->fit_kernel, &data->fit_kernel_size,
+				     &data->os_address, &data->os_entry);
 		if (ret)
 			goto err_out;
 	}
diff --git a/common/image-fit.c b/common/image-fit.c
index 2681d62a9..7f0d3f98f 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -517,12 +517,30 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
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
 /**
  * fit_open_image - Open an image in a FIT image
  * @handle: The FIT image handle
  * @name: The name of the image to open
  * @outdata: The returned image
  * @outsize: Size of the returned image
+ * @load: The load address given by the image
+ * @entry: The entry address given by the image
  *
  * Open an image in a FIT image. The returned image is freed during fit_close().
  * @configuration holds the cookie returned from fit_open_configuration() if
@@ -532,11 +550,16 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
  * then only the hash is checked (because opening the configuration already
  * checks the RSA signature of all involved nodes).
  *
+ * The load address and entry point of the image description in the FIT will be
+ * parsed if they exist and if the @load and @entry parameters are not NULL.
+ * Otherwise @load and @entry won't be changed.
+ *
  * Return: 0 for success, negative error code otherwise
  */
 int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
-		   unsigned long *outsize)
+		   unsigned long *outsize, unsigned long *load,
+		   unsigned long *entry)
 {
 	struct device_node *image;
 	const char *unit, *type = NULL, *desc= "(no description)";
@@ -559,7 +582,31 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return -ENOENT;
 
 	of_property_read_string(image, "description", &desc);
-	pr_info("image '%s': '%s'\n", unit, desc);
+
+	if (load) {
+		ret = fit_get_address(image, "load", load);
+		if (ret < 0)
+			pr_info("Couldn't get load address in %s. Use default.\n",
+				image->full_name);
+	}
+
+	if (load && entry) {
+		ret = fit_get_address(image, "entry", entry);
+		if (ret < 0)
+			pr_info("Couldn't get entry point in %s. Use default.\n",
+				image->full_name);
+		else
+			/* Barebox uses an entry relative to load but the FIT
+			 * images assume an absolute entry. */
+			*entry -= *load;
+	}
+
+	pr_info("image '%s': '%s'", unit, desc);
+	if (load)
+		pr_cont("; load: 0x%lx", *load);
+	if (entry)
+		pr_cont("; entry (relative to load): 0x%lx", *entry);
+	pr_cont("\n");
 
 	of_property_read_string(image, "type", &type);
 	if (!type) {
diff --git a/include/image-fit.h b/include/image-fit.h
index 27c9e8351..038732d0d 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -31,7 +31,8 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
 		  const char *name);
 int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
-		   unsigned long *outsize);
+		   unsigned long *outsize, unsigned long *load,
+		   unsigned long *entry);
 
 void fit_close(struct fit_handle *handle);
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
