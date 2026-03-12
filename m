Delivery-date: Thu, 12 Mar 2026 15:46:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIa-00ArTK-1n
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:46:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIX-0005AC-E9
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:46:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9SeoXTGUc8Ao6CFW4b8qzKc2aoxmCAbbj+QjnBzlZxY=; b=TPhlcksV9xJhrERVGwlEbrzIVK
	HfWFVggSwAdLjDvxPLbXWEXDpcIUs9g/2lWS9B+GixNrnuZw/FW+SMjRj6X3jJkIb6n6HdVpQJGsm
	WgMAvfUhNcG+wSttbA53I6RCiPZBb13STcHtNVEraouahs47fRBVnujXYbGTRtlbN461Ec+TWdF8G
	skd+oZdjq9IEni9+d1Ah6zr6fgng2k2q4KWbvdYjT7KG9KzRFmzPvH099mePwjrNs6Cm220wJgabV
	Y97pvYM2nUT12rGg+cBAyw/LYgIakum+Kg1hdy+Bswth2WgLx0R+DdeO+nV4Ghm81WPvYlTI4x9XI
	Uv7PiSNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHm-0000000EEv3-3hWp;
	Thu, 12 Mar 2026 14:45:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEmI-46oN
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004To-Em; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052OG-2G;
	Thu, 12 Mar 2026 15:45:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-4042;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:51 +0100
Message-ID: <20260312144505.2159816-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074508_332369_AA13EAF0 
X-CRM114-Status: GOOD (  28.45  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/16] bootm: fit: switch to new loadable API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new loadable API allows us to remove FIT specific code from
common/bootm.c as can be seen by this commit having a break-even
diff line count.

The work is not over yet though: A lot of architecture specific bootm
handlers access os_file directly and they would need to be adapted to
use loadables, but that's for another day..

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c   |  42 +----
 arch/kvx/lib/bootm.c     |  25 ++-
 common/bootm-fit.c       | 370 +++++++++++++++++++++++++++++----------
 common/bootm-overrides.c |  25 +--
 common/bootm.c           |  75 ++------
 common/image-fit.c       |   6 +
 efi/payload/bootm.c      | 164 +++++------------
 include/bootm-fit.h      |  50 +-----
 include/bootm.h          |  13 +-
 include/image-fit.h      |   8 +
 10 files changed, 389 insertions(+), 389 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 7ad2a26fdc2f..4bca29c3fbf8 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -22,7 +22,6 @@
 #include <restart.h>
 #include <globalvar.h>
 #include <tee/optee.h>
-#include <image-fit.h>
 #include <asm/byteorder.h>
 #include <asm/setup.h>
 #include <asm/barebox-arm.h>
@@ -168,32 +167,6 @@ static int optee_verify_header_request_region(struct image_data *data, struct op
 	return 0;
 }
 
-static int bootm_load_tee_from_fit(struct image_data *data)
-{
-	int ret = 0;
-	struct optee_header hdr;
-
-	if (data->os_fit &&
-	    fit_has_image(data->os_fit, data->fit_config, "tee")) {
-		const void *tee;
-		unsigned long tee_size;
-
-		ret = fit_open_image(data->os_fit, data->fit_config, "tee", 0,
-				     &tee, &tee_size);
-		if (ret) {
-			pr_err("Error opening tee fit image: %pe\n", ERR_PTR(ret));
-			return ret;
-		}
-		memcpy(&hdr, tee, sizeof(hdr));
-		ret = optee_verify_header_request_region(data, &hdr);
-		if (ret < 0)
-			goto out;
-		memcpy((void *)data->tee_res->start, tee + sizeof(hdr), hdr.init_size);
-		printf("Read optee image to %pa, size 0x%08x\n", (void *)data->tee_res->start, hdr.init_size);
-	}
-out:
-	return ret;
-}
 static int bootm_load_tee(struct image_data *data)
 {
 	int ret;
@@ -287,15 +260,9 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 	}
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
-		if (data->tee_file && !bootm_signed_images_are_forced()) {
-			ret = bootm_load_tee(data);
-			if (ret)
-				return ret;
-		} else if (IS_ENABLED(CONFIG_FITIMAGE)) {
-			ret = bootm_load_tee_from_fit(data);
-			if (ret)
-				return ret;
-		}
+		ret = bootm_load_tee(data);
+		if (ret)
+			return ret;
 	}
 
 
@@ -459,7 +426,8 @@ static int do_bootz_linux(struct image_data *data)
 	unsigned long mem_free;
 	void *fdt = NULL;
 
