Delivery-date: Mon, 09 Feb 2026 19:17:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVoq-00AdtB-0S
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:17:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVop-00075t-3a
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:17:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ZKdg9ivPrIY8fqNxmAnOOlLMpzyggCStsxG2G0wEAc=; b=mQmbKUnJ7/6dK+q+ld3No23C2O
	12nJRVf9H8kVEGzDJjnPlvVJ9GxLQit8nb4odBoH+IdebFpBhSKL4Wg9W//lAqXUKSWrX46yROS8a
	wpb6aOYEm8p8Hsq5tWoy9WWh7tkoxLBiJiDfUEAPeUZKzbD3u+LW/EvP9L77OpddCltQSs8JnpiTz
	KqZpZ0+II2LdH1ZGYin1cNmOOoCv2UbsK6h+fLBwujaO4x+hKvIf4JDFyzCawwL0mM8Ks0/8yhR7a
	2a9RVD6J1ibDroa+Z+vsAcqkhAWEk2psv+FxRq17tb7JPB2PU1uFMEM2VWGvTi9CdGijAgJ0k8bJg
	Y4zfYQyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoS-0000000Fqu9-1KDC;
	Mon, 09 Feb 2026 18:16:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoQ-0000000Fqsr-0c4w
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:16:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoO-0006tt-GC; Mon, 09 Feb 2026 19:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoO-004voi-39;
	Mon, 09 Feb 2026 19:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-3JO7;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:52 +0100
Message-ID: <20260209181138.2023065-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101642_207099_3834FE80 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/13] efi: initrd: make efi_initrd_register initrd pointer param const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The initrd buffer isn't actually used in a writable manner, so reflect
that in the types used to hold its base address.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/initrd.c         | 4 ++--
 efi/loader/bootm.c   | 2 +-
 include/efi/initrd.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/efi/initrd.c b/efi/initrd.c
index 642422b38d2a..01361d0a3071 100644
--- a/efi/initrd.c
+++ b/efi/initrd.c
@@ -35,7 +35,7 @@ static const struct {
 
 static struct linux_initrd {
 	struct efi_load_file_protocol base;
-	void *start;
+	const void *start;
 	size_t size;
 	efi_handle_t lf2_handle;
 } initrd;
@@ -70,7 +70,7 @@ static efi_status_t EFIAPI efi_initrd_load_file2(
 	return EFI_SUCCESS;
 }
 
-int efi_initrd_register(void *initrd_base, size_t initrd_sz)
+int efi_initrd_register(const void *initrd_base, size_t initrd_sz)
 {
 	struct efi_boot_services *bs;
 	efi_status_t efiret;
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 97621d8a05e5..6b59fa0fad18 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -187,7 +187,7 @@ static efi_status_t efi_install_initrd(struct image_data *data,
 	if (IS_ERR(initrd_res))
 		return PTR_ERR(initrd_res);
 	if (initrd_res)
-		efi_initrd_register((void *)initrd_res->start,
+		efi_initrd_register((const void *)initrd_res->start,
 				    resource_size(initrd_res));
 
 	return EFI_SUCCESS;
diff --git a/include/efi/initrd.h b/include/efi/initrd.h
index 08af2d299ad6..b36875c7fe7c 100644
--- a/include/efi/initrd.h
+++ b/include/efi/initrd.h
@@ -5,7 +5,7 @@
 
 #include <linux/types.h>
 
-int efi_initrd_register(void *initrd, size_t initrd_size);
+int efi_initrd_register(const void *initrd, size_t initrd_size);
 void efi_initrd_unregister(void);
 
 #endif
-- 
2.47.3



