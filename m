Delivery-date: Mon, 16 Feb 2026 09:48:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHZ-002GG2-1v
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHZ-0002it-CB
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WuyL6h7Iyv0p/2zVaM+sLhGdLDjIdWhVLUQovxIR7NA=; b=h5/fFYQ9L3uOzmGFweNGRe+0TV
	adZVGZuV/F8gqa19KHYJFSUZTsdrlUR05wS2WrDtoahY4zglEYAb1y9LvV1+gkIACdDWIbIWR4c+M
	fxqpVDP8Ohxdu0DdxqHYsKJ3OLKJyR2tIRvfoWBSa9f4qx8FdwjJGs9RQc+NBzO1PyAhGv8X3oVbY
	fHKxFdzYbzW6ZYj3YODja0iZMquDGzBXWzxSW+mHk1qFxUlrOjQPtdeySA7njfjFajWV/2bphyDxI
	i7Ocejr2Z3hv5o6OtcqzMkUKZqve6wXqyirhp9IW7vIgXM30TjrELz12drqUjeSxqUArU/n/kntjB
	+9FT3Jbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH7-00000006BeL-363R;
	Mon, 16 Feb 2026 08:48:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH1-00000006BZh-48JB
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002JP-FB; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012DT-2o;
	Mon, 16 Feb 2026 09:48:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-0TvG;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:08 +0100
Message-ID: <20260216084758.3548990-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004810_671795_68DA3710 
X-CRM114-Status: GOOD (  10.18  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 08/39] efi: loader: fix file handle leak in efi_file_from_path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Two early return paths in the device path traversal loop fail to
close the current file handle 'f' before returning NULL:
- when the device path node has an invalid length
- when memdup fails to allocate the filename

Add f->close(f) calls before both returns.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/file.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/efi/loader/protocols/file.c b/efi/loader/protocols/file.c
index 03d2dc3a0d38..e002057d59ea 100644
--- a/efi/loader/protocols/file.c
+++ b/efi/loader/protocols/file.c
@@ -968,17 +968,23 @@ struct efi_file_handle *efi_file_from_path(struct efi_device_path *fp)
 		 * protocol member functions to be aligned.  So memcpy it
 		 * unconditionally
 		 */
-		if (fdp->header.length <= offsetof(struct efi_device_path_file_path, path_name))
+		if (fdp->header.length <= offsetof(struct efi_device_path_file_path, path_name)) {
+			f->close(f);
 			return NULL;
+		}
 		filename_sz = fdp->header.length -
 			offsetof(struct efi_device_path_file_path, path_name);
 		filename = memdup(fdp->path_name, filename_sz);
-		if (!filename)
+		if (!filename) {
+			f->close(f);
 			return NULL;
+		}
 		efiret = f->open(f, &f2, filename, EFI_FILE_MODE_READ, 0);
 		free(filename);
-		if (efiret != EFI_SUCCESS)
+		if (efiret != EFI_SUCCESS) {
+			f->close(f);
 			return NULL;
+		}
 
 		fp = efi_dp_next(fp);
 
-- 
2.47.3



