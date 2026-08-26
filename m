Delivery-date: Wed, 26 Aug 2026 14:21:12 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCcx-007Qme-2o
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1908C201FA9
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RlhjYzEe;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o1yPQeZzUNEe5PJeO38QdrJCZot4VMZfSiHbxw6zjNQ=; b=RlhjYzEe/zE3POzpYh4nQScYM8
	ctqP375UYKmdPTKHNOWl2GRm9NEE7b05mZNquVMwBrz0o5T+7IykS9vVfqNSrxYGJTx3aQcyZNxuH
	Wa5tJyRAxl1dLXuUQTDOy1SRc+Oxig9agQaogWU2nSAbt2ccbmhWM1p1TuvqBeAmP539m4c3k93JL
	41YhnAM+qdjaVVQCg8xC5IW09TN5QWseBWweH2sMDSrPCn0YoFZhSq8CkBnHHgMJ0pYUKnu4oeEfn
	+qUVWq86i97zGZ5CokImL4EHvV69bPpEWFZMU8OhG7QRmIxxa0dbANom2NMLm7iol3XAKp7N7dcpK
	fd6GZ+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCc3-00000002PpR-21Xi;
	Wed, 26 Aug 2026 12:20:15 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbq-00000002Pi3-3IAq
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1D9F6202148;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-003RB7-00;
	Wed, 26 Aug 2026 14:19:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-0000000CK1K-3l3x;
	Wed, 26 Aug 2026 14:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 3/9] efi: payload: always shutdown barebox when booting
Date: Wed, 26 Aug 2026 14:17:07 +0200
Message-ID: <20260826121956.2936414-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052003_197276_31CE5C71 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When barebox is about to boot a kernel image, it calls shutdown_barebox
    and then starts the image. When the kernel image is wrapped in a UKI, barebox
    will not detect it as a kernel image and will thus [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: x4ufj813e9jfwhjscbszbhj3a9rc78db
X-Rspamd-Queue-Id: 1908C201FA9

When barebox is about to boot a kernel image, it calls shutdown_barebox
and then starts the image. When the kernel image is wrapped in a UKI,
barebox will not detect it as a kernel image and will thus not call
shutdown_barebox beforehand, which can mean that e.g. state is not
flushed.

We do not want to treat UKIs completely like kernels (e.g. we do not
want to override their built-in bootargs), but we still want to properly
shutdown barebox.

Resolve this by shutting down barebox whenever we are in a bootm handler,
no matter which kind of image is about to be started: bootm is the point
of no return. Images run from the shell via binfmt keep returning to
barebox afterwards, with the exception of EFI-stubbed kernels, which take
over the machine and thus continue to shut barebox down as before.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c |  4 ++--
 efi/payload/image.c | 21 +++++++++++++++------
 efi/payload/image.h |  1 +
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2f9cc3cbf76b..963f6d6ae7d4 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -185,7 +185,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 	if (data->dryrun)
 		goto unload_ramdisk;
 
-	ret = efi_execute_image(handle, loaded_image, type);
+	ret = efi_execute_image(handle, loaded_image, true, type);
 
 	/* efi_execute_image takes care to unload the image on error,
 	 * so we set image_freed and fall through to freeing ramdisk
@@ -220,7 +220,7 @@ static int efi_app_execute(struct image_data *data)
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
 
-	return efi_execute_image(handle, loaded_image, type);
+	return efi_execute_image(handle, loaded_image, true, type);
 }
 
 static int linux_efi_handover = true;
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 6485bc2f2d68..e3fe3d5afe34 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -100,15 +100,24 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
+		      bool is_bootm,
 		      enum filetype filetype)
 {
 	efi_status_t efiret;
 	const char *options;
-	bool is_driver, is_kernel = false;
+	bool is_driver;
+	bool no_return;
 
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
 
+	/*
+	 * A bootm handler is the point of no return, but an EFI-stubbed kernel
+	 * started from the shell takes over the machine just the same, so
+	 * barebox needs to be shut down in both cases.
+	 */
+	no_return = is_bootm || filetype_is_linux_efi_image(filetype);
+
 	efi_export_dtb();
 
 	if (filetype_is_linux_efi_image(filetype)) {
@@ -121,11 +130,11 @@ int efi_execute_image(efi_handle_t handle,
 				(strlen(options) + 1) * sizeof(wchar_t);
 		}
 		printf("...\n");
+	}
 
+	if (no_return) {
 		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
 				      ktime_to_us(ktime_get()));
-
-		is_kernel = true;
 		shutdown_barebox();
 	}
 
@@ -135,8 +144,8 @@ int efi_execute_image(efi_handle_t handle,
 
 	efi_continue_devices();
 
-	if (is_kernel) {
-		pr_emerg("Kernel image has unexpectedly returned\n");
+	if (no_return) {
+		pr_emerg("Boot image has unexpectedly returned\n");
 		BS->exit(efi_parent_image, efiret, 0, NULL);
 	}
 
@@ -162,7 +171,7 @@ static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
 	if (ret)
 		return ret;
 
-	return efi_execute_image(handle, loaded_image, b->type);
+	return efi_execute_image(handle, loaded_image, false, b->type);
 }
 
 static struct binfmt_hook binfmt_efi_hook = {
diff --git a/efi/payload/image.h b/efi/payload/image.h
index bab1be368c21..33f7e1a21b30 100644
--- a/efi/payload/image.h
+++ b/efi/payload/image.h
@@ -13,6 +13,7 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
+		      bool is_bootm,
 		      enum filetype filetype);
 
 extern struct image_handler efi_x86_linux_handle_tr;
-- 
2.47.3



