Delivery-date: Tue, 27 Jan 2026 09:46:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeij-005q8J-03
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeig-00014b-Rn
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jIrAcFP7jNDhp4YN0XjTXxOMoM57qBfVwEPlPWgF3Lk=; b=CAy96QM5zvNy56qqEQrsYvZsXF
	WRZgSnbnuyV9Y9R4i24CqPmOWLq07QtEiOhag4CuiyhhSk+n/eemgX2HMkXEHt3ZejjIKIyTP+QWh
	614asnOQ7JZt6AQNMtzZrhzo7gbm9kJo1mnTIcuKBUXacHgRIR75EP/yX8H1SDOAahNi22MB2WoPX
	EuYX77goYc7jLiYYjYS2yNLeIPshGY8PVtmmO7wWEDq48EhLativbpRAArsIkV/MxZVZI/HwewyN5
	NPbT5t5pzbEgpz6MzwzXwi/EhCo2fyXsrUEI7TMSUd8ZJ3DSaafTUhyV8kQyj1Esb44EgZpZ3kDt9
	YZ3rWQnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehz-0000000DrNI-2Oc5;
	Tue, 27 Jan 2026 08:45:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDn-1MSh
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000Vj-Ha; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-002ifj-02;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000000FmwP-3CVT;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:12 +0100
Message-ID: <20260127084546.3751357-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_688440_4EAF4E5A 
X-CRM114-Status: GOOD (  20.93  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/15] FIT: add image index argument to fit_open_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A FIT configuration can specify multiple images of the same type, e.g.
for device tree overlays. Add an index parameter to fit_open_image()
to allow callers to select which image to open. Existing callers pass
idx=0 to maintain current behavior of opening the first image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c |  2 +-
 common/bootm-fit.c     |  6 ++---
 common/image-fit.c     | 50 ++++++++++++++++++++----------------------
 drivers/of/overlay.c   |  2 +-
 efi/payload/bootm.c    |  4 ++--
 include/image-fit.h    |  4 ++--
 6 files changed, 33 insertions(+), 35 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 533c3ea946ff..e659d3c1a554 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -178,7 +178,7 @@ static int bootm_load_tee_from_fit(struct image_data *data)
 		const void *tee;
 		unsigned long tee_size;
 
