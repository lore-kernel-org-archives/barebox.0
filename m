Delivery-date: Wed, 26 Aug 2026 13:46:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzC5Q-007Q7y-2U
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 13:46:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5CB2B20205C
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 13:46:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GLrNPkF7;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ry9AkcAlxOLjXsEN0C6UHNAomxQEXxlMyrb/3TjOw5E=; b=GLrNPkF7DO7Stj6Qs+rXrv0Uw3
	WH/VvQcq9znMvLBu1mH105EoAASn36lDgigEB33PCM8IVxYRLqtXGueBkic4E7Cwr0NcdG68RQqrx
	o11A2fCqqcK6oUfP+CIIa2WqyYfAb6l2mGo7O9Wpx1CemDL2ieKmYLhRuHRXQkHuMqL//mno1yOYm
	YhFMtRdv5bkTZoCqs6/PbO3yN6v8mOWXa7ZIFt47j8gZvjoiLp24e0O0DUYI/k/CQJJIH0y3ZA4U8
	7Oz04H0I/seKin+fST2uIYCkpPrX0NdrWpdmI9Ckh7vXwjkeAqWePcTVTkVxfrIpSyZgixzBfJdAN
	45VaCEtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzC4N-00000002Mv3-2a7z;
	Wed, 26 Aug 2026 11:45:27 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzC4K-00000002Muh-0E6S
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 11:45:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 58B2420205C;
	Wed, 26 Aug 2026 13:45:22 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzC4I-003Qr0-0s;
	Wed, 26 Aug 2026 13:45:22 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzC4I-0000000CFYP-0hso;
	Wed, 26 Aug 2026 13:45:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: loader: accept NULL DevicePath in LoadImage when SourceBuffer is given
Date: Wed, 26 Aug 2026 13:45:01 +0200
Message-ID: <20260826114521.2919654-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_044524_329180_1C0C17CE 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The UEFI specification only requires DevicePath when no SourceBuffer
    is given. Loading an image from memory with a NULL DevicePath is valid and
    results in a loaded image without device handle and file [...] 
 
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xcnjswqbjhf9fashrkcf3r5zrcr5wc9x
X-Rspamd-Queue-Id: 5CB2B20205C

The UEFI specification only requires DevicePath when no SourceBuffer is
given. Loading an image from memory with a NULL DevicePath is valid and
results in a loaded image without device handle and file path. That's what
EDK2 does and what the U-Boot code this was imported from does as well, as
it ignores the result of efi_dp_split_file_path().

barebox on the other hand checks the result and as efi_dp_dup(NULL) returns
NULL, LoadImage fails with the misleading EFI_OUT_OF_RESOURCES. This breaks
chainloading from a barebox EFI payload running on top of the barebox EFI
loader: the payload passes the device path of its own device handle, which
it doesn't have when it was booted via QEMU's fw_cfg, so it passes NULL.

Only split the device path if there is one and hand out an empty file path
otherwise, so LoadedImage->FilePath stays non-NULL for applications like
the EDK2 shell that dereference it unconditionally.

Fixes: b9e581c97389 ("efi: loader: avoid NULL image file paths")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/boot.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index d361a71a4dae..2d98c95b5c34 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -2026,8 +2026,18 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 	} else {
 		dest_buffer = source_buffer;
 	}
-	/* split file_path which contains both the device and file parts */
-	ret = efi_dp_split_file_path(file_path, &dp, &fp);
+	/*
+	 * DevicePath is optional when SourceBuffer is given, the loaded image
+	 * then has no device handle and an empty file path.
+	 */
+	if (file_path) {
+		/* file_path contains both the device and the file parts */
+		ret = efi_dp_split_file_path(file_path, &dp, &fp);
+	} else {
+		dp = NULL;
+		fp = efi_dp_append_node(NULL, NULL);
+		ret = fp ? EFI_SUCCESS : EFI_OUT_OF_RESOURCES;
+	}
 	if (ret == EFI_SUCCESS) {
 		ret = efi_setup_loaded_image(dp, fp, image_obj, &info);
 		if (ret == EFI_SUCCESS)
-- 
2.47.3