-	if (data->os_fit)
+	/* FIXME: whole function should be switched to loadables */
+	if (data->image_type == filetype_fit)
 		return do_bootm_linux(data);
 
 	fd = open(data->os_file, O_RDONLY);
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index c464b5006fa2..1bd457f2e7d4 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -119,20 +119,33 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 static int do_bootm_elf(struct image_data *data)
 {
 	struct elf_image *elf;
+	const void *view = NULL;
+	size_t size;
 	int ret;
 
-	if (data->fit_kernel)
-		elf = elf_open_binary((void *) data->fit_kernel);
-	else
-		elf = elf_open(data->os_file);
+	/* FIXME: whole function should be switched to loadables */
+	if (data->image_type == filetype_fit) {
+		view = loadable_view(data->os, &size) ?: ERR_PTR(-ENODATA);
+		if (IS_ERR(view))
+			return PTR_ERR(view);
 
-	if (IS_ERR(elf))
-		return PTR_ERR(elf);
+		elf = elf_open_binary((void *)view);
+	} else {
+		elf = elf_open(data->os_file);
+	}
+
+	if (IS_ERR(elf)) {
+		ret = PTR_ERR(elf);
+		goto out_view_free;
+	}
 
 	ret = do_boot_elf(data, elf);
 
 	elf_close(elf);
 
+out_view_free:
+	loadable_view_free(data->os, view, size);
+
 	return ret;
 }
 
diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index 70d6ba8edff2..089f376fd7f1 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -6,103 +6,103 @@
 #include <memory.h>
 #include <zero_page.h>
 #include <filetype.h>
+#include <fs.h>
+
+static struct loadable *loadable_from_fit(struct fit_handle *fit,
+					  void *config,
+					  const char *image_name,
+					  int index,
+					  enum loadable_type type);
 
 /*
- * bootm_load_fit_os() - load OS from FIT to RAM
- *
+ * loadable_from_fit_os() - create OS loadable from FIT
  * @data:		image data context
- * @load_address:	The address where the OS should be loaded to
+ * @fit:		handle of FIT image
+ * @config:		config to look up kernel in
  *
- * This loads the OS to a RAM location. load_address must be a valid
- * address. If the image_data doesn't have a OS specified it's considered
- * an error.
- *
- * Return: 0 on success, negative error code otherwise
+ * This creates a loadable for the OS.
  */
-int bootm_load_fit_os(struct image_data *data, unsigned long load_address)
+static void loadable_from_fit_os(struct image_data *data,
+				 struct fit_handle *fit,
+				 void *config)
 {
-	const void *kernel = data->fit_kernel;
-	unsigned long kernel_size = data->fit_kernel_size;
-
-	data->os_res = request_sdram_region("kernel",
-			load_address, kernel_size,
-			MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
-	if (!data->os_res)
-		return -ENOMEM;
-
-	zero_page_memcpy((void *)load_address, kernel, kernel_size);
-	return 0;
-}
-
-static bool fitconfig_has_ramdisk(struct image_data *data)
-{
-	return fit_has_image(data->os_fit, data->fit_config, "ramdisk");
+	loadable_release(&data->os);
+	data->os = loadable_from_fit(fit, config, "kernel", 0, LOADABLE_KERNEL);
 }
 
 /*
- * bootm_load_fit_initrd() - load initrd from FIT to RAM
- *
+ * loadable_from_fit_initrd() - create initrd loadable from FIT
  * @data:		image data context
- * @load_address:	The address where the initrd should be loaded to
+ * @fit:		handle of FIT image
+ * @config:		config to look up kernel in
  *
- * This loads the initrd to a RAM location. load_address must be a valid
- * address. If the image_data doesn't have a initrd specified this function
- * still returns successful as an initrd is optional.
+ * This creates a loadable for the first initial ram disk in the config.
  *
- * Return: initrd resource on success, NULL if no initrd is present or
- *         an error pointer if an error occurred.
+ * Return: true if initrd booting is supported and a ramdisk exists or
+ *         false otherwise.
  */
-struct resource *bootm_load_fit_initrd(struct image_data *data, unsigned long load_address)
+static bool loadable_from_fit_initrd(struct image_data *data,
+				struct fit_handle *fit,
+				void *config)
 {
-	struct resource *res;
-	const void *initrd;
-	unsigned long initrd_size;
-	int ret;
+	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
+		return false;
 
-	if (!fitconfig_has_ramdisk(data))
-		return NULL;
+	if (!fit_has_image(fit, config, "ramdisk"))
+		return false;
 
-	ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk", 0,
-			     &initrd, &initrd_size);
-	if (ret) {
-		pr_err("Cannot open ramdisk image in FIT image: %pe\n",
-				ERR_PTR(ret));
-		return ERR_PTR(ret);
-	}
-	res = request_sdram_region("initrd",
-				   load_address, initrd_size,
-				   MEMTYPE_LOADER_DATA, MEMATTRS_RW);
-	if (!res)
-		return ERR_PTR(-ENOMEM);
+	loadable_release(&data->initrd);
 
-	memcpy((void *)load_address, initrd, initrd_size);
-	return res;
+	data->initrd = loadable_from_fit(fit, config, "ramdisk", 0, LOADABLE_INITRD);
+
+	return true;
 }
 
 /*
- * bootm_get_fit_devicetree() - get devicetree
- *
+ * loadable_from_fit_oftree() - create devicetree loadable from FIT
  * @data:		image data context
+ * @fit:		handle of FIT image
+ * @config:		config to look up kernel in
  *
- * This gets the fixed devicetree from the various image sources or the internal
- * devicetree. It returns a pointer to the allocated devicetree which must be
- * freed after use.
+ * This creates a loadable for the first fdt in the config.
  *
- * Return: pointer to the fixed devicetree, NULL if image_data has an empty DT
- *         or a ERR_PTR() on failure.
+ * Return: true if a FDT exists or
+ *         false otherwise.
  */
