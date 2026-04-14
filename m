Delivery-date: Tue, 14 Apr 2026 16:27:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCejK-00C6Cu-1L
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 16:27:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCejJ-0007TK-Rd
	for lore@pengutronix.de; Tue, 14 Apr 2026 16:27:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dLs5COF28C0bDKgH8S8KZPYXUyn94Un7FB9iGOOdEJU=; b=b2DT1qz5+qy54/lQcM1e5dnwNS
	2M085U6qsBK5vkoh+JVfi7esHh/nk/JxBiRDek2UBPR3rFmCtHAgMBS0VTVyp2PDR+gi8o4oZtvRH
	A9c5kfqjocICNy86WT5v/njq1+ZXO7ed0G4we9hnqX5BtH1rp6XehU1L+NiJVjxhxLff719ZejPMc
	aQiOm7zc8wNVhlvMxZc4L02TpZscuqcIoWbMistLCXVXpDJA6Qg7F8pjZVrMD5/M2sW4gk8b9rVCX
	pwyeWZm45VKXrBpDkaHzU0X726bNfrBjgC020j3vAA1vzwBOzOtpupVIGta20s9mkjvFRGw2La4NN
	DaHBQN1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCeit-0000000HRxp-2Lbc;
	Tue, 14 Apr 2026 14:26:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCeir-0000000HRxG-2M6g
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 14:26:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeip-0007LS-IP; Tue, 14 Apr 2026 16:26:35 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeip-005MCT-0j;
	Tue, 14 Apr 2026 16:26:35 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeip-000000037h5-0WwK;
	Tue, 14 Apr 2026 16:26:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 14 Apr 2026 16:26:29 +0200
Message-ID: <20260414142634.744542-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_072637_623243_645F3446 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 1/2] efi: payload: image: exit if kernel image returned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI applications can exit and return to the EFI application that started
them and barebox can handle that, except for the case that it was a
EFI-stubbed kernel and barebox has already called shutdown_barebox().

In that case, the safest way is to just propagate the exit code instead
of attempting to execute code as if nothing happened.

Starting EFI applications via bin format continues to work as before.

Cc: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 83094cda6d89..378709b6de95 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -104,7 +104,7 @@ int efi_execute_image(efi_handle_t handle,
 {
 	efi_status_t efiret;
 	const char *options;
-	bool is_driver;
+	bool is_driver, is_kernel = false;
 
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
@@ -123,17 +123,24 @@ int efi_execute_image(efi_handle_t handle,
 		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 				      ktime_to_us(ktime_get()));
 
+		is_kernel = true;
 		shutdown_barebox();
 	}
 
 	efi_pause_devices();
 
 	efiret = BS->start_image(handle, NULL, NULL);
-	if (EFI_ERROR(efiret))
-		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
 
 	efi_continue_devices();
 
+	if (is_kernel) {
+		pr_emerg("Kernel image has unexpectedly returned\n");
+		BS->exit(efi_parent_image, efiret, 0, NULL);
+	}
+
+	if (EFI_ERROR(efiret))
+		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
+
 	if (!is_driver)
 		BS->unload_image(handle);
 
-- 
2.47.3



