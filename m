Delivery-date: Mon, 09 Feb 2026 19:12:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkC-00AdXk-0w
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:12:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkA-0006Gl-TV
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:12:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=psapilS0p7ociREgCvikLRgRNrP/MrsL4Km4mbj8X8o=; b=f0GkVqqa8N6xjvLoB3W6/lP2cO
	zggPMsvOYA5/g3oyzUJ2ZUf00LheSZterQWYRwiZR4rdBgQDlzlFMpmIlYkvFk7oslHuoEcXZ4m/v
	Pa+w+uruMGgII3FyqYLOZmOeCIbRYi50pW5OJW2E57SmvVbxJ4mZSwQeHCnMOzLVlm5Mbn5zhhxVQ
	CSftne5bLM21ZP1INeFixEq7NAcqcdn19YUYx/WIGhpCus5GrBQk3ykQZm50RtYZMNcTUFMRghN2f
	XLB38Hv+lQsEpqoeMD/Ym05qB4ckGXw+xPUAVKUwanMEqSsEKmwSBChE+k1hNvSZDBhb/yfP4A48J
	Jz3daphA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjh-0000000FqER-20hG;
	Mon, 09 Feb 2026 18:11:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjb-0000000Fq8o-16fi
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:11:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-0005qW-Mp; Mon, 09 Feb 2026 19:11:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVja-004vnq-0Y;
	Mon, 09 Feb 2026 19:11:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-1flH;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:44 +0100
Message-ID: <20260209181138.2023065-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101143_305630_64786F75 
X-CRM114-Status: GOOD (  19.35  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/13] bootm: store separate image_type and kernel_type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For FIT images, image_data::os_type is either the container file type or
the kernel file type, depending on when we are looking.

