Delivery-date: Thu, 12 Mar 2026 15:46:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIY-00ArSf-1U
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:46:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIX-0005A0-0D
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:46:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UrHJoOaR5/JPmHh2swKcxVvEQPq4vsjRkAOTo7F3Xc8=; b=G5vxOnmLwUvmyTFrYDwi8wcpLm
	7MF8ky0Oz2fmlw5L0CohgXHP69tqp5J8kgZN20qmBQxLcu8qAvSjIv8g2oayoZfHNk1dGf1gWlUrV
	JQDE7YO2P4LscGJZTXszVtQCxfJq/bCxc/mMcU3xGrkBcLM9ol2xpBZuTYWR34pHziEdJQoNjHhuv
	ogcadO0EUtWCwWXvQYQMWL8sSuvjHHmzTkCsQygIEPN4hcqe686xUAFDqFteRdPSEB7nngKirPX0V
	wswV07kYEP6yeceCpDLaQCQTjyPenzVAjsFNYrmIV+0znqBpqHec73d2+VbZh2cQ44+Uoz/VPpnYq
	AgtbDFGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHm-0000000EEtm-0KeX;
	Thu, 12 Mar 2026 14:45:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEmJ-46oa
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004Tg-Bc; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052OC-2A;
	Thu, 12 Mar 2026 15:45:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-3mHM;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:50 +0100
Message-ID: <20260312144505.2159816-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074508_336799_8EEEE1B9 
X-CRM114-Status: GOOD (  33.25  )
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
Subject: [PATCH 07/16] bootm: uimage: switch to loadable API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Optimally, common/bootm.c should not contain uImage specific code at
all. Leverage the new loadable support, so loadables for the boot
artifacts are created once and then we can remove much of the uImage
specific code that happens later in bootm.c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm-uimage.c  | 340 +++++++++++++++++++++++++++++++----------
 common/bootm.c         |  76 +--------
 common/uimage.c        |  60 +++-----
 include/bootm-uimage.h |  31 +---
 include/bootm.h        |   3 +
 include/image.h        |   5 +-
 6 files changed, 292 insertions(+), 223 deletions(-)

diff --git a/common/bootm-uimage.c b/common/bootm-uimage.c
index a1cb39d3ecd8..f2d8d7b22db9 100644
--- a/common/bootm-uimage.c
+++ b/common/bootm-uimage.c
@@ -11,37 +11,56 @@ static int uimage_part_num(const char *partname)
 	return simple_strtoul(partname, NULL, 0);
 }
 
-/*
- * bootm_load_uimage_os() - load uImage OS to RAM
- *
- * @data:		image data context
- * @load_address:	The address where the OS should be loaded to
- *
- * This loads the OS to a RAM location. load_address must be a valid
- * address. If the image_data doesn't have a OS specified it's considered
- * an error.
- *
- * Return: 0 on success, negative error code otherwise
- */
-int bootm_load_uimage_os(struct image_data *data, unsigned long load_address)
+static struct loadable *loadable_from_uimage(struct uimage_handle *uimage,
+					     int part_num,
+					     enum loadable_type type,
+					     bool exclusive);
+
+static void loadable_from_uimage_os(struct image_data *data)
 {
 	int num;
 
 	num = uimage_part_num(data->os_part);
 
-	data->os_res = uimage_load_to_sdram(data->os_uimage,
-		num, load_address, 0);
-	if (!data->os_res)
-		return -ENOMEM;
-
-	return 0;
+	loadable_release(&data->os);
+	data->os = loadable_from_uimage(data->os_uimage, num, LOADABLE_KERNEL, true);
 }
 
