Delivery-date: Thu, 12 Mar 2026 15:46:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIc-00ArU1-39
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:46:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIb-0005D9-8P
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:46:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hq0eVrFLgDvPlqkzCXdU5lgNLa+07wbA/W75Us/9uSk=; b=p1pNUbpNxM90Yr6bRmhboGoBTm
	yEAZXrKZvnofDpw4krQGM3MMokOG7D851CTCY7BmMAEFvV9idNcRAX9/meJQZQZwYxCUwKRtaJ8Pr
	M8dawsFQAbIIA4jOUwpkP2gjQQPc00NXgYUyMjA+AiCmfs7pFMoqGfY2P6IJ14omFDDdX7ORZKGvw
	A/sFgCXivEZFXSexNs/KQvFPxzWgdeAJbH5l1TFIYDxouBz2zYT/4XYFSArxqZb0jkLinI4AlIxBf
	wpcHc4VyivChso+W2x61ZeB5tCaxMma3k1M+FjUxkluxnm6e/cSnv0d4xaXjjQ2ehcNM2zEUBKdhR
	z4M5u6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHw-0000000EF5R-1BGm;
	Thu, 12 Mar 2026 14:45:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHn-0000000EEv8-3b4x
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004TI-9a; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052O5-1n;
	Thu, 12 Mar 2026 15:45:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-3NJy;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:48 +0100
Message-ID: <20260312144505.2159816-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074516_236561_4DE814E7 
X-CRM114-Status: GOOD (  32.07  )
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
Subject: [PATCH 05/16] bootm: switch plain file names case to loadable API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current bootm code has a number of downsides:

- uImage/FIT image support are deeply embedded in the code and every
  bootm_load_* function needs to take care of them in addition to
  the plain file load case

- Override handling is very invasive due to the above and needs to be
  repeated at every bootm_load_*

- Once a suitable starting region is determined, there is sometimes
  no bound checks to verify that the region is not exceeded

- Decompression necessarily needs a memory copy as only after a separate
  bootm handle for the compressed binary runs, the inside decompressed
  binary can actually have its bootm handler invoked

While trying to add support for multiple initrds, it became apparent, that
this further increase in complexity is not a good way forward.

As the current code is very intertwined and piece-wise migration would lead
to intermittent breakage, rework now everything except the uImage and
FIT image handling that will follow later.

This already has a number of benefits:

- override handling moved out of bootm code
- No separate compressed image bootm handler, decompression can be done
  directly to the final load address (in theory, the uncompress
  implementation still use an intermediate buffer for now).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c    |  41 +++--
 common/Kconfig            |   8 +
 common/Makefile           |   1 +
 common/boot.c             |   8 +-
 common/bootm-overrides.c  |  59 +++++++
 common/bootm.c            | 313 +++++++++++++++-----------------------
 include/bootm-overrides.h |  30 ++--
 include/bootm.h           |  21 ++-
 lib/Kconfig               |   1 +
 9 files changed, 254 insertions(+), 228 deletions(-)
 create mode 100644 common/bootm-overrides.c

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 22364beadcd5..7ad2a26fdc2f 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -194,41 +194,34 @@ static int bootm_load_tee_from_fit(struct image_data *data)
 out:
 	return ret;
 }
-static int bootm_load_tee_from_file(struct image_data *data)
+static int bootm_load_tee(struct image_data *data)
 {
-	int fd, ret;
+	int ret;
 	struct optee_header hdr;
 
-	fd = open(data->tee_file, O_RDONLY);
-	if (fd < 0) {
-		pr_err("%m\n");
-		return -errno;
-	}
+	if (!data->tee)
+		return 0;
 
-	if (read_full(fd, &hdr, sizeof(hdr)) < 0) {
-		pr_err("%m\n");
-		ret = -errno;
-		goto out;
-	}
+	ret = loadable_extract_into_buf(data->tee, &hdr, sizeof(hdr), 0,
+					LOADABLE_EXTRACT_PARTIAL);
+	if (ret < 0)
+		return ret;
 
 	ret = optee_verify_header_request_region(data, &hdr);
 	if (ret < 0)
-		goto out;
+		return ret;
 
-	if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
-		pr_err("%m\n");
-		ret = -errno;
+	ret = loadable_extract_into_buf(data->tee, (void *)data->tee_res->start,
+					hdr.init_size, sizeof(hdr), 0);
+	if (ret < 0) {
 		release_region(data->tee_res);
-		goto out;
+		return ret;
 	}
 
-	printf("Read optee file to %pa, size 0x%08x\n", (void *)data->tee_res->start, hdr.init_size);
+	printf("Loaded TEE image to %pa, size 0x%08x\n",
+	       (void *)data->tee_res->start, hdr.init_size);
 
-	ret = 0;
-out:
-	close(fd);
-
-	return ret;
+	return 0;
 }
 
 static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