-void *bootm_get_fit_devicetree(struct image_data *data)
+static bool loadable_from_fit_oftree(struct image_data *data,
+				struct fit_handle *fit,
+				void *config)
 {
-	int ret;
-	const void *of_tree;
-	unsigned long of_size;
+	if (!fit_has_image(fit, config, "fdt"))
+		return false;
 
-	ret = fit_open_image(data->os_fit, data->fit_config, "fdt", 0,
-			     &of_tree, &of_size);
-	if (ret)
-		return ERR_PTR(ret);
+	loadable_release(&data->oftree);
+	data->oftree = loadable_from_fit(fit, config, "fdt", 0, LOADABLE_FDT);
+	return true;
+}
 
-	return of_unflatten_dtb(of_tree, of_size);
+/*
+ * loadable_from_fit_tee() - create tee loadable from FIT
+ * @data:		image data context
+ * @fit:		handle of FIT image
+ * @config:		config to look up kernel in
+ *
+ * This creates a loadable for the first trusted execution environment
+ * in the config.
+ *
+ * Return: true if a TEE exists or
+ *         false otherwise.
+ */
+static bool loadable_from_fit_tee(struct image_data *data,
+				struct fit_handle *fit,
+				void *config)
+{
+	if (!fit_has_image(fit, config, "tee"))
+		return false;
+
+	loadable_release(&data->tee);
+	data->tee = loadable_from_fit(fit, config, "tee", 0, LOADABLE_TEE);
+	return true;
 }
 
 static bool bootm_fit_config_valid(struct fit_handle *fit,
@@ -117,19 +117,31 @@ static bool bootm_fit_config_valid(struct fit_handle *fit,
 
 static enum filetype bootm_fit_update_os_header(struct image_data *data)
 {
-	if (data->fit_kernel_size < PAGE_SIZE)
+	size_t size;
+	const void *header;
+	enum filetype os_type;
+
+	header = loadable_view(data->os, &size);
+	if (IS_ERR(header))
 		return filetype_unknown;
 
-	free(data->os_header);
-	data->os_header = xmemdup(data->fit_kernel, PAGE_SIZE);
+	if (size >= PAGE_SIZE)
+		os_type = file_detect_type(header, size);
+	else
+		os_type = filetype_unknown;
 
-	return file_detect_type(data->os_header, PAGE_SIZE);
+	free(data->os_header);
+	data->os_header = xmemdup(header, min_t(size_t, size, PAGE_SIZE));
+
+	loadable_view_free(data->os, header, size);
+
+	return os_type;
 }
 
 int bootm_open_fit(struct image_data *data)
 {
 	struct fit_handle *fit;
-	static const char *kernel_img = "kernel";
+	void *fit_config;
 	int ret;
 
 	fit = fit_open(data->os_file, data->verbose, data->verify);
@@ -138,47 +150,215 @@ int bootm_open_fit(struct image_data *data)
 		return PTR_ERR(fit);
 	}
 
-	data->os_fit = fit;
-
-	data->fit_config = fit_open_configuration(data->os_fit,
-						  data->os_part,
-						  bootm_fit_config_valid);
-	if (IS_ERR(data->fit_config)) {
+	fit_config = fit_open_configuration(fit, data->os_part, bootm_fit_config_valid);
+	if (IS_ERR(fit_config)) {
 		pr_err("Cannot open FIT image configuration '%s'\n",
-		       data->os_part ? data->os_part : "default");
-		return PTR_ERR(data->fit_config);
+		       data->os_part ?: "default");
+		ret = PTR_ERR(fit_config);
+		goto err;
 	}
 
-	ret = fit_open_image(data->os_fit, data->fit_config, kernel_img, 0,
-			     &data->fit_kernel, &data->fit_kernel_size);
-	if (ret)
-		return ret;
+	loadable_from_fit_os(data, fit, fit_config);
+	loadable_from_fit_initrd(data, fit, fit_config);
+	loadable_from_fit_oftree(data, fit, fit_config);
+	loadable_from_fit_tee(data, fit, fit_config);
 
 	data->kernel_type = bootm_fit_update_os_header(data);
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS) {
-		ret = fit_get_image_address(data->os_fit,
-					    data->fit_config,
-					    kernel_img,
+		ret = fit_get_image_address(fit, fit_config, "kernel",
 					    "load", &data->os_address);
 		if (!ret)
 			pr_info("Load address from FIT '%s': 0x%lx\n",
-				kernel_img, data->os_address);
+				"kernel", data->os_address);
 		/* Note: Error case uses default value. */
 	}
 	if (data->os_entry == UIMAGE_SOME_ADDRESS) {
 		unsigned long entry;
-		ret = fit_get_image_address(data->os_fit,
-					    data->fit_config,
-					    kernel_img,
+		ret = fit_get_image_address(fit, fit_config, "kernel",
 					    "entry", &entry);
 		if (!ret) {
 			data->os_entry = entry - data->os_address;
 			pr_info("Entry address from FIT '%s': 0x%lx\n",
-				kernel_img, entry);
+				"kernel", entry);
 		}
 		/* Note: Error case uses default value. */
 	}
 
+	/* Each loadable now holds a reference to the FIT, so close our original
+	 * reference, so the FIT is completely reclaimed if bootm fails.
+	 */
+	fit_close(fit);
+
+	return 0;
+err:
+	fit_close(fit);
+	return ret;
+}
+
+/* === Loadable implementation for FIT images === */
+
+struct fit_loadable_priv {
+	struct fit_handle *fit;
+	struct device_node *config;
+	const char *image_name;
+	int index;
+};
+
+static int fit_loadable_get_info(struct loadable *l, struct loadable_info *info)
+{
+	struct fit_loadable_priv *priv = l->priv;
+	const void *data;
+	unsigned long size;
+	int ret;
+
+	/* Open image to get size */
+	ret = fit_open_image(priv->fit, priv->config, priv->image_name,
+			     priv->index, &data, &size);
+	if (ret)
+		return ret;
+
+	/* TODO: This will trigger an uncompression currently.. */
+	info->final_size = size;
+
 	return 0;
 }