-static int bootm_open_initrd_uimage(struct image_data *data)
+static int file_name_detect_type_is_uimage(const char *filename, const char *desc)
 {
+	enum filetype type;
 	int ret;
 
-	if (strcmp(data->os_file, data->initrd_file)) {
+	ret = file_name_detect_type(filename, &type);
+	if (ret < 0) {
+		pr_err("could not open %s \"%s\": %pe\n",
+		       desc, filename, ERR_PTR(ret));
+		return ret;
+	}
+
+	return type == filetype_uimage;
+}
+
+static int loadable_from_uimage_initrd(struct image_data *data)
+{
+	int ret, num;
+	bool release = false;
+
+	if (streq_ptr(data->os_file, data->initrd_file)) {
+		data->initrd_uimage = data->os_uimage;
+	} else {
+		int is_uimage;
+
+		is_uimage = file_name_detect_type_is_uimage(data->initrd_file, "initrd");
+		if (is_uimage < 0)
+			return is_uimage;
+		if (!is_uimage) {
+			loadable_release(&data->initrd);
+			data->initrd = loadable_from_file(data->initrd_file,
+							  LOADABLE_INITRD);
+			return PTR_ERR_OR_ZERO(data->initrd);
+		}
+
 		data->initrd_uimage = uimage_open(data->initrd_file);
 		if (!data->initrd_uimage)
 			return -EINVAL;
@@ -51,88 +70,62 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 			if (ret) {
 				pr_err("Checking data crc failed with %pe\n",
 					ERR_PTR(ret));
+				uimage_close(data->initrd_uimage);
+				data->initrd_uimage = NULL;
 				return ret;
 			}
 		}
 		uimage_print_contents(data->initrd_uimage);
-	} else {
-		data->initrd_uimage = data->os_uimage;
-	}
-
-	return 0;
-}
-
-/*
- * bootm_load_uimage_initrd() - load initrd from uimage to RAM
- *
- * @data:		image data context
- * @load_address:	The address where the initrd should be loaded to
- *
- * This loads the initrd to a RAM location. load_address must be a valid
- * address. If the image_data doesn't have a initrd specified this function
- * still returns successful as an initrd is optional.
- *
- * Return: initrd resource on success, NULL if no initrd is present or
- *         an error pointer if an error occurred.
- */
-struct resource *
-bootm_load_uimage_initrd(struct image_data *data, unsigned long load_address)
-{
-	struct resource *res;
-	int ret;
-
-	int num;
-	ret = bootm_open_initrd_uimage(data);
-	if (ret) {
-		pr_err("loading initrd failed with %pe\n", ERR_PTR(ret));
-		return ERR_PTR(ret);
+		release = true;
 	}
 
 	num = uimage_part_num(data->initrd_part);
 
-	res = uimage_load_to_sdram(data->initrd_uimage,
-		num, load_address, 0);
-	if (!res)
-		return ERR_PTR(-ENOMEM);
+	loadable_release(&data->initrd);
+	data->initrd = loadable_from_uimage(data->initrd_uimage, num,
+					    LOADABLE_INITRD, release);
 
-	return res;
+	return 0;
 }
 
-int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
-			     struct fdt_header **fdt)
+static int loadable_from_uimage_oftree(struct image_data *data)
 {
-	enum filetype ft;
 	const char *oftree = data->oftree_file;
-	int num = uimage_part_num(data->oftree_part);
+	int num;
 	struct uimage_handle *of_handle;
-	int release = 0;
+	bool release = false;
 
-	pr_info("Loading devicetree from '%s'@%d\n", oftree, num);
-
-	if (!strcmp(data->os_file, oftree)) {
+	if (data->os_uimage && streq_ptr(data->os_file, oftree)) {
 		of_handle = data->os_uimage;
-	} else if (!strcmp(data->initrd_file, oftree)) {
+	} else if (data->initrd_uimage && streq_ptr(data->initrd_file, oftree)) {
 		of_handle = data->initrd_uimage;
 	} else {
+		int is_uimage;
+
+		is_uimage = file_name_detect_type_is_uimage(data->oftree_file, "device tree");
+		if (is_uimage < 0)
+			return is_uimage;
+		if (!is_uimage) {
+			loadable_release(&data->oftree);
+			data->oftree = loadable_from_file(data->oftree_file,
+							  LOADABLE_FDT);
+			return PTR_ERR_OR_ZERO(data->oftree);
+		}
+
 		of_handle = uimage_open(oftree);
 		if (!of_handle)
 			return -ENODEV;
 		uimage_print_contents(of_handle);
-		release = 1;
+		release = true;
 	}
 
-	*fdt = uimage_load_to_buf(of_handle, num, size);
+	num = uimage_part_num(data->oftree_part);
+	pr_info("Loading devicetree from '%s'@%d\n", oftree, num);
 
-	if (release)
-		uimage_close(of_handle);
+	data->oftree_uimage = of_handle;
 
-	ft = file_detect_type(*fdt, *size);
-	if (ft != filetype_oftree) {
-		pr_err("%s is not an oftree but %s\n",
-			data->oftree_file, file_type_to_string(ft));
-		free(*fdt);
-		return -EINVAL;
-	}
+	loadable_release(&data->oftree);
+	data->oftree = loadable_from_uimage(data->oftree_uimage, num, LOADABLE_FDT, release);
 
 	return 0;
 }
@@ -150,7 +143,7 @@ int bootm_open_uimage(struct image_data *data)
 		if (ret) {
 			pr_err("Checking data crc failed with %pe\n",
 					ERR_PTR(ret));
-			return ret;
+			goto err_close;
 		}
 	}
 