@@ -295,7 +288,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
 		if (data->tee_file && !bootm_signed_images_are_forced()) {
-			ret = bootm_load_tee_from_file(data);
+			ret = bootm_load_tee(data);
 			if (ret)
 				return ret;
 		} else if (IS_ENABLED(CONFIG_FITIMAGE)) {
diff --git a/common/Kconfig b/common/Kconfig
index cd002865f736..fd422714d560 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -572,6 +572,14 @@ config TIMESTAMP
 menuconfig BOOTM
 	default y if COMMAND_SUPPORT
 	bool "bootm support"
+	select LOADABLE
+
+config BOOTM_COMPRESSED
+	bool "bootm support for compressed images"
+	default y
+	depends on BOOTM
+	depends on UNCOMPRESS
+	select LOADABLE_DECOMPRESS
 
 config BOOT_OVERRIDE
 	bool "Support partial override of boot entries"
diff --git a/common/Makefile b/common/Makefile
index ac39ee4e3ed5..27c5dea16860 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_BLSPEC)		+= blspec.o
 obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
 obj-$(CONFIG_BOOTM_AIMAGE)	+= bootm-android-image.o
+obj-$(CONFIG_BOOT_OVERRIDE)	+= bootm-overrides.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_MEMTEST)		+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
diff --git a/common/boot.c b/common/boot.c
index b5a4205cd9e2..dc1441d0dc91 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -563,7 +563,6 @@ BAREBOX_MAGICVAR(global.boot.default, "default boot order");
  */
 int bootm_entry(struct bootentry *be, const struct bootm_data *bootm_data)
 {
-	struct bootm_overrides old;
 	struct image_data *data;
 	int ret;
 
@@ -571,12 +570,13 @@ int bootm_entry(struct bootentry *be, const struct bootm_data *bootm_data)
 	if (IS_ERR(data))
 		return PTR_ERR(data);
 
-	old = bootm_save_overrides(be->overrides);
+	ret = bootm_apply_overrides(data, &be->overrides);
+	if (ret)
+		goto out;
 
 	ret = bootm_boot_handler(data);
 
-	bootm_restore_overrides(old);
-
+out:
 	bootm_boot_cleanup(data);
 	return ret;
 }
diff --git a/common/bootm-overrides.c b/common/bootm-overrides.c
new file mode 100644
index 000000000000..e1cba21e7711
--- /dev/null
+++ b/common/bootm-overrides.c
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <bootm.h>
+#include <bootm-overrides.h>
+
+/**
+ * bootm_apply_overrides - apply overrides
+ * @data: image data context
+ * @overrides: overrides to apply
+ *
+ * Applies bootm.initrd and bootm.oftree overrides by translating
+ * them into file-based loadables.
+ *
+ * Context: Called during boot preparation
+ * Return: 0 on success, negative error code otherwise
+ */
+int bootm_apply_overrides(struct image_data *data,
+			  const struct bootm_overrides *overrides)
+{
+	if (bootm_signed_images_are_forced())
+		return 0;
+
+	/* TODO: As we haven't switched over everything to loadables yet,
+	 * we need a special marker to mean override to empty.
+	 * We do this via a 0-byte file (/dev/null) for now..
+	 */
+
+	if (overrides->initrd_file) {
+		loadable_release(&data->initrd);
+
+		/* Empty string means to mask the original initrd */
+		if (nonempty(overrides->initrd_file))
+			data->initrd = loadable_from_file(overrides->initrd_file,
+							   LOADABLE_INITRD);
+		else
+			data->initrd = loadable_from_file("/dev/null",
+							   LOADABLE_INITRD);
+		if (IS_ERR(data->initrd))
+			return PTR_ERR(data->initrd);
+		data->is_override.initrd = true;
+	}
+
+	if (overrides->oftree_file) {
+		loadable_release(&data->oftree);
+
+		/* Empty string means to mask the original FDT */
+		if (nonempty(overrides->oftree_file))
+			data->oftree = loadable_from_file(overrides->oftree_file,
+							   LOADABLE_FDT);
+		else
+			data->oftree = loadable_from_file("/dev/null",
+							   LOADABLE_FDT);
+		if (IS_ERR(data->oftree))
+			return PTR_ERR(data->oftree);
+		data->is_override.oftree = true;
+	}
+
+	return 0;
+}
diff --git a/common/bootm.c b/common/bootm.c
index a10f3a4ea9dc..74caa3b13d86 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -3,7 +3,6 @@
 #include <common.h>
 #include <bootargs.h>
 #include <bootm.h>
