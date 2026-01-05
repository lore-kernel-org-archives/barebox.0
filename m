Delivery-date: Mon, 05 Jan 2026 09:07:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfd0-001S45-2Y
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcy-0008Ca-55
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yq1+jhG+uYMSaRzdhEknor34zgeQy3Tj4Blu69+Nxzo=; b=N521OzaFHQNT4AlNzrVQTIUf+e
	XnkZVNR99Aoa+eEe0JxbejM5zAQMkBhOhrHvRPfSEsnMchFCQUqQ6cxPmqphF6XJB2EHAEF285ZO4
	doNtLmLydg92577+WO2lKucgNcq1qzDn8LojrQD/PWHhltjTV9+ezaQlHDJqUUM8LQqvHenMJNYcb
	rC+hAqHde+ovi9l28LLhY0AjyQG8QkhfzazcjXqyUZmvos1rJVNvOupx2K3orlzkWSvcpz+j+vyZB
	fxgS2qNcGKvPdRBFJ8QliFpEf9FjrZXHKGnazKni35C1kXDyS5Isgeoiiv7VtDmXhydEaCZMy+XvT
	hgmmWrHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcF-0000000Ax2k-2Qqq;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzK-19O7
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc8-0007f0-1l; Mon, 05 Jan 2026 09:06:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:35 +0100
Message-ID: <20260105080653.3240497-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_613548_39F351DE 
X-CRM114-Status: GOOD (  23.80  )
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
Subject: [PATCH 03/10] bootm: uimage: split support into dedicated file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Interleaving the uImage handling with the generic bootm code makes the
generic code harder to follow. Let's factor it out into a dedicated
file.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/Makefile        |   1 +
 common/bootm-uimage.c  | 176 +++++++++++++++++++++++++++++++++++++++++
 common/bootm.c         | 143 +++------------------------------
 include/bootm-uimage.h |  57 +++++++++++++
 4 files changed, 243 insertions(+), 134 deletions(-)
 create mode 100644 common/bootm-uimage.c
 create mode 100644 include/bootm-uimage.h

diff --git a/common/Makefile b/common/Makefile
index 45bd00758e4a..751f3ba20293 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -70,6 +70,7 @@ obj-$(CONFIG_TLV)		+= tlv/
 obj-$(CONFIG_RATP)		+= ratp/
 obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= uimage_types.o uimage.o
+obj-$(CONFIG_BOOTM_UIMAGE)	+= bootm-uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
 obj-$(CONFIG_BOOTM_FITIMAGE)	+= bootm-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