@@ -159,18 +152,199 @@ int bootm_open_uimage(struct image_data *data)
 	if (IH_ARCH == IH_ARCH_INVALID || data->os_uimage->header.ih_arch != IH_ARCH) {
 		pr_err("Unsupported Architecture 0x%x\n",
 		       data->os_uimage->header.ih_arch);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_close;
 	}
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = data->os_uimage->header.ih_load;
 
 	return 0;
+
+err_close:
+	uimage_close(data->os_uimage);
+	data->os_uimage = NULL;
+	return ret;
 }
 
-void bootm_close_uimage(struct image_data *data)
+/* === Loadable implementation for uImage === */
+
+struct uimage_loadable_priv {
+	struct uimage_handle *handle;
+	int part_num;
+	bool release_handle;
+};
+
+static int uimage_loadable_get_info(struct loadable *l, struct loadable_info *info)
 {
-	if (data->initrd_uimage && data->initrd_uimage != data->os_uimage)
-		uimage_close(data->initrd_uimage);
-	uimage_close(data->os_uimage);
+	struct uimage_loadable_priv *priv = l->priv;
+	struct uimage_handle *handle = priv->handle;
+	ssize_t size;
+
+	/* Get size from uImage header */
+	size = uimage_get_size(handle, priv->part_num);
+	if (size <= 0)
+		return size < 0 ? size : -EINVAL;
+
+	/*
+	 * uimage_get_size() returns the compressed (stored) size.
+	 * For compressed uImages, the decompressed size is unknown,
+	 * so report LOADABLE_SIZE_UNKNOWN to let loadable_extract()
+	 * fall through to the extract op which handles decompression.
+	 */
+	if (handle->header.ih_comp != IH_COMP_NONE)
+		info->final_size = LOADABLE_SIZE_UNKNOWN;
+	else
+		info->final_size = size;
+
+	return 0;
+}
+
+/**
+ * uimage_loadable_extract_into_buf - load uImage data to target address
+ * @l: loadable representing uImage component
+ * @load_addr: physical address to load data to
+ * @buf_size: size of buffer at load_addr (0 = no limit check)
+ * @offset: how many bytes to skip at the start of the uncompressed input
+ * @flags: A bitmask of OR-ed LOADABLE_EXTRACT_ flags
+ *
+ * Commits the uImage component to the specified memory address. This involves:
+ * 1. Getting size information from loadable
+ * 2. Checking buffer size if buf_size > 0
+ * 3. Calling uimage_load_to_sdram() to decompress and load data
+ * 4. Returning actual bytes written
+ *
+ * The uimage_load_to_sdram() function handles decompression (if needed),
+ * memory allocation with request_sdram_region(), and copying data to the
+ * target address.
+ *
+ * Return: actual number of bytes written on success, negative errno on error
+ *         -ENOSPC if buf_size is specified and too small
+ *         -ENOMEM if failed to load to SDRAM
+ */
+static ssize_t uimage_loadable_extract_into_buf(struct loadable *l, void *load_addr,
+						size_t buf_size, loff_t offset,
+						unsigned flags)
+{
+	struct uimage_loadable_priv *priv = l->priv;
+	return uimage_load_into_fixed_buf(priv->handle, priv->part_num,
+					  load_addr, buf_size, offset,
+					  flags & LOADABLE_EXTRACT_PARTIAL);
+}
+
+static void *uimage_loadable_extract(struct loadable *l, size_t *size)
+{
+	struct uimage_loadable_priv *priv = l->priv;
+
+	return uimage_load_to_buf(priv->handle, priv->part_num, size);
+}
+
+static void uimage_loadable_release(struct loadable *l)
+{
+	struct uimage_loadable_priv *priv = l->priv;
+
+	if (priv->release_handle)
+		uimage_close(priv->handle);
+	free(priv);
+}
+
+static const struct loadable_ops uimage_loadable_ops = {
+	.get_info = uimage_loadable_get_info,
+	.extract_into_buf = uimage_loadable_extract_into_buf,
+	.extract = uimage_loadable_extract,
+	/* .mmap is implementable for uncompressed content if anyone cares enough */
+	.release = uimage_loadable_release,
+};
+
+/**
+ * loadable_from_uimage - create a loadable from uImage component
+ * @uimage: opened uImage handle
+ * @part_num: partition/part number within uImage (0 for single-part)
+ * @type: type of loadable (LOADABLE_KERNEL, LOADABLE_INITRD, etc.)
+ * @exclusive: whether the uimage will be owned (and released) by the loadable
+ *
+ * Creates a loadable structure that wraps access to a component within a
+ * uImage. For multi-part uImages, part_num selects which part to load.
+ * The loadable uses the uImage handle to access and potentially decompress
+ * data on demand during commit.
+ *
+ * The created loadable must be freed with loadable_release() when done.
+ * The uImage handle itself is managed by the caller and must remain valid
+ * until the loadable is released.
+ *
+ * Return: pointer to allocated loadable on success, ERR_PTR() on error
+ */
+static struct loadable *loadable_from_uimage(struct uimage_handle *uimage,
+					     int part_num,
+					     enum loadable_type type,
+					     bool exclusive)
+{
+	struct loadable *l;
+	struct uimage_loadable_priv *priv;
+
+	l = xzalloc(sizeof(*l));
+	priv = xzalloc(sizeof(*priv));
+
+	priv->handle = uimage;
+	priv->release_handle = exclusive;
+	priv->part_num = part_num;
+
+	/* Create descriptive name */
+	if (part_num > 0)
+		l->name = xasprintf("uImage(%s, %d)", uimage->filename, part_num);
+	else
+		l->name = xasprintf("uImage(%s)", uimage->filename);
+
+	l->type = type;
+	l->ops = &uimage_loadable_ops;
+	l->priv = priv;
+	loadable_init(l);
+
+	return l;
+}
+
+/**
+ * bootm_collect_uimage_loadables - create loadables from opened uImage
+ * @data: image data context with opened uImage handle
+ *
+ * Creates loadable structures for boot components from opened uImage handles.
+ * This includes:
+ * * Kernel from data->os_uimage (using data->os_part for multi-part selection)
+ * * Initrd from data->initrd_files uImage if specified (opens it if needed)
+ *
+ * For initrd handling:
+ * * If initrd_files matches os_file: uses same uImage handle (multi-part)
+ * * Otherwise: opens separate uImage for initrd and verifies it
+ *
+ * Each loadable is added to data->loadables list and appropriate shortcuts
+ * (data->kernel) are set. The loadables are not yet committed to memory - that
+ * happens later during bootm_load_os/bootm_load_initrd.
+ *
+ * Note: FDT and TEE are not commonly used in uImage format and are not
+ * collected here.
+ *
+ * Requires: data->os_uimage must be already opened by bootm_open_uimage()
+ * Context: Called during boot preparation for uImage boots
+ */
+int bootm_collect_uimage_loadables(struct image_data *data)
+{
+	int ret;
+
+	/* Create kernel loadable from opened uImage */
+	if (data->os_uimage)
+		loadable_from_uimage_os(data);
+
+	if (IS_ENABLED(CONFIG_BOOTM_INITRD) && data->initrd_file) {
+		ret = loadable_from_uimage_initrd(data);
+		if (ret)
+			return ret;
+	}
+
+	if (IS_ENABLED(CONFIG_BOOTM_OFTREE_UIMAGE) && data->oftree_file) {
+		ret = loadable_from_uimage_oftree(data);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
 }
diff --git a/common/bootm.c b/common/bootm.c
index 74caa3b13d86..08a8fbbfdcf5 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -202,11 +202,6 @@ static int uimage_part_num(const char *partname)
 	return simple_strtoul(partname, NULL, 0);
 }
 