-		ret = fit_open_image(data->os_fit, data->fit_config, "tee",
+		ret = fit_open_image(data->os_fit, data->fit_config, "tee", 0,
 				     &tee, &tee_size);
 		if (ret) {
 			pr_err("Error opening tee fit image: %pe\n", ERR_PTR(ret));
diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index 3b2252ca8810..a0e808e31b40 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -61,7 +61,7 @@ struct resource *bootm_load_fit_initrd(struct image_data *data, unsigned long lo
 	if (!fitconfig_has_ramdisk(data))
 		return NULL;
 
-	ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
+	ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk", 0,
 			     &initrd, &initrd_size);
 	if (ret) {
 		pr_err("Cannot open ramdisk image in FIT image: %pe\n",
@@ -96,7 +96,7 @@ void *bootm_get_fit_devicetree(struct image_data *data)
 	const void *of_tree;
 	unsigned long of_size;
 
-	ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
+	ret = fit_open_image(data->os_fit, data->fit_config, "fdt", 0,
 			     &of_tree, &of_size);
 	if (ret)
 		return ERR_PTR(ret);
@@ -144,7 +144,7 @@ int bootm_open_fit(struct image_data *data)
 		return PTR_ERR(data->fit_config);
 	}
 
-	ret = fit_open_image(data->os_fit, data->fit_config, kernel_img,
+	ret = fit_open_image(data->os_fit, data->fit_config, kernel_img, 0,
 			     &data->fit_kernel, &data->fit_kernel_size);
 	if (ret)
 		return ret;
diff --git a/common/image-fit.c b/common/image-fit.c
index 85096aff31e6..75592766941c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -522,24 +522,20 @@ static int fit_get_address(struct device_node *image, const char *property,
 	return 0;
 }
 
-static int
+static struct device_node *
 fit_get_image(struct fit_handle *handle, void *configuration,
-	      const char **unit, struct device_node **image)
+	      const char **unit, int idx)
 {
 	struct device_node *conf_node = configuration;
 
 	if (conf_node) {
-		if (of_property_read_string(conf_node, *unit, unit)) {
+		if (of_property_read_string_index(conf_node, *unit, idx, unit)) {
 			pr_err("No image named '%s'\n", *unit);
-			return -ENOENT;
+			return NULL;
 		}
 	}
 
-	*image = of_get_child_by_name(handle->images, *unit);
-	if (!*image)
-		return -ENOENT;
-
-	return 0;
+	return of_get_child_by_name(handle->images, *unit);
 }
 
 /**
@@ -569,9 +565,9 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
 	if (!address || !property || !name)
 		return -EINVAL;
 
-	ret = fit_get_image(handle, configuration, &unit, &image);
-	if (ret)
-		return ret;
+	image = fit_get_image(handle, configuration, &unit, 0);
+	if (!image)
+		return -ENOENT;
 
 	/* Treat type = "kernel_noload" as if entry/load address is missing */
 	ret = of_property_read_string(image, "type", &type);
@@ -647,22 +643,22 @@ static int fit_handle_decompression(struct device_node *image,
 /**
  * fit_open_image - Open an image in a FIT image
  * @handle: The FIT image handle
+ * @configuration: configuration cookie from fit_open_configuration(), or NULL
  * @name: The name of the image to open
+ * @idx: The index of image to open (for multi-image properties like overlays)
  * @outdata: The returned image
  * @outsize: Size of the returned image
  *
  * Open an image in a FIT image. The returned image is freed during fit_close().
- * @configuration holds the cookie returned from fit_open_configuration() if
- * the image is opened as part of a configuration, or NULL if the image is
- * opened without a configuration. If @configuration is NULL then the RSA
- * signature of the image is checked if desired, if @configuration is non NULL,
- * then only the hash is checked (because opening the configuration already
- * checks the RSA signature of all involved nodes).
+ *
+ * If @configuration is NULL then the RSA signature of the image is checked
+ * if desired; otherwise only the hash is checked (because opening the
+ * configuration already checks the RSA signature of all involved nodes).
  *
  * Return: 0 for success, negative error code otherwise
  */
 int fit_open_image(struct fit_handle *handle, void *configuration,
-		   const char *name, const void **outdata,
+		   const char *name, int idx, const void **outdata,
 		   unsigned long *outsize)
 {
 	struct device_node *image;
@@ -671,9 +667,9 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	int data_len;
 	int ret = 0;
 
-	ret = fit_get_image(handle, configuration, &unit, &image);
-	if (ret)
-		return ret;
+	image = fit_get_image(handle, configuration, &unit, idx);
+	if (!image)
+		return -ENOENT;
 
 	of_property_read_string(image, "description", &desc);
 	if (handle->verbose)
@@ -765,9 +761,11 @@ static int fit_fdt_is_compatible(struct fit_handle *handle,
 	if (!of_property_present(child, "fdt"))
 		return 0;
 
-	ret = fit_get_image(handle, child, &unit, &image);
-	if (ret)
+	image = fit_get_image(handle, child, &unit, 0);
+	if (!image) {
+		ret = -ENOENT;
 		goto err;
+	}
 
 	data = of_get_property(image, "data", &data_len);
 	if (!data)
@@ -1134,14 +1132,14 @@ static int fuzz_fit(const u8 *data, size_t size)
 		goto out;
 	}
 
-	ret = fit_open_image(&handle, config, imgname, &outdata, &outsize);
+	ret = fit_open_image(&handle, config, imgname, 0, &outdata, &outsize);
 	if (ret)
 		goto out;
 
 	fit_get_image_address(&handle, config, imgname, "load", &addr);
 	fit_get_image_address(&handle, config, imgname, "entry", &addr);
 
-	ret = fit_open_image(&handle, NULL, imgname, &outdata, &outsize);
+	ret = fit_open_image(&handle, NULL, imgname, 0, &outdata, &outsize);
 out:
 	__fit_close(&handle);
 
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d2cf2fa3f371..b11edebd2080 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -487,7 +487,7 @@ static int of_overlay_apply_fit(struct device_node *root, struct fit_handle *fit
 	if (!of_overlay_matches_filter(name, NULL))
 		return 0;
 
-	ret = fit_open_image(fit, config, "fdt", &ovl, &ovl_sz);
+	ret = fit_open_image(fit, config, "fdt", 0, &ovl, &ovl_sz);
 	if (ret)
 		return ret;
 
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index ea5b1265aeaa..8e7ba4561f3f 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -129,7 +129,7 @@ static int efi_load_ramdisk(struct image_data *data, void **initrd)
 	int ret;
 
 	if (ramdisk_is_fit(data)) {
-		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
+		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk", 0,
 				     (const void **)&initrd_mem, &initrd_size);
 		if (ret) {
 			pr_err("Cannot open ramdisk image in FIT image: %m\n");
@@ -175,7 +175,7 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
 	int ret;
 
 	if (fdt_is_fit(data)) {
-		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
+		ret = fit_open_image(data->os_fit, data->fit_config, "fdt", 0,
 				     (const void **)&of_tree, &of_size);
 		if (ret) {
 			pr_err("Cannot open FDT image in FIT image: %m\n");
diff --git a/include/image-fit.h b/include/image-fit.h
index 31b8b54e272d..50f0482b65ad 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -60,8 +60,8 @@ static inline bool fit_has_image(struct fit_handle *handle, void *configuration,
 }
 
 int fit_open_image(struct fit_handle *handle, void *configuration,
-		   const char *name, const void **outdata,
-		   unsigned long *outsize);
+		   const char *name, int idx,
+		   const void **outdata, unsigned long *outsize);
 int fit_get_image_address(struct fit_handle *handle, void *configuration,
 			  const char *name, const char *property,
 			  unsigned long *address);
-- 
2.47.3