-#include <bootm-overrides.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <efi/mode.h>
@@ -19,15 +18,12 @@
 #include <environment.h>
 #include <linux/stat.h>
 #include <magicvar.h>
-#include <uncompress.h>
 #include <zero_page.h>
 #include <security/config.h>
 
 static LIST_HEAD(handler_list);
 static struct sconfig_notifier_block sconfig_notifier;
 
-static __maybe_unused struct bootm_overrides bootm_overrides;
-
 static bool uimage_check(struct image_handler *handler,
 			 struct image_data *data,
 			 enum filetype detected_filetype)
@@ -211,23 +207,6 @@ static inline bool image_is_uimage(struct image_data *data)
 	return IS_ENABLED(CONFIG_BOOTM_UIMAGE) && data->os_uimage;
 }
 
-static bool bootm_get_override(char **oldpath, const char *newpath)
-{
-	if (!IS_ENABLED(CONFIG_BOOT_OVERRIDE))
-		return false;
-	if (bootm_signed_images_are_forced())
-		return false;
-	if (!newpath)
-		return false;
-
-	if (oldpath && !streq_ptr(*oldpath, newpath)) {
-		free(*oldpath);
-		*oldpath = *newpath ? xstrdup(newpath) : NULL;
-	}
-
-	return true;
-}
-
 /**
  * bootm_load_os() - load OS to RAM
  * @data:		image data context
@@ -243,6 +222,7 @@ static bool bootm_get_override(char **oldpath, const char *newpath)
 const struct resource *bootm_load_os(struct image_data *data,
 		ulong load_address, ulong end_address)
 {
+	struct resource *res;
 	int err;
 
 	if (data->os_res)
@@ -253,17 +233,22 @@ const struct resource *bootm_load_os(struct image_data *data,
 	if (end_address <= load_address)
 		return ERR_PTR(-EINVAL);
 
-	if (data->os_fit) {
-		err = bootm_load_fit_os(data, load_address);
-	} else if (image_is_uimage(data)) {
-		err = bootm_load_uimage_os(data, load_address);
-	} else if (data->os_file) {
-		data->os_res = file_to_sdram(data->os_file, load_address, MEMTYPE_LOADER_CODE);
-		err = data->os_res ? 0 : -EBUSY;
-	} else {
-		err = -EINVAL;
+	if (data->os) {
+		res = loadable_extract_into_sdram_all(data->os, load_address, end_address);
+		if (!IS_ERR(res))
+			data->os_res = res;
+		return res;
 	}
 
+	/* TODO: eliminate below special cases */
+
+	if (data->os_fit)
+		err = bootm_load_fit_os(data, load_address);
+	else if (image_is_uimage(data))
+		err = bootm_load_uimage_os(data, load_address);
+	else
+		err = -EINVAL;
+
 	if (err)
 		return ERR_PTR(err);
 
@@ -308,7 +293,12 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 	if (end_address <= load_address)
 		return ERR_PTR(-EINVAL);
 
