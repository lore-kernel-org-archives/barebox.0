Delivery-date: Mon, 09 Feb 2026 19:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkF-00AdZ9-03
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkD-0006Hu-CS
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p1VFSiqxZb0Wm19IKLiI+aOa79CISP6OIbgE1C76n/o=; b=dhF+6iTsIJo7pDp4aDZBBQAa4F
	i3hmc4YyTh/4XFSRYc0jTulVvIuwyW2Ru/XM8SNAGVn7nQpZGUmPJbWjiZJbZ+BS26DS/ctfJm1e8
	ABk8X0pwgj1IVIf251l5XnS5dOoqjz5BlIEsiqrqoRgcUxb0HacVOtrqOfh8AQPCk2medNLr+lob9
	zsG0RuA3nBCsj+KFSIeCOtMy/QreWIvi2dD2gIpw/RwtVMI4/8TvmJOvtS8v0cmD9axO7aTSvb4cT
	DsQuN2Z8zqJfbQ68nkZ8wZo5yoHprbLv5rRhnk1rDkuOAisNgAMtpgZnADipz9PGHXuWqXzIk0IJJ
	OiN/q+Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjk-0000000FqIg-0GR7;
	Mon, 09 Feb 2026 18:11:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjb-0000000Fq8t-1v6v
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:11:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-0005rB-Va; Mon, 09 Feb 2026 19:11:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVja-004vo6-1B;
	Mon, 09 Feb 2026 19:11:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-2Uta;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:48 +0100