This makes the code harder to refactor, so let's split it into two
separate image_type and kernel_type members.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c     |  3 +--
 common/bootm-fit.c | 15 +++++++++++++++
 common/bootm.c     | 29 +++++++++++++++--------------
 efi/loader/bootm.c |  2 +-
 include/bootm.h    |  6 +++++-
 5 files changed, 37 insertions(+), 18 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index 67f31b793517..4f6ccf95f85c 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -32,8 +32,7 @@ static unsigned long get_kernel_address(unsigned long os_address,
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 {
-	const void *kernel_header =
-			data->os_fit ? data->fit_kernel : data->os_header;
+	const void *kernel_header = data->os_header;
 	const struct resource *os_res;
 	unsigned long text_offset, image_size, kernel;
 	unsigned long image_end;
diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index a0e808e31b40..5bfd8ac61d3f 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -5,6 +5,7 @@
 #include <bootm-fit.h>
 #include <memory.h>
 #include <zero_page.h>
+#include <filetype.h>
 
 /*
  * bootm_load_fit_os() - load OS from FIT to RAM
@@ -114,6 +115,17 @@ static bool bootm_fit_config_valid(struct fit_handle *fit,
 	return !!fit_has_image(fit, config, "kernel");
 }
 
+static enum filetype bootm_fit_update_os_header(struct image_data *data)
+{
+	if (data->fit_kernel_size < PAGE_SIZE)
+		return filetype_unknown;
+
+	free(data->os_header);
+	data->os_header = xmemdup(data->fit_kernel, PAGE_SIZE);
+
+	return file_detect_type(data->os_header, PAGE_SIZE);
+}
+
 int bootm_open_fit(struct image_data *data)
 {
 	struct fit_handle *fit;
@@ -148,6 +160,9 @@ int bootm_open_fit(struct image_data *data)
 			     &data->fit_kernel, &data->fit_kernel_size);
 	if (ret)
 		return ret;
+
+	data->kernel_type = bootm_fit_update_os_header(data);
+
 	if (data->os_address == UIMAGE_SOME_ADDRESS) {
 		ret = fit_get_image_address(data->os_fit,
 					    data->fit_config,
diff --git a/common/bootm.c b/common/bootm.c
index 505b670a4a5e..efb2f401ed9b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -550,9 +550,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_data *data;
 	struct image_handler *handler;
 	int ret;
-	enum filetype os_type;
 	size_t size;
-	const char *os_type_str;
+	const char *image_type_str;
 
 	if (!bootm_data->os_file) {
 		pr_err("no image given\n");
@@ -583,9 +582,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (size < PAGE_SIZE)
 		goto err_out;
 
-	os_type = data->os_type = file_detect_boot_image_type(data->os_header, PAGE_SIZE);
+	data->image_type = file_detect_boot_image_type(data->os_header, PAGE_SIZE);
 
-	if (!data->force && os_type == filetype_unknown) {
+	if (!data->force && data->image_type == filetype_unknown) {
 		pr_err("Unknown OS filetype (try -f)\n");
 		ret = -EINVAL;
 		goto err_out;
@@ -601,19 +600,21 @@ int bootm_boot(struct bootm_data *bootm_data)
 		data->oftree_file = NULL;
 		data->initrd_file = NULL;
 		data->tee_file = NULL;
-		if (os_type != filetype_fit) {
+		if (data->image_type != filetype_fit) {
 			pr_err("Signed boot and image is no FIT image, aborting\n");
 			ret = -EINVAL;
 			goto err_out;
 		}
 	}
 
-	os_type_str = file_type_to_short_string(os_type);
+	image_type_str = file_type_to_short_string(data->image_type);
 
-	switch (os_type) {
+	/* May be updated by below container-specific handlers */
+	data->kernel_type = data->image_type;
+
+	switch (data->image_type) {
 	case filetype_fit:
 		ret = bootm_open_fit(data);
-		os_type = file_detect_type(data->fit_kernel, data->fit_kernel_size);
 		break;
 	case filetype_uimage:
 		ret = bootm_open_uimage(data);
@@ -624,7 +625,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (ret) {
-		pr_err("Loading %s image failed with: %pe\n", os_type_str, ERR_PTR(ret));
+		pr_err("Loading %s image failed with: %pe\n", image_type_str, ERR_PTR(ret));
 		goto err_out;
 	}
 
@@ -737,9 +738,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(hostname_bootarg);
 	}
 
-	pr_info("\nLoading %s '%s'", file_type_to_string(os_type),
+	pr_info("\nLoading %s '%s'", file_type_to_string(data->kernel_type),
 		data->os_file);
-	if (os_type == filetype_uimage &&
+	if (data->kernel_type == filetype_uimage &&
 			data->os->header.ih_type == IH_TYPE_MULTI)
 		pr_info(", multifile image %d", uimage_part_num(data->os_part));
 	pr_info("\n");
@@ -749,11 +750,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (data->os_entry == UIMAGE_SOME_ADDRESS)
 		data->os_entry = 0;
 
-	handler = bootm_find_handler(os_type, data);
+	handler = bootm_find_handler(data->kernel_type, data);
 	if (!handler) {
 		pr_err("no image handler found for image type %s\n",
-		       file_type_to_string(os_type));
-		if (os_type == filetype_uimage)
+		       file_type_to_string(data->kernel_type));
+		if (data->kernel_type == filetype_uimage)
 			pr_err("and OS type: %d\n", data->os->header.ih_os);
 		ret = -ENODEV;
 		goto err_out;
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 498f4dce6b07..97621d8a05e5 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -215,7 +215,7 @@ static int efi_loader_bootm(struct image_data *data)
 	if (IS_ERR(os_res))
 		return PTR_ERR(os_res);
 
-	if (filetype_is_linux_efi_image(data->os_type)) {
+	if (filetype_is_linux_efi_image(data->kernel_type)) {
 		const char *options;
 
 		options = linux_bootargs_get();
diff --git a/include/bootm.h b/include/bootm.h
index 1c3bb8899b38..bdabba23f2b9 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -111,7 +111,11 @@ struct image_data {
 	char *tee_file;
 	struct resource *tee_res;
 
-	enum filetype os_type;
+	/* Type of OS image, e.g. filetype_fit or the same as kernel_type */
+	enum filetype image_type;
+	/* Type of kernel image that's going to be booted */
+	enum filetype kernel_type;
+
 	enum bootm_verify verify;
 	int verbose;
 	int force;
-- 
2.47.3



