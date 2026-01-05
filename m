Delivery-date: Mon, 05 Jan 2026 09:07:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfd1-001S4c-0r
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcy-0008Cl-Dy
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6T4hk8LLhgUqxHZ8tRV6A8ZpeT1jmNRPAvckN/SWW2k=; b=Vx4sBgnLC1/3ueKf8iQUCvTCNk
	zQFgDZOlwUFiwOWiwfJtOyzfltVorovyZRiBfGSjXR4PpnENSGR8KB/kQp0cpyHCxaJZQE96FGtWM
	VYTZLWC1yYhgYbi/CplWmhZNmWVtkEFsDKyEBTAl42b42o+ssw9landwwJsqsqS9G3xolR5QPaQts
	SRY91ubesTGk0qEMRexHJim6Hc4Rfh+HkqejGwcQSvRNUfed8T5dHoz15M1HattkUQVvpvvVTos8U
	32Lu3qqRwTyZ/W8UXz67qZMlBZzf0L5SGL1n0SUECEHcw4CYOo41iJY0IFVwMx//CUulWAV1YIRZL
	X1j5AZGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcG-0000000Ax35-1pKL;
	Mon, 05 Jan 2026 08:07:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzI-19Lt
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc7-0007f0-HZ; Mon, 05 Jan 2026 09:06:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:34 +0100
Message-ID: <20260105080653.3240497-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_613526_6803B0AA 
X-CRM114-Status: GOOD (  25.56  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] bootm: fit: split support into dedicated file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Interleaving the FIT handling with the generic bootm code makes the
generic code harder to follow. Let's factor it out into a dedicated
file.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/Makefile     |   1 +
 common/bootm-fit.c  | 185 ++++++++++++++++++++++++++++++++++++++++++++
 common/bootm.c      | 156 ++++---------------------------------
 include/bootm-fit.h |  70 +++++++++++++++++
 4 files changed, 271 insertions(+), 141 deletions(-)
 create mode 100644 common/bootm-fit.c
 create mode 100644 include/bootm-fit.h

diff --git a/common/Makefile b/common/Makefile
index 36dee5f7a98a..45bd00758e4a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -71,6 +71,7 @@ obj-$(CONFIG_RATP)		+= ratp/
 obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= uimage_types.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
+obj-$(CONFIG_BOOTM_FITIMAGE)	+= bootm-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
 lwl-$(CONFIG_IMD)		+= imd-barebox.o
 obj-$(CONFIG_IMD)		+= imd.o
