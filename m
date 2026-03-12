Delivery-date: Thu, 12 Mar 2026 15:45:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIJ-00ArQo-2b
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIJ-00051O-SH
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kovyw10dlePBZ66KqYN8BfI05pxIV8ocqCHmG9T3cCk=; b=d74LI+FQvT0Id0A7dJpZf39z9C
	nmTMIBnNnq2NTNwEGUjN5nx389mUSwylHYTkcGxL8jXS/mxalliyTWXr4vkty6c0xETEbDXRbdkEc
	eUDbmx+C25Z5sdPuk1l9Q1DEt1wnpgqJBVfpRsExi0jWz5sVZpSjsUqVZBqXIa5irGLUc13TK7Qrd
	p92gHFnKR5bk2X0+HkNAp06hFKvOCtrrIclpAoAZXxdnj1NC0bhrHDwtaTw2Q/nMeAUkPs1IdGMP6
	DQ5NBxN/YWEhTYUmSggmexKWFABuKOUNlRR1nNCgGHTM52Zw0Cc57XbxczhLkjRRbjpbfi9cfKrAH
	rqQwKuJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHl-0000000EEtE-3Eeh;
	Thu, 12 Mar 2026 14:45:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEmE-3jXS
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004TT-7D; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052O8-1w;
	Thu, 12 Mar 2026 15:45:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-3aWw;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:49 +0100
Message-ID: <20260312144505.2159816-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074507_943214_D2C57ECB 
X-CRM114-Status: GOOD (  18.07  )
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
Subject: [PATCH 06/16] uimage: add offset parameter to uimage_load
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The loadable API allows users to specify an offset at which reading
should start. In preparation for wrapping the uImage loading as
loadable, extend uimage_load to allow specifying a start offset.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm-uimage.c |  4 ++--
 common/uimage.c       | 39 ++++++++++++++++++++++++++++++++++-----
 include/image.h       |  2 +-
 3 files changed, 37 insertions(+), 8 deletions(-)

diff --git a/common/bootm-uimage.c b/common/bootm-uimage.c
index b32ed5b0e95f..a1cb39d3ecd8 100644
--- a/common/bootm-uimage.c
+++ b/common/bootm-uimage.c
@@ -30,7 +30,7 @@ int bootm_load_uimage_os(struct image_data *data, unsigned long load_address)
 	num = uimage_part_num(data->os_part);
 
 	data->os_res = uimage_load_to_sdram(data->os_uimage,
-		num, load_address);
+		num, load_address, 0);
 	if (!data->os_res)
 		return -ENOMEM;
 
@@ -91,7 +91,7 @@ bootm_load_uimage_initrd(struct image_data *data, unsigned long load_address)
 	num = uimage_part_num(data->initrd_part);
 
 	res = uimage_load_to_sdram(data->initrd_uimage,
-		num, load_address);
+		num, load_address, 0);
 	if (!res)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/common/uimage.c b/common/uimage.c
index d34205572510..510f91a26bee 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -338,10 +338,24 @@ EXPORT_SYMBOL(uimage_load);
 
 static void *uimage_buf;
 static size_t uimage_size;
+static size_t uimage_skip;
 static struct resource *uimage_resource;
 
 static long uimage_sdram_flush(void *buf, unsigned long len)
 {
+	unsigned long skip_now = 0;
+
+	/* Skip the first uimage_skip bytes of decompressed data */
+	if (uimage_skip > 0) {
+		skip_now = min_t(unsigned long, uimage_skip, len);
+		buf += skip_now;
+		len -= skip_now;
+		uimage_skip -= skip_now;
+
+		if (len == 0)
+			return skip_now;
+	}
+
 	if (uimage_size + len > resource_size(uimage_resource)) {
 		resource_size_t start = uimage_resource->start;
 		resource_size_t size = resource_size(uimage_resource) + len;
@@ -362,27 +376,42 @@ static long uimage_sdram_flush(void *buf, unsigned long len)
 
 	uimage_size += len;
 
-	return len;
+	return len + skip_now;
 }
 
 /*
  * Load an uImage to a dynamically allocated sdram resource.
  * the resource must be freed afterwards with release_sdram_region
+ *
+ * @handle: uImage handle
+ * @image_no: image number within the uImage
+ * @load_address: address to load the image to
+ * @offset: offset in bytes to skip from the beginning of the decompressed data
+ *
+ * Returns: SDRAM resource on success, NULL on error
  */
 struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
-		int image_no, unsigned long load_address)
+		int image_no, unsigned long load_address, loff_t offset)
 {
 	int ret;
-	ssize_t size;
+	ssize_t total_size;
+	size_t size;
 	resource_size_t start = (resource_size_t)load_address;
 
 	uimage_buf = (void *)load_address;
 	uimage_size = 0;
+	uimage_skip = offset;
 
-	size = uimage_get_size(handle, image_no);
-	if (size < 0)
+	total_size = uimage_get_size(handle, image_no);
+	if (total_size < 0)
 		return NULL;
 
+	if (offset > total_size)
+		return NULL;
+
+	/* Allocate for the data after offset: size = total_size - offset */
+	size = total_size - offset;
+
 	uimage_resource = request_sdram_region("uimage",
 				start, size, MEMTYPE_LOADER_CODE,
 				MEMATTRS_RWX);
diff --git a/include/image.h b/include/image.h
index 769523d6fcaf..b37e04f54bae 100644
--- a/include/image.h
+++ b/include/image.h
@@ -304,7 +304,7 @@ int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 void uimage_print_contents(struct uimage_handle *handle);
 ssize_t uimage_get_size(struct uimage_handle *handle, unsigned int image_no);
 struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
-		int image_no, unsigned long load_address);
+		int image_no, unsigned long load_address, loff_t offset);
 void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 		size_t *size);
 #define MAX_MULTI_IMAGE_COUNT 16
-- 
2.47.3



