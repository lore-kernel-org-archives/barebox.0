Delivery-date: Mon, 05 Jan 2026 09:07:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcx-001S2c-0L
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcw-0008Ax-1e
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kcx478IXOmm0rQ6cR40b/GyRurBuUk1TLVtXxmXZH8I=; b=B2PvrfRaaAUGRkhB96SAyD0LEv
	dbJvZbGRaEIlXeP6D6DaTDdnE3QyHBYYvjqxyLYDXRfzrdqAbCWsedDsLM9UvRNOChhyc4s+jxc9U
	FW5QH6RAAiWfZbmLqUBF/XoPM25W7IIdVUEsI+V2ZTOIABn/8YIwKIIGhoRGvSfT8v8FTKcjnulHS
	jQUrz4tGGjuf3xeeuikfwF11VzBjc4QpFQLRdHT/niD8MpBek1mAvN/O/xNk8gYyj8K6mVg8S2wxA
	zlbN6URW1OlGoZrTl1GxIe2xOm3wAgZS7U1ugdIvae+AMBog4IwfK4PKfaQypW6cb63DacMJu0iEE
	e6lBXqFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcG-0000000Ax2w-0dni;
	Mon, 05 Jan 2026 08:07:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzL-20DF
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc8-0007f0-Hw; Mon, 05 Jan 2026 09:06:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:36 +0100
Message-ID: <20260105080653.3240497-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_511954_267E3E1C 
X-CRM114-Status: GOOD (  14.86  )
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
Subject: [PATCH 04/10] filetype: introduce filetype_fit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's not possible to differentiate a flattened device tree from a FIT
image without parsing it for top-level /images and /configurations node.

We thus have some checks that check for filetype_oftree instead of
filetype_fit, which is confusing. Let's introduce filetype_fit and
handle it at the boot layer to allow for slightly more readable code.

This will pay off some more when we start making use of it in a later
commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm.c     |  7 +++----
 common/filetype.c  |  1 +
 common/image-fit.c | 11 ++++++++++-
 include/filetype.h |  7 +++++++
 4 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index f1beac52ec15..1554a8f7f3f9 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -571,7 +571,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (size < PAGE_SIZE)
 		goto err_out;
 
-	os_type = data->os_type = file_detect_type(data->os_header, PAGE_SIZE);
+	os_type = data->os_type = file_detect_boot_image_type(data->os_header, PAGE_SIZE);
 
 	if (!data->force && os_type == filetype_unknown) {
 		pr_err("Unknown OS filetype (try -f)\n");
@@ -589,7 +589,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		data->oftree_file = NULL;
 		data->initrd_file = NULL;
 		data->tee_file = NULL;
-		if (os_type != filetype_oftree) {
+		if (os_type != filetype_fit) {
 			pr_err("Signed boot and image is no FIT image, aborting\n");
 			ret = -EINVAL;
 			goto err_out;
@@ -599,10 +599,9 @@ int bootm_boot(struct bootm_data *bootm_data)
 	os_type_str = file_type_to_short_string(os_type);
 
 	switch (os_type) {
-	case filetype_oftree:
+	case filetype_fit:
 		ret = bootm_open_fit(data);
 		os_type = file_detect_type(data->fit_kernel, data->fit_kernel_size);
-		os_type_str = "FIT";
 		break;
 	case filetype_uimage:
 		ret = bootm_open_uimage(data);
diff --git a/common/filetype.c b/common/filetype.c
index 9b348377f222..80b7e1d98ce0 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -42,6 +42,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_gzip] = { "GZIP compressed", "gzip" },
 	[filetype_bzip2] = { "BZIP2 compressed", "bzip2" },
 	[filetype_oftree] = { "open firmware Device Tree flattened Binary", "dtb" },
+	[filetype_fit] = { "Flattened Image Tree", "FIT" },
 	[filetype_aimage] = { "android boot image", "android" },
 	[filetype_sh] = { "bourne SHell", "sh" },
 	[filetype_mips_barebox] = { "MIPS barebox image", "mips-barebox" },
diff --git a/common/image-fit.c b/common/image-fit.c
index 5c3a3e8f230f..d8fa5a4c8a8b 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -1081,10 +1081,19 @@ static int do_bootm_fit(struct image_data *data)
 	return -EINVAL;
 }
 
+static bool fitimage_check(struct image_handler *handler,
+			   struct image_data *data,
+			   enum filetype detected_filetype)
+{
+	return detected_filetype == filetype_oftree ||
+		detected_filetype == filetype_fit;
+}
+
 static struct image_handler fit_handler = {
 	.name = "FIT image",
 	.bootm = do_bootm_fit,
-	.filetype = filetype_oftree,
+	.filetype = filetype_fit,
+	.check_image = fitimage_check,
 };
 
 static int bootm_fit_register(void)
diff --git a/include/filetype.h b/include/filetype.h
index 0e19e46c513d..d404e0cf3c6a 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -24,6 +24,7 @@ enum filetype {
 	filetype_gzip,
 	filetype_bzip2,
 	filetype_oftree,
+	filetype_fit,
 	filetype_aimage,
 	filetype_sh,
 	filetype_mips_barebox,
@@ -108,6 +109,12 @@ static inline bool file_is_compressed_file(enum filetype ft)
 	}
 }
 
+static inline enum filetype file_detect_boot_image_type(const void *_buf, size_t bufsize)
+{
+	enum filetype ft = file_detect_type(_buf, bufsize);
+	return ft == filetype_oftree ? filetype_fit : ft;
+}
+
 #define ARM_HEAD_SIZE			0x30
 #define ARM_HEAD_MAGICWORD_OFFSET	0x20
 #define ARM_HEAD_SIZE_OFFSET		0x2C
-- 
2.47.3



