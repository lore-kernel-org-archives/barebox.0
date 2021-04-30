Delivery-date: Fri, 30 Apr 2021 15:42:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPF-00055D-6C
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:42:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPE-0000ZY-5I
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WVLla77f15M57Z1qv6iprtnjDrbDp4JJ15/Z9oOnk9M=; b=j5vjB+IbDJcmnj7L4CHysLmW+
	qQx9BSolIkID+U4PXHqIBDtPpqeQv2k9XbIy5KWYhT6GszWohaAD8AyqPHGV9Muokr4SbJxSN3RF/
	qOH0SfmN4PGXkoL0L+jabVMbUyhHW2z5JnmkRRDc5/a7CmiIex6fJTNGrOsLF00xwKlS7qg6E3CbZ
	rud3NOK3qwkh32smAscICfZ7uw2yu6Ere8veFJlgxanT8G/vEcPacm+ZRG4R1966V/s3gBooM+7pT
	B13nSf3gaIHJiAqsDCphdxkGXKNvRvOxk9KY7JaaMCDRU/2Ld/jM0YE/tWp24lyXINR9Bcurb53gu
	7Vj7YcMtA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTOT-007wC0-Vi; Fri, 30 Apr 2021 13:41:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOK-007wAl-8o
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=bhsNP5z1cVCy52Gw3Dz5TFfBFIPz4QQZjTlIcPUDeIw=; b=AJZwPViJqCqA314NduB7VF48jd
 NKiXXlsuDT+2e2m+5wV7EcibBHy59/uAmavJVXmgPlKNWuw++kbddZ3hW+DEn1K6RZ4VwUVepseaw
 f9PPFV8xUnwBmzR9PDkxayfJ0MA6t7sxIlg9iT9X2Dh2M/CGNfE2xCKcSboXmOzHLvDq5Y3SGC+vS
 ZcLTCRf7OweAX3+9ux135cvOOuOUUIVkjkZkrd/l9xkdP4Q15aUz30KUP+kzCUPNkmkC9LkNNd9AY
 usavVbQf+EIPgY3chOxtb31PFrPFzw/35uVgVneAK6vv4EpjArYzRbH9NER0vTgNwFCGy5L0HAbx7
 2rd2VP6g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOG-001Png-H9
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:41:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOF-0000Av-8O; Fri, 30 Apr 2021 15:41:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOE-0005iT-TY; Fri, 30 Apr 2021 15:41:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 30 Apr 2021 15:41:00 +0200
Message-Id: <20210430134101.20580-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430134101.20580-1-a.fatoum@pengutronix.de>
References: <20210430134101.20580-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_064108_594672_4A6772EF 
X-CRM114-Status: GOOD (  15.00  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] usbgadget: refactor usbgadget_register to accept array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

usbgadget_register currently takes 6 arguments. Instead of increasing
them to 8 to support the new usb mass storage gadget, rewrite it to
accept a pointer to a struct with all the options instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/usbgadget.c       | 19 +++++++++----------
 common/usbgadget.c         | 24 ++++++++++++++++++------
 include/usb/gadget-multi.h | 15 ++++++++++++---
 3 files changed, 39 insertions(+), 19 deletions(-)

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
index bdbb4d794889..b06703512491 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -42,13 +42,18 @@ static inline struct file_list *get_dfu_function(void)
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
+	const char *dfu_opts = funcs->dfu_opts;
+	const char *fastboot_opts = funcs->fastboot_opts;
+
+	bool dfu = flags & USBGADGET_DFU;
+	bool fastboot = flags & USBGADGET_FASTBOOT;
+	bool acm = flags & USBGADGET_ACM;
 
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
@@ -61,7 +66,7 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 		opts->fastboot_opts.files = fastboot_opts ? parse(fastboot_opts)
 			: get_fastboot_partitions();
 
-		opts->fastboot_opts.export_bbu = export_bbu;
+		opts->fastboot_opts.export_bbu = flags & USBGADGET_EXPORT_BBU;
 	}
 
 	opts->create_acm = acm;
@@ -98,14 +103,21 @@ err:
 
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
index f30dae5686ae..7f58a74a0519 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
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