Message-ID: <20260209181138.2023065-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101143_660157_628F7AB3 
X-CRM114-Status: GOOD (  18.43  )
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
Subject: [PATCH v2 09/13] bootm: rename image_data::os/initrd with _uimage suffix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will use the generic unadorned for the incoming loadable support, so
add a _uimage suffix to the uimage-only members to make the association
clearer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/powerpc/lib/ppclinux.c |  2 +-
 common/bootm-uimage.c       | 38 ++++++++++++++++++-------------------
 common/bootm.c              | 12 ++++++------
 include/bootm.h             |  4 ++--
 4 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index eda2539e6125..4e9693cbad60 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -30,7 +30,7 @@ static struct fdt_header *bootm_relocate_fdt(struct image_data *data,
 		 */
 		if (os < (void *)fdt->totalsize) {
 			os = (void *)PAGE_ALIGN((phys_addr_t)os +
-					data->os->header.ih_size);
+					data->os_uimage->header.ih_size);
 			os += fdt->totalsize;
 			if (os < LINUX_TLB1_MAX_ADDR)
 				os = LINUX_TLB1_MAX_ADDR;
diff --git a/common/bootm-uimage.c b/common/bootm-uimage.c
index 609b678e1d4a..b32ed5b0e95f 100644
--- a/common/bootm-uimage.c
+++ b/common/bootm-uimage.c
@@ -29,7 +29,7 @@ int bootm_load_uimage_os(struct image_data *data, unsigned long load_address)
 
 	num = uimage_part_num(data->os_part);
 
-	data->os_res = uimage_load_to_sdram(data->os,
+	data->os_res = uimage_load_to_sdram(data->os_uimage,
 		num, load_address);
 	if (!data->os_res)
 		return -ENOMEM;
@@ -42,21 +42,21 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 	int ret;
 
 	if (strcmp(data->os_file, data->initrd_file)) {
-		data->initrd = uimage_open(data->initrd_file);
-		if (!data->initrd)
+		data->initrd_uimage = uimage_open(data->initrd_file);
+		if (!data->initrd_uimage)
 			return -EINVAL;
 
 		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
-			ret = uimage_verify(data->initrd);
+			ret = uimage_verify(data->initrd_uimage);
 			if (ret) {
 				pr_err("Checking data crc failed with %pe\n",
 					ERR_PTR(ret));
 				return ret;
 			}
 		}
-		uimage_print_contents(data->initrd);
+		uimage_print_contents(data->initrd_uimage);
 	} else {
-		data->initrd = data->os;
+		data->initrd_uimage = data->os_uimage;
 	}
 
 	return 0;
@@ -90,7 +90,7 @@ bootm_load_uimage_initrd(struct image_data *data, unsigned long load_address)
 
 	num = uimage_part_num(data->initrd_part);
 
-	res = uimage_load_to_sdram(data->initrd,
+	res = uimage_load_to_sdram(data->initrd_uimage,
 		num, load_address);
 	if (!res)
 		return ERR_PTR(-ENOMEM);
@@ -110,9 +110,9 @@ int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 	pr_info("Loading devicetree from '%s'@%d\n", oftree, num);
 
 	if (!strcmp(data->os_file, oftree)) {
-		of_handle = data->os;
+		of_handle = data->os_uimage;
 	} else if (!strcmp(data->initrd_file, oftree)) {
-		of_handle = data->initrd;
+		of_handle = data->initrd_uimage;
 	} else {
 		of_handle = uimage_open(oftree);
 		if (!of_handle)
@@ -141,12 +141,12 @@ int bootm_open_uimage(struct image_data *data)
 {
 	int ret;
 
-	data->os = uimage_open(data->os_file);
-	if (!data->os)
+	data->os_uimage = uimage_open(data->os_file);
+	if (!data->os_uimage)
 		return -EINVAL;
 
 	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
-		ret = uimage_verify(data->os);
+		ret = uimage_verify(data->os_uimage);
 		if (ret) {
 			pr_err("Checking data crc failed with %pe\n",
 					ERR_PTR(ret));
@@ -154,23 +154,23 @@ int bootm_open_uimage(struct image_data *data)
 		}
 	}
 
-	uimage_print_contents(data->os);
+	uimage_print_contents(data->os_uimage);
 
-	if (IH_ARCH == IH_ARCH_INVALID || data->os->header.ih_arch != IH_ARCH) {
+	if (IH_ARCH == IH_ARCH_INVALID || data->os_uimage->header.ih_arch != IH_ARCH) {
 		pr_err("Unsupported Architecture 0x%x\n",
-		       data->os->header.ih_arch);
+		       data->os_uimage->header.ih_arch);
 		return -EINVAL;
 	}
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
-		data->os_address = data->os->header.ih_load;
+		data->os_address = data->os_uimage->header.ih_load;
 
 	return 0;
 }
 
 void bootm_close_uimage(struct image_data *data)
 {
-	if (data->initrd && data->initrd != data->os)
-		uimage_close(data->initrd);
-	uimage_close(data->os);
+	if (data->initrd_uimage && data->initrd_uimage != data->os_uimage)
+		uimage_close(data->initrd_uimage);
+	uimage_close(data->os_uimage);
 }
diff --git a/common/bootm.c b/common/bootm.c
index efb2f401ed9b..3c3523644b57 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -33,7 +33,7 @@ static bool uimage_check(struct image_handler *handler,
 			 enum filetype detected_filetype)
 {
 	return detected_filetype == filetype_uimage &&
-		handler->ih_os == data->os->header.ih_os;
+		handler->ih_os == data->os_uimage->header.ih_os;
 }
 
 static bool filetype_check(struct image_handler *handler,
@@ -208,7 +208,7 @@ static int uimage_part_num(const char *partname)
 
 static inline bool image_is_uimage(struct image_data *data)
 {
-	return IS_ENABLED(CONFIG_BOOTM_UIMAGE) && data->os;
+	return IS_ENABLED(CONFIG_BOOTM_UIMAGE) && data->os_uimage;
 }
 
 static bool bootm_get_override(char **oldpath, const char *newpath)
@@ -322,7 +322,7 @@ bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address
 
 	if (type == filetype_uimage) {
 		res = bootm_load_uimage_initrd(data, load_address);
-		if (data->initrd->header.ih_type == IH_TYPE_MULTI)
+		if (data->initrd_uimage->header.ih_type == IH_TYPE_MULTI)
 			initrd_part = data->initrd_part;
 
 	} else if (initrd) {
@@ -495,7 +495,7 @@ int bootm_get_os_size(struct image_data *data)
 	int ret;
 
 	if (image_is_uimage(data))
-		return uimage_get_size(data->os, uimage_part_num(data->os_part));
+		return uimage_get_size(data->os_uimage, uimage_part_num(data->os_part));
 	if (data->os_fit)
 		return data->fit_kernel_size;
 	if (!data->os_file)
@@ -741,7 +741,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	pr_info("\nLoading %s '%s'", file_type_to_string(data->kernel_type),
 		data->os_file);
 	if (data->kernel_type == filetype_uimage &&
-			data->os->header.ih_type == IH_TYPE_MULTI)
+			data->os_uimage->header.ih_type == IH_TYPE_MULTI)
 		pr_info(", multifile image %d", uimage_part_num(data->os_part));
 	pr_info("\n");
 
@@ -755,7 +755,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		pr_err("no image handler found for image type %s\n",
 		       file_type_to_string(data->kernel_type));
 		if (data->kernel_type == filetype_uimage)
-			pr_err("and OS type: %d\n", data->os->header.ih_os);
+			pr_err("and OS type: %d\n", data->os_uimage->header.ih_os);
 		ret = -ENODEV;
 		goto err_out;
 	}
diff --git a/include/bootm.h b/include/bootm.h
index bdabba23f2b9..ef979807505d 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -59,7 +59,7 @@ struct image_data {
 	struct resource *os_res;
 
 	/* if os is an uImage this will be provided */
-	struct uimage_handle *os;
+	struct uimage_handle *os_uimage;
 
 	/* if os is a FIT image this will be provided */
 	struct fit_handle *os_fit;
@@ -84,7 +84,7 @@ struct image_data {
 	struct resource *initrd_res;
 
 	/* if initrd is an uImage this will be provided */
-	struct uimage_handle *initrd;
+	struct uimage_handle *initrd_uimage;
 	char *initrd_part;
 
 	/* otherwise only the filename will be provided */
-- 
2.47.3