diff --git a/common/bootm-uimage.c b/common/bootm-uimage.c
new file mode 100644
index 000000000000..609b678e1d4a
--- /dev/null
+++ b/common/bootm-uimage.c
@@ -0,0 +1,176 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <bootm.h>
+#include <bootm-uimage.h>
+#include <linux/kstrtox.h>
+
+static int uimage_part_num(const char *partname)
+{
+	if (!partname)
+		return 0;
+	return simple_strtoul(partname, NULL, 0);
+}
+
+/*
+ * bootm_load_uimage_os() - load uImage OS to RAM
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
+int bootm_load_uimage_os(struct image_data *data, unsigned long load_address)
+{
+	int num;
+
+	num = uimage_part_num(data->os_part);
+
+	data->os_res = uimage_load_to_sdram(data->os,
+		num, load_address);
+	if (!data->os_res)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static int bootm_open_initrd_uimage(struct image_data *data)
+{
+	int ret;
+
+	if (strcmp(data->os_file, data->initrd_file)) {
+		data->initrd = uimage_open(data->initrd_file);
+		if (!data->initrd)
+			return -EINVAL;
+
+		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
+			ret = uimage_verify(data->initrd);
+			if (ret) {
+				pr_err("Checking data crc failed with %pe\n",
+					ERR_PTR(ret));
+				return ret;
+			}
+		}
+		uimage_print_contents(data->initrd);
+	} else {
+		data->initrd = data->os;
+	}
+
+	return 0;
+}
+
+/*
+ * bootm_load_uimage_initrd() - load initrd from uimage to RAM
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
+struct resource *
+bootm_load_uimage_initrd(struct image_data *data, unsigned long load_address)
+{
+	struct resource *res;
+	int ret;
+
+	int num;
+	ret = bootm_open_initrd_uimage(data);
+	if (ret) {
+		pr_err("loading initrd failed with %pe\n", ERR_PTR(ret));
+		return ERR_PTR(ret);
+	}
+
+	num = uimage_part_num(data->initrd_part);
+
+	res = uimage_load_to_sdram(data->initrd,
+		num, load_address);
+	if (!res)
+		return ERR_PTR(-ENOMEM);
+
+	return res;
+}
+
+int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
+			     struct fdt_header **fdt)
+{
+	enum filetype ft;
+	const char *oftree = data->oftree_file;
+	int num = uimage_part_num(data->oftree_part);
+	struct uimage_handle *of_handle;
+	int release = 0;
+
+	pr_info("Loading devicetree from '%s'@%d\n", oftree, num);
+
+	if (!strcmp(data->os_file, oftree)) {
+		of_handle = data->os;
+	} else if (!strcmp(data->initrd_file, oftree)) {
+		of_handle = data->initrd;
+	} else {
+		of_handle = uimage_open(oftree);
+		if (!of_handle)
+			return -ENODEV;
+		uimage_print_contents(of_handle);
+		release = 1;
+	}
+
+	*fdt = uimage_load_to_buf(of_handle, num, size);
+
+	if (release)
+		uimage_close(of_handle);
+
+	ft = file_detect_type(*fdt, *size);
+	if (ft != filetype_oftree) {
+		pr_err("%s is not an oftree but %s\n",
+			data->oftree_file, file_type_to_string(ft));
+		free(*fdt);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+int bootm_open_uimage(struct image_data *data)
+{
+	int ret;
+
+	data->os = uimage_open(data->os_file);
+	if (!data->os)
+		return -EINVAL;
+
+	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
+		ret = uimage_verify(data->os);
+		if (ret) {
+			pr_err("Checking data crc failed with %pe\n",
+					ERR_PTR(ret));
+			return ret;
+		}
+	}
+
+	uimage_print_contents(data->os);
+
+	if (IH_ARCH == IH_ARCH_INVALID || data->os->header.ih_arch != IH_ARCH) {
+		pr_err("Unsupported Architecture 0x%x\n",
+		       data->os->header.ih_arch);
+		return -EINVAL;
+	}
+
+	if (data->os_address == UIMAGE_SOME_ADDRESS)
+		data->os_address = data->os->header.ih_load;
+
+	return 0;
+}
+
+void bootm_close_uimage(struct image_data *data)
+{
+	if (data->initrd && data->initrd != data->os)
+		uimage_close(data->initrd);
+	uimage_close(data->os);
+}
diff --git a/common/bootm.c b/common/bootm.c
index dced46f3e067..f1beac52ec15 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -13,6 +13,7 @@
 #include <libfile.h>
 #include <bootm-fit.h>
 #include <image-fit.h>
+#include <bootm-uimage.h>
 #include <globalvar.h>
 #include <init.h>
 #include <environment.h>
@@ -250,18 +251,8 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (data->os_fit)
 		return bootm_load_fit_os(data, load_address);
 
-	if (image_is_uimage(data)) {
-		int num;
-
-		num = uimage_part_num(data->os_part);
-
-		data->os_res = uimage_load_to_sdram(data->os,
-			num, load_address);
-		if (!data->os_res)
-			return -ENOMEM;
-
-		return 0;
-	}
+	if (image_is_uimage(data))
+		return bootm_load_uimage_os(data, load_address);
 
 	if (!data->os_file)
 		return -EINVAL;
@@ -273,34 +264,6 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	return 0;
 }
 
-static int bootm_open_initrd_uimage(struct image_data *data)
-{
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_BOOTM_UIMAGE))
-		return -ENOSYS;
-
-	if (strcmp(data->os_file, data->initrd_file)) {
-		data->initrd = uimage_open(data->initrd_file);
-		if (!data->initrd)
-			return -EINVAL;
-
-		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
-			ret = uimage_verify(data->initrd);
-			if (ret) {
-				pr_err("Checking data crc failed with %pe\n",
-					ERR_PTR(ret));
-				return ret;
-			}
-		}
-		uimage_print_contents(data->initrd);
-	} else {
-		data->initrd = data->os;
-	}
-
-	return 0;
-}
-
 /*
  * bootm_load_initrd() - load initrd to RAM
  *
@@ -351,18 +314,9 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	}
 
 	if (type == filetype_uimage) {
-		int num;
-		ret = bootm_open_initrd_uimage(data);
-		if (ret) {
-			pr_err("loading initrd failed with %pe\n", ERR_PTR(ret));
-			return ERR_PTR(ret);
-		}
-
-		num = uimage_part_num(data->initrd_part);
-
-		res = uimage_load_to_sdram(data->initrd, num, load_address);
-		if (!res)
-			return ERR_PTR(-ENOMEM);
+		res = bootm_load_uimage_initrd(data, load_address);
+		if (IS_ERR(res))
+			return res;
 
 		goto done;
 	}
@@ -386,48 +340,6 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	return data->initrd_res;
 }
 
-static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
-				    struct fdt_header **fdt)
-{
-	enum filetype ft;
-	const char *oftree = data->oftree_file;
-	int num = uimage_part_num(data->oftree_part);
-	struct uimage_handle *of_handle;
-	int release = 0;
-
-	pr_info("Loading devicetree from '%s'@%d\n", oftree, num);
-
-	if (!IS_ENABLED(CONFIG_BOOTM_OFTREE_UIMAGE))
-		return -EINVAL;
-
-	if (!strcmp(data->os_file, oftree)) {
-		of_handle = data->os;
-	} else if (!strcmp(data->initrd_file, oftree)) {
-		of_handle = data->initrd;
-	} else {
-		of_handle = uimage_open(oftree);
-		if (!of_handle)
-			return -ENODEV;
-		uimage_print_contents(of_handle);
-		release = 1;
-	}
-
-	*fdt = uimage_load_to_buf(of_handle, num, size);
-
-	if (release)
-		uimage_close(of_handle);
-
-	ft = file_detect_type(*fdt, *size);
-	if (ft != filetype_oftree) {
-		pr_err("%s is not an oftree but %s\n",
-			data->oftree_file, file_type_to_string(ft));
-		free(*fdt);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 /*
  * bootm_get_devicetree() - get devicetree
  *
@@ -585,40 +497,6 @@ int bootm_get_os_size(struct image_data *data)
 	return s.st_size;
 }
 
-static int bootm_open_os_uimage(struct image_data *data)
-{
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_BOOTM_UIMAGE))
-		return -ENOSYS;
-
-	data->os = uimage_open(data->os_file);
-	if (!data->os)
-		return -EINVAL;
-
-	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
-		ret = uimage_verify(data->os);
-		if (ret) {
-			pr_err("Checking data crc failed with %pe\n",
-					ERR_PTR(ret));
-			return ret;
-		}
-	}
-
-	uimage_print_contents(data->os);
-
-	if (IH_ARCH == IH_ARCH_INVALID || data->os->header.ih_arch != IH_ARCH) {
-		pr_err("Unsupported Architecture 0x%x\n",
-		       data->os->header.ih_arch);
-		return -EINVAL;
-	}
-
-	if (data->os_address == UIMAGE_SOME_ADDRESS)
-		data->os_address = data->os->header.ih_load;
-
-	return 0;
-}
-
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
@@ -727,7 +605,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		os_type_str = "FIT";
 		break;
 	case filetype_uimage:
-		ret = bootm_open_os_uimage(data);
+		ret = bootm_open_uimage(data);
 		break;
 	default:
 		ret = 0;
@@ -897,11 +775,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 		release_sdram_region(data->oftree_res);
 	if (data->tee_res)
 		release_sdram_region(data->tee_res);
-	if (image_is_uimage(data)) {
-		if (data->initrd && data->initrd != data->os)
-			uimage_close(data->initrd);
-		uimage_close(data->os);
-	}
+	if (image_is_uimage(data))
+		bootm_close_uimage(data);
 	if (data->os_fit)
 		bootm_close_fit(data);
 	if (data->of_root_node)
diff --git a/include/bootm-uimage.h b/include/bootm-uimage.h
new file mode 100644
index 000000000000..aac2beb35e2a
--- /dev/null
+++ b/include/bootm-uimage.h
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __BOOTM_UIMAGE_H
+#define __BOOTM_UIMAGE_H
+
+#include <linux/types.h>
+#include <linux/err.h>
+
+struct image_data;
+struct fdt_header;
+struct resource;
+
+#ifdef CONFIG_BOOTM_UIMAGE
+
+int bootm_load_uimage_os(struct image_data *data, unsigned long load_address);
+
+struct resource *bootm_load_uimage_initrd(struct image_data *data,
+					  unsigned long load_address);
+
+int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
+			     struct fdt_header **fdt);
+int bootm_open_uimage(struct image_data *data);
+
+void bootm_close_uimage(struct image_data *data);
+
+#else
+
+static inline int bootm_load_uimage_os(struct image_data *data,
+				       unsigned long load_address)
+{
+	return -ENOSYS;
+}
+
+static inline struct resource *
+bootm_load_uimage_initrd(struct image_data *data, unsigned long load_address)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline int bootm_open_oftree_uimage(struct image_data *data,
+					   size_t *size,
+					   struct fdt_header **fdt)
+{
+	return -ENOSYS;
+}
+
+static inline int bootm_open_uimage(struct image_data *data)
+{
+	return -ENOSYS;
+}
+
+static inline void bootm_close_uimage(struct image_data *data)
+{
+}
+
+#endif
+
+#endif
-- 
2.47.3