-	bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file);
+	if (data->initrd) {
+		res = loadable_extract_into_sdram_all(data->initrd, load_address, end_address);
+		if (!IS_ERR(res))
+			data->initrd_res = res;
+		return res;
+	}
 
 	initrd = data->initrd_file;
 	if (initrd) {
@@ -324,11 +314,6 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 		res = bootm_load_uimage_initrd(data, load_address);
 		if (data->initrd_uimage->header.ih_type == IH_TYPE_MULTI)
 			initrd_part = data->initrd_part;
-
-	} else if (initrd) {
-		res = file_to_sdram(initrd, load_address, MEMTYPE_LOADER_DATA)
-			?: ERR_PTR(-EBUSY);
-
 	} else if (data->os_fit) {
 		res = bootm_load_fit_initrd(data, load_address);
 		type = filetype_fit;
@@ -368,21 +353,40 @@ void *bootm_get_devicetree(struct image_data *data)
 {
 	enum filetype type;
 	struct fdt_header *oftree;
-	bool from_fit = false;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return ERR_PTR(-ENOSYS);
 
-	from_fit = bootm_fit_has_fdt(data);
-	if (bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file))
-		from_fit = false;
+	if (data->oftree) {
+		const struct fdt_header *oftree_view;
+		size_t size;
 
-	if (from_fit) {
+		oftree_view = loadable_view(data->oftree, &size);
+		if (IS_ERR(oftree_view))
+			pr_err("could not open device tree \"%s\": %pe\n",
+			       data->oftree_file, oftree_view);
+		if (IS_ERR_OR_NULL(oftree_view))
+			return ERR_CAST(oftree_view);
+
+		data->of_root_node = of_unflatten_dtb(oftree_view, size);
+		loadable_view_free(data->oftree, oftree_view, size);
+
+		if (IS_ERR(data->of_root_node)) {
+			data->of_root_node = NULL;
+			pr_err("unable to unflatten devicetree\n");
+			return ERR_PTR(-EINVAL);
+		}
+
+	} else if (bootm_fit_has_fdt(data)) {
 		data->of_root_node = bootm_get_fit_devicetree(data);
 	} else if (data->oftree_file) {
 		size_t size;
 
+		/* TODO: There's some duplication here, but that will go away
+		 * once we switch this over to the loadable API
+		 */
+
 		ret = file_name_detect_type(data->oftree_file, &type);
 		if (ret) {
 			pr_err("could not open device tree \"%s\": %pe\n", data->oftree_file,
@@ -390,21 +394,10 @@ void *bootm_get_devicetree(struct image_data *data)
 			return ERR_PTR(ret);
 		}
 
-		switch (type) {
-		case filetype_uimage:
-			ret = bootm_open_oftree_uimage(data, &size, &oftree);
-			break;
-		case filetype_oftree:
-			pr_info("Loading devicetree from '%s'\n", data->oftree_file);
-			ret = read_file_2(data->oftree_file, &size, (void *)&oftree,
-					  FILESIZE_MAX);
-			break;
-		case filetype_empty:
-			return NULL;
-		default:
+		if (type != filetype_uimage)
 			return ERR_PTR(-EINVAL);
-		}
 
+		ret = bootm_open_oftree_uimage(data, &size, &oftree);
 		if (ret)
 			return ERR_PTR(ret);
 
@@ -488,25 +481,18 @@ bootm_load_devicetree(struct image_data *data, void *fdt,
 	return data->oftree_res;
 }
 
-int bootm_get_os_size(struct image_data *data)
+loff_t bootm_get_os_size(struct image_data *data)
 {
-	const char *os_file;
-	struct stat s;
-	int ret;
+	loff_t size;
 
+	if (data->os)
+		return loadable_get_size(data->os, &size) ?: size;
 	if (image_is_uimage(data))
 		return uimage_get_size(data->os_uimage, uimage_part_num(data->os_part));
 	if (data->os_fit)
 		return data->fit_kernel_size;
-	if (!data->os_file)
-		return -EINVAL;
-	os_file = data->os_file;
 
-	ret = stat(os_file, &s);
-	if (ret)
-		return ret;
-
-	return s.st_size;
+	return -EINVAL;
 }
 
 static void bootm_print_info(struct image_data *data)
@@ -569,6 +555,63 @@ int file_read_and_detect_boot_image_type(const char *os_file, void **os_header)
 	return file_detect_boot_image_type(*os_header, PAGE_SIZE);
 }
 
+static int bootm_open_files(struct image_data *data)
+{
+	data->os = loadable_from_file(data->os_file, LOADABLE_KERNEL);
+	if (IS_ERR(data->os))
+		return PTR_ERR(data->os);
+
+	if (data->oftree_file) {
+		data->oftree = loadable_from_file(data->oftree_file, LOADABLE_FDT);
+		if (IS_ERR(data->oftree))
+			return PTR_ERR(data->oftree);
+	}
+
+	if (data->initrd_file) {
+		data->initrd = loadable_from_file(data->initrd_file, LOADABLE_INITRD);
+		if (IS_ERR(data->initrd))
+			return PTR_ERR(data->initrd);
+	}
+
+	if (data->tee_file) {
+		data->tee = loadable_from_file(data->tee_file, LOADABLE_TEE);
+		if (IS_ERR(data->tee))
+			return PTR_ERR(data->tee);
+	}
+
+	return 0;
+}
+
+int bootm_open_os_compressed(struct image_data *data)
+{
+	void *header;
+	ssize_t ret;
+
+	if (!IS_ENABLED(CONFIG_BOOTM_COMPRESSED))
+		return -ENOSYS;
+
+	/* Wrap the OS loadable with transparent decompression */
+	data->os = loadable_decompress(data->os);
+
+	/* Read decompressed header to detect actual kernel type */
+	header = xzalloc(PAGE_SIZE);
+	ret = loadable_extract_into_buf(data->os, header, PAGE_SIZE, 0,
+					LOADABLE_EXTRACT_PARTIAL);
+	if (ret < 0) {
+		free(header);
+		return ret;
+	}
+
+	/* Detect actual image type from decompressed content */
+	data->kernel_type = file_detect_boot_image_type(header, ret);
+
+	/* Replace the os_header with the decompressed header */
+	free(data->os_header);
+	data->os_header = header;
+
+	return 0;
+}
+
 struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 {
 	struct image_data *data;
@@ -636,8 +679,20 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 	case filetype_uimage:
 		ret = bootm_open_uimage(data);
 		break;
+	case filetype_gzip:
+	case filetype_bzip2:
+	case filetype_lzo_compressed:
+	case filetype_lz4_compressed:
+	case filetype_xz_compressed:
+	case filetype_zstd_compressed:
+		ret = bootm_open_files(data);
+		if (!ret)
+			ret = bootm_open_os_compressed(data);
+		image_type_str = "compressed boot";
+		break;
 	default:
-		ret = 0;
+		ret = bootm_open_files(data);
+		image_type_str = "boot";
 		break;
 	}
 
@@ -792,13 +847,6 @@ int bootm_boot_handler(struct image_data *data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
-	bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file);
-
-	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file)) {
-		release_sdram_region(data->initrd_res);
-		data->initrd_res = NULL;
-	}
-
 	ret = handler->bootm(data);
 	if (data->dryrun)
 		pr_info("Dryrun. Aborted\n");
@@ -818,6 +866,10 @@ void bootm_boot_cleanup(struct image_data *data)
 		bootm_close_uimage(data);
 	if (data->os_fit)
 		bootm_close_fit(data);
+	loadable_release(&data->oftree);
+	loadable_release(&data->initrd);
+	loadable_release(&data->os);
+	loadable_release(&data->tee);
 	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
@@ -849,20 +901,6 @@ int bootm_boot(const struct bootm_data *bootm_data)
 	return ret;
 }
 