diff --git a/common/bootm-fit.c b/common/bootm-fit.c
new file mode 100644
index 000000000000..f9c8bff43912
--- /dev/null
+++ b/common/bootm-fit.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <bootm.h>
+#include <image-fit.h>
+#include <bootm-fit.h>
+#include <memory.h>
+#include <zero_page.h>
+
+/*
+ * bootm_load_fit_os() - load OS from FIT to RAM
+ *
+ * @data:		image data context
+ * @load_address:	The address where the OS should be loaded to
+ *
+ * This loads the OS to a RAM location. load_address must be a valid
+ * address. If the image_data doesn't have a OS specified it's considered
+ * an error.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+int bootm_load_fit_os(struct image_data *data, unsigned long load_address)
+{
+	const void *kernel = data->fit_kernel;
+	unsigned long kernel_size = data->fit_kernel_size;
+
+	data->os_res = request_sdram_region("kernel",
+			load_address, kernel_size,
+			MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
+	if (!data->os_res) {
+		pr_err("unable to request SDRAM region for kernel at"
+				" 0x%08llx-0x%08llx\n",
+			(unsigned long long)load_address,
+			(unsigned long long)load_address + kernel_size - 1);
+		return -ENOMEM;
+	}
+	zero_page_memcpy((void *)load_address, kernel, kernel_size);
+	return 0;
+}
+
+static bool fitconfig_has_ramdisk(struct image_data *data)
+{
+	return fit_has_image(data->os_fit, data->fit_config, "ramdisk");
+}
+
+/*
+ * bootm_load_fit_initrd() - load initrd from FIT to RAM
+ *
+ * @data:		image data context
+ * @load_address:	The address where the initrd should be loaded to
+ *
+ * This loads the initrd to a RAM location. load_address must be a valid
+ * address. If the image_data doesn't have a initrd specified this function
+ * still returns successful as an initrd is optional.
+ *
+ * Return: initrd resource on success, NULL if no initrd is present or
+ *         an error pointer if an error occurred.
+ */
+struct resource *bootm_load_fit_initrd(struct image_data *data, unsigned long load_address)
+{
+	struct resource *res;
+	const void *initrd;
+	unsigned long initrd_size;
+	int ret;
+
+	if (!fitconfig_has_ramdisk(data))
+		return NULL;
+
+	ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
+			     &initrd, &initrd_size);
+	if (ret) {
+		pr_err("Cannot open ramdisk image in FIT image: %pe\n",
+				ERR_PTR(ret));
+		return ERR_PTR(ret);
+	}
+	res = request_sdram_region("initrd",
+				   load_address, initrd_size,
+				   MEMTYPE_LOADER_DATA, MEMATTRS_RW);
+	if (!res) {
+		pr_err("unable to request SDRAM region for initrd at"
+				" 0x%08llx-0x%08llx\n",
+			(unsigned long long)load_address,
+			(unsigned long long)load_address + initrd_size - 1);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	memcpy((void *)load_address, initrd, initrd_size);
+	return res;
+}
+
+/*
+ * bootm_get_fit_devicetree() - get devicetree
+ *
+ * @data:		image data context
+ *
+ * This gets the fixed devicetree from the various image sources or the internal
+ * devicetree. It returns a pointer to the allocated devicetree which must be
+ * freed after use.
+ *
+ * Return: pointer to the fixed devicetree, NULL if image_data has an empty DT
+ *         or a ERR_PTR() on failure.
+ */
+void *bootm_get_fit_devicetree(struct image_data *data)
+{
+	int ret;
+	const void *of_tree;
+	unsigned long of_size;
+
+	ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
+			     &of_tree, &of_size);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return of_unflatten_dtb(of_tree, of_size);
+}
+
+static bool bootm_fit_config_valid(struct fit_handle *fit,
+				   struct device_node *config)
+{
+	/*
+	 * Consider only FIT configurations which do provide a loadable kernel
+	 * image.
+	 */
+	return !!fit_has_image(fit, config, "kernel");
+}
+
+int bootm_open_fit(struct image_data *data)
+{
+	struct fit_handle *fit;
+	struct fdt_header *header;
+	static const char *kernel_img = "kernel";
+	size_t flen, hlen;
+	int ret;
+
+	header = (struct fdt_header *)data->os_header;
+	flen = bootm_get_os_size(data);
+	hlen = fdt32_to_cpu(header->totalsize);
+
+	fit = fit_open(data->os_file, data->verbose, data->verify,
+		       min(flen, hlen));
+	if (IS_ERR(fit)) {
+		pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
+		return PTR_ERR(fit);
+	}
+
+	data->os_fit = fit;
+
+	data->fit_config = fit_open_configuration(data->os_fit,
+						  data->os_part,
+						  bootm_fit_config_valid);
+	if (IS_ERR(data->fit_config)) {
+		pr_err("Cannot open FIT image configuration '%s'\n",
+		       data->os_part ? data->os_part : "default");
+		return PTR_ERR(data->fit_config);
+	}
+
+	ret = fit_open_image(data->os_fit, data->fit_config, kernel_img,
+			     &data->fit_kernel, &data->fit_kernel_size);
+	if (ret)
+		return ret;
+	if (data->os_address == UIMAGE_SOME_ADDRESS) {
+		ret = fit_get_image_address(data->os_fit,
+					    data->fit_config,
+					    kernel_img,
+					    "load", &data->os_address);
+		if (!ret)
+			pr_info("Load address from FIT '%s': 0x%lx\n",
+				kernel_img, data->os_address);
+		/* Note: Error case uses default value. */
+	}
+	if (data->os_entry == UIMAGE_SOME_ADDRESS) {
+		unsigned long entry;
+		ret = fit_get_image_address(data->os_fit,
+					    data->fit_config,
+					    kernel_img,
+					    "entry", &entry);
+		if (!ret) {
+			data->os_entry = entry - data->os_address;
+			pr_info("Entry address from FIT '%s': 0x%lx\n",
+				kernel_img, entry);
+		}
+		/* Note: Error case uses default value. */
+	}
+
+	return 0;
+}
diff --git a/common/bootm.c b/common/bootm.c
index e60c81a9021e..dced46f3e067 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -11,6 +11,7 @@
 #include <memory.h>
 #include <block.h>
 #include <libfile.h>
