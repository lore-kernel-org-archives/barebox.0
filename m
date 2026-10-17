Delivery-date: Sat, 17 Oct 2026 13:52:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xI2xO-00Emdr-0c
	for lore@lore.pengutronix.de;
	Sat, 17 Oct 2026 13:52:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A60E7201CD6
	for <lore@pengutronix.de>; Sat, 17 Oct 2026 13:52:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=snn5gFlQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792237930; a=rsa-sha256;
	cv=none;
	b=dh0jCWSj54XB2NekyTOhk4nB6Jch2JkwwyKhCGXVAkERJIcPww9NauXvBSI+nkdbsSLfVc
	vwGRNpBgbawQNogQwKkHyOGNT1+08Gcw4k+VFpljdlBjFVFm43ro6lx1/7uIT9phjscB3I
	BJmoCW1Htmb7qDOpjmyLzWysngMpsT+vb06Mf4abNv9B+WY0+wF50756Sqp7/BSpCb6Hej
	xRsCuixGl3te9QGgO0RgMfqqmIgoTcpuNpAOSEGCjafmDZP0lnqThvnHmMAy0Ry//nlZrA
	hN6rKhhVyuVFAEsW5lvTLqhLcUiT38GTWC1r1qJUS8Av94Ud3U5uSdh17Y//iw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=snn5gFlQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792237930;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=f7K4O1NT6NfrlfOpVRut28LW16Mfx7KP1BBVAThMRFc=;
	b=DhIS2Y5kFklEUuuAd9HW6k3O6I8xz0sV3Q4fu2paSHr44aizlgFXdzLOsEQ9aV4MNYbBZC
	bcP0zW0F4UqudJQbt7AbSSJ4hpv9gidVNyhc2GnWwj5RocSBc8IRuSlJLxeCZNfILXbkvC
	sg1s5KYMH77kU4zQ38+n5eeApfZ1GJALVq4/fsggUQFiX5GNNm3WTwx+HOBhfFuZ9LqW2m
	CXJv3B8DeeNai5z21dJf54lFxtx8gtC1tJIm05k/hZL3LrIm/UPfbH8K71QIniN0LoeXdl
	mQq0Eqwnb9fuSEi4+fUtc/UFzRyKG7Ny9WaElcCz1LinPdYlHBJNRIQLhwZQXA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f7K4O1NT6NfrlfOpVRut28LW16Mfx7KP1BBVAThMRFc=; b=snn5gFlQ5DD7n/H4UrYbk2XsbL
	GKpr7TNOmP4fc8ma5ze/ZpWbdfVf/C65PWtEqFmhlFBaQu35/EvWn4+kAcTgX0Yv5w+jzPOceLpFH
	L2gut9hhUx11ADCo8VUeG/PgfFQd1iGPXQb03ZeG6QOh/VwpJAKOwilSQKHH4V86RX5sZflYgExbn
	Iwa0Az+G4sVraZWg8gmAlir8MBJ0Bb+ULP6xdM/ALqAEEOINGBhJlEhRzATvJ6tOW0Ii6cFfiJ5Ju
	fRIqjdes31QT8vrz6CCNnMjetG/clLmRjR/QsnGEyTdxVqht9Vd7p3wCexdIKb0M479SGt/fbseR/
	nJCkNdQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI2vm-00000004jfV-3wOz;
	Sat, 17 Oct 2026 11:50:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI2vi-00000004jdn-0Ze7
	for barebox@lists.infradead.org;
	Sat, 17 Oct 2026 11:50:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xI2vd-00057Y-0e; Sat, 17 Oct 2026 13:50:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Johannes Schauer Marin Rodrigues <josch@debian.org>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/2] efi: loader: in-place patch the runtime services on ExitBootServices
