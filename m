Delivery-date: Tue, 14 Apr 2026 16:27:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCejO-00C6DI-0V
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 16:27:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCejN-0007U2-KT
	for lore@pengutronix.de; Tue, 14 Apr 2026 16:27:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n4/8Snbm6FZ8GZ8KOilkR9izp0Nt5s/qGadfkIAzRiU=; b=TntJ85DDMZsue3B3BKDRXMZAai
	dRuBUQpgi79qlPZHFn8X9EaQrJsF+moeAd6NbVUCQFZxejqLDqIyLsEXCkNWRGoXHIoGoLKWo7ufL
	xG7yW3wIp+6rUorxn1/afKs4UNeqg6P10lYVEbrFq608SiyFBXg4idqgurImJLEoI1vAr1EfXNNvt
	Vau3os7e8EuIRDFqGe53I72c5knDjkXhYLxWNShVYwokx8i3Z64t7fidU40freEXjrMkSSVy/H6A1
	1faF7xVT+W1kV9ZGztS+oKxlwWOrYFe2ewLyYlc914Hi/a5+SjSilpa1fBJr8E0QuoHa2U7+pJZYf
	XazmWpIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCej1-0000000HRzw-3WHn;
	Tue, 14 Apr 2026 14:26:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCeiz-0000000HRyq-0Dnn
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 14:26:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeip-0007LT-IP; Tue, 14 Apr 2026 16:26:35 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeip-005MCU-0s;
	Tue, 14 Apr 2026 16:26:35 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeip-000000037h5-0jL6;
	Tue, 14 Apr 2026 16:26:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 14 Apr 2026 16:26:30 +0200
Message-ID: <20260414142634.744542-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260414142634.744542-1-a.fatoum@pengutronix.de>
References: <20260414142634.744542-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_072645_092833_47C6EF27 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH 2/2] efi: payload: bootm: fix potential double-unload for image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_execute_image() already takes care to unload the image if it returns,
so adapt the single caller that tries to unload the image again
accordingly.

Cc: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index aba643b2c59d..801c0202ae83 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -235,6 +235,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 {
 	struct efi_loaded_image *loaded_image;
 	void *fdt = NULL, *initrd = NULL;
+	bool image_freed = false;
 	efi_handle_t handle;
 	enum filetype type;
 	int ret;
@@ -257,6 +258,13 @@ static int do_bootm_efi_stub(struct image_data *data)
 		goto unload_ramdisk;
 
 	ret = efi_execute_image(handle, loaded_image, type);
+
+	/* efi_execute_image takes care to unload the image on error,
+	 * so we set image_freed and fall through to freeing ramdisk
+	 * and oftree.
+	 */
+	image_freed = true;
+
 unload_ramdisk:
 	if (initrd) {
 		efi_initrd_unregister();
@@ -265,7 +273,8 @@ static int do_bootm_efi_stub(struct image_data *data)
 unload_oftree:
 	efi_unload_fdt(fdt);
 unload_os:
-	BS->unload_image(handle);
+	if (!image_freed)
+		BS->unload_image(handle);
 
 	return ret;
 }
-- 
2.47.3