-static inline bool image_is_uimage(struct image_data *data)
-{
-	return IS_ENABLED(CONFIG_BOOTM_UIMAGE) && data->os_uimage;
-}
-
 /**
  * bootm_load_os() - load OS to RAM
  * @data:		image data context
@@ -244,8 +239,6 @@ const struct resource *bootm_load_os(struct image_data *data,
 
 	if (data->os_fit)
 		err = bootm_load_fit_os(data, load_address);
-	else if (image_is_uimage(data))
-		err = bootm_load_uimage_os(data, load_address);
 	else
 		err = -EINVAL;
 
@@ -278,9 +271,6 @@ const struct resource *
 bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address)
 {
 	struct resource *res = NULL;
-	const char *initrd, *initrd_part = NULL;
-	enum filetype type = filetype_unknown;
-	int ret;
 
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return NULL;
@@ -300,24 +290,8 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 		return res;
 	}
 
-	initrd = data->initrd_file;
-	if (initrd) {
-		ret = file_name_detect_type(initrd, &type);
-		if (ret) {
-			pr_err("could not open initrd \"%s\": %pe\n",
-			       initrd, ERR_PTR(ret));
-			return ERR_PTR(ret);
-		}
-	}
-
-	if (type == filetype_uimage) {
-		res = bootm_load_uimage_initrd(data, load_address);
-		if (data->initrd_uimage->header.ih_type == IH_TYPE_MULTI)
-			initrd_part = data->initrd_part;
-	} else if (data->os_fit) {
+	if (data->os_fit)
 		res = bootm_load_fit_initrd(data, load_address);
-		type = filetype_fit;
-	}
 
 	if (IS_ERR_OR_NULL(res))
 		return res;
@@ -328,11 +302,6 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 	if (WARN_ON(res->end > end_address))
 		return ERR_PTR(-ENOSPC);
 
-	pr_info("Loaded initrd from %s %s%s%s to %pa-%pa\n",
-		file_type_to_string(type), initrd ?: "",
-		initrd_part ? "@" : "", initrd_part ?: "",
-		&res->start, &res->end);
-
 	data->initrd_res = res;
 	return data->initrd_res;
 }
@@ -351,9 +320,7 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
  */
 void *bootm_get_devicetree(struct image_data *data)
 {
-	enum filetype type;
 	struct fdt_header *oftree;
-	int ret;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return ERR_PTR(-ENOSYS);
@@ -380,37 +347,6 @@ void *bootm_get_devicetree(struct image_data *data)
 
 	} else if (bootm_fit_has_fdt(data)) {
 		data->of_root_node = bootm_get_fit_devicetree(data);
-	} else if (data->oftree_file) {
-		size_t size;
-
-		/* TODO: There's some duplication here, but that will go away
-		 * once we switch this over to the loadable API
-		 */
-
-		ret = file_name_detect_type(data->oftree_file, &type);
-		if (ret) {
-			pr_err("could not open device tree \"%s\": %pe\n", data->oftree_file,
-			       ERR_PTR(ret));
-			return ERR_PTR(ret);
-		}
-
-		if (type != filetype_uimage)
-			return ERR_PTR(-EINVAL);
-
-		ret = bootm_open_oftree_uimage(data, &size, &oftree);
-		if (ret)
-			return ERR_PTR(ret);
-
-		data->of_root_node = of_unflatten_dtb(oftree, size);
-
-		free(oftree);
-
-		if (IS_ERR(data->of_root_node)) {
-			data->of_root_node = NULL;
-			pr_err("unable to unflatten devicetree\n");
-			return ERR_PTR(-EINVAL);
-		}
-
 	} else {
 		data->of_root_node = of_dup_root_node_for_boot();
 		if (!data->of_root_node)
@@ -487,8 +423,6 @@ loff_t bootm_get_os_size(struct image_data *data)
 
 	if (data->os)
 		return loadable_get_size(data->os, &size) ?: size;
-	if (image_is_uimage(data))
-		return uimage_get_size(data->os_uimage, uimage_part_num(data->os_part));
 	if (data->os_fit)
 		return data->fit_kernel_size;
 
@@ -701,6 +635,12 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTM_UIMAGE)) {
+		ret = bootm_collect_uimage_loadables(data);
+		if (ret)
+			goto err_out;
+	}
+
 	if (bootm_data->appendroot) {
 		const char *root = NULL;
 		const char *rootopts = NULL;
@@ -862,8 +802,6 @@ void bootm_boot_cleanup(struct image_data *data)
 	release_sdram_region(data->initrd_res);
 	release_sdram_region(data->oftree_res);
 	release_sdram_region(data->tee_res);
-	if (image_is_uimage(data))
-		bootm_close_uimage(data);
 	if (data->os_fit)
 		bootm_close_fit(data);
 	loadable_release(&data->oftree);
diff --git a/common/uimage.c b/common/uimage.c
index 510f91a26bee..cfa9d600c144 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -339,7 +339,8 @@ EXPORT_SYMBOL(uimage_load);
 static void *uimage_buf;
 static size_t uimage_size;
 static size_t uimage_skip;
-static struct resource *uimage_resource;
+static size_t uimage_maxsize;
+static bool uimage_extract_partial;
 
 static long uimage_sdram_flush(void *buf, unsigned long len)
 {
@@ -356,18 +357,14 @@ static long uimage_sdram_flush(void *buf, unsigned long len)
 			return skip_now;
 	}
 
-	if (uimage_size + len > resource_size(uimage_resource)) {
-		resource_size_t start = uimage_resource->start;
-		resource_size_t size = resource_size(uimage_resource) + len;
+	if (!uimage_extract_partial && uimage_size + len > uimage_maxsize)
+		return -ENOSPC;
 
-		release_sdram_region(uimage_resource);
+	/* Buffer full: discard excess data in partial mode */
+	if (uimage_size >= uimage_maxsize)
+		return len + skip_now;
 
-		uimage_resource = request_sdram_region("uimage",
-				start, size, MEMTYPE_LOADER_CODE,
-				MEMATTRS_RWX);
-		if (!uimage_resource)
-			return -ENOMEM;
-	}
+	len = min_t(unsigned long, len, uimage_maxsize - uimage_size);
 
 	if (zero_page_contains((unsigned long)uimage_buf + uimage_size))
 		zero_page_memcpy(uimage_buf + uimage_size, buf, len);
@@ -380,53 +377,34 @@ static long uimage_sdram_flush(void *buf, unsigned long len)
 }
 
 /*
- * Load an uImage to a dynamically allocated sdram resource.
- * the resource must be freed afterwards with release_sdram_region
+ * Load an uImage to a fixed buffer
  *
  * @handle: uImage handle
  * @image_no: image number within the uImage
  * @load_address: address to load the image to
  * @offset: offset in bytes to skip from the beginning of the decompressed data
  *
- * Returns: SDRAM resource on success, NULL on error
+ * Return: number of bytes written on success or negative error code
  */
-struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
-		int image_no, unsigned long load_address, loff_t offset)
+int uimage_load_into_fixed_buf(struct uimage_handle *handle, int image_no,
+			       void *load_address, size_t size,
+			       loff_t offset, bool partial)
 {
 	int ret;
-	ssize_t total_size;
-	size_t size;
-	resource_size_t start = (resource_size_t)load_address;
 
 	uimage_buf = (void *)load_address;
+	uimage_maxsize = size;
 	uimage_size = 0;
 	uimage_skip = offset;
-
-	total_size = uimage_get_size(handle, image_no);
-	if (total_size < 0)
-		return NULL;
-
-	if (offset > total_size)
-		return NULL;
-
-	/* Allocate for the data after offset: size = total_size - offset */
-	size = total_size - offset;
-
-	uimage_resource = request_sdram_region("uimage",
-				start, size, MEMTYPE_LOADER_CODE,
-				MEMATTRS_RWX);
-	if (!uimage_resource)
-		return NULL;
+	uimage_extract_partial = partial;
 
 	ret = uimage_load(handle, image_no, uimage_sdram_flush);
-	if (ret) {
-		release_sdram_region(uimage_resource);
-		return NULL;
-	}
+	if (ret)
+		return ret;
 
-	return uimage_resource;
+	return uimage_size;
 }