Date: Sat, 17 Oct 2026 13:50:14 +0200
Message-ID: <20261017115018.1202076-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_045026_182907_6B681AEB 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ExitBootServices() repoints systab->runtime at a separate
   table with the detached runtime services. If an EFI application caches RT,
    it may end up calling into the stale boot-time runtime services obj [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A60E7201CD6
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: 3cob4xq1df3w5b8yhtm9w3y3s38qj1ku

ExitBootServices() repoints systab->runtime at a separate table with the
detached runtime services. If an EFI application caches RT, it may end
up calling into the stale boot-time runtime services object.

Fix this by keeping the systab->runtime pointer the same and do a
"deep copy" by rewriting the object including its callbacks instead.

Cc: Johannes Schauer Marin Rodrigues <josch@debian.org>
Fixes: 699145f1cb22 ("efi: runtime: add runtime service support after ExitBootServices")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/boot.c      | 5 ++++-
 efi/loader/runtime.c   | 2 +-
 efi/loader/watchdog.c  | 4 ++--
 efi/runtime/services.c | 3 ++-
 include/efi/loader.h   | 2 +-
 5 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 2d98c95b5c34..ddfbf33bff69 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -3879,6 +3879,8 @@ static struct efi_boot_services efi_boot_services = {
 
 static __efi_runtime_data u16 firmware_vendor[] = L"barebox";
 
+static __efi_runtime_data struct efi_runtime_services efi_runtime_services;
+
 __efi_runtime_data struct efi_system_table systab = {
 	.hdr = {
 		.signature = EFI_SYSTEM_TABLE_SIGNATURE,
@@ -3925,8 +3927,9 @@ efi_status_t efi_initialize_system_table(void)
 	systab.boottime = &efi_boot_services;
 
 	/*
-	 * This will be overwritten dynamically at detach time.
+	 * This must be overwritten dynamically at detach time.
 	 */
+	efi_runtime_services = efi_runtime_services_boot;
 	systab.runtime = &efi_runtime_services;
 
 	/* Set CRC32 field in table headers */
diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
index a8f872f23b48..329e1077889f 100644
--- a/efi/loader/runtime.c
+++ b/efi/loader/runtime.c
@@ -293,7 +293,7 @@ static efi_status_t EFIAPI efi_set_time_boottime(struct efi_time *time)
  * the runtime services will be replaced by the detached implementation,
  * so we need not take any special consideration here.
  */
-struct efi_runtime_services efi_runtime_services = {
+struct efi_runtime_services efi_runtime_services_boot = {
 	.hdr = {
 		.signature = EFI_RUNTIME_SERVICES_SIGNATURE,
 		.revision = EFI_SPECIFICATION_VERSION,
diff --git a/efi/loader/watchdog.c b/efi/loader/watchdog.c
index a4715c149add..c29f91a0aa07 100644
--- a/efi/loader/watchdog.c
+++ b/efi/loader/watchdog.c
@@ -35,8 +35,8 @@ static void EFIAPI efi_watchdog_timer_notify(struct efi_event *event,
 	EFI_ENTRY("%p, %p", event, context);
 
 	pr_emerg("\nEFI: Watchdog timeout\n");
-	EFI_CALL_VOID(efi_runtime_services.reset_system(EFI_RESET_COLD,
-							EFI_SUCCESS, 0, NULL));
+	EFI_CALL_VOID(systab.runtime->reset_system(EFI_RESET_COLD,
+						   EFI_SUCCESS, 0, NULL));
 
 	EFI_EXIT(EFI_UNSUPPORTED);
 }
diff --git a/efi/runtime/services.c b/efi/runtime/services.c
index 5044e16c7c5c..dc4960ac4763 100644
--- a/efi/runtime/services.c
+++ b/efi/runtime/services.c
@@ -293,7 +293,8 @@ void efi_runtime_detach(struct efi_system_table *systab)
 	systab->std_err = NULL;
 	systab->boottime = NULL;
 
-	systab->runtime = &efi_runtime_services_detached;
+	/* Payloads may have cached systab->runtime, so patch it in place */
+	*systab->runtime = efi_runtime_services_detached;
 
 	/* Recalculate CRC32 */
 	efi_update_table_header_crc32(&systab->hdr);
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 4dcd15854560..0ccc0a720a90 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -19,7 +19,7 @@ struct efi_table_hdr;
 /* Key identifying current memory map */
 extern efi_uintn_t efi_memory_map_key;
 
-extern struct efi_runtime_services efi_runtime_services;
+extern struct efi_runtime_services efi_runtime_services_boot;
 extern struct efi_system_table systab;
 
 extern struct efi_simple_text_output_protocol efi_con_out;
-- 
2.47.3



