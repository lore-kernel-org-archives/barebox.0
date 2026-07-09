Delivery-date: Thu, 09 Jul 2026 09:44:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whjQR-001qHH-22
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 09:44:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6E127202662
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 09:44:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fBHhWph1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4kNNZia+vyzDZUCtDjRL5QthnR9vZuK+1rw0JOmn/ow=; b=fBHhWph1JWMMTvH9kqWXlclWmc
	4phXYV4Ka/wKkm/6MUyKShr+4yYqvXY89rrvyIimJxRE7DuIh0sqxiFOUOg/WKD2QD2Ge3iN2VP2r
	HD8H+U76KGy7lcbxaeODuUdUH26b9zMfj5Sl9kjDMDZVtmImJsIxleZBB0BTyulsU1YKCEOHne3IA
	58l0qDauU3R9iQ7oelyOvz4YMt5KK/YPjPPcw59Ein38v5VjF4FGeqhjVi2wpxOyZucIAVNRLXhRg
	vpqIzWeDEYCaF7hzcS0twt+d1LLAqC4JKo5M3g5AbGKMYG/oac/SLlpnN3+xaE7k31ugc8cj5jt0i
	5RXkg7+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjQ8-00000001LSo-0mY0;
	Thu, 09 Jul 2026 07:43:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjQ5-00000001LRZ-1wQL
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 07:43:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whjQ0-0008BX-MG; Thu, 09 Jul 2026 09:43:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] efi: allow LoadImage from a source buffer
Date: Thu,  9 Jul 2026 09:43:20 +0200
Message-ID: <20260709074335.533190-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_004341_499115_0181ADD0 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  LoadImage is allowed to load a PE image from a caller-provided
    source buffer when no device path is supplied. The SCT covers that path and
    barebox only handled filesystem-backed images, so valid test [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6E127202662
X-Stat-Signature: ocwznfixjbtn1ga41thkfjie4566g91c

LoadImage is allowed to load a PE image from a caller-provided source
buffer when no device path is supplied. The SCT covers that path and
barebox only handled filesystem-backed images, so valid test images were
rejected before StartImage could run them.

Add the source-buffer path and feed it through the normal image loader so
the loaded image uses the same validation and bookkeeping as file-backed
images.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/boot.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index b92e6bb33093..d34de119f4e7 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -1988,8 +1988,7 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 	EFI_ENTRY("%d, %p, %pD, %p, %zu, %p", boot_policy, parent_image,
 		  file_path, source_buffer, source_size, image_handle);
 
-	if (!image_handle || (!source_buffer && !file_path) ||
-	    !efi_search_obj(parent_image) ||
+	if (!image_handle || !efi_search_obj(parent_image) ||
 	    /* The parent image handle must refer to a loaded image */
 	    !parent_image->type) {
 		ret = EFI_INVALID_PARAMETER;
@@ -2005,8 +2004,14 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 	} else {
 		dest_buffer = source_buffer;
 	}
-	/* split file_path which contains both the device and file parts */
-	ret = efi_dp_split_file_path(file_path, &dp, &fp);
+	if (file_path) {
+		/* split file_path which contains both the device and file parts */
+		ret = efi_dp_split_file_path(file_path, &dp, &fp);
+	} else {
+		dp = NULL;
+		fp = NULL;
+		ret = EFI_SUCCESS;
+	}
 	if (ret == EFI_SUCCESS) {
 		ret = efi_setup_loaded_image(dp, fp, image_obj, &info);
 		if (ret == EFI_SUCCESS)
-- 
2.47.3



