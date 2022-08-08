Delivery-date: Mon, 08 Aug 2022 08:58:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwiK-00FrI3-VN
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:58:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwiL-0001L5-0u
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bMuaO6utqX6sP7zwnqmz1bGamyr/k/bV6YGh42tOyjo=; b=ojTtLgm7r6q3QzAELkAmF65YB8
	wmzj/zaEpLMPCnkhCnKopVCobx4e3MVMuamb+OzDfIWfN8dMHZgPyik3hyTSXCCDNha3aDDh3IIUw
	OLRlFF8Ysb/0xLYbXhJ5pov+2ZiZqs0YtlE1d78lK5afw98l9+yInKyvtLT0My6cVFxxPmyg60Ap5
	tIFdKVjnuQY3Uno1HmWQxLR9kXZB72JRW+/fEaJTrzmRrCKOtHgPEIZ97np2VJ0R9beqJEhE+9cHx
	pkLdWoGwEBWqG78c86UkoLVHqLX9xYDsoITOF/pbYuqzq2zkCR1EJUtx0bTcnYXs/HdIo4bUv8DrN
	9zbdF4gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwh7-00Bxzy-NS; Mon, 08 Aug 2022 06:56:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwh3-00BxyV-AL
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:56:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwh2-00018a-3R; Mon, 08 Aug 2022 08:56:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgz-002RmV-4K; Mon, 08 Aug 2022 08:56:51 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwh0-001vCE-Mt; Mon, 08 Aug 2022 08:56:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:56:48 +0200
Message-Id: <20220808065648.458142-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_235653_402805_4ADDE8E4 
X-CRM114-Status: GOOD (  22.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] FIT: add first support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIT image contents are often compressed, but we got by so far, because
a compressed initramfs is usually meant to be decompressed by the kernel
(and so has compression = "none") and arm32 kernels had their own
decompresser embedded. On ARM64, bootloader is responsible for
uncompressing kernel, so we should properly process the compression
property we so far ignored.

The decompression isn't as efficient as one would hope for, because
the FIT format only describes length of the compressed data. We thus
have two options:

  - define an output size up-front, e.g. by guessing the uncompressed
     buffer size for decompression or hardcoding it (e.g. U-Boot's
     CONFIG_SYS_BOOTM_LEN).

  -  Uncompress to a file descriptor

We choose the second one to play it safe, but it comes with worse
performance because of extra memory copies. Intention is to go with
first option for the kernel image: We know how much size we can spare
for the kernel image and can have bootm_load_os uncompress there
directly without intermittent memory copies. This would involve slight
change to the barebox decompresser API to align it with the kernel's,
which allows to have it accept and observe an output buffer size.
So far, we had the kernel PREBOOT API, which lacks such a parameter,
but that's an optimization for another day.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c   | 38 +++++++++++++++++++++++++++++++++++---
 include/uncompress.h |  6 ++++++
 lib/uncompress.c     | 40 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 81 insertions(+), 3 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 507a857cadb4..e692fcdaa737 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -21,6 +21,7 @@
 #include <linux/err.h>
 #include <stringlist.h>
 #include <rsa.h>
+#include <uncompress.h>
 #include <image-fit.h>
 
 #define FDT_MAX_DEPTH 32
@@ -559,6 +560,11 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
 	return ret;
 }
 
+static void fit_uncompress_error_fn(char *x)
+{
+	pr_err("%s\n", x);
+}
+
 /**
  * fit_open_image - Open an image in a FIT image
  * @handle: The FIT image handle
@@ -581,8 +587,10 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		   unsigned long *outsize)
 {
 	struct device_node *image;
-	const char *unit = name, *type = NULL, *desc= "(no description)";
-	const void *data;
+	const char *unit = name, *type = NULL, *compression = NULL,
+	      *desc= "(no description)";
+	struct property *dataprop;
+	const void *data = NULL;
 	int data_len;
 	int ret = 0;
 
@@ -599,7 +607,9 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return -EINVAL;
 	}
 
-	data = of_get_property(image, "data", &data_len);
+	dataprop = of_find_property(image, "data", &data_len);
+	if (dataprop)
+		data = of_property_get_value(dataprop);
 	if (!data) {
 		pr_err("data not found\n");
 		return -EINVAL;
@@ -613,6 +623,28 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	if (ret < 0)
 		return ret;
 
+	of_property_read_string(image, "compression", &compression);
+	if (compression && strcmp(compression, "none") != 0) {
+		if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
+			pr_err("image has compression = \"%s\", but support not compiled in\n");
+			return -ENOSYS;
+		}
+		if (!dataprop->value) {
+			void *uc_data;
+
+			data_len = uncompress_buf_to_buf(data, data_len, &uc_data,
+						    fit_uncompress_error_fn);
+			if (data_len < 0) {
+				pr_err("data couldn't be decompressed\n");
+				return data_len;
+			}
+
+			/* associate buffer with FIT, so it's not leaked */
+			data = dataprop->value = uc_data;
+			dataprop->length = data_len;
+		}
+	}
+
 	*outdata = data;
 	*outsize = data_len;
 
diff --git a/include/uncompress.h b/include/uncompress.h
index 4bdb03d4f5b6..72ba1dfda607 100644
--- a/include/uncompress.h
+++ b/include/uncompress.h
@@ -15,6 +15,12 @@ int uncompress_fd_to_fd(int infd, int outfd,
 int uncompress_fd_to_buf(int infd, void *output,
 	   void(*error_fn)(char *x));
 
+int uncompress_buf_to_fd(const void *input, size_t input_len,
+			 int outfd, void(*error_fn)(char *x));
+
+ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
+			      void **buf, void(*error_fn)(char *x));
+
 void uncompress_err_stdout(char *);
 
 #endif /* __UNCOMPRESS_H */
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 15eb3da098c8..1134d8c52801 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -178,3 +178,43 @@ int uncompress_fd_to_buf(int infd, void *output,
 
 	return uncompress(NULL, 0, fill_fd, NULL, output, NULL, error_fn);
 }
+
+int uncompress_buf_to_fd(const void *input, size_t input_len,
+			 int outfd, void(*error_fn)(char *x))
+{
+	uncompress_outfd = outfd;
+
+	return uncompress((void *)input, input_len, NULL, flush_fd,
+			  NULL, NULL, error_fn);
+}
+
+ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
+			      void **buf, void(*error_fn)(char *x))
+{
+	char *dstpath;
+	size_t size;
+	int outfd, ret;
+
+	dstpath = make_temp("data-uncompressed");
+	if (!dstpath)
+		return -ENOMEM;
+
+	outfd = open(dstpath, O_CREAT | O_WRONLY);
+	if (outfd < 0) {
+		ret = -ENODEV;
+		goto free_temp;
+	}
+
+	ret = uncompress_buf_to_fd(input, input_len, outfd, uncompress_err_stdout);
+	if (ret)
+		goto close_outfd;
+
+	*buf = read_file(dstpath, &size);
+close_outfd:
+	close(outfd);
+	unlink(dstpath);
+free_temp:
+	free(dstpath);
+
+	return ret ?: size;
+}
-- 
2.30.2