+#include <bootm-fit.h>
 #include <image-fit.h>
 #include <globalvar.h>
 #include <init.h>
@@ -246,23 +247,8 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (load_address == UIMAGE_INVALID_ADDRESS)
 		return -EINVAL;
 
-	if (data->os_fit) {
-		const void *kernel = data->fit_kernel;
-		unsigned long kernel_size = data->fit_kernel_size;
-
-		data->os_res = request_sdram_region("kernel",
-				load_address, kernel_size,
-				MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
-		if (!data->os_res) {
-			pr_err("unable to request SDRAM region for kernel at"
-					" 0x%08llx-0x%08llx\n",
-				(unsigned long long)load_address,
-				(unsigned long long)load_address + kernel_size - 1);
-			return -ENOMEM;
-		}
-		zero_page_memcpy((void *)load_address, kernel, kernel_size);
-		return 0;
-	}
+	if (data->os_fit)
+		return bootm_load_fit_os(data, load_address);
 
 	if (image_is_uimage(data)) {
 		int num;
@@ -287,14 +273,6 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	return 0;
 }
 
-static bool fitconfig_has_ramdisk(struct image_data *data)
-{
-	if (!IS_ENABLED(CONFIG_FITIMAGE) || !data->os_fit)
-		return false;
-
-	return fit_has_image(data->os_fit, data->fit_config, "ramdisk");
-}
-
 static int bootm_open_initrd_uimage(struct image_data *data)
 {
 	int ret;
@@ -352,28 +330,13 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	if (data->initrd_res)
 		return data->initrd_res;
 
-	if (fitconfig_has_ramdisk(data)) {
-		const void *initrd;
-		unsigned long initrd_size;
+	if (data->os_fit) {
+		res = bootm_load_fit_initrd(data, load_address);
+		if (IS_ERR(res))
+			return res;
+		if (res)
+			pr_info("Loaded initrd from FIT image\n");
 
-		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
-				     &initrd, &initrd_size);
-		if (ret) {
-			pr_err("Cannot open ramdisk image in FIT image: %pe\n",
-					ERR_PTR(ret));
-			return ERR_PTR(ret);
-		}
-		res = request_sdram_region("initrd", load_address, initrd_size,
-					   MEMTYPE_LOADER_DATA, MEMATTRS_RW);
-		if (!res) {
-			pr_err("unable to request SDRAM region for initrd at"
-					" 0x%08llx-0x%08llx\n",
-				(unsigned long long)load_address,
-				(unsigned long long)load_address + initrd_size - 1);
-			return ERR_PTR(-ENOMEM);
-		}
-		memcpy((void *)load_address, initrd, initrd_size);
-		pr_info("Loaded initrd from FIT image\n");
 		goto done1;
 	}
 
@@ -416,7 +379,8 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		pr_info(", multifile image %s", data->initrd_part);
 	pr_info("\n");
 done1:
-	pr_info("initrd is at %pa-%pa\n", &res->start, &res->end);
+	if (res)
+		pr_info("initrd is at %pa-%pa\n", &res->start, &res->end);
 
 	data->initrd_res = res;
 	return data->initrd_res;
@@ -464,14 +428,6 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 	return 0;
 }
 
-static bool fitconfig_has_fdt(struct image_data *data)
-{
-	if (!IS_ENABLED(CONFIG_FITIMAGE) || !data->os_fit)
-		return false;
-
-	return fit_has_image(data->os_fit, data->fit_config, "fdt");
-}
-
 /*
  * bootm_get_devicetree() - get devicetree
  *
@@ -494,20 +450,12 @@ void *bootm_get_devicetree(struct image_data *data)
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return ERR_PTR(-ENOSYS);
 
-	from_fit = fitconfig_has_fdt(data);
+	from_fit = bootm_fit_has_fdt(data);
 	if (bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file))
 		from_fit = false;
 
 	if (from_fit) {
-		const void *of_tree;
-		unsigned long of_size;
-
-		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
-				     &of_tree, &of_size);
-		if (ret)
-			return ERR_PTR(ret);
-
-		data->of_root_node = of_unflatten_dtb(of_tree, of_size);
+		data->of_root_node = bootm_get_fit_devicetree(data);
 	} else if (data->oftree_file) {
 		size_t size;
 
@@ -671,80 +619,6 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
-static bool bootm_fit_config_valid(struct fit_handle *fit,
-				   struct device_node *config)
-{
-	/*
-	 * Consider only FIT configurations which do provide a loadable kernel
-	 * image.
-	 */
-	return !!fit_has_image(fit, config, "kernel");
-}
-
-static int bootm_open_fit(struct image_data *data)
-{
-	struct fit_handle *fit;
-	struct fdt_header *header;
-	static const char *kernel_img = "kernel";
-	size_t flen, hlen;
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_FITIMAGE))
-		return -ENOSYS;
-
-	header = (struct fdt_header *)data->os_header;
-	flen = bootm_get_os_size(data);
-	hlen = fdt32_to_cpu(header->totalsize);
-
-	fit = fit_open(data->os_file, data->verbose, data->verify,
-		       min(flen, hlen));
-	if (IS_ERR(fit)) {
-		pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
-		return PTR_ERR(fit);
-	}
-
-	data->os_fit = fit;
-
-	data->fit_config = fit_open_configuration(data->os_fit,
-						  data->os_part,
-						  bootm_fit_config_valid);
-	if (IS_ERR(data->fit_config)) {
-		pr_err("Cannot open FIT image configuration '%s'\n",
-		       data->os_part ? data->os_part : "default");
-		return PTR_ERR(data->fit_config);
-	}
-
-	ret = fit_open_image(data->os_fit, data->fit_config, kernel_img,
-			     &data->fit_kernel, &data->fit_kernel_size);
-	if (ret)
-		return ret;
-	if (data->os_address == UIMAGE_SOME_ADDRESS) {
-		ret = fit_get_image_address(data->os_fit,
-					    data->fit_config,
-					    kernel_img,
-					    "load", &data->os_address);
-		if (!ret)
-			pr_info("Load address from FIT '%s': 0x%lx\n",
-				kernel_img, data->os_address);
-		/* Note: Error case uses default value. */
-	}
-	if (data->os_entry == UIMAGE_SOME_ADDRESS) {
-		unsigned long entry;
-		ret = fit_get_image_address(data->os_fit,
-					    data->fit_config,
-					    kernel_img,
-					    "entry", &entry);
-		if (!ret) {
-			data->os_entry = entry - data->os_address;
-			pr_info("Entry address from FIT '%s': 0x%lx\n",
-				kernel_img, entry);
-		}
-		/* Note: Error case uses default value. */
-	}
-
-	return 0;
-}
-
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
@@ -1028,8 +902,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 			uimage_close(data->initrd);
 		uimage_close(data->os);
 	}