-EXPORT_SYMBOL(uimage_load_to_sdram);
+EXPORT_SYMBOL(uimage_load_into_fixed_buf);
 
 void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 		size_t *outsize)
diff --git a/include/bootm-uimage.h b/include/bootm-uimage.h
index aac2beb35e2a..1676f4fc60cf 100644
--- a/include/bootm-uimage.h
+++ b/include/bootm-uimage.h
@@ -11,45 +11,20 @@ struct resource;
 
 #ifdef CONFIG_BOOTM_UIMAGE
 
-int bootm_load_uimage_os(struct image_data *data, unsigned long load_address);
-
-struct resource *bootm_load_uimage_initrd(struct image_data *data,
-					  unsigned long load_address);
-
-int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
-			     struct fdt_header **fdt);
 int bootm_open_uimage(struct image_data *data);
 
-void bootm_close_uimage(struct image_data *data);
+int bootm_collect_uimage_loadables(struct image_data *data);
 
 #else
 
-static inline int bootm_load_uimage_os(struct image_data *data,
-				       unsigned long load_address)
-{
-	return -ENOSYS;
-}
-
-static inline struct resource *
-bootm_load_uimage_initrd(struct image_data *data, unsigned long load_address)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
-static inline int bootm_open_oftree_uimage(struct image_data *data,
-					   size_t *size,
-					   struct fdt_header **fdt)
-{
-	return -ENOSYS;
-}
-
 static inline int bootm_open_uimage(struct image_data *data)
 {
 	return -ENOSYS;
 }
 
