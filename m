Delivery-date: Wed, 26 May 2021 11:19:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llphk-000690-NN
	for lore@lore.pengutronix.de; Wed, 26 May 2021 11:19:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llphi-0001UN-Oq
	for lore@pengutronix.de; Wed, 26 May 2021 11:19:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqHiNQOT0+thMotqKFnFk34esQWBhZKGQ+unwyu7xVE=; b=fvmFJhKd7tZEZO
	V4G9Ls/r/wPv40AsU0GrWCC4kT+6l2Z9oVsqcqq02Q+zK3YncoOM9+Xiif8hjUc3S3woqnSIYbEVQ
	sh+VgIrxqE7h091dXXEFpvJT3+BG9lQyZAlnhC5N+E3Z5y3xhrH5GVNFuaXHKhjJtamHRQk5iJAiQ
	KHQYGf2+MxhtjLI7+BSlHa5f/azrQBpHDJakt5KZGceITi3MOvz6cd/GYm2fUJf9IHOnlJ6S6K2Jf
	4NNM6JXqMXX4iSxMrW9F/6dXVnK/LFCeLcgRmwlsSyrKHG88qk8Hp2Dp1tsaj6gTcFNEh4Y9wXVmb
	Hwgecei6w/UzuVdq5ciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llpg7-00CntG-4u; Wed, 26 May 2021 09:18:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llpQg-00Chay-QY
 for barebox@lists.infradead.org; Wed, 26 May 2021 09:02:20 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1llpQe-0007l4-NS
 for barebox@lists.infradead.org; Wed, 26 May 2021 11:02:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 26 May 2021 11:02:16 +0200
Message-Id: <20210526090216.4003977-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210526090216.4003977-1-l.stach@pengutronix.de>
References: <20210526090216.4003977-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_020218_903439_0AF425E0 
X-CRM114-Status: GOOD (  15.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] bootm: add support for booting compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM64 does not have a self extracting image format, but relies on the image
being externally compressed with one of the standard compression algorithms.

Add support for decompressing the bootm OS image. It is added in common
code as it may also be useful for other images/architectures.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2: Add proper error handling if nested bootm fails.
---
 common/bootm.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 092116beb94a..f5c0e5184b0a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -12,6 +12,7 @@
 #include <environment.h>
 #include <linux/stat.h>
 #include <magicvar.h>
+#include <uncompress.h>
 
 static LIST_HEAD(handler_list);
 
@@ -808,6 +809,86 @@ err_out:
 	return ret;
 }
 
+static int do_bootm_compressed(struct image_data *img_data)
+{
+	struct bootm_data bootm_data = {
+		.oftree_file = img_data->oftree_file,
+		.initrd_file = img_data->initrd_file,
+		.tee_file = img_data->tee_file,
+		.verbose = img_data->verbose,
+		.verify = img_data->verify,
+		.force = img_data->force,
+		.dryrun = img_data->dryrun,
+		.initrd_address = img_data->initrd_address,
+		.os_address = img_data->os_address,
+		.os_entry = img_data->os_entry,
+	};
+	int from, to, ret;
+	char *dstpath;
+
+	from = open(img_data->os_file, O_RDONLY);
+	if (from < 0)
+		return -ENODEV;
+
+	dstpath = make_temp("bootm-compressed");
+	if (!dstpath) {
+		ret = -ENOMEM;
+		goto fail_from;
+	}
+
+	to = open(dstpath, O_CREAT | O_WRONLY);
+	if (to < 0) {
+		ret = -ENODEV;
+		goto fail_make_temp;
+	}
+
+	ret = uncompress_fd_to_fd(from, to, uncompress_err_stdout);
+	if (ret)
+		goto fail_to;
+
+	bootm_data.os_file = dstpath;
+	ret = bootm_boot(&bootm_data);
+
+fail_to:
+	close(to);
+	unlink(dstpath);
+fail_make_temp:
+	free(dstpath);
+fail_from:
+	close(from);
+	return ret;
+}
+
+static struct image_handler bzip2_bootm_handler = {
+	.name = "BZIP2 compressed file",
+	.bootm = do_bootm_compressed,
+	.filetype = filetype_bzip2,
+};
+
+static struct image_handler gzip_bootm_handler = {
+	.name = "GZIP compressed file",
+	.bootm = do_bootm_compressed,
+	.filetype = filetype_gzip,
+};
+
+static struct image_handler lzo_bootm_handler = {
+	.name = "LZO compressed file",
+	.bootm = do_bootm_compressed,
+	.filetype = filetype_lzo_compressed,
+};
+
+static struct image_handler lz4_bootm_handler = {
+	.name = "LZ4 compressed file",
+	.bootm = do_bootm_compressed,
+	.filetype = filetype_lz4_compressed,
+};
+
+static struct image_handler xz_bootm_handler = {
+	.name = "XZ compressed file",
+	.bootm = do_bootm_compressed,
+	.filetype = filetype_xz_compressed,
+};
+
 static int bootm_init(void)
 {
 	globalvar_add_simple("bootm.image", NULL);
@@ -830,6 +911,18 @@ static int bootm_init(void)
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
 				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
 
+
+	if (IS_ENABLED(CONFIG_BZLIB))
+		register_image_handler(&bzip2_bootm_handler);
+	if (IS_ENABLED(CONFIG_ZLIB))
+		register_image_handler(&gzip_bootm_handler);
+	if (IS_ENABLED(CONFIG_LZO_DECOMPRESS))
+		register_image_handler(&lzo_bootm_handler);
+	if (IS_ENABLED(CONFIG_LZ4_DECOMPRESS))
+		register_image_handler(&lz4_bootm_handler);
+	if (IS_ENABLED(CONFIG_XZ_DECOMPRESS))
+		register_image_handler(&xz_bootm_handler);
+
 	return 0;
 }
 late_initcall(bootm_init);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

