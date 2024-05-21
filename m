Delivery-date: Tue, 21 May 2024 10:07:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9KWp-00Bvxf-0C
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 10:07:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9KWk-0003Q0-Po
	for lore@pengutronix.de; Tue, 21 May 2024 10:07:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nOdh6M0DLkpsyEUpL5IukNbW2Ao9jKkt/1dJ+ptejnU=; b=HcCSyCLhaV24Ia/YXNmZ2bD+0b
	qk1ZUHkukPrPUNnJchtefHUGjhuTHOawhbQSmnA5roazhMNk/U0F/+O2kR+7RbMgPtjj1t85adJue
	E77q4FniQ9XkdP+b85UjJoqyu2SGWNQzCtJ8j0dUOWN9SC+iiLs/Amw84kvC4oDicIf9nUG60Rnb5
	EDe7F3zchySRAhrjBrgxjKL7lt1tZn60vyEQEkmR6I1V9zcQy2fHoa6bwKl7lPBO71JyssHCE33H3
	UmW6viYK3bl896ZgdTt1Eqf1yyMtSlDCKjxj5ay4FM2ERSPf1Gmmjon8tWa1NFOOVjDvhxJ2nPPI7
	W1p1y2ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9KVy-0000000GicP-2XaF;
	Tue, 21 May 2024 08:06:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9KVv-0000000Gibc-0d0y
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 08:06:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1s9KVp-0003BS-B9
	for barebox@lists.infradead.org; Tue, 21 May 2024 10:06:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 21 May 2024 10:06:17 +0200
Message-Id: <20240521080617.1532603-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240521080617.1532603-1-m.felsch@pengutronix.de>
References: <20240521080617.1532603-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_010627_662150_F5DAD083 
X-CRM114-Status: GOOD (  15.89  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] usbgadget: split usbgadget_register into prepare and register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently usbgadget_register() prepares the struct::f_multi_opts
according a given configuration string and registers the the usbgadget
device.

This is not optimal for adding custom fastboot_opts. Split the single
function into usbgadget_prepare() and usbgadget_register() to avoid code
duplication. This way it's easy to reuse the preparation code and add
the custom fastboot_opts afterwards.

In addition usbgadget_prepare_register() is added to keep the simplicity
of the single prepare and register functionality.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/dfu.c                   |  2 +-
 commands/usbgadget.c             |  2 +-
 common/usbgadget.c               | 36 ++++++++++++++++++++++++--------
 include/linux/usb/gadget-multi.h |  4 +++-
 4 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index bbe75841b914..ab784c638200 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -29,7 +29,7 @@ static int do_dfu(int argc, char *argv[])
 
 	funcs.flags |= USBGADGET_DFU;
 	funcs.dfu_opts = argv[optind];
-	ret = usbgadget_register(&funcs);
+	ret = usbgadget_prepare_register(&funcs);
 	if (ret)
 		return COMMAND_ERROR_USAGE;
 
diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 736ccb5d9185..1cd8c915b1b1 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -51,7 +51,7 @@ static int do_usbgadget(int argc, char *argv[])
 		}
 	}
 
-	ret = usbgadget_register(&funcs);
+	ret = usbgadget_prepare_register(&funcs);
 	return ret ? COMMAND_ERROR_USAGE : 0;
 }
 
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 9974be57d1cb..1333eaa413ea 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -31,11 +31,9 @@ static inline struct file_list *get_dfu_function(void)
 	return system_partitions_get_null();
 }
 
-int usbgadget_register(const struct usbgadget_funcs *funcs)
+struct f_multi_opts *usbgadget_prepare(const struct usbgadget_funcs *funcs)
 {
-	int ret;
 	int flags = funcs->flags;
-	struct device *dev;
 	struct f_multi_opts *opts;
 
 	opts = xzalloc(sizeof(*opts));
@@ -71,10 +69,18 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 
 	if (usb_multi_count_functions(opts) == 0) {
 		pr_warn("No functions to register\n");
-		ret = -EINVAL;
-		goto err;
+		usb_multi_opts_release(opts);
+		return ERR_PTR(-EINVAL);
 	}
 
+	return opts;
+}
+
+int usbgadget_register(struct f_multi_opts *opts)
+{
+	int ret;
+	struct device *dev;
+
 	/*
 	 * Creating a gadget with both DFU and Fastboot may not work.
 	 * fastboot 1:8.1.0+r23-5 can deal with it, but dfu-util 0.9
@@ -90,11 +96,23 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 
 	ret = usb_multi_register(opts);
 	if (ret)
-		goto err;
+		return ret;
 
 	return 0;
-err:
-	usb_multi_opts_release(opts);
+}
+
+int usbgadget_prepare_register(const struct usbgadget_funcs *funcs)
+{
+	struct f_multi_opts *opts;
+	int ret;
+
+	opts = usbgadget_prepare(funcs);
+	if (IS_ERR(opts))
+		return PTR_ERR(opts);
+
+	ret = usbgadget_register(opts);
+	if (ret)
+		usb_multi_opts_release(opts);
 
 	return ret;
 }
@@ -122,7 +140,7 @@ static int usbgadget_do_autostart(void)
 
 	funcs.flags |= USBGADGET_DFU | USBGADGET_FASTBOOT | USBGADGET_MASS_STORAGE;
 
-	err = usbgadget_register(&funcs);
+	err = usbgadget_prepare_register(&funcs);
 	if (!err)
 		started = true;
 
diff --git a/include/linux/usb/gadget-multi.h b/include/linux/usb/gadget-multi.h
index 1027a10082e0..14aa609a5895 100644
--- a/include/linux/usb/gadget-multi.h
+++ b/include/linux/usb/gadget-multi.h
@@ -35,7 +35,9 @@ struct usbgadget_funcs {
 	const char *ums_opts;
 };
 
-int usbgadget_register(const struct usbgadget_funcs *funcs);
+struct f_multi_opts *usbgadget_prepare(const struct usbgadget_funcs *funcs);
+int usbgadget_register(struct f_multi_opts *opts);
+int usbgadget_prepare_register(const struct usbgadget_funcs *funcs);
 
 void usbgadget_autostart(bool enable);
 
-- 
2.39.2