+
+static const void *fit_loadable_mmap(struct loadable *l, size_t *size)
+{
+	struct fit_loadable_priv *priv = l->priv;
+	const void *data;
+	unsigned long image_size;
+	int ret;
+
+	ret = fit_open_image(priv->fit, priv->config, priv->image_name,
+			     priv->index, &data, &image_size);
+	if (ret)
+		return MAP_FAILED;
+
+	*size = image_size;
+	return data;
+}
+
+/**
+ * fit_loadable_extract_into_buf - load FIT image data to target address
+ * @l: loadable representing FIT image component
+ * @load_addr: physical address to load data to
+ * @buf_size: size of buffer at load_addr (0 = no limit check)
+ * @offset: how many bytes to skip at the start of the uncompressed input
+ * @flags: A bitmask of OR-ed LOADABLE_EXTRACT_ flags
+ *
+ * Commits the FIT image component to the specified memory address. This
+ * involves:
+ * 1. Opening the FIT image to get decompressed data
+ * 2. Checking buffer size
+ * 3. Copying data to target address
+ *
+ * The FIT data is already decompressed by fit_open_image(), so this just
+ * performs a memcpy to the target address.
+ *
+ * Return: actual number of bytes written on success, negative errno on error
+ *         -ENOSPC if buf_size is specified and too small
+ *         -ENOMEM if failed to register SDRAM region
+ */
+static ssize_t fit_loadable_extract_into_buf(struct loadable *l, void *load_addr,
+					     size_t buf_size, loff_t offset,
+					     unsigned flags)
+{
+	struct fit_loadable_priv *priv = l->priv;
+	const void *data;
+	unsigned long size;
+	int ret;
+
+	/* TODO: optimize, so it decompresses directly to load address */
+
+	/* Open image to get data */
+	ret = fit_open_image(priv->fit, priv->config, priv->image_name,
+			     priv->index, &data, &size);
+	if (ret)
+		return ret;
+
+	/* Check if buffer is large enough */
+	if (offset > size)
+		return 0;
+
+	if (!(flags & LOADABLE_EXTRACT_PARTIAL) && buf_size < size - offset)
+		return -ENOSPC;
+
+	size = min_t(size_t, size - offset, buf_size);
+
+	if (unlikely(zero_page_contains((ulong)load_addr)))
+		zero_page_memcpy(load_addr, data + offset, size);
+	else
+		memcpy(load_addr, data + offset, size);
+
+	return size; /* Return actual bytes written */
+}
+
+static void fit_loadable_release(struct loadable *l)
+{
+	struct fit_loadable_priv *priv = l->priv;
+
+	fit_close(priv->fit);
+	free_const(priv->image_name);
+	free(priv);
+}
+
+static const struct loadable_ops fit_loadable_ops = {
+	.get_info = fit_loadable_get_info,
+	.extract_into_buf = fit_loadable_extract_into_buf,
+	.mmap = fit_loadable_mmap,
+	.release = fit_loadable_release,
+};
+
+/**
+ * loadable_from_fit - create a loadable from FIT image component
+ * @fit: opened FIT image handle
+ * @config: FIT configuration device node
+ * @image_name: name of image in FIT (e.g., "kernel", "ramdisk", "fdt")
+ * @index: index for multi-image types (e.g., ramdisk-0, ramdisk-1)
+ * @type: type of loadable (LOADABLE_KERNEL, LOADABLE_INITRD, etc.)
+ *
+ * Creates a loadable structure that wraps access to a component within a
+ * FIT image. The loadable uses the FIT handle to access decompressed image
+ * data on demand during commit.
+ *
+ * The created loadable must be freed with loadable_release() when done.
+ * The FIT handle itself is managed by the caller and must remain valid
+ * until the loadable is released.
+ *
+ * Return: pointer to allocated loadable on success. Function never fails.
+ */
+static struct loadable *loadable_from_fit(struct fit_handle *fit,
+					  void *config,
+					  const char *image_name,
+					  int index,
+					  enum loadable_type type)
+{
+	struct loadable *l;
+	struct fit_loadable_priv *priv;
+
+	l = xzalloc(sizeof(*l));
+	priv = xzalloc(sizeof(*priv));
+
+	priv->fit = fit_open_handle(fit);
+	priv->config = config;
+	priv->image_name = xstrdup_const(image_name);
+	priv->index = index;
+
+	/* Create descriptive name */
+	if (index)
+		l->name = xasprintf("FIT(%s, %s/%s, %d)", fit->filename,
+				    fit_config_get_name(fit, config),
+				    image_name, index);
+	else
+		l->name = xasprintf("FIT(%s, %s/%s)", fit->filename,
+				    fit_config_get_name(fit, config),
+				    image_name);
+	l->ops = &fit_loadable_ops;
+	l->type = type;
+	l->priv = priv;
+	loadable_init(l);
+
+	return l;
+}
diff --git a/common/bootm-overrides.c b/common/bootm-overrides.c
index e1cba21e7711..c1f3ee7cade8 100644
--- a/common/bootm-overrides.c
+++ b/common/bootm-overrides.c
@@ -20,23 +20,16 @@ int bootm_apply_overrides(struct image_data *data,
 	if (bootm_signed_images_are_forced())
 		return 0;
 
-	/* TODO: As we haven't switched over everything to loadables yet,
-	 * we need a special marker to mean override to empty.
-	 * We do this via a 0-byte file (/dev/null) for now..
-	 */
-
 	if (overrides->initrd_file) {
 		loadable_release(&data->initrd);
 
 		/* Empty string means to mask the original initrd */
-		if (nonempty(overrides->initrd_file))
+		if (nonempty(overrides->initrd_file)) {
 			data->initrd = loadable_from_file(overrides->initrd_file,
 							   LOADABLE_INITRD);
-		else
-			data->initrd = loadable_from_file("/dev/null",
-							   LOADABLE_INITRD);
-		if (IS_ERR(data->initrd))
-			return PTR_ERR(data->initrd);
+			if (IS_ERR(data->initrd))
+				return PTR_ERR(data->initrd);
+		}
 		data->is_override.initrd = true;
 	}
 
@@ -44,14 +37,12 @@ int bootm_apply_overrides(struct image_data *data,
 		loadable_release(&data->oftree);
 
 		/* Empty string means to mask the original FDT */
-		if (nonempty(overrides->oftree_file))
+		if (nonempty(overrides->oftree_file)) {
 			data->oftree = loadable_from_file(overrides->oftree_file,
 							   LOADABLE_FDT);
-		else
-			data->oftree = loadable_from_file("/dev/null",
-							   LOADABLE_FDT);
-		if (IS_ERR(data->oftree))
-			return PTR_ERR(data->oftree);
+			if (IS_ERR(data->oftree))
+				return PTR_ERR(data->oftree);
+		}
 		data->is_override.oftree = true;
 	}
 
diff --git a/common/bootm.c b/common/bootm.c
index 08a8fbbfdcf5..01d569dd37d4 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -11,7 +11,6 @@
 #include <block.h>
 #include <libfile.h>
 #include <bootm-fit.h>
-#include <image-fit.h>
 #include <bootm-uimage.h>
 #include <globalvar.h>
 #include <init.h>
@@ -218,40 +217,19 @@ const struct resource *bootm_load_os(struct image_data *data,
 		ulong load_address, ulong end_address)
 {
 	struct resource *res;
-	int err;
 
 	if (data->os_res)
 		return data->os_res;
 
-	if (load_address == UIMAGE_INVALID_ADDRESS)
-		return ERR_PTR(-EINVAL);
-	if (end_address <= load_address)
+	if (load_address == UIMAGE_INVALID_ADDRESS ||
+	    end_address <= load_address || !data->os)
 		return ERR_PTR(-EINVAL);
 
-	if (data->os) {
-		res = loadable_extract_into_sdram_all(data->os, load_address, end_address);
-		if (!IS_ERR(res))
-			data->os_res = res;
-		return res;
-	}
+	res = loadable_extract_into_sdram_all(data->os, load_address, end_address);
+	if (!IS_ERR(res))
+		data->os_res = res;
 
-	/* TODO: eliminate below special cases */
-
-	if (data->os_fit)
-		err = bootm_load_fit_os(data, load_address);
-	else
-		err = -EINVAL;
-
-	if (err)
-		return ERR_PTR(err);
-
-	/* FIXME: We need some more rework to be able to detect this overflow
-	 * before it happens, but for now, let's at least detect it.
-	 */
-	if (WARN_ON(data->os_res->end > end_address))
-		return ERR_PTR(-ENOSPC);
-
-	return data->os_res;
+	return res;
 }
 
 /**
@@ -280,30 +258,17 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 	 */
 	if (WARN_ON(data->initrd_res))
 		return data->initrd_res;
+
+	if (!data->initrd)
+		return NULL;
+
 	if (end_address <= load_address)
 		return ERR_PTR(-EINVAL);
 
-	if (data->initrd) {
-		res = loadable_extract_into_sdram_all(data->initrd, load_address, end_address);
-		if (!IS_ERR(res))
-			data->initrd_res = res;
-		return res;
-	}
-
-	if (data->os_fit)
-		res = bootm_load_fit_initrd(data, load_address);
-
-	if (IS_ERR_OR_NULL(res))
-		return res;
-
-	/* FIXME: We need some more rework to be able to detect this overflow
-	 * before it happens, but for now, let's at least detect it.
-	 */
-	if (WARN_ON(res->end > end_address))
-		return ERR_PTR(-ENOSPC);
-
-	data->initrd_res = res;
-	return data->initrd_res;
+	res = loadable_extract_into_sdram_all(data->initrd, load_address, end_address);
+	if (!IS_ERR(res))
+		data->initrd_res = res;
+	return res;
 }
 
 /*
@@ -345,8 +310,6 @@ void *bootm_get_devicetree(struct image_data *data)
 			return ERR_PTR(-EINVAL);
 		}
 
-	} else if (bootm_fit_has_fdt(data)) {
-		data->of_root_node = bootm_get_fit_devicetree(data);
 	} else {
 		data->of_root_node = of_dup_root_node_for_boot();
 		if (!data->of_root_node)
@@ -421,12 +384,10 @@ loff_t bootm_get_os_size(struct image_data *data)
 {
 	loff_t size;
 
-	if (data->os)
-		return loadable_get_size(data->os, &size) ?: size;
-	if (data->os_fit)
-		return data->fit_kernel_size;
+	if (!data->os)
+		return -EINVAL;
 
-	return -EINVAL;
+	return loadable_get_size(data->os, &size) ?: size;
 }
 
 static void bootm_print_info(struct image_data *data)
@@ -802,8 +763,6 @@ void bootm_boot_cleanup(struct image_data *data)
 	release_sdram_region(data->initrd_res);
 	release_sdram_region(data->oftree_res);
 	release_sdram_region(data->tee_res);
-	if (data->os_fit)
-		bootm_close_fit(data);
 	loadable_release(&data->oftree);
 	loadable_release(&data->initrd);
 	loadable_release(&data->os);
diff --git a/common/image-fit.c b/common/image-fit.c
index 27e5ec9062c5..40aeee42cd09 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -917,6 +917,12 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name,
 	return conf_node;
 }
 
+const char *fit_config_get_name(struct fit_handle *handle, void *config)
+{
+	struct device_node *node = config;
+	return node->name;
+}
+
 static struct fit_handle *fit_get_handle(const char *filename)
 {
 	struct fit_handle *handle;
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index aba643b2c59d..b8e555dab5fa 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -27,7 +27,6 @@
 #include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
-#include <image-fit.h>
 #include <efi/payload.h>
 #include <efi/payload/driver.h>
 #include <efi/error.h>
@@ -35,73 +34,26 @@
 
 #include "image.h"
 
-static bool ramdisk_is_fit(struct image_data *data)
-{
-	struct stat st;
-
-	if (!IS_ENABLED(CONFIG_BOOTM_FITIMAGE))
-		return false;
-
-	if (bootm_signed_images_are_forced())
-		return true;
-
-	if (data->initrd_file) {
-		if (!stat(data->initrd_file, &st) && st.st_size > 0)
-			return false;
-	}
-
-	return data->os_fit ? fit_has_image(data->os_fit,
-			data->fit_config, "ramdisk") > 0 : false;
-}
-
-static bool fdt_is_fit(struct image_data *data)
-{
-	struct stat st;
-
-	if (!IS_ENABLED(CONFIG_BOOTM_FITIMAGE))
-		return false;
-
-	if (bootm_signed_images_are_forced())
-		return true;
-
-	if (data->oftree_file) {
-		if (!stat(data->oftree_file, &st) && st.st_size > 0)
-			return false;
-	}
-
-	return data->os_fit ? fit_has_image(data->os_fit,
-			data->fit_config, "fdt") > 0 : false;
-}
-
-static bool os_is_fit(struct image_data *data)
-{
-	if (!IS_ENABLED(CONFIG_BOOTM_FITIMAGE))
-		return false;
-
-	if (bootm_signed_images_are_forced())
-		return true;
-
-	return data->os_fit;
-}
-
 static int efi_load_os(struct image_data *data,
 		       struct efi_loaded_image **loaded_image,
 		       efi_handle_t *handle)
 {
 	efi_status_t efiret;
 	efi_handle_t h;
+	const void *view;
+	size_t size;
 
-	if (!os_is_fit(data))
-		return efi_load_image(data->os_file, loaded_image, handle);
-
-	if (!data->fit_kernel)
-		return -ENOENT;
+	view = loadable_view(data->os, &size) ?: ERR_PTR(-ENODATA);
+	if (IS_ERR(view)) {
+		pr_err("could not view kernel: %pe\n", view);
+		return PTR_ERR(view);
+	}
 
 	efiret = BS->load_image(false, efi_parent_image, efi_device_path,
-				(void *)data->fit_kernel, data->fit_kernel_size, &h);
+				(void *)view, size, &h);
 	if (EFI_ERROR(efiret)) {
 		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
-		goto out_mem;
+		goto out_view_free;
 	};
 
 	efiret = BS->open_protocol(h, &efi_loaded_image_protocol_guid,
@@ -114,43 +66,33 @@ static int efi_load_os(struct image_data *data,
 
 	*handle = h;
 
+	loadable_view_free(data->os, view, size);
 	return 0;
 
 out_unload:
 	BS->unload_image(h);
-out_mem:
+out_view_free:
+	loadable_view_free(data->os, view, size);
 	return -efi_errno(efiret);
 }
 
-static int efi_load_ramdisk(struct image_data *data, void **initrd)
+static int efi_load_ramdisk(struct image_data *data,
+			    const void **initrd,
+			    size_t *initrd_size)
 {
-	unsigned long initrd_size;
-	void *initrd_mem;
+	const void *initrd_mem;
 	int ret;
 
-	if (ramdisk_is_fit(data)) {
-		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk", 0,
-				     (const void **)&initrd_mem, &initrd_size);
-		if (ret) {
-			pr_err("Cannot open ramdisk image in FIT image: %m\n");
-			return ret;
-		}
-	} else {
-		if (!data->initrd_file)
-			return 0;
+	if (!data->initrd)
+		return 0;
 
-		pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
-
-		initrd_mem = read_file(data->initrd_file, &initrd_size);
-		if (!initrd_mem) {
-			ret = -errno;
-			pr_err("Failed to read initrd from file '%s': %m\n",
-			       data->initrd_file);
-			return ret;
-		}
+	initrd_mem = loadable_view(data->initrd, initrd_size);
+	if (IS_ERR(initrd_mem)) {
+		pr_err("Cannot open ramdisk image: %pe\n", initrd_mem);
+		return PTR_ERR(initrd_mem);
 	}
 
-	ret = efi_initrd_register(initrd_mem, initrd_size);
+	ret = efi_initrd_register(initrd_mem, *initrd_size);
 	if (ret) {
 		pr_err("Failed to register initrd: %pe\n", ERR_PTR(ret));
 		goto free_mem;
@@ -161,7 +103,7 @@ static int efi_load_ramdisk(struct image_data *data, void **initrd)
 	return 0;
 
 free_mem:
-	free(initrd_mem);
+	loadable_view_free(data->initrd, initrd_mem, *initrd_size);
 
 	return ret;
 }
@@ -170,45 +112,31 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
 {
 	efi_physical_addr_t mem;
 	efi_status_t efiret;
-	void *of_tree, *vmem;
-	unsigned long of_size;
-	int ret;
+	void *vmem;
+	size_t bufsize = DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE);
+	ssize_t ret;
 
-	if (fdt_is_fit(data)) {
-		ret = fit_open_image(data->os_fit, data->fit_config, "fdt", 0,
-				     (const void **)&of_tree, &of_size);
-		if (ret) {
-			pr_err("Cannot open FDT image in FIT image: %m\n");
-			return ret;
-		}
-	} else {
-		if (!data->oftree_file)
-			return 0;
+	if (!data->oftree)
+		return 0;
 
-		pr_info("Loading devicetree from '%s'\n", data->oftree_file);
-
-		of_tree = read_file(data->oftree_file, &of_size);
-		if (!of_tree) {
-			ret = -errno;
-			pr_err("Failed to read oftree: %m\n");
-			return ret;
-		}
-	}
-
-	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
-				    EFI_ACPI_RECLAIM_MEMORY,
-				    DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE), &mem);
+	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES, EFI_ACPI_RECLAIM_MEMORY,
+				    bufsize, &mem);
 	if (EFI_ERROR(efiret)) {
 		pr_err("Failed to allocate pages for FDT: %s\n", efi_strerror(efiret));
-		goto free_mem;
+		return -efi_errno(efiret);
 	}
 
 	vmem = efi_phys_to_virt(mem);
-	memcpy(vmem, of_tree, of_size);
+
+	ret = loadable_extract_into_buf_full(data->oftree, vmem,
+					     bufsize * EFI_PAGE_SIZE);
+	if (ret < 0)
+		goto free_efi_mem;
 
 	efiret = BS->install_configuration_table(&efi_fdt_guid, vmem);
 	if (EFI_ERROR(efiret)) {
 		pr_err("Failed to install FDT: %s\n", efi_strerror(efiret));
+		ret = -efi_errno(efiret);
 		goto free_efi_mem;
 	}
 
@@ -216,10 +144,8 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
 	return 0;
 
 free_efi_mem:
-	BS->free_pages(mem, DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE));
-free_mem:
-	free(of_tree);
-	return -efi_errno(efiret);
+	BS->free_pages(mem, bufsize);
+	return ret;
 }
 
 static void efi_unload_fdt(void *fdt)
@@ -234,8 +160,10 @@ static void efi_unload_fdt(void *fdt)
 static int do_bootm_efi_stub(struct image_data *data)
 {
 	struct efi_loaded_image *loaded_image;
-	void *fdt = NULL, *initrd = NULL;
-	efi_handle_t handle;
+	void *fdt = NULL;
+	const void *initrd = NULL;
+	size_t initrd_size;
+	efi_handle_t handle = NULL; /* silence compiler warning */
 	enum filetype type;
 	int ret;
 
