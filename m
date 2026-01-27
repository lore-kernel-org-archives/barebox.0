Delivery-date: Tue, 27 Jan 2026 10:04:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkezw-005qJZ-2j
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 10:04:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkezs-0004Qk-CN
	for lore@pengutronix.de; Tue, 27 Jan 2026 10:04:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OgmIHJwpfyn1PLmTPD31iHiQIXgdB9dgVoVyWwj3vrA=; b=EMgfbs6MIT5VpsKgThFOGPC7ci
	VJtNt0V7uocSWHcr7pwIYpgLAaWAYdTUFrY5ymPv3DoS5enhwbuY1YKj7tuj6pR+hDlqQoPBSZn6l
	8EdewF5rBqhJAVM1bY5d9zaMJl27UkfS7s/X6FH4mzBignWm9AQ86GTJgKQCLzrnQSXihxMcm4HwY
	WqyHAjGQtKtCcIKN4s1/jGluz6uZKOULb1/BdbFTsdZ6dG8WkWjK0CJlwyP/bCcJXQR+WrcXVnVr9
	wYBffoK7qndbbFbdUsOT6n7EjUupanRGAe3kmez6axfeN90QWNqPIrU4TY3dlXXbXGc9Rs7tv6p2X
	5rGLL/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkez9-0000000DtqD-4B6e;
	Tue, 27 Jan 2026 09:03:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkez2-0000000Dtmb-1TY8
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 09:03:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkez0-00046D-Rj; Tue, 27 Jan 2026 10:03:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkez1-002iiW-10;
	Tue, 27 Jan 2026 10:03:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-0000000FmwP-1Tq6;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:25 +0100
Message-ID: <20260127084546.3751357-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_010336_395410_FDDFCF38 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: [PATCH 15/15] efi: initrd: make efi_initrd_register initrd pointer param const
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
index fcc17a03905f..8a0519fca3de 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -191,7 +191,7 @@ static efi_status_t efi_install_initrd(struct image_data *data,
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