-#ifdef CONFIG_BOOT_OVERRIDE
-struct bootm_overrides bootm_save_overrides(const struct bootm_overrides overrides)
-{
-	struct bootm_overrides old = bootm_overrides;
-	/* bootm_merge_overrides copies only actual (non-NULL) overrides */
-	bootm_merge_overrides(&bootm_overrides, &overrides);
-	return old;
-}
-void bootm_restore_overrides(const struct bootm_overrides overrides)
-{
-	bootm_overrides = overrides;
-}
-#endif
-
 bool bootm_efi_check_image(struct image_handler *handler,
 			   struct image_data *data,
 			   enum filetype detected_filetype)
@@ -887,92 +925,6 @@ bool bootm_efi_check_image(struct image_handler *handler,
 	return detected_filetype == handler->filetype;
 }
 
-static int do_bootm_compressed(struct image_data *img_data)
-{
-	struct bootm_data bootm_data = {
-		.oftree_file = img_data->oftree_file,
-		.initrd_file = img_data->initrd_file,
-		.tee_file = img_data->tee_file,
-		.verbose = img_data->verbose,
-		.verify = img_data->verify,
-		.force = img_data->force,
-		.dryrun = img_data->dryrun,
-		.initrd_address = img_data->initrd_address,
-		.os_address = img_data->os_address,
-		.os_entry = img_data->os_entry,
-	};
-	int from, to, ret;
-	char *dstpath;
-
-	from = open(img_data->os_file, O_RDONLY);
-	if (from < 0)
-		return -ENODEV;
-
-	dstpath = make_temp("bootm-compressed");
-	if (!dstpath) {
-		ret = -ENOMEM;
-		goto fail_from;
-	}
-
-	to = open(dstpath, O_CREAT | O_WRONLY);
-	if (to < 0) {
-		ret = -ENODEV;
-		goto fail_make_temp;
-	}
-
-	ret = uncompress_fd_to_fd(from, to, uncompress_err_stdout);
-	if (ret)
-		goto fail_to;
-
-	bootm_data.os_file = dstpath;
-	ret = bootm_boot(&bootm_data);
-
-fail_to:
-	close(to);
-	unlink(dstpath);
-fail_make_temp:
-	free(dstpath);
-fail_from:
-	close(from);
-	return ret;
-}
-
-static struct image_handler bzip2_bootm_handler = {
-	.name = "BZIP2 compressed file",
-	.bootm = do_bootm_compressed,
-	.filetype = filetype_bzip2,
-};
-
-static struct image_handler gzip_bootm_handler = {
-	.name = "GZIP compressed file",
-	.bootm = do_bootm_compressed,
-	.filetype = filetype_gzip,
-};
-
-static struct image_handler lzo_bootm_handler = {
-	.name = "LZO compressed file",
-	.bootm = do_bootm_compressed,
-	.filetype = filetype_lzo_compressed,
-};
-
-static struct image_handler lz4_bootm_handler = {
-	.name = "LZ4 compressed file",
-	.bootm = do_bootm_compressed,
-	.filetype = filetype_lz4_compressed,
-};
-
-static struct image_handler xz_bootm_handler = {
-	.name = "XZ compressed file",
-	.bootm = do_bootm_compressed,
-	.filetype = filetype_xz_compressed,
-};
-
-static struct image_handler zstd_bootm_handler = {
-	.name = "ZSTD compressed file",
-	.bootm = do_bootm_compressed,
-	.filetype = filetype_zstd_compressed,
-};
-
 int linux_rootwait_secs = 10;
 
 static const char * const bootm_efi_loader_mode_names[] = {
@@ -1020,19 +972,6 @@ static int bootm_init(void)
 					  bootm_efi_loader_mode_names,
 					  ARRAY_SIZE(bootm_efi_loader_mode_names));
 
