Delivery-date: Wed, 20 Aug 2025 12:30:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5O-002aT5-1u
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5N-0007eS-2x
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xv2is3hgtvEAQo2ESbEpRsPmmpTXTuo86/WIiGeguKc=; b=zp+dvURoJ8aKIqCkeJ0ZuparQd
	ld6/U2XJrLceRW/dTXrepQZNYthfBM2RsH1AOFPEiH1AUmi5OTeOpWZHnEF1UdnlAV6MSimZ90rUf
	ZcBJp2+ra+yKg6wVF11B6FkjpdETQTTVuOki71MwU8/wtr24ei6W+yN+3a7UlQML0jiTvwEdnucrd
	FORhyaUlg2QhhrcxsmYjDEbpB3AyqbUHgUL0atM20N6eBA4u2AxgCX3prhDK1oRT+nFyutrau3QX7
	e449IBq3vpbS/ARdcWNViHYe2KcD46D04mjD3bZLliKHS7VcBVV2oBzf+OsBvLOyuPXSWTt3t8tcn
	44jV4phA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4m-0000000D9ME-0R3S;
	Wed, 20 Aug 2025 10:29:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQz-0000000D0r5-12De
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=xv2is3hgtvEAQo2ESbEpRsPmmpTXTuo86/WIiGeguKc=; b=MGuUs0NypnJnbolUJxVrMWFtMY
	NxA06ZsmAX/KDEIxf5ZDOFLyQJ2QLA9EYM6XdaY90NHH8tWTshfFHV6dcnv2sqHe7Zj3dpyiDv14W
	evG4PTTUxB5CbhaFUQ7TKSm4GUwRYcPDjzglOUWx3vvi+rcapsEffkX6LBUduJKh7O3Oj3rnYU2GD
	N5IhjATeMLn7H+Z98q7jSEHGq+TCbrs3owqyl37dcWM0F6edqD9Uj6MDyJJ9C6hDvZv2ebbOGM2f4
	NuSWxTsnDQoxONhOW92gA0162utJ6Vk88bgMbJ47y4R40gX8HTSK72bppwIKk5FZUO0Llcg56ssHK
	XQIDKdvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQw-00000000HWg-0JY8
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-Nd; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-12-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104842_248675_A29A8BC6 
X-CRM114-Status: GOOD (  13.49  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v6 12/12] FIT: add support to cache opened fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cache the FIT image fit_open() calls to avoid loading the same FIT image
twice. This is very useful if the same FIT image is used to provide the
base devicetree, kernel and initrd as well as devicetree overlays.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 32 ++++++++++++++++++++++++++++++++
 include/image-fit.h |  4 ++++
 2 files changed, 36 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index c9d08d25f723665e5203d8e8372255a39bf739de..2cde844e46a61f412a46c2c7bb79d833153e5344 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -16,6 +16,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <linux/ctype.h>
+#include <linux/refcount.h>
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <linux/err.h>
@@ -33,6 +34,8 @@
 #define CHECK_LEVEL_SIG 2
 #define CHECK_LEVEL_MAX 3
 
+static LIST_HEAD(open_fits);
+
 static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
 {
 	dt += size;
@@ -902,6 +905,18 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name,
 	return conf_node;
 }
 
+static struct fit_handle *fit_get_handle(const char *filename)
+{
+	struct fit_handle *handle;
+
+	list_for_each_entry(handle, &open_fits, entry) {
+		if (!strcmp(filename, handle->filename))
+			return handle;
+	}
+
+	return NULL;
+}
+
 static int fit_do_open(struct fit_handle *handle)
 {
 	const char *desc = "(no description)";
@@ -951,6 +966,8 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
 	handle->size = size;
 	handle->verify = verify;
 
+	refcount_set(&handle->users, 1);
+
 	ret = fit_do_open(handle);
 	if (ret) {
 		fit_close(handle);
@@ -985,6 +1002,12 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 		return ERR_PTR(-errno);
 	}
 
+	handle = fit_get_handle(filename);
+	if (handle) {
+		refcount_inc(&handle->users);
+		return handle;
+	}
+
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
@@ -1002,6 +1025,9 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 	handle->fit = handle->fit_alloc;
 	handle->filename = filename;
 
+	refcount_set(&handle->users, 1);
+	list_add(&handle->entry, &open_fits);
+
 	ret = fit_do_open(handle);
 	if (ret) {
 		fit_close(handle);
@@ -1013,9 +1039,15 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 
 static void __fit_close(struct fit_handle *handle)
 {
+	if (!refcount_dec_and_test(&handle->users))
+		return;
+
 	if (handle->root)
 		of_delete_node(handle->root);
 
+	if (handle->filename)
+		list_del(&handle->entry);
+
 	free(handle->filename);
 	free(handle->fit_alloc);
 }
diff --git a/include/image-fit.h b/include/image-fit.h
index 68f70f4365cb7a650596263086f7de2209d5957e..f9791ff251c554eda56bf3af98c8abceb056a176 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -7,6 +7,7 @@
 #define __IMAGE_FIT_H__
 
 #include <linux/types.h>
+#include <linux/refcount.h>
 #include <bootm.h>
 
 struct fit_handle {
@@ -15,6 +16,9 @@ struct fit_handle {
 	size_t size;
 	char *filename;
 
+	struct list_head entry;
+	refcount_t users;
+
 	bool verbose;
 	enum bootm_verify verify;
 

-- 
2.39.5



