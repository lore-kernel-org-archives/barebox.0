Delivery-date: Tue, 22 Jun 2021 10:28:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblk-00089y-7c
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:28:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblj-0003Mu-5B
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:28:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2vVRrS4xrvBLoShnlduRG8yffNj8dlJu9nnOlx7ZH0=; b=S/e68YgqU6XQZ0
	++KN2EjdSXxm8W4FUMr08hrpfRsCA9Kb3HgXu7FTHptj/SJZXMeDIX6hV44YiYUcqGHuAB4ti1xKn
	EGLe4rF5kUZ9iMfjOwNJ8+Oi3AQBEuqp4A/aU6pah0Giqv/h2QHxvkyhh1qq04L6xLZY+/408CEq/
	+ACHxomZ4g6V6WT7tjwXHvDmTlTR2aQy9zC5jhtMTaFqL+eBOVxskXuTSnYmq+mMdY0NSCLcFfvMq
	uxbBbOWg5hETDPxT4sYPCgJAch8uoRFZpTkDdyZTC350I7B96zypvOIVks21rkRo0rxul0QOGCzJZ
	DGAnqyHSWXRik+jriCXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbkH-006EHJ-SB; Tue, 22 Jun 2021 08:26:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbjq-006E45-Pp
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0002ii-GD; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0005i0-2o; Tue, 22 Jun 2021 10:26:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:26:16 +0200
Message-Id: <20210622082617.18011-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012630_883091_7A749C9A 
X-CRM114-Status: GOOD (  16.70  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 7/8] usbgadget: refactor usbgadget_register to accept array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

usbgadget_register currently takes 6 arguments. Instead of increasing
them to 8 to support the new usb mass storage gadget, rewrite it to
accept a pointer to a struct with all the options instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/usbgadget.c       | 19 +++++++++----------
 common/usbgadget.c         | 28 +++++++++++++++++-----------
 include/usb/gadget-multi.h | 17 +++++++++++++----
 3 files changed, 39 insertions(+), 25 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 3b115f147d80..07094026db71 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -18,26 +18,25 @@
 
 static int do_usbgadget(int argc, char *argv[])
 {
+	struct usbgadget_funcs funcs = {};
 	int opt;
-	bool acm = false, dfu = false, fastboot = false, export_bbu = false;
-	const char *fastboot_opts = NULL, *dfu_opts = NULL;
 
 	while ((opt = getopt(argc, argv, "asdA::D::b")) > 0) {
 		switch (opt) {
 		case 'a':
 		case 's':
-			acm = true;
+			funcs.flags |= USBGADGET_ACM;
 			break;
 		case 'D':
-			dfu = true;
-			dfu_opts = optarg;
+			funcs.flags |= USBGADGET_DFU;
+			funcs.dfu_opts = optarg;
 			break;
 		case 'A':
-			fastboot = true;
-			fastboot_opts = optarg;
+			funcs.flags |= USBGADGET_FASTBOOT;
+			funcs.fastboot_opts = optarg;
 			break;
 		case 'b':
-			export_bbu = true;
+			funcs.flags |= USBGADGET_EXPORT_BBU;
 			break;
 		case 'd':
 			usb_multi_unregister();
@@ -47,8 +46,8 @@ static int do_usbgadget(int argc, char *argv[])
 		}
 	}
 
-	return usbgadget_register(dfu, dfu_opts, fastboot, fastboot_opts, acm,
-				  export_bbu);
+
+	return usbgadget_register(&funcs);
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
diff --git a/common/usbgadget.c b/common/usbgadget.c
index d4437b51694a..9bbaa4ea1238 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -48,36 +48,35 @@ static inline struct file_list *get_dfu_function(void)
 	return NULL;
 }
 
-int usbgadget_register(bool dfu, const char *dfu_opts,
-		       bool fastboot, const char *fastboot_opts,
-		       bool acm, bool export_bbu)
+int usbgadget_register(const struct usbgadget_funcs *funcs)
 {
 	int ret;
+	int flags = funcs->flags;
 	struct device_d *dev;
 	struct f_multi_opts *opts;
 
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
-	if (dfu) {
-		opts->dfu_opts.files = parse(dfu_opts);
+	if (flags & USBGADGET_DFU) {
+		opts->dfu_opts.files = parse(funcs->dfu_opts);
 		if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && file_list_empty(opts->dfu_opts.files)) {
 			file_list_free(opts->dfu_opts.files);
 			opts->dfu_opts.files = get_dfu_function();
 		}
 	}
 
-	if (fastboot) {
-		opts->fastboot_opts.files = parse(fastboot_opts);
+	if (flags & USBGADGET_FASTBOOT) {
+		opts->fastboot_opts.files = parse(funcs->fastboot_opts);
 		if (IS_ENABLED(CONFIG_FASTBOOT_BASE) && file_list_empty(opts->fastboot_opts.files)) {
 			file_list_free(opts->fastboot_opts.files);
 			opts->fastboot_opts.files = get_fastboot_partitions();
 		}
 
-		opts->fastboot_opts.export_bbu = export_bbu;
+		opts->fastboot_opts.export_bbu = flags & USBGADGET_EXPORT_BBU;
 	}
 
-	opts->create_acm = acm;
+	opts->create_acm = flags & USBGADGET_ACM;
 
 	if (usb_multi_count_functions(opts) == 0) {
 		pr_warn("No functions to register\n");
@@ -111,14 +110,21 @@ err:
 
 static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 {
+	struct usbgadget_funcs funcs = {};
 	static bool started;
-	bool fastboot_bbu = get_fastboot_bbu();
 	int err;
 
 	if (!autostart || started)
 		return 0;
 
-	err = usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
+	if (get_fastboot_bbu())
+		funcs.flags |= USBGADGET_EXPORT_BBU;
+	if (acm)
+		funcs.flags |= USBGADGET_ACM;
+
+	funcs.flags |= USBGADGET_DFU | USBGADGET_FASTBOOT;
+
+	err = usbgadget_register(&funcs);
 	if (!err)
 		started = true;
 
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index f30dae5686ae..482aee11d047 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -8,7 +8,7 @@
 struct f_multi_opts {
 	struct fastboot_opts fastboot_opts;
 	struct f_dfu_opts dfu_opts;
-	int create_acm;
+	bool create_acm;
 	void (*release)(struct f_multi_opts *opts);
 };
 
@@ -17,8 +17,17 @@ void usb_multi_unregister(void);
 void usb_multi_opts_release(struct f_multi_opts *opts);
 unsigned usb_multi_count_functions(struct f_multi_opts *opts);
 
-int usbgadget_register(bool dfu, const char *dfu_opts,
-		       bool fastboot, const char *fastboot_opts,
-		       bool acm, bool export_bbu);
+#define USBGADGET_EXPORT_BBU	(1 << 0)
+#define USBGADGET_ACM		(1 << 1)
+#define USBGADGET_DFU		(1 << 2)
+#define USBGADGET_FASTBOOT	(1 << 3)
+
+struct usbgadget_funcs {
+	int flags;
+	const char *fastboot_opts;
+	const char *dfu_opts;
+};
+
+int usbgadget_register(const struct usbgadget_funcs *funcs);
 
 #endif /* __USB_GADGET_MULTI_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