-	if (IS_ENABLED(CONFIG_BZLIB))
-		register_image_handler(&bzip2_bootm_handler);
-	if (IS_ENABLED(CONFIG_ZLIB))
-		register_image_handler(&gzip_bootm_handler);
-	if (IS_ENABLED(CONFIG_LZO_DECOMPRESS))
-		register_image_handler(&lzo_bootm_handler);
-	if (IS_ENABLED(CONFIG_LZ4_DECOMPRESS))
-		register_image_handler(&lz4_bootm_handler);
-	if (IS_ENABLED(CONFIG_XZ_DECOMPRESS))
-		register_image_handler(&xz_bootm_handler);
-	if (IS_ENABLED(CONFIG_ZSTD_DECOMPRESS))
-		register_image_handler(&zstd_bootm_handler);
-
 	return 0;
 }
 late_initcall(bootm_init);
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
index b807e5be310a..a52a498b97a2 100644
--- a/include/bootm-overrides.h
+++ b/include/bootm-overrides.h
@@ -7,26 +7,32 @@ struct bootm_overrides {
 	const char *initrd_file;
 };
 
-#ifdef CONFIG_BOOT_OVERRIDE
-struct bootm_overrides bootm_save_overrides(const struct bootm_overrides overrides);
-void bootm_restore_overrides(const struct bootm_overrides overrides);
-#else
-static inline struct bootm_overrides bootm_save_overrides(const struct bootm_overrides overrides)
-{
-	return (struct bootm_overrides) {};
-}
-static inline void bootm_restore_overrides(const struct bootm_overrides overrides) {}
-#endif
+struct image_data;
 