@@ -247,7 +175,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 	if (ret)
 		goto unload_os;
 
-	ret = efi_load_ramdisk(data, &initrd);
+	ret = efi_load_ramdisk(data, &initrd, &initrd_size);
 	if (ret)
 		goto unload_oftree;
 
@@ -260,7 +188,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 unload_ramdisk:
 	if (initrd) {
 		efi_initrd_unregister();
-		free(initrd);
+		loadable_view_free(data->initrd, initrd, initrd_size);
 	}
 unload_oftree:
 	efi_unload_fdt(fdt);
diff --git a/include/bootm-fit.h b/include/bootm-fit.h
index 8deddd62e328..05f4f5acfe9a 100644
--- a/include/bootm-fit.h
+++ b/include/bootm-fit.h
@@ -4,67 +4,21 @@
 
 #include <linux/types.h>
 #include <image-fit.h>
-#include <bootm.h>
+#include <linux/errno.h>
 
-struct resource;
+struct image_data;
 
 #ifdef CONFIG_BOOTM_FITIMAGE
 
-int bootm_load_fit_os(struct image_data *data, unsigned long load_address);
-
-struct resource *bootm_load_fit_initrd(struct image_data *data,
-				       unsigned long load_address);
-
-void *bootm_get_fit_devicetree(struct image_data *data);
-
 int bootm_open_fit(struct image_data *data);
 
