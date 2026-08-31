Delivery-date: Mon, 31 Aug 2026 16:57:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x13RX-009JZE-0L
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 16:57:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 98083202433
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 16:56:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vbVmhfKY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m/5MCfZP841XF1hs4CkPvxO09YCWN2MsJeQfk/Sx/2U=; b=vbVmhfKYpHijrUHDOU8g692lNv
	PcPP5+xA11pJN5B/Xyb45VmEpT2+F4Tj71GPzcTCIjBWSs0UjvHZBwyOoHTnHwCR2tbrdza9L9FNy
	1MdAZkCSFl0QP1woEbrgN2FVyW6LjNivIRmmFwmdvUg9uo4i8CMyw9K3535Qa1ZbbeqQjAj2DPmxK
	+9AARisIw2gLUVWoDfQ/K+0AQExsjxp2Dwe1J8hCVg8NwqzplvSpatZNmpBSq24Ohl5MksIWIT5i5
	YhdBKksAPZeSYsuYGiBxhlHiqFtELRndOWGPeCuf3oBDO3Oi3xYnXXtnBurZJXDTN9oZp7eSq1Y5I
	sPzGKLng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13Q6-00000009j2J-0qCQ;
	Mon, 31 Aug 2026 14:55:34 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13Q3-00000009j20-1XT0
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 14:55:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 39B75202476;
	Mon, 31 Aug 2026 16:55:25 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13Px-004H4U-0U;
	Mon, 31 Aug 2026 16:55:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13Px-00000004MtX-0AIW;
	Mon, 31 Aug 2026 16:55:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: loader: disk: detect the file system type only once
Date: Mon, 31 Aug 2026 16:55:23 +0200
Message-ID: <20260831145524.1041308-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_075531_558455_EB4244DC 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> efi_fs_exists()
   calls cdev_detect_type() once per file system driver, reading the first FILE_TYPE_SAFE_BUFSIZE
    bytes off the device each time. Run cdev_detect_type() once and then match
    the result aga [...] 
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: 56pesynbxp1oypm9jedpns93atf6nury
X-Rspamd-Queue-Id: 98083202433
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: Ahmad Fatoum <a.fatoum@barebox.org>

efi_fs_exists() calls cdev_detect_type() once per file system driver,
reading the first FILE_TYPE_SAFE_BUFSIZE bytes off the device each time.
Run cdev_detect_type() once and then match the result against the drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/disk.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index 5376c9ec9a14..493be8c5aafe 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -160,16 +160,14 @@ efi_fs_from_path(struct efi_device_path *full_path)
 
 static bool efi_fs_exists(struct cdev *cdev)
 {
+	enum filetype filetype;
 	struct driver *drv;
 
+	if (cdev_detect_type(cdev, &filetype))
+		return false;
+
 	bus_for_each_driver(&fs_bus, drv) {
-		struct fs_driver *fdrv;
-		enum filetype filetype;
-
-		fdrv = drv_to_fs_driver(drv);
-
-		if (cdev_detect_type(cdev, &filetype) == 0 &&
-		    filetype == fdrv->type)
+		if (drv_to_fs_driver(drv)->type == filetype)
 			return true;
 	}
 
-- 
2.47.3



