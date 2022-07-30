Delivery-date: Sat, 30 Jul 2022 11:47:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHj4h-004qyS-II
	for lore@lore.pengutronix.de; Sat, 30 Jul 2022 11:47:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHj4g-0006zB-8y
	for lore@pengutronix.de; Sat, 30 Jul 2022 11:47:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQ0lK3KzyAce6Cpt8/dDg4mCHWgR7pOj4rEeNpQkGOE=; b=lFuxc+ZvEHtnsLLfEvvIO5bFNX
	tG00GXQ/W73cXkiDnJTHQhAIC6jbTEZLYSDCEGBUSWFmSwMdwjd20Em681GTpoGQlENeBKp0+hVQZ
	S06/tXyhj5sYhzx8plwBMn2aGPUaUNXJbF0WU0gSYhQV4KUeTkcQZunemW6B/dOL/GUblKCf6xMfa
	vT4wOsDrUYZ2rQTeamIqysjZVU4Kud55CkHtea3vCFPakwKH2JruLlNbj5Uoe6Vj/d1RU7ltA2xw0
	RAJ4Xa79inH2U1sRuuzsv9XDo0+hYwg6YgLlHYWqXwcCzH1egeA4AxNblaOFO5nGV/gP4u6m76FzA
	ByYFzeJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj3E-00H6VA-CH; Sat, 30 Jul 2022 09:46:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj37-00H6SX-PX
	for barebox@lists.infradead.org; Sat, 30 Jul 2022 09:46:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj34-0006jj-5Q; Sat, 30 Jul 2022 11:46:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj33-000gOM-FV; Sat, 30 Jul 2022 11:46:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj32-007OOu-Mo; Sat, 30 Jul 2022 11:46:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Jul 2022 11:46:15 +0200
Message-Id: <20220730094615.1762042-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220730094615.1762042-1-a.fatoum@pengutronix.de>
References: <20220730094615.1762042-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_024621_893446_ABE247B2 
X-CRM114-Status: GOOD (  11.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] USB: gadget: fastboot: allow exporting only barebox update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Exporting only the bbu handler and nothing else over fastboot
via usbgadget -A '' -b used to work. Restore this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c          |  2 ++
 drivers/usb/gadget/multi.c | 15 ++++++++++-----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 330a06f5a32f..72e6ba3c402a 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -171,6 +171,8 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	if (!fb->tempname)
 		return -ENOMEM;
 
+	if (!fb->files)
+		fb->files = file_list_new();
 	if (export_bbu)
 		bbu_append_handlers_to_file_list(fb->files);
 
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 102d8714f86d..6225e9a313a1 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -137,6 +137,12 @@ static int multi_bind_fastboot(struct usb_composite_dev *cdev)
 	return usb_add_function(&config, f_fastboot);
 }
 
+static bool fastboot_has_exports(struct f_multi_opts *opts)
+{
+	return !file_list_empty(opts->fastboot_opts.files) ||
+		opts->fastboot_opts.export_bbu;
+}
+
 static int multi_bind_ums(struct usb_composite_dev *cdev)
 {
 	int ret;
@@ -179,7 +185,7 @@ static int multi_unbind(struct usb_composite_dev *cdev)
 		usb_put_function_instance(fi_dfu);
 	}
 
-	if (gadget_multi_opts->fastboot_opts.files) {
+	if (fastboot_has_exports(gadget_multi_opts)) {
 		usb_put_function(f_fastboot);
 		usb_put_function_instance(fi_fastboot);
 	}
@@ -219,7 +225,7 @@ static int multi_bind(struct usb_composite_dev *cdev)
 	if (ret)
 		return ret;
 
-	if (gadget_multi_opts->fastboot_opts.files) {
+	if (fastboot_has_exports(gadget_multi_opts)) {
 		printf("%s: creating Fastboot function\n", __func__);
 		ret = multi_bind_fastboot(cdev);
 		if (ret)
@@ -259,7 +265,7 @@ unbind_dfu:
 	if (gadget_multi_opts->dfu_opts.files)
 		usb_put_function_instance(fi_dfu);
 unbind_fastboot:
-	if (gadget_multi_opts->fastboot_opts.files)
+	if (fastboot_has_exports(gadget_multi_opts))
 		usb_put_function_instance(fi_fastboot);
 
 	return ret;
@@ -312,8 +318,7 @@ unsigned usb_multi_count_functions(struct f_multi_opts *opts)
 {
 	unsigned count = 0;
 
-	count += !file_list_empty(opts->fastboot_opts.files) ||
-		opts->fastboot_opts.export_bbu;
+	count += fastboot_has_exports(opts);
 	count += !file_list_empty(opts->dfu_opts.files);
 	count += !file_list_empty(opts->ums_opts.files);
 	count += opts->create_acm;
-- 
2.30.2