-static inline void bootm_close_fit(struct image_data *data)
-{
-	fit_close(data->os_fit);
-}
-
-static inline bool bootm_fit_has_fdt(struct image_data *data)
-{
-	if (!data->os_fit)
-		return false;
-
-	return fit_has_image(data->os_fit, data->fit_config, "fdt");
-}
-
 #else
 
-static inline int bootm_load_fit_os(struct image_data *data,
-				    unsigned long load_address)
-{
-	return -ENOSYS;
-}
-
-static inline struct resource *bootm_load_fit_initrd(struct image_data *data,
-						     unsigned long load_address)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
-static inline void *bootm_get_fit_devicetree(struct image_data *data)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
 static inline int bootm_open_fit(struct image_data *data)
 {
 	return -ENOSYS;
 }
 
-static inline void bootm_close_fit(struct image_data *data)
-{
-}
-
-static inline bool bootm_fit_has_fdt(struct image_data *data)
-{
-	return false;
-}
-
 #endif
 
 #endif
diff --git a/include/bootm.h b/include/bootm.h
index 3ba8402217e3..d3874a0e8ef2 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -64,15 +64,12 @@ struct image_data {
 	/* simplest case. barebox has already loaded the os here */
 	struct resource *os_res;
 
-	/* Future default case: A generic loadable object */
+	/* Generic loadable object for OS image */
 	struct loadable *os;
 
 	/* if os is an uImage this will be provided */
 	struct uimage_handle *os_uimage;
 
-	/* if os is a FIT image this will be provided */
-	struct fit_handle *os_fit;
-
 	char *os_part;
 
 	/* otherwise only the filename will be provided */
@@ -92,7 +89,7 @@ struct image_data {
 	/* if initrd is already loaded this resource will be !NULL */
 	struct resource *initrd_res;
 
-	/* Future default case: A generic loadable object */
+	/* Generic loadable object for initrd */
 	struct loadable *initrd;
 
 	/* if initrd is an uImage this will be provided */
@@ -110,14 +107,10 @@ struct image_data {
 	/* if oftree is an uImage this will be provided */
 	struct uimage_handle *oftree_uimage;
 
-	const void *fit_kernel;
-	unsigned long fit_kernel_size;
-	void *fit_config;
-
 	struct device_node *of_root_node;
 	struct resource *oftree_res;
 
-	/* Future default case: A generic loadable object */
+	/* Generic loadable object for oftree */
 	struct loadable *oftree;
 
 	/*
diff --git a/include/image-fit.h b/include/image-fit.h
index ede43beab12e..1de3468c401d 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -27,6 +27,13 @@ struct fit_handle {
 	struct device_node *configurations;
 };
 
+static inline struct fit_handle *fit_open_handle(struct fit_handle *handle)
+{
+	if (handle)
+		refcount_inc(&handle->users);
+	return handle;
+}
+
 struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify);
 struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
@@ -66,6 +73,7 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
 			  const char *name, const char *property,
 			  unsigned long *address);
 int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node);
+const char *fit_config_get_name(struct fit_handle *handle, void *config);
 
 void fit_close(struct fit_handle *handle);
 
-- 
2.47.3