+#ifdef CONFIG_BOOT_OVERRIDE
 static inline void bootm_merge_overrides(struct bootm_overrides *dst,
 					 const struct bootm_overrides *src)
 {
-	if (!IS_ENABLED(CONFIG_BOOT_OVERRIDE))
-		return;
 	if (src->oftree_file)
 		dst->oftree_file = src->oftree_file;
 	if (src->initrd_file)
 		dst->initrd_file = src->initrd_file;
 }
 
+int bootm_apply_overrides(struct image_data *data,
+			  const struct bootm_overrides *overrides);
+#else
+
+static inline void bootm_merge_overrides(struct bootm_overrides *dst,
+					 const struct bootm_overrides *src)
+{
+}
+
+static inline int bootm_apply_overrides(struct image_data *data,
+					const struct bootm_overrides *overrides)
+{
+	return 0;
+}
+#endif
+
 #endif
diff --git a/include/bootm.h b/include/bootm.h
index da6cf7301709..1c3e06f20f47 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -5,6 +5,7 @@
 #include <image.h>
 #include <filetype.h>
 #include <linux/list.h>
+#include <loadable.h>
 
 enum bootm_verify {
 	BOOTM_VERIFY_NONE,
@@ -55,6 +56,7 @@ struct bootm_data {
 int bootm_boot(const struct bootm_data *data);
 
 struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data);
+int bootm_open_os_compressed(struct image_data *data);
 int bootm_boot_handler(struct image_data *data);
 void bootm_boot_cleanup(struct image_data *data);
 
@@ -62,6 +64,9 @@ struct image_data {
 	/* simplest case. barebox has already loaded the os here */
 	struct resource *os_res;
 
+	/* Future default case: A generic loadable object */
+	struct loadable *os;
+
 	/* if os is an uImage this will be provided */
 	struct uimage_handle *os_uimage;
 
@@ -87,6 +92,9 @@ struct image_data {
 	/* if initrd is already loaded this resource will be !NULL */
 	struct resource *initrd_res;
 
+	/* Future default case: A generic loadable object */
+	struct loadable *initrd;
+
 	/* if initrd is an uImage this will be provided */
 	struct uimage_handle *initrd_uimage;
 	char *initrd_part;
@@ -106,6 +114,9 @@ struct image_data {
 	struct device_node *of_root_node;
 	struct resource *oftree_res;
 
+	/* Future default case: A generic loadable object */
+	struct loadable *oftree;
+
 	/*
 	 * The first PAGE_SIZE bytes of the OS image. Can be used by the image
 	 * handlers to analyze the OS image before actually loading the bulk of
@@ -115,6 +126,9 @@ struct image_data {
 	char *tee_file;
 	struct resource *tee_res;
 
+	/* Future default case: A generic loadable object */
+	struct loadable *tee;
+
 	/* Type of OS image, e.g. filetype_fit or the same as kernel_type */
 	enum filetype image_type;
 	/* Type of kernel image that's going to be booted */
@@ -124,6 +138,11 @@ struct image_data {
 	int verbose;
 	int force;
 	int dryrun;
+	struct {
+		u8 os:1;
+		u8 initrd:1;
+		u8 oftree:1;
+	} is_override;
 	enum bootm_efi_mode efi_boot;
 };
 
@@ -171,7 +190,7 @@ void *bootm_get_devicetree(struct image_data *data);
 const struct resource *
 bootm_load_devicetree(struct image_data *data, void *fdt,
 		      ulong load_address, ulong end_address);
-int bootm_get_os_size(struct image_data *data);
+loff_t bootm_get_os_size(struct image_data *data);
 
 enum bootm_verify bootm_get_verify_mode(void);
 void bootm_set_verify_mode(enum bootm_verify mode);
diff --git a/lib/Kconfig b/lib/Kconfig
index 3e314c05d7ee..5f5771ff2bdf 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -14,6 +14,7 @@ config LOADABLE
 	  Provides infrastructure for lazy-loadable resources that can be
 	  queried for metadata without loading data, and extracted to memory
 	  on demand.
+	  Used mainly by bootm for managing kernel/initrd/fdt loading.
 
 config LOADABLE_DECOMPRESS
 	bool "Decompression support for loadable resources" if COMPILE_TEST
-- 
2.47.3



