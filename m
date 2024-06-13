Delivery-date: Thu, 13 Jun 2024 14:59:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2w-005NOQ-0x
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 14:59:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2u-0004Vj-Nn
	for lore@pengutronix.de; Thu, 13 Jun 2024 14:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4bhRtZTpwq1veelNJgwJuqNWq2BZ0fa+Ydih4OXEjfk=; b=RzO/cMcyVVsVY3bNgrBrDqIJQj
	1Wl2TzaIbaM1/MdIfewJKZ/P5xzDnXHwTSxcgiX3k0ENfG47/WNDerDFEWslWSmR5vTvHMZEnVhvU
	N8uV2QNkO1L0zFcyHOlaoY6cGMTn1u5kWfA0M+T5tJysGM+4hh93NYN3BCYUIxLwLi6PZ55voRESx
	5YT4e0dtfXCbM3imVtcQ6kcLG2JZiaSmlBKejIB1ep4jafxs2aSwz+lc6w048O8GeDteaXWsFTjgM
	KH39do9Cd3tojKEpe+MyI3EBNFBeFO2RuGr679269Dv/f0dfI3j1C4sVEbc4JPo4Y4/Y9EWCJYgAQ
	4a/qfWbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk2N-0000000GbEf-1b9C;
	Thu, 13 Jun 2024 12:58:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk28-0000000Gb54-2C13
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:32 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-ED
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:18 +0200
Message-Id: <20240613125818.30499-12-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055828_587183_C6CC8715 
X-CRM114-Status: GOOD (  14.77  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 11/11] FIT: add support to cache opened fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cache the FIT image fit_open() calls to avoid loading the same FIT image
twice. This is very useful if the same FIT image is used to provide the
base devicetree, kernel and initrd as well as devicetree overlays.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 38 +++++++++++++++++++++++++++++++++++++-
 include/image-fit.h |  4 ++++
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index c5c88ebe4c1e..061825f5f22c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -18,6 +18,8 @@
 #include <fnmatch.h>
 #include <malloc.h>
 #include <linux/ctype.h>
+#include <linux/minmax.h>
+#include <linux/refcount.h>
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <linux/err.h>
@@ -34,6 +36,8 @@
 #define CHECK_LEVEL_SIG 2
 #define CHECK_LEVEL_MAX 3
 
+LIST_HEAD(open_fits);
+
 static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
 {
 	dt += size;
@@ -861,6 +865,22 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
 	return conf_node;
 }
 
+static struct fit_handle *fit_get_handle(const char *filename)
+{
+	size_t query_len = strlen(filename);
+	struct fit_handle *handle;
+
+	list_for_each_entry(handle, &open_fits, entry) {
+		size_t len = strlen(handle->filename);
+
+		len = min(len, query_len);
+		if (!strncmp(filename, handle->filename, len))
+			return handle;
+	}
+
+	return NULL;
+}
+
 static int fit_do_open(struct fit_handle *handle)
 {
 	const char *desc = "(no description)";
@@ -910,6 +930,8 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
 	handle->size = size;
 	handle->verify = verify;
 
+	refcount_set(&handle->users, 1);
+
 	ret = fit_do_open(handle);
 	if (ret) {
 		fit_close(handle);
@@ -937,6 +959,12 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	struct fit_handle *handle;
 	int ret;
 
+	handle = fit_get_handle(filename);
+	if (handle) {
+		refcount_inc(&handle->users);
+		return handle;
+	}
+
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
@@ -953,6 +981,9 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	handle->fit = handle->fit_alloc;
 	handle->filename = xstrdup(filename);
 
+	refcount_set(&handle->users, 1);
+	list_add(&handle->entry, &open_fits);
+
 	ret = fit_do_open(handle);
 	if (ret) {
 		fit_close(handle);
@@ -964,11 +995,16 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 
 void fit_close(struct fit_handle *handle)
 {
+	if (!refcount_dec_and_test(&handle->users))
+		return;
+
 	if (handle->root)
 		of_delete_node(handle->root);
 
-	if (handle->filename)
+	if (handle->filename) {
 		free(handle->filename);
+		list_del(&handle->entry);
+	}
 
 	free(handle->fit_alloc);
 	free(handle);
diff --git a/include/image-fit.h b/include/image-fit.h
index 10fa3716a094..dbe621d6e091 100644
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
2.39.2



