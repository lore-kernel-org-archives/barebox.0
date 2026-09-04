Delivery-date: Fri, 04 Sep 2026 09:17:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2OAg-00AdxU-2d
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 09:17:11 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XrkpDC49;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 663FE20582F
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 09:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I8oOYHEwTgPYhk24eAkPxMP7u0maGJeCf0Y1IYoYLes=; b=XrkpDC49EWaDiyER4uQn8Vy6+e
	AEg38JfzH85LML+BVtcHSlyB927VlLZdIguVqGMe3nEZ2Dc0HrfYNV7ncf6rj23crnaQB3DF7L9CJ
	9DM+EDKAd+VyDXlk1NVhtoQ+OWuUPU+a+umuO5L3kvQmFLjxq8x4Gkm+Tm3HPuh1NdjT853Ehpwcy
	dj4n5xZs3+KFep112HBmllxbw88icBh6iehHYmRHjscKO6HjUZbaahhukPBEAyXnby9MJjDBllfOC
	CyH7bY2/xWh923QamFTTmUAW8FAx5kyrMzhf2RwghTkmDLS3F1NrAqfSFjglgJeDiy6r1CuoRfPBA
	KxJQ8vzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OA1-00000001ESn-2HWA;
	Fri, 04 Sep 2026 07:16:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2O9y-00000001ESD-24ko
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 07:16:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D556D202455;
	Fri, 04 Sep 2026 09:16:23 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2O9v-004sZK-2X;
	Fri, 04 Sep 2026 09:16:23 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2O9v-00000000Dsn-2sih;
	Fri, 04 Sep 2026 09:16:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fs: efi: don't leak the file info buffer in efifs_truncate()
Date: Fri,  4 Sep 2026 09:16:21 +0200
Message-ID: <20260904071621.53334-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_001626_712056_81C3E811 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The 1 KiB EFI_FILE_INFO buffer is never freed on any of the
    three exits, and this runs on every truncating open. Assisted-by: Claude:opus-5
    Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de> --- fs/efi.c | 10 +++++-----
    1 file changed, 5 insertions(+), 5 deletions(-) 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 7ot4hgak1z9aqszm71zq135nyrecgp3g
X-Rspamd-Queue-Id: 663FE20582F
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]

The 1 KiB EFI_FILE_INFO buffer is never freed on any of the three
exits, and this runs on every truncating open.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/efi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/efi.c b/fs/efi.c
index 76eb86a85eea..74dad235b19d 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -250,9 +250,9 @@ static int efifs_truncate(struct file *f, loff_t size)
 	efi_status_t efiret;
 	struct efi_file_info *info;
 	size_t bufsize = 1024;
-	int ret;
+	int ret = 0;
 
-	info = xzalloc(1024);
+	info = xzalloc(bufsize);
 
 	efiret = ufile->entry->get_info(ufile->entry, &efi_file_info_id, &bufsize, info);
 	if (EFI_ERROR(efiret)) {
@@ -262,7 +262,7 @@ static int efifs_truncate(struct file *f, loff_t size)
 	}
 
 	if (size > info->FileSize)
-		return 0;
+		goto out;
 
 	info->FileSize = size;
 
@@ -270,11 +270,11 @@ static int efifs_truncate(struct file *f, loff_t size)
 	if (EFI_ERROR(efiret)) {
 		pr_err("%s: unable to SetInfo: %s\n", __func__, efi_strerror(efiret));
 		ret = -efi_errno(efiret);
-		goto out;
 	}
 
-	return 0;
 out:
+	free(info);
+
 	return ret;
 }
 
-- 
2.47.3