-static inline void bootm_close_uimage(struct image_data *data)
+static inline int bootm_collect_uimage_loadables(struct image_data *data)
 {
+	return 0;
 }
 
 #endif
diff --git a/include/bootm.h b/include/bootm.h
index 1c3e06f20f47..3ba8402217e3 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -107,6 +107,9 @@ struct image_data {
 	char *oftree_file;
 	char *oftree_part;
 
+	/* if oftree is an uImage this will be provided */
+	struct uimage_handle *oftree_uimage;
+
 	const void *fit_kernel;
 	unsigned long fit_kernel_size;
 	void *fit_config;
diff --git a/include/image.h b/include/image.h
index b37e04f54bae..fa751de74108 100644
--- a/include/image.h
+++ b/include/image.h
@@ -303,8 +303,9 @@ int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 		long(*flush)(void*, unsigned long));
 void uimage_print_contents(struct uimage_handle *handle);
 ssize_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
-struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
-		int image_no, unsigned long load_address, loff_t offset);
+int uimage_load_into_fixed_buf(struct uimage_handle *handle, int image_no,
+			       void *load_address, size_t size, loff_t offset,
+			       bool partial);
 void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 		size_t *size);
 #define MAX_MULTI_IMAGE_COUNT 16
-- 
2.47.3