-	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit)
-		fit_close(data->os_fit);
+	if (data->os_fit)
+		bootm_close_fit(data);
 	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
diff --git a/include/bootm-fit.h b/include/bootm-fit.h
new file mode 100644
index 000000000000..8deddd62e328
--- /dev/null
+++ b/include/bootm-fit.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __BOOTM_FIT_H
+#define __BOOTM_FIT_H
+
+#include <linux/types.h>
+#include <image-fit.h>
+#include <bootm.h>
+
+struct resource;
+
+#ifdef CONFIG_BOOTM_FITIMAGE
+
+int bootm_load_fit_os(struct image_data *data, unsigned long load_address);
+
+struct resource *bootm_load_fit_initrd(struct image_data *data,
+				       unsigned long load_address);
+
+void *bootm_get_fit_devicetree(struct image_data *data);
+
+int bootm_open_fit(struct image_data *data);
+
+static inline void bootm_close_fit(struct image_data *data)
+{
+	fit_close(data->os_fit);
+}
+
+static inline bool bootm_fit_has_fdt(struct image_data *data)
+{
+	if (!data->os_fit)
+		return false;
+
+	return fit_has_image(data->os_fit, data->fit_config, "fdt");
+}
+
+#else
+
+static inline int bootm_load_fit_os(struct image_data *data,
+				    unsigned long load_address)
+{
+	return -ENOSYS;
+}
+
+static inline struct resource *bootm_load_fit_initrd(struct image_data *data,
+						     unsigned long load_address)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void *bootm_get_fit_devicetree(struct image_data *data)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline int bootm_open_fit(struct image_data *data)
+{
+	return -ENOSYS;
+}
+
+static inline void bootm_close_fit(struct image_data *data)
+{
+}
+
+static inline bool bootm_fit_has_fdt(struct image_data *data)
+{
+	return false;
+}
+
+#endif
+
+#endif
-- 
2.47.3



